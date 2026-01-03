<?php
    class DB{
        private $host;
        private $user;
        private $password;
        private static $table;
        private static $conn;
        private static $instance;
        private $values;
        private $query;
        private $query_type;

        public function table($table){
            self::$table = $table;
            if(!self::$instance){
                self::$instance = new self();
            }
            if(!self::$conn){
                try {
                    //code...
                    $string = "mysql:host=".DBHOST.";dbname=".DBNAME;
                    self::$conn = new PDO($string, DBUSER, DBPASS);
                } catch (\Throwable $th) {
                    //throw $th;
                    echo $th->getMessage();
                    die;
                }
            }
            return self::$instance;
        }

        protected function run(array $values = array()){
            echo $this->query;
            echo '<pre>';
            print_r ($values);
            $check = [];
            try {
                //code...
                $stm = self::$conn->prepare($this->query);
                $check = $stm->execute($values);
            } catch (\Throwable $th) {
                //throw $th;;
                die($th->getMessage());
            }
            if($check){
                print_r($check);
                switch ($this->query_type) {
                    case 'select':
                        $data = $stm->fetchAll(PDO::FETCH_OBJ);
                        if(is_array($data) && count($data) > 0){
                            return json_encode(['data'=> $data, 'success' => true, 'error' => false]);
                        }
                        break;
                    case 'update':
                        echo 'post running';
                        break;
                    case 'insert':
                        echo 'delete running';
                        break;
                    case 'delete':
                        echo 'put running';
                        break;
                    default:
                        'action not specified';
                        break;
                }

            }
            return json_encode(['data'=> null, 'success' => false, 'error' => 'failed to fetch from database when executing query']);
        }
        public function where($where, $values = array()){
            switch ($this->query_type) {
                case 'select':
                    $this->query .= " where ". $where;
                    return ($this->run($values));
                    break;
                case 'update':
                    $values = array_merge($this->values, $values);
                    $this->query .= " where ". $where;
                    return ($this->run($values));
                    break;
                case 'insert':
                    echo 'delete running';
                    break;
                case 'delete':
                    echo 'put running';
                    break;
                default:
                    'action not specified';
                    break;
                }
        }

        public function select(){
            $this->query_type = "select";
            $this->query = "SELECT * FROM ". self::$table. " ";
            return self::$instance;
        }

        public function update(array $values){
            $this->query_type = "update";
            $this->query = "UPDATE ". self::$table. " SET ";
            foreach($values as $key => $value){
                $this->query .= $key. "= :". $key. ", ";
            }

            $this->query = trim($this->query, ", ");
            $this->values = $values;
            return self::$instance;
        }

        public function insert(){
            $this->query_type = "insert";
            $this->query = "INSERT INTO ". self::$table. " ";
            return self::$instance;
        }

        public function delete(){
            $this->query_type = "delete";
            $this->query = "DELETE FROM ". self::$table. " ";
            return self::$instance;
        }

        public function query($table){
            self::$table = $table;
            return $table;
        }
    }