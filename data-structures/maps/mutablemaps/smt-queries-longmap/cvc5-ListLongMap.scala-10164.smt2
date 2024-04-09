; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119842 () Bool)

(assert start!119842)

(declare-fun b!1395183 () Bool)

(declare-fun res!934536 () Bool)

(declare-fun e!789907 () Bool)

(assert (=> b!1395183 (=> (not res!934536) (not e!789907))))

(declare-datatypes ((array!95391 0))(
  ( (array!95392 (arr!46048 (Array (_ BitVec 32) (_ BitVec 64))) (size!46599 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95391)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395183 (= res!934536 (validKeyInArray!0 (select (arr!46048 a!2901) j!112)))))

(declare-fun b!1395184 () Bool)

(declare-fun res!934537 () Bool)

(assert (=> b!1395184 (=> (not res!934537) (not e!789907))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95391 (_ BitVec 32)) Bool)

(assert (=> b!1395184 (= res!934537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!934542 () Bool)

(assert (=> start!119842 (=> (not res!934542) (not e!789907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119842 (= res!934542 (validMask!0 mask!2840))))

(assert (=> start!119842 e!789907))

(assert (=> start!119842 true))

(declare-fun array_inv!34993 (array!95391) Bool)

(assert (=> start!119842 (array_inv!34993 a!2901)))

(declare-fun b!1395185 () Bool)

(declare-fun res!934538 () Bool)

(assert (=> b!1395185 (=> (not res!934538) (not e!789907))))

(declare-datatypes ((List!32747 0))(
  ( (Nil!32744) (Cons!32743 (h!33979 (_ BitVec 64)) (t!47448 List!32747)) )
))
(declare-fun arrayNoDuplicates!0 (array!95391 (_ BitVec 32) List!32747) Bool)

(assert (=> b!1395185 (= res!934538 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32744))))

(declare-fun b!1395186 () Bool)

(declare-fun res!934539 () Bool)

(assert (=> b!1395186 (=> (not res!934539) (not e!789907))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395186 (= res!934539 (and (= (size!46599 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46599 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46599 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!789906 () Bool)

(declare-fun b!1395187 () Bool)

(declare-datatypes ((SeekEntryResult!10387 0))(
  ( (MissingZero!10387 (index!43918 (_ BitVec 32))) (Found!10387 (index!43919 (_ BitVec 32))) (Intermediate!10387 (undefined!11199 Bool) (index!43920 (_ BitVec 32)) (x!125592 (_ BitVec 32))) (Undefined!10387) (MissingVacant!10387 (index!43921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95391 (_ BitVec 32)) SeekEntryResult!10387)

(assert (=> b!1395187 (= e!789906 (= (seekEntryOrOpen!0 (select (arr!46048 a!2901) j!112) a!2901 mask!2840) (Found!10387 j!112)))))

(declare-fun b!1395188 () Bool)

(declare-fun res!934541 () Bool)

(assert (=> b!1395188 (=> (not res!934541) (not e!789907))))

(assert (=> b!1395188 (= res!934541 (validKeyInArray!0 (select (arr!46048 a!2901) i!1037)))))

(declare-fun b!1395189 () Bool)

(declare-fun e!789908 () Bool)

(assert (=> b!1395189 (= e!789907 (not e!789908))))

(declare-fun res!934535 () Bool)

(assert (=> b!1395189 (=> res!934535 e!789908)))

(declare-fun lt!612874 () SeekEntryResult!10387)

(assert (=> b!1395189 (= res!934535 (or (not (is-Intermediate!10387 lt!612874)) (undefined!11199 lt!612874)))))

(assert (=> b!1395189 e!789906))

(declare-fun res!934540 () Bool)

(assert (=> b!1395189 (=> (not res!934540) (not e!789906))))

(assert (=> b!1395189 (= res!934540 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46728 0))(
  ( (Unit!46729) )
))
(declare-fun lt!612873 () Unit!46728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46728)

(assert (=> b!1395189 (= lt!612873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95391 (_ BitVec 32)) SeekEntryResult!10387)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395189 (= lt!612874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46048 a!2901) j!112) mask!2840) (select (arr!46048 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395190 () Bool)

(assert (=> b!1395190 (= e!789908 true)))

(declare-fun lt!612872 () SeekEntryResult!10387)

(assert (=> b!1395190 (= lt!612872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46048 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46048 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95392 (store (arr!46048 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46599 a!2901)) mask!2840))))

(assert (= (and start!119842 res!934542) b!1395186))

(assert (= (and b!1395186 res!934539) b!1395188))

(assert (= (and b!1395188 res!934541) b!1395183))

(assert (= (and b!1395183 res!934536) b!1395184))

(assert (= (and b!1395184 res!934537) b!1395185))

(assert (= (and b!1395185 res!934538) b!1395189))

(assert (= (and b!1395189 res!934540) b!1395187))

(assert (= (and b!1395189 (not res!934535)) b!1395190))

(declare-fun m!1281665 () Bool)

(assert (=> b!1395190 m!1281665))

(declare-fun m!1281667 () Bool)

(assert (=> b!1395190 m!1281667))

(assert (=> b!1395190 m!1281667))

(declare-fun m!1281669 () Bool)

(assert (=> b!1395190 m!1281669))

(assert (=> b!1395190 m!1281669))

(assert (=> b!1395190 m!1281667))

(declare-fun m!1281671 () Bool)

(assert (=> b!1395190 m!1281671))

(declare-fun m!1281673 () Bool)

(assert (=> start!119842 m!1281673))

(declare-fun m!1281675 () Bool)

(assert (=> start!119842 m!1281675))

(declare-fun m!1281677 () Bool)

(assert (=> b!1395189 m!1281677))

(declare-fun m!1281679 () Bool)

(assert (=> b!1395189 m!1281679))

(assert (=> b!1395189 m!1281677))

(declare-fun m!1281681 () Bool)

(assert (=> b!1395189 m!1281681))

(assert (=> b!1395189 m!1281679))

(assert (=> b!1395189 m!1281677))

(declare-fun m!1281683 () Bool)

(assert (=> b!1395189 m!1281683))

(declare-fun m!1281685 () Bool)

(assert (=> b!1395189 m!1281685))

(assert (=> b!1395187 m!1281677))

(assert (=> b!1395187 m!1281677))

(declare-fun m!1281687 () Bool)

(assert (=> b!1395187 m!1281687))

(declare-fun m!1281689 () Bool)

(assert (=> b!1395188 m!1281689))

(assert (=> b!1395188 m!1281689))

(declare-fun m!1281691 () Bool)

(assert (=> b!1395188 m!1281691))

(declare-fun m!1281693 () Bool)

(assert (=> b!1395185 m!1281693))

(declare-fun m!1281695 () Bool)

(assert (=> b!1395184 m!1281695))

(assert (=> b!1395183 m!1281677))

(assert (=> b!1395183 m!1281677))

(declare-fun m!1281697 () Bool)

(assert (=> b!1395183 m!1281697))

(push 1)

(assert (not b!1395185))

(assert (not start!119842))

(assert (not b!1395188))

(assert (not b!1395190))

(assert (not b!1395184))

(assert (not b!1395189))

(assert (not b!1395187))

(assert (not b!1395183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

