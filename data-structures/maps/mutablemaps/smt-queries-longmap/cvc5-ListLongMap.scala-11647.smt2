; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136014 () Bool)

(assert start!136014)

(declare-fun b!1575634 () Bool)

(declare-fun e!878833 () Bool)

(declare-fun e!878835 () Bool)

(assert (=> b!1575634 (= e!878833 e!878835)))

(declare-fun res!1076711 () Bool)

(assert (=> b!1575634 (=> (not res!1076711) (not e!878835))))

(declare-datatypes ((array!105424 0))(
  ( (array!105425 (arr!50842 (Array (_ BitVec 32) (_ BitVec 64))) (size!51393 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105424)

(declare-datatypes ((SeekEntryResult!13723 0))(
  ( (MissingZero!13723 (index!57289 (_ BitVec 32))) (Found!13723 (index!57290 (_ BitVec 32))) (Intermediate!13723 (undefined!14535 Bool) (index!57291 (_ BitVec 32)) (x!142264 (_ BitVec 32))) (Undefined!13723) (MissingVacant!13723 (index!57292 (_ BitVec 32))) )
))
(declare-fun lt!675243 () SeekEntryResult!13723)

(declare-fun k!761 () (_ BitVec 64))

(declare-fun mask!898 () (_ BitVec 32))

(assert (=> b!1575634 (= res!1076711 (and (not (undefined!14535 lt!675243)) (is-Intermediate!13723 lt!675243) (not (= (select (arr!50842 _keys!605) (index!57291 lt!675243)) k!761)) (not (= (select (arr!50842 _keys!605) (index!57291 lt!675243)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50842 _keys!605) (index!57291 lt!675243)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57291 lt!675243) #b00000000000000000000000000000000) (bvslt (index!57291 lt!675243) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105424 (_ BitVec 32)) SeekEntryResult!13723)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575634 (= lt!675243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575632 () Bool)

(declare-fun res!1076708 () Bool)

(assert (=> b!1575632 (=> (not res!1076708) (not e!878833))))

(assert (=> b!1575632 (= res!1076708 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51393 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1076710 () Bool)

(assert (=> start!136014 (=> (not res!1076710) (not e!878833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136014 (= res!1076710 (validMask!0 mask!898))))

(assert (=> start!136014 e!878833))

(assert (=> start!136014 true))

(declare-fun array_inv!39487 (array!105424) Bool)

(assert (=> start!136014 (array_inv!39487 _keys!605)))

(declare-fun b!1575635 () Bool)

(declare-fun lt!675244 () SeekEntryResult!13723)

(assert (=> b!1575635 (= e!878835 (and (not (is-Undefined!13723 lt!675244)) (is-Found!13723 lt!675244) (or (bvslt (index!57290 lt!675244) #b00000000000000000000000000000000) (bvsge (index!57290 lt!675244) (size!51393 _keys!605)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105424 (_ BitVec 32)) SeekEntryResult!13723)

(assert (=> b!1575635 (= lt!675244 (seekKeyOrZeroReturnVacant!0 (x!142264 lt!675243) (index!57291 lt!675243) (index!57291 lt!675243) k!761 _keys!605 mask!898))))

(declare-fun b!1575633 () Bool)

(declare-fun res!1076709 () Bool)

(assert (=> b!1575633 (=> (not res!1076709) (not e!878833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575633 (= res!1076709 (validKeyInArray!0 k!761))))

(assert (= (and start!136014 res!1076710) b!1575632))

(assert (= (and b!1575632 res!1076708) b!1575633))

(assert (= (and b!1575633 res!1076709) b!1575634))

(assert (= (and b!1575634 res!1076711) b!1575635))

(declare-fun m!1448611 () Bool)

(assert (=> b!1575634 m!1448611))

(declare-fun m!1448613 () Bool)

(assert (=> b!1575634 m!1448613))

(assert (=> b!1575634 m!1448613))

(declare-fun m!1448615 () Bool)

(assert (=> b!1575634 m!1448615))

(declare-fun m!1448617 () Bool)

(assert (=> start!136014 m!1448617))

(declare-fun m!1448619 () Bool)

(assert (=> start!136014 m!1448619))

(declare-fun m!1448621 () Bool)

(assert (=> b!1575635 m!1448621))

(declare-fun m!1448623 () Bool)

(assert (=> b!1575633 m!1448623))

(push 1)

(assert (not b!1575633))

(assert (not start!136014))

(assert (not b!1575634))

(assert (not b!1575635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165435 () Bool)

(assert (=> d!165435 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575633 d!165435))

(declare-fun d!165437 () Bool)

(assert (=> d!165437 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136014 d!165437))

(declare-fun d!165441 () Bool)

(assert (=> d!165441 (= (array_inv!39487 _keys!605) (bvsge (size!51393 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136014 d!165441))

(declare-fun b!1575678 () Bool)

(declare-fun lt!675261 () SeekEntryResult!13723)

(assert (=> b!1575678 (and (bvsge (index!57291 lt!675261) #b00000000000000000000000000000000) (bvslt (index!57291 lt!675261) (size!51393 _keys!605)))))

(declare-fun res!1076743 () Bool)

(assert (=> b!1575678 (= res!1076743 (= (select (arr!50842 _keys!605) (index!57291 lt!675261)) k!761))))

(declare-fun e!878864 () Bool)

(assert (=> b!1575678 (=> res!1076743 e!878864)))

(declare-fun e!878866 () Bool)

(assert (=> b!1575678 (= e!878866 e!878864)))

(declare-fun d!165445 () Bool)

(declare-fun e!878867 () Bool)

(assert (=> d!165445 e!878867))

(declare-fun c!145742 () Bool)

(assert (=> d!165445 (= c!145742 (and (is-Intermediate!13723 lt!675261) (undefined!14535 lt!675261)))))

(declare-fun e!878868 () SeekEntryResult!13723)

(assert (=> d!165445 (= lt!675261 e!878868)))

(declare-fun c!145741 () Bool)

(assert (=> d!165445 (= c!145741 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675262 () (_ BitVec 64))

(assert (=> d!165445 (= lt!675262 (select (arr!50842 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165445 (validMask!0 mask!898)))

(assert (=> d!165445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675261)))

(declare-fun b!1575679 () Bool)

(declare-fun e!878865 () SeekEntryResult!13723)

(assert (=> b!1575679 (= e!878865 (Intermediate!13723 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575680 () Bool)

(assert (=> b!1575680 (= e!878868 (Intermediate!13723 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575681 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575681 (= e!878865 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575682 () Bool)

(assert (=> b!1575682 (= e!878867 e!878866)))

(declare-fun res!1076744 () Bool)

(assert (=> b!1575682 (= res!1076744 (and (is-Intermediate!13723 lt!675261) (not (undefined!14535 lt!675261)) (bvslt (x!142264 lt!675261) #b01111111111111111111111111111110) (bvsge (x!142264 lt!675261) #b00000000000000000000000000000000) (bvsge (x!142264 lt!675261) #b00000000000000000000000000000000)))))

(assert (=> b!1575682 (=> (not res!1076744) (not e!878866))))

(declare-fun b!1575683 () Bool)

(assert (=> b!1575683 (= e!878868 e!878865)))

(declare-fun c!145743 () Bool)

(assert (=> b!1575683 (= c!145743 (or (= lt!675262 k!761) (= (bvadd lt!675262 lt!675262) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575684 () Bool)

(assert (=> b!1575684 (and (bvsge (index!57291 lt!675261) #b00000000000000000000000000000000) (bvslt (index!57291 lt!675261) (size!51393 _keys!605)))))

(declare-fun res!1076742 () Bool)

(assert (=> b!1575684 (= res!1076742 (= (select (arr!50842 _keys!605) (index!57291 lt!675261)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575684 (=> res!1076742 e!878864)))

(declare-fun b!1575685 () Bool)

(assert (=> b!1575685 (= e!878867 (bvsge (x!142264 lt!675261) #b01111111111111111111111111111110))))

(declare-fun b!1575686 () Bool)

(assert (=> b!1575686 (and (bvsge (index!57291 lt!675261) #b00000000000000000000000000000000) (bvslt (index!57291 lt!675261) (size!51393 _keys!605)))))

(assert (=> b!1575686 (= e!878864 (= (select (arr!50842 _keys!605) (index!57291 lt!675261)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165445 c!145741) b!1575680))

(assert (= (and d!165445 (not c!145741)) b!1575683))

(assert (= (and b!1575683 c!145743) b!1575679))

(assert (= (and b!1575683 (not c!145743)) b!1575681))

(assert (= (and d!165445 c!145742) b!1575685))

(assert (= (and d!165445 (not c!145742)) b!1575682))

(assert (= (and b!1575682 res!1076744) b!1575678))

(assert (= (and b!1575678 (not res!1076743)) b!1575684))

(assert (= (and b!1575684 (not res!1076742)) b!1575686))

(assert (=> b!1575681 m!1448613))

(declare-fun m!1448653 () Bool)

(assert (=> b!1575681 m!1448653))

(assert (=> b!1575681 m!1448653))

(declare-fun m!1448655 () Bool)

(assert (=> b!1575681 m!1448655))

(declare-fun m!1448657 () Bool)

(assert (=> b!1575686 m!1448657))

(assert (=> b!1575684 m!1448657))

(assert (=> b!1575678 m!1448657))

(assert (=> d!165445 m!1448613))

(declare-fun m!1448659 () Bool)

(assert (=> d!165445 m!1448659))

(assert (=> d!165445 m!1448617))

(assert (=> b!1575634 d!165445))

(declare-fun d!165453 () Bool)

(declare-fun lt!675276 () (_ BitVec 32))

(declare-fun lt!675275 () (_ BitVec 32))

(assert (=> d!165453 (= lt!675276 (bvmul (bvxor lt!675275 (bvlshr lt!675275 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165453 (= lt!675275 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165453 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076745 (let ((h!38435 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142268 (bvmul (bvxor h!38435 (bvlshr h!38435 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142268 (bvlshr x!142268 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076745 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076745 #b00000000000000000000000000000000))))))

(assert (=> d!165453 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675276 (bvlshr lt!675276 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575634 d!165453))

(declare-fun b!1575744 () Bool)

(declare-fun e!878900 () SeekEntryResult!13723)

(declare-fun e!878901 () SeekEntryResult!13723)

(assert (=> b!1575744 (= e!878900 e!878901)))

(declare-fun c!145769 () Bool)

(declare-fun lt!675291 () (_ BitVec 64))

(assert (=> b!1575744 (= c!145769 (= lt!675291 k!761))))

(declare-fun b!1575745 () Bool)

(assert (=> b!1575745 (= e!878901 (Found!13723 (index!57291 lt!675243)))))

(declare-fun e!878899 () SeekEntryResult!13723)

(declare-fun b!1575746 () Bool)

(assert (=> b!1575746 (= e!878899 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142264 lt!675243) #b00000000000000000000000000000001) (nextIndex!0 (index!57291 lt!675243) (x!142264 lt!675243) mask!898) (index!57291 lt!675243) k!761 _keys!605 mask!898))))

(declare-fun b!1575747 () Bool)

(declare-fun c!145770 () Bool)

(assert (=> b!1575747 (= c!145770 (= lt!675291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575747 (= e!878901 e!878899)))

(declare-fun b!1575748 () Bool)

(assert (=> b!1575748 (= e!878899 (MissingVacant!13723 (index!57291 lt!675243)))))

(declare-fun b!1575749 () Bool)

(assert (=> b!1575749 (= e!878900 Undefined!13723)))

(declare-fun d!165455 () Bool)

(declare-fun lt!675292 () SeekEntryResult!13723)

(assert (=> d!165455 (and (or (is-Undefined!13723 lt!675292) (not (is-Found!13723 lt!675292)) (and (bvsge (index!57290 lt!675292) #b00000000000000000000000000000000) (bvslt (index!57290 lt!675292) (size!51393 _keys!605)))) (or (is-Undefined!13723 lt!675292) (is-Found!13723 lt!675292) (not (is-MissingVacant!13723 lt!675292)) (not (= (index!57292 lt!675292) (index!57291 lt!675243))) (and (bvsge (index!57292 lt!675292) #b00000000000000000000000000000000) (bvslt (index!57292 lt!675292) (size!51393 _keys!605)))) (or (is-Undefined!13723 lt!675292) (ite (is-Found!13723 lt!675292) (= (select (arr!50842 _keys!605) (index!57290 lt!675292)) k!761) (and (is-MissingVacant!13723 lt!675292) (= (index!57292 lt!675292) (index!57291 lt!675243)) (= (select (arr!50842 _keys!605) (index!57292 lt!675292)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165455 (= lt!675292 e!878900)))

(declare-fun c!145768 () Bool)

(assert (=> d!165455 (= c!145768 (bvsge (x!142264 lt!675243) #b01111111111111111111111111111110))))

(assert (=> d!165455 (= lt!675291 (select (arr!50842 _keys!605) (index!57291 lt!675243)))))

(assert (=> d!165455 (validMask!0 mask!898)))

(assert (=> d!165455 (= (seekKeyOrZeroReturnVacant!0 (x!142264 lt!675243) (index!57291 lt!675243) (index!57291 lt!675243) k!761 _keys!605 mask!898) lt!675292)))

(assert (= (and d!165455 c!145768) b!1575749))

(assert (= (and d!165455 (not c!145768)) b!1575744))

(assert (= (and b!1575744 c!145769) b!1575745))

(assert (= (and b!1575744 (not c!145769)) b!1575747))

(assert (= (and b!1575747 c!145770) b!1575748))

(assert (= (and b!1575747 (not c!145770)) b!1575746))

(declare-fun m!1448677 () Bool)

(assert (=> b!1575746 m!1448677))

(assert (=> b!1575746 m!1448677))

(declare-fun m!1448679 () Bool)

(assert (=> b!1575746 m!1448679))

(declare-fun m!1448681 () Bool)

(assert (=> d!165455 m!1448681))

(declare-fun m!1448683 () Bool)

(assert (=> d!165455 m!1448683))

(assert (=> d!165455 m!1448611))

(assert (=> d!165455 m!1448617))

(assert (=> b!1575635 d!165455))

(push 1)

(assert (not b!1575681))

(assert (not b!1575746))

(assert (not d!165445))

(assert (not d!165455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

