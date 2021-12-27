 
pragma solidity ^0.8.3;
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
library SafeMath {
 /**
  * @dev Returns the addition of two unsigned integers, with an overflow flag.
  *
  * _Available since v3.4._
  */
 function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
     unchecked {
         uint256 c = a + b;
         if (c < a) return (false, 0);
         return (true, c);
     }
 }
 /**
  * @dev Returns the substraction of two unsigned integers, with an overflow flag.
  *
  * _Available since v3.4._
  */
 function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
     unchecked {
         if (b > a) return (false, 0);
         return (true, a - b);
     }
 }
 /**
  * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
  *
  * _Available since v3.4._
  */
 function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
     unchecked {
         // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
         // benefit is lost if 'b' is also tested.
         // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
         if (a == 0) return (true, 0);
         uint256 c = a * b;
         if (c / a != b) return (false, 0);
         return (true, c);
     }
 }
 /**
  * @dev Returns the division of two unsigned integers, with a division by zero flag.
  *
  * _Available since v3.4._
  */
 function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
     unchecked {
         if (b == 0) return (false, 0);
         return (true, a / b);
     }
 }
 /**
  * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
  *
  * _Available since v3.4._
  */
 function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
     unchecked {
         if (b == 0) return (false, 0);
         return (true, a % b);
     }
 }
 /**
  * @dev Returns the addition of two unsigned integers, reverting on
  * overflow.
  *
  * Counterpart to Solidity's `+` operator.
  *
  * Requirements:
  *
  * - Addition cannot overflow.
  */
 function add(uint256 a, uint256 b) internal pure returns (uint256) {
     return a + b;
 }
 /**
  * @dev Returns the subtraction of two unsigned integers, reverting on
  * overflow (when the result is negative).
  *
  * Counterpart to Solidity's `-` operator.
  *
  * Requirements:
  *
  * - Subtraction cannot overflow.
  */
 function sub(uint256 a, uint256 b) internal pure returns (uint256) {
     return a - b;
 }
 /**
  * @dev Returns the multiplication of two unsigned integers, reverting on
  * overflow.
  *
  * Counterpart to Solidity's `*` operator.
  *
  * Requirements:
  *
  * - Multiplication cannot overflow.
  */
 function mul(uint256 a, uint256 b) internal pure returns (uint256) {
     return a * b;
 }
 /**
  * @dev Returns the integer division of two unsigned integers, reverting on
  * division by zero. The result is rounded towards zero.
  *
  * Counterpart to Solidity's `/` operator.
  *
  * Requirements:
  *
  * - The divisor cannot be zero.
  */
 function div(uint256 a, uint256 b) internal pure returns (uint256) {
     return a / b;
 }
 /**
  * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
  * reverting when dividing by zero.
  *
  * Counterpart to Solidity's `%` operator. This function uses a `revert`
  * opcode (which leaves remaining gas untouched) while Solidity uses an
  * invalid opcode to revert (consuming all remaining gas).
  *
  * Requirements:
  *
  * - The divisor cannot be zero.
  */
 function mod(uint256 a, uint256 b) internal pure returns (uint256) {
     return a % b;
 }
 /**
  * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
  * overflow (when the result is negative).
  *
  * CAUTION: This function is deprecated because it requires allocating memory for the error
  * message unnecessarily. For custom revert reasons use {trySub}.
  *
  * Counterpart to Solidity's `-` operator.
  *
  * Requirements:
  *
  * - Subtraction cannot overflow.
  */
 function sub(
     uint256 a,
     uint256 b,
     string memory errorMessage
 ) internal pure returns (uint256) {
     unchecked {
         require(b <= a, errorMessage);
         return a - b;
     }
 }
 /**
  * @dev Returns the integer division of two unsigned integers, reverting with custom message on
  * division by zero. The result is rounded towards zero.
  *
  * Counterpart to Solidity's `/` operator. Note: this function uses a
  * `revert` opcode (which leaves remaining gas untouched) while Solidity
  * uses an invalid opcode to revert (consuming all remaining gas).
  *
  * Requirements:
  *
  * - The divisor cannot be zero.
  */
 function div(
     uint256 a,
     uint256 b,
     string memory errorMessage
 ) internal pure returns (uint256) {
     unchecked {
         require(b > 0, errorMessage);
         return a / b;
     }
 }
 /**
  * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
  * reverting with custom message when dividing by zero.
  *
  * CAUTION: This function is deprecated because it requires allocating memory for the error
  * message unnecessarily. For custom revert reasons use {tryMod}.
  *
  * Counterpart to Solidity's `%` operator. This function uses a `revert`
  * opcode (which leaves remaining gas untouched) while Solidity uses an
  * invalid opcode to revert (consuming all remaining gas).
  *
  * Requirements:
  *
  * - The divisor cannot be zero.
  */
 function mod(
     uint256 a,
     uint256 b,
     string memory errorMessage
 ) internal pure returns (uint256) {
     unchecked {
         require(b > 0, errorMessage);
         return a % b;
     }
 }
}
library FeeLibrary {
 using SafeMath for uint256;
  function calculateRoyalties(
     uint256 amount,
     uint256 royaltiesBips
 ) internal pure returns (uint256 amountAfterRoyalties, uint256 royaltiesAmount) {
     royaltiesAmount = amount.mul(royaltiesBips).div(10000);
     amountAfterRoyalties = amount.sub(royaltiesAmount);
 }
}
contract NFTMarket is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable {
using CountersUpgradeable for CountersUpgradeable.Counter;
CountersUpgradeable.Counter private _itemIds;
CountersUpgradeable.Counter private _itemsSold;
CountersUpgradeable.Counter private _bidIds;
uint256 public listingPrice;
uint256 public purchaseFee;
uint256 public cancelFee;
uint256 public bidFee;
uint256 public royaltiesBips;
address private _admin;
/* Returns only items a user has created */
function initialize(uint256 _royaltiesBips) public initializer {
  royaltiesBips = _royaltiesBips;
  listingPrice = 2 ether;
  purchaseFee = 4 ether;
  cancelFee = 6 ether;
  __Ownable_init();
}
/* Returns only items a user has created */
function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
/* Returns only items a user has created */
struct MarketItem {
 uint itemId;
 address nftContract;
 uint256 tokenId;
 address payable seller;
 address payable owner;
 uint256 price;
 bool sold;
 ListingStatus status;
}
/* Returns only items a user has created */
struct MarketBid {
 uint bidId;
 uint itemId;
 address payable bidder;
 address payable seller;
 uint256 bid;
 bool accepted;
 BidStatus status;
}
/* Returns only items a user has created */
enum ListingStatus {
     Active,
     Sold,
     Cancelled
 }
 /* Returns only items a user has created */
enum BidStatus {
 Active,
 Sold,
 Cancelled
}
/* Returns only items a user has created */
mapping(uint256 => MarketItem) private idToMarketItem;
/* Returns only items a user has created */
mapping(uint256 => MarketBid) private idToMarketBid;
/* Returns only items a user has created */
event MarketItemCreated (
 uint indexed itemId,
 address indexed nftContract,
 uint256 indexed tokenId,
 address seller,
 address owner,
 uint256 price,
 bool sold,
 ListingStatus
);
/* Returns only items a user has created */
event MarketBidCreated (
 uint indexed bidId,
 uint indexed itemId,
 address bidder,
 address seller,
 uint256 bid,
 bool accepted,
 BidStatus
);
/* Returns only items a user has created */
event Cancel(
     uint itemId,
     address seller
);
/* Returns only items a user has created */
event CancelBid(
   uint bidId,
   address bidder
);
/* Returns only items a user has created */
function setlistingPrice(uint256 amount) public onlyOwner{
  listingPrice = amount;
}
/* Returns only items a user has created */
function setPurchaseFee (uint256 amount) public onlyOwner{
  purchaseFee = amount;
}
/* Returns only items a user has created */
function setCancelFee (uint256 amount) public onlyOwner{
  cancelFee = amount;
}
/* Returns only items a user has created */
function setBidFee (uint256 amount) public onlyOwner{
 bidFee = amount;
}
/* Returns only items a user has created */
function getAddressThis() public view returns (address) {
 return address(this);
}
/* Places an item for sale on the marketplace */
function createMarketItem(
 address nftContract,
 uint256 tokenId,
 uint256 price
 ) public payable nonReentrant {
 require(price > 0, "Price must be at least 1 wei");
 require(msg.value == listingPrice, "Price must be equal to listing price");
  (bool success,) = owner().call{value: msg.value}("");
 require(success);
 ERC721Upgradeable(nftContract).transferFrom(msg.sender, address(this), tokenId);
 _itemIds.increment();
 uint256 itemId = _itemIds.current();
  idToMarketItem[itemId] =  MarketItem(
   itemId,
   nftContract,
   tokenId,
   payable(msg.sender),
   payable(address(0)),
   price,
   false,
   ListingStatus.Active
 );
 emit MarketItemCreated(
   itemId,
   nftContract,
   tokenId,
   msg.sender,
   address(0),
   price,
   false,
   ListingStatus.Active
 );
}
/* Returns only items a user has created */
function createMarketBid(
 uint256 itemId,
 uint256 bid
 )public payable nonReentrant{
 require(bid > 0);
 require(msg.sender != idToMarketItem[itemId].seller, "Seller Cannot buy their own NFT");
 require(msg.value == bid + bidFee);
 (bool success,) = owner().call{value: bidFee}("");
 require(success);
 address seller = idToMarketItem[itemId].seller;
 address nFt = idToMarketItem[itemId].nftContract;
 uint256 tokenId = idToMarketItem[itemId].tokenId;
 uint256 price = idToMarketItem[itemId].price;
 if (bid >= price){
 (uint256 amountAfterRoyalties, uint256 royaltiesAmount) =
 FeeLibrary.calculateRoyalties(bid, royaltiesBips);
 (bool sell,) = seller.call{value: amountAfterRoyalties}("");
 require(sell);
 (bool royalties,) = owner().call{value: royaltiesAmount}("");
 require(royalties);
 ERC721Upgradeable(nFt).transferFrom(address(this), msg.sender, tokenId);
 idToMarketItem[itemId].owner = payable(msg.sender);
 idToMarketItem[itemId].sold = true;
 idToMarketItem[itemId].status = ListingStatus.Sold;
 _itemsSold.increment();
 }
 else{
 (bool success2,) = address(this).call{value: bid}("");
 require(success2);
 _bidIds.increment();
 uint256 bidId = _bidIds.current();
 idToMarketBid[bidId] =  MarketBid(
   bidId,
   itemId,
   payable(msg.sender),
   payable(seller),
   bid,
   false,
   BidStatus.Active
 );
 emit MarketBidCreated(
   bidId,
   itemId,
   msg.sender,
   seller,
   bid,
   false,
   BidStatus.Active
 );
 
 }
 
 
 
}
/* Creates the sale of a marketplace item */
/* Transfers ownership of the item, as well as funds between parties */
function createMarketSale(
 uint256 itemId
 ) public payable nonReentrant {
 uint price = idToMarketItem[itemId].price;
 uint tokenId = idToMarketItem[itemId].tokenId;
 address nFt = idToMarketItem[itemId].nftContract;
 require(msg.sender != idToMarketItem[itemId].seller, "Seller Cannot buy their own NFT");
 require(msg.value == price + purchaseFee, "Price + Purchase Fee");
 (bool purchase,) = owner().call{value: purchaseFee}("");
 require(purchase);
 (uint256 amountAfterRoyalties, uint256 royaltiesAmount) =
 FeeLibrary.calculateRoyalties(price, royaltiesBips);
 idToMarketItem[itemId].seller.transfer(amountAfterRoyalties);
 (bool royalties,) = owner().call{value: royaltiesAmount}("");
 require(royalties);
 ERC721Upgradeable(nFt).transferFrom(address(this), msg.sender, tokenId);
 idToMarketItem[itemId].owner = payable(msg.sender);
 idToMarketItem[itemId].sold = true;
 idToMarketItem[itemId].status = ListingStatus.Sold;
 _itemsSold.increment();
}
 /* Change the listing price of a marketplace item */
function changeListingPrice(
 uint256 itemId,
 uint256 price
 ) public  nonReentrant {
  require(msg.sender == idToMarketItem[itemId].seller, "Only the listing owner can change the price");
  idToMarketItem[itemId].price = price;
}
/* Returns all unsold market items */
function fetchMarketItems() public view returns (MarketItem[] memory) {
 uint itemCount = _itemIds.current();
 uint unsoldItemCount = _itemIds.current() - _itemsSold.current();
 uint currentIndex = 0;
 MarketItem[] memory items = new MarketItem[](unsoldItemCount);
 for (uint i = 0; i < itemCount; i++) {
   if (idToMarketItem[i + 1].owner == address(0)) {
     uint currentId = i + 1;
     MarketItem storage currentItem = idToMarketItem[currentId];
     items[currentIndex] = currentItem;
     currentIndex += 1;
   }
 }
 return items;
}
/* Returns only items a user has created */
function fetchMarketBid() public view returns (MarketBid[] memory){
    uint bidCount = _bidIds.current();
    uint activeCount = 0;
    uint currentIndex = 0;
    for (uint i = 0; i < bidCount; i++){
        if (idToMarketBid[i + 1].status == BidStatus.Active){
            activeCount +=1;
        }
    }
    MarketBid[] memory bids = new MarketBid[](activeCount);
    for (uint i = 0; i < bidCount; i++){
        if (idToMarketBid[i + 1].status == BidStatus.Active){
            uint iD = i + 1;
            MarketBid storage currentBid = idToMarketBid[iD];
            bids[iD] = currentBid;
            currentIndex += 1;
        }
    }
    return bids;
}
/* Returns only Users Bids in the marketplace */
function fetchUserBid() public view returns (MarketBid[] memory){
 uint bidcount = _bidIds.current();
 uint currentIndex = 0;
 uint itemCount = 0;
 for (uint i = 0; i < bidcount; i++){
   if(idToMarketBid[i + 1].bidder == msg.sender){
     itemCount += 1;
   }
 }
 MarketBid[] memory items = new MarketBid[](itemCount);
 for (uint i = 0; i < bidcount; i++){
   if(idToMarketBid[i + 1].bidder == msg.sender){
     uint currentId = i + 1;
     MarketBid storage currentBid = idToMarketBid[currentId];
     items[currentIndex] = currentBid;
     currentIndex += 1;
   }
 }
 return items;
}
/* Returns onlyl items that a user has purchased */
function fetchMyNFTs() public view returns (MarketItem[] memory) {
 uint totalItemCount = _itemIds.current();
 uint itemCount = 0;
 uint currentIndex = 0;
 for (uint i = 0; i < totalItemCount; i++) {
   if (idToMarketItem[i + 1].owner == msg.sender) {
     itemCount += 1;
   }
 }
 MarketItem[] memory items = new MarketItem[](itemCount);
 for (uint i = 0; i < totalItemCount; i++) {
   if (idToMarketItem[i + 1].owner == msg.sender) {
     uint currentId = i + 1;
     MarketItem storage currentItem = idToMarketItem[currentId];
     items[currentIndex] = currentItem;
     currentIndex += 1;
   }
 }
 return items;
}
/* Returns only items a user has created */
function fetchItemsCreated() public view returns (MarketItem[] memory) {
 uint totalItemCount = _itemIds.current();
 uint itemCount = 0;
 uint currentIndex = 0;
 for (uint i = 0; i < totalItemCount; i++) {
   if (idToMarketItem[i + 1].seller == msg.sender) {
     itemCount += 1;
   }
 }
 MarketItem[] memory items = new MarketItem[](itemCount);
 for (uint i = 0; i < totalItemCount; i++) {
   if (idToMarketItem[i + 1].seller == msg.sender) {
     uint currentId = i + 1;
     MarketItem storage currentItem = idToMarketItem[currentId];
     items[currentIndex] = currentItem;
     currentIndex += 1;
   }
 }
 return items;
}
/* Returns only items a user has created */
function cancel(uint itemId) public payable {
     MarketItem storage listing = idToMarketItem[itemId];
     require(msg.value == cancelFee, "Please Pay Your Cancel Fee");
     require(msg.sender == listing.seller, "Only seller can cancel listing");
     require(listing.status == ListingStatus.Active, "Listing is not active");
     (bool success,) = owner().call{value: cancelFee}("");
     require(success);
     listing.status = ListingStatus.Cancelled;
      ERC721Upgradeable(listing.nftContract).transferFrom(address(this), msg.sender, listing.tokenId);
     emit Cancel(listing.itemId, listing.seller);
}
/* Returns only items a user has created */
function cancelBid(uint bidId) public payable{
    MarketBid storage bid = idToMarketBid[bidId];
    require(msg.value == cancelFee);
    require(msg.sender == bid.bidder);
    require(bid.status == BidStatus.Active);
    (bool success3,) = owner().call{value: cancelFee}("");
    require(success3);
    bid.status = BidStatus.Cancelled;
    (bool success4,) = bid.bidder.call{value: bid.bid}("");
    require(success4);
    emit CancelBid(bid.bidId, bid.bidder);
}
/* Returns only items a user has created */
function fetchSold() public view returns (MarketItem[] memory){
 uint itemCount = _itemIds.current();
 uint currentIndex = 0;
 uint itemTotal = 0;
 for (uint i = 0; i < itemCount; i++) {
   if (idToMarketItem[i + 1].seller == msg.sender && (idToMarketItem[i + 1].sold == true ) {
     itemTotal += 1;
   }
 }
 MarketItem[] memory items = new MarketItem[](itemTotal);
 for (uint i = 0; i < itemCount; i++) {
   if (idToMarketItem[i + 1].seller == msg.sender && (idToMarketItem[i + 1].sold == true) {
     uint currentId = i + 1;
     MarketItem storage currentItem = idToMarketItem[currentId];
     items[currentIndex] = currentItem;
     currentIndex += 1;
   }
 }
 return items;
 
 
}
/* Returns only items a user has created */
function getListing(uint itemId) public view returns (MarketItem memory) {
 return idToMarketItem[itemId];
}
/* Returns only items a user has created */
function getBid(uint bidId) public view returns (MarketBid memory){
    return idToMarketBid[bidId];
}
/* Returns only items a user has created */
function version() pure public returns (string memory) {
  return "v7";
}
}
 
 
 
 

