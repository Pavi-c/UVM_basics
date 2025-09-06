# UVM_basics

## UVM_TB 
TEST -> ENV -> AGENT -> MONITOR,SEQUENCER,DRIVER
* Agent :- encapsulated, configurable compaonents , resuable, also called UVC(universal verification component)
* Sequence_item:- Data item based on DUT protocol
* Sequencer:- Routes sequencer_items from sequence to the driver
* Driver:- Converts sequence_item to pin level for DUT
* Monitor:- Converts pin level data to the transactions for use in sb, coverage models.
* Drivers and sequencers are connected using TLM ports
* Agent:- ACTIVE(monitor,driver,sequencer) , PASSIVE(monitor only)
* Sequencer generates testcases and it sends it to sequencer and sequencer controls which sequence to be taken first n all
* The classes used for creating the tb heirarchy are called components
* The classes used for stimulus generation are called objects
* UVM_DRIVER and UVM_SEQUENCER, other than these all are Virtual classes

## UVM_FACTORY
* Factory is a class that manufactures(creates) UVM components and objects during runtime
* For the factory to create components and objects:- 1. Register class types with the factory 2. creating components and object using factory 3. Overriding components and objects
* Factory registration:- `uvm_component_utils(name) , when we do this it declares typedef of wrapper type named type_id , Defines get_type and get_type_name functions.
 
  
