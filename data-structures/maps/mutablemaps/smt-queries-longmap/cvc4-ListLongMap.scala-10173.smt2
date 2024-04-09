; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120008 () Bool)

(assert start!120008)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95455 0))(
  ( (array!95456 (arr!46077 (Array (_ BitVec 32) (_ BitVec 64))) (size!46628 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95455)

(declare-fun e!790609 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1396442 () Bool)

(declare-datatypes ((SeekEntryResult!10416 0))(
  ( (MissingZero!10416 (index!44034 (_ BitVec 32))) (Found!10416 (index!44035 (_ BitVec 32))) (Intermediate!10416 (undefined!11228 Bool) (index!44036 (_ BitVec 32)) (x!125705 (_ BitVec 32))) (Undefined!10416) (MissingVacant!10416 (index!44037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95455 (_ BitVec 32)) SeekEntryResult!10416)

(assert (=> b!1396442 (= e!790609 (= (seekEntryOrOpen!0 (select (arr!46077 a!2901) j!112) a!2901 mask!2840) (Found!10416 j!112)))))

(declare-fun b!1396443 () Bool)

(declare-fun res!935466 () Bool)

(declare-fun e!790606 () Bool)

(assert (=> b!1396443 (=> (not res!935466) (not e!790606))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396443 (= res!935466 (validKeyInArray!0 (select (arr!46077 a!2901) i!1037)))))

(declare-fun b!1396444 () Bool)

(declare-fun e!790608 () Bool)

(assert (=> b!1396444 (= e!790608 true)))

(declare-fun lt!613435 () (_ BitVec 32))

(declare-fun lt!613433 () SeekEntryResult!10416)

(declare-fun lt!613434 () array!95455)

(declare-fun lt!613432 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95455 (_ BitVec 32)) SeekEntryResult!10416)

(assert (=> b!1396444 (= lt!613433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613435 lt!613432 lt!613434 mask!2840))))

(declare-fun b!1396445 () Bool)

(declare-fun res!935471 () Bool)

(assert (=> b!1396445 (=> (not res!935471) (not e!790606))))

(declare-datatypes ((List!32776 0))(
  ( (Nil!32773) (Cons!32772 (h!34014 (_ BitVec 64)) (t!47477 List!32776)) )
))
(declare-fun arrayNoDuplicates!0 (array!95455 (_ BitVec 32) List!32776) Bool)

(assert (=> b!1396445 (= res!935471 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32773))))

(declare-fun res!935467 () Bool)

(assert (=> start!120008 (=> (not res!935467) (not e!790606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120008 (= res!935467 (validMask!0 mask!2840))))

(assert (=> start!120008 e!790606))

(assert (=> start!120008 true))

(declare-fun array_inv!35022 (array!95455) Bool)

(assert (=> start!120008 (array_inv!35022 a!2901)))

(declare-fun b!1396446 () Bool)

(declare-fun res!935472 () Bool)

(assert (=> b!1396446 (=> (not res!935472) (not e!790606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95455 (_ BitVec 32)) Bool)

(assert (=> b!1396446 (= res!935472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396447 () Bool)

(declare-fun e!790607 () Bool)

(assert (=> b!1396447 (= e!790607 e!790608)))

(declare-fun res!935470 () Bool)

(assert (=> b!1396447 (=> res!935470 e!790608)))

(declare-fun lt!613436 () SeekEntryResult!10416)

(declare-fun lt!613437 () SeekEntryResult!10416)

(assert (=> b!1396447 (= res!935470 (or (= lt!613436 lt!613437) (not (is-Intermediate!10416 lt!613437)) (bvslt (x!125705 lt!613436) #b00000000000000000000000000000000) (bvsgt (x!125705 lt!613436) #b01111111111111111111111111111110) (bvslt lt!613435 #b00000000000000000000000000000000) (bvsge lt!613435 (size!46628 a!2901)) (bvslt (index!44036 lt!613436) #b00000000000000000000000000000000) (bvsge (index!44036 lt!613436) (size!46628 a!2901)) (not (= lt!613436 (Intermediate!10416 false (index!44036 lt!613436) (x!125705 lt!613436)))) (not (= lt!613437 (Intermediate!10416 (undefined!11228 lt!613437) (index!44036 lt!613437) (x!125705 lt!613437))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396447 (= lt!613437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613432 mask!2840) lt!613432 lt!613434 mask!2840))))

(assert (=> b!1396447 (= lt!613432 (select (store (arr!46077 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396447 (= lt!613434 (array!95456 (store (arr!46077 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46628 a!2901)))))

(declare-fun b!1396448 () Bool)

(declare-fun res!935469 () Bool)

(assert (=> b!1396448 (=> (not res!935469) (not e!790606))))

(assert (=> b!1396448 (= res!935469 (and (= (size!46628 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46628 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46628 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396449 () Bool)

(declare-fun res!935465 () Bool)

(assert (=> b!1396449 (=> (not res!935465) (not e!790606))))

(assert (=> b!1396449 (= res!935465 (validKeyInArray!0 (select (arr!46077 a!2901) j!112)))))

(declare-fun b!1396450 () Bool)

(assert (=> b!1396450 (= e!790606 (not e!790607))))

(declare-fun res!935464 () Bool)

(assert (=> b!1396450 (=> res!935464 e!790607)))

(assert (=> b!1396450 (= res!935464 (or (not (is-Intermediate!10416 lt!613436)) (undefined!11228 lt!613436)))))

(assert (=> b!1396450 e!790609))

(declare-fun res!935468 () Bool)

(assert (=> b!1396450 (=> (not res!935468) (not e!790609))))

(assert (=> b!1396450 (= res!935468 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46786 0))(
  ( (Unit!46787) )
))
(declare-fun lt!613438 () Unit!46786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46786)

(assert (=> b!1396450 (= lt!613438 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396450 (= lt!613436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613435 (select (arr!46077 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396450 (= lt!613435 (toIndex!0 (select (arr!46077 a!2901) j!112) mask!2840))))

(assert (= (and start!120008 res!935467) b!1396448))

(assert (= (and b!1396448 res!935469) b!1396443))

(assert (= (and b!1396443 res!935466) b!1396449))

(assert (= (and b!1396449 res!935465) b!1396446))

(assert (= (and b!1396446 res!935472) b!1396445))

(assert (= (and b!1396445 res!935471) b!1396450))

(assert (= (and b!1396450 res!935468) b!1396442))

(assert (= (and b!1396450 (not res!935464)) b!1396447))

(assert (= (and b!1396447 (not res!935470)) b!1396444))

(declare-fun m!1282967 () Bool)

(assert (=> start!120008 m!1282967))

(declare-fun m!1282969 () Bool)

(assert (=> start!120008 m!1282969))

(declare-fun m!1282971 () Bool)

(assert (=> b!1396445 m!1282971))

(declare-fun m!1282973 () Bool)

(assert (=> b!1396442 m!1282973))

(assert (=> b!1396442 m!1282973))

(declare-fun m!1282975 () Bool)

(assert (=> b!1396442 m!1282975))

(declare-fun m!1282977 () Bool)

(assert (=> b!1396447 m!1282977))

(assert (=> b!1396447 m!1282977))

(declare-fun m!1282979 () Bool)

(assert (=> b!1396447 m!1282979))

(declare-fun m!1282981 () Bool)

(assert (=> b!1396447 m!1282981))

(declare-fun m!1282983 () Bool)

(assert (=> b!1396447 m!1282983))

(declare-fun m!1282985 () Bool)

(assert (=> b!1396443 m!1282985))

(assert (=> b!1396443 m!1282985))

(declare-fun m!1282987 () Bool)

(assert (=> b!1396443 m!1282987))

(assert (=> b!1396450 m!1282973))

(declare-fun m!1282989 () Bool)

(assert (=> b!1396450 m!1282989))

(assert (=> b!1396450 m!1282973))

(declare-fun m!1282991 () Bool)

(assert (=> b!1396450 m!1282991))

(assert (=> b!1396450 m!1282973))

(declare-fun m!1282993 () Bool)

(assert (=> b!1396450 m!1282993))

(declare-fun m!1282995 () Bool)

(assert (=> b!1396450 m!1282995))

(assert (=> b!1396449 m!1282973))

(assert (=> b!1396449 m!1282973))

(declare-fun m!1282997 () Bool)

(assert (=> b!1396449 m!1282997))

(declare-fun m!1282999 () Bool)

(assert (=> b!1396444 m!1282999))

(declare-fun m!1283001 () Bool)

(assert (=> b!1396446 m!1283001))

(push 1)

