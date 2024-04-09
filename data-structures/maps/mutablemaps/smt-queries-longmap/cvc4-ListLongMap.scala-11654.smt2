; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136294 () Bool)

(assert start!136294)

(declare-fun b!1576684 () Bool)

(declare-fun e!879455 () Bool)

(declare-fun e!879454 () Bool)

(assert (=> b!1576684 (= e!879455 e!879454)))

(declare-fun res!1077187 () Bool)

(assert (=> b!1576684 (=> (not res!1077187) (not e!879454))))

(declare-fun lt!675731 () Bool)

(declare-datatypes ((SeekEntryResult!13746 0))(
  ( (MissingZero!13746 (index!57381 (_ BitVec 32))) (Found!13746 (index!57382 (_ BitVec 32))) (Intermediate!13746 (undefined!14558 Bool) (index!57383 (_ BitVec 32)) (x!142397 (_ BitVec 32))) (Undefined!13746) (MissingVacant!13746 (index!57384 (_ BitVec 32))) )
))
(declare-fun lt!675732 () SeekEntryResult!13746)

(assert (=> b!1576684 (= res!1077187 (and (or lt!675731 (not (undefined!14558 lt!675732))) (or lt!675731 (undefined!14558 lt!675732))))))

(assert (=> b!1576684 (= lt!675731 (not (is-Intermediate!13746 lt!675732)))))

(declare-datatypes ((array!105491 0))(
  ( (array!105492 (arr!50865 (Array (_ BitVec 32) (_ BitVec 64))) (size!51416 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105491)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105491 (_ BitVec 32)) SeekEntryResult!13746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576684 (= lt!675732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576682 () Bool)

(declare-fun res!1077186 () Bool)

(assert (=> b!1576682 (=> (not res!1077186) (not e!879455))))

(assert (=> b!1576682 (= res!1077186 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51416 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576685 () Bool)

(declare-fun lt!675733 () SeekEntryResult!13746)

(assert (=> b!1576685 (= e!879454 (and (not (is-Undefined!13746 lt!675733)) (not (is-Found!13746 lt!675733)) (not (is-MissingZero!13746 lt!675733)) (is-MissingVacant!13746 lt!675733) (or (bvslt (index!57384 lt!675733) #b00000000000000000000000000000000) (bvsge (index!57384 lt!675733) (size!51416 _keys!605)))))))

(declare-fun err!206 () SeekEntryResult!13746)

(assert (=> b!1576685 (= lt!675733 err!206)))

(assert (=> b!1576685 true))

(declare-fun b!1576683 () Bool)

(declare-fun res!1077185 () Bool)

(assert (=> b!1576683 (=> (not res!1077185) (not e!879455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576683 (= res!1077185 (validKeyInArray!0 k!761))))

(declare-fun res!1077188 () Bool)

(assert (=> start!136294 (=> (not res!1077188) (not e!879455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136294 (= res!1077188 (validMask!0 mask!898))))

(assert (=> start!136294 e!879455))

(assert (=> start!136294 true))

(declare-fun array_inv!39510 (array!105491) Bool)

(assert (=> start!136294 (array_inv!39510 _keys!605)))

(assert (= (and start!136294 res!1077188) b!1576682))

(assert (= (and b!1576682 res!1077186) b!1576683))

(assert (= (and b!1576683 res!1077185) b!1576684))

(assert (= (and b!1576684 res!1077187) b!1576685))

(declare-fun m!1449163 () Bool)

(assert (=> b!1576684 m!1449163))

(assert (=> b!1576684 m!1449163))

(declare-fun m!1449165 () Bool)

(assert (=> b!1576684 m!1449165))

(declare-fun m!1449167 () Bool)

(assert (=> b!1576683 m!1449167))

(declare-fun m!1449169 () Bool)

(assert (=> start!136294 m!1449169))

(declare-fun m!1449171 () Bool)

(assert (=> start!136294 m!1449171))

(push 1)

(assert (not b!1576683))

(assert (not start!136294))

(assert (not b!1576684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165687 () Bool)

(assert (=> d!165687 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576683 d!165687))

(declare-fun d!165689 () Bool)

(assert (=> d!165689 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136294 d!165689))

(declare-fun d!165691 () Bool)

(assert (=> d!165691 (= (array_inv!39510 _keys!605) (bvsge (size!51416 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136294 d!165691))

(declare-fun b!1576758 () Bool)

(declare-fun lt!675762 () SeekEntryResult!13746)

(assert (=> b!1576758 (and (bvsge (index!57383 lt!675762) #b00000000000000000000000000000000) (bvslt (index!57383 lt!675762) (size!51416 _keys!605)))))

(declare-fun res!1077215 () Bool)

(assert (=> b!1576758 (= res!1077215 (= (select (arr!50865 _keys!605) (index!57383 lt!675762)) k!761))))

(declare-fun e!879500 () Bool)

(assert (=> b!1576758 (=> res!1077215 e!879500)))

(declare-fun e!879498 () Bool)

(assert (=> b!1576758 (= e!879498 e!879500)))

(declare-fun e!879497 () SeekEntryResult!13746)

(declare-fun b!1576759 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576759 (= e!879497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576760 () Bool)

(declare-fun e!879501 () Bool)

(assert (=> b!1576760 (= e!879501 (bvsge (x!142397 lt!675762) #b01111111111111111111111111111110))))

(declare-fun b!1576761 () Bool)

(declare-fun e!879499 () SeekEntryResult!13746)

(assert (=> b!1576761 (= e!879499 e!879497)))

(declare-fun c!146056 () Bool)

(declare-fun lt!675763 () (_ BitVec 64))

(assert (=> b!1576761 (= c!146056 (or (= lt!675763 k!761) (= (bvadd lt!675763 lt!675763) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576762 () Bool)

(assert (=> b!1576762 (= e!879497 (Intermediate!13746 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576763 () Bool)

(assert (=> b!1576763 (and (bvsge (index!57383 lt!675762) #b00000000000000000000000000000000) (bvslt (index!57383 lt!675762) (size!51416 _keys!605)))))

(declare-fun res!1077217 () Bool)

(assert (=> b!1576763 (= res!1077217 (= (select (arr!50865 _keys!605) (index!57383 lt!675762)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576763 (=> res!1077217 e!879500)))

(declare-fun b!1576764 () Bool)

(assert (=> b!1576764 (= e!879499 (Intermediate!13746 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165693 () Bool)

(assert (=> d!165693 e!879501))

(declare-fun c!146058 () Bool)

(assert (=> d!165693 (= c!146058 (and (is-Intermediate!13746 lt!675762) (undefined!14558 lt!675762)))))

(assert (=> d!165693 (= lt!675762 e!879499)))

(declare-fun c!146057 () Bool)

(assert (=> d!165693 (= c!146057 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165693 (= lt!675763 (select (arr!50865 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165693 (validMask!0 mask!898)))

(assert (=> d!165693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675762)))

(declare-fun b!1576765 () Bool)

(assert (=> b!1576765 (= e!879501 e!879498)))

(declare-fun res!1077216 () Bool)

(assert (=> b!1576765 (= res!1077216 (and (is-Intermediate!13746 lt!675762) (not (undefined!14558 lt!675762)) (bvslt (x!142397 lt!675762) #b01111111111111111111111111111110) (bvsge (x!142397 lt!675762) #b00000000000000000000000000000000) (bvsge (x!142397 lt!675762) #b00000000000000000000000000000000)))))

(assert (=> b!1576765 (=> (not res!1077216) (not e!879498))))

(declare-fun b!1576766 () Bool)

(assert (=> b!1576766 (and (bvsge (index!57383 lt!675762) #b00000000000000000000000000000000) (bvslt (index!57383 lt!675762) (size!51416 _keys!605)))))

(assert (=> b!1576766 (= e!879500 (= (select (arr!50865 _keys!605) (index!57383 lt!675762)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165693 c!146057) b!1576764))

(assert (= (and d!165693 (not c!146057)) b!1576761))

(assert (= (and b!1576761 c!146056) b!1576762))

