// The function when we do `uvm_component_utils
class my_component extends uvm_component;
  //wrapper  class around the component registery class
  typedef uvm_component_registry#(my_component)type_id;
  
  //used to get the type_id wrapper
  static function type_id get_type();
    return type_id::get();
  endfunction :get_type

  //used to get the type_name as a string
  function string get_type_name();
    return "my_component";
  endfunction :get_type_name
endclass:my_component
