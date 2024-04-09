; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135382 () Bool)

(assert start!135382)

(declare-fun res!1075130 () Bool)

(declare-fun e!877546 () Bool)

(assert (=> start!135382 (=> (not res!1075130) (not e!877546))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135382 (= res!1075130 (validMask!0 mask!889))))

(assert (=> start!135382 e!877546))

(assert (=> start!135382 true))

(declare-datatypes ((array!105107 0))(
  ( (array!105108 (arr!50703 (Array (_ BitVec 32) (_ BitVec 64))) (size!51254 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105107)

(declare-fun array_inv!39348 (array!105107) Bool)

(assert (=> start!135382 (array_inv!39348 _keys!600)))

(declare-fun b!1573595 () Bool)

(declare-fun res!1075129 () Bool)

(assert (=> b!1573595 (=> (not res!1075129) (not e!877546))))

(assert (=> b!1573595 (= res!1075129 (= (size!51254 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573597 () Bool)

(declare-fun e!877548 () Bool)

(assert (=> b!1573597 (= e!877546 e!877548)))

(declare-fun res!1075127 () Bool)

(assert (=> b!1573597 (=> (not res!1075127) (not e!877548))))

(declare-fun lt!674482 () Bool)

(declare-datatypes ((SeekEntryResult!13632 0))(
  ( (MissingZero!13632 (index!56925 (_ BitVec 32))) (Found!13632 (index!56926 (_ BitVec 32))) (Intermediate!13632 (undefined!14444 Bool) (index!56927 (_ BitVec 32)) (x!141740 (_ BitVec 32))) (Undefined!13632) (MissingVacant!13632 (index!56928 (_ BitVec 32))) )
))
(declare-fun lt!674481 () SeekEntryResult!13632)

(assert (=> b!1573597 (= res!1075127 (and (or lt!674482 (not (undefined!14444 lt!674481))) (or lt!674482 (undefined!14444 lt!674481))))))

(assert (=> b!1573597 (= lt!674482 (not (is-Intermediate!13632 lt!674481)))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105107 (_ BitVec 32)) SeekEntryResult!13632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573597 (= lt!674481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573596 () Bool)

(declare-fun res!1075128 () Bool)

(assert (=> b!1573596 (=> (not res!1075128) (not e!877546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573596 (= res!1075128 (validKeyInArray!0 k!754))))

(declare-fun b!1573598 () Bool)

(declare-fun lt!674480 () SeekEntryResult!13632)

(assert (=> b!1573598 (= e!877548 (and (not (is-MissingVacant!13632 lt!674480)) (not (is-Found!13632 lt!674480)) (not (is-MissingZero!13632 lt!674480)) (not (is-Undefined!13632 lt!674480))))))

(declare-fun err!158 () SeekEntryResult!13632)

(assert (=> b!1573598 (= lt!674480 err!158)))

(assert (=> b!1573598 true))

(assert (= (and start!135382 res!1075130) b!1573595))

(assert (= (and b!1573595 res!1075129) b!1573596))

(assert (= (and b!1573596 res!1075128) b!1573597))

(assert (= (and b!1573597 res!1075127) b!1573598))

(declare-fun m!1446933 () Bool)

(assert (=> start!135382 m!1446933))

(declare-fun m!1446935 () Bool)

(assert (=> start!135382 m!1446935))

(declare-fun m!1446937 () Bool)

(assert (=> b!1573597 m!1446937))

(assert (=> b!1573597 m!1446937))

(declare-fun m!1446939 () Bool)

(assert (=> b!1573597 m!1446939))

(declare-fun m!1446941 () Bool)

(assert (=> b!1573596 m!1446941))

(push 1)

(assert (not b!1573597))

(assert (not start!135382))

(assert (not b!1573596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1573635 () Bool)

(declare-fun e!877571 () SeekEntryResult!13632)

(assert (=> b!1573635 (= e!877571 (Intermediate!13632 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164993 () Bool)

(declare-fun e!877569 () Bool)

(assert (=> d!164993 e!877569))

(declare-fun c!145504 () Bool)

(declare-fun lt!674492 () SeekEntryResult!13632)

(assert (=> d!164993 (= c!145504 (and (is-Intermediate!13632 lt!674492) (undefined!14444 lt!674492)))))

(declare-fun e!877573 () SeekEntryResult!13632)

(assert (=> d!164993 (= lt!674492 e!877573)))

(declare-fun c!145506 () Bool)

(assert (=> d!164993 (= c!145506 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674491 () (_ BitVec 64))

(assert (=> d!164993 (= lt!674491 (select (arr!50703 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164993 (validMask!0 mask!889)))

(assert (=> d!164993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674492)))

(declare-fun b!1573636 () Bool)

(assert (=> b!1573636 (= e!877573 (Intermediate!13632 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573637 () Bool)

(assert (=> b!1573637 (and (bvsge (index!56927 lt!674492) #b00000000000000000000000000000000) (bvslt (index!56927 lt!674492) (size!51254 _keys!600)))))

(declare-fun e!877572 () Bool)

(assert (=> b!1573637 (= e!877572 (= (select (arr!50703 _keys!600) (index!56927 lt!674492)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573638 () Bool)

(assert (=> b!1573638 (= e!877573 e!877571)))

(declare-fun c!145505 () Bool)

(assert (=> b!1573638 (= c!145505 (or (= lt!674491 k!754) (= (bvadd lt!674491 lt!674491) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573639 () Bool)

(assert (=> b!1573639 (= e!877569 (bvsge (x!141740 lt!674492) #b01111111111111111111111111111110))))

(declare-fun b!1573640 () Bool)

(assert (=> b!1573640 (and (bvsge (index!56927 lt!674492) #b00000000000000000000000000000000) (bvslt (index!56927 lt!674492) (size!51254 _keys!600)))))

(declare-fun res!1075145 () Bool)

(assert (=> b!1573640 (= res!1075145 (= (select (arr!50703 _keys!600) (index!56927 lt!674492)) k!754))))

(assert (=> b!1573640 (=> res!1075145 e!877572)))

(declare-fun e!877570 () Bool)

(assert (=> b!1573640 (= e!877570 e!877572)))

(declare-fun b!1573641 () Bool)

(assert (=> b!1573641 (= e!877569 e!877570)))

(declare-fun res!1075143 () Bool)

(assert (=> b!1573641 (= res!1075143 (and (is-Intermediate!13632 lt!674492) (not (undefined!14444 lt!674492)) (bvslt (x!141740 lt!674492) #b01111111111111111111111111111110) (bvsge (x!141740 lt!674492) #b00000000000000000000000000000000) (bvsge (x!141740 lt!674492) #b00000000000000000000000000000000)))))

(assert (=> b!1573641 (=> (not res!1075143) (not e!877570))))

(declare-fun b!1573642 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573642 (= e!877571 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573643 () Bool)

(assert (=> b!1573643 (and (bvsge (index!56927 lt!674492) #b00000000000000000000000000000000) (bvslt (index!56927 lt!674492) (size!51254 _keys!600)))))

(declare-fun res!1075144 () Bool)

(assert (=> b!1573643 (= res!1075144 (= (select (arr!50703 _keys!600) (index!56927 lt!674492)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573643 (=> res!1075144 e!877572)))

(assert (= (and d!164993 c!145506) b!1573636))

(assert (= (and d!164993 (not c!145506)) b!1573638))

(assert (= (and b!1573638 c!145505) b!1573635))

(assert (= (and b!1573638 (not c!145505)) b!1573642))

(assert (= (and d!164993 c!145504) b!1573639))

(assert (= (and d!164993 (not c!145504)) b!1573641))

(assert (= (and b!1573641 res!1075143) b!1573640))

(assert (= (and b!1573640 (not res!1075145)) b!1573643))

(assert (= (and b!1573643 (not res!1075144)) b!1573637))

(assert (=> b!1573642 m!1446937))

(declare-fun m!1446943 () Bool)

(assert (=> b!1573642 m!1446943))

(assert (=> b!1573642 m!1446943))

(declare-fun m!1446945 () Bool)

(assert (=> b!1573642 m!1446945))

(declare-fun m!1446947 () Bool)

(assert (=> b!1573643 m!1446947))

(assert (=> d!164993 m!1446937))

(declare-fun m!1446949 () Bool)

(assert (=> d!164993 m!1446949))

(assert (=> d!164993 m!1446933))

(assert (=> b!1573640 m!1446947))

(assert (=> b!1573637 m!1446947))

(assert (=> b!1573597 d!164993))

(declare-fun d!165005 () Bool)

(declare-fun lt!674506 () (_ BitVec 32))

(declare-fun lt!674505 () (_ BitVec 32))

(assert (=> d!165005 (= lt!674506 (bvmul (bvxor lt!674505 (bvlshr lt!674505 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165005 (= lt!674505 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165005 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075146 (let ((h!38405 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141744 (bvmul (bvxor h!38405 (bvlshr h!38405 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141744 (bvlshr x!141744 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075146 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075146 #b00000000000000000000000000000000))))))

(assert (=> d!165005 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674506 (bvlshr lt!674506 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573597 d!165005))

