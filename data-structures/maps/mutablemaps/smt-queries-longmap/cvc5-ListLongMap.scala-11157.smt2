; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130396 () Bool)

(assert start!130396)

(declare-fun b!1530191 () Bool)

(declare-fun e!852708 () Bool)

(declare-fun e!852706 () Bool)

(assert (=> b!1530191 (= e!852708 (not e!852706))))

(declare-fun res!1047857 () Bool)

(assert (=> b!1530191 (=> res!1047857 e!852706)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101616 0))(
  ( (array!101617 (arr!49027 (Array (_ BitVec 32) (_ BitVec 64))) (size!49578 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101616)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1530191 (= res!1047857 (or (not (= (select (arr!49027 a!2804) j!70) (select (store (arr!49027 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852709 () Bool)

(assert (=> b!1530191 e!852709))

(declare-fun res!1047855 () Bool)

(assert (=> b!1530191 (=> (not res!1047855) (not e!852709))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101616 (_ BitVec 32)) Bool)

(assert (=> b!1530191 (= res!1047855 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51166 0))(
  ( (Unit!51167) )
))
(declare-fun lt!662699 () Unit!51166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51166)

(assert (=> b!1530191 (= lt!662699 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530192 () Bool)

(declare-fun res!1047862 () Bool)

(declare-fun e!852710 () Bool)

(assert (=> b!1530192 (=> (not res!1047862) (not e!852710))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530192 (= res!1047862 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49578 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49578 a!2804))))))

(declare-fun res!1047858 () Bool)

(assert (=> start!130396 (=> (not res!1047858) (not e!852710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130396 (= res!1047858 (validMask!0 mask!2512))))

(assert (=> start!130396 e!852710))

(assert (=> start!130396 true))

(declare-fun array_inv!37972 (array!101616) Bool)

(assert (=> start!130396 (array_inv!37972 a!2804)))

(declare-fun b!1530193 () Bool)

(declare-fun res!1047853 () Bool)

(assert (=> b!1530193 (=> (not res!1047853) (not e!852710))))

(assert (=> b!1530193 (= res!1047853 (and (= (size!49578 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49578 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49578 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530194 () Bool)

(declare-fun res!1047859 () Bool)

(assert (=> b!1530194 (=> (not res!1047859) (not e!852708))))

(declare-datatypes ((SeekEntryResult!13213 0))(
  ( (MissingZero!13213 (index!55246 (_ BitVec 32))) (Found!13213 (index!55247 (_ BitVec 32))) (Intermediate!13213 (undefined!14025 Bool) (index!55248 (_ BitVec 32)) (x!136944 (_ BitVec 32))) (Undefined!13213) (MissingVacant!13213 (index!55249 (_ BitVec 32))) )
))
(declare-fun lt!662698 () SeekEntryResult!13213)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101616 (_ BitVec 32)) SeekEntryResult!13213)

(assert (=> b!1530194 (= res!1047859 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49027 a!2804) j!70) a!2804 mask!2512) lt!662698))))

(declare-fun b!1530195 () Bool)

(declare-fun res!1047860 () Bool)

(assert (=> b!1530195 (=> (not res!1047860) (not e!852710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530195 (= res!1047860 (validKeyInArray!0 (select (arr!49027 a!2804) i!961)))))

(declare-fun b!1530196 () Bool)

(declare-fun res!1047863 () Bool)

(assert (=> b!1530196 (=> (not res!1047863) (not e!852708))))

(declare-fun lt!662700 () SeekEntryResult!13213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530196 (= res!1047863 (= lt!662700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49027 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49027 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101617 (store (arr!49027 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49578 a!2804)) mask!2512)))))

(declare-fun b!1530197 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101616 (_ BitVec 32)) SeekEntryResult!13213)

(assert (=> b!1530197 (= e!852709 (= (seekEntry!0 (select (arr!49027 a!2804) j!70) a!2804 mask!2512) (Found!13213 j!70)))))

(declare-fun b!1530198 () Bool)

(declare-fun res!1047854 () Bool)

(assert (=> b!1530198 (=> (not res!1047854) (not e!852710))))

(assert (=> b!1530198 (= res!1047854 (validKeyInArray!0 (select (arr!49027 a!2804) j!70)))))

(declare-fun b!1530199 () Bool)

(assert (=> b!1530199 (= e!852710 e!852708)))

(declare-fun res!1047856 () Bool)

(assert (=> b!1530199 (=> (not res!1047856) (not e!852708))))

(assert (=> b!1530199 (= res!1047856 (= lt!662700 lt!662698))))

(assert (=> b!1530199 (= lt!662698 (Intermediate!13213 false resIndex!21 resX!21))))

(assert (=> b!1530199 (= lt!662700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49027 a!2804) j!70) mask!2512) (select (arr!49027 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530200 () Bool)

(declare-fun res!1047861 () Bool)

(assert (=> b!1530200 (=> (not res!1047861) (not e!852710))))

(declare-datatypes ((List!35690 0))(
  ( (Nil!35687) (Cons!35686 (h!37126 (_ BitVec 64)) (t!50391 List!35690)) )
))
(declare-fun arrayNoDuplicates!0 (array!101616 (_ BitVec 32) List!35690) Bool)

(assert (=> b!1530200 (= res!1047861 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35687))))

(declare-fun b!1530201 () Bool)

(assert (=> b!1530201 (= e!852706 true)))

(declare-fun lt!662701 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530201 (= lt!662701 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530202 () Bool)

(declare-fun res!1047864 () Bool)

(assert (=> b!1530202 (=> (not res!1047864) (not e!852710))))

(assert (=> b!1530202 (= res!1047864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130396 res!1047858) b!1530193))

(assert (= (and b!1530193 res!1047853) b!1530195))

(assert (= (and b!1530195 res!1047860) b!1530198))

(assert (= (and b!1530198 res!1047854) b!1530202))

(assert (= (and b!1530202 res!1047864) b!1530200))

(assert (= (and b!1530200 res!1047861) b!1530192))

(assert (= (and b!1530192 res!1047862) b!1530199))

(assert (= (and b!1530199 res!1047856) b!1530194))

(assert (= (and b!1530194 res!1047859) b!1530196))

(assert (= (and b!1530196 res!1047863) b!1530191))

(assert (= (and b!1530191 res!1047855) b!1530197))

(assert (= (and b!1530191 (not res!1047857)) b!1530201))

(declare-fun m!1413105 () Bool)

(assert (=> b!1530198 m!1413105))

(assert (=> b!1530198 m!1413105))

(declare-fun m!1413107 () Bool)

(assert (=> b!1530198 m!1413107))

(declare-fun m!1413109 () Bool)

(assert (=> b!1530200 m!1413109))

(declare-fun m!1413111 () Bool)

(assert (=> b!1530195 m!1413111))

(assert (=> b!1530195 m!1413111))

(declare-fun m!1413113 () Bool)

(assert (=> b!1530195 m!1413113))

(declare-fun m!1413115 () Bool)

(assert (=> b!1530202 m!1413115))

(assert (=> b!1530199 m!1413105))

(assert (=> b!1530199 m!1413105))

(declare-fun m!1413117 () Bool)

(assert (=> b!1530199 m!1413117))

(assert (=> b!1530199 m!1413117))

(assert (=> b!1530199 m!1413105))

(declare-fun m!1413119 () Bool)

(assert (=> b!1530199 m!1413119))

(declare-fun m!1413121 () Bool)

(assert (=> b!1530196 m!1413121))

(declare-fun m!1413123 () Bool)

(assert (=> b!1530196 m!1413123))

(assert (=> b!1530196 m!1413123))

(declare-fun m!1413125 () Bool)

(assert (=> b!1530196 m!1413125))

(assert (=> b!1530196 m!1413125))

(assert (=> b!1530196 m!1413123))

(declare-fun m!1413127 () Bool)

(assert (=> b!1530196 m!1413127))

(declare-fun m!1413129 () Bool)

(assert (=> b!1530201 m!1413129))

(assert (=> b!1530191 m!1413105))

(declare-fun m!1413131 () Bool)

(assert (=> b!1530191 m!1413131))

(assert (=> b!1530191 m!1413121))

(assert (=> b!1530191 m!1413123))

(declare-fun m!1413133 () Bool)

(assert (=> b!1530191 m!1413133))

(declare-fun m!1413135 () Bool)

(assert (=> start!130396 m!1413135))

(declare-fun m!1413137 () Bool)

(assert (=> start!130396 m!1413137))

(assert (=> b!1530194 m!1413105))

(assert (=> b!1530194 m!1413105))

(declare-fun m!1413139 () Bool)

(assert (=> b!1530194 m!1413139))

(assert (=> b!1530197 m!1413105))

(assert (=> b!1530197 m!1413105))

(declare-fun m!1413141 () Bool)

(assert (=> b!1530197 m!1413141))

(push 1)

