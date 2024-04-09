; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135346 () Bool)

(assert start!135346)

(declare-fun b!1573480 () Bool)

(declare-fun e!877474 () Bool)

(declare-fun e!877476 () Bool)

(assert (=> b!1573480 (= e!877474 e!877476)))

(declare-fun res!1075063 () Bool)

(assert (=> b!1573480 (=> (not res!1075063) (not e!877476))))

(declare-fun lt!674418 () Bool)

(declare-datatypes ((SeekEntryResult!13629 0))(
  ( (MissingZero!13629 (index!56913 (_ BitVec 32))) (Found!13629 (index!56914 (_ BitVec 32))) (Intermediate!13629 (undefined!14441 Bool) (index!56915 (_ BitVec 32)) (x!141723 (_ BitVec 32))) (Undefined!13629) (MissingVacant!13629 (index!56916 (_ BitVec 32))) )
))
(declare-fun lt!674419 () SeekEntryResult!13629)

(assert (=> b!1573480 (= res!1075063 (and (or lt!674418 (not (undefined!14441 lt!674419))) (or lt!674418 (undefined!14441 lt!674419))))))

(assert (=> b!1573480 (= lt!674418 (not (is-Intermediate!13629 lt!674419)))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105098 0))(
  ( (array!105099 (arr!50700 (Array (_ BitVec 32) (_ BitVec 64))) (size!51251 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105098)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105098 (_ BitVec 32)) SeekEntryResult!13629)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573480 (= lt!674419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573478 () Bool)

(declare-fun res!1075064 () Bool)

(assert (=> b!1573478 (=> (not res!1075064) (not e!877474))))

(assert (=> b!1573478 (= res!1075064 (= (size!51251 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun res!1075062 () Bool)

(assert (=> start!135346 (=> (not res!1075062) (not e!877474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135346 (= res!1075062 (validMask!0 mask!889))))

(assert (=> start!135346 e!877474))

(assert (=> start!135346 true))

(declare-fun array_inv!39345 (array!105098) Bool)

(assert (=> start!135346 (array_inv!39345 _keys!600)))

(declare-fun b!1573479 () Bool)

(declare-fun res!1075061 () Bool)

(assert (=> b!1573479 (=> (not res!1075061) (not e!877474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573479 (= res!1075061 (validKeyInArray!0 k!754))))

(declare-fun b!1573481 () Bool)

(declare-fun lt!674417 () SeekEntryResult!13629)

(assert (=> b!1573481 (= e!877476 (and (not (is-MissingVacant!13629 lt!674417)) (is-Found!13629 lt!674417) (or (bvslt (index!56914 lt!674417) #b00000000000000000000000000000000) (bvsge (index!56914 lt!674417) (size!51251 _keys!600)))))))

(declare-fun err!146 () SeekEntryResult!13629)

(assert (=> b!1573481 (= lt!674417 err!146)))

(assert (=> b!1573481 true))

(assert (= (and start!135346 res!1075062) b!1573478))

(assert (= (and b!1573478 res!1075064) b!1573479))

(assert (= (and b!1573479 res!1075061) b!1573480))

(assert (= (and b!1573480 res!1075063) b!1573481))

(declare-fun m!1446879 () Bool)

(assert (=> b!1573480 m!1446879))

(assert (=> b!1573480 m!1446879))

(declare-fun m!1446881 () Bool)

(assert (=> b!1573480 m!1446881))

(declare-fun m!1446883 () Bool)

(assert (=> start!135346 m!1446883))

(declare-fun m!1446885 () Bool)

(assert (=> start!135346 m!1446885))

(declare-fun m!1446887 () Bool)

(assert (=> b!1573479 m!1446887))

(push 1)

(assert (not start!135346))

(assert (not b!1573479))

(assert (not b!1573480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164959 () Bool)

(assert (=> d!164959 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135346 d!164959))

(declare-fun d!164965 () Bool)

(assert (=> d!164965 (= (array_inv!39345 _keys!600) (bvsge (size!51251 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135346 d!164965))

(declare-fun d!164967 () Bool)

(assert (=> d!164967 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573479 d!164967))

(declare-fun b!1573527 () Bool)

(declare-fun lt!674437 () SeekEntryResult!13629)

(assert (=> b!1573527 (and (bvsge (index!56915 lt!674437) #b00000000000000000000000000000000) (bvslt (index!56915 lt!674437) (size!51251 _keys!600)))))

(declare-fun e!877502 () Bool)

(assert (=> b!1573527 (= e!877502 (= (select (arr!50700 _keys!600) (index!56915 lt!674437)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573528 () Bool)

(declare-fun e!877506 () SeekEntryResult!13629)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573528 (= e!877506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573529 () Bool)

(declare-fun e!877504 () Bool)

(declare-fun e!877503 () Bool)

(assert (=> b!1573529 (= e!877504 e!877503)))

(declare-fun res!1075081 () Bool)

(assert (=> b!1573529 (= res!1075081 (and (is-Intermediate!13629 lt!674437) (not (undefined!14441 lt!674437)) (bvslt (x!141723 lt!674437) #b01111111111111111111111111111110) (bvsge (x!141723 lt!674437) #b00000000000000000000000000000000) (bvsge (x!141723 lt!674437) #b00000000000000000000000000000000)))))

(assert (=> b!1573529 (=> (not res!1075081) (not e!877503))))

(declare-fun b!1573530 () Bool)

(declare-fun e!877505 () SeekEntryResult!13629)

(assert (=> b!1573530 (= e!877505 (Intermediate!13629 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573531 () Bool)

(assert (=> b!1573531 (and (bvsge (index!56915 lt!674437) #b00000000000000000000000000000000) (bvslt (index!56915 lt!674437) (size!51251 _keys!600)))))

(declare-fun res!1075082 () Bool)

(assert (=> b!1573531 (= res!1075082 (= (select (arr!50700 _keys!600) (index!56915 lt!674437)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573531 (=> res!1075082 e!877502)))

(declare-fun d!164969 () Bool)

(assert (=> d!164969 e!877504))

(declare-fun c!145482 () Bool)

(assert (=> d!164969 (= c!145482 (and (is-Intermediate!13629 lt!674437) (undefined!14441 lt!674437)))))

(assert (=> d!164969 (= lt!674437 e!877505)))

(declare-fun c!145481 () Bool)

(assert (=> d!164969 (= c!145481 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674436 () (_ BitVec 64))

(assert (=> d!164969 (= lt!674436 (select (arr!50700 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164969 (validMask!0 mask!889)))

(assert (=> d!164969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674437)))

(declare-fun b!1573532 () Bool)

(assert (=> b!1573532 (= e!877506 (Intermediate!13629 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573533 () Bool)

(assert (=> b!1573533 (= e!877505 e!877506)))

(declare-fun c!145480 () Bool)

(assert (=> b!1573533 (= c!145480 (or (= lt!674436 k!754) (= (bvadd lt!674436 lt!674436) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573534 () Bool)

(assert (=> b!1573534 (and (bvsge (index!56915 lt!674437) #b00000000000000000000000000000000) (bvslt (index!56915 lt!674437) (size!51251 _keys!600)))))

(declare-fun res!1075083 () Bool)

(assert (=> b!1573534 (= res!1075083 (= (select (arr!50700 _keys!600) (index!56915 lt!674437)) k!754))))

(assert (=> b!1573534 (=> res!1075083 e!877502)))

(assert (=> b!1573534 (= e!877503 e!877502)))

(declare-fun b!1573535 () Bool)

(assert (=> b!1573535 (= e!877504 (bvsge (x!141723 lt!674437) #b01111111111111111111111111111110))))

(assert (= (and d!164969 c!145481) b!1573530))

(assert (= (and d!164969 (not c!145481)) b!1573533))

(assert (= (and b!1573533 c!145480) b!1573532))

(assert (= (and b!1573533 (not c!145480)) b!1573528))

(assert (= (and d!164969 c!145482) b!1573535))

(assert (= (and d!164969 (not c!145482)) b!1573529))

(assert (= (and b!1573529 res!1075081) b!1573534))

(assert (= (and b!1573534 (not res!1075083)) b!1573531))

(assert (= (and b!1573531 (not res!1075082)) b!1573527))

(declare-fun m!1446897 () Bool)

(assert (=> b!1573527 m!1446897))

(assert (=> b!1573528 m!1446879))

(declare-fun m!1446899 () Bool)

(assert (=> b!1573528 m!1446899))

(assert (=> b!1573528 m!1446899))

(declare-fun m!1446901 () Bool)

(assert (=> b!1573528 m!1446901))

(assert (=> d!164969 m!1446879))

(declare-fun m!1446903 () Bool)

(assert (=> d!164969 m!1446903))

(assert (=> d!164969 m!1446883))

(assert (=> b!1573531 m!1446897))

(assert (=> b!1573534 m!1446897))

(assert (=> b!1573480 d!164969))

(declare-fun d!164981 () Bool)

(declare-fun lt!674443 () (_ BitVec 32))

(declare-fun lt!674442 () (_ BitVec 32))

(assert (=> d!164981 (= lt!674443 (bvmul (bvxor lt!674442 (bvlshr lt!674442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164981 (= lt!674442 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164981 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075084 (let ((h!38403 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141727 (bvmul (bvxor h!38403 (bvlshr h!38403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141727 (bvlshr x!141727 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075084 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075084 #b00000000000000000000000000000000))))))

(assert (=> d!164981 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674443 (bvlshr lt!674443 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573480 d!164981))

(push 1)

