; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128464 () Bool)

(assert start!128464)

(declare-fun b!1506142 () Bool)

(declare-fun e!841804 () Bool)

(assert (=> b!1506142 (= e!841804 false)))

(declare-fun lt!654127 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100422 0))(
  ( (array!100423 (arr!48451 (Array (_ BitVec 32) (_ BitVec 64))) (size!49002 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100422)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506142 (= lt!654127 (toIndex!0 (select (arr!48451 a!2804) j!70) mask!2512))))

(declare-fun b!1506143 () Bool)

(declare-fun res!1026573 () Bool)

(assert (=> b!1506143 (=> (not res!1026573) (not e!841804))))

(declare-datatypes ((List!35114 0))(
  ( (Nil!35111) (Cons!35110 (h!36508 (_ BitVec 64)) (t!49815 List!35114)) )
))
(declare-fun arrayNoDuplicates!0 (array!100422 (_ BitVec 32) List!35114) Bool)

(assert (=> b!1506143 (= res!1026573 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35111))))

(declare-fun b!1506144 () Bool)

(declare-fun res!1026576 () Bool)

(assert (=> b!1506144 (=> (not res!1026576) (not e!841804))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506144 (= res!1026576 (validKeyInArray!0 (select (arr!48451 a!2804) i!961)))))

(declare-fun b!1506145 () Bool)

(declare-fun res!1026575 () Bool)

(assert (=> b!1506145 (=> (not res!1026575) (not e!841804))))

(assert (=> b!1506145 (= res!1026575 (validKeyInArray!0 (select (arr!48451 a!2804) j!70)))))

(declare-fun b!1506146 () Bool)

(declare-fun res!1026571 () Bool)

(assert (=> b!1506146 (=> (not res!1026571) (not e!841804))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506146 (= res!1026571 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49002 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49002 a!2804))))))

(declare-fun b!1506147 () Bool)

(declare-fun res!1026570 () Bool)

(assert (=> b!1506147 (=> (not res!1026570) (not e!841804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100422 (_ BitVec 32)) Bool)

(assert (=> b!1506147 (= res!1026570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506148 () Bool)

(declare-fun res!1026574 () Bool)

(assert (=> b!1506148 (=> (not res!1026574) (not e!841804))))

(assert (=> b!1506148 (= res!1026574 (and (= (size!49002 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49002 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49002 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1026572 () Bool)

(assert (=> start!128464 (=> (not res!1026572) (not e!841804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128464 (= res!1026572 (validMask!0 mask!2512))))

(assert (=> start!128464 e!841804))

(assert (=> start!128464 true))

(declare-fun array_inv!37396 (array!100422) Bool)

(assert (=> start!128464 (array_inv!37396 a!2804)))

(assert (= (and start!128464 res!1026572) b!1506148))

(assert (= (and b!1506148 res!1026574) b!1506144))

(assert (= (and b!1506144 res!1026576) b!1506145))

(assert (= (and b!1506145 res!1026575) b!1506147))

(assert (= (and b!1506147 res!1026570) b!1506143))

(assert (= (and b!1506143 res!1026573) b!1506146))

(assert (= (and b!1506146 res!1026571) b!1506142))

(declare-fun m!1389201 () Bool)

(assert (=> b!1506144 m!1389201))

(assert (=> b!1506144 m!1389201))

(declare-fun m!1389203 () Bool)

(assert (=> b!1506144 m!1389203))

(declare-fun m!1389205 () Bool)

(assert (=> start!128464 m!1389205))

(declare-fun m!1389207 () Bool)

(assert (=> start!128464 m!1389207))

(declare-fun m!1389209 () Bool)

(assert (=> b!1506143 m!1389209))

(declare-fun m!1389211 () Bool)

(assert (=> b!1506147 m!1389211))

(declare-fun m!1389213 () Bool)

(assert (=> b!1506145 m!1389213))

(assert (=> b!1506145 m!1389213))

(declare-fun m!1389215 () Bool)

(assert (=> b!1506145 m!1389215))

(assert (=> b!1506142 m!1389213))

(assert (=> b!1506142 m!1389213))

(declare-fun m!1389217 () Bool)

(assert (=> b!1506142 m!1389217))

(push 1)

(assert (not b!1506143))

(assert (not b!1506142))

(assert (not b!1506144))

(assert (not start!128464))

(assert (not b!1506147))

(assert (not b!1506145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

