; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121464 () Bool)

(assert start!121464)

(declare-fun b!1410669 () Bool)

(declare-fun res!948008 () Bool)

(declare-fun e!798330 () Bool)

(assert (=> b!1410669 (=> (not res!948008) (not e!798330))))

(declare-datatypes ((array!96383 0))(
  ( (array!96384 (arr!46526 (Array (_ BitVec 32) (_ BitVec 64))) (size!47077 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96383)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410669 (= res!948008 (validKeyInArray!0 (select (arr!46526 a!2901) i!1037)))))

(declare-fun res!948011 () Bool)

(assert (=> start!121464 (=> (not res!948011) (not e!798330))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121464 (= res!948011 (validMask!0 mask!2840))))

(assert (=> start!121464 e!798330))

(assert (=> start!121464 true))

(declare-fun array_inv!35471 (array!96383) Bool)

(assert (=> start!121464 (array_inv!35471 a!2901)))

(declare-fun b!1410670 () Bool)

(declare-fun res!948012 () Bool)

(assert (=> b!1410670 (=> (not res!948012) (not e!798330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96383 (_ BitVec 32)) Bool)

(assert (=> b!1410670 (= res!948012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-datatypes ((SeekEntryResult!10859 0))(
  ( (MissingZero!10859 (index!45812 (_ BitVec 32))) (Found!10859 (index!45813 (_ BitVec 32))) (Intermediate!10859 (undefined!11671 Bool) (index!45814 (_ BitVec 32)) (x!127417 (_ BitVec 32))) (Undefined!10859) (MissingVacant!10859 (index!45815 (_ BitVec 32))) )
))
(declare-fun lt!621260 () SeekEntryResult!10859)

(declare-fun lt!621261 () SeekEntryResult!10859)

(declare-fun b!1410671 () Bool)

(declare-fun lt!621262 () (_ BitVec 32))

(declare-fun e!798329 () Bool)

(get-info :version)

(assert (=> b!1410671 (= e!798329 (or (= lt!621260 lt!621261) (not ((_ is Intermediate!10859) lt!621261)) (bvslt (x!127417 lt!621260) #b00000000000000000000000000000000) (bvsgt (x!127417 lt!621260) #b01111111111111111111111111111110) (bvslt lt!621262 #b00000000000000000000000000000000) (bvsge lt!621262 (size!47077 a!2901)) (bvslt (index!45814 lt!621260) #b00000000000000000000000000000000) (bvsge (index!45814 lt!621260) (size!47077 a!2901)) (not (= lt!621260 (Intermediate!10859 false (index!45814 lt!621260) (x!127417 lt!621260)))) (= lt!621261 (Intermediate!10859 (undefined!11671 lt!621261) (index!45814 lt!621261) (x!127417 lt!621261)))))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96383 (_ BitVec 32)) SeekEntryResult!10859)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410671 (= lt!621261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46526 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46526 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96384 (store (arr!46526 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47077 a!2901)) mask!2840))))

(declare-fun b!1410672 () Bool)

(declare-fun res!948010 () Bool)

(assert (=> b!1410672 (=> (not res!948010) (not e!798330))))

(assert (=> b!1410672 (= res!948010 (and (= (size!47077 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47077 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47077 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410673 () Bool)

(assert (=> b!1410673 (= e!798330 (not e!798329))))

(declare-fun res!948006 () Bool)

(assert (=> b!1410673 (=> res!948006 e!798329)))

(assert (=> b!1410673 (= res!948006 (or (not ((_ is Intermediate!10859) lt!621260)) (undefined!11671 lt!621260)))))

(declare-fun e!798331 () Bool)

(assert (=> b!1410673 e!798331))

(declare-fun res!948007 () Bool)

(assert (=> b!1410673 (=> (not res!948007) (not e!798331))))

(assert (=> b!1410673 (= res!948007 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47642 0))(
  ( (Unit!47643) )
))
(declare-fun lt!621259 () Unit!47642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96383 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47642)

(assert (=> b!1410673 (= lt!621259 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410673 (= lt!621260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621262 (select (arr!46526 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410673 (= lt!621262 (toIndex!0 (select (arr!46526 a!2901) j!112) mask!2840))))

(declare-fun b!1410674 () Bool)

(declare-fun res!948005 () Bool)

(assert (=> b!1410674 (=> (not res!948005) (not e!798330))))

(assert (=> b!1410674 (= res!948005 (validKeyInArray!0 (select (arr!46526 a!2901) j!112)))))

(declare-fun b!1410675 () Bool)

(declare-fun res!948009 () Bool)

(assert (=> b!1410675 (=> (not res!948009) (not e!798330))))

(declare-datatypes ((List!33225 0))(
  ( (Nil!33222) (Cons!33221 (h!34493 (_ BitVec 64)) (t!47926 List!33225)) )
))
(declare-fun arrayNoDuplicates!0 (array!96383 (_ BitVec 32) List!33225) Bool)

(assert (=> b!1410675 (= res!948009 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33222))))

(declare-fun b!1410676 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96383 (_ BitVec 32)) SeekEntryResult!10859)

(assert (=> b!1410676 (= e!798331 (= (seekEntryOrOpen!0 (select (arr!46526 a!2901) j!112) a!2901 mask!2840) (Found!10859 j!112)))))

(assert (= (and start!121464 res!948011) b!1410672))

(assert (= (and b!1410672 res!948010) b!1410669))

(assert (= (and b!1410669 res!948008) b!1410674))

(assert (= (and b!1410674 res!948005) b!1410670))

(assert (= (and b!1410670 res!948012) b!1410675))

(assert (= (and b!1410675 res!948009) b!1410673))

(assert (= (and b!1410673 res!948007) b!1410676))

(assert (= (and b!1410673 (not res!948006)) b!1410671))

(declare-fun m!1300371 () Bool)

(assert (=> b!1410669 m!1300371))

(assert (=> b!1410669 m!1300371))

(declare-fun m!1300373 () Bool)

(assert (=> b!1410669 m!1300373))

(declare-fun m!1300375 () Bool)

(assert (=> b!1410675 m!1300375))

(declare-fun m!1300377 () Bool)

(assert (=> start!121464 m!1300377))

(declare-fun m!1300379 () Bool)

(assert (=> start!121464 m!1300379))

(declare-fun m!1300381 () Bool)

(assert (=> b!1410674 m!1300381))

(assert (=> b!1410674 m!1300381))

(declare-fun m!1300383 () Bool)

(assert (=> b!1410674 m!1300383))

(declare-fun m!1300385 () Bool)

(assert (=> b!1410671 m!1300385))

(declare-fun m!1300387 () Bool)

(assert (=> b!1410671 m!1300387))

(assert (=> b!1410671 m!1300387))

(declare-fun m!1300389 () Bool)

(assert (=> b!1410671 m!1300389))

(assert (=> b!1410671 m!1300389))

(assert (=> b!1410671 m!1300387))

(declare-fun m!1300391 () Bool)

(assert (=> b!1410671 m!1300391))

(assert (=> b!1410673 m!1300381))

(declare-fun m!1300393 () Bool)

(assert (=> b!1410673 m!1300393))

(assert (=> b!1410673 m!1300381))

(assert (=> b!1410673 m!1300381))

(declare-fun m!1300395 () Bool)

(assert (=> b!1410673 m!1300395))

(declare-fun m!1300397 () Bool)

(assert (=> b!1410673 m!1300397))

(declare-fun m!1300399 () Bool)

(assert (=> b!1410673 m!1300399))

(assert (=> b!1410676 m!1300381))

(assert (=> b!1410676 m!1300381))

(declare-fun m!1300401 () Bool)

(assert (=> b!1410676 m!1300401))

(declare-fun m!1300403 () Bool)

(assert (=> b!1410670 m!1300403))

(check-sat (not b!1410671) (not b!1410675) (not b!1410673) (not start!121464) (not b!1410670) (not b!1410669) (not b!1410674) (not b!1410676))
(check-sat)
