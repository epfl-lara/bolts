; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127440 () Bool)

(assert start!127440)

(declare-fun b!1497690 () Bool)

(declare-fun e!838693 () Bool)

(declare-datatypes ((array!99815 0))(
  ( (array!99816 (arr!48167 (Array (_ BitVec 32) (_ BitVec 64))) (size!48718 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99815)

(assert (=> b!1497690 (= e!838693 (and (bvsle #b00000000000000000000000000000000 (size!48718 a!2850)) (bvsge (size!48718 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497691 () Bool)

(declare-fun res!1018895 () Bool)

(assert (=> b!1497691 (=> (not res!1018895) (not e!838693))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497691 (= res!1018895 (validKeyInArray!0 (select (arr!48167 a!2850) j!87)))))

(declare-fun b!1497692 () Bool)

(declare-fun res!1018894 () Bool)

(assert (=> b!1497692 (=> (not res!1018894) (not e!838693))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497692 (= res!1018894 (validKeyInArray!0 (select (arr!48167 a!2850) i!996)))))

(declare-fun b!1497693 () Bool)

(declare-fun res!1018896 () Bool)

(assert (=> b!1497693 (=> (not res!1018896) (not e!838693))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99815 (_ BitVec 32)) Bool)

(assert (=> b!1497693 (= res!1018896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1018892 () Bool)

(assert (=> start!127440 (=> (not res!1018892) (not e!838693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127440 (= res!1018892 (validMask!0 mask!2661))))

(assert (=> start!127440 e!838693))

(assert (=> start!127440 true))

(declare-fun array_inv!37112 (array!99815) Bool)

(assert (=> start!127440 (array_inv!37112 a!2850)))

(declare-fun b!1497694 () Bool)

(declare-fun res!1018893 () Bool)

(assert (=> b!1497694 (=> (not res!1018893) (not e!838693))))

(assert (=> b!1497694 (= res!1018893 (and (= (size!48718 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48718 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48718 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127440 res!1018892) b!1497694))

(assert (= (and b!1497694 res!1018893) b!1497692))

(assert (= (and b!1497692 res!1018894) b!1497691))

(assert (= (and b!1497691 res!1018895) b!1497693))

(assert (= (and b!1497693 res!1018896) b!1497690))

(declare-fun m!1380833 () Bool)

(assert (=> b!1497691 m!1380833))

(assert (=> b!1497691 m!1380833))

(declare-fun m!1380835 () Bool)

(assert (=> b!1497691 m!1380835))

(declare-fun m!1380837 () Bool)

(assert (=> b!1497692 m!1380837))

(assert (=> b!1497692 m!1380837))

(declare-fun m!1380839 () Bool)

(assert (=> b!1497692 m!1380839))

(declare-fun m!1380841 () Bool)

(assert (=> b!1497693 m!1380841))

(declare-fun m!1380843 () Bool)

(assert (=> start!127440 m!1380843))

(declare-fun m!1380845 () Bool)

(assert (=> start!127440 m!1380845))

(check-sat (not start!127440) (not b!1497691) (not b!1497692) (not b!1497693))
(check-sat)
(get-model)

(declare-fun d!157385 () Bool)

(assert (=> d!157385 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127440 d!157385))

(declare-fun d!157397 () Bool)

(assert (=> d!157397 (= (array_inv!37112 a!2850) (bvsge (size!48718 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127440 d!157397))

(declare-fun d!157399 () Bool)

(assert (=> d!157399 (= (validKeyInArray!0 (select (arr!48167 a!2850) j!87)) (and (not (= (select (arr!48167 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48167 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497691 d!157399))

(declare-fun d!157401 () Bool)

(assert (=> d!157401 (= (validKeyInArray!0 (select (arr!48167 a!2850) i!996)) (and (not (= (select (arr!48167 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48167 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497692 d!157401))

(declare-fun b!1497730 () Bool)

(declare-fun e!838718 () Bool)

(declare-fun call!68046 () Bool)

(assert (=> b!1497730 (= e!838718 call!68046)))

(declare-fun b!1497731 () Bool)

(declare-fun e!838717 () Bool)

(assert (=> b!1497731 (= e!838718 e!838717)))

(declare-fun lt!652485 () (_ BitVec 64))

(assert (=> b!1497731 (= lt!652485 (select (arr!48167 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50134 0))(
  ( (Unit!50135) )
))
(declare-fun lt!652484 () Unit!50134)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99815 (_ BitVec 64) (_ BitVec 32)) Unit!50134)

(assert (=> b!1497731 (= lt!652484 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652485 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497731 (arrayContainsKey!0 a!2850 lt!652485 #b00000000000000000000000000000000)))

(declare-fun lt!652486 () Unit!50134)

(assert (=> b!1497731 (= lt!652486 lt!652484)))

(declare-fun res!1018922 () Bool)

(declare-datatypes ((SeekEntryResult!12423 0))(
  ( (MissingZero!12423 (index!52083 (_ BitVec 32))) (Found!12423 (index!52084 (_ BitVec 32))) (Intermediate!12423 (undefined!13235 Bool) (index!52085 (_ BitVec 32)) (x!133726 (_ BitVec 32))) (Undefined!12423) (MissingVacant!12423 (index!52086 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99815 (_ BitVec 32)) SeekEntryResult!12423)

(assert (=> b!1497731 (= res!1018922 (= (seekEntryOrOpen!0 (select (arr!48167 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12423 #b00000000000000000000000000000000)))))

(assert (=> b!1497731 (=> (not res!1018922) (not e!838717))))

(declare-fun b!1497732 () Bool)

(declare-fun e!838716 () Bool)

(assert (=> b!1497732 (= e!838716 e!838718)))

(declare-fun c!138941 () Bool)

(assert (=> b!1497732 (= c!138941 (validKeyInArray!0 (select (arr!48167 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1497733 () Bool)

(assert (=> b!1497733 (= e!838717 call!68046)))

(declare-fun d!157403 () Bool)

(declare-fun res!1018923 () Bool)

(assert (=> d!157403 (=> res!1018923 e!838716)))

(assert (=> d!157403 (= res!1018923 (bvsge #b00000000000000000000000000000000 (size!48718 a!2850)))))

(assert (=> d!157403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838716)))

(declare-fun bm!68043 () Bool)

(assert (=> bm!68043 (= call!68046 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(assert (= (and d!157403 (not res!1018923)) b!1497732))

(assert (= (and b!1497732 c!138941) b!1497731))

(assert (= (and b!1497732 (not c!138941)) b!1497730))

(assert (= (and b!1497731 res!1018922) b!1497733))

(assert (= (or b!1497733 b!1497730) bm!68043))

(declare-fun m!1380873 () Bool)

(assert (=> b!1497731 m!1380873))

(declare-fun m!1380875 () Bool)

(assert (=> b!1497731 m!1380875))

(declare-fun m!1380877 () Bool)

(assert (=> b!1497731 m!1380877))

(assert (=> b!1497731 m!1380873))

(declare-fun m!1380879 () Bool)

(assert (=> b!1497731 m!1380879))

(assert (=> b!1497732 m!1380873))

(assert (=> b!1497732 m!1380873))

(declare-fun m!1380881 () Bool)

(assert (=> b!1497732 m!1380881))

(declare-fun m!1380883 () Bool)

(assert (=> bm!68043 m!1380883))

(assert (=> b!1497693 d!157403))

(check-sat (not bm!68043) (not b!1497731) (not b!1497732))
(check-sat)
