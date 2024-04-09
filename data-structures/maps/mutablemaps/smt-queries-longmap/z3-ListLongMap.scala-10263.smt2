; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120672 () Bool)

(assert start!120672)

(declare-fun b!1404389 () Bool)

(declare-fun res!943014 () Bool)

(declare-fun e!795035 () Bool)

(assert (=> b!1404389 (=> (not res!943014) (not e!795035))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95999 0))(
  ( (array!96000 (arr!46346 (Array (_ BitVec 32) (_ BitVec 64))) (size!46897 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95999)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404389 (= res!943014 (and (= (size!46897 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46897 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46897 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404390 () Bool)

(declare-datatypes ((SeekEntryResult!10679 0))(
  ( (MissingZero!10679 (index!45092 (_ BitVec 32))) (Found!10679 (index!45093 (_ BitVec 32))) (Intermediate!10679 (undefined!11491 Bool) (index!45094 (_ BitVec 32)) (x!126709 (_ BitVec 32))) (Undefined!10679) (MissingVacant!10679 (index!45095 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95999 (_ BitVec 32)) SeekEntryResult!10679)

(assert (=> b!1404390 (= e!795035 (not (= (seekEntryOrOpen!0 (select (arr!46346 a!2901) j!112) a!2901 mask!2840) (Found!10679 j!112))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95999 (_ BitVec 32)) Bool)

(assert (=> b!1404390 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47282 0))(
  ( (Unit!47283) )
))
(declare-fun lt!618603 () Unit!47282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47282)

(assert (=> b!1404390 (= lt!618603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618604 () SeekEntryResult!10679)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95999 (_ BitVec 32)) SeekEntryResult!10679)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404390 (= lt!618604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) (select (arr!46346 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404391 () Bool)

(declare-fun res!943013 () Bool)

(assert (=> b!1404391 (=> (not res!943013) (not e!795035))))

(declare-datatypes ((List!33045 0))(
  ( (Nil!33042) (Cons!33041 (h!34289 (_ BitVec 64)) (t!47746 List!33045)) )
))
(declare-fun arrayNoDuplicates!0 (array!95999 (_ BitVec 32) List!33045) Bool)

(assert (=> b!1404391 (= res!943013 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33042))))

(declare-fun b!1404392 () Bool)

(declare-fun res!943012 () Bool)

(assert (=> b!1404392 (=> (not res!943012) (not e!795035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404392 (= res!943012 (validKeyInArray!0 (select (arr!46346 a!2901) i!1037)))))

(declare-fun b!1404393 () Bool)

(declare-fun res!943010 () Bool)

(assert (=> b!1404393 (=> (not res!943010) (not e!795035))))

(assert (=> b!1404393 (= res!943010 (validKeyInArray!0 (select (arr!46346 a!2901) j!112)))))

(declare-fun b!1404394 () Bool)

(declare-fun res!943009 () Bool)

(assert (=> b!1404394 (=> (not res!943009) (not e!795035))))

(assert (=> b!1404394 (= res!943009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943011 () Bool)

(assert (=> start!120672 (=> (not res!943011) (not e!795035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120672 (= res!943011 (validMask!0 mask!2840))))

(assert (=> start!120672 e!795035))

(assert (=> start!120672 true))

(declare-fun array_inv!35291 (array!95999) Bool)

(assert (=> start!120672 (array_inv!35291 a!2901)))

(assert (= (and start!120672 res!943011) b!1404389))

(assert (= (and b!1404389 res!943014) b!1404392))

(assert (= (and b!1404392 res!943012) b!1404393))

(assert (= (and b!1404393 res!943010) b!1404394))

(assert (= (and b!1404394 res!943009) b!1404391))

(assert (= (and b!1404391 res!943013) b!1404390))

(declare-fun m!1293307 () Bool)

(assert (=> b!1404392 m!1293307))

(assert (=> b!1404392 m!1293307))

(declare-fun m!1293309 () Bool)

(assert (=> b!1404392 m!1293309))

(declare-fun m!1293311 () Bool)

(assert (=> b!1404391 m!1293311))

(declare-fun m!1293313 () Bool)

(assert (=> b!1404393 m!1293313))

(assert (=> b!1404393 m!1293313))

(declare-fun m!1293315 () Bool)

(assert (=> b!1404393 m!1293315))

(declare-fun m!1293317 () Bool)

(assert (=> start!120672 m!1293317))

(declare-fun m!1293319 () Bool)

(assert (=> start!120672 m!1293319))

(declare-fun m!1293321 () Bool)

(assert (=> b!1404394 m!1293321))

(assert (=> b!1404390 m!1293313))

(declare-fun m!1293323 () Bool)

(assert (=> b!1404390 m!1293323))

(assert (=> b!1404390 m!1293313))

(declare-fun m!1293325 () Bool)

(assert (=> b!1404390 m!1293325))

(assert (=> b!1404390 m!1293313))

(declare-fun m!1293327 () Bool)

(assert (=> b!1404390 m!1293327))

(assert (=> b!1404390 m!1293323))

(assert (=> b!1404390 m!1293313))

(declare-fun m!1293329 () Bool)

(assert (=> b!1404390 m!1293329))

(declare-fun m!1293331 () Bool)

(assert (=> b!1404390 m!1293331))

(check-sat (not b!1404390) (not b!1404394) (not b!1404391) (not b!1404393) (not b!1404392) (not start!120672))
(check-sat)
(get-model)

(declare-fun d!151179 () Bool)

(assert (=> d!151179 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120672 d!151179))

(declare-fun d!151187 () Bool)

(assert (=> d!151187 (= (array_inv!35291 a!2901) (bvsge (size!46897 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120672 d!151187))

(declare-fun b!1404448 () Bool)

(declare-fun e!795064 () Bool)

(declare-fun e!795065 () Bool)

(assert (=> b!1404448 (= e!795064 e!795065)))

(declare-fun c!130163 () Bool)

(assert (=> b!1404448 (= c!130163 (validKeyInArray!0 (select (arr!46346 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404449 () Bool)

(declare-fun e!795063 () Bool)

(assert (=> b!1404449 (= e!795065 e!795063)))

(declare-fun lt!618623 () (_ BitVec 64))

(assert (=> b!1404449 (= lt!618623 (select (arr!46346 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618624 () Unit!47282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95999 (_ BitVec 64) (_ BitVec 32)) Unit!47282)

(assert (=> b!1404449 (= lt!618624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618623 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404449 (arrayContainsKey!0 a!2901 lt!618623 #b00000000000000000000000000000000)))

(declare-fun lt!618625 () Unit!47282)

(assert (=> b!1404449 (= lt!618625 lt!618624)))

(declare-fun res!943046 () Bool)

(assert (=> b!1404449 (= res!943046 (= (seekEntryOrOpen!0 (select (arr!46346 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10679 #b00000000000000000000000000000000)))))

(assert (=> b!1404449 (=> (not res!943046) (not e!795063))))

(declare-fun b!1404450 () Bool)

(declare-fun call!66909 () Bool)

(assert (=> b!1404450 (= e!795065 call!66909)))

(declare-fun d!151189 () Bool)

(declare-fun res!943047 () Bool)

(assert (=> d!151189 (=> res!943047 e!795064)))

(assert (=> d!151189 (= res!943047 (bvsge #b00000000000000000000000000000000 (size!46897 a!2901)))))

(assert (=> d!151189 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795064)))

(declare-fun bm!66906 () Bool)

(assert (=> bm!66906 (= call!66909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404451 () Bool)

(assert (=> b!1404451 (= e!795063 call!66909)))

(assert (= (and d!151189 (not res!943047)) b!1404448))

(assert (= (and b!1404448 c!130163) b!1404449))

(assert (= (and b!1404448 (not c!130163)) b!1404450))

(assert (= (and b!1404449 res!943046) b!1404451))

(assert (= (or b!1404451 b!1404450) bm!66906))

(declare-fun m!1293367 () Bool)

(assert (=> b!1404448 m!1293367))

(assert (=> b!1404448 m!1293367))

(declare-fun m!1293369 () Bool)

(assert (=> b!1404448 m!1293369))

(assert (=> b!1404449 m!1293367))

(declare-fun m!1293371 () Bool)

(assert (=> b!1404449 m!1293371))

(declare-fun m!1293373 () Bool)

(assert (=> b!1404449 m!1293373))

(assert (=> b!1404449 m!1293367))

(declare-fun m!1293375 () Bool)

(assert (=> b!1404449 m!1293375))

(declare-fun m!1293377 () Bool)

(assert (=> bm!66906 m!1293377))

(assert (=> b!1404394 d!151189))

(declare-fun d!151197 () Bool)

(assert (=> d!151197 (= (validKeyInArray!0 (select (arr!46346 a!2901) j!112)) (and (not (= (select (arr!46346 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46346 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404393 d!151197))

(declare-fun e!795109 () SeekEntryResult!10679)

(declare-fun b!1404515 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404515 (= e!795109 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46346 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404516 () Bool)

(assert (=> b!1404516 (= e!795109 (Intermediate!10679 false (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404517 () Bool)

(declare-fun e!795110 () Bool)

(declare-fun lt!618658 () SeekEntryResult!10679)

(assert (=> b!1404517 (= e!795110 (bvsge (x!126709 lt!618658) #b01111111111111111111111111111110))))

(declare-fun b!1404518 () Bool)

(declare-fun e!795107 () SeekEntryResult!10679)

(assert (=> b!1404518 (= e!795107 e!795109)))

(declare-fun lt!618657 () (_ BitVec 64))

(declare-fun c!130187 () Bool)

(assert (=> b!1404518 (= c!130187 (or (= lt!618657 (select (arr!46346 a!2901) j!112)) (= (bvadd lt!618657 lt!618657) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1404519 () Bool)

(assert (=> b!1404519 (= e!795107 (Intermediate!10679 true (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404520 () Bool)

(assert (=> b!1404520 (and (bvsge (index!45094 lt!618658) #b00000000000000000000000000000000) (bvslt (index!45094 lt!618658) (size!46897 a!2901)))))

(declare-fun res!943070 () Bool)

(assert (=> b!1404520 (= res!943070 (= (select (arr!46346 a!2901) (index!45094 lt!618658)) (select (arr!46346 a!2901) j!112)))))

(declare-fun e!795106 () Bool)

(assert (=> b!1404520 (=> res!943070 e!795106)))

(declare-fun e!795108 () Bool)

(assert (=> b!1404520 (= e!795108 e!795106)))

(declare-fun d!151199 () Bool)

(assert (=> d!151199 e!795110))

(declare-fun c!130185 () Bool)

(get-info :version)

(assert (=> d!151199 (= c!130185 (and ((_ is Intermediate!10679) lt!618658) (undefined!11491 lt!618658)))))

(assert (=> d!151199 (= lt!618658 e!795107)))

(declare-fun c!130186 () Bool)

(assert (=> d!151199 (= c!130186 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151199 (= lt!618657 (select (arr!46346 a!2901) (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840)))))

(assert (=> d!151199 (validMask!0 mask!2840)))

(assert (=> d!151199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) (select (arr!46346 a!2901) j!112) a!2901 mask!2840) lt!618658)))

(declare-fun b!1404521 () Bool)

(assert (=> b!1404521 (and (bvsge (index!45094 lt!618658) #b00000000000000000000000000000000) (bvslt (index!45094 lt!618658) (size!46897 a!2901)))))

(assert (=> b!1404521 (= e!795106 (= (select (arr!46346 a!2901) (index!45094 lt!618658)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1404522 () Bool)

(assert (=> b!1404522 (= e!795110 e!795108)))

(declare-fun res!943071 () Bool)

(assert (=> b!1404522 (= res!943071 (and ((_ is Intermediate!10679) lt!618658) (not (undefined!11491 lt!618658)) (bvslt (x!126709 lt!618658) #b01111111111111111111111111111110) (bvsge (x!126709 lt!618658) #b00000000000000000000000000000000) (bvsge (x!126709 lt!618658) #b00000000000000000000000000000000)))))

(assert (=> b!1404522 (=> (not res!943071) (not e!795108))))

(declare-fun b!1404523 () Bool)

(assert (=> b!1404523 (and (bvsge (index!45094 lt!618658) #b00000000000000000000000000000000) (bvslt (index!45094 lt!618658) (size!46897 a!2901)))))

(declare-fun res!943072 () Bool)

(assert (=> b!1404523 (= res!943072 (= (select (arr!46346 a!2901) (index!45094 lt!618658)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404523 (=> res!943072 e!795106)))

(assert (= (and d!151199 c!130186) b!1404519))

(assert (= (and d!151199 (not c!130186)) b!1404518))

(assert (= (and b!1404518 c!130187) b!1404516))

(assert (= (and b!1404518 (not c!130187)) b!1404515))

(assert (= (and d!151199 c!130185) b!1404517))

(assert (= (and d!151199 (not c!130185)) b!1404522))

(assert (= (and b!1404522 res!943071) b!1404520))

(assert (= (and b!1404520 (not res!943070)) b!1404523))

(assert (= (and b!1404523 (not res!943072)) b!1404521))

(assert (=> b!1404515 m!1293323))

(declare-fun m!1293407 () Bool)

(assert (=> b!1404515 m!1293407))

(assert (=> b!1404515 m!1293407))

(assert (=> b!1404515 m!1293313))

(declare-fun m!1293409 () Bool)

(assert (=> b!1404515 m!1293409))

(declare-fun m!1293411 () Bool)

(assert (=> b!1404521 m!1293411))

(assert (=> b!1404520 m!1293411))

(assert (=> b!1404523 m!1293411))

(assert (=> d!151199 m!1293323))

(declare-fun m!1293413 () Bool)

(assert (=> d!151199 m!1293413))

(assert (=> d!151199 m!1293317))

(assert (=> b!1404390 d!151199))

(declare-fun b!1404594 () Bool)

(declare-fun e!795157 () SeekEntryResult!10679)

(declare-fun e!795158 () SeekEntryResult!10679)

(assert (=> b!1404594 (= e!795157 e!795158)))

(declare-fun lt!618684 () (_ BitVec 64))

(declare-fun lt!618683 () SeekEntryResult!10679)

(assert (=> b!1404594 (= lt!618684 (select (arr!46346 a!2901) (index!45094 lt!618683)))))

(declare-fun c!130211 () Bool)

(assert (=> b!1404594 (= c!130211 (= lt!618684 (select (arr!46346 a!2901) j!112)))))

(declare-fun b!1404595 () Bool)

(assert (=> b!1404595 (= e!795158 (Found!10679 (index!45094 lt!618683)))))

(declare-fun d!151213 () Bool)

(declare-fun lt!618685 () SeekEntryResult!10679)

(assert (=> d!151213 (and (or ((_ is Undefined!10679) lt!618685) (not ((_ is Found!10679) lt!618685)) (and (bvsge (index!45093 lt!618685) #b00000000000000000000000000000000) (bvslt (index!45093 lt!618685) (size!46897 a!2901)))) (or ((_ is Undefined!10679) lt!618685) ((_ is Found!10679) lt!618685) (not ((_ is MissingZero!10679) lt!618685)) (and (bvsge (index!45092 lt!618685) #b00000000000000000000000000000000) (bvslt (index!45092 lt!618685) (size!46897 a!2901)))) (or ((_ is Undefined!10679) lt!618685) ((_ is Found!10679) lt!618685) ((_ is MissingZero!10679) lt!618685) (not ((_ is MissingVacant!10679) lt!618685)) (and (bvsge (index!45095 lt!618685) #b00000000000000000000000000000000) (bvslt (index!45095 lt!618685) (size!46897 a!2901)))) (or ((_ is Undefined!10679) lt!618685) (ite ((_ is Found!10679) lt!618685) (= (select (arr!46346 a!2901) (index!45093 lt!618685)) (select (arr!46346 a!2901) j!112)) (ite ((_ is MissingZero!10679) lt!618685) (= (select (arr!46346 a!2901) (index!45092 lt!618685)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10679) lt!618685) (= (select (arr!46346 a!2901) (index!45095 lt!618685)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151213 (= lt!618685 e!795157)))

(declare-fun c!130210 () Bool)

(assert (=> d!151213 (= c!130210 (and ((_ is Intermediate!10679) lt!618683) (undefined!11491 lt!618683)))))

(assert (=> d!151213 (= lt!618683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) (select (arr!46346 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151213 (validMask!0 mask!2840)))

(assert (=> d!151213 (= (seekEntryOrOpen!0 (select (arr!46346 a!2901) j!112) a!2901 mask!2840) lt!618685)))

(declare-fun b!1404596 () Bool)

(declare-fun c!130212 () Bool)

(assert (=> b!1404596 (= c!130212 (= lt!618684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!795156 () SeekEntryResult!10679)

(assert (=> b!1404596 (= e!795158 e!795156)))

(declare-fun b!1404597 () Bool)

(assert (=> b!1404597 (= e!795156 (MissingZero!10679 (index!45094 lt!618683)))))

(declare-fun b!1404598 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95999 (_ BitVec 32)) SeekEntryResult!10679)

(assert (=> b!1404598 (= e!795156 (seekKeyOrZeroReturnVacant!0 (x!126709 lt!618683) (index!45094 lt!618683) (index!45094 lt!618683) (select (arr!46346 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404599 () Bool)

(assert (=> b!1404599 (= e!795157 Undefined!10679)))

(assert (= (and d!151213 c!130210) b!1404599))

(assert (= (and d!151213 (not c!130210)) b!1404594))

(assert (= (and b!1404594 c!130211) b!1404595))

(assert (= (and b!1404594 (not c!130211)) b!1404596))

(assert (= (and b!1404596 c!130212) b!1404597))

(assert (= (and b!1404596 (not c!130212)) b!1404598))

(declare-fun m!1293445 () Bool)

(assert (=> b!1404594 m!1293445))

(declare-fun m!1293447 () Bool)

(assert (=> d!151213 m!1293447))

(declare-fun m!1293449 () Bool)

(assert (=> d!151213 m!1293449))

(assert (=> d!151213 m!1293313))

(assert (=> d!151213 m!1293323))

(assert (=> d!151213 m!1293323))

(assert (=> d!151213 m!1293313))

(assert (=> d!151213 m!1293329))

(assert (=> d!151213 m!1293317))

(declare-fun m!1293451 () Bool)

(assert (=> d!151213 m!1293451))

(assert (=> b!1404598 m!1293313))

(declare-fun m!1293453 () Bool)

(assert (=> b!1404598 m!1293453))

(assert (=> b!1404390 d!151213))

(declare-fun d!151229 () Bool)

(assert (=> d!151229 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618688 () Unit!47282)

(declare-fun choose!38 (array!95999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47282)

(assert (=> d!151229 (= lt!618688 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151229 (validMask!0 mask!2840)))

(assert (=> d!151229 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618688)))

(declare-fun bs!40917 () Bool)

(assert (= bs!40917 d!151229))

(assert (=> bs!40917 m!1293331))

(declare-fun m!1293455 () Bool)

(assert (=> bs!40917 m!1293455))

(assert (=> bs!40917 m!1293317))

(assert (=> b!1404390 d!151229))

(declare-fun d!151231 () Bool)

(declare-fun lt!618700 () (_ BitVec 32))

(declare-fun lt!618699 () (_ BitVec 32))

(assert (=> d!151231 (= lt!618700 (bvmul (bvxor lt!618699 (bvlshr lt!618699 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151231 (= lt!618699 ((_ extract 31 0) (bvand (bvxor (select (arr!46346 a!2901) j!112) (bvlshr (select (arr!46346 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151231 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943099 (let ((h!34292 ((_ extract 31 0) (bvand (bvxor (select (arr!46346 a!2901) j!112) (bvlshr (select (arr!46346 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126715 (bvmul (bvxor h!34292 (bvlshr h!34292 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126715 (bvlshr x!126715 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943099 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943099 #b00000000000000000000000000000000))))))

(assert (=> d!151231 (= (toIndex!0 (select (arr!46346 a!2901) j!112) mask!2840) (bvand (bvxor lt!618700 (bvlshr lt!618700 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1404390 d!151231))

(declare-fun b!1404612 () Bool)

(declare-fun e!795166 () Bool)

(declare-fun e!795167 () Bool)

(assert (=> b!1404612 (= e!795166 e!795167)))

(declare-fun c!130219 () Bool)

(assert (=> b!1404612 (= c!130219 (validKeyInArray!0 (select (arr!46346 a!2901) j!112)))))

(declare-fun b!1404613 () Bool)

(declare-fun e!795165 () Bool)

(assert (=> b!1404613 (= e!795167 e!795165)))

(declare-fun lt!618701 () (_ BitVec 64))

(assert (=> b!1404613 (= lt!618701 (select (arr!46346 a!2901) j!112))))

(declare-fun lt!618702 () Unit!47282)

(assert (=> b!1404613 (= lt!618702 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618701 j!112))))

(assert (=> b!1404613 (arrayContainsKey!0 a!2901 lt!618701 #b00000000000000000000000000000000)))

(declare-fun lt!618703 () Unit!47282)

(assert (=> b!1404613 (= lt!618703 lt!618702)))

(declare-fun res!943100 () Bool)

(assert (=> b!1404613 (= res!943100 (= (seekEntryOrOpen!0 (select (arr!46346 a!2901) j!112) a!2901 mask!2840) (Found!10679 j!112)))))

(assert (=> b!1404613 (=> (not res!943100) (not e!795165))))

(declare-fun b!1404614 () Bool)

(declare-fun call!66923 () Bool)

(assert (=> b!1404614 (= e!795167 call!66923)))

(declare-fun d!151233 () Bool)

(declare-fun res!943101 () Bool)

(assert (=> d!151233 (=> res!943101 e!795166)))

(assert (=> d!151233 (= res!943101 (bvsge j!112 (size!46897 a!2901)))))

(assert (=> d!151233 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!795166)))

(declare-fun bm!66920 () Bool)

(assert (=> bm!66920 (= call!66923 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404615 () Bool)

(assert (=> b!1404615 (= e!795165 call!66923)))

(assert (= (and d!151233 (not res!943101)) b!1404612))

(assert (= (and b!1404612 c!130219) b!1404613))

(assert (= (and b!1404612 (not c!130219)) b!1404614))

(assert (= (and b!1404613 res!943100) b!1404615))

(assert (= (or b!1404615 b!1404614) bm!66920))

(assert (=> b!1404612 m!1293313))

(assert (=> b!1404612 m!1293313))

(assert (=> b!1404612 m!1293315))

(assert (=> b!1404613 m!1293313))

(declare-fun m!1293457 () Bool)

(assert (=> b!1404613 m!1293457))

(declare-fun m!1293459 () Bool)

(assert (=> b!1404613 m!1293459))

(assert (=> b!1404613 m!1293313))

(assert (=> b!1404613 m!1293327))

(declare-fun m!1293461 () Bool)

(assert (=> bm!66920 m!1293461))

(assert (=> b!1404390 d!151233))

(declare-fun b!1404632 () Bool)

(declare-fun e!795182 () Bool)

(declare-fun contains!9804 (List!33045 (_ BitVec 64)) Bool)

(assert (=> b!1404632 (= e!795182 (contains!9804 Nil!33042 (select (arr!46346 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404633 () Bool)

(declare-fun e!795179 () Bool)

(declare-fun call!66926 () Bool)

(assert (=> b!1404633 (= e!795179 call!66926)))

(declare-fun b!1404634 () Bool)

(assert (=> b!1404634 (= e!795179 call!66926)))

(declare-fun b!1404635 () Bool)

(declare-fun e!795181 () Bool)

(assert (=> b!1404635 (= e!795181 e!795179)))

(declare-fun c!130225 () Bool)

(assert (=> b!1404635 (= c!130225 (validKeyInArray!0 (select (arr!46346 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404636 () Bool)

(declare-fun e!795180 () Bool)

(assert (=> b!1404636 (= e!795180 e!795181)))

(declare-fun res!943108 () Bool)

(assert (=> b!1404636 (=> (not res!943108) (not e!795181))))

(assert (=> b!1404636 (= res!943108 (not e!795182))))

(declare-fun res!943110 () Bool)

(assert (=> b!1404636 (=> (not res!943110) (not e!795182))))

(assert (=> b!1404636 (= res!943110 (validKeyInArray!0 (select (arr!46346 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66923 () Bool)

(assert (=> bm!66923 (= call!66926 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130225 (Cons!33041 (select (arr!46346 a!2901) #b00000000000000000000000000000000) Nil!33042) Nil!33042)))))

(declare-fun d!151235 () Bool)

(declare-fun res!943109 () Bool)

(assert (=> d!151235 (=> res!943109 e!795180)))

(assert (=> d!151235 (= res!943109 (bvsge #b00000000000000000000000000000000 (size!46897 a!2901)))))

(assert (=> d!151235 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33042) e!795180)))

(assert (= (and d!151235 (not res!943109)) b!1404636))

(assert (= (and b!1404636 res!943110) b!1404632))

(assert (= (and b!1404636 res!943108) b!1404635))

(assert (= (and b!1404635 c!130225) b!1404633))

(assert (= (and b!1404635 (not c!130225)) b!1404634))

(assert (= (or b!1404633 b!1404634) bm!66923))

(assert (=> b!1404632 m!1293367))

(assert (=> b!1404632 m!1293367))

(declare-fun m!1293473 () Bool)

(assert (=> b!1404632 m!1293473))

(assert (=> b!1404635 m!1293367))

(assert (=> b!1404635 m!1293367))

(assert (=> b!1404635 m!1293369))

(assert (=> b!1404636 m!1293367))

(assert (=> b!1404636 m!1293367))

(assert (=> b!1404636 m!1293369))

(assert (=> bm!66923 m!1293367))

(declare-fun m!1293475 () Bool)

(assert (=> bm!66923 m!1293475))

(assert (=> b!1404391 d!151235))

(declare-fun d!151239 () Bool)

(assert (=> d!151239 (= (validKeyInArray!0 (select (arr!46346 a!2901) i!1037)) (and (not (= (select (arr!46346 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46346 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404392 d!151239))

(check-sat (not d!151199) (not d!151229) (not b!1404612) (not b!1404636) (not b!1404449) (not bm!66923) (not bm!66920) (not bm!66906) (not b!1404632) (not b!1404515) (not b!1404635) (not b!1404448) (not d!151213) (not b!1404613) (not b!1404598))
