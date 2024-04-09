; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127636 () Bool)

(assert start!127636)

(declare-fun b!1498877 () Bool)

(declare-fun res!1020029 () Bool)

(declare-fun e!839161 () Bool)

(assert (=> b!1498877 (=> (not res!1020029) (not e!839161))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99930 0))(
  ( (array!99931 (arr!48220 (Array (_ BitVec 32) (_ BitVec 64))) (size!48771 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99930)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498877 (= res!1020029 (and (= (size!48771 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48771 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48771 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498878 () Bool)

(declare-fun res!1020027 () Bool)

(assert (=> b!1498878 (=> (not res!1020027) (not e!839161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498878 (= res!1020027 (validKeyInArray!0 (select (arr!48220 a!2850) j!87)))))

(declare-fun b!1498879 () Bool)

(declare-fun res!1020031 () Bool)

(assert (=> b!1498879 (=> (not res!1020031) (not e!839161))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498879 (= res!1020031 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48771 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48771 a!2850)) (= (select (arr!48220 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48220 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48771 a!2850))))))

(declare-fun b!1498880 () Bool)

(assert (=> b!1498880 (= e!839161 (not (validKeyInArray!0 (select (store (arr!48220 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))))

(declare-fun b!1498881 () Bool)

(declare-fun res!1020025 () Bool)

(assert (=> b!1498881 (=> (not res!1020025) (not e!839161))))

(declare-datatypes ((SeekEntryResult!12449 0))(
  ( (MissingZero!12449 (index!52187 (_ BitVec 32))) (Found!12449 (index!52188 (_ BitVec 32))) (Intermediate!12449 (undefined!13261 Bool) (index!52189 (_ BitVec 32)) (x!133896 (_ BitVec 32))) (Undefined!12449) (MissingVacant!12449 (index!52190 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99930 (_ BitVec 32)) SeekEntryResult!12449)

(assert (=> b!1498881 (= res!1020025 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48220 a!2850) j!87) a!2850 mask!2661) (Found!12449 j!87)))))

(declare-fun b!1498882 () Bool)

(declare-fun res!1020026 () Bool)

(assert (=> b!1498882 (=> (not res!1020026) (not e!839161))))

(assert (=> b!1498882 (= res!1020026 (validKeyInArray!0 (select (arr!48220 a!2850) i!996)))))

(declare-fun b!1498883 () Bool)

(declare-fun res!1020033 () Bool)

(assert (=> b!1498883 (=> (not res!1020033) (not e!839161))))

(assert (=> b!1498883 (= res!1020033 (and (= (select (arr!48220 a!2850) index!625) (select (arr!48220 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498885 () Bool)

(declare-fun res!1020028 () Bool)

(assert (=> b!1498885 (=> (not res!1020028) (not e!839161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99930 (_ BitVec 32)) Bool)

(assert (=> b!1498885 (= res!1020028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498884 () Bool)

(declare-fun res!1020030 () Bool)

(assert (=> b!1498884 (=> (not res!1020030) (not e!839161))))

(declare-datatypes ((List!34892 0))(
  ( (Nil!34889) (Cons!34888 (h!36286 (_ BitVec 64)) (t!49593 List!34892)) )
))
(declare-fun arrayNoDuplicates!0 (array!99930 (_ BitVec 32) List!34892) Bool)

(assert (=> b!1498884 (= res!1020030 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34889))))

(declare-fun res!1020032 () Bool)

(assert (=> start!127636 (=> (not res!1020032) (not e!839161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127636 (= res!1020032 (validMask!0 mask!2661))))

(assert (=> start!127636 e!839161))

(assert (=> start!127636 true))

(declare-fun array_inv!37165 (array!99930) Bool)

(assert (=> start!127636 (array_inv!37165 a!2850)))

(assert (= (and start!127636 res!1020032) b!1498877))

(assert (= (and b!1498877 res!1020029) b!1498882))

(assert (= (and b!1498882 res!1020026) b!1498878))

(assert (= (and b!1498878 res!1020027) b!1498885))

(assert (= (and b!1498885 res!1020028) b!1498884))

(assert (= (and b!1498884 res!1020030) b!1498879))

(assert (= (and b!1498879 res!1020031) b!1498881))

(assert (= (and b!1498881 res!1020025) b!1498883))

(assert (= (and b!1498883 res!1020033) b!1498880))

(declare-fun m!1382091 () Bool)

(assert (=> b!1498879 m!1382091))

(declare-fun m!1382093 () Bool)

(assert (=> b!1498879 m!1382093))

(declare-fun m!1382095 () Bool)

(assert (=> b!1498879 m!1382095))

(declare-fun m!1382097 () Bool)

(assert (=> b!1498882 m!1382097))

(assert (=> b!1498882 m!1382097))

(declare-fun m!1382099 () Bool)

(assert (=> b!1498882 m!1382099))

(declare-fun m!1382101 () Bool)

(assert (=> b!1498881 m!1382101))

(assert (=> b!1498881 m!1382101))

(declare-fun m!1382103 () Bool)

(assert (=> b!1498881 m!1382103))

(declare-fun m!1382105 () Bool)

(assert (=> b!1498883 m!1382105))

(assert (=> b!1498883 m!1382101))

(declare-fun m!1382107 () Bool)

(assert (=> b!1498885 m!1382107))

(assert (=> b!1498878 m!1382101))

(assert (=> b!1498878 m!1382101))

(declare-fun m!1382109 () Bool)

(assert (=> b!1498878 m!1382109))

(declare-fun m!1382111 () Bool)

(assert (=> start!127636 m!1382111))

(declare-fun m!1382113 () Bool)

(assert (=> start!127636 m!1382113))

(declare-fun m!1382115 () Bool)

(assert (=> b!1498884 m!1382115))

(assert (=> b!1498880 m!1382093))

(declare-fun m!1382117 () Bool)

(assert (=> b!1498880 m!1382117))

(assert (=> b!1498880 m!1382117))

(declare-fun m!1382119 () Bool)

(assert (=> b!1498880 m!1382119))

(push 1)

(assert (not b!1498881))

(assert (not b!1498885))

(assert (not b!1498878))

(assert (not b!1498882))

(assert (not b!1498880))

