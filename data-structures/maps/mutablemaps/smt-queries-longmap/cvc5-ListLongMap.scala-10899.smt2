; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127702 () Bool)

(assert start!127702)

(declare-fun b!1499770 () Bool)

(declare-fun res!1020921 () Bool)

(declare-fun e!839417 () Bool)

(assert (=> b!1499770 (=> (not res!1020921) (not e!839417))))

(declare-datatypes ((array!99996 0))(
  ( (array!99997 (arr!48253 (Array (_ BitVec 32) (_ BitVec 64))) (size!48804 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99996)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499770 (= res!1020921 (validKeyInArray!0 (select (arr!48253 a!2850) i!996)))))

(declare-fun b!1499771 () Bool)

(declare-fun e!839415 () Bool)

(assert (=> b!1499771 (= e!839417 e!839415)))

(declare-fun res!1020926 () Bool)

(assert (=> b!1499771 (=> (not res!1020926) (not e!839415))))

(declare-fun lt!652773 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1499771 (= res!1020926 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652773 #b00000000000000000000000000000000) (bvslt lt!652773 (size!48804 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499771 (= lt!652773 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499772 () Bool)

(declare-fun res!1020919 () Bool)

(assert (=> b!1499772 (=> (not res!1020919) (not e!839417))))

(declare-datatypes ((List!34925 0))(
  ( (Nil!34922) (Cons!34921 (h!36319 (_ BitVec 64)) (t!49626 List!34925)) )
))
(declare-fun arrayNoDuplicates!0 (array!99996 (_ BitVec 32) List!34925) Bool)

(assert (=> b!1499772 (= res!1020919 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34922))))

(declare-fun b!1499773 () Bool)

(assert (=> b!1499773 (= e!839415 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12482 0))(
  ( (MissingZero!12482 (index!52319 (_ BitVec 32))) (Found!12482 (index!52320 (_ BitVec 32))) (Intermediate!12482 (undefined!13294 Bool) (index!52321 (_ BitVec 32)) (x!134017 (_ BitVec 32))) (Undefined!12482) (MissingVacant!12482 (index!52322 (_ BitVec 32))) )
))
(declare-fun lt!652774 () SeekEntryResult!12482)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99996 (_ BitVec 32)) SeekEntryResult!12482)

(assert (=> b!1499773 (= lt!652774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652773 vacantBefore!10 (select (arr!48253 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499774 () Bool)

(declare-fun res!1020923 () Bool)

(assert (=> b!1499774 (=> (not res!1020923) (not e!839417))))

(assert (=> b!1499774 (= res!1020923 (validKeyInArray!0 (select (arr!48253 a!2850) j!87)))))

(declare-fun b!1499775 () Bool)

(declare-fun res!1020924 () Bool)

(assert (=> b!1499775 (=> (not res!1020924) (not e!839417))))

(assert (=> b!1499775 (= res!1020924 (not (= (select (arr!48253 a!2850) index!625) (select (arr!48253 a!2850) j!87))))))

(declare-fun b!1499776 () Bool)

(declare-fun res!1020922 () Bool)

(assert (=> b!1499776 (=> (not res!1020922) (not e!839417))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499776 (= res!1020922 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48804 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48804 a!2850)) (= (select (arr!48253 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48253 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48804 a!2850))))))

(declare-fun res!1020925 () Bool)

(assert (=> start!127702 (=> (not res!1020925) (not e!839417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127702 (= res!1020925 (validMask!0 mask!2661))))

(assert (=> start!127702 e!839417))

(assert (=> start!127702 true))

(declare-fun array_inv!37198 (array!99996) Bool)

(assert (=> start!127702 (array_inv!37198 a!2850)))

(declare-fun b!1499777 () Bool)

(declare-fun res!1020918 () Bool)

(assert (=> b!1499777 (=> (not res!1020918) (not e!839417))))

(assert (=> b!1499777 (= res!1020918 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48253 a!2850) j!87) a!2850 mask!2661) (Found!12482 j!87)))))

(declare-fun b!1499778 () Bool)

(declare-fun res!1020927 () Bool)

(assert (=> b!1499778 (=> (not res!1020927) (not e!839417))))

(assert (=> b!1499778 (= res!1020927 (and (= (size!48804 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48804 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48804 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499779 () Bool)

(declare-fun res!1020920 () Bool)

(assert (=> b!1499779 (=> (not res!1020920) (not e!839417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99996 (_ BitVec 32)) Bool)

(assert (=> b!1499779 (= res!1020920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127702 res!1020925) b!1499778))

(assert (= (and b!1499778 res!1020927) b!1499770))

(assert (= (and b!1499770 res!1020921) b!1499774))

(assert (= (and b!1499774 res!1020923) b!1499779))

(assert (= (and b!1499779 res!1020920) b!1499772))

(assert (= (and b!1499772 res!1020919) b!1499776))

(assert (= (and b!1499776 res!1020922) b!1499777))

(assert (= (and b!1499777 res!1020918) b!1499775))

(assert (= (and b!1499775 res!1020924) b!1499771))

(assert (= (and b!1499771 res!1020926) b!1499773))

(declare-fun m!1383021 () Bool)

(assert (=> b!1499777 m!1383021))

(assert (=> b!1499777 m!1383021))

(declare-fun m!1383023 () Bool)

(assert (=> b!1499777 m!1383023))

(declare-fun m!1383025 () Bool)

(assert (=> b!1499770 m!1383025))

(assert (=> b!1499770 m!1383025))

(declare-fun m!1383027 () Bool)

(assert (=> b!1499770 m!1383027))

(assert (=> b!1499774 m!1383021))

(assert (=> b!1499774 m!1383021))

(declare-fun m!1383029 () Bool)

(assert (=> b!1499774 m!1383029))

(declare-fun m!1383031 () Bool)

(assert (=> b!1499772 m!1383031))

(declare-fun m!1383033 () Bool)

(assert (=> b!1499771 m!1383033))

(declare-fun m!1383035 () Bool)

(assert (=> start!127702 m!1383035))

(declare-fun m!1383037 () Bool)

(assert (=> start!127702 m!1383037))

(assert (=> b!1499773 m!1383021))

(assert (=> b!1499773 m!1383021))

(declare-fun m!1383039 () Bool)

(assert (=> b!1499773 m!1383039))

(declare-fun m!1383041 () Bool)

(assert (=> b!1499776 m!1383041))

(declare-fun m!1383043 () Bool)

(assert (=> b!1499776 m!1383043))

(declare-fun m!1383045 () Bool)

(assert (=> b!1499776 m!1383045))

(declare-fun m!1383047 () Bool)

(assert (=> b!1499779 m!1383047))

(declare-fun m!1383049 () Bool)

(assert (=> b!1499775 m!1383049))

(assert (=> b!1499775 m!1383021))

(push 1)

