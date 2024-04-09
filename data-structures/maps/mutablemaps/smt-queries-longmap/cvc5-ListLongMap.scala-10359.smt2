; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122008 () Bool)

(assert start!122008)

(declare-fun res!951551 () Bool)

(declare-fun e!801110 () Bool)

(assert (=> start!122008 (=> (not res!951551) (not e!801110))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122008 (= res!951551 (validMask!0 mask!2840))))

(assert (=> start!122008 e!801110))

(assert (=> start!122008 true))

(declare-datatypes ((array!96612 0))(
  ( (array!96613 (arr!46633 (Array (_ BitVec 32) (_ BitVec 64))) (size!47184 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96612)

(declare-fun array_inv!35578 (array!96612) Bool)

(assert (=> start!122008 (array_inv!35578 a!2901)))

(declare-fun b!1415398 () Bool)

(declare-fun e!801109 () Bool)

(assert (=> b!1415398 (= e!801110 (not e!801109))))

(declare-fun res!951555 () Bool)

(assert (=> b!1415398 (=> res!951555 e!801109)))

(declare-datatypes ((SeekEntryResult!10966 0))(
  ( (MissingZero!10966 (index!46255 (_ BitVec 32))) (Found!10966 (index!46256 (_ BitVec 32))) (Intermediate!10966 (undefined!11778 Bool) (index!46257 (_ BitVec 32)) (x!127872 (_ BitVec 32))) (Undefined!10966) (MissingVacant!10966 (index!46258 (_ BitVec 32))) )
))
(declare-fun lt!624118 () SeekEntryResult!10966)

(assert (=> b!1415398 (= res!951555 (or (not (is-Intermediate!10966 lt!624118)) (undefined!11778 lt!624118)))))

(declare-fun e!801107 () Bool)

(assert (=> b!1415398 e!801107))

(declare-fun res!951550 () Bool)

(assert (=> b!1415398 (=> (not res!951550) (not e!801107))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96612 (_ BitVec 32)) Bool)

(assert (=> b!1415398 (= res!951550 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47856 0))(
  ( (Unit!47857) )
))
(declare-fun lt!624114 () Unit!47856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47856)

(assert (=> b!1415398 (= lt!624114 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624113 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96612 (_ BitVec 32)) SeekEntryResult!10966)

(assert (=> b!1415398 (= lt!624118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624113 (select (arr!46633 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415398 (= lt!624113 (toIndex!0 (select (arr!46633 a!2901) j!112) mask!2840))))

(declare-fun b!1415399 () Bool)

(declare-fun res!951558 () Bool)

(assert (=> b!1415399 (=> (not res!951558) (not e!801110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415399 (= res!951558 (validKeyInArray!0 (select (arr!46633 a!2901) j!112)))))

(declare-fun b!1415400 () Bool)

(declare-fun e!801105 () Bool)

(assert (=> b!1415400 (= e!801109 e!801105)))

(declare-fun res!951553 () Bool)

(assert (=> b!1415400 (=> res!951553 e!801105)))

(declare-fun lt!624117 () SeekEntryResult!10966)

(assert (=> b!1415400 (= res!951553 (or (= lt!624118 lt!624117) (not (is-Intermediate!10966 lt!624117))))))

(declare-fun lt!624112 () (_ BitVec 64))

(declare-fun lt!624116 () array!96612)

(assert (=> b!1415400 (= lt!624117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624112 mask!2840) lt!624112 lt!624116 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415400 (= lt!624112 (select (store (arr!46633 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415400 (= lt!624116 (array!96613 (store (arr!46633 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47184 a!2901)))))

(declare-fun b!1415401 () Bool)

(declare-fun res!951557 () Bool)

(assert (=> b!1415401 (=> (not res!951557) (not e!801110))))

(assert (=> b!1415401 (= res!951557 (validKeyInArray!0 (select (arr!46633 a!2901) i!1037)))))

(declare-fun b!1415402 () Bool)

(declare-fun res!951549 () Bool)

(assert (=> b!1415402 (=> (not res!951549) (not e!801110))))

(assert (=> b!1415402 (= res!951549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415403 () Bool)

(declare-fun res!951552 () Bool)

(assert (=> b!1415403 (=> (not res!951552) (not e!801110))))

(assert (=> b!1415403 (= res!951552 (and (= (size!47184 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47184 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47184 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415404 () Bool)

(assert (=> b!1415404 (= e!801105 true)))

(declare-fun e!801108 () Bool)

(assert (=> b!1415404 e!801108))

(declare-fun res!951554 () Bool)

(assert (=> b!1415404 (=> (not res!951554) (not e!801108))))

(assert (=> b!1415404 (= res!951554 (and (not (undefined!11778 lt!624117)) (= (index!46257 lt!624117) i!1037) (bvslt (x!127872 lt!624117) (x!127872 lt!624118)) (= (select (store (arr!46633 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46257 lt!624117)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624115 () Unit!47856)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47856)

(assert (=> b!1415404 (= lt!624115 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624113 (x!127872 lt!624118) (index!46257 lt!624118) (x!127872 lt!624117) (index!46257 lt!624117) (undefined!11778 lt!624117) mask!2840))))

(declare-fun b!1415405 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96612 (_ BitVec 32)) SeekEntryResult!10966)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96612 (_ BitVec 32)) SeekEntryResult!10966)

(assert (=> b!1415405 (= e!801108 (= (seekEntryOrOpen!0 lt!624112 lt!624116 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127872 lt!624117) (index!46257 lt!624117) (index!46257 lt!624117) (select (arr!46633 a!2901) j!112) lt!624116 mask!2840)))))

(declare-fun b!1415406 () Bool)

(assert (=> b!1415406 (= e!801107 (= (seekEntryOrOpen!0 (select (arr!46633 a!2901) j!112) a!2901 mask!2840) (Found!10966 j!112)))))

(declare-fun b!1415407 () Bool)

(declare-fun res!951556 () Bool)

(assert (=> b!1415407 (=> (not res!951556) (not e!801110))))

(declare-datatypes ((List!33332 0))(
  ( (Nil!33329) (Cons!33328 (h!34615 (_ BitVec 64)) (t!48033 List!33332)) )
))
(declare-fun arrayNoDuplicates!0 (array!96612 (_ BitVec 32) List!33332) Bool)

(assert (=> b!1415407 (= res!951556 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33329))))

(assert (= (and start!122008 res!951551) b!1415403))

(assert (= (and b!1415403 res!951552) b!1415401))

(assert (= (and b!1415401 res!951557) b!1415399))

(assert (= (and b!1415399 res!951558) b!1415402))

(assert (= (and b!1415402 res!951549) b!1415407))

(assert (= (and b!1415407 res!951556) b!1415398))

(assert (= (and b!1415398 res!951550) b!1415406))

(assert (= (and b!1415398 (not res!951555)) b!1415400))

(assert (= (and b!1415400 (not res!951553)) b!1415404))

(assert (= (and b!1415404 res!951554) b!1415405))

(declare-fun m!1305755 () Bool)

(assert (=> b!1415404 m!1305755))

(declare-fun m!1305757 () Bool)

(assert (=> b!1415404 m!1305757))

(declare-fun m!1305759 () Bool)

(assert (=> b!1415404 m!1305759))

(declare-fun m!1305761 () Bool)

(assert (=> b!1415400 m!1305761))

(assert (=> b!1415400 m!1305761))

(declare-fun m!1305763 () Bool)

(assert (=> b!1415400 m!1305763))

(assert (=> b!1415400 m!1305755))

(declare-fun m!1305765 () Bool)

(assert (=> b!1415400 m!1305765))

(declare-fun m!1305767 () Bool)

(assert (=> start!122008 m!1305767))

(declare-fun m!1305769 () Bool)

(assert (=> start!122008 m!1305769))

(declare-fun m!1305771 () Bool)

(assert (=> b!1415401 m!1305771))

(assert (=> b!1415401 m!1305771))

(declare-fun m!1305773 () Bool)

(assert (=> b!1415401 m!1305773))

(declare-fun m!1305775 () Bool)

(assert (=> b!1415405 m!1305775))

(declare-fun m!1305777 () Bool)

(assert (=> b!1415405 m!1305777))

(assert (=> b!1415405 m!1305777))

(declare-fun m!1305779 () Bool)

(assert (=> b!1415405 m!1305779))

(declare-fun m!1305781 () Bool)

(assert (=> b!1415402 m!1305781))

(assert (=> b!1415399 m!1305777))

(assert (=> b!1415399 m!1305777))

(declare-fun m!1305783 () Bool)

(assert (=> b!1415399 m!1305783))

(assert (=> b!1415406 m!1305777))

(assert (=> b!1415406 m!1305777))

(declare-fun m!1305785 () Bool)

(assert (=> b!1415406 m!1305785))

(assert (=> b!1415398 m!1305777))

(declare-fun m!1305787 () Bool)

(assert (=> b!1415398 m!1305787))

(assert (=> b!1415398 m!1305777))

(declare-fun m!1305789 () Bool)

(assert (=> b!1415398 m!1305789))

(assert (=> b!1415398 m!1305777))

(declare-fun m!1305791 () Bool)

(assert (=> b!1415398 m!1305791))

(declare-fun m!1305793 () Bool)

(assert (=> b!1415398 m!1305793))

(declare-fun m!1305795 () Bool)

(assert (=> b!1415407 m!1305795))

(push 1)

