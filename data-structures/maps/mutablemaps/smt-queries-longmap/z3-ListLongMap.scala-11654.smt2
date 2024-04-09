; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136292 () Bool)

(assert start!136292)

(declare-fun b!1576671 () Bool)

(declare-fun res!1077176 () Bool)

(declare-fun e!879447 () Bool)

(assert (=> b!1576671 (=> (not res!1077176) (not e!879447))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576671 (= res!1077176 (validKeyInArray!0 k0!761))))

(declare-fun b!1576670 () Bool)

(declare-fun res!1077175 () Bool)

(assert (=> b!1576670 (=> (not res!1077175) (not e!879447))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105489 0))(
  ( (array!105490 (arr!50864 (Array (_ BitVec 32) (_ BitVec 64))) (size!51415 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105489)

(assert (=> b!1576670 (= res!1077175 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51415 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576672 () Bool)

(declare-fun e!879445 () Bool)

(assert (=> b!1576672 (= e!879447 e!879445)))

(declare-fun res!1077173 () Bool)

(assert (=> b!1576672 (=> (not res!1077173) (not e!879445))))

(declare-fun lt!675724 () Bool)

(declare-datatypes ((SeekEntryResult!13745 0))(
  ( (MissingZero!13745 (index!57377 (_ BitVec 32))) (Found!13745 (index!57378 (_ BitVec 32))) (Intermediate!13745 (undefined!14557 Bool) (index!57379 (_ BitVec 32)) (x!142396 (_ BitVec 32))) (Undefined!13745) (MissingVacant!13745 (index!57380 (_ BitVec 32))) )
))
(declare-fun lt!675723 () SeekEntryResult!13745)

(assert (=> b!1576672 (= res!1077173 (and (or lt!675724 (not (undefined!14557 lt!675723))) (or lt!675724 (undefined!14557 lt!675723))))))

(get-info :version)

(assert (=> b!1576672 (= lt!675724 (not ((_ is Intermediate!13745) lt!675723)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105489 (_ BitVec 32)) SeekEntryResult!13745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576672 (= lt!675723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun res!1077174 () Bool)

(assert (=> start!136292 (=> (not res!1077174) (not e!879447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136292 (= res!1077174 (validMask!0 mask!898))))

(assert (=> start!136292 e!879447))

(assert (=> start!136292 true))

(declare-fun array_inv!39509 (array!105489) Bool)

(assert (=> start!136292 (array_inv!39509 _keys!605)))

(declare-fun b!1576673 () Bool)

(declare-fun lt!675722 () SeekEntryResult!13745)

(assert (=> b!1576673 (= e!879445 (and (not ((_ is Undefined!13745) lt!675722)) (not ((_ is Found!13745) lt!675722)) (not ((_ is MissingZero!13745) lt!675722)) ((_ is MissingVacant!13745) lt!675722) (or (bvslt (index!57380 lt!675722) #b00000000000000000000000000000000) (bvsge (index!57380 lt!675722) (size!51415 _keys!605)))))))

(declare-fun err!202 () SeekEntryResult!13745)

(assert (=> b!1576673 (= lt!675722 err!202)))

(assert (=> b!1576673 true))

(assert (= (and start!136292 res!1077174) b!1576670))

(assert (= (and b!1576670 res!1077175) b!1576671))

(assert (= (and b!1576671 res!1077176) b!1576672))

(assert (= (and b!1576672 res!1077173) b!1576673))

(declare-fun m!1449153 () Bool)

(assert (=> b!1576671 m!1449153))

(declare-fun m!1449155 () Bool)

(assert (=> b!1576672 m!1449155))

(assert (=> b!1576672 m!1449155))

(declare-fun m!1449157 () Bool)

(assert (=> b!1576672 m!1449157))

(declare-fun m!1449159 () Bool)

(assert (=> start!136292 m!1449159))

(declare-fun m!1449161 () Bool)

(assert (=> start!136292 m!1449161))

(check-sat (not b!1576672) (not b!1576671) (not start!136292))
(check-sat)
(get-model)

(declare-fun d!165683 () Bool)

(declare-fun e!879479 () Bool)

(assert (=> d!165683 e!879479))

(declare-fun c!146044 () Bool)

(declare-fun lt!675742 () SeekEntryResult!13745)

(assert (=> d!165683 (= c!146044 (and ((_ is Intermediate!13745) lt!675742) (undefined!14557 lt!675742)))))

(declare-fun e!879480 () SeekEntryResult!13745)

(assert (=> d!165683 (= lt!675742 e!879480)))

(declare-fun c!146046 () Bool)

(assert (=> d!165683 (= c!146046 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675743 () (_ BitVec 64))

(assert (=> d!165683 (= lt!675743 (select (arr!50864 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165683 (validMask!0 mask!898)))

(assert (=> d!165683 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675742)))

(declare-fun b!1576722 () Bool)

(assert (=> b!1576722 (and (bvsge (index!57379 lt!675742) #b00000000000000000000000000000000) (bvslt (index!57379 lt!675742) (size!51415 _keys!605)))))

(declare-fun e!879477 () Bool)

(assert (=> b!1576722 (= e!879477 (= (select (arr!50864 _keys!605) (index!57379 lt!675742)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576723 () Bool)

(declare-fun e!879481 () Bool)

(assert (=> b!1576723 (= e!879479 e!879481)))

(declare-fun res!1077201 () Bool)

(assert (=> b!1576723 (= res!1077201 (and ((_ is Intermediate!13745) lt!675742) (not (undefined!14557 lt!675742)) (bvslt (x!142396 lt!675742) #b01111111111111111111111111111110) (bvsge (x!142396 lt!675742) #b00000000000000000000000000000000) (bvsge (x!142396 lt!675742) #b00000000000000000000000000000000)))))

(assert (=> b!1576723 (=> (not res!1077201) (not e!879481))))

(declare-fun b!1576724 () Bool)

(assert (=> b!1576724 (= e!879479 (bvsge (x!142396 lt!675742) #b01111111111111111111111111111110))))

(declare-fun b!1576725 () Bool)

(assert (=> b!1576725 (and (bvsge (index!57379 lt!675742) #b00000000000000000000000000000000) (bvslt (index!57379 lt!675742) (size!51415 _keys!605)))))

(declare-fun res!1077202 () Bool)

(assert (=> b!1576725 (= res!1077202 (= (select (arr!50864 _keys!605) (index!57379 lt!675742)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576725 (=> res!1077202 e!879477)))

(declare-fun b!1576726 () Bool)

(declare-fun e!879478 () SeekEntryResult!13745)

(assert (=> b!1576726 (= e!879478 (Intermediate!13745 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576727 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576727 (= e!879478 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576728 () Bool)

(assert (=> b!1576728 (= e!879480 (Intermediate!13745 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576729 () Bool)

(assert (=> b!1576729 (and (bvsge (index!57379 lt!675742) #b00000000000000000000000000000000) (bvslt (index!57379 lt!675742) (size!51415 _keys!605)))))

(declare-fun res!1077203 () Bool)

(assert (=> b!1576729 (= res!1077203 (= (select (arr!50864 _keys!605) (index!57379 lt!675742)) k0!761))))

(assert (=> b!1576729 (=> res!1077203 e!879477)))

(assert (=> b!1576729 (= e!879481 e!879477)))

(declare-fun b!1576730 () Bool)

(assert (=> b!1576730 (= e!879480 e!879478)))

(declare-fun c!146045 () Bool)

(assert (=> b!1576730 (= c!146045 (or (= lt!675743 k0!761) (= (bvadd lt!675743 lt!675743) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165683 c!146046) b!1576728))

(assert (= (and d!165683 (not c!146046)) b!1576730))

(assert (= (and b!1576730 c!146045) b!1576726))

(assert (= (and b!1576730 (not c!146045)) b!1576727))

(assert (= (and d!165683 c!146044) b!1576724))

(assert (= (and d!165683 (not c!146044)) b!1576723))

(assert (= (and b!1576723 res!1077201) b!1576729))

(assert (= (and b!1576729 (not res!1077203)) b!1576725))

(assert (= (and b!1576725 (not res!1077202)) b!1576722))

(declare-fun m!1449173 () Bool)

(assert (=> b!1576725 m!1449173))

(assert (=> d!165683 m!1449155))

(declare-fun m!1449175 () Bool)

(assert (=> d!165683 m!1449175))

(assert (=> d!165683 m!1449159))

(assert (=> b!1576727 m!1449155))

(declare-fun m!1449177 () Bool)

(assert (=> b!1576727 m!1449177))

(assert (=> b!1576727 m!1449177))

(declare-fun m!1449179 () Bool)

(assert (=> b!1576727 m!1449179))

(assert (=> b!1576729 m!1449173))

(assert (=> b!1576722 m!1449173))

(assert (=> b!1576672 d!165683))

(declare-fun d!165695 () Bool)

(declare-fun lt!675751 () (_ BitVec 32))

(declare-fun lt!675750 () (_ BitVec 32))

(assert (=> d!165695 (= lt!675751 (bvmul (bvxor lt!675750 (bvlshr lt!675750 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165695 (= lt!675750 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165695 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077204 (let ((h!38456 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142400 (bvmul (bvxor h!38456 (bvlshr h!38456 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142400 (bvlshr x!142400 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077204 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077204 #b00000000000000000000000000000000))))))

(assert (=> d!165695 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675751 (bvlshr lt!675751 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576672 d!165695))

(declare-fun d!165699 () Bool)

(assert (=> d!165699 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576671 d!165699))

(declare-fun d!165701 () Bool)

(assert (=> d!165701 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136292 d!165701))

(declare-fun d!165707 () Bool)

(assert (=> d!165707 (= (array_inv!39509 _keys!605) (bvsge (size!51415 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136292 d!165707))

(check-sat (not b!1576727) (not d!165683))
(check-sat)
