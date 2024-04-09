; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127982 () Bool)

(assert start!127982)

(declare-fun b!1502873 () Bool)

(declare-fun res!1023830 () Bool)

(declare-fun e!840505 () Bool)

(assert (=> b!1502873 (=> (not res!1023830) (not e!840505))))

(declare-datatypes ((array!100210 0))(
  ( (array!100211 (arr!48357 (Array (_ BitVec 32) (_ BitVec 64))) (size!48908 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100210)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502873 (= res!1023830 (validKeyInArray!0 (select (arr!48357 a!2850) i!996)))))

(declare-fun b!1502874 () Bool)

(declare-fun res!1023829 () Bool)

(assert (=> b!1502874 (=> (not res!1023829) (not e!840505))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502874 (= res!1023829 (and (= (size!48908 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48908 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48908 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502875 () Bool)

(declare-fun res!1023823 () Bool)

(assert (=> b!1502875 (=> (not res!1023823) (not e!840505))))

(assert (=> b!1502875 (= res!1023823 (validKeyInArray!0 (select (arr!48357 a!2850) j!87)))))

(declare-fun res!1023824 () Bool)

(assert (=> start!127982 (=> (not res!1023824) (not e!840505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127982 (= res!1023824 (validMask!0 mask!2661))))

(assert (=> start!127982 e!840505))

(assert (=> start!127982 true))

(declare-fun array_inv!37302 (array!100210) Bool)

(assert (=> start!127982 (array_inv!37302 a!2850)))

(declare-fun b!1502876 () Bool)

(declare-fun res!1023831 () Bool)

(assert (=> b!1502876 (=> (not res!1023831) (not e!840505))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1502876 (= res!1023831 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48908 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48908 a!2850)) (= (select (arr!48357 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48357 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48908 a!2850))))))

(declare-fun b!1502877 () Bool)

(declare-fun res!1023825 () Bool)

(assert (=> b!1502877 (=> (not res!1023825) (not e!840505))))

(declare-datatypes ((SeekEntryResult!12574 0))(
  ( (MissingZero!12574 (index!52687 (_ BitVec 32))) (Found!12574 (index!52688 (_ BitVec 32))) (Intermediate!12574 (undefined!13386 Bool) (index!52689 (_ BitVec 32)) (x!134387 (_ BitVec 32))) (Undefined!12574) (MissingVacant!12574 (index!52690 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100210 (_ BitVec 32)) SeekEntryResult!12574)

(assert (=> b!1502877 (= res!1023825 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48357 a!2850) j!87) a!2850 mask!2661) (Found!12574 j!87)))))

(declare-fun b!1502878 () Bool)

(assert (=> b!1502878 (= e!840505 false)))

(declare-fun lt!653431 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502878 (= lt!653431 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502879 () Bool)

(declare-fun res!1023827 () Bool)

(assert (=> b!1502879 (=> (not res!1023827) (not e!840505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100210 (_ BitVec 32)) Bool)

(assert (=> b!1502879 (= res!1023827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502880 () Bool)

(declare-fun res!1023828 () Bool)

(assert (=> b!1502880 (=> (not res!1023828) (not e!840505))))

(assert (=> b!1502880 (= res!1023828 (not (= (select (arr!48357 a!2850) index!625) (select (arr!48357 a!2850) j!87))))))

(declare-fun b!1502881 () Bool)

(declare-fun res!1023826 () Bool)

(assert (=> b!1502881 (=> (not res!1023826) (not e!840505))))

(declare-datatypes ((List!35029 0))(
  ( (Nil!35026) (Cons!35025 (h!36423 (_ BitVec 64)) (t!49730 List!35029)) )
))
(declare-fun arrayNoDuplicates!0 (array!100210 (_ BitVec 32) List!35029) Bool)

(assert (=> b!1502881 (= res!1023826 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35026))))

(assert (= (and start!127982 res!1023824) b!1502874))

(assert (= (and b!1502874 res!1023829) b!1502873))

(assert (= (and b!1502873 res!1023830) b!1502875))

(assert (= (and b!1502875 res!1023823) b!1502879))

(assert (= (and b!1502879 res!1023827) b!1502881))

(assert (= (and b!1502881 res!1023826) b!1502876))

(assert (= (and b!1502876 res!1023831) b!1502877))

(assert (= (and b!1502877 res!1023825) b!1502880))

(assert (= (and b!1502880 res!1023828) b!1502878))

(declare-fun m!1386161 () Bool)

(assert (=> b!1502877 m!1386161))

(assert (=> b!1502877 m!1386161))

(declare-fun m!1386163 () Bool)

(assert (=> b!1502877 m!1386163))

(declare-fun m!1386165 () Bool)

(assert (=> b!1502873 m!1386165))

(assert (=> b!1502873 m!1386165))

(declare-fun m!1386167 () Bool)

(assert (=> b!1502873 m!1386167))

(declare-fun m!1386169 () Bool)

(assert (=> b!1502881 m!1386169))

(declare-fun m!1386171 () Bool)

(assert (=> b!1502876 m!1386171))

(declare-fun m!1386173 () Bool)

(assert (=> b!1502876 m!1386173))

(declare-fun m!1386175 () Bool)

(assert (=> b!1502876 m!1386175))

(declare-fun m!1386177 () Bool)

(assert (=> b!1502880 m!1386177))

(assert (=> b!1502880 m!1386161))

(declare-fun m!1386179 () Bool)

(assert (=> b!1502878 m!1386179))

(declare-fun m!1386181 () Bool)

(assert (=> b!1502879 m!1386181))

(assert (=> b!1502875 m!1386161))

(assert (=> b!1502875 m!1386161))

(declare-fun m!1386183 () Bool)

(assert (=> b!1502875 m!1386183))

(declare-fun m!1386185 () Bool)

(assert (=> start!127982 m!1386185))

(declare-fun m!1386187 () Bool)

(assert (=> start!127982 m!1386187))

(push 1)

(assert (not b!1502879))

(assert (not b!1502877))

(assert (not b!1502873))

(assert (not b!1502878))

(assert (not b!1502881))

(assert (not start!127982))

(assert (not b!1502875))

(check-sat)

