pragma solidity ^0.7.0;

contract Cars{
    struct Car{
        string name;
        uint model;
    }
    
    mapping(uint=>Car) carList;
    
    uint index=0;
    
    function addCar(string memory carName, uint carModel)public{
        carList[index]=(Car(carName,carModel));
        index++;
    }
    
    function showCar(uint carIndex) public view returns (string memory,uint){
        Car storage c = carList[carIndex];
        return(c.name,c.model);
    }
}