; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122022 () Bool)

(assert start!122022)

(declare-fun res!951765 () Bool)

(declare-fun e!801240 () Bool)

(assert (=> start!122022 (=> (not res!951765) (not e!801240))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122022 (= res!951765 (validMask!0 mask!2840))))

(assert (=> start!122022 e!801240))

(assert (=> start!122022 true))

(declare-datatypes ((array!96626 0))(
  ( (array!96627 (arr!46640 (Array (_ BitVec 32) (_ BitVec 64))) (size!47191 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96626)

(declare-fun array_inv!35585 (array!96626) Bool)

(assert (=> start!122022 (array_inv!35585 a!2901)))

(declare-fun b!1415613 () Bool)

(declare-fun res!951764 () Bool)

(assert (=> b!1415613 (=> (not res!951764) (not e!801240))))

(declare-datatypes ((List!33339 0))(
  ( (Nil!33336) (Cons!33335 (h!34622 (_ BitVec 64)) (t!48040 List!33339)) )
))
(declare-fun arrayNoDuplicates!0 (array!96626 (_ BitVec 32) List!33339) Bool)

(assert (=> b!1415613 (= res!951764 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33336))))

(declare-fun b!1415614 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!801239 () Bool)

(declare-datatypes ((SeekEntryResult!10973 0))(
  ( (MissingZero!10973 (index!46283 (_ BitVec 32))) (Found!10973 (index!46284 (_ BitVec 32))) (Intermediate!10973 (undefined!11785 Bool) (index!46285 (_ BitVec 32)) (x!127895 (_ BitVec 32))) (Undefined!10973) (MissingVacant!10973 (index!46286 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96626 (_ BitVec 32)) SeekEntryResult!10973)

(assert (=> b!1415614 (= e!801239 (= (seekEntryOrOpen!0 (select (arr!46640 a!2901) j!112) a!2901 mask!2840) (Found!10973 j!112)))))

(declare-fun lt!624260 () (_ BitVec 64))

(declare-fun b!1415615 () Bool)

(declare-fun lt!624263 () array!96626)

(declare-fun lt!624265 () SeekEntryResult!10973)

(declare-fun e!801242 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96626 (_ BitVec 32)) SeekEntryResult!10973)

(assert (=> b!1415615 (= e!801242 (= (seekEntryOrOpen!0 lt!624260 lt!624263 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127895 lt!624265) (index!46285 lt!624265) (index!46285 lt!624265) (select (arr!46640 a!2901) j!112) lt!624263 mask!2840)))))

(declare-fun b!1415616 () Bool)

(declare-fun res!951769 () Bool)

(assert (=> b!1415616 (=> (not res!951769) (not e!801240))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415616 (= res!951769 (and (= (size!47191 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47191 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47191 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415617 () Bool)

(declare-fun res!951772 () Bool)

(assert (=> b!1415617 (=> (not res!951772) (not e!801240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415617 (= res!951772 (validKeyInArray!0 (select (arr!46640 a!2901) j!112)))))

(declare-fun b!1415618 () Bool)

(declare-fun e!801241 () Bool)

(declare-fun e!801237 () Bool)

(assert (=> b!1415618 (= e!801241 e!801237)))

(declare-fun res!951773 () Bool)

(assert (=> b!1415618 (=> res!951773 e!801237)))

(declare-fun lt!624259 () SeekEntryResult!10973)

(declare-fun lt!624262 () (_ BitVec 32))

(assert (=> b!1415618 (= res!951773 (or (bvslt (x!127895 lt!624259) #b00000000000000000000000000000000) (bvsgt (x!127895 lt!624259) #b01111111111111111111111111111110) (bvslt (x!127895 lt!624265) #b00000000000000000000000000000000) (bvsgt (x!127895 lt!624265) #b01111111111111111111111111111110) (bvslt lt!624262 #b00000000000000000000000000000000) (bvsge lt!624262 (size!47191 a!2901)) (bvslt (index!46285 lt!624259) #b00000000000000000000000000000000) (bvsge (index!46285 lt!624259) (size!47191 a!2901)) (bvslt (index!46285 lt!624265) #b00000000000000000000000000000000) (bvsge (index!46285 lt!624265) (size!47191 a!2901)) (not (= lt!624259 (Intermediate!10973 false (index!46285 lt!624259) (x!127895 lt!624259)))) (not (= lt!624265 (Intermediate!10973 false (index!46285 lt!624265) (x!127895 lt!624265))))))))

(assert (=> b!1415618 e!801242))

(declare-fun res!951774 () Bool)

(assert (=> b!1415618 (=> (not res!951774) (not e!801242))))

(assert (=> b!1415618 (= res!951774 (and (not (undefined!11785 lt!624265)) (= (index!46285 lt!624265) i!1037) (bvslt (x!127895 lt!624265) (x!127895 lt!624259)) (= (select (store (arr!46640 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46285 lt!624265)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47870 0))(
  ( (Unit!47871) )
))
(declare-fun lt!624261 () Unit!47870)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47870)

(assert (=> b!1415618 (= lt!624261 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624262 (x!127895 lt!624259) (index!46285 lt!624259) (x!127895 lt!624265) (index!46285 lt!624265) (undefined!11785 lt!624265) mask!2840))))

(declare-fun b!1415619 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96626 (_ BitVec 32)) SeekEntryResult!10973)

(assert (=> b!1415619 (= e!801237 (= lt!624265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624262 lt!624260 lt!624263 mask!2840)))))

(declare-fun b!1415620 () Bool)

(declare-fun res!951767 () Bool)

(assert (=> b!1415620 (=> (not res!951767) (not e!801240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96626 (_ BitVec 32)) Bool)

(assert (=> b!1415620 (= res!951767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415621 () Bool)

(declare-fun e!801236 () Bool)

(assert (=> b!1415621 (= e!801240 (not e!801236))))

(declare-fun res!951770 () Bool)

(assert (=> b!1415621 (=> res!951770 e!801236)))

(get-info :version)

(assert (=> b!1415621 (= res!951770 (or (not ((_ is Intermediate!10973) lt!624259)) (undefined!11785 lt!624259)))))

(assert (=> b!1415621 e!801239))

(declare-fun res!951771 () Bool)

(assert (=> b!1415621 (=> (not res!951771) (not e!801239))))

(assert (=> b!1415621 (= res!951771 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624264 () Unit!47870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47870)

(assert (=> b!1415621 (= lt!624264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415621 (= lt!624259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624262 (select (arr!46640 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415621 (= lt!624262 (toIndex!0 (select (arr!46640 a!2901) j!112) mask!2840))))

(declare-fun b!1415622 () Bool)

(assert (=> b!1415622 (= e!801236 e!801241)))

(declare-fun res!951766 () Bool)

(assert (=> b!1415622 (=> res!951766 e!801241)))

(assert (=> b!1415622 (= res!951766 (or (= lt!624259 lt!624265) (not ((_ is Intermediate!10973) lt!624265))))))

(assert (=> b!1415622 (= lt!624265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624260 mask!2840) lt!624260 lt!624263 mask!2840))))

(assert (=> b!1415622 (= lt!624260 (select (store (arr!46640 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415622 (= lt!624263 (array!96627 (store (arr!46640 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47191 a!2901)))))

(declare-fun b!1415623 () Bool)

(declare-fun res!951768 () Bool)

(assert (=> b!1415623 (=> (not res!951768) (not e!801240))))

(assert (=> b!1415623 (= res!951768 (validKeyInArray!0 (select (arr!46640 a!2901) i!1037)))))

(assert (= (and start!122022 res!951765) b!1415616))

(assert (= (and b!1415616 res!951769) b!1415623))

(assert (= (and b!1415623 res!951768) b!1415617))

(assert (= (and b!1415617 res!951772) b!1415620))

(assert (= (and b!1415620 res!951767) b!1415613))

(assert (= (and b!1415613 res!951764) b!1415621))

(assert (= (and b!1415621 res!951771) b!1415614))

(assert (= (and b!1415621 (not res!951770)) b!1415622))

(assert (= (and b!1415622 (not res!951766)) b!1415618))

(assert (= (and b!1415618 res!951774) b!1415615))

(assert (= (and b!1415618 (not res!951773)) b!1415619))

(declare-fun m!1306051 () Bool)

(assert (=> b!1415615 m!1306051))

(declare-fun m!1306053 () Bool)

(assert (=> b!1415615 m!1306053))

(assert (=> b!1415615 m!1306053))

(declare-fun m!1306055 () Bool)

(assert (=> b!1415615 m!1306055))

(assert (=> b!1415617 m!1306053))

(assert (=> b!1415617 m!1306053))

(declare-fun m!1306057 () Bool)

(assert (=> b!1415617 m!1306057))

(declare-fun m!1306059 () Bool)

(assert (=> b!1415620 m!1306059))

(declare-fun m!1306061 () Bool)

(assert (=> b!1415622 m!1306061))

(assert (=> b!1415622 m!1306061))

(declare-fun m!1306063 () Bool)

(assert (=> b!1415622 m!1306063))

(declare-fun m!1306065 () Bool)

(assert (=> b!1415622 m!1306065))

(declare-fun m!1306067 () Bool)

(assert (=> b!1415622 m!1306067))

(declare-fun m!1306069 () Bool)

(assert (=> b!1415613 m!1306069))

(assert (=> b!1415614 m!1306053))

(assert (=> b!1415614 m!1306053))

(declare-fun m!1306071 () Bool)

(assert (=> b!1415614 m!1306071))

(assert (=> b!1415621 m!1306053))

(declare-fun m!1306073 () Bool)

(assert (=> b!1415621 m!1306073))

(assert (=> b!1415621 m!1306053))

(declare-fun m!1306075 () Bool)

(assert (=> b!1415621 m!1306075))

(assert (=> b!1415621 m!1306053))

(declare-fun m!1306077 () Bool)

(assert (=> b!1415621 m!1306077))

(declare-fun m!1306079 () Bool)

(assert (=> b!1415621 m!1306079))

(assert (=> b!1415618 m!1306065))

(declare-fun m!1306081 () Bool)

(assert (=> b!1415618 m!1306081))

(declare-fun m!1306083 () Bool)

(assert (=> b!1415618 m!1306083))

(declare-fun m!1306085 () Bool)

(assert (=> b!1415623 m!1306085))

(assert (=> b!1415623 m!1306085))

(declare-fun m!1306087 () Bool)

(assert (=> b!1415623 m!1306087))

(declare-fun m!1306089 () Bool)

(assert (=> b!1415619 m!1306089))

(declare-fun m!1306091 () Bool)

(assert (=> start!122022 m!1306091))

(declare-fun m!1306093 () Bool)

(assert (=> start!122022 m!1306093))

(check-sat (not start!122022) (not b!1415613) (not b!1415623) (not b!1415614) (not b!1415622) (not b!1415617) (not b!1415619) (not b!1415615) (not b!1415618) (not b!1415621) (not b!1415620))
(check-sat)
