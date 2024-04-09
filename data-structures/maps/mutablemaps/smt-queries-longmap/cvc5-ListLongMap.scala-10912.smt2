; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127780 () Bool)

(assert start!127780)

(declare-fun b!1500942 () Bool)

(declare-fun e!839771 () Bool)

(declare-fun e!839769 () Bool)

(assert (=> b!1500942 (= e!839771 e!839769)))

(declare-fun res!1022099 () Bool)

(assert (=> b!1500942 (=> (not res!1022099) (not e!839769))))

(declare-datatypes ((SeekEntryResult!12521 0))(
  ( (MissingZero!12521 (index!52475 (_ BitVec 32))) (Found!12521 (index!52476 (_ BitVec 32))) (Intermediate!12521 (undefined!13333 Bool) (index!52477 (_ BitVec 32)) (x!134160 (_ BitVec 32))) (Undefined!12521) (MissingVacant!12521 (index!52478 (_ BitVec 32))) )
))
(declare-fun lt!653011 () SeekEntryResult!12521)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100074 0))(
  ( (array!100075 (arr!48292 (Array (_ BitVec 32) (_ BitVec 64))) (size!48843 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100074)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100074 (_ BitVec 32)) SeekEntryResult!12521)

(assert (=> b!1500942 (= res!1022099 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48292 a!2850) j!87) a!2850 mask!2661) lt!653011))))

(assert (=> b!1500942 (= lt!653011 (Found!12521 j!87))))

(declare-fun b!1500943 () Bool)

(declare-fun res!1022098 () Bool)

(assert (=> b!1500943 (=> (not res!1022098) (not e!839771))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500943 (= res!1022098 (validKeyInArray!0 (select (arr!48292 a!2850) i!996)))))

(declare-fun b!1500944 () Bool)

(declare-fun e!839770 () Bool)

(assert (=> b!1500944 (= e!839770 (not true))))

(declare-fun lt!653009 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500944 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653009 vacantAfter!10 (select (store (arr!48292 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100075 (store (arr!48292 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48843 a!2850)) mask!2661) lt!653011)))

(declare-datatypes ((Unit!50150 0))(
  ( (Unit!50151) )
))
(declare-fun lt!653010 () Unit!50150)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100074 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50150)

(assert (=> b!1500944 (= lt!653010 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653009 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1500945 () Bool)

(declare-fun res!1022100 () Bool)

(assert (=> b!1500945 (=> (not res!1022100) (not e!839771))))

(declare-datatypes ((List!34964 0))(
  ( (Nil!34961) (Cons!34960 (h!36358 (_ BitVec 64)) (t!49665 List!34964)) )
))
(declare-fun arrayNoDuplicates!0 (array!100074 (_ BitVec 32) List!34964) Bool)

(assert (=> b!1500945 (= res!1022100 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34961))))

(declare-fun res!1022094 () Bool)

(assert (=> start!127780 (=> (not res!1022094) (not e!839771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127780 (= res!1022094 (validMask!0 mask!2661))))

(assert (=> start!127780 e!839771))

(assert (=> start!127780 true))

(declare-fun array_inv!37237 (array!100074) Bool)

(assert (=> start!127780 (array_inv!37237 a!2850)))

(declare-fun b!1500946 () Bool)

(declare-fun res!1022096 () Bool)

(assert (=> b!1500946 (=> (not res!1022096) (not e!839771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100074 (_ BitVec 32)) Bool)

(assert (=> b!1500946 (= res!1022096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500947 () Bool)

(declare-fun res!1022090 () Bool)

(assert (=> b!1500947 (=> (not res!1022090) (not e!839770))))

(assert (=> b!1500947 (= res!1022090 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653009 vacantBefore!10 (select (arr!48292 a!2850) j!87) a!2850 mask!2661) lt!653011))))

(declare-fun b!1500948 () Bool)

(declare-fun res!1022097 () Bool)

(assert (=> b!1500948 (=> (not res!1022097) (not e!839771))))

(assert (=> b!1500948 (= res!1022097 (and (= (size!48843 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48843 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48843 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500949 () Bool)

(assert (=> b!1500949 (= e!839769 e!839770)))

(declare-fun res!1022095 () Bool)

(assert (=> b!1500949 (=> (not res!1022095) (not e!839770))))

(assert (=> b!1500949 (= res!1022095 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653009 #b00000000000000000000000000000000) (bvslt lt!653009 (size!48843 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500949 (= lt!653009 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500950 () Bool)

(declare-fun res!1022091 () Bool)

(assert (=> b!1500950 (=> (not res!1022091) (not e!839771))))

(assert (=> b!1500950 (= res!1022091 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48843 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48843 a!2850)) (= (select (arr!48292 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48292 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48843 a!2850))))))

(declare-fun b!1500951 () Bool)

(declare-fun res!1022092 () Bool)

(assert (=> b!1500951 (=> (not res!1022092) (not e!839771))))

(assert (=> b!1500951 (= res!1022092 (validKeyInArray!0 (select (arr!48292 a!2850) j!87)))))

(declare-fun b!1500952 () Bool)

(declare-fun res!1022093 () Bool)

(assert (=> b!1500952 (=> (not res!1022093) (not e!839769))))

(assert (=> b!1500952 (= res!1022093 (not (= (select (arr!48292 a!2850) index!625) (select (arr!48292 a!2850) j!87))))))

(assert (= (and start!127780 res!1022094) b!1500948))

(assert (= (and b!1500948 res!1022097) b!1500943))

(assert (= (and b!1500943 res!1022098) b!1500951))

(assert (= (and b!1500951 res!1022092) b!1500946))

(assert (= (and b!1500946 res!1022096) b!1500945))

(assert (= (and b!1500945 res!1022100) b!1500950))

(assert (= (and b!1500950 res!1022091) b!1500942))

(assert (= (and b!1500942 res!1022099) b!1500952))

(assert (= (and b!1500952 res!1022093) b!1500949))

(assert (= (and b!1500949 res!1022095) b!1500947))

(assert (= (and b!1500947 res!1022090) b!1500944))

(declare-fun m!1384191 () Bool)

(assert (=> start!127780 m!1384191))

(declare-fun m!1384193 () Bool)

(assert (=> start!127780 m!1384193))

(declare-fun m!1384195 () Bool)

(assert (=> b!1500949 m!1384195))

(declare-fun m!1384197 () Bool)

(assert (=> b!1500950 m!1384197))

(declare-fun m!1384199 () Bool)

(assert (=> b!1500950 m!1384199))

(declare-fun m!1384201 () Bool)

(assert (=> b!1500950 m!1384201))

(declare-fun m!1384203 () Bool)

(assert (=> b!1500942 m!1384203))

(assert (=> b!1500942 m!1384203))

(declare-fun m!1384205 () Bool)

(assert (=> b!1500942 m!1384205))

(declare-fun m!1384207 () Bool)

(assert (=> b!1500946 m!1384207))

(declare-fun m!1384209 () Bool)

(assert (=> b!1500945 m!1384209))

(assert (=> b!1500951 m!1384203))

(assert (=> b!1500951 m!1384203))

(declare-fun m!1384211 () Bool)

(assert (=> b!1500951 m!1384211))

(declare-fun m!1384213 () Bool)

(assert (=> b!1500943 m!1384213))

(assert (=> b!1500943 m!1384213))

(declare-fun m!1384215 () Bool)

(assert (=> b!1500943 m!1384215))

(assert (=> b!1500947 m!1384203))

(assert (=> b!1500947 m!1384203))

(declare-fun m!1384217 () Bool)

(assert (=> b!1500947 m!1384217))

(declare-fun m!1384219 () Bool)

(assert (=> b!1500952 m!1384219))

(assert (=> b!1500952 m!1384203))

(assert (=> b!1500944 m!1384199))

(declare-fun m!1384221 () Bool)

(assert (=> b!1500944 m!1384221))

(assert (=> b!1500944 m!1384221))

(declare-fun m!1384223 () Bool)

(assert (=> b!1500944 m!1384223))

(declare-fun m!1384225 () Bool)

(assert (=> b!1500944 m!1384225))

(push 1)

