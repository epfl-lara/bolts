; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135062 () Bool)

(assert start!135062)

(declare-fun res!1074432 () Bool)

(declare-fun e!876803 () Bool)

(assert (=> start!135062 (=> (not res!1074432) (not e!876803))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135062 (= res!1074432 (validMask!0 mask!889))))

(assert (=> start!135062 e!876803))

(assert (=> start!135062 true))

(declare-datatypes ((array!104994 0))(
  ( (array!104995 (arr!50657 (Array (_ BitVec 32) (_ BitVec 64))) (size!51208 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104994)

(declare-fun array_inv!39302 (array!104994) Bool)

(assert (=> start!135062 (array_inv!39302 _keys!600)))

(declare-fun b!1572381 () Bool)

(declare-fun res!1074434 () Bool)

(assert (=> b!1572381 (=> (not res!1074434) (not e!876803))))

(assert (=> b!1572381 (= res!1074434 (= (size!51208 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572382 () Bool)

(declare-fun res!1074433 () Bool)

(assert (=> b!1572382 (=> (not res!1074433) (not e!876803))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572382 (= res!1074433 (validKeyInArray!0 k0!754))))

(declare-fun b!1572383 () Bool)

(declare-datatypes ((SeekEntryResult!13586 0))(
  ( (MissingZero!13586 (index!56741 (_ BitVec 32))) (Found!13586 (index!56742 (_ BitVec 32))) (Intermediate!13586 (undefined!14398 Bool) (index!56743 (_ BitVec 32)) (x!141523 (_ BitVec 32))) (Undefined!13586) (MissingVacant!13586 (index!56744 (_ BitVec 32))) )
))
(declare-fun lt!673939 () SeekEntryResult!13586)

(get-info :version)

(assert (=> b!1572383 (= e!876803 (and ((_ is Intermediate!13586) lt!673939) (not (undefined!14398 lt!673939)) (= (select (arr!50657 _keys!600) (index!56743 lt!673939)) k0!754) (or (bvslt (index!56743 lt!673939) #b00000000000000000000000000000000) (bvsge (index!56743 lt!673939) (size!51208 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104994 (_ BitVec 32)) SeekEntryResult!13586)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572383 (= lt!673939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135062 res!1074432) b!1572381))

(assert (= (and b!1572381 res!1074434) b!1572382))

(assert (= (and b!1572382 res!1074433) b!1572383))

(declare-fun m!1446145 () Bool)

(assert (=> start!135062 m!1446145))

(declare-fun m!1446147 () Bool)

(assert (=> start!135062 m!1446147))

(declare-fun m!1446149 () Bool)

(assert (=> b!1572382 m!1446149))

(declare-fun m!1446151 () Bool)

(assert (=> b!1572383 m!1446151))

(declare-fun m!1446153 () Bool)

(assert (=> b!1572383 m!1446153))

(assert (=> b!1572383 m!1446153))

(declare-fun m!1446155 () Bool)

(assert (=> b!1572383 m!1446155))

(check-sat (not b!1572382) (not start!135062) (not b!1572383))
(check-sat)
(get-model)

(declare-fun d!164729 () Bool)

(assert (=> d!164729 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572382 d!164729))

(declare-fun d!164731 () Bool)

(assert (=> d!164731 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135062 d!164731))

(declare-fun d!164739 () Bool)

(assert (=> d!164739 (= (array_inv!39302 _keys!600) (bvsge (size!51208 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135062 d!164739))

(declare-fun b!1572429 () Bool)

(declare-fun lt!673952 () SeekEntryResult!13586)

(assert (=> b!1572429 (and (bvsge (index!56743 lt!673952) #b00000000000000000000000000000000) (bvslt (index!56743 lt!673952) (size!51208 _keys!600)))))

(declare-fun res!1074456 () Bool)

(assert (=> b!1572429 (= res!1074456 (= (select (arr!50657 _keys!600) (index!56743 lt!673952)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876835 () Bool)

(assert (=> b!1572429 (=> res!1074456 e!876835)))

(declare-fun b!1572430 () Bool)

(assert (=> b!1572430 (and (bvsge (index!56743 lt!673952) #b00000000000000000000000000000000) (bvslt (index!56743 lt!673952) (size!51208 _keys!600)))))

(assert (=> b!1572430 (= e!876835 (= (select (arr!50657 _keys!600) (index!56743 lt!673952)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!164741 () Bool)

(declare-fun e!876833 () Bool)

(assert (=> d!164741 e!876833))

(declare-fun c!145234 () Bool)

(assert (=> d!164741 (= c!145234 (and ((_ is Intermediate!13586) lt!673952) (undefined!14398 lt!673952)))))

(declare-fun e!876831 () SeekEntryResult!13586)

(assert (=> d!164741 (= lt!673952 e!876831)))

(declare-fun c!145235 () Bool)

(assert (=> d!164741 (= c!145235 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673951 () (_ BitVec 64))

(assert (=> d!164741 (= lt!673951 (select (arr!50657 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164741 (validMask!0 mask!889)))

(assert (=> d!164741 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!673952)))

(declare-fun b!1572431 () Bool)

(assert (=> b!1572431 (and (bvsge (index!56743 lt!673952) #b00000000000000000000000000000000) (bvslt (index!56743 lt!673952) (size!51208 _keys!600)))))

(declare-fun res!1074458 () Bool)

(assert (=> b!1572431 (= res!1074458 (= (select (arr!50657 _keys!600) (index!56743 lt!673952)) k0!754))))

(assert (=> b!1572431 (=> res!1074458 e!876835)))

(declare-fun e!876832 () Bool)

(assert (=> b!1572431 (= e!876832 e!876835)))

(declare-fun b!1572432 () Bool)

(assert (=> b!1572432 (= e!876833 (bvsge (x!141523 lt!673952) #b01111111111111111111111111111110))))

(declare-fun b!1572433 () Bool)

(declare-fun e!876834 () SeekEntryResult!13586)

(assert (=> b!1572433 (= e!876831 e!876834)))

(declare-fun c!145236 () Bool)

(assert (=> b!1572433 (= c!145236 (or (= lt!673951 k0!754) (= (bvadd lt!673951 lt!673951) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572434 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572434 (= e!876834 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572435 () Bool)

(assert (=> b!1572435 (= e!876834 (Intermediate!13586 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572436 () Bool)

(assert (=> b!1572436 (= e!876831 (Intermediate!13586 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572437 () Bool)

(assert (=> b!1572437 (= e!876833 e!876832)))

(declare-fun res!1074457 () Bool)

(assert (=> b!1572437 (= res!1074457 (and ((_ is Intermediate!13586) lt!673952) (not (undefined!14398 lt!673952)) (bvslt (x!141523 lt!673952) #b01111111111111111111111111111110) (bvsge (x!141523 lt!673952) #b00000000000000000000000000000000) (bvsge (x!141523 lt!673952) #b00000000000000000000000000000000)))))

(assert (=> b!1572437 (=> (not res!1074457) (not e!876832))))

(assert (= (and d!164741 c!145235) b!1572436))

(assert (= (and d!164741 (not c!145235)) b!1572433))

(assert (= (and b!1572433 c!145236) b!1572435))

(assert (= (and b!1572433 (not c!145236)) b!1572434))

(assert (= (and d!164741 c!145234) b!1572432))

(assert (= (and d!164741 (not c!145234)) b!1572437))

(assert (= (and b!1572437 res!1074457) b!1572431))

(assert (= (and b!1572431 (not res!1074458)) b!1572429))

(assert (= (and b!1572429 (not res!1074456)) b!1572430))

(declare-fun m!1446169 () Bool)

(assert (=> b!1572429 m!1446169))

(assert (=> b!1572430 m!1446169))

(assert (=> d!164741 m!1446153))

(declare-fun m!1446171 () Bool)

(assert (=> d!164741 m!1446171))

(assert (=> d!164741 m!1446145))

(assert (=> b!1572431 m!1446169))

(assert (=> b!1572434 m!1446153))

(declare-fun m!1446173 () Bool)

(assert (=> b!1572434 m!1446173))

(assert (=> b!1572434 m!1446173))

(declare-fun m!1446175 () Bool)

(assert (=> b!1572434 m!1446175))

(assert (=> b!1572383 d!164741))

(declare-fun d!164751 () Bool)

(declare-fun lt!673964 () (_ BitVec 32))

(declare-fun lt!673963 () (_ BitVec 32))

(assert (=> d!164751 (= lt!673964 (bvmul (bvxor lt!673963 (bvlshr lt!673963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164751 (= lt!673963 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164751 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074459 (let ((h!38384 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141527 (bvmul (bvxor h!38384 (bvlshr h!38384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141527 (bvlshr x!141527 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074459 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074459 #b00000000000000000000000000000000))))))

(assert (=> d!164751 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!673964 (bvlshr lt!673964 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572383 d!164751))

(check-sat (not b!1572434) (not d!164741))
(check-sat)
