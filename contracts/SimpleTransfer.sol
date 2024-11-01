// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTransfer {
    // Para transferi yapılırken kullanılacak olay
    event TransferMade(address indexed sender, address indexed receiver, uint256 amount);

    // Kullanıcıdan diğerine para transferi yapma fonksiyonu
    function transfer(address payable _receiver) public payable {
        require(msg.value > 0, "Transfer miktarı 0'dan büyük olmalıdır.");
        _receiver.transfer(msg.value); // Gönderilen miktarı alıcıya transfer et

        emit TransferMade(msg.sender, _receiver, msg.value); // Transfer olayını kaydet
    }
}

