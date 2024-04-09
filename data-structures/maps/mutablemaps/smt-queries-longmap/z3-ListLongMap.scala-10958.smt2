; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128304 () Bool)

(assert start!128304)

(declare-fun b!1505499 () Bool)

(declare-fun res!1026017 () Bool)

(declare-fun e!841472 () Bool)

(assert (=> b!1505499 (=> (not res!1026017) (not e!841472))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100370 0))(
  ( (array!100371 (arr!48431 (Array (_ BitVec 32) (_ BitVec 64))) (size!48982 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100370)

(assert (=> b!1505499 (= res!1026017 (and (= (size!48982 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48982 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48982 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505500 () Bool)

(declare-fun res!1026019 () Bool)

(assert (=> b!1505500 (=> (not res!1026019) (not e!841472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100370 (_ BitVec 32)) Bool)

(assert (=> b!1505500 (= res!1026019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505501 () Bool)

(assert (=> b!1505501 (= e!841472 (and (bvsle #b00000000000000000000000000000000 (size!48982 a!2804)) (bvsge (size!48982 a!2804) #b01111111111111111111111111111111)))))

(declare-fun b!1505502 () Bool)

(declare-fun res!1026020 () Bool)

(assert (=> b!1505502 (=> (not res!1026020) (not e!841472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505502 (= res!1026020 (validKeyInArray!0 (select (arr!48431 a!2804) j!70)))))

(declare-fun res!1026021 () Bool)

(assert (=> start!128304 (=> (not res!1026021) (not e!841472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128304 (= res!1026021 (validMask!0 mask!2512))))

(assert (=> start!128304 e!841472))

(assert (=> start!128304 true))

(declare-fun array_inv!37376 (array!100370) Bool)

(assert (=> start!128304 (array_inv!37376 a!2804)))

(declare-fun b!1505503 () Bool)

(declare-fun res!1026018 () Bool)

(assert (=> b!1505503 (=> (not res!1026018) (not e!841472))))

(assert (=> b!1505503 (= res!1026018 (validKeyInArray!0 (select (arr!48431 a!2804) i!961)))))

(assert (= (and start!128304 res!1026021) b!1505499))

(assert (= (and b!1505499 res!1026017) b!1505503))

(assert (= (and b!1505503 res!1026018) b!1505502))

(assert (= (and b!1505502 res!1026020) b!1505500))

(assert (= (and b!1505500 res!1026019) b!1505501))

(declare-fun m!1388651 () Bool)

(assert (=> b!1505500 m!1388651))

(declare-fun m!1388653 () Bool)

(assert (=> b!1505502 m!1388653))

(assert (=> b!1505502 m!1388653))

(declare-fun m!1388655 () Bool)

(assert (=> b!1505502 m!1388655))

(declare-fun m!1388657 () Bool)

(assert (=> start!128304 m!1388657))

(declare-fun m!1388659 () Bool)

(assert (=> start!128304 m!1388659))

(declare-fun m!1388661 () Bool)

(assert (=> b!1505503 m!1388661))

(assert (=> b!1505503 m!1388661))

(declare-fun m!1388663 () Bool)

(assert (=> b!1505503 m!1388663))

(check-sat (not b!1505503) (not b!1505502) (not b!1505500) (not start!128304))
(check-sat)
(get-model)

(declare-fun d!157987 () Bool)

(assert (=> d!157987 (= (validKeyInArray!0 (select (arr!48431 a!2804) i!961)) (and (not (= (select (arr!48431 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48431 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505503 d!157987))

(declare-fun d!157989 () Bool)

(assert (=> d!157989 (= (validKeyInArray!0 (select (arr!48431 a!2804) j!70)) (and (not (= (select (arr!48431 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48431 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505502 d!157989))

(declare-fun b!1505527 () Bool)

(declare-fun e!841487 () Bool)

(declare-fun e!841485 () Bool)

(assert (=> b!1505527 (= e!841487 e!841485)))

(declare-fun c!139280 () Bool)

(assert (=> b!1505527 (= c!139280 (validKeyInArray!0 (select (arr!48431 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68175 () Bool)

(declare-fun call!68178 () Bool)

(assert (=> bm!68175 (= call!68178 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!157991 () Bool)

(declare-fun res!1026042 () Bool)

(assert (=> d!157991 (=> res!1026042 e!841487)))

(assert (=> d!157991 (= res!1026042 (bvsge #b00000000000000000000000000000000 (size!48982 a!2804)))))

(assert (=> d!157991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841487)))

(declare-fun b!1505528 () Bool)

(declare-fun e!841486 () Bool)

(assert (=> b!1505528 (= e!841486 call!68178)))

(declare-fun b!1505529 () Bool)

(assert (=> b!1505529 (= e!841485 e!841486)))

(declare-fun lt!653994 () (_ BitVec 64))

(assert (=> b!1505529 (= lt!653994 (select (arr!48431 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50244 0))(
  ( (Unit!50245) )
))
(declare-fun lt!653995 () Unit!50244)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100370 (_ BitVec 64) (_ BitVec 32)) Unit!50244)

(assert (=> b!1505529 (= lt!653995 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!653994 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505529 (arrayContainsKey!0 a!2804 lt!653994 #b00000000000000000000000000000000)))

(declare-fun lt!653993 () Unit!50244)

(assert (=> b!1505529 (= lt!653993 lt!653995)))

(declare-fun res!1026041 () Bool)

(declare-datatypes ((SeekEntryResult!12641 0))(
  ( (MissingZero!12641 (index!52958 (_ BitVec 32))) (Found!12641 (index!52959 (_ BitVec 32))) (Intermediate!12641 (undefined!13453 Bool) (index!52960 (_ BitVec 32)) (x!134681 (_ BitVec 32))) (Undefined!12641) (MissingVacant!12641 (index!52961 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100370 (_ BitVec 32)) SeekEntryResult!12641)

(assert (=> b!1505529 (= res!1026041 (= (seekEntryOrOpen!0 (select (arr!48431 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12641 #b00000000000000000000000000000000)))))

(assert (=> b!1505529 (=> (not res!1026041) (not e!841486))))

(declare-fun b!1505530 () Bool)

(assert (=> b!1505530 (= e!841485 call!68178)))

(assert (= (and d!157991 (not res!1026042)) b!1505527))

(assert (= (and b!1505527 c!139280) b!1505529))

(assert (= (and b!1505527 (not c!139280)) b!1505530))

(assert (= (and b!1505529 res!1026041) b!1505528))

(assert (= (or b!1505528 b!1505530) bm!68175))

(declare-fun m!1388679 () Bool)

(assert (=> b!1505527 m!1388679))

(assert (=> b!1505527 m!1388679))

(declare-fun m!1388681 () Bool)

(assert (=> b!1505527 m!1388681))

(declare-fun m!1388683 () Bool)

(assert (=> bm!68175 m!1388683))

(assert (=> b!1505529 m!1388679))

(declare-fun m!1388685 () Bool)

(assert (=> b!1505529 m!1388685))

(declare-fun m!1388687 () Bool)

(assert (=> b!1505529 m!1388687))

(assert (=> b!1505529 m!1388679))

(declare-fun m!1388689 () Bool)

(assert (=> b!1505529 m!1388689))

(assert (=> b!1505500 d!157991))

(declare-fun d!157999 () Bool)

(assert (=> d!157999 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128304 d!157999))

(declare-fun d!158013 () Bool)

(assert (=> d!158013 (= (array_inv!37376 a!2804) (bvsge (size!48982 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128304 d!158013))

(check-sat (not b!1505529) (not bm!68175) (not b!1505527))
(check-sat)
