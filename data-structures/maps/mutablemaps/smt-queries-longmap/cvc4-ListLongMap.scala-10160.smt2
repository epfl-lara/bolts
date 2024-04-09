; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119768 () Bool)

(assert start!119768)

(declare-fun b!1394651 () Bool)

(declare-fun e!789620 () Bool)

(declare-fun e!789619 () Bool)

(assert (=> b!1394651 (= e!789620 (not e!789619))))

(declare-fun res!934172 () Bool)

(assert (=> b!1394651 (=> res!934172 e!789619)))

(declare-datatypes ((SeekEntryResult!10377 0))(
  ( (MissingZero!10377 (index!43878 (_ BitVec 32))) (Found!10377 (index!43879 (_ BitVec 32))) (Intermediate!10377 (undefined!11189 Bool) (index!43880 (_ BitVec 32)) (x!125544 (_ BitVec 32))) (Undefined!10377) (MissingVacant!10377 (index!43881 (_ BitVec 32))) )
))
(declare-fun lt!612641 () SeekEntryResult!10377)

(assert (=> b!1394651 (= res!934172 (or (not (is-Intermediate!10377 lt!612641)) (undefined!11189 lt!612641)))))

(declare-fun lt!612646 () SeekEntryResult!10377)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394651 (= lt!612646 (Found!10377 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95368 0))(
  ( (array!95369 (arr!46038 (Array (_ BitVec 32) (_ BitVec 64))) (size!46589 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95368)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95368 (_ BitVec 32)) SeekEntryResult!10377)

(assert (=> b!1394651 (= lt!612646 (seekEntryOrOpen!0 (select (arr!46038 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95368 (_ BitVec 32)) Bool)

(assert (=> b!1394651 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46708 0))(
  ( (Unit!46709) )
))
(declare-fun lt!612643 () Unit!46708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46708)

(assert (=> b!1394651 (= lt!612643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612642 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95368 (_ BitVec 32)) SeekEntryResult!10377)

(assert (=> b!1394651 (= lt!612641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612642 (select (arr!46038 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394651 (= lt!612642 (toIndex!0 (select (arr!46038 a!2901) j!112) mask!2840))))

(declare-fun b!1394652 () Bool)

(declare-fun res!934173 () Bool)

(assert (=> b!1394652 (=> (not res!934173) (not e!789620))))

(declare-datatypes ((List!32737 0))(
  ( (Nil!32734) (Cons!32733 (h!33966 (_ BitVec 64)) (t!47438 List!32737)) )
))
(declare-fun arrayNoDuplicates!0 (array!95368 (_ BitVec 32) List!32737) Bool)

(assert (=> b!1394652 (= res!934173 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32734))))

(declare-fun b!1394653 () Bool)

(declare-fun res!934176 () Bool)

(assert (=> b!1394653 (=> (not res!934176) (not e!789620))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394653 (= res!934176 (and (= (size!46589 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46589 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46589 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394654 () Bool)

(declare-fun e!789618 () Bool)

(assert (=> b!1394654 (= e!789619 e!789618)))

(declare-fun res!934174 () Bool)

(assert (=> b!1394654 (=> res!934174 e!789618)))

(declare-fun lt!612644 () array!95368)

(declare-fun lt!612645 () (_ BitVec 64))

(assert (=> b!1394654 (= res!934174 (not (= lt!612641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612645 mask!2840) lt!612645 lt!612644 mask!2840))))))

(assert (=> b!1394654 (= lt!612645 (select (store (arr!46038 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394654 (= lt!612644 (array!95369 (store (arr!46038 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46589 a!2901)))))

(declare-fun b!1394655 () Bool)

(assert (=> b!1394655 (= e!789618 true)))

(assert (=> b!1394655 (= lt!612646 (seekEntryOrOpen!0 lt!612645 lt!612644 mask!2840))))

(declare-fun lt!612640 () Unit!46708)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46708)

(assert (=> b!1394655 (= lt!612640 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612642 (x!125544 lt!612641) (index!43880 lt!612641) mask!2840))))

(declare-fun res!934171 () Bool)

(assert (=> start!119768 (=> (not res!934171) (not e!789620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119768 (= res!934171 (validMask!0 mask!2840))))

(assert (=> start!119768 e!789620))

(assert (=> start!119768 true))

(declare-fun array_inv!34983 (array!95368) Bool)

(assert (=> start!119768 (array_inv!34983 a!2901)))

(declare-fun b!1394656 () Bool)

(declare-fun res!934175 () Bool)

(assert (=> b!1394656 (=> (not res!934175) (not e!789620))))

(assert (=> b!1394656 (= res!934175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394657 () Bool)

(declare-fun res!934168 () Bool)

(assert (=> b!1394657 (=> res!934168 e!789618)))

(assert (=> b!1394657 (= res!934168 (or (bvslt (x!125544 lt!612641) #b00000000000000000000000000000000) (bvsgt (x!125544 lt!612641) #b01111111111111111111111111111110) (bvslt lt!612642 #b00000000000000000000000000000000) (bvsge lt!612642 (size!46589 a!2901)) (bvslt (index!43880 lt!612641) #b00000000000000000000000000000000) (bvsge (index!43880 lt!612641) (size!46589 a!2901)) (not (= lt!612641 (Intermediate!10377 false (index!43880 lt!612641) (x!125544 lt!612641))))))))

(declare-fun b!1394658 () Bool)

(declare-fun res!934169 () Bool)

(assert (=> b!1394658 (=> (not res!934169) (not e!789620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394658 (= res!934169 (validKeyInArray!0 (select (arr!46038 a!2901) j!112)))))

(declare-fun b!1394659 () Bool)

(declare-fun res!934170 () Bool)

(assert (=> b!1394659 (=> (not res!934170) (not e!789620))))

(assert (=> b!1394659 (= res!934170 (validKeyInArray!0 (select (arr!46038 a!2901) i!1037)))))

(assert (= (and start!119768 res!934171) b!1394653))

(assert (= (and b!1394653 res!934176) b!1394659))

(assert (= (and b!1394659 res!934170) b!1394658))

(assert (= (and b!1394658 res!934169) b!1394656))

(assert (= (and b!1394656 res!934175) b!1394652))

(assert (= (and b!1394652 res!934173) b!1394651))

(assert (= (and b!1394651 (not res!934172)) b!1394654))

(assert (= (and b!1394654 (not res!934174)) b!1394657))

(assert (= (and b!1394657 (not res!934168)) b!1394655))

(declare-fun m!1281153 () Bool)

(assert (=> start!119768 m!1281153))

(declare-fun m!1281155 () Bool)

(assert (=> start!119768 m!1281155))

(declare-fun m!1281157 () Bool)

(assert (=> b!1394656 m!1281157))

(declare-fun m!1281159 () Bool)

(assert (=> b!1394651 m!1281159))

(declare-fun m!1281161 () Bool)

(assert (=> b!1394651 m!1281161))

(assert (=> b!1394651 m!1281159))

(declare-fun m!1281163 () Bool)

(assert (=> b!1394651 m!1281163))

(assert (=> b!1394651 m!1281159))

(declare-fun m!1281165 () Bool)

(assert (=> b!1394651 m!1281165))

(declare-fun m!1281167 () Bool)

(assert (=> b!1394651 m!1281167))

(assert (=> b!1394651 m!1281159))

(declare-fun m!1281169 () Bool)

(assert (=> b!1394651 m!1281169))

(declare-fun m!1281171 () Bool)

(assert (=> b!1394655 m!1281171))

(declare-fun m!1281173 () Bool)

(assert (=> b!1394655 m!1281173))

(declare-fun m!1281175 () Bool)

(assert (=> b!1394654 m!1281175))

(assert (=> b!1394654 m!1281175))

(declare-fun m!1281177 () Bool)

(assert (=> b!1394654 m!1281177))

(declare-fun m!1281179 () Bool)

(assert (=> b!1394654 m!1281179))

(declare-fun m!1281181 () Bool)

(assert (=> b!1394654 m!1281181))

(declare-fun m!1281183 () Bool)

(assert (=> b!1394659 m!1281183))

(assert (=> b!1394659 m!1281183))

(declare-fun m!1281185 () Bool)

(assert (=> b!1394659 m!1281185))

(assert (=> b!1394658 m!1281159))

(assert (=> b!1394658 m!1281159))

(declare-fun m!1281187 () Bool)

(assert (=> b!1394658 m!1281187))

(declare-fun m!1281189 () Bool)

(assert (=> b!1394652 m!1281189))

(push 1)

