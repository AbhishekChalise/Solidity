//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}

contract Interface{
    uint public minimumusd=50 * 1e18; // 1*10*18
 function fund() public payable{
     require(getconversionrate(msg.value) >= minimumusd,"Didn't send enough!");
     // 1e18 ==1*10**18 1000000000000000000
     // 18 decimals
      }
  function getprice() public view returns (uint256){
      //ABI
      //Address 
       AggregatorV3Interface pricefeed = AggregatorV3Interface(0xaEA2808407B7319A31A383B6F8B60f04BCa23cE2);
         (,int256 answer,,,)= pricefeed.latestRoundData();
         //Price interms of USD
         //3000.00000
         return uint256(answer * 1e10);//1e10 == 1*

  }   
  function getconversion() public view returns(uint){
    AggregatorV3Interface pricefeed = AggregatorV3Interface(0xaEA2808407B7319A31A383B6F8B60f04BCa23cE2);
    return pricefeed.version();
  } 
  function getconversionrate(uint256 ethAmount) public view returns(uint256){
    uint256 ethprice = getprice();
   //1000000000000000000000
   uint256 ethamountinusd = (ethprice * ethAmount) / 1e18;
    return(ethamountinusd);
  }
  //function withdraw(){}
}

