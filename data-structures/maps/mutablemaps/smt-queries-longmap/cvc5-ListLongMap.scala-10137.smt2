; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119626 () Bool)

(assert start!119626)

(declare-fun b!1392885 () Bool)

(declare-fun e!788768 () Bool)

(declare-fun e!788767 () Bool)

(assert (=> b!1392885 (= e!788768 (not e!788767))))

(declare-fun res!932404 () Bool)

(assert (=> b!1392885 (=> res!932404 e!788767)))

(declare-datatypes ((SeekEntryResult!10306 0))(
  ( (MissingZero!10306 (index!43594 (_ BitVec 32))) (Found!10306 (index!43595 (_ BitVec 32))) (Intermediate!10306 (undefined!11118 Bool) (index!43596 (_ BitVec 32)) (x!125289 (_ BitVec 32))) (Undefined!10306) (MissingVacant!10306 (index!43597 (_ BitVec 32))) )
))
(declare-fun lt!611753 () SeekEntryResult!10306)

(assert (=> b!1392885 (= res!932404 (or (not (is-Intermediate!10306 lt!611753)) (undefined!11118 lt!611753)))))

(declare-fun e!788766 () Bool)

(assert (=> b!1392885 e!788766))

(declare-fun res!932405 () Bool)

(assert (=> b!1392885 (=> (not res!932405) (not e!788766))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95226 0))(
  ( (array!95227 (arr!45967 (Array (_ BitVec 32) (_ BitVec 64))) (size!46518 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95226)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95226 (_ BitVec 32)) Bool)

(assert (=> b!1392885 (= res!932405 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46566 0))(
  ( (Unit!46567) )
))
(declare-fun lt!611755 () Unit!46566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46566)

(assert (=> b!1392885 (= lt!611755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95226 (_ BitVec 32)) SeekEntryResult!10306)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392885 (= lt!611753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45967 a!2901) j!112) mask!2840) (select (arr!45967 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392886 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95226 (_ BitVec 32)) SeekEntryResult!10306)

(assert (=> b!1392886 (= e!788766 (= (seekEntryOrOpen!0 (select (arr!45967 a!2901) j!112) a!2901 mask!2840) (Found!10306 j!112)))))

(declare-fun res!932406 () Bool)

(assert (=> start!119626 (=> (not res!932406) (not e!788768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119626 (= res!932406 (validMask!0 mask!2840))))

(assert (=> start!119626 e!788768))

(assert (=> start!119626 true))

(declare-fun array_inv!34912 (array!95226) Bool)

(assert (=> start!119626 (array_inv!34912 a!2901)))

(declare-fun b!1392887 () Bool)

(declare-fun res!932407 () Bool)

(assert (=> b!1392887 (=> (not res!932407) (not e!788768))))

(declare-datatypes ((List!32666 0))(
  ( (Nil!32663) (Cons!32662 (h!33895 (_ BitVec 64)) (t!47367 List!32666)) )
))
(declare-fun arrayNoDuplicates!0 (array!95226 (_ BitVec 32) List!32666) Bool)

(assert (=> b!1392887 (= res!932407 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32663))))

(declare-fun b!1392888 () Bool)

(declare-fun res!932402 () Bool)

(assert (=> b!1392888 (=> (not res!932402) (not e!788768))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1392888 (= res!932402 (and (= (size!46518 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46518 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46518 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392889 () Bool)

(declare-fun res!932403 () Bool)

(assert (=> b!1392889 (=> (not res!932403) (not e!788768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392889 (= res!932403 (validKeyInArray!0 (select (arr!45967 a!2901) i!1037)))))

(declare-fun b!1392890 () Bool)

(declare-fun res!932408 () Bool)

(assert (=> b!1392890 (=> (not res!932408) (not e!788768))))

(assert (=> b!1392890 (= res!932408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392891 () Bool)

(assert (=> b!1392891 (= e!788767 true)))

(declare-fun lt!611754 () SeekEntryResult!10306)

(assert (=> b!1392891 (= lt!611754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45967 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45967 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95227 (store (arr!45967 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46518 a!2901)) mask!2840))))

(declare-fun b!1392892 () Bool)

(declare-fun res!932409 () Bool)

(assert (=> b!1392892 (=> (not res!932409) (not e!788768))))

(assert (=> b!1392892 (= res!932409 (validKeyInArray!0 (select (arr!45967 a!2901) j!112)))))

(assert (= (and start!119626 res!932406) b!1392888))

(assert (= (and b!1392888 res!932402) b!1392889))

(assert (= (and b!1392889 res!932403) b!1392892))

(assert (= (and b!1392892 res!932409) b!1392890))

(assert (= (and b!1392890 res!932408) b!1392887))

(assert (= (and b!1392887 res!932407) b!1392885))

(assert (= (and b!1392885 res!932405) b!1392886))

(assert (= (and b!1392885 (not res!932404)) b!1392891))

(declare-fun m!1278659 () Bool)

(assert (=> b!1392889 m!1278659))

(assert (=> b!1392889 m!1278659))

(declare-fun m!1278661 () Bool)

(assert (=> b!1392889 m!1278661))

(declare-fun m!1278663 () Bool)

(assert (=> start!119626 m!1278663))

(declare-fun m!1278665 () Bool)

(assert (=> start!119626 m!1278665))

(declare-fun m!1278667 () Bool)

(assert (=> b!1392886 m!1278667))

(assert (=> b!1392886 m!1278667))

(declare-fun m!1278669 () Bool)

(assert (=> b!1392886 m!1278669))

(declare-fun m!1278671 () Bool)

(assert (=> b!1392890 m!1278671))

(declare-fun m!1278673 () Bool)

(assert (=> b!1392887 m!1278673))

(assert (=> b!1392885 m!1278667))

(declare-fun m!1278675 () Bool)

(assert (=> b!1392885 m!1278675))

(assert (=> b!1392885 m!1278667))

(declare-fun m!1278677 () Bool)

(assert (=> b!1392885 m!1278677))

(assert (=> b!1392885 m!1278675))

(assert (=> b!1392885 m!1278667))

(declare-fun m!1278679 () Bool)

(assert (=> b!1392885 m!1278679))

(declare-fun m!1278681 () Bool)

(assert (=> b!1392885 m!1278681))

(assert (=> b!1392892 m!1278667))

(assert (=> b!1392892 m!1278667))

(declare-fun m!1278683 () Bool)

(assert (=> b!1392892 m!1278683))

(declare-fun m!1278685 () Bool)

(assert (=> b!1392891 m!1278685))

(declare-fun m!1278687 () Bool)

(assert (=> b!1392891 m!1278687))

(assert (=> b!1392891 m!1278687))

(declare-fun m!1278689 () Bool)

(assert (=> b!1392891 m!1278689))

(assert (=> b!1392891 m!1278689))

(assert (=> b!1392891 m!1278687))

(declare-fun m!1278691 () Bool)

(assert (=> b!1392891 m!1278691))

(push 1)

(assert (not start!119626))

(assert (not b!1392885))

(assert (not b!1392887))

(assert (not b!1392890))

(assert (not b!1392886))

(assert (not b!1392892))

(assert (not b!1392889))

(assert (not b!1392891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

