; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127648 () Bool)

(assert start!127648)

(declare-fun b!1499019 () Bool)

(declare-fun res!1020168 () Bool)

(declare-fun e!839197 () Bool)

(assert (=> b!1499019 (=> (not res!1020168) (not e!839197))))

(declare-datatypes ((array!99942 0))(
  ( (array!99943 (arr!48226 (Array (_ BitVec 32) (_ BitVec 64))) (size!48777 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99942)

(declare-datatypes ((List!34898 0))(
  ( (Nil!34895) (Cons!34894 (h!36292 (_ BitVec 64)) (t!49599 List!34898)) )
))
(declare-fun arrayNoDuplicates!0 (array!99942 (_ BitVec 32) List!34898) Bool)

(assert (=> b!1499019 (= res!1020168 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34895))))

(declare-fun res!1020169 () Bool)

(assert (=> start!127648 (=> (not res!1020169) (not e!839197))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127648 (= res!1020169 (validMask!0 mask!2661))))

(assert (=> start!127648 e!839197))

(assert (=> start!127648 true))

(declare-fun array_inv!37171 (array!99942) Bool)

(assert (=> start!127648 (array_inv!37171 a!2850)))

(declare-fun b!1499020 () Bool)

(declare-fun res!1020167 () Bool)

(assert (=> b!1499020 (=> (not res!1020167) (not e!839197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99942 (_ BitVec 32)) Bool)

(assert (=> b!1499020 (= res!1020167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499021 () Bool)

(declare-fun res!1020173 () Bool)

(assert (=> b!1499021 (=> (not res!1020173) (not e!839197))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499021 (= res!1020173 (and (= (size!48777 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48777 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48777 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499022 () Bool)

(declare-fun res!1020174 () Bool)

(assert (=> b!1499022 (=> (not res!1020174) (not e!839197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499022 (= res!1020174 (validKeyInArray!0 (select (arr!48226 a!2850) j!87)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1499023 () Bool)

(assert (=> b!1499023 (= e!839197 (and (not (= (select (arr!48226 a!2850) index!625) (select (arr!48226 a!2850) j!87))) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1499024 () Bool)

(declare-fun res!1020172 () Bool)

(assert (=> b!1499024 (=> (not res!1020172) (not e!839197))))

(assert (=> b!1499024 (= res!1020172 (validKeyInArray!0 (select (arr!48226 a!2850) i!996)))))

(declare-fun b!1499025 () Bool)

(declare-fun res!1020171 () Bool)

(assert (=> b!1499025 (=> (not res!1020171) (not e!839197))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499025 (= res!1020171 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48777 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48777 a!2850)) (= (select (arr!48226 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48226 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48777 a!2850))))))

(declare-fun b!1499026 () Bool)

(declare-fun res!1020170 () Bool)

(assert (=> b!1499026 (=> (not res!1020170) (not e!839197))))

(declare-datatypes ((SeekEntryResult!12455 0))(
  ( (MissingZero!12455 (index!52211 (_ BitVec 32))) (Found!12455 (index!52212 (_ BitVec 32))) (Intermediate!12455 (undefined!13267 Bool) (index!52213 (_ BitVec 32)) (x!133918 (_ BitVec 32))) (Undefined!12455) (MissingVacant!12455 (index!52214 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99942 (_ BitVec 32)) SeekEntryResult!12455)

(assert (=> b!1499026 (= res!1020170 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48226 a!2850) j!87) a!2850 mask!2661) (Found!12455 j!87)))))

(assert (= (and start!127648 res!1020169) b!1499021))

(assert (= (and b!1499021 res!1020173) b!1499024))

(assert (= (and b!1499024 res!1020172) b!1499022))

(assert (= (and b!1499022 res!1020174) b!1499020))

(assert (= (and b!1499020 res!1020167) b!1499019))

(assert (= (and b!1499019 res!1020168) b!1499025))

(assert (= (and b!1499025 res!1020171) b!1499026))

(assert (= (and b!1499026 res!1020170) b!1499023))

(declare-fun m!1382253 () Bool)

(assert (=> b!1499024 m!1382253))

(assert (=> b!1499024 m!1382253))

(declare-fun m!1382255 () Bool)

(assert (=> b!1499024 m!1382255))

(declare-fun m!1382257 () Bool)

(assert (=> b!1499026 m!1382257))

(assert (=> b!1499026 m!1382257))

(declare-fun m!1382259 () Bool)

(assert (=> b!1499026 m!1382259))

(declare-fun m!1382261 () Bool)

(assert (=> b!1499020 m!1382261))

(declare-fun m!1382263 () Bool)

(assert (=> b!1499019 m!1382263))

(assert (=> b!1499022 m!1382257))

(assert (=> b!1499022 m!1382257))

(declare-fun m!1382265 () Bool)

(assert (=> b!1499022 m!1382265))

(declare-fun m!1382267 () Bool)

(assert (=> b!1499023 m!1382267))

(assert (=> b!1499023 m!1382257))

(declare-fun m!1382269 () Bool)

(assert (=> start!127648 m!1382269))

(declare-fun m!1382271 () Bool)

(assert (=> start!127648 m!1382271))

(declare-fun m!1382273 () Bool)

(assert (=> b!1499025 m!1382273))

(declare-fun m!1382275 () Bool)

(assert (=> b!1499025 m!1382275))

(declare-fun m!1382277 () Bool)

(assert (=> b!1499025 m!1382277))

(push 1)

(assert (not b!1499019))

(assert (not b!1499020))

(assert (not b!1499022))

(assert (not b!1499024))

(assert (not b!1499026))

(assert (not start!127648))

(check-sat)

