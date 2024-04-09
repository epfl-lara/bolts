; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131124 () Bool)

(assert start!131124)

(declare-fun res!1055174 () Bool)

(declare-fun e!855798 () Bool)

(assert (=> start!131124 (=> (not res!1055174) (not e!855798))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131124 (= res!1055174 (validMask!0 mask!2480))))

(assert (=> start!131124 e!855798))

(assert (=> start!131124 true))

(declare-datatypes ((array!102149 0))(
  ( (array!102150 (arr!49286 (Array (_ BitVec 32) (_ BitVec 64))) (size!49837 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102149)

(declare-fun array_inv!38231 (array!102149) Bool)

(assert (=> start!131124 (array_inv!38231 a!2792)))

(declare-fun b!1537950 () Bool)

(declare-fun res!1055176 () Bool)

(assert (=> b!1537950 (=> (not res!1055176) (not e!855798))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537950 (= res!1055176 (and (= (size!49837 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49837 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49837 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537951 () Bool)

(declare-fun res!1055178 () Bool)

(assert (=> b!1537951 (=> (not res!1055178) (not e!855798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537951 (= res!1055178 (validKeyInArray!0 (select (arr!49286 a!2792) j!64)))))

(declare-fun b!1537952 () Bool)

(declare-fun res!1055177 () Bool)

(assert (=> b!1537952 (=> (not res!1055177) (not e!855798))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1537952 (= res!1055177 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49837 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49837 a!2792)) (= (select (arr!49286 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537953 () Bool)

(declare-fun res!1055179 () Bool)

(assert (=> b!1537953 (=> (not res!1055179) (not e!855798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102149 (_ BitVec 32)) Bool)

(assert (=> b!1537953 (= res!1055179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537954 () Bool)

(declare-fun res!1055181 () Bool)

(assert (=> b!1537954 (=> (not res!1055181) (not e!855798))))

(declare-datatypes ((List!35940 0))(
  ( (Nil!35937) (Cons!35936 (h!37382 (_ BitVec 64)) (t!50641 List!35940)) )
))
(declare-fun arrayNoDuplicates!0 (array!102149 (_ BitVec 32) List!35940) Bool)

(assert (=> b!1537954 (= res!1055181 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35937))))

(declare-fun b!1537955 () Bool)

(declare-fun e!855799 () Bool)

(assert (=> b!1537955 (= e!855798 e!855799)))

(declare-fun res!1055180 () Bool)

(assert (=> b!1537955 (=> (not res!1055180) (not e!855799))))

(declare-datatypes ((SeekEntryResult!13435 0))(
  ( (MissingZero!13435 (index!56134 (_ BitVec 32))) (Found!13435 (index!56135 (_ BitVec 32))) (Intermediate!13435 (undefined!14247 Bool) (index!56136 (_ BitVec 32)) (x!137872 (_ BitVec 32))) (Undefined!13435) (MissingVacant!13435 (index!56137 (_ BitVec 32))) )
))
(declare-fun lt!664747 () SeekEntryResult!13435)

(assert (=> b!1537955 (= res!1055180 (and (= lt!664747 (Found!13435 j!64)) (= (select (arr!49286 a!2792) index!463) (select (arr!49286 a!2792) j!64))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102149 (_ BitVec 32)) SeekEntryResult!13435)

(assert (=> b!1537955 (= lt!664747 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49286 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537956 () Bool)

(declare-fun res!1055175 () Bool)

(assert (=> b!1537956 (=> (not res!1055175) (not e!855798))))

(assert (=> b!1537956 (= res!1055175 (validKeyInArray!0 (select (arr!49286 a!2792) i!951)))))

(declare-fun b!1537957 () Bool)

(assert (=> b!1537957 (= e!855799 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792)) mask!2480) lt!664747)))))

(assert (= (and start!131124 res!1055174) b!1537950))

(assert (= (and b!1537950 res!1055176) b!1537956))

(assert (= (and b!1537956 res!1055175) b!1537951))

(assert (= (and b!1537951 res!1055178) b!1537953))

(assert (= (and b!1537953 res!1055179) b!1537954))

(assert (= (and b!1537954 res!1055181) b!1537952))

(assert (= (and b!1537952 res!1055177) b!1537955))

(assert (= (and b!1537955 res!1055180) b!1537957))

(declare-fun m!1420501 () Bool)

(assert (=> b!1537954 m!1420501))

(declare-fun m!1420503 () Bool)

(assert (=> b!1537955 m!1420503))

(declare-fun m!1420505 () Bool)

(assert (=> b!1537955 m!1420505))

(assert (=> b!1537955 m!1420505))

(declare-fun m!1420507 () Bool)

(assert (=> b!1537955 m!1420507))

(declare-fun m!1420509 () Bool)

(assert (=> start!131124 m!1420509))

(declare-fun m!1420511 () Bool)

(assert (=> start!131124 m!1420511))

(declare-fun m!1420513 () Bool)

(assert (=> b!1537956 m!1420513))

(assert (=> b!1537956 m!1420513))

(declare-fun m!1420515 () Bool)

(assert (=> b!1537956 m!1420515))

(declare-fun m!1420517 () Bool)

(assert (=> b!1537952 m!1420517))

(declare-fun m!1420519 () Bool)

(assert (=> b!1537957 m!1420519))

(declare-fun m!1420521 () Bool)

(assert (=> b!1537957 m!1420521))

(assert (=> b!1537957 m!1420521))

(declare-fun m!1420523 () Bool)

(assert (=> b!1537957 m!1420523))

(assert (=> b!1537951 m!1420505))

(assert (=> b!1537951 m!1420505))

(declare-fun m!1420525 () Bool)

(assert (=> b!1537951 m!1420525))

(declare-fun m!1420527 () Bool)

(assert (=> b!1537953 m!1420527))

(check-sat (not start!131124) (not b!1537955) (not b!1537953) (not b!1537951) (not b!1537957) (not b!1537956) (not b!1537954))
(check-sat)
(get-model)

(declare-fun d!160219 () Bool)

(assert (=> d!160219 (= (validKeyInArray!0 (select (arr!49286 a!2792) i!951)) (and (not (= (select (arr!49286 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49286 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1537956 d!160219))

(declare-fun d!160221 () Bool)

(assert (=> d!160221 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131124 d!160221))

(declare-fun d!160223 () Bool)

(assert (=> d!160223 (= (array_inv!38231 a!2792) (bvsge (size!49837 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131124 d!160223))

(declare-fun lt!664756 () SeekEntryResult!13435)

(declare-fun d!160225 () Bool)

(get-info :version)

(assert (=> d!160225 (and (or ((_ is Undefined!13435) lt!664756) (not ((_ is Found!13435) lt!664756)) (and (bvsge (index!56135 lt!664756) #b00000000000000000000000000000000) (bvslt (index!56135 lt!664756) (size!49837 a!2792)))) (or ((_ is Undefined!13435) lt!664756) ((_ is Found!13435) lt!664756) (not ((_ is MissingVacant!13435) lt!664756)) (not (= (index!56137 lt!664756) vacantIndex!5)) (and (bvsge (index!56137 lt!664756) #b00000000000000000000000000000000) (bvslt (index!56137 lt!664756) (size!49837 a!2792)))) (or ((_ is Undefined!13435) lt!664756) (ite ((_ is Found!13435) lt!664756) (= (select (arr!49286 a!2792) (index!56135 lt!664756)) (select (arr!49286 a!2792) j!64)) (and ((_ is MissingVacant!13435) lt!664756) (= (index!56137 lt!664756) vacantIndex!5) (= (select (arr!49286 a!2792) (index!56137 lt!664756)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!855817 () SeekEntryResult!13435)

(assert (=> d!160225 (= lt!664756 e!855817)))

(declare-fun c!140957 () Bool)

(assert (=> d!160225 (= c!140957 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!664755 () (_ BitVec 64))

(assert (=> d!160225 (= lt!664755 (select (arr!49286 a!2792) index!463))))

(assert (=> d!160225 (validMask!0 mask!2480)))

(assert (=> d!160225 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49286 a!2792) j!64) a!2792 mask!2480) lt!664756)))

(declare-fun b!1537994 () Bool)

(declare-fun e!855818 () SeekEntryResult!13435)

(assert (=> b!1537994 (= e!855818 (MissingVacant!13435 vacantIndex!5))))

(declare-fun b!1537995 () Bool)

(declare-fun e!855816 () SeekEntryResult!13435)

(assert (=> b!1537995 (= e!855817 e!855816)))

(declare-fun c!140955 () Bool)

(assert (=> b!1537995 (= c!140955 (= lt!664755 (select (arr!49286 a!2792) j!64)))))

(declare-fun b!1537996 () Bool)

(assert (=> b!1537996 (= e!855816 (Found!13435 index!463))))

(declare-fun b!1537997 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537997 (= e!855818 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49286 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537998 () Bool)

(assert (=> b!1537998 (= e!855817 Undefined!13435)))

(declare-fun b!1537999 () Bool)

(declare-fun c!140956 () Bool)

(assert (=> b!1537999 (= c!140956 (= lt!664755 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1537999 (= e!855816 e!855818)))

(assert (= (and d!160225 c!140957) b!1537998))

(assert (= (and d!160225 (not c!140957)) b!1537995))

(assert (= (and b!1537995 c!140955) b!1537996))

(assert (= (and b!1537995 (not c!140955)) b!1537999))

(assert (= (and b!1537999 c!140956) b!1537994))

(assert (= (and b!1537999 (not c!140956)) b!1537997))

(declare-fun m!1420557 () Bool)

(assert (=> d!160225 m!1420557))

(declare-fun m!1420559 () Bool)

(assert (=> d!160225 m!1420559))

(assert (=> d!160225 m!1420503))

(assert (=> d!160225 m!1420509))

(declare-fun m!1420561 () Bool)

(assert (=> b!1537997 m!1420561))

(assert (=> b!1537997 m!1420561))

(assert (=> b!1537997 m!1420505))

(declare-fun m!1420563 () Bool)

(assert (=> b!1537997 m!1420563))

(assert (=> b!1537955 d!160225))

(declare-fun b!1538010 () Bool)

(declare-fun e!855827 () Bool)

(declare-fun contains!10023 (List!35940 (_ BitVec 64)) Bool)

(assert (=> b!1538010 (= e!855827 (contains!10023 Nil!35937 (select (arr!49286 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68577 () Bool)

(declare-fun call!68580 () Bool)

(declare-fun c!140960 () Bool)

(assert (=> bm!68577 (= call!68580 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140960 (Cons!35936 (select (arr!49286 a!2792) #b00000000000000000000000000000000) Nil!35937) Nil!35937)))))

(declare-fun b!1538011 () Bool)

(declare-fun e!855828 () Bool)

(assert (=> b!1538011 (= e!855828 call!68580)))

(declare-fun b!1538012 () Bool)

(declare-fun e!855829 () Bool)

(declare-fun e!855830 () Bool)

(assert (=> b!1538012 (= e!855829 e!855830)))

(declare-fun res!1055214 () Bool)

(assert (=> b!1538012 (=> (not res!1055214) (not e!855830))))

(assert (=> b!1538012 (= res!1055214 (not e!855827))))

(declare-fun res!1055212 () Bool)

(assert (=> b!1538012 (=> (not res!1055212) (not e!855827))))

(assert (=> b!1538012 (= res!1055212 (validKeyInArray!0 (select (arr!49286 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1538013 () Bool)

(assert (=> b!1538013 (= e!855830 e!855828)))

(assert (=> b!1538013 (= c!140960 (validKeyInArray!0 (select (arr!49286 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160227 () Bool)

(declare-fun res!1055213 () Bool)

(assert (=> d!160227 (=> res!1055213 e!855829)))

(assert (=> d!160227 (= res!1055213 (bvsge #b00000000000000000000000000000000 (size!49837 a!2792)))))

(assert (=> d!160227 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35937) e!855829)))

(declare-fun b!1538014 () Bool)

(assert (=> b!1538014 (= e!855828 call!68580)))

(assert (= (and d!160227 (not res!1055213)) b!1538012))

(assert (= (and b!1538012 res!1055212) b!1538010))

(assert (= (and b!1538012 res!1055214) b!1538013))

(assert (= (and b!1538013 c!140960) b!1538014))

(assert (= (and b!1538013 (not c!140960)) b!1538011))

(assert (= (or b!1538014 b!1538011) bm!68577))

(declare-fun m!1420565 () Bool)

(assert (=> b!1538010 m!1420565))

(assert (=> b!1538010 m!1420565))

(declare-fun m!1420567 () Bool)

(assert (=> b!1538010 m!1420567))

(assert (=> bm!68577 m!1420565))

(declare-fun m!1420569 () Bool)

(assert (=> bm!68577 m!1420569))

(assert (=> b!1538012 m!1420565))

(assert (=> b!1538012 m!1420565))

(declare-fun m!1420571 () Bool)

(assert (=> b!1538012 m!1420571))

(assert (=> b!1538013 m!1420565))

(assert (=> b!1538013 m!1420565))

(assert (=> b!1538013 m!1420571))

(assert (=> b!1537954 d!160227))

(declare-fun b!1538023 () Bool)

(declare-fun e!855839 () Bool)

(declare-fun e!855837 () Bool)

(assert (=> b!1538023 (= e!855839 e!855837)))

(declare-fun c!140963 () Bool)

(assert (=> b!1538023 (= c!140963 (validKeyInArray!0 (select (arr!49286 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1538024 () Bool)

(declare-fun e!855838 () Bool)

(declare-fun call!68583 () Bool)

(assert (=> b!1538024 (= e!855838 call!68583)))

(declare-fun bm!68580 () Bool)

(assert (=> bm!68580 (= call!68583 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1538025 () Bool)

(assert (=> b!1538025 (= e!855837 e!855838)))

(declare-fun lt!664765 () (_ BitVec 64))

(assert (=> b!1538025 (= lt!664765 (select (arr!49286 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51350 0))(
  ( (Unit!51351) )
))
(declare-fun lt!664763 () Unit!51350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102149 (_ BitVec 64) (_ BitVec 32)) Unit!51350)

(assert (=> b!1538025 (= lt!664763 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!664765 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1538025 (arrayContainsKey!0 a!2792 lt!664765 #b00000000000000000000000000000000)))

(declare-fun lt!664764 () Unit!51350)

(assert (=> b!1538025 (= lt!664764 lt!664763)))

(declare-fun res!1055220 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102149 (_ BitVec 32)) SeekEntryResult!13435)

(assert (=> b!1538025 (= res!1055220 (= (seekEntryOrOpen!0 (select (arr!49286 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13435 #b00000000000000000000000000000000)))))

(assert (=> b!1538025 (=> (not res!1055220) (not e!855838))))

(declare-fun b!1538026 () Bool)

(assert (=> b!1538026 (= e!855837 call!68583)))

(declare-fun d!160231 () Bool)

(declare-fun res!1055219 () Bool)

(assert (=> d!160231 (=> res!1055219 e!855839)))

(assert (=> d!160231 (= res!1055219 (bvsge #b00000000000000000000000000000000 (size!49837 a!2792)))))

(assert (=> d!160231 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!855839)))

(assert (= (and d!160231 (not res!1055219)) b!1538023))

(assert (= (and b!1538023 c!140963) b!1538025))

(assert (= (and b!1538023 (not c!140963)) b!1538026))

(assert (= (and b!1538025 res!1055220) b!1538024))

(assert (= (or b!1538024 b!1538026) bm!68580))

(assert (=> b!1538023 m!1420565))

(assert (=> b!1538023 m!1420565))

(assert (=> b!1538023 m!1420571))

(declare-fun m!1420573 () Bool)

(assert (=> bm!68580 m!1420573))

(assert (=> b!1538025 m!1420565))

(declare-fun m!1420575 () Bool)

(assert (=> b!1538025 m!1420575))

(declare-fun m!1420577 () Bool)

(assert (=> b!1538025 m!1420577))

(assert (=> b!1538025 m!1420565))

(declare-fun m!1420579 () Bool)

(assert (=> b!1538025 m!1420579))

(assert (=> b!1537953 d!160231))

(declare-fun d!160235 () Bool)

(declare-fun lt!664767 () SeekEntryResult!13435)

(assert (=> d!160235 (and (or ((_ is Undefined!13435) lt!664767) (not ((_ is Found!13435) lt!664767)) (and (bvsge (index!56135 lt!664767) #b00000000000000000000000000000000) (bvslt (index!56135 lt!664767) (size!49837 (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792)))))) (or ((_ is Undefined!13435) lt!664767) ((_ is Found!13435) lt!664767) (not ((_ is MissingVacant!13435) lt!664767)) (not (= (index!56137 lt!664767) vacantIndex!5)) (and (bvsge (index!56137 lt!664767) #b00000000000000000000000000000000) (bvslt (index!56137 lt!664767) (size!49837 (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792)))))) (or ((_ is Undefined!13435) lt!664767) (ite ((_ is Found!13435) lt!664767) (= (select (arr!49286 (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792))) (index!56135 lt!664767)) (select (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64)) (and ((_ is MissingVacant!13435) lt!664767) (= (index!56137 lt!664767) vacantIndex!5) (= (select (arr!49286 (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792))) (index!56137 lt!664767)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!855841 () SeekEntryResult!13435)

(assert (=> d!160235 (= lt!664767 e!855841)))

(declare-fun c!140966 () Bool)

(assert (=> d!160235 (= c!140966 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!664766 () (_ BitVec 64))

(assert (=> d!160235 (= lt!664766 (select (arr!49286 (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792))) index!463))))

(assert (=> d!160235 (validMask!0 mask!2480)))

(assert (=> d!160235 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792)) mask!2480) lt!664767)))

(declare-fun b!1538027 () Bool)

(declare-fun e!855842 () SeekEntryResult!13435)

(assert (=> b!1538027 (= e!855842 (MissingVacant!13435 vacantIndex!5))))

(declare-fun b!1538028 () Bool)

(declare-fun e!855840 () SeekEntryResult!13435)

(assert (=> b!1538028 (= e!855841 e!855840)))

(declare-fun c!140964 () Bool)

(assert (=> b!1538028 (= c!140964 (= lt!664766 (select (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64)))))

(declare-fun b!1538029 () Bool)

(assert (=> b!1538029 (= e!855840 (Found!13435 index!463))))

(declare-fun b!1538030 () Bool)

(assert (=> b!1538030 (= e!855842 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102150 (store (arr!49286 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49837 a!2792)) mask!2480))))

(declare-fun b!1538031 () Bool)

(assert (=> b!1538031 (= e!855841 Undefined!13435)))

(declare-fun b!1538032 () Bool)

(declare-fun c!140965 () Bool)

(assert (=> b!1538032 (= c!140965 (= lt!664766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1538032 (= e!855840 e!855842)))

(assert (= (and d!160235 c!140966) b!1538031))

(assert (= (and d!160235 (not c!140966)) b!1538028))

(assert (= (and b!1538028 c!140964) b!1538029))

(assert (= (and b!1538028 (not c!140964)) b!1538032))

(assert (= (and b!1538032 c!140965) b!1538027))

(assert (= (and b!1538032 (not c!140965)) b!1538030))

(declare-fun m!1420581 () Bool)

(assert (=> d!160235 m!1420581))

(declare-fun m!1420583 () Bool)

(assert (=> d!160235 m!1420583))

(declare-fun m!1420585 () Bool)

(assert (=> d!160235 m!1420585))

(assert (=> d!160235 m!1420509))

(assert (=> b!1538030 m!1420561))

(assert (=> b!1538030 m!1420561))

(assert (=> b!1538030 m!1420521))

(declare-fun m!1420587 () Bool)

(assert (=> b!1538030 m!1420587))

(assert (=> b!1537957 d!160235))

(declare-fun d!160237 () Bool)

(assert (=> d!160237 (= (validKeyInArray!0 (select (arr!49286 a!2792) j!64)) (and (not (= (select (arr!49286 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49286 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1537951 d!160237))

(check-sat (not b!1537997) (not b!1538030) (not b!1538013) (not b!1538010) (not d!160225) (not bm!68577) (not b!1538025) (not b!1538023) (not bm!68580) (not d!160235) (not b!1538012))
(check-sat)
