; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135980 () Bool)

(assert start!135980)

(declare-fun res!1076659 () Bool)

(declare-fun e!878775 () Bool)

(assert (=> start!135980 (=> (not res!1076659) (not e!878775))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135980 (= res!1076659 (validMask!0 mask!898))))

(assert (=> start!135980 e!878775))

(assert (=> start!135980 true))

(declare-datatypes ((array!105417 0))(
  ( (array!105418 (arr!50840 (Array (_ BitVec 32) (_ BitVec 64))) (size!51391 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105417)

(declare-fun array_inv!39485 (array!105417) Bool)

(assert (=> start!135980 (array_inv!39485 _keys!605)))

(declare-fun b!1575531 () Bool)

(declare-fun res!1076658 () Bool)

(assert (=> b!1575531 (=> (not res!1076658) (not e!878775))))

(assert (=> b!1575531 (= res!1076658 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51391 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575532 () Bool)

(declare-fun res!1076660 () Bool)

(assert (=> b!1575532 (=> (not res!1076660) (not e!878775))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575532 (= res!1076660 (validKeyInArray!0 k0!761))))

(declare-fun b!1575533 () Bool)

(declare-datatypes ((SeekEntryResult!13721 0))(
  ( (MissingZero!13721 (index!57281 (_ BitVec 32))) (Found!13721 (index!57282 (_ BitVec 32))) (Intermediate!13721 (undefined!14533 Bool) (index!57283 (_ BitVec 32)) (x!142248 (_ BitVec 32))) (Undefined!13721) (MissingVacant!13721 (index!57284 (_ BitVec 32))) )
))
(declare-fun lt!675199 () SeekEntryResult!13721)

(get-info :version)

(assert (=> b!1575533 (= e!878775 (and ((_ is Intermediate!13721) lt!675199) (not (undefined!14533 lt!675199)) (not (= (select (arr!50840 _keys!605) (index!57283 lt!675199)) k0!761)) (not (= (select (arr!50840 _keys!605) (index!57283 lt!675199)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57283 lt!675199) #b00000000000000000000000000000000) (bvsge (index!57283 lt!675199) (size!51391 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105417 (_ BitVec 32)) SeekEntryResult!13721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575533 (= lt!675199 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135980 res!1076659) b!1575531))

(assert (= (and b!1575531 res!1076658) b!1575532))

(assert (= (and b!1575532 res!1076660) b!1575533))

(declare-fun m!1448563 () Bool)

(assert (=> start!135980 m!1448563))

(declare-fun m!1448565 () Bool)

(assert (=> start!135980 m!1448565))

(declare-fun m!1448567 () Bool)

(assert (=> b!1575532 m!1448567))

(declare-fun m!1448569 () Bool)

(assert (=> b!1575533 m!1448569))

(declare-fun m!1448571 () Bool)

(assert (=> b!1575533 m!1448571))

(assert (=> b!1575533 m!1448571))

(declare-fun m!1448573 () Bool)

(assert (=> b!1575533 m!1448573))

(check-sat (not b!1575533) (not start!135980) (not b!1575532))
(check-sat)
(get-model)

(declare-fun b!1575615 () Bool)

(declare-fun e!878822 () Bool)

(declare-fun lt!675231 () SeekEntryResult!13721)

(assert (=> b!1575615 (= e!878822 (bvsge (x!142248 lt!675231) #b01111111111111111111111111111110))))

(declare-fun d!165405 () Bool)

(assert (=> d!165405 e!878822))

(declare-fun c!145733 () Bool)

(assert (=> d!165405 (= c!145733 (and ((_ is Intermediate!13721) lt!675231) (undefined!14533 lt!675231)))))

(declare-fun e!878823 () SeekEntryResult!13721)

(assert (=> d!165405 (= lt!675231 e!878823)))

(declare-fun c!145734 () Bool)

(assert (=> d!165405 (= c!145734 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675232 () (_ BitVec 64))

(assert (=> d!165405 (= lt!675232 (select (arr!50840 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165405 (validMask!0 mask!898)))

(assert (=> d!165405 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675231)))

(declare-fun b!1575616 () Bool)

(assert (=> b!1575616 (and (bvsge (index!57283 lt!675231) #b00000000000000000000000000000000) (bvslt (index!57283 lt!675231) (size!51391 _keys!605)))))

(declare-fun res!1076697 () Bool)

(assert (=> b!1575616 (= res!1076697 (= (select (arr!50840 _keys!605) (index!57283 lt!675231)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878825 () Bool)

(assert (=> b!1575616 (=> res!1076697 e!878825)))

(declare-fun b!1575617 () Bool)

(declare-fun e!878826 () SeekEntryResult!13721)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575617 (= e!878826 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575618 () Bool)

(declare-fun e!878824 () Bool)

(assert (=> b!1575618 (= e!878822 e!878824)))

(declare-fun res!1076698 () Bool)

(assert (=> b!1575618 (= res!1076698 (and ((_ is Intermediate!13721) lt!675231) (not (undefined!14533 lt!675231)) (bvslt (x!142248 lt!675231) #b01111111111111111111111111111110) (bvsge (x!142248 lt!675231) #b00000000000000000000000000000000) (bvsge (x!142248 lt!675231) #b00000000000000000000000000000000)))))

(assert (=> b!1575618 (=> (not res!1076698) (not e!878824))))

(declare-fun b!1575619 () Bool)

(assert (=> b!1575619 (= e!878823 e!878826)))

(declare-fun c!145732 () Bool)

(assert (=> b!1575619 (= c!145732 (or (= lt!675232 k0!761) (= (bvadd lt!675232 lt!675232) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575620 () Bool)

(assert (=> b!1575620 (= e!878823 (Intermediate!13721 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575621 () Bool)

(assert (=> b!1575621 (and (bvsge (index!57283 lt!675231) #b00000000000000000000000000000000) (bvslt (index!57283 lt!675231) (size!51391 _keys!605)))))

(declare-fun res!1076696 () Bool)

(assert (=> b!1575621 (= res!1076696 (= (select (arr!50840 _keys!605) (index!57283 lt!675231)) k0!761))))

(assert (=> b!1575621 (=> res!1076696 e!878825)))

(assert (=> b!1575621 (= e!878824 e!878825)))

(declare-fun b!1575622 () Bool)

(assert (=> b!1575622 (= e!878826 (Intermediate!13721 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575623 () Bool)

(assert (=> b!1575623 (and (bvsge (index!57283 lt!675231) #b00000000000000000000000000000000) (bvslt (index!57283 lt!675231) (size!51391 _keys!605)))))

(assert (=> b!1575623 (= e!878825 (= (select (arr!50840 _keys!605) (index!57283 lt!675231)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165405 c!145734) b!1575620))

(assert (= (and d!165405 (not c!145734)) b!1575619))

(assert (= (and b!1575619 c!145732) b!1575622))

(assert (= (and b!1575619 (not c!145732)) b!1575617))

(assert (= (and d!165405 c!145733) b!1575615))

(assert (= (and d!165405 (not c!145733)) b!1575618))

(assert (= (and b!1575618 res!1076698) b!1575621))

(assert (= (and b!1575621 (not res!1076696)) b!1575616))

(assert (= (and b!1575616 (not res!1076697)) b!1575623))

(declare-fun m!1448603 () Bool)

(assert (=> b!1575621 m!1448603))

(assert (=> d!165405 m!1448571))

(declare-fun m!1448605 () Bool)

(assert (=> d!165405 m!1448605))

(assert (=> d!165405 m!1448563))

(assert (=> b!1575616 m!1448603))

(assert (=> b!1575617 m!1448571))

(declare-fun m!1448607 () Bool)

(assert (=> b!1575617 m!1448607))

(assert (=> b!1575617 m!1448607))

(declare-fun m!1448609 () Bool)

(assert (=> b!1575617 m!1448609))

(assert (=> b!1575623 m!1448603))

(assert (=> b!1575533 d!165405))

(declare-fun d!165421 () Bool)

(declare-fun lt!675238 () (_ BitVec 32))

(declare-fun lt!675237 () (_ BitVec 32))

(assert (=> d!165421 (= lt!675238 (bvmul (bvxor lt!675237 (bvlshr lt!675237 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165421 (= lt!675237 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165421 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076699 (let ((h!38434 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142255 (bvmul (bvxor h!38434 (bvlshr h!38434 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142255 (bvlshr x!142255 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076699 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076699 #b00000000000000000000000000000000))))))

(assert (=> d!165421 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675238 (bvlshr lt!675238 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575533 d!165421))

(declare-fun d!165425 () Bool)

(assert (=> d!165425 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135980 d!165425))

(declare-fun d!165429 () Bool)

(assert (=> d!165429 (= (array_inv!39485 _keys!605) (bvsge (size!51391 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135980 d!165429))

(declare-fun d!165431 () Bool)

(assert (=> d!165431 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575532 d!165431))

(check-sat (not d!165405) (not b!1575617))
