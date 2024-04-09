; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51940 () Bool)

(assert start!51940)

(declare-fun b!567428 () Bool)

(declare-fun res!358171 () Bool)

(declare-fun e!326491 () Bool)

(assert (=> b!567428 (=> (not res!358171) (not e!326491))))

(declare-datatypes ((array!35588 0))(
  ( (array!35589 (arr!17086 (Array (_ BitVec 32) (_ BitVec 64))) (size!17450 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35588)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567428 (= res!358171 (validKeyInArray!0 (select (arr!17086 a!3118) j!142)))))

(declare-fun b!567429 () Bool)

(declare-fun res!358166 () Bool)

(assert (=> b!567429 (=> (not res!358166) (not e!326491))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!567429 (= res!358166 (validKeyInArray!0 k0!1914))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!567430 () Bool)

(declare-fun e!326490 () Bool)

(declare-fun lt!258545 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5542 0))(
  ( (MissingZero!5542 (index!24395 (_ BitVec 32))) (Found!5542 (index!24396 (_ BitVec 32))) (Intermediate!5542 (undefined!6354 Bool) (index!24397 (_ BitVec 32)) (x!53290 (_ BitVec 32))) (Undefined!5542) (MissingVacant!5542 (index!24398 (_ BitVec 32))) )
))
(declare-fun lt!258548 () SeekEntryResult!5542)

(declare-fun lt!258544 () array!35588)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35588 (_ BitVec 32)) SeekEntryResult!5542)

(assert (=> b!567430 (= e!326490 (= lt!258548 (seekEntryOrOpen!0 lt!258545 lt!258544 mask!3119)))))

(declare-fun res!358170 () Bool)

(assert (=> start!51940 (=> (not res!358170) (not e!326491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51940 (= res!358170 (validMask!0 mask!3119))))

(assert (=> start!51940 e!326491))

(assert (=> start!51940 true))

(declare-fun array_inv!12860 (array!35588) Bool)

(assert (=> start!51940 (array_inv!12860 a!3118)))

(declare-fun b!567431 () Bool)

(declare-fun e!326492 () Bool)

(declare-fun e!326494 () Bool)

(assert (=> b!567431 (= e!326492 e!326494)))

(declare-fun res!358172 () Bool)

(assert (=> b!567431 (=> (not res!358172) (not e!326494))))

(declare-fun lt!258550 () SeekEntryResult!5542)

(declare-fun lt!258551 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35588 (_ BitVec 32)) SeekEntryResult!5542)

(assert (=> b!567431 (= res!358172 (= lt!258550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258551 lt!258545 lt!258544 mask!3119)))))

(declare-fun lt!258549 () (_ BitVec 32))

(assert (=> b!567431 (= lt!258550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258549 (select (arr!17086 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567431 (= lt!258551 (toIndex!0 lt!258545 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567431 (= lt!258545 (select (store (arr!17086 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!567431 (= lt!258549 (toIndex!0 (select (arr!17086 a!3118) j!142) mask!3119))))

(assert (=> b!567431 (= lt!258544 (array!35589 (store (arr!17086 a!3118) i!1132 k0!1914) (size!17450 a!3118)))))

(declare-fun b!567432 () Bool)

(declare-fun res!358169 () Bool)

(assert (=> b!567432 (=> (not res!358169) (not e!326492))))

(declare-datatypes ((List!11219 0))(
  ( (Nil!11216) (Cons!11215 (h!12227 (_ BitVec 64)) (t!17455 List!11219)) )
))
(declare-fun arrayNoDuplicates!0 (array!35588 (_ BitVec 32) List!11219) Bool)

(assert (=> b!567432 (= res!358169 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11216))))

(declare-fun b!567433 () Bool)

(assert (=> b!567433 (= e!326494 (not e!326490))))

(declare-fun res!358164 () Bool)

(assert (=> b!567433 (=> res!358164 e!326490)))

(get-info :version)

(assert (=> b!567433 (= res!358164 (or (undefined!6354 lt!258550) (not ((_ is Intermediate!5542) lt!258550)) (not (= (select (arr!17086 a!3118) (index!24397 lt!258550)) (select (arr!17086 a!3118) j!142)))))))

(assert (=> b!567433 (= lt!258548 (Found!5542 j!142))))

(assert (=> b!567433 (= lt!258548 (seekEntryOrOpen!0 (select (arr!17086 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35588 (_ BitVec 32)) Bool)

(assert (=> b!567433 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17786 0))(
  ( (Unit!17787) )
))
(declare-fun lt!258547 () Unit!17786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17786)

(assert (=> b!567433 (= lt!258547 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567434 () Bool)

(declare-fun res!358168 () Bool)

(assert (=> b!567434 (=> (not res!358168) (not e!326492))))

(assert (=> b!567434 (= res!358168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567435 () Bool)

(declare-fun res!358163 () Bool)

(assert (=> b!567435 (=> (not res!358163) (not e!326491))))

(assert (=> b!567435 (= res!358163 (and (= (size!17450 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17450 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17450 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567436 () Bool)

(assert (=> b!567436 (= e!326491 e!326492)))

(declare-fun res!358165 () Bool)

(assert (=> b!567436 (=> (not res!358165) (not e!326492))))

(declare-fun lt!258546 () SeekEntryResult!5542)

(assert (=> b!567436 (= res!358165 (or (= lt!258546 (MissingZero!5542 i!1132)) (= lt!258546 (MissingVacant!5542 i!1132))))))

(assert (=> b!567436 (= lt!258546 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567437 () Bool)

(declare-fun res!358167 () Bool)

(assert (=> b!567437 (=> (not res!358167) (not e!326491))))

(declare-fun arrayContainsKey!0 (array!35588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567437 (= res!358167 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51940 res!358170) b!567435))

(assert (= (and b!567435 res!358163) b!567428))

(assert (= (and b!567428 res!358171) b!567429))

(assert (= (and b!567429 res!358166) b!567437))

(assert (= (and b!567437 res!358167) b!567436))

(assert (= (and b!567436 res!358165) b!567434))

(assert (= (and b!567434 res!358168) b!567432))

(assert (= (and b!567432 res!358169) b!567431))

(assert (= (and b!567431 res!358172) b!567433))

(assert (= (and b!567433 (not res!358164)) b!567430))

(declare-fun m!546095 () Bool)

(assert (=> b!567437 m!546095))

(declare-fun m!546097 () Bool)

(assert (=> b!567430 m!546097))

(declare-fun m!546099 () Bool)

(assert (=> b!567434 m!546099))

(declare-fun m!546101 () Bool)

(assert (=> b!567429 m!546101))

(declare-fun m!546103 () Bool)

(assert (=> start!51940 m!546103))

(declare-fun m!546105 () Bool)

(assert (=> start!51940 m!546105))

(declare-fun m!546107 () Bool)

(assert (=> b!567431 m!546107))

(declare-fun m!546109 () Bool)

(assert (=> b!567431 m!546109))

(assert (=> b!567431 m!546107))

(declare-fun m!546111 () Bool)

(assert (=> b!567431 m!546111))

(assert (=> b!567431 m!546107))

(declare-fun m!546113 () Bool)

(assert (=> b!567431 m!546113))

(declare-fun m!546115 () Bool)

(assert (=> b!567431 m!546115))

(declare-fun m!546117 () Bool)

(assert (=> b!567431 m!546117))

(declare-fun m!546119 () Bool)

(assert (=> b!567431 m!546119))

(declare-fun m!546121 () Bool)

(assert (=> b!567436 m!546121))

(declare-fun m!546123 () Bool)

(assert (=> b!567432 m!546123))

(assert (=> b!567428 m!546107))

(assert (=> b!567428 m!546107))

(declare-fun m!546125 () Bool)

(assert (=> b!567428 m!546125))

(declare-fun m!546127 () Bool)

(assert (=> b!567433 m!546127))

(assert (=> b!567433 m!546107))

(declare-fun m!546129 () Bool)

(assert (=> b!567433 m!546129))

(declare-fun m!546131 () Bool)

(assert (=> b!567433 m!546131))

(assert (=> b!567433 m!546107))

(declare-fun m!546133 () Bool)

(assert (=> b!567433 m!546133))

(check-sat (not b!567428) (not start!51940) (not b!567430) (not b!567437) (not b!567429) (not b!567433) (not b!567434) (not b!567431) (not b!567436) (not b!567432))
(check-sat)
(get-model)

(declare-fun b!567480 () Bool)

(declare-fun e!326518 () SeekEntryResult!5542)

(declare-fun lt!258584 () SeekEntryResult!5542)

(assert (=> b!567480 (= e!326518 (MissingZero!5542 (index!24397 lt!258584)))))

(declare-fun b!567481 () Bool)

(declare-fun e!326517 () SeekEntryResult!5542)

(assert (=> b!567481 (= e!326517 Undefined!5542)))

(declare-fun d!84179 () Bool)

(declare-fun lt!258583 () SeekEntryResult!5542)

(assert (=> d!84179 (and (or ((_ is Undefined!5542) lt!258583) (not ((_ is Found!5542) lt!258583)) (and (bvsge (index!24396 lt!258583) #b00000000000000000000000000000000) (bvslt (index!24396 lt!258583) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258583) ((_ is Found!5542) lt!258583) (not ((_ is MissingZero!5542) lt!258583)) (and (bvsge (index!24395 lt!258583) #b00000000000000000000000000000000) (bvslt (index!24395 lt!258583) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258583) ((_ is Found!5542) lt!258583) ((_ is MissingZero!5542) lt!258583) (not ((_ is MissingVacant!5542) lt!258583)) (and (bvsge (index!24398 lt!258583) #b00000000000000000000000000000000) (bvslt (index!24398 lt!258583) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258583) (ite ((_ is Found!5542) lt!258583) (= (select (arr!17086 a!3118) (index!24396 lt!258583)) (select (arr!17086 a!3118) j!142)) (ite ((_ is MissingZero!5542) lt!258583) (= (select (arr!17086 a!3118) (index!24395 lt!258583)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5542) lt!258583) (= (select (arr!17086 a!3118) (index!24398 lt!258583)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84179 (= lt!258583 e!326517)))

(declare-fun c!64991 () Bool)

(assert (=> d!84179 (= c!64991 (and ((_ is Intermediate!5542) lt!258584) (undefined!6354 lt!258584)))))

(assert (=> d!84179 (= lt!258584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17086 a!3118) j!142) mask!3119) (select (arr!17086 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84179 (validMask!0 mask!3119)))

(assert (=> d!84179 (= (seekEntryOrOpen!0 (select (arr!17086 a!3118) j!142) a!3118 mask!3119) lt!258583)))

(declare-fun b!567482 () Bool)

(declare-fun c!64990 () Bool)

(declare-fun lt!258582 () (_ BitVec 64))

(assert (=> b!567482 (= c!64990 (= lt!258582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326516 () SeekEntryResult!5542)

(assert (=> b!567482 (= e!326516 e!326518)))

(declare-fun b!567483 () Bool)

(assert (=> b!567483 (= e!326517 e!326516)))

(assert (=> b!567483 (= lt!258582 (select (arr!17086 a!3118) (index!24397 lt!258584)))))

(declare-fun c!64989 () Bool)

(assert (=> b!567483 (= c!64989 (= lt!258582 (select (arr!17086 a!3118) j!142)))))

(declare-fun b!567484 () Bool)

(assert (=> b!567484 (= e!326516 (Found!5542 (index!24397 lt!258584)))))

(declare-fun b!567485 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35588 (_ BitVec 32)) SeekEntryResult!5542)

(assert (=> b!567485 (= e!326518 (seekKeyOrZeroReturnVacant!0 (x!53290 lt!258584) (index!24397 lt!258584) (index!24397 lt!258584) (select (arr!17086 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84179 c!64991) b!567481))

(assert (= (and d!84179 (not c!64991)) b!567483))

(assert (= (and b!567483 c!64989) b!567484))

(assert (= (and b!567483 (not c!64989)) b!567482))

(assert (= (and b!567482 c!64990) b!567480))

(assert (= (and b!567482 (not c!64990)) b!567485))

(assert (=> d!84179 m!546109))

(assert (=> d!84179 m!546107))

(declare-fun m!546175 () Bool)

(assert (=> d!84179 m!546175))

(assert (=> d!84179 m!546103))

(declare-fun m!546177 () Bool)

(assert (=> d!84179 m!546177))

(declare-fun m!546179 () Bool)

(assert (=> d!84179 m!546179))

(assert (=> d!84179 m!546107))

(assert (=> d!84179 m!546109))

(declare-fun m!546181 () Bool)

(assert (=> d!84179 m!546181))

(declare-fun m!546183 () Bool)

(assert (=> b!567483 m!546183))

(assert (=> b!567485 m!546107))

(declare-fun m!546185 () Bool)

(assert (=> b!567485 m!546185))

(assert (=> b!567433 d!84179))

(declare-fun bm!32516 () Bool)

(declare-fun call!32519 () Bool)

(assert (=> bm!32516 (= call!32519 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!567494 () Bool)

(declare-fun e!326525 () Bool)

(declare-fun e!326527 () Bool)

(assert (=> b!567494 (= e!326525 e!326527)))

(declare-fun c!64994 () Bool)

(assert (=> b!567494 (= c!64994 (validKeyInArray!0 (select (arr!17086 a!3118) j!142)))))

(declare-fun b!567495 () Bool)

(declare-fun e!326526 () Bool)

(assert (=> b!567495 (= e!326527 e!326526)))

(declare-fun lt!258593 () (_ BitVec 64))

(assert (=> b!567495 (= lt!258593 (select (arr!17086 a!3118) j!142))))

(declare-fun lt!258592 () Unit!17786)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35588 (_ BitVec 64) (_ BitVec 32)) Unit!17786)

(assert (=> b!567495 (= lt!258592 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258593 j!142))))

(assert (=> b!567495 (arrayContainsKey!0 a!3118 lt!258593 #b00000000000000000000000000000000)))

(declare-fun lt!258591 () Unit!17786)

(assert (=> b!567495 (= lt!258591 lt!258592)))

(declare-fun res!358208 () Bool)

(assert (=> b!567495 (= res!358208 (= (seekEntryOrOpen!0 (select (arr!17086 a!3118) j!142) a!3118 mask!3119) (Found!5542 j!142)))))

(assert (=> b!567495 (=> (not res!358208) (not e!326526))))

(declare-fun d!84181 () Bool)

(declare-fun res!358207 () Bool)

(assert (=> d!84181 (=> res!358207 e!326525)))

(assert (=> d!84181 (= res!358207 (bvsge j!142 (size!17450 a!3118)))))

(assert (=> d!84181 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326525)))

(declare-fun b!567496 () Bool)

(assert (=> b!567496 (= e!326526 call!32519)))

(declare-fun b!567497 () Bool)

(assert (=> b!567497 (= e!326527 call!32519)))

(assert (= (and d!84181 (not res!358207)) b!567494))

(assert (= (and b!567494 c!64994) b!567495))

(assert (= (and b!567494 (not c!64994)) b!567497))

(assert (= (and b!567495 res!358208) b!567496))

(assert (= (or b!567496 b!567497) bm!32516))

(declare-fun m!546187 () Bool)

(assert (=> bm!32516 m!546187))

(assert (=> b!567494 m!546107))

(assert (=> b!567494 m!546107))

(assert (=> b!567494 m!546125))

(assert (=> b!567495 m!546107))

(declare-fun m!546189 () Bool)

(assert (=> b!567495 m!546189))

(declare-fun m!546191 () Bool)

(assert (=> b!567495 m!546191))

(assert (=> b!567495 m!546107))

(assert (=> b!567495 m!546133))

(assert (=> b!567433 d!84181))

(declare-fun d!84189 () Bool)

(assert (=> d!84189 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258600 () Unit!17786)

(declare-fun choose!38 (array!35588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17786)

(assert (=> d!84189 (= lt!258600 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84189 (validMask!0 mask!3119)))

(assert (=> d!84189 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258600)))

(declare-fun bs!17619 () Bool)

(assert (= bs!17619 d!84189))

(assert (=> bs!17619 m!546129))

(declare-fun m!546193 () Bool)

(assert (=> bs!17619 m!546193))

(assert (=> bs!17619 m!546103))

(assert (=> b!567433 d!84189))

(declare-fun d!84191 () Bool)

(assert (=> d!84191 (= (validKeyInArray!0 (select (arr!17086 a!3118) j!142)) (and (not (= (select (arr!17086 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17086 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567428 d!84191))

(declare-fun d!84193 () Bool)

(declare-fun e!326596 () Bool)

(assert (=> d!84193 e!326596))

(declare-fun c!65040 () Bool)

(declare-fun lt!258645 () SeekEntryResult!5542)

(assert (=> d!84193 (= c!65040 (and ((_ is Intermediate!5542) lt!258645) (undefined!6354 lt!258645)))))

(declare-fun e!326597 () SeekEntryResult!5542)

(assert (=> d!84193 (= lt!258645 e!326597)))

(declare-fun c!65039 () Bool)

(assert (=> d!84193 (= c!65039 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258644 () (_ BitVec 64))

(assert (=> d!84193 (= lt!258644 (select (arr!17086 lt!258544) lt!258551))))

(assert (=> d!84193 (validMask!0 mask!3119)))

(assert (=> d!84193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258551 lt!258545 lt!258544 mask!3119) lt!258645)))

(declare-fun b!567612 () Bool)

(assert (=> b!567612 (and (bvsge (index!24397 lt!258645) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258645) (size!17450 lt!258544)))))

(declare-fun res!358240 () Bool)

(assert (=> b!567612 (= res!358240 (= (select (arr!17086 lt!258544) (index!24397 lt!258645)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326594 () Bool)

(assert (=> b!567612 (=> res!358240 e!326594)))

(declare-fun b!567613 () Bool)

(declare-fun e!326593 () Bool)

(assert (=> b!567613 (= e!326596 e!326593)))

(declare-fun res!358238 () Bool)

(assert (=> b!567613 (= res!358238 (and ((_ is Intermediate!5542) lt!258645) (not (undefined!6354 lt!258645)) (bvslt (x!53290 lt!258645) #b01111111111111111111111111111110) (bvsge (x!53290 lt!258645) #b00000000000000000000000000000000) (bvsge (x!53290 lt!258645) #b00000000000000000000000000000000)))))

(assert (=> b!567613 (=> (not res!358238) (not e!326593))))

(declare-fun b!567614 () Bool)

(declare-fun e!326595 () SeekEntryResult!5542)

(assert (=> b!567614 (= e!326597 e!326595)))

(declare-fun c!65038 () Bool)

(assert (=> b!567614 (= c!65038 (or (= lt!258644 lt!258545) (= (bvadd lt!258644 lt!258644) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!567615 () Bool)

(assert (=> b!567615 (and (bvsge (index!24397 lt!258645) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258645) (size!17450 lt!258544)))))

(assert (=> b!567615 (= e!326594 (= (select (arr!17086 lt!258544) (index!24397 lt!258645)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567616 () Bool)

(assert (=> b!567616 (= e!326597 (Intermediate!5542 true lt!258551 #b00000000000000000000000000000000))))

(declare-fun b!567617 () Bool)

(assert (=> b!567617 (= e!326595 (Intermediate!5542 false lt!258551 #b00000000000000000000000000000000))))

(declare-fun b!567618 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567618 (= e!326595 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258551 #b00000000000000000000000000000000 mask!3119) lt!258545 lt!258544 mask!3119))))

(declare-fun b!567619 () Bool)

(assert (=> b!567619 (and (bvsge (index!24397 lt!258645) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258645) (size!17450 lt!258544)))))

(declare-fun res!358239 () Bool)

(assert (=> b!567619 (= res!358239 (= (select (arr!17086 lt!258544) (index!24397 lt!258645)) lt!258545))))

(assert (=> b!567619 (=> res!358239 e!326594)))

(assert (=> b!567619 (= e!326593 e!326594)))

(declare-fun b!567620 () Bool)

(assert (=> b!567620 (= e!326596 (bvsge (x!53290 lt!258645) #b01111111111111111111111111111110))))

(assert (= (and d!84193 c!65039) b!567616))

(assert (= (and d!84193 (not c!65039)) b!567614))

(assert (= (and b!567614 c!65038) b!567617))

(assert (= (and b!567614 (not c!65038)) b!567618))

(assert (= (and d!84193 c!65040) b!567620))

(assert (= (and d!84193 (not c!65040)) b!567613))

(assert (= (and b!567613 res!358238) b!567619))

(assert (= (and b!567619 (not res!358239)) b!567612))

(assert (= (and b!567612 (not res!358240)) b!567615))

(declare-fun m!546247 () Bool)

(assert (=> b!567612 m!546247))

(declare-fun m!546249 () Bool)

(assert (=> b!567618 m!546249))

(assert (=> b!567618 m!546249))

(declare-fun m!546251 () Bool)

(assert (=> b!567618 m!546251))

(assert (=> b!567619 m!546247))

(assert (=> b!567615 m!546247))

(declare-fun m!546253 () Bool)

(assert (=> d!84193 m!546253))

(assert (=> d!84193 m!546103))

(assert (=> b!567431 d!84193))

(declare-fun d!84211 () Bool)

(declare-fun e!326601 () Bool)

(assert (=> d!84211 e!326601))

(declare-fun c!65043 () Bool)

(declare-fun lt!258647 () SeekEntryResult!5542)

(assert (=> d!84211 (= c!65043 (and ((_ is Intermediate!5542) lt!258647) (undefined!6354 lt!258647)))))

(declare-fun e!326602 () SeekEntryResult!5542)

(assert (=> d!84211 (= lt!258647 e!326602)))

(declare-fun c!65042 () Bool)

(assert (=> d!84211 (= c!65042 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258646 () (_ BitVec 64))

(assert (=> d!84211 (= lt!258646 (select (arr!17086 a!3118) lt!258549))))

(assert (=> d!84211 (validMask!0 mask!3119)))

(assert (=> d!84211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258549 (select (arr!17086 a!3118) j!142) a!3118 mask!3119) lt!258647)))

(declare-fun b!567621 () Bool)

(assert (=> b!567621 (and (bvsge (index!24397 lt!258647) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258647) (size!17450 a!3118)))))

(declare-fun res!358243 () Bool)

(assert (=> b!567621 (= res!358243 (= (select (arr!17086 a!3118) (index!24397 lt!258647)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326599 () Bool)

(assert (=> b!567621 (=> res!358243 e!326599)))

(declare-fun b!567622 () Bool)

(declare-fun e!326598 () Bool)

(assert (=> b!567622 (= e!326601 e!326598)))

(declare-fun res!358241 () Bool)

(assert (=> b!567622 (= res!358241 (and ((_ is Intermediate!5542) lt!258647) (not (undefined!6354 lt!258647)) (bvslt (x!53290 lt!258647) #b01111111111111111111111111111110) (bvsge (x!53290 lt!258647) #b00000000000000000000000000000000) (bvsge (x!53290 lt!258647) #b00000000000000000000000000000000)))))

(assert (=> b!567622 (=> (not res!358241) (not e!326598))))

(declare-fun b!567623 () Bool)

(declare-fun e!326600 () SeekEntryResult!5542)

(assert (=> b!567623 (= e!326602 e!326600)))

(declare-fun c!65041 () Bool)

(assert (=> b!567623 (= c!65041 (or (= lt!258646 (select (arr!17086 a!3118) j!142)) (= (bvadd lt!258646 lt!258646) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!567624 () Bool)

(assert (=> b!567624 (and (bvsge (index!24397 lt!258647) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258647) (size!17450 a!3118)))))

(assert (=> b!567624 (= e!326599 (= (select (arr!17086 a!3118) (index!24397 lt!258647)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567625 () Bool)

(assert (=> b!567625 (= e!326602 (Intermediate!5542 true lt!258549 #b00000000000000000000000000000000))))

(declare-fun b!567626 () Bool)

(assert (=> b!567626 (= e!326600 (Intermediate!5542 false lt!258549 #b00000000000000000000000000000000))))

(declare-fun b!567627 () Bool)

(assert (=> b!567627 (= e!326600 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258549 #b00000000000000000000000000000000 mask!3119) (select (arr!17086 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!567628 () Bool)

(assert (=> b!567628 (and (bvsge (index!24397 lt!258647) #b00000000000000000000000000000000) (bvslt (index!24397 lt!258647) (size!17450 a!3118)))))

(declare-fun res!358242 () Bool)

(assert (=> b!567628 (= res!358242 (= (select (arr!17086 a!3118) (index!24397 lt!258647)) (select (arr!17086 a!3118) j!142)))))

(assert (=> b!567628 (=> res!358242 e!326599)))

(assert (=> b!567628 (= e!326598 e!326599)))

(declare-fun b!567629 () Bool)

(assert (=> b!567629 (= e!326601 (bvsge (x!53290 lt!258647) #b01111111111111111111111111111110))))

(assert (= (and d!84211 c!65042) b!567625))

(assert (= (and d!84211 (not c!65042)) b!567623))

(assert (= (and b!567623 c!65041) b!567626))

(assert (= (and b!567623 (not c!65041)) b!567627))

(assert (= (and d!84211 c!65043) b!567629))

(assert (= (and d!84211 (not c!65043)) b!567622))

(assert (= (and b!567622 res!358241) b!567628))

(assert (= (and b!567628 (not res!358242)) b!567621))

(assert (= (and b!567621 (not res!358243)) b!567624))

(declare-fun m!546257 () Bool)

(assert (=> b!567621 m!546257))

(declare-fun m!546259 () Bool)

(assert (=> b!567627 m!546259))

(assert (=> b!567627 m!546259))

(assert (=> b!567627 m!546107))

(declare-fun m!546265 () Bool)

(assert (=> b!567627 m!546265))

(assert (=> b!567628 m!546257))

(assert (=> b!567624 m!546257))

(declare-fun m!546269 () Bool)

(assert (=> d!84211 m!546269))

(assert (=> d!84211 m!546103))

(assert (=> b!567431 d!84211))

(declare-fun d!84215 () Bool)

(declare-fun lt!258665 () (_ BitVec 32))

(declare-fun lt!258664 () (_ BitVec 32))

(assert (=> d!84215 (= lt!258665 (bvmul (bvxor lt!258664 (bvlshr lt!258664 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84215 (= lt!258664 ((_ extract 31 0) (bvand (bvxor lt!258545 (bvlshr lt!258545 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84215 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358249 (let ((h!12230 ((_ extract 31 0) (bvand (bvxor lt!258545 (bvlshr lt!258545 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53295 (bvmul (bvxor h!12230 (bvlshr h!12230 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53295 (bvlshr x!53295 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358249 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358249 #b00000000000000000000000000000000))))))

(assert (=> d!84215 (= (toIndex!0 lt!258545 mask!3119) (bvand (bvxor lt!258665 (bvlshr lt!258665 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567431 d!84215))

(declare-fun d!84221 () Bool)

(declare-fun lt!258670 () (_ BitVec 32))

(declare-fun lt!258669 () (_ BitVec 32))

(assert (=> d!84221 (= lt!258670 (bvmul (bvxor lt!258669 (bvlshr lt!258669 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84221 (= lt!258669 ((_ extract 31 0) (bvand (bvxor (select (arr!17086 a!3118) j!142) (bvlshr (select (arr!17086 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84221 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358249 (let ((h!12230 ((_ extract 31 0) (bvand (bvxor (select (arr!17086 a!3118) j!142) (bvlshr (select (arr!17086 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53295 (bvmul (bvxor h!12230 (bvlshr h!12230 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53295 (bvlshr x!53295 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358249 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358249 #b00000000000000000000000000000000))))))

(assert (=> d!84221 (= (toIndex!0 (select (arr!17086 a!3118) j!142) mask!3119) (bvand (bvxor lt!258670 (bvlshr lt!258670 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567431 d!84221))

(declare-fun d!84223 () Bool)

(declare-fun res!358268 () Bool)

(declare-fun e!326638 () Bool)

(assert (=> d!84223 (=> res!358268 e!326638)))

(assert (=> d!84223 (= res!358268 (= (select (arr!17086 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84223 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!326638)))

(declare-fun b!567677 () Bool)

(declare-fun e!326639 () Bool)

(assert (=> b!567677 (= e!326638 e!326639)))

(declare-fun res!358269 () Bool)

(assert (=> b!567677 (=> (not res!358269) (not e!326639))))

(assert (=> b!567677 (= res!358269 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17450 a!3118)))))

(declare-fun b!567678 () Bool)

(assert (=> b!567678 (= e!326639 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84223 (not res!358268)) b!567677))

(assert (= (and b!567677 res!358269) b!567678))

(declare-fun m!546317 () Bool)

(assert (=> d!84223 m!546317))

(declare-fun m!546321 () Bool)

(assert (=> b!567678 m!546321))

(assert (=> b!567437 d!84223))

(declare-fun b!567705 () Bool)

(declare-fun e!326662 () Bool)

(declare-fun contains!2875 (List!11219 (_ BitVec 64)) Bool)

(assert (=> b!567705 (= e!326662 (contains!2875 Nil!11216 (select (arr!17086 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567706 () Bool)

(declare-fun e!326661 () Bool)

(declare-fun call!32533 () Bool)

(assert (=> b!567706 (= e!326661 call!32533)))

(declare-fun b!567707 () Bool)

(declare-fun e!326660 () Bool)

(assert (=> b!567707 (= e!326660 e!326661)))

(declare-fun c!65062 () Bool)

(assert (=> b!567707 (= c!65062 (validKeyInArray!0 (select (arr!17086 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567708 () Bool)

(assert (=> b!567708 (= e!326661 call!32533)))

(declare-fun b!567709 () Bool)

(declare-fun e!326663 () Bool)

(assert (=> b!567709 (= e!326663 e!326660)))

(declare-fun res!358284 () Bool)

(assert (=> b!567709 (=> (not res!358284) (not e!326660))))

(assert (=> b!567709 (= res!358284 (not e!326662))))

(declare-fun res!358285 () Bool)

(assert (=> b!567709 (=> (not res!358285) (not e!326662))))

(assert (=> b!567709 (= res!358285 (validKeyInArray!0 (select (arr!17086 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84233 () Bool)

(declare-fun res!358286 () Bool)

(assert (=> d!84233 (=> res!358286 e!326663)))

(assert (=> d!84233 (= res!358286 (bvsge #b00000000000000000000000000000000 (size!17450 a!3118)))))

(assert (=> d!84233 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11216) e!326663)))

(declare-fun bm!32530 () Bool)

(assert (=> bm!32530 (= call!32533 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65062 (Cons!11215 (select (arr!17086 a!3118) #b00000000000000000000000000000000) Nil!11216) Nil!11216)))))

(assert (= (and d!84233 (not res!358286)) b!567709))

(assert (= (and b!567709 res!358285) b!567705))

(assert (= (and b!567709 res!358284) b!567707))

(assert (= (and b!567707 c!65062) b!567708))

(assert (= (and b!567707 (not c!65062)) b!567706))

(assert (= (or b!567708 b!567706) bm!32530))

(assert (=> b!567705 m!546317))

(assert (=> b!567705 m!546317))

(declare-fun m!546355 () Bool)

(assert (=> b!567705 m!546355))

(assert (=> b!567707 m!546317))

(assert (=> b!567707 m!546317))

(declare-fun m!546357 () Bool)

(assert (=> b!567707 m!546357))

(assert (=> b!567709 m!546317))

(assert (=> b!567709 m!546317))

(assert (=> b!567709 m!546357))

(assert (=> bm!32530 m!546317))

(declare-fun m!546359 () Bool)

(assert (=> bm!32530 m!546359))

(assert (=> b!567432 d!84233))

(declare-fun b!567710 () Bool)

(declare-fun e!326666 () SeekEntryResult!5542)

(declare-fun lt!258691 () SeekEntryResult!5542)

(assert (=> b!567710 (= e!326666 (MissingZero!5542 (index!24397 lt!258691)))))

(declare-fun b!567711 () Bool)

(declare-fun e!326665 () SeekEntryResult!5542)

(assert (=> b!567711 (= e!326665 Undefined!5542)))

(declare-fun d!84245 () Bool)

(declare-fun lt!258690 () SeekEntryResult!5542)

(assert (=> d!84245 (and (or ((_ is Undefined!5542) lt!258690) (not ((_ is Found!5542) lt!258690)) (and (bvsge (index!24396 lt!258690) #b00000000000000000000000000000000) (bvslt (index!24396 lt!258690) (size!17450 lt!258544)))) (or ((_ is Undefined!5542) lt!258690) ((_ is Found!5542) lt!258690) (not ((_ is MissingZero!5542) lt!258690)) (and (bvsge (index!24395 lt!258690) #b00000000000000000000000000000000) (bvslt (index!24395 lt!258690) (size!17450 lt!258544)))) (or ((_ is Undefined!5542) lt!258690) ((_ is Found!5542) lt!258690) ((_ is MissingZero!5542) lt!258690) (not ((_ is MissingVacant!5542) lt!258690)) (and (bvsge (index!24398 lt!258690) #b00000000000000000000000000000000) (bvslt (index!24398 lt!258690) (size!17450 lt!258544)))) (or ((_ is Undefined!5542) lt!258690) (ite ((_ is Found!5542) lt!258690) (= (select (arr!17086 lt!258544) (index!24396 lt!258690)) lt!258545) (ite ((_ is MissingZero!5542) lt!258690) (= (select (arr!17086 lt!258544) (index!24395 lt!258690)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5542) lt!258690) (= (select (arr!17086 lt!258544) (index!24398 lt!258690)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84245 (= lt!258690 e!326665)))

(declare-fun c!65065 () Bool)

(assert (=> d!84245 (= c!65065 (and ((_ is Intermediate!5542) lt!258691) (undefined!6354 lt!258691)))))

(assert (=> d!84245 (= lt!258691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!258545 mask!3119) lt!258545 lt!258544 mask!3119))))

(assert (=> d!84245 (validMask!0 mask!3119)))

(assert (=> d!84245 (= (seekEntryOrOpen!0 lt!258545 lt!258544 mask!3119) lt!258690)))

(declare-fun b!567712 () Bool)

(declare-fun c!65064 () Bool)

(declare-fun lt!258689 () (_ BitVec 64))

(assert (=> b!567712 (= c!65064 (= lt!258689 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326664 () SeekEntryResult!5542)

(assert (=> b!567712 (= e!326664 e!326666)))

(declare-fun b!567713 () Bool)

(assert (=> b!567713 (= e!326665 e!326664)))

(assert (=> b!567713 (= lt!258689 (select (arr!17086 lt!258544) (index!24397 lt!258691)))))

(declare-fun c!65063 () Bool)

(assert (=> b!567713 (= c!65063 (= lt!258689 lt!258545))))

(declare-fun b!567714 () Bool)

(assert (=> b!567714 (= e!326664 (Found!5542 (index!24397 lt!258691)))))

(declare-fun b!567715 () Bool)

(assert (=> b!567715 (= e!326666 (seekKeyOrZeroReturnVacant!0 (x!53290 lt!258691) (index!24397 lt!258691) (index!24397 lt!258691) lt!258545 lt!258544 mask!3119))))

(assert (= (and d!84245 c!65065) b!567711))

(assert (= (and d!84245 (not c!65065)) b!567713))

(assert (= (and b!567713 c!65063) b!567714))

(assert (= (and b!567713 (not c!65063)) b!567712))

(assert (= (and b!567712 c!65064) b!567710))

(assert (= (and b!567712 (not c!65064)) b!567715))

(assert (=> d!84245 m!546119))

(declare-fun m!546361 () Bool)

(assert (=> d!84245 m!546361))

(assert (=> d!84245 m!546103))

(declare-fun m!546363 () Bool)

(assert (=> d!84245 m!546363))

(declare-fun m!546365 () Bool)

(assert (=> d!84245 m!546365))

(assert (=> d!84245 m!546119))

(declare-fun m!546367 () Bool)

(assert (=> d!84245 m!546367))

(declare-fun m!546369 () Bool)

(assert (=> b!567713 m!546369))

(declare-fun m!546371 () Bool)

(assert (=> b!567715 m!546371))

(assert (=> b!567430 d!84245))

(declare-fun b!567716 () Bool)

(declare-fun e!326669 () SeekEntryResult!5542)

(declare-fun lt!258694 () SeekEntryResult!5542)

(assert (=> b!567716 (= e!326669 (MissingZero!5542 (index!24397 lt!258694)))))

(declare-fun b!567717 () Bool)

(declare-fun e!326668 () SeekEntryResult!5542)

(assert (=> b!567717 (= e!326668 Undefined!5542)))

(declare-fun d!84247 () Bool)

(declare-fun lt!258693 () SeekEntryResult!5542)

(assert (=> d!84247 (and (or ((_ is Undefined!5542) lt!258693) (not ((_ is Found!5542) lt!258693)) (and (bvsge (index!24396 lt!258693) #b00000000000000000000000000000000) (bvslt (index!24396 lt!258693) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258693) ((_ is Found!5542) lt!258693) (not ((_ is MissingZero!5542) lt!258693)) (and (bvsge (index!24395 lt!258693) #b00000000000000000000000000000000) (bvslt (index!24395 lt!258693) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258693) ((_ is Found!5542) lt!258693) ((_ is MissingZero!5542) lt!258693) (not ((_ is MissingVacant!5542) lt!258693)) (and (bvsge (index!24398 lt!258693) #b00000000000000000000000000000000) (bvslt (index!24398 lt!258693) (size!17450 a!3118)))) (or ((_ is Undefined!5542) lt!258693) (ite ((_ is Found!5542) lt!258693) (= (select (arr!17086 a!3118) (index!24396 lt!258693)) k0!1914) (ite ((_ is MissingZero!5542) lt!258693) (= (select (arr!17086 a!3118) (index!24395 lt!258693)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5542) lt!258693) (= (select (arr!17086 a!3118) (index!24398 lt!258693)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84247 (= lt!258693 e!326668)))

(declare-fun c!65068 () Bool)

(assert (=> d!84247 (= c!65068 (and ((_ is Intermediate!5542) lt!258694) (undefined!6354 lt!258694)))))

(assert (=> d!84247 (= lt!258694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84247 (validMask!0 mask!3119)))

(assert (=> d!84247 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!258693)))

(declare-fun b!567718 () Bool)

(declare-fun c!65067 () Bool)

(declare-fun lt!258692 () (_ BitVec 64))

(assert (=> b!567718 (= c!65067 (= lt!258692 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326667 () SeekEntryResult!5542)

(assert (=> b!567718 (= e!326667 e!326669)))

(declare-fun b!567719 () Bool)

(assert (=> b!567719 (= e!326668 e!326667)))

(assert (=> b!567719 (= lt!258692 (select (arr!17086 a!3118) (index!24397 lt!258694)))))

(declare-fun c!65066 () Bool)

(assert (=> b!567719 (= c!65066 (= lt!258692 k0!1914))))

(declare-fun b!567720 () Bool)

(assert (=> b!567720 (= e!326667 (Found!5542 (index!24397 lt!258694)))))

(declare-fun b!567721 () Bool)

(assert (=> b!567721 (= e!326669 (seekKeyOrZeroReturnVacant!0 (x!53290 lt!258694) (index!24397 lt!258694) (index!24397 lt!258694) k0!1914 a!3118 mask!3119))))

(assert (= (and d!84247 c!65068) b!567717))

(assert (= (and d!84247 (not c!65068)) b!567719))

(assert (= (and b!567719 c!65066) b!567720))

(assert (= (and b!567719 (not c!65066)) b!567718))

(assert (= (and b!567718 c!65067) b!567716))

(assert (= (and b!567718 (not c!65067)) b!567721))

(declare-fun m!546373 () Bool)

(assert (=> d!84247 m!546373))

(declare-fun m!546375 () Bool)

(assert (=> d!84247 m!546375))

(assert (=> d!84247 m!546103))

(declare-fun m!546377 () Bool)

(assert (=> d!84247 m!546377))

(declare-fun m!546379 () Bool)

(assert (=> d!84247 m!546379))

(assert (=> d!84247 m!546373))

(declare-fun m!546381 () Bool)

(assert (=> d!84247 m!546381))

(declare-fun m!546383 () Bool)

(assert (=> b!567719 m!546383))

(declare-fun m!546385 () Bool)

(assert (=> b!567721 m!546385))

(assert (=> b!567436 d!84247))

(declare-fun bm!32531 () Bool)

(declare-fun call!32534 () Bool)

(assert (=> bm!32531 (= call!32534 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!567722 () Bool)

(declare-fun e!326670 () Bool)

(declare-fun e!326672 () Bool)

(assert (=> b!567722 (= e!326670 e!326672)))

(declare-fun c!65069 () Bool)

(assert (=> b!567722 (= c!65069 (validKeyInArray!0 (select (arr!17086 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567723 () Bool)

(declare-fun e!326671 () Bool)

(assert (=> b!567723 (= e!326672 e!326671)))

(declare-fun lt!258697 () (_ BitVec 64))

(assert (=> b!567723 (= lt!258697 (select (arr!17086 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258696 () Unit!17786)

(assert (=> b!567723 (= lt!258696 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258697 #b00000000000000000000000000000000))))

(assert (=> b!567723 (arrayContainsKey!0 a!3118 lt!258697 #b00000000000000000000000000000000)))

(declare-fun lt!258695 () Unit!17786)

(assert (=> b!567723 (= lt!258695 lt!258696)))

(declare-fun res!358288 () Bool)

(assert (=> b!567723 (= res!358288 (= (seekEntryOrOpen!0 (select (arr!17086 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5542 #b00000000000000000000000000000000)))))

(assert (=> b!567723 (=> (not res!358288) (not e!326671))))

(declare-fun d!84249 () Bool)

(declare-fun res!358287 () Bool)

(assert (=> d!84249 (=> res!358287 e!326670)))

(assert (=> d!84249 (= res!358287 (bvsge #b00000000000000000000000000000000 (size!17450 a!3118)))))

(assert (=> d!84249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326670)))

(declare-fun b!567724 () Bool)

(assert (=> b!567724 (= e!326671 call!32534)))

(declare-fun b!567725 () Bool)

(assert (=> b!567725 (= e!326672 call!32534)))

(assert (= (and d!84249 (not res!358287)) b!567722))

(assert (= (and b!567722 c!65069) b!567723))

(assert (= (and b!567722 (not c!65069)) b!567725))

(assert (= (and b!567723 res!358288) b!567724))

(assert (= (or b!567724 b!567725) bm!32531))

(declare-fun m!546387 () Bool)

(assert (=> bm!32531 m!546387))

(assert (=> b!567722 m!546317))

(assert (=> b!567722 m!546317))

(assert (=> b!567722 m!546357))

(assert (=> b!567723 m!546317))

(declare-fun m!546389 () Bool)

(assert (=> b!567723 m!546389))

(declare-fun m!546391 () Bool)

(assert (=> b!567723 m!546391))

(assert (=> b!567723 m!546317))

(declare-fun m!546393 () Bool)

(assert (=> b!567723 m!546393))

(assert (=> b!567434 d!84249))

(declare-fun d!84253 () Bool)

(assert (=> d!84253 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51940 d!84253))

(declare-fun d!84257 () Bool)

(assert (=> d!84257 (= (array_inv!12860 a!3118) (bvsge (size!17450 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51940 d!84257))

(declare-fun d!84259 () Bool)

(assert (=> d!84259 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567429 d!84259))

(check-sat (not d!84189) (not b!567627) (not d!84247) (not b!567678) (not b!567705) (not d!84211) (not bm!32531) (not b!567715) (not b!567721) (not b!567495) (not bm!32530) (not d!84179) (not d!84245) (not b!567707) (not b!567722) (not b!567723) (not b!567485) (not b!567709) (not b!567618) (not bm!32516) (not d!84193) (not b!567494))
(check-sat)
