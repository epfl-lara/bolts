; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135130 () Bool)

(assert start!135130)

(declare-fun res!1074633 () Bool)

(declare-fun e!876962 () Bool)

(assert (=> start!135130 (=> (not res!1074633) (not e!876962))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135130 (= res!1074633 (validMask!0 mask!889))))

(assert (=> start!135130 e!876962))

(assert (=> start!135130 true))

(declare-datatypes ((array!105035 0))(
  ( (array!105036 (arr!50676 (Array (_ BitVec 32) (_ BitVec 64))) (size!51227 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105035)

(declare-fun array_inv!39321 (array!105035) Bool)

(assert (=> start!135130 (array_inv!39321 _keys!600)))

(declare-fun b!1572633 () Bool)

(declare-fun res!1074635 () Bool)

(assert (=> b!1572633 (=> (not res!1074635) (not e!876962))))

(assert (=> b!1572633 (= res!1074635 (= (size!51227 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572634 () Bool)

(declare-fun res!1074634 () Bool)

(assert (=> b!1572634 (=> (not res!1074634) (not e!876962))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572634 (= res!1074634 (validKeyInArray!0 k!754))))

(declare-datatypes ((SeekEntryResult!13605 0))(
  ( (MissingZero!13605 (index!56817 (_ BitVec 32))) (Found!13605 (index!56818 (_ BitVec 32))) (Intermediate!13605 (undefined!14417 Bool) (index!56819 (_ BitVec 32)) (x!141596 (_ BitVec 32))) (Undefined!13605) (MissingVacant!13605 (index!56820 (_ BitVec 32))) )
))
(declare-fun lt!674032 () SeekEntryResult!13605)

(declare-fun b!1572635 () Bool)

(assert (=> b!1572635 (= e!876962 (and (is-Intermediate!13605 lt!674032) (not (undefined!14417 lt!674032)) (not (= (select (arr!50676 _keys!600) (index!56819 lt!674032)) k!754)) (not (= (select (arr!50676 _keys!600) (index!56819 lt!674032)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!56819 lt!674032) #b00000000000000000000000000000000) (bvsge (index!56819 lt!674032) (size!51227 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105035 (_ BitVec 32)) SeekEntryResult!13605)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572635 (= lt!674032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135130 res!1074633) b!1572633))

(assert (= (and b!1572633 res!1074635) b!1572634))

(assert (= (and b!1572634 res!1074634) b!1572635))

(declare-fun m!1446367 () Bool)

(assert (=> start!135130 m!1446367))

(declare-fun m!1446369 () Bool)

(assert (=> start!135130 m!1446369))

(declare-fun m!1446371 () Bool)

(assert (=> b!1572634 m!1446371))

(declare-fun m!1446373 () Bool)

(assert (=> b!1572635 m!1446373))

(declare-fun m!1446375 () Bool)

(assert (=> b!1572635 m!1446375))

(assert (=> b!1572635 m!1446375))

(declare-fun m!1446377 () Bool)

(assert (=> b!1572635 m!1446377))

(push 1)

(assert (not b!1572634))

(assert (not b!1572635))

(assert (not start!135130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164777 () Bool)

(assert (=> d!164777 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572634 d!164777))

(declare-fun b!1572699 () Bool)

(declare-fun e!877000 () SeekEntryResult!13605)

(assert (=> b!1572699 (= e!877000 (Intermediate!13605 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572700 () Bool)

(declare-fun lt!674047 () SeekEntryResult!13605)

(assert (=> b!1572700 (and (bvsge (index!56819 lt!674047) #b00000000000000000000000000000000) (bvslt (index!56819 lt!674047) (size!51227 _keys!600)))))

(declare-fun e!876999 () Bool)

(assert (=> b!1572700 (= e!876999 (= (select (arr!50676 _keys!600) (index!56819 lt!674047)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!164779 () Bool)

(declare-fun e!877003 () Bool)

(assert (=> d!164779 e!877003))

(declare-fun c!145270 () Bool)

(assert (=> d!164779 (= c!145270 (and (is-Intermediate!13605 lt!674047) (undefined!14417 lt!674047)))))

(declare-fun e!877002 () SeekEntryResult!13605)

(assert (=> d!164779 (= lt!674047 e!877002)))

(declare-fun c!145272 () Bool)

(assert (=> d!164779 (= c!145272 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674048 () (_ BitVec 64))

(assert (=> d!164779 (= lt!674048 (select (arr!50676 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164779 (validMask!0 mask!889)))

(assert (=> d!164779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674047)))

(declare-fun b!1572701 () Bool)

(assert (=> b!1572701 (and (bvsge (index!56819 lt!674047) #b00000000000000000000000000000000) (bvslt (index!56819 lt!674047) (size!51227 _keys!600)))))

(declare-fun res!1074658 () Bool)

(assert (=> b!1572701 (= res!1074658 (= (select (arr!50676 _keys!600) (index!56819 lt!674047)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572701 (=> res!1074658 e!876999)))

(declare-fun b!1572702 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572702 (= e!877000 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572703 () Bool)

(assert (=> b!1572703 (= e!877002 (Intermediate!13605 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572704 () Bool)

(assert (=> b!1572704 (= e!877003 (bvsge (x!141596 lt!674047) #b01111111111111111111111111111110))))

(declare-fun b!1572705 () Bool)

(declare-fun e!877001 () Bool)

(assert (=> b!1572705 (= e!877003 e!877001)))

(declare-fun res!1074659 () Bool)

(assert (=> b!1572705 (= res!1074659 (and (is-Intermediate!13605 lt!674047) (not (undefined!14417 lt!674047)) (bvslt (x!141596 lt!674047) #b01111111111111111111111111111110) (bvsge (x!141596 lt!674047) #b00000000000000000000000000000000) (bvsge (x!141596 lt!674047) #b00000000000000000000000000000000)))))

(assert (=> b!1572705 (=> (not res!1074659) (not e!877001))))

(declare-fun b!1572706 () Bool)

(assert (=> b!1572706 (and (bvsge (index!56819 lt!674047) #b00000000000000000000000000000000) (bvslt (index!56819 lt!674047) (size!51227 _keys!600)))))

(declare-fun res!1074660 () Bool)

(assert (=> b!1572706 (= res!1074660 (= (select (arr!50676 _keys!600) (index!56819 lt!674047)) k!754))))

(assert (=> b!1572706 (=> res!1074660 e!876999)))

(assert (=> b!1572706 (= e!877001 e!876999)))

(declare-fun b!1572707 () Bool)

(assert (=> b!1572707 (= e!877002 e!877000)))

(declare-fun c!145271 () Bool)

(assert (=> b!1572707 (= c!145271 (or (= lt!674048 k!754) (= (bvadd lt!674048 lt!674048) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!164779 c!145272) b!1572703))

(assert (= (and d!164779 (not c!145272)) b!1572707))

(assert (= (and b!1572707 c!145271) b!1572699))

(assert (= (and b!1572707 (not c!145271)) b!1572702))

(assert (= (and d!164779 c!145270) b!1572704))

(assert (= (and d!164779 (not c!145270)) b!1572705))

(assert (= (and b!1572705 res!1074659) b!1572706))

(assert (= (and b!1572706 (not res!1074660)) b!1572701))

(assert (= (and b!1572701 (not res!1074658)) b!1572700))

(assert (=> b!1572702 m!1446375))

(declare-fun m!1446387 () Bool)

(assert (=> b!1572702 m!1446387))

(assert (=> b!1572702 m!1446387))

(declare-fun m!1446389 () Bool)

(assert (=> b!1572702 m!1446389))

(assert (=> d!164779 m!1446375))

(declare-fun m!1446391 () Bool)

(assert (=> d!164779 m!1446391))

(assert (=> d!164779 m!1446367))

(declare-fun m!1446393 () Bool)

(assert (=> b!1572700 m!1446393))

(assert (=> b!1572706 m!1446393))

(assert (=> b!1572701 m!1446393))

(assert (=> b!1572635 d!164779))

(declare-fun d!164789 () Bool)

(declare-fun lt!674062 () (_ BitVec 32))

(declare-fun lt!674061 () (_ BitVec 32))

(assert (=> d!164789 (= lt!674062 (bvmul (bvxor lt!674061 (bvlshr lt!674061 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164789 (= lt!674061 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164789 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074661 (let ((h!38388 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141601 (bvmul (bvxor h!38388 (bvlshr h!38388 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141601 (bvlshr x!141601 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074661 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074661 #b00000000000000000000000000000000))))))

(assert (=> d!164789 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674062 (bvlshr lt!674062 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572635 d!164789))

(declare-fun d!164795 () Bool)

(assert (=> d!164795 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135130 d!164795))

(declare-fun d!164799 () Bool)

(assert (=> d!164799 (= (array_inv!39321 _keys!600) (bvsge (size!51227 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135130 d!164799))

(push 1)

(assert (not d!164779))

(assert (not b!1572702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

