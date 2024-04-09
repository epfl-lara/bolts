; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129606 () Bool)

(assert start!129606)

(declare-fun b!1520973 () Bool)

(declare-fun res!1040336 () Bool)

(declare-fun e!848395 () Bool)

(assert (=> b!1520973 (=> (not res!1040336) (not e!848395))))

(declare-datatypes ((array!101208 0))(
  ( (array!101209 (arr!48832 (Array (_ BitVec 32) (_ BitVec 64))) (size!49383 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101208)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101208 (_ BitVec 32)) Bool)

(assert (=> b!1520973 (= res!1040336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520974 () Bool)

(declare-fun res!1040339 () Bool)

(assert (=> b!1520974 (=> (not res!1040339) (not e!848395))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1520974 (= res!1040339 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49383 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49383 a!2804))))))

(declare-fun b!1520975 () Bool)

(declare-fun res!1040335 () Bool)

(assert (=> b!1520975 (=> (not res!1040335) (not e!848395))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13018 0))(
  ( (MissingZero!13018 (index!54466 (_ BitVec 32))) (Found!13018 (index!54467 (_ BitVec 32))) (Intermediate!13018 (undefined!13830 Bool) (index!54468 (_ BitVec 32)) (x!136177 (_ BitVec 32))) (Undefined!13018) (MissingVacant!13018 (index!54469 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101208 (_ BitVec 32)) SeekEntryResult!13018)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520975 (= res!1040335 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48832 a!2804) j!70) mask!2512) (select (arr!48832 a!2804) j!70) a!2804 mask!2512) (Intermediate!13018 false resIndex!21 resX!21)))))

(declare-fun res!1040333 () Bool)

(assert (=> start!129606 (=> (not res!1040333) (not e!848395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129606 (= res!1040333 (validMask!0 mask!2512))))

(assert (=> start!129606 e!848395))

(assert (=> start!129606 true))

(declare-fun array_inv!37777 (array!101208) Bool)

(assert (=> start!129606 (array_inv!37777 a!2804)))

(declare-fun b!1520976 () Bool)

(declare-fun res!1040340 () Bool)

(assert (=> b!1520976 (=> (not res!1040340) (not e!848395))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520976 (= res!1040340 (validKeyInArray!0 (select (arr!48832 a!2804) i!961)))))

(declare-fun b!1520977 () Bool)

(declare-fun res!1040337 () Bool)

(assert (=> b!1520977 (=> (not res!1040337) (not e!848395))))

(assert (=> b!1520977 (= res!1040337 (validKeyInArray!0 (select (arr!48832 a!2804) j!70)))))

(declare-fun b!1520978 () Bool)

(assert (=> b!1520978 (= e!848395 false)))

(declare-fun lt!659230 () SeekEntryResult!13018)

(assert (=> b!1520978 (= lt!659230 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48832 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520979 () Bool)

(declare-fun res!1040334 () Bool)

(assert (=> b!1520979 (=> (not res!1040334) (not e!848395))))

(declare-datatypes ((List!35495 0))(
  ( (Nil!35492) (Cons!35491 (h!36913 (_ BitVec 64)) (t!50196 List!35495)) )
))
(declare-fun arrayNoDuplicates!0 (array!101208 (_ BitVec 32) List!35495) Bool)

(assert (=> b!1520979 (= res!1040334 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35492))))

(declare-fun b!1520980 () Bool)

(declare-fun res!1040338 () Bool)

(assert (=> b!1520980 (=> (not res!1040338) (not e!848395))))

(assert (=> b!1520980 (= res!1040338 (and (= (size!49383 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49383 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49383 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129606 res!1040333) b!1520980))

(assert (= (and b!1520980 res!1040338) b!1520976))

(assert (= (and b!1520976 res!1040340) b!1520977))

(assert (= (and b!1520977 res!1040337) b!1520973))

(assert (= (and b!1520973 res!1040336) b!1520979))

(assert (= (and b!1520979 res!1040334) b!1520974))

(assert (= (and b!1520974 res!1040339) b!1520975))

(assert (= (and b!1520975 res!1040335) b!1520978))

(declare-fun m!1404143 () Bool)

(assert (=> b!1520979 m!1404143))

(declare-fun m!1404145 () Bool)

(assert (=> start!129606 m!1404145))

(declare-fun m!1404147 () Bool)

(assert (=> start!129606 m!1404147))

(declare-fun m!1404149 () Bool)

(assert (=> b!1520973 m!1404149))

(declare-fun m!1404151 () Bool)

(assert (=> b!1520975 m!1404151))

(assert (=> b!1520975 m!1404151))

(declare-fun m!1404153 () Bool)

(assert (=> b!1520975 m!1404153))

(assert (=> b!1520975 m!1404153))

(assert (=> b!1520975 m!1404151))

(declare-fun m!1404155 () Bool)

(assert (=> b!1520975 m!1404155))

(assert (=> b!1520978 m!1404151))

(assert (=> b!1520978 m!1404151))

(declare-fun m!1404157 () Bool)

(assert (=> b!1520978 m!1404157))

(assert (=> b!1520977 m!1404151))

(assert (=> b!1520977 m!1404151))

(declare-fun m!1404159 () Bool)

(assert (=> b!1520977 m!1404159))

(declare-fun m!1404161 () Bool)

(assert (=> b!1520976 m!1404161))

(assert (=> b!1520976 m!1404161))

(declare-fun m!1404163 () Bool)

(assert (=> b!1520976 m!1404163))

(push 1)

(assert (not b!1520978))

(assert (not b!1520975))

(assert (not b!1520973))

(assert (not b!1520979))

(assert (not start!129606))

(assert (not b!1520977))

(assert (not b!1520976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

