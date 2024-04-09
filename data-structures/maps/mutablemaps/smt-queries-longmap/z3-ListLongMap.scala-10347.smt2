; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121674 () Bool)

(assert start!121674)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96530 0))(
  ( (array!96531 (arr!46598 (Array (_ BitVec 32) (_ BitVec 64))) (size!47149 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96530)

(declare-fun e!799700 () Bool)

(declare-fun b!1413040 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10931 0))(
  ( (MissingZero!10931 (index!46103 (_ BitVec 32))) (Found!10931 (index!46104 (_ BitVec 32))) (Intermediate!10931 (undefined!11743 Bool) (index!46105 (_ BitVec 32)) (x!127693 (_ BitVec 32))) (Undefined!10931) (MissingVacant!10931 (index!46106 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96530 (_ BitVec 32)) SeekEntryResult!10931)

(assert (=> b!1413040 (= e!799700 (= (seekEntryOrOpen!0 (select (arr!46598 a!2901) j!112) a!2901 mask!2840) (Found!10931 j!112)))))

(declare-fun b!1413041 () Bool)

(declare-fun res!950140 () Bool)

(declare-fun e!799697 () Bool)

(assert (=> b!1413041 (=> (not res!950140) (not e!799697))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413041 (= res!950140 (validKeyInArray!0 (select (arr!46598 a!2901) i!1037)))))

(declare-fun b!1413042 () Bool)

(declare-fun e!799698 () Bool)

(assert (=> b!1413042 (= e!799698 true)))

(declare-fun e!799695 () Bool)

(assert (=> b!1413042 e!799695))

(declare-fun res!950141 () Bool)

(assert (=> b!1413042 (=> (not res!950141) (not e!799695))))

(declare-fun lt!622753 () SeekEntryResult!10931)

(declare-fun lt!622759 () SeekEntryResult!10931)

(assert (=> b!1413042 (= res!950141 (and (not (undefined!11743 lt!622759)) (= (index!46105 lt!622759) i!1037) (bvslt (x!127693 lt!622759) (x!127693 lt!622753)) (= (select (store (arr!46598 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46105 lt!622759)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47786 0))(
  ( (Unit!47787) )
))
(declare-fun lt!622754 () Unit!47786)

(declare-fun lt!622757 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47786)

(assert (=> b!1413042 (= lt!622754 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622757 (x!127693 lt!622753) (index!46105 lt!622753) (x!127693 lt!622759) (index!46105 lt!622759) (undefined!11743 lt!622759) mask!2840))))

(declare-fun b!1413043 () Bool)

(declare-fun res!950145 () Bool)

(assert (=> b!1413043 (=> (not res!950145) (not e!799697))))

(assert (=> b!1413043 (= res!950145 (validKeyInArray!0 (select (arr!46598 a!2901) j!112)))))

(declare-fun b!1413044 () Bool)

(declare-fun e!799696 () Bool)

(assert (=> b!1413044 (= e!799696 e!799698)))

(declare-fun res!950139 () Bool)

(assert (=> b!1413044 (=> res!950139 e!799698)))

(get-info :version)

(assert (=> b!1413044 (= res!950139 (or (= lt!622753 lt!622759) (not ((_ is Intermediate!10931) lt!622759))))))

(declare-fun lt!622758 () (_ BitVec 64))

(declare-fun lt!622755 () array!96530)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96530 (_ BitVec 32)) SeekEntryResult!10931)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413044 (= lt!622759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622758 mask!2840) lt!622758 lt!622755 mask!2840))))

(assert (=> b!1413044 (= lt!622758 (select (store (arr!46598 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413044 (= lt!622755 (array!96531 (store (arr!46598 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47149 a!2901)))))

(declare-fun b!1413045 () Bool)

(declare-fun res!950146 () Bool)

(assert (=> b!1413045 (=> (not res!950146) (not e!799697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96530 (_ BitVec 32)) Bool)

(assert (=> b!1413045 (= res!950146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413046 () Bool)

(assert (=> b!1413046 (= e!799697 (not e!799696))))

(declare-fun res!950143 () Bool)

(assert (=> b!1413046 (=> res!950143 e!799696)))

(assert (=> b!1413046 (= res!950143 (or (not ((_ is Intermediate!10931) lt!622753)) (undefined!11743 lt!622753)))))

(assert (=> b!1413046 e!799700))

(declare-fun res!950144 () Bool)

(assert (=> b!1413046 (=> (not res!950144) (not e!799700))))

(assert (=> b!1413046 (= res!950144 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622756 () Unit!47786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47786)

(assert (=> b!1413046 (= lt!622756 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1413046 (= lt!622753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622757 (select (arr!46598 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413046 (= lt!622757 (toIndex!0 (select (arr!46598 a!2901) j!112) mask!2840))))

(declare-fun b!1413047 () Bool)

(declare-fun res!950147 () Bool)

(assert (=> b!1413047 (=> (not res!950147) (not e!799697))))

(declare-datatypes ((List!33297 0))(
  ( (Nil!33294) (Cons!33293 (h!34568 (_ BitVec 64)) (t!47998 List!33297)) )
))
(declare-fun arrayNoDuplicates!0 (array!96530 (_ BitVec 32) List!33297) Bool)

(assert (=> b!1413047 (= res!950147 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33294))))

(declare-fun b!1413048 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96530 (_ BitVec 32)) SeekEntryResult!10931)

(assert (=> b!1413048 (= e!799695 (= (seekEntryOrOpen!0 lt!622758 lt!622755 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127693 lt!622759) (index!46105 lt!622759) (index!46105 lt!622759) (select (arr!46598 a!2901) j!112) lt!622755 mask!2840)))))

(declare-fun b!1413049 () Bool)

(declare-fun res!950148 () Bool)

(assert (=> b!1413049 (=> (not res!950148) (not e!799697))))

(assert (=> b!1413049 (= res!950148 (and (= (size!47149 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47149 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47149 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!950142 () Bool)

(assert (=> start!121674 (=> (not res!950142) (not e!799697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121674 (= res!950142 (validMask!0 mask!2840))))

(assert (=> start!121674 e!799697))

(assert (=> start!121674 true))

(declare-fun array_inv!35543 (array!96530) Bool)

(assert (=> start!121674 (array_inv!35543 a!2901)))

(assert (= (and start!121674 res!950142) b!1413049))

(assert (= (and b!1413049 res!950148) b!1413041))

(assert (= (and b!1413041 res!950140) b!1413043))

(assert (= (and b!1413043 res!950145) b!1413045))

(assert (= (and b!1413045 res!950146) b!1413047))

(assert (= (and b!1413047 res!950147) b!1413046))

(assert (= (and b!1413046 res!950144) b!1413040))

(assert (= (and b!1413046 (not res!950143)) b!1413044))

(assert (= (and b!1413044 (not res!950139)) b!1413042))

(assert (= (and b!1413042 res!950141) b!1413048))

(declare-fun m!1303397 () Bool)

(assert (=> b!1413043 m!1303397))

(assert (=> b!1413043 m!1303397))

(declare-fun m!1303399 () Bool)

(assert (=> b!1413043 m!1303399))

(declare-fun m!1303401 () Bool)

(assert (=> b!1413048 m!1303401))

(assert (=> b!1413048 m!1303397))

(assert (=> b!1413048 m!1303397))

(declare-fun m!1303403 () Bool)

(assert (=> b!1413048 m!1303403))

(declare-fun m!1303405 () Bool)

(assert (=> b!1413045 m!1303405))

(declare-fun m!1303407 () Bool)

(assert (=> start!121674 m!1303407))

(declare-fun m!1303409 () Bool)

(assert (=> start!121674 m!1303409))

(declare-fun m!1303411 () Bool)

(assert (=> b!1413047 m!1303411))

(declare-fun m!1303413 () Bool)

(assert (=> b!1413044 m!1303413))

(assert (=> b!1413044 m!1303413))

(declare-fun m!1303415 () Bool)

(assert (=> b!1413044 m!1303415))

(declare-fun m!1303417 () Bool)

(assert (=> b!1413044 m!1303417))

(declare-fun m!1303419 () Bool)

(assert (=> b!1413044 m!1303419))

(assert (=> b!1413046 m!1303397))

(declare-fun m!1303421 () Bool)

(assert (=> b!1413046 m!1303421))

(assert (=> b!1413046 m!1303397))

(assert (=> b!1413046 m!1303397))

(declare-fun m!1303423 () Bool)

(assert (=> b!1413046 m!1303423))

(declare-fun m!1303425 () Bool)

(assert (=> b!1413046 m!1303425))

(declare-fun m!1303427 () Bool)

(assert (=> b!1413046 m!1303427))

(assert (=> b!1413040 m!1303397))

(assert (=> b!1413040 m!1303397))

(declare-fun m!1303429 () Bool)

(assert (=> b!1413040 m!1303429))

(assert (=> b!1413042 m!1303417))

(declare-fun m!1303431 () Bool)

(assert (=> b!1413042 m!1303431))

(declare-fun m!1303433 () Bool)

(assert (=> b!1413042 m!1303433))

(declare-fun m!1303435 () Bool)

(assert (=> b!1413041 m!1303435))

(assert (=> b!1413041 m!1303435))

(declare-fun m!1303437 () Bool)

(assert (=> b!1413041 m!1303437))

(check-sat (not b!1413047) (not b!1413044) (not b!1413041) (not b!1413045) (not b!1413042) (not b!1413046) (not start!121674) (not b!1413048) (not b!1413043) (not b!1413040))
(check-sat)
