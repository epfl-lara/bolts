; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122146 () Bool)

(assert start!122146)

(declare-fun b!1416864 () Bool)

(declare-fun e!801927 () Bool)

(declare-fun e!801926 () Bool)

(assert (=> b!1416864 (= e!801927 (not e!801926))))

(declare-fun res!952850 () Bool)

(assert (=> b!1416864 (=> res!952850 e!801926)))

(declare-datatypes ((SeekEntryResult!11008 0))(
  ( (MissingZero!11008 (index!46423 (_ BitVec 32))) (Found!11008 (index!46424 (_ BitVec 32))) (Intermediate!11008 (undefined!11820 Bool) (index!46425 (_ BitVec 32)) (x!128032 (_ BitVec 32))) (Undefined!11008) (MissingVacant!11008 (index!46426 (_ BitVec 32))) )
))
(declare-fun lt!625115 () SeekEntryResult!11008)

(assert (=> b!1416864 (= res!952850 (or (not (is-Intermediate!11008 lt!625115)) (undefined!11820 lt!625115)))))

(declare-fun e!801928 () Bool)

(assert (=> b!1416864 e!801928))

(declare-fun res!952855 () Bool)

(assert (=> b!1416864 (=> (not res!952855) (not e!801928))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96699 0))(
  ( (array!96700 (arr!46675 (Array (_ BitVec 32) (_ BitVec 64))) (size!47226 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96699)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96699 (_ BitVec 32)) Bool)

(assert (=> b!1416864 (= res!952855 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47940 0))(
  ( (Unit!47941) )
))
(declare-fun lt!625117 () Unit!47940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47940)

(assert (=> b!1416864 (= lt!625117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96699 (_ BitVec 32)) SeekEntryResult!11008)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416864 (= lt!625115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46675 a!2901) j!112) mask!2840) (select (arr!46675 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416865 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96699 (_ BitVec 32)) SeekEntryResult!11008)

(assert (=> b!1416865 (= e!801928 (= (seekEntryOrOpen!0 (select (arr!46675 a!2901) j!112) a!2901 mask!2840) (Found!11008 j!112)))))

(declare-fun b!1416866 () Bool)

(declare-fun res!952857 () Bool)

(assert (=> b!1416866 (=> (not res!952857) (not e!801927))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416866 (= res!952857 (validKeyInArray!0 (select (arr!46675 a!2901) i!1037)))))

(declare-fun res!952851 () Bool)

(assert (=> start!122146 (=> (not res!952851) (not e!801927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122146 (= res!952851 (validMask!0 mask!2840))))

(assert (=> start!122146 e!801927))

(assert (=> start!122146 true))

(declare-fun array_inv!35620 (array!96699) Bool)

(assert (=> start!122146 (array_inv!35620 a!2901)))

(declare-fun b!1416867 () Bool)

(declare-fun res!952853 () Bool)

(assert (=> b!1416867 (=> (not res!952853) (not e!801927))))

(declare-datatypes ((List!33374 0))(
  ( (Nil!33371) (Cons!33370 (h!34660 (_ BitVec 64)) (t!48075 List!33374)) )
))
(declare-fun arrayNoDuplicates!0 (array!96699 (_ BitVec 32) List!33374) Bool)

(assert (=> b!1416867 (= res!952853 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33371))))

(declare-fun b!1416868 () Bool)

(assert (=> b!1416868 (= e!801926 true)))

(declare-fun lt!625116 () SeekEntryResult!11008)

(assert (=> b!1416868 (= lt!625116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46675 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46675 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96700 (store (arr!46675 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47226 a!2901)) mask!2840))))

(declare-fun b!1416869 () Bool)

(declare-fun res!952852 () Bool)

(assert (=> b!1416869 (=> (not res!952852) (not e!801927))))

(assert (=> b!1416869 (= res!952852 (and (= (size!47226 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47226 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47226 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416870 () Bool)

(declare-fun res!952854 () Bool)

(assert (=> b!1416870 (=> (not res!952854) (not e!801927))))

(assert (=> b!1416870 (= res!952854 (validKeyInArray!0 (select (arr!46675 a!2901) j!112)))))

(declare-fun b!1416871 () Bool)

(declare-fun res!952856 () Bool)

(assert (=> b!1416871 (=> (not res!952856) (not e!801927))))

(assert (=> b!1416871 (= res!952856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122146 res!952851) b!1416869))

(assert (= (and b!1416869 res!952852) b!1416866))

(assert (= (and b!1416866 res!952857) b!1416870))

(assert (= (and b!1416870 res!952854) b!1416871))

(assert (= (and b!1416871 res!952856) b!1416867))

(assert (= (and b!1416867 res!952853) b!1416864))

(assert (= (and b!1416864 res!952855) b!1416865))

(assert (= (and b!1416864 (not res!952850)) b!1416868))

(declare-fun m!1307651 () Bool)

(assert (=> start!122146 m!1307651))

(declare-fun m!1307653 () Bool)

(assert (=> start!122146 m!1307653))

(declare-fun m!1307655 () Bool)

(assert (=> b!1416864 m!1307655))

(declare-fun m!1307657 () Bool)

(assert (=> b!1416864 m!1307657))

(assert (=> b!1416864 m!1307655))

(declare-fun m!1307659 () Bool)

(assert (=> b!1416864 m!1307659))

(assert (=> b!1416864 m!1307657))

(assert (=> b!1416864 m!1307655))

(declare-fun m!1307661 () Bool)

(assert (=> b!1416864 m!1307661))

(declare-fun m!1307663 () Bool)

(assert (=> b!1416864 m!1307663))

(assert (=> b!1416865 m!1307655))

(assert (=> b!1416865 m!1307655))

(declare-fun m!1307665 () Bool)

(assert (=> b!1416865 m!1307665))

(declare-fun m!1307667 () Bool)

(assert (=> b!1416871 m!1307667))

(declare-fun m!1307669 () Bool)

(assert (=> b!1416867 m!1307669))

(declare-fun m!1307671 () Bool)

(assert (=> b!1416866 m!1307671))

(assert (=> b!1416866 m!1307671))

(declare-fun m!1307673 () Bool)

(assert (=> b!1416866 m!1307673))

(assert (=> b!1416870 m!1307655))

(assert (=> b!1416870 m!1307655))

(declare-fun m!1307675 () Bool)

(assert (=> b!1416870 m!1307675))

(declare-fun m!1307677 () Bool)

(assert (=> b!1416868 m!1307677))

(declare-fun m!1307679 () Bool)

(assert (=> b!1416868 m!1307679))

(assert (=> b!1416868 m!1307679))

(declare-fun m!1307681 () Bool)

(assert (=> b!1416868 m!1307681))

(assert (=> b!1416868 m!1307681))

(assert (=> b!1416868 m!1307679))

(declare-fun m!1307683 () Bool)

(assert (=> b!1416868 m!1307683))

(push 1)

(assert (not b!1416870))

(assert (not b!1416866))

(assert (not b!1416865))

(assert (not start!122146))

(assert (not b!1416867))

(assert (not b!1416871))

(assert (not b!1416868))

(assert (not b!1416864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

