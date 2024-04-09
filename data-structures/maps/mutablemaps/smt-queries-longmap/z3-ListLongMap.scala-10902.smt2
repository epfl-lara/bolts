; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127722 () Bool)

(assert start!127722)

(declare-fun b!1500070 () Bool)

(declare-fun e!839507 () Bool)

(declare-fun e!839506 () Bool)

(assert (=> b!1500070 (= e!839507 e!839506)))

(declare-fun res!1021225 () Bool)

(assert (=> b!1500070 (=> (not res!1021225) (not e!839506))))

(declare-datatypes ((array!100016 0))(
  ( (array!100017 (arr!48263 (Array (_ BitVec 32) (_ BitVec 64))) (size!48814 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100016)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652834 () (_ BitVec 32))

(assert (=> b!1500070 (= res!1021225 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652834 #b00000000000000000000000000000000) (bvslt lt!652834 (size!48814 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500070 (= lt!652834 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500071 () Bool)

(declare-fun res!1021218 () Bool)

(assert (=> b!1500071 (=> (not res!1021218) (not e!839507))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500071 (= res!1021218 (not (= (select (arr!48263 a!2850) index!625) (select (arr!48263 a!2850) j!87))))))

(declare-fun b!1500072 () Bool)

(declare-fun res!1021219 () Bool)

(assert (=> b!1500072 (=> (not res!1021219) (not e!839507))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500072 (= res!1021219 (and (= (size!48814 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48814 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48814 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500073 () Bool)

(declare-fun res!1021223 () Bool)

(assert (=> b!1500073 (=> (not res!1021223) (not e!839507))))

(declare-datatypes ((List!34935 0))(
  ( (Nil!34932) (Cons!34931 (h!36329 (_ BitVec 64)) (t!49636 List!34935)) )
))
(declare-fun arrayNoDuplicates!0 (array!100016 (_ BitVec 32) List!34935) Bool)

(assert (=> b!1500073 (= res!1021223 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34932))))

(declare-fun b!1500074 () Bool)

(declare-fun res!1021220 () Bool)

(assert (=> b!1500074 (=> (not res!1021220) (not e!839507))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500074 (= res!1021220 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48814 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48814 a!2850)) (= (select (arr!48263 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48263 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48814 a!2850))))))

(declare-fun b!1500076 () Bool)

(declare-fun res!1021221 () Bool)

(assert (=> b!1500076 (=> (not res!1021221) (not e!839507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100016 (_ BitVec 32)) Bool)

(assert (=> b!1500076 (= res!1021221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500077 () Bool)

(assert (=> b!1500077 (= e!839506 false)))

(declare-datatypes ((SeekEntryResult!12492 0))(
  ( (MissingZero!12492 (index!52359 (_ BitVec 32))) (Found!12492 (index!52360 (_ BitVec 32))) (Intermediate!12492 (undefined!13304 Bool) (index!52361 (_ BitVec 32)) (x!134051 (_ BitVec 32))) (Undefined!12492) (MissingVacant!12492 (index!52362 (_ BitVec 32))) )
))
(declare-fun lt!652833 () SeekEntryResult!12492)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100016 (_ BitVec 32)) SeekEntryResult!12492)

(assert (=> b!1500077 (= lt!652833 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652834 vacantBefore!10 (select (arr!48263 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500078 () Bool)

(declare-fun res!1021226 () Bool)

(assert (=> b!1500078 (=> (not res!1021226) (not e!839507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500078 (= res!1021226 (validKeyInArray!0 (select (arr!48263 a!2850) j!87)))))

(declare-fun b!1500079 () Bool)

(declare-fun res!1021224 () Bool)

(assert (=> b!1500079 (=> (not res!1021224) (not e!839507))))

(assert (=> b!1500079 (= res!1021224 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48263 a!2850) j!87) a!2850 mask!2661) (Found!12492 j!87)))))

(declare-fun res!1021227 () Bool)

(assert (=> start!127722 (=> (not res!1021227) (not e!839507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127722 (= res!1021227 (validMask!0 mask!2661))))

(assert (=> start!127722 e!839507))

(assert (=> start!127722 true))

(declare-fun array_inv!37208 (array!100016) Bool)

(assert (=> start!127722 (array_inv!37208 a!2850)))

(declare-fun b!1500075 () Bool)

(declare-fun res!1021222 () Bool)

(assert (=> b!1500075 (=> (not res!1021222) (not e!839507))))

(assert (=> b!1500075 (= res!1021222 (validKeyInArray!0 (select (arr!48263 a!2850) i!996)))))

(assert (= (and start!127722 res!1021227) b!1500072))

(assert (= (and b!1500072 res!1021219) b!1500075))

(assert (= (and b!1500075 res!1021222) b!1500078))

(assert (= (and b!1500078 res!1021226) b!1500076))

(assert (= (and b!1500076 res!1021221) b!1500073))

(assert (= (and b!1500073 res!1021223) b!1500074))

(assert (= (and b!1500074 res!1021220) b!1500079))

(assert (= (and b!1500079 res!1021224) b!1500071))

(assert (= (and b!1500071 res!1021218) b!1500070))

(assert (= (and b!1500070 res!1021225) b!1500077))

(declare-fun m!1383321 () Bool)

(assert (=> b!1500075 m!1383321))

(assert (=> b!1500075 m!1383321))

(declare-fun m!1383323 () Bool)

(assert (=> b!1500075 m!1383323))

(declare-fun m!1383325 () Bool)

(assert (=> b!1500078 m!1383325))

(assert (=> b!1500078 m!1383325))

(declare-fun m!1383327 () Bool)

(assert (=> b!1500078 m!1383327))

(declare-fun m!1383329 () Bool)

(assert (=> start!127722 m!1383329))

(declare-fun m!1383331 () Bool)

(assert (=> start!127722 m!1383331))

(declare-fun m!1383333 () Bool)

(assert (=> b!1500076 m!1383333))

(assert (=> b!1500079 m!1383325))

(assert (=> b!1500079 m!1383325))

(declare-fun m!1383335 () Bool)

(assert (=> b!1500079 m!1383335))

(declare-fun m!1383337 () Bool)

(assert (=> b!1500070 m!1383337))

(declare-fun m!1383339 () Bool)

(assert (=> b!1500074 m!1383339))

(declare-fun m!1383341 () Bool)

(assert (=> b!1500074 m!1383341))

(declare-fun m!1383343 () Bool)

(assert (=> b!1500074 m!1383343))

(declare-fun m!1383345 () Bool)

(assert (=> b!1500071 m!1383345))

(assert (=> b!1500071 m!1383325))

(assert (=> b!1500077 m!1383325))

(assert (=> b!1500077 m!1383325))

(declare-fun m!1383347 () Bool)

(assert (=> b!1500077 m!1383347))

(declare-fun m!1383349 () Bool)

(assert (=> b!1500073 m!1383349))

(check-sat (not b!1500075) (not b!1500078) (not b!1500076) (not start!127722) (not b!1500073) (not b!1500077) (not b!1500079) (not b!1500070))
(check-sat)
