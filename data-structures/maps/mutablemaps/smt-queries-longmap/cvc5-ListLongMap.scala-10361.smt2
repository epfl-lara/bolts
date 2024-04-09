; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122020 () Bool)

(assert start!122020)

(declare-fun res!951740 () Bool)

(declare-fun e!801215 () Bool)

(assert (=> start!122020 (=> (not res!951740) (not e!801215))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122020 (= res!951740 (validMask!0 mask!2840))))

(assert (=> start!122020 e!801215))

(assert (=> start!122020 true))

(declare-datatypes ((array!96624 0))(
  ( (array!96625 (arr!46639 (Array (_ BitVec 32) (_ BitVec 64))) (size!47190 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96624)

(declare-fun array_inv!35584 (array!96624) Bool)

(assert (=> start!122020 (array_inv!35584 a!2901)))

(declare-fun lt!624243 () array!96624)

(declare-fun e!801217 () Bool)

(declare-fun b!1415580 () Bool)

(declare-fun lt!624244 () (_ BitVec 64))

(declare-fun lt!624242 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10972 0))(
  ( (MissingZero!10972 (index!46279 (_ BitVec 32))) (Found!10972 (index!46280 (_ BitVec 32))) (Intermediate!10972 (undefined!11784 Bool) (index!46281 (_ BitVec 32)) (x!127894 (_ BitVec 32))) (Undefined!10972) (MissingVacant!10972 (index!46282 (_ BitVec 32))) )
))
(declare-fun lt!624239 () SeekEntryResult!10972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96624 (_ BitVec 32)) SeekEntryResult!10972)

(assert (=> b!1415580 (= e!801217 (= lt!624239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624242 lt!624244 lt!624243 mask!2840)))))

(declare-fun b!1415581 () Bool)

(declare-fun res!951739 () Bool)

(assert (=> b!1415581 (=> (not res!951739) (not e!801215))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415581 (= res!951739 (validKeyInArray!0 (select (arr!46639 a!2901) i!1037)))))

(declare-fun e!801219 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1415582 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96624 (_ BitVec 32)) SeekEntryResult!10972)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96624 (_ BitVec 32)) SeekEntryResult!10972)

(assert (=> b!1415582 (= e!801219 (= (seekEntryOrOpen!0 lt!624244 lt!624243 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127894 lt!624239) (index!46281 lt!624239) (index!46281 lt!624239) (select (arr!46639 a!2901) j!112) lt!624243 mask!2840)))))

(declare-fun b!1415583 () Bool)

(declare-fun e!801221 () Bool)

(declare-fun e!801216 () Bool)

(assert (=> b!1415583 (= e!801221 e!801216)))

(declare-fun res!951737 () Bool)

(assert (=> b!1415583 (=> res!951737 e!801216)))

(declare-fun lt!624240 () SeekEntryResult!10972)

(assert (=> b!1415583 (= res!951737 (or (= lt!624240 lt!624239) (not (is-Intermediate!10972 lt!624239))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415583 (= lt!624239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624244 mask!2840) lt!624244 lt!624243 mask!2840))))

(assert (=> b!1415583 (= lt!624244 (select (store (arr!46639 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415583 (= lt!624243 (array!96625 (store (arr!46639 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47190 a!2901)))))

(declare-fun b!1415584 () Bool)

(declare-fun res!951736 () Bool)

(assert (=> b!1415584 (=> (not res!951736) (not e!801215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96624 (_ BitVec 32)) Bool)

(assert (=> b!1415584 (= res!951736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415585 () Bool)

(declare-fun e!801218 () Bool)

(assert (=> b!1415585 (= e!801218 (= (seekEntryOrOpen!0 (select (arr!46639 a!2901) j!112) a!2901 mask!2840) (Found!10972 j!112)))))

(declare-fun b!1415586 () Bool)

(declare-fun res!951731 () Bool)

(assert (=> b!1415586 (=> (not res!951731) (not e!801215))))

(declare-datatypes ((List!33338 0))(
  ( (Nil!33335) (Cons!33334 (h!34621 (_ BitVec 64)) (t!48039 List!33338)) )
))
(declare-fun arrayNoDuplicates!0 (array!96624 (_ BitVec 32) List!33338) Bool)

(assert (=> b!1415586 (= res!951731 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33335))))

(declare-fun b!1415587 () Bool)

(declare-fun res!951738 () Bool)

(assert (=> b!1415587 (=> (not res!951738) (not e!801215))))

(assert (=> b!1415587 (= res!951738 (and (= (size!47190 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47190 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47190 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415588 () Bool)

(assert (=> b!1415588 (= e!801216 e!801217)))

(declare-fun res!951733 () Bool)

(assert (=> b!1415588 (=> res!951733 e!801217)))

(assert (=> b!1415588 (= res!951733 (or (bvslt (x!127894 lt!624240) #b00000000000000000000000000000000) (bvsgt (x!127894 lt!624240) #b01111111111111111111111111111110) (bvslt (x!127894 lt!624239) #b00000000000000000000000000000000) (bvsgt (x!127894 lt!624239) #b01111111111111111111111111111110) (bvslt lt!624242 #b00000000000000000000000000000000) (bvsge lt!624242 (size!47190 a!2901)) (bvslt (index!46281 lt!624240) #b00000000000000000000000000000000) (bvsge (index!46281 lt!624240) (size!47190 a!2901)) (bvslt (index!46281 lt!624239) #b00000000000000000000000000000000) (bvsge (index!46281 lt!624239) (size!47190 a!2901)) (not (= lt!624240 (Intermediate!10972 false (index!46281 lt!624240) (x!127894 lt!624240)))) (not (= lt!624239 (Intermediate!10972 false (index!46281 lt!624239) (x!127894 lt!624239))))))))

(assert (=> b!1415588 e!801219))

(declare-fun res!951741 () Bool)

(assert (=> b!1415588 (=> (not res!951741) (not e!801219))))

(assert (=> b!1415588 (= res!951741 (and (not (undefined!11784 lt!624239)) (= (index!46281 lt!624239) i!1037) (bvslt (x!127894 lt!624239) (x!127894 lt!624240)) (= (select (store (arr!46639 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46281 lt!624239)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47868 0))(
  ( (Unit!47869) )
))
(declare-fun lt!624238 () Unit!47868)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47868)

(assert (=> b!1415588 (= lt!624238 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624242 (x!127894 lt!624240) (index!46281 lt!624240) (x!127894 lt!624239) (index!46281 lt!624239) (undefined!11784 lt!624239) mask!2840))))

(declare-fun b!1415589 () Bool)

(assert (=> b!1415589 (= e!801215 (not e!801221))))

(declare-fun res!951732 () Bool)

(assert (=> b!1415589 (=> res!951732 e!801221)))

(assert (=> b!1415589 (= res!951732 (or (not (is-Intermediate!10972 lt!624240)) (undefined!11784 lt!624240)))))

(assert (=> b!1415589 e!801218))

(declare-fun res!951734 () Bool)

(assert (=> b!1415589 (=> (not res!951734) (not e!801218))))

(assert (=> b!1415589 (= res!951734 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624241 () Unit!47868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47868)

(assert (=> b!1415589 (= lt!624241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415589 (= lt!624240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624242 (select (arr!46639 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415589 (= lt!624242 (toIndex!0 (select (arr!46639 a!2901) j!112) mask!2840))))

(declare-fun b!1415590 () Bool)

(declare-fun res!951735 () Bool)

(assert (=> b!1415590 (=> (not res!951735) (not e!801215))))

(assert (=> b!1415590 (= res!951735 (validKeyInArray!0 (select (arr!46639 a!2901) j!112)))))

(assert (= (and start!122020 res!951740) b!1415587))

(assert (= (and b!1415587 res!951738) b!1415581))

(assert (= (and b!1415581 res!951739) b!1415590))

(assert (= (and b!1415590 res!951735) b!1415584))

(assert (= (and b!1415584 res!951736) b!1415586))

(assert (= (and b!1415586 res!951731) b!1415589))

(assert (= (and b!1415589 res!951734) b!1415585))

(assert (= (and b!1415589 (not res!951732)) b!1415583))

(assert (= (and b!1415583 (not res!951737)) b!1415588))

(assert (= (and b!1415588 res!951741) b!1415582))

(assert (= (and b!1415588 (not res!951733)) b!1415580))

(declare-fun m!1306007 () Bool)

(assert (=> b!1415583 m!1306007))

(assert (=> b!1415583 m!1306007))

(declare-fun m!1306009 () Bool)

(assert (=> b!1415583 m!1306009))

(declare-fun m!1306011 () Bool)

(assert (=> b!1415583 m!1306011))

(declare-fun m!1306013 () Bool)

(assert (=> b!1415583 m!1306013))

(declare-fun m!1306015 () Bool)

(assert (=> b!1415584 m!1306015))

(declare-fun m!1306017 () Bool)

(assert (=> b!1415580 m!1306017))

(declare-fun m!1306019 () Bool)

(assert (=> b!1415590 m!1306019))

(assert (=> b!1415590 m!1306019))

(declare-fun m!1306021 () Bool)

(assert (=> b!1415590 m!1306021))

(declare-fun m!1306023 () Bool)

(assert (=> start!122020 m!1306023))

(declare-fun m!1306025 () Bool)

(assert (=> start!122020 m!1306025))

(declare-fun m!1306027 () Bool)

(assert (=> b!1415586 m!1306027))

(assert (=> b!1415585 m!1306019))

(assert (=> b!1415585 m!1306019))

(declare-fun m!1306029 () Bool)

(assert (=> b!1415585 m!1306029))

(assert (=> b!1415589 m!1306019))

(declare-fun m!1306031 () Bool)

(assert (=> b!1415589 m!1306031))

(assert (=> b!1415589 m!1306019))

(declare-fun m!1306033 () Bool)

(assert (=> b!1415589 m!1306033))

(declare-fun m!1306035 () Bool)

(assert (=> b!1415589 m!1306035))

(assert (=> b!1415589 m!1306019))

(declare-fun m!1306037 () Bool)

(assert (=> b!1415589 m!1306037))

(declare-fun m!1306039 () Bool)

(assert (=> b!1415582 m!1306039))

(assert (=> b!1415582 m!1306019))

(assert (=> b!1415582 m!1306019))

(declare-fun m!1306041 () Bool)

(assert (=> b!1415582 m!1306041))

(assert (=> b!1415588 m!1306011))

(declare-fun m!1306043 () Bool)

(assert (=> b!1415588 m!1306043))

(declare-fun m!1306045 () Bool)

(assert (=> b!1415588 m!1306045))

(declare-fun m!1306047 () Bool)

(assert (=> b!1415581 m!1306047))

(assert (=> b!1415581 m!1306047))

(declare-fun m!1306049 () Bool)

(assert (=> b!1415581 m!1306049))

(push 1)

