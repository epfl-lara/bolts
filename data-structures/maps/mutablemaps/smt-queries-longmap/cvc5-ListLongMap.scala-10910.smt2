; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127768 () Bool)

(assert start!127768)

(declare-fun b!1500760 () Bool)

(declare-fun res!1021908 () Bool)

(declare-fun e!839714 () Bool)

(assert (=> b!1500760 (=> (not res!1021908) (not e!839714))))

(declare-datatypes ((array!100062 0))(
  ( (array!100063 (arr!48286 (Array (_ BitVec 32) (_ BitVec 64))) (size!48837 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100062)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100062 (_ BitVec 32)) Bool)

(assert (=> b!1500760 (= res!1021908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500761 () Bool)

(declare-fun res!1021917 () Bool)

(assert (=> b!1500761 (=> (not res!1021917) (not e!839714))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12515 0))(
  ( (MissingZero!12515 (index!52451 (_ BitVec 32))) (Found!12515 (index!52452 (_ BitVec 32))) (Intermediate!12515 (undefined!13327 Bool) (index!52453 (_ BitVec 32)) (x!134138 (_ BitVec 32))) (Undefined!12515) (MissingVacant!12515 (index!52454 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100062 (_ BitVec 32)) SeekEntryResult!12515)

(assert (=> b!1500761 (= res!1021917 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48286 a!2850) j!87) a!2850 mask!2661) (Found!12515 j!87)))))

(declare-fun b!1500762 () Bool)

(declare-fun res!1021912 () Bool)

(assert (=> b!1500762 (=> (not res!1021912) (not e!839714))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500762 (= res!1021912 (validKeyInArray!0 (select (arr!48286 a!2850) i!996)))))

(declare-fun res!1021916 () Bool)

(assert (=> start!127768 (=> (not res!1021916) (not e!839714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127768 (= res!1021916 (validMask!0 mask!2661))))

(assert (=> start!127768 e!839714))

(assert (=> start!127768 true))

(declare-fun array_inv!37231 (array!100062) Bool)

(assert (=> start!127768 (array_inv!37231 a!2850)))

(declare-fun b!1500763 () Bool)

(declare-fun res!1021913 () Bool)

(assert (=> b!1500763 (=> (not res!1021913) (not e!839714))))

(declare-datatypes ((List!34958 0))(
  ( (Nil!34955) (Cons!34954 (h!36352 (_ BitVec 64)) (t!49659 List!34958)) )
))
(declare-fun arrayNoDuplicates!0 (array!100062 (_ BitVec 32) List!34958) Bool)

(assert (=> b!1500763 (= res!1021913 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34955))))

(declare-fun b!1500764 () Bool)

(declare-fun res!1021914 () Bool)

(assert (=> b!1500764 (=> (not res!1021914) (not e!839714))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500764 (= res!1021914 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48837 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48837 a!2850)) (= (select (arr!48286 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48286 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48837 a!2850))))))

(declare-fun b!1500765 () Bool)

(declare-fun e!839712 () Bool)

(assert (=> b!1500765 (= e!839712 false)))

(declare-fun lt!652972 () (_ BitVec 32))

(declare-fun lt!652971 () SeekEntryResult!12515)

(assert (=> b!1500765 (= lt!652971 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652972 vacantBefore!10 (select (arr!48286 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500766 () Bool)

(assert (=> b!1500766 (= e!839714 e!839712)))

(declare-fun res!1021911 () Bool)

(assert (=> b!1500766 (=> (not res!1021911) (not e!839712))))

(assert (=> b!1500766 (= res!1021911 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652972 #b00000000000000000000000000000000) (bvslt lt!652972 (size!48837 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500766 (= lt!652972 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500767 () Bool)

(declare-fun res!1021909 () Bool)

(assert (=> b!1500767 (=> (not res!1021909) (not e!839714))))

(assert (=> b!1500767 (= res!1021909 (and (= (size!48837 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48837 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48837 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500768 () Bool)

(declare-fun res!1021910 () Bool)

(assert (=> b!1500768 (=> (not res!1021910) (not e!839714))))

(assert (=> b!1500768 (= res!1021910 (validKeyInArray!0 (select (arr!48286 a!2850) j!87)))))

(declare-fun b!1500769 () Bool)

(declare-fun res!1021915 () Bool)

(assert (=> b!1500769 (=> (not res!1021915) (not e!839714))))

(assert (=> b!1500769 (= res!1021915 (not (= (select (arr!48286 a!2850) index!625) (select (arr!48286 a!2850) j!87))))))

(assert (= (and start!127768 res!1021916) b!1500767))

(assert (= (and b!1500767 res!1021909) b!1500762))

(assert (= (and b!1500762 res!1021912) b!1500768))

(assert (= (and b!1500768 res!1021910) b!1500760))

(assert (= (and b!1500760 res!1021908) b!1500763))

(assert (= (and b!1500763 res!1021913) b!1500764))

(assert (= (and b!1500764 res!1021914) b!1500761))

(assert (= (and b!1500761 res!1021917) b!1500769))

(assert (= (and b!1500769 res!1021915) b!1500766))

(assert (= (and b!1500766 res!1021911) b!1500765))

(declare-fun m!1384011 () Bool)

(assert (=> b!1500768 m!1384011))

(assert (=> b!1500768 m!1384011))

(declare-fun m!1384013 () Bool)

(assert (=> b!1500768 m!1384013))

(assert (=> b!1500761 m!1384011))

(assert (=> b!1500761 m!1384011))

(declare-fun m!1384015 () Bool)

(assert (=> b!1500761 m!1384015))

(declare-fun m!1384017 () Bool)

(assert (=> start!127768 m!1384017))

(declare-fun m!1384019 () Bool)

(assert (=> start!127768 m!1384019))

(declare-fun m!1384021 () Bool)

(assert (=> b!1500764 m!1384021))

(declare-fun m!1384023 () Bool)

(assert (=> b!1500764 m!1384023))

(declare-fun m!1384025 () Bool)

(assert (=> b!1500764 m!1384025))

(declare-fun m!1384027 () Bool)

(assert (=> b!1500760 m!1384027))

(declare-fun m!1384029 () Bool)

(assert (=> b!1500766 m!1384029))

(assert (=> b!1500765 m!1384011))

(assert (=> b!1500765 m!1384011))

(declare-fun m!1384031 () Bool)

(assert (=> b!1500765 m!1384031))

(declare-fun m!1384033 () Bool)

(assert (=> b!1500763 m!1384033))

(declare-fun m!1384035 () Bool)

(assert (=> b!1500769 m!1384035))

(assert (=> b!1500769 m!1384011))

(declare-fun m!1384037 () Bool)

(assert (=> b!1500762 m!1384037))

(assert (=> b!1500762 m!1384037))

(declare-fun m!1384039 () Bool)

(assert (=> b!1500762 m!1384039))

(push 1)

