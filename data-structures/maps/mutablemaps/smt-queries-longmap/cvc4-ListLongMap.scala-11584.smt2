; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135028 () Bool)

(assert start!135028)

(declare-fun res!1074386 () Bool)

(declare-fun e!876746 () Bool)

(assert (=> start!135028 (=> (not res!1074386) (not e!876746))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135028 (= res!1074386 (validMask!0 mask!889))))

(assert (=> start!135028 e!876746))

(assert (=> start!135028 true))

(declare-datatypes ((array!104987 0))(
  ( (array!104988 (arr!50655 (Array (_ BitVec 32) (_ BitVec 64))) (size!51206 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104987)

(declare-fun array_inv!39300 (array!104987) Bool)

(assert (=> start!135028 (array_inv!39300 _keys!600)))

(declare-fun b!1572282 () Bool)

(declare-fun res!1074385 () Bool)

(assert (=> b!1572282 (=> (not res!1074385) (not e!876746))))

(assert (=> b!1572282 (= res!1074385 (= (size!51206 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572283 () Bool)

(declare-fun res!1074384 () Bool)

(assert (=> b!1572283 (=> (not res!1074384) (not e!876746))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572283 (= res!1074384 (validKeyInArray!0 k!754))))

(declare-fun b!1572284 () Bool)

(declare-datatypes ((SeekEntryResult!13584 0))(
  ( (MissingZero!13584 (index!56733 (_ BitVec 32))) (Found!13584 (index!56734 (_ BitVec 32))) (Intermediate!13584 (undefined!14396 Bool) (index!56735 (_ BitVec 32)) (x!141507 (_ BitVec 32))) (Undefined!13584) (MissingVacant!13584 (index!56736 (_ BitVec 32))) )
))
(declare-fun lt!673897 () SeekEntryResult!13584)

(assert (=> b!1572284 (= e!876746 (and (is-Intermediate!13584 lt!673897) (not (undefined!14396 lt!673897)) (or (bvslt (index!56735 lt!673897) #b00000000000000000000000000000000) (bvsge (index!56735 lt!673897) (size!51206 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104987 (_ BitVec 32)) SeekEntryResult!13584)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572284 (= lt!673897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135028 res!1074386) b!1572282))

(assert (= (and b!1572282 res!1074385) b!1572283))

(assert (= (and b!1572283 res!1074384) b!1572284))

(declare-fun m!1446099 () Bool)

(assert (=> start!135028 m!1446099))

(declare-fun m!1446101 () Bool)

(assert (=> start!135028 m!1446101))

(declare-fun m!1446103 () Bool)

(assert (=> b!1572283 m!1446103))

(declare-fun m!1446105 () Bool)

(assert (=> b!1572284 m!1446105))

(assert (=> b!1572284 m!1446105))

(declare-fun m!1446107 () Bool)

(assert (=> b!1572284 m!1446107))

(push 1)

(assert (not b!1572283))

(assert (not start!135028))

(assert (not b!1572284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164705 () Bool)

(assert (=> d!164705 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572283 d!164705))

(declare-fun d!164707 () Bool)

(assert (=> d!164707 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135028 d!164707))

(declare-fun d!164713 () Bool)

(assert (=> d!164713 (= (array_inv!39300 _keys!600) (bvsge (size!51206 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135028 d!164713))

(declare-fun b!1572357 () Bool)

(declare-fun e!876790 () SeekEntryResult!13584)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572357 (= e!876790 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572358 () Bool)

(declare-fun e!876788 () Bool)

(declare-fun e!876789 () Bool)

(assert (=> b!1572358 (= e!876788 e!876789)))

(declare-fun res!1074415 () Bool)

(declare-fun lt!673926 () SeekEntryResult!13584)

(assert (=> b!1572358 (= res!1074415 (and (is-Intermediate!13584 lt!673926) (not (undefined!14396 lt!673926)) (bvslt (x!141507 lt!673926) #b01111111111111111111111111111110) (bvsge (x!141507 lt!673926) #b00000000000000000000000000000000) (bvsge (x!141507 lt!673926) #b00000000000000000000000000000000)))))

(assert (=> b!1572358 (=> (not res!1074415) (not e!876789))))

(declare-fun b!1572359 () Bool)

(assert (=> b!1572359 (and (bvsge (index!56735 lt!673926) #b00000000000000000000000000000000) (bvslt (index!56735 lt!673926) (size!51206 _keys!600)))))

(declare-fun res!1074414 () Bool)

(assert (=> b!1572359 (= res!1074414 (= (select (arr!50655 _keys!600) (index!56735 lt!673926)) k!754))))

(declare-fun e!876792 () Bool)

(assert (=> b!1572359 (=> res!1074414 e!876792)))

(assert (=> b!1572359 (= e!876789 e!876792)))

(declare-fun b!1572360 () Bool)

(assert (=> b!1572360 (= e!876788 (bvsge (x!141507 lt!673926) #b01111111111111111111111111111110))))

(declare-fun b!1572362 () Bool)

(declare-fun e!876791 () SeekEntryResult!13584)

(assert (=> b!1572362 (= e!876791 (Intermediate!13584 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572363 () Bool)

(assert (=> b!1572363 (= e!876790 (Intermediate!13584 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572364 () Bool)

(assert (=> b!1572364 (and (bvsge (index!56735 lt!673926) #b00000000000000000000000000000000) (bvslt (index!56735 lt!673926) (size!51206 _keys!600)))))

(assert (=> b!1572364 (= e!876792 (= (select (arr!50655 _keys!600) (index!56735 lt!673926)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572365 () Bool)

(assert (=> b!1572365 (and (bvsge (index!56735 lt!673926) #b00000000000000000000000000000000) (bvslt (index!56735 lt!673926) (size!51206 _keys!600)))))

(declare-fun res!1074413 () Bool)

(assert (=> b!1572365 (= res!1074413 (= (select (arr!50655 _keys!600) (index!56735 lt!673926)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572365 (=> res!1074413 e!876792)))

(declare-fun b!1572361 () Bool)

(assert (=> b!1572361 (= e!876791 e!876790)))

(declare-fun c!145220 () Bool)

(declare-fun lt!673927 () (_ BitVec 64))

(assert (=> b!1572361 (= c!145220 (or (= lt!673927 k!754) (= (bvadd lt!673927 lt!673927) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164715 () Bool)

(assert (=> d!164715 e!876788))

(declare-fun c!145219 () Bool)

(assert (=> d!164715 (= c!145219 (and (is-Intermediate!13584 lt!673926) (undefined!14396 lt!673926)))))

(assert (=> d!164715 (= lt!673926 e!876791)))

(declare-fun c!145221 () Bool)

(assert (=> d!164715 (= c!145221 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164715 (= lt!673927 (select (arr!50655 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164715 (validMask!0 mask!889)))

(assert (=> d!164715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673926)))

(assert (= (and d!164715 c!145221) b!1572362))

(assert (= (and d!164715 (not c!145221)) b!1572361))

(assert (= (and b!1572361 c!145220) b!1572363))

(assert (= (and b!1572361 (not c!145220)) b!1572357))

(assert (= (and d!164715 c!145219) b!1572360))

(assert (= (and d!164715 (not c!145219)) b!1572358))

(assert (= (and b!1572358 res!1074415) b!1572359))

(assert (= (and b!1572359 (not res!1074414)) b!1572365))

(assert (= (and b!1572365 (not res!1074413)) b!1572364))

(declare-fun m!1446125 () Bool)

(assert (=> b!1572365 m!1446125))

(assert (=> b!1572357 m!1446105))

(declare-fun m!1446127 () Bool)

(assert (=> b!1572357 m!1446127))

(assert (=> b!1572357 m!1446127))

(declare-fun m!1446129 () Bool)

(assert (=> b!1572357 m!1446129))

(assert (=> b!1572364 m!1446125))

(assert (=> d!164715 m!1446105))

(declare-fun m!1446131 () Bool)

(assert (=> d!164715 m!1446131))

(assert (=> d!164715 m!1446099))

(assert (=> b!1572359 m!1446125))

(assert (=> b!1572284 d!164715))

(declare-fun d!164723 () Bool)

(declare-fun lt!673933 () (_ BitVec 32))

(declare-fun lt!673932 () (_ BitVec 32))

(assert (=> d!164723 (= lt!673933 (bvmul (bvxor lt!673932 (bvlshr lt!673932 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164723 (= lt!673932 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164723 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074416 (let ((h!38383 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141513 (bvmul (bvxor h!38383 (bvlshr h!38383 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141513 (bvlshr x!141513 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074416 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074416 #b00000000000000000000000000000000))))))

(assert (=> d!164723 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673933 (bvlshr lt!673933 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572284 d!164723))

(push 1)

(assert (not d!164715))

(assert (not b!1572357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

