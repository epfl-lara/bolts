; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120934 () Bool)

(assert start!120934)

(declare-fun b!1406586 () Bool)

(declare-fun e!796142 () Bool)

(assert (=> b!1406586 (= e!796142 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96159 0))(
  ( (array!96160 (arr!46423 (Array (_ BitVec 32) (_ BitVec 64))) (size!46974 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96159)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10756 0))(
  ( (MissingZero!10756 (index!45400 (_ BitVec 32))) (Found!10756 (index!45401 (_ BitVec 32))) (Intermediate!10756 (undefined!11568 Bool) (index!45402 (_ BitVec 32)) (x!127006 (_ BitVec 32))) (Undefined!10756) (MissingVacant!10756 (index!45403 (_ BitVec 32))) )
))
(declare-fun lt!619409 () SeekEntryResult!10756)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96159 (_ BitVec 32)) SeekEntryResult!10756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406586 (= lt!619409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46423 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46423 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96160 (store (arr!46423 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46974 a!2901)) mask!2840))))

(declare-fun b!1406587 () Bool)

(declare-fun res!944915 () Bool)

(declare-fun e!796140 () Bool)

(assert (=> b!1406587 (=> (not res!944915) (not e!796140))))

(assert (=> b!1406587 (= res!944915 (and (= (size!46974 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46974 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46974 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406588 () Bool)

(assert (=> b!1406588 (= e!796140 (not e!796142))))

(declare-fun res!944914 () Bool)

(assert (=> b!1406588 (=> res!944914 e!796142)))

(declare-fun lt!619410 () SeekEntryResult!10756)

(assert (=> b!1406588 (= res!944914 (or (not (is-Intermediate!10756 lt!619410)) (undefined!11568 lt!619410)))))

(declare-fun e!796141 () Bool)

(assert (=> b!1406588 e!796141))

(declare-fun res!944919 () Bool)

(assert (=> b!1406588 (=> (not res!944919) (not e!796141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96159 (_ BitVec 32)) Bool)

(assert (=> b!1406588 (= res!944919 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47436 0))(
  ( (Unit!47437) )
))
(declare-fun lt!619411 () Unit!47436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47436)

(assert (=> b!1406588 (= lt!619411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406588 (= lt!619410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46423 a!2901) j!112) mask!2840) (select (arr!46423 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944917 () Bool)

(assert (=> start!120934 (=> (not res!944917) (not e!796140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120934 (= res!944917 (validMask!0 mask!2840))))

(assert (=> start!120934 e!796140))

(assert (=> start!120934 true))

(declare-fun array_inv!35368 (array!96159) Bool)

(assert (=> start!120934 (array_inv!35368 a!2901)))

(declare-fun b!1406589 () Bool)

(declare-fun res!944916 () Bool)

(assert (=> b!1406589 (=> (not res!944916) (not e!796140))))

(declare-datatypes ((List!33122 0))(
  ( (Nil!33119) (Cons!33118 (h!34372 (_ BitVec 64)) (t!47823 List!33122)) )
))
(declare-fun arrayNoDuplicates!0 (array!96159 (_ BitVec 32) List!33122) Bool)

(assert (=> b!1406589 (= res!944916 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33119))))

(declare-fun b!1406590 () Bool)

(declare-fun res!944912 () Bool)

(assert (=> b!1406590 (=> (not res!944912) (not e!796140))))

(assert (=> b!1406590 (= res!944912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406591 () Bool)

(declare-fun res!944913 () Bool)

(assert (=> b!1406591 (=> (not res!944913) (not e!796140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406591 (= res!944913 (validKeyInArray!0 (select (arr!46423 a!2901) i!1037)))))

(declare-fun b!1406592 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96159 (_ BitVec 32)) SeekEntryResult!10756)

(assert (=> b!1406592 (= e!796141 (= (seekEntryOrOpen!0 (select (arr!46423 a!2901) j!112) a!2901 mask!2840) (Found!10756 j!112)))))

(declare-fun b!1406593 () Bool)

(declare-fun res!944918 () Bool)

(assert (=> b!1406593 (=> (not res!944918) (not e!796140))))

(assert (=> b!1406593 (= res!944918 (validKeyInArray!0 (select (arr!46423 a!2901) j!112)))))

(assert (= (and start!120934 res!944917) b!1406587))

(assert (= (and b!1406587 res!944915) b!1406591))

(assert (= (and b!1406591 res!944913) b!1406593))

(assert (= (and b!1406593 res!944918) b!1406590))

(assert (= (and b!1406590 res!944912) b!1406589))

(assert (= (and b!1406589 res!944916) b!1406588))

(assert (= (and b!1406588 res!944919) b!1406592))

(assert (= (and b!1406588 (not res!944914)) b!1406586))

(declare-fun m!1295885 () Bool)

(assert (=> b!1406590 m!1295885))

(declare-fun m!1295887 () Bool)

(assert (=> b!1406592 m!1295887))

(assert (=> b!1406592 m!1295887))

(declare-fun m!1295889 () Bool)

(assert (=> b!1406592 m!1295889))

(assert (=> b!1406588 m!1295887))

(declare-fun m!1295891 () Bool)

(assert (=> b!1406588 m!1295891))

(assert (=> b!1406588 m!1295887))

(declare-fun m!1295893 () Bool)

(assert (=> b!1406588 m!1295893))

(assert (=> b!1406588 m!1295891))

(assert (=> b!1406588 m!1295887))

(declare-fun m!1295895 () Bool)

(assert (=> b!1406588 m!1295895))

(declare-fun m!1295897 () Bool)

(assert (=> b!1406588 m!1295897))

(assert (=> b!1406593 m!1295887))

(assert (=> b!1406593 m!1295887))

(declare-fun m!1295899 () Bool)

(assert (=> b!1406593 m!1295899))

(declare-fun m!1295901 () Bool)

(assert (=> b!1406591 m!1295901))

(assert (=> b!1406591 m!1295901))

(declare-fun m!1295903 () Bool)

(assert (=> b!1406591 m!1295903))

(declare-fun m!1295905 () Bool)

(assert (=> start!120934 m!1295905))

(declare-fun m!1295907 () Bool)

(assert (=> start!120934 m!1295907))

(declare-fun m!1295909 () Bool)

(assert (=> b!1406589 m!1295909))

(declare-fun m!1295911 () Bool)

(assert (=> b!1406586 m!1295911))

(declare-fun m!1295913 () Bool)

(assert (=> b!1406586 m!1295913))

(assert (=> b!1406586 m!1295913))

(declare-fun m!1295915 () Bool)

(assert (=> b!1406586 m!1295915))

(assert (=> b!1406586 m!1295915))

(assert (=> b!1406586 m!1295913))

(declare-fun m!1295917 () Bool)

(assert (=> b!1406586 m!1295917))

(push 1)

(assert (not b!1406591))

(assert (not start!120934))

(assert (not b!1406589))

(assert (not b!1406588))

(assert (not b!1406593))

(assert (not b!1406590))

(assert (not b!1406586))

(assert (not b!1406592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

