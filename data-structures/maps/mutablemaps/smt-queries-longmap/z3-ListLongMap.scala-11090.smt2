; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129596 () Bool)

(assert start!129596)

(declare-fun b!1520866 () Bool)

(declare-fun res!1040232 () Bool)

(declare-fun e!848365 () Bool)

(assert (=> b!1520866 (=> (not res!1040232) (not e!848365))))

(declare-datatypes ((array!101198 0))(
  ( (array!101199 (arr!48827 (Array (_ BitVec 32) (_ BitVec 64))) (size!49378 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101198)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101198 (_ BitVec 32)) Bool)

(assert (=> b!1520866 (= res!1040232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520867 () Bool)

(declare-fun res!1040231 () Bool)

(assert (=> b!1520867 (=> (not res!1040231) (not e!848365))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1520867 (= res!1040231 (and (= (size!49378 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49378 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49378 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1040226 () Bool)

(assert (=> start!129596 (=> (not res!1040226) (not e!848365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129596 (= res!1040226 (validMask!0 mask!2512))))

(assert (=> start!129596 e!848365))

(assert (=> start!129596 true))

(declare-fun array_inv!37772 (array!101198) Bool)

(assert (=> start!129596 (array_inv!37772 a!2804)))

(declare-fun b!1520868 () Bool)

(declare-fun res!1040230 () Bool)

(assert (=> b!1520868 (=> (not res!1040230) (not e!848365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520868 (= res!1040230 (validKeyInArray!0 (select (arr!48827 a!2804) j!70)))))

(declare-fun b!1520869 () Bool)

(declare-fun res!1040227 () Bool)

(assert (=> b!1520869 (=> (not res!1040227) (not e!848365))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1520869 (= res!1040227 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49378 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49378 a!2804))))))

(declare-fun b!1520870 () Bool)

(assert (=> b!1520870 (= e!848365 false)))

(declare-fun lt!659215 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520870 (= lt!659215 (toIndex!0 (select (arr!48827 a!2804) j!70) mask!2512))))

(declare-fun b!1520871 () Bool)

(declare-fun res!1040228 () Bool)

(assert (=> b!1520871 (=> (not res!1040228) (not e!848365))))

(declare-datatypes ((List!35490 0))(
  ( (Nil!35487) (Cons!35486 (h!36908 (_ BitVec 64)) (t!50191 List!35490)) )
))
(declare-fun arrayNoDuplicates!0 (array!101198 (_ BitVec 32) List!35490) Bool)

(assert (=> b!1520871 (= res!1040228 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35487))))

(declare-fun b!1520872 () Bool)

(declare-fun res!1040229 () Bool)

(assert (=> b!1520872 (=> (not res!1040229) (not e!848365))))

(assert (=> b!1520872 (= res!1040229 (validKeyInArray!0 (select (arr!48827 a!2804) i!961)))))

(assert (= (and start!129596 res!1040226) b!1520867))

(assert (= (and b!1520867 res!1040231) b!1520872))

(assert (= (and b!1520872 res!1040229) b!1520868))

(assert (= (and b!1520868 res!1040230) b!1520866))

(assert (= (and b!1520866 res!1040232) b!1520871))

(assert (= (and b!1520871 res!1040228) b!1520869))

(assert (= (and b!1520869 res!1040227) b!1520870))

(declare-fun m!1404047 () Bool)

(assert (=> b!1520872 m!1404047))

(assert (=> b!1520872 m!1404047))

(declare-fun m!1404049 () Bool)

(assert (=> b!1520872 m!1404049))

(declare-fun m!1404051 () Bool)

(assert (=> b!1520870 m!1404051))

(assert (=> b!1520870 m!1404051))

(declare-fun m!1404053 () Bool)

(assert (=> b!1520870 m!1404053))

(declare-fun m!1404055 () Bool)

(assert (=> start!129596 m!1404055))

(declare-fun m!1404057 () Bool)

(assert (=> start!129596 m!1404057))

(declare-fun m!1404059 () Bool)

(assert (=> b!1520871 m!1404059))

(assert (=> b!1520868 m!1404051))

(assert (=> b!1520868 m!1404051))

(declare-fun m!1404061 () Bool)

(assert (=> b!1520868 m!1404061))

(declare-fun m!1404063 () Bool)

(assert (=> b!1520866 m!1404063))

(check-sat (not b!1520868) (not start!129596) (not b!1520871) (not b!1520870) (not b!1520866) (not b!1520872))
