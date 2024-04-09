; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119322 () Bool)

(assert start!119322)

(declare-fun b!1390912 () Bool)

(declare-fun res!931041 () Bool)

(declare-fun e!787687 () Bool)

(assert (=> b!1390912 (=> (not res!931041) (not e!787687))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95126 0))(
  ( (array!95127 (arr!45923 (Array (_ BitVec 32) (_ BitVec 64))) (size!46474 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95126)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390912 (= res!931041 (and (= (size!46474 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46474 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46474 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390913 () Bool)

(declare-fun res!931040 () Bool)

(assert (=> b!1390913 (=> (not res!931040) (not e!787687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95126 (_ BitVec 32)) Bool)

(assert (=> b!1390913 (= res!931040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931036 () Bool)

(assert (=> start!119322 (=> (not res!931036) (not e!787687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119322 (= res!931036 (validMask!0 mask!2840))))

(assert (=> start!119322 e!787687))

(assert (=> start!119322 true))

(declare-fun array_inv!34868 (array!95126) Bool)

(assert (=> start!119322 (array_inv!34868 a!2901)))

(declare-fun b!1390914 () Bool)

(declare-fun e!787688 () Bool)

(declare-datatypes ((SeekEntryResult!10262 0))(
  ( (MissingZero!10262 (index!43418 (_ BitVec 32))) (Found!10262 (index!43419 (_ BitVec 32))) (Intermediate!10262 (undefined!11074 Bool) (index!43420 (_ BitVec 32)) (x!125101 (_ BitVec 32))) (Undefined!10262) (MissingVacant!10262 (index!43421 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95126 (_ BitVec 32)) SeekEntryResult!10262)

(assert (=> b!1390914 (= e!787688 (= (seekEntryOrOpen!0 (select (arr!45923 a!2901) j!112) a!2901 mask!2840) (Found!10262 j!112)))))

(declare-fun b!1390915 () Bool)

(declare-fun res!931037 () Bool)

(assert (=> b!1390915 (=> (not res!931037) (not e!787687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390915 (= res!931037 (validKeyInArray!0 (select (arr!45923 a!2901) j!112)))))

(declare-fun b!1390916 () Bool)

(declare-fun res!931039 () Bool)

(assert (=> b!1390916 (=> (not res!931039) (not e!787687))))

(declare-datatypes ((List!32622 0))(
  ( (Nil!32619) (Cons!32618 (h!33839 (_ BitVec 64)) (t!47323 List!32622)) )
))
(declare-fun arrayNoDuplicates!0 (array!95126 (_ BitVec 32) List!32622) Bool)

(assert (=> b!1390916 (= res!931039 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32619))))

(declare-fun b!1390917 () Bool)

(assert (=> b!1390917 (= e!787687 (not true))))

(assert (=> b!1390917 e!787688))

(declare-fun res!931038 () Bool)

(assert (=> b!1390917 (=> (not res!931038) (not e!787688))))

(assert (=> b!1390917 (= res!931038 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46478 0))(
  ( (Unit!46479) )
))
(declare-fun lt!610965 () Unit!46478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46478)

(assert (=> b!1390917 (= lt!610965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610966 () SeekEntryResult!10262)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95126 (_ BitVec 32)) SeekEntryResult!10262)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390917 (= lt!610966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45923 a!2901) j!112) mask!2840) (select (arr!45923 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390918 () Bool)

(declare-fun res!931035 () Bool)

(assert (=> b!1390918 (=> (not res!931035) (not e!787687))))

(assert (=> b!1390918 (= res!931035 (validKeyInArray!0 (select (arr!45923 a!2901) i!1037)))))

(assert (= (and start!119322 res!931036) b!1390912))

(assert (= (and b!1390912 res!931041) b!1390918))

(assert (= (and b!1390918 res!931035) b!1390915))

(assert (= (and b!1390915 res!931037) b!1390913))

(assert (= (and b!1390913 res!931040) b!1390916))

(assert (= (and b!1390916 res!931039) b!1390917))

(assert (= (and b!1390917 res!931038) b!1390914))

(declare-fun m!1276795 () Bool)

(assert (=> b!1390915 m!1276795))

(assert (=> b!1390915 m!1276795))

(declare-fun m!1276797 () Bool)

(assert (=> b!1390915 m!1276797))

(declare-fun m!1276799 () Bool)

(assert (=> b!1390913 m!1276799))

(assert (=> b!1390914 m!1276795))

(assert (=> b!1390914 m!1276795))

(declare-fun m!1276801 () Bool)

(assert (=> b!1390914 m!1276801))

(declare-fun m!1276803 () Bool)

(assert (=> b!1390916 m!1276803))

(declare-fun m!1276805 () Bool)

(assert (=> start!119322 m!1276805))

(declare-fun m!1276807 () Bool)

(assert (=> start!119322 m!1276807))

(declare-fun m!1276809 () Bool)

(assert (=> b!1390918 m!1276809))

(assert (=> b!1390918 m!1276809))

(declare-fun m!1276811 () Bool)

(assert (=> b!1390918 m!1276811))

(assert (=> b!1390917 m!1276795))

(declare-fun m!1276813 () Bool)

(assert (=> b!1390917 m!1276813))

(assert (=> b!1390917 m!1276795))

(declare-fun m!1276815 () Bool)

(assert (=> b!1390917 m!1276815))

(assert (=> b!1390917 m!1276813))

(assert (=> b!1390917 m!1276795))

(declare-fun m!1276817 () Bool)

(assert (=> b!1390917 m!1276817))

(declare-fun m!1276819 () Bool)

(assert (=> b!1390917 m!1276819))

(check-sat (not b!1390917) (not b!1390918) (not start!119322) (not b!1390914) (not b!1390913) (not b!1390915) (not b!1390916))
