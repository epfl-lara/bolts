; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127668 () Bool)

(assert start!127668)

(declare-fun b!1499260 () Bool)

(declare-fun res!1020415 () Bool)

(declare-fun e!839262 () Bool)

(assert (=> b!1499260 (=> (not res!1020415) (not e!839262))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99962 0))(
  ( (array!99963 (arr!48236 (Array (_ BitVec 32) (_ BitVec 64))) (size!48787 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99962)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499260 (= res!1020415 (and (= (size!48787 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48787 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48787 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499261 () Bool)

(declare-fun res!1020408 () Bool)

(assert (=> b!1499261 (=> (not res!1020408) (not e!839262))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1499261 (= res!1020408 (not (= (select (arr!48236 a!2850) index!625) (select (arr!48236 a!2850) j!87))))))

(declare-fun b!1499263 () Bool)

(declare-fun res!1020412 () Bool)

(assert (=> b!1499263 (=> (not res!1020412) (not e!839262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499263 (= res!1020412 (validKeyInArray!0 (select (arr!48236 a!2850) i!996)))))

(declare-fun b!1499264 () Bool)

(declare-fun res!1020410 () Bool)

(assert (=> b!1499264 (=> (not res!1020410) (not e!839262))))

(assert (=> b!1499264 (= res!1020410 (validKeyInArray!0 (select (arr!48236 a!2850) j!87)))))

(declare-fun b!1499265 () Bool)

(declare-fun res!1020416 () Bool)

(assert (=> b!1499265 (=> (not res!1020416) (not e!839262))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499265 (= res!1020416 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48787 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48787 a!2850)) (= (select (arr!48236 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48236 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48787 a!2850))))))

(declare-fun b!1499266 () Bool)

(declare-fun res!1020413 () Bool)

(assert (=> b!1499266 (=> (not res!1020413) (not e!839262))))

(declare-datatypes ((SeekEntryResult!12465 0))(
  ( (MissingZero!12465 (index!52251 (_ BitVec 32))) (Found!12465 (index!52252 (_ BitVec 32))) (Intermediate!12465 (undefined!13277 Bool) (index!52253 (_ BitVec 32)) (x!133952 (_ BitVec 32))) (Undefined!12465) (MissingVacant!12465 (index!52254 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99962 (_ BitVec 32)) SeekEntryResult!12465)

(assert (=> b!1499266 (= res!1020413 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48236 a!2850) j!87) a!2850 mask!2661) (Found!12465 j!87)))))

(declare-fun b!1499267 () Bool)

(declare-fun res!1020411 () Bool)

(assert (=> b!1499267 (=> (not res!1020411) (not e!839262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99962 (_ BitVec 32)) Bool)

(assert (=> b!1499267 (= res!1020411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499262 () Bool)

(declare-fun e!839263 () Bool)

(assert (=> b!1499262 (= e!839262 e!839263)))

(declare-fun res!1020417 () Bool)

(assert (=> b!1499262 (=> (not res!1020417) (not e!839263))))

(declare-fun lt!652671 () (_ BitVec 32))

(assert (=> b!1499262 (= res!1020417 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652671 #b00000000000000000000000000000000) (bvslt lt!652671 (size!48787 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499262 (= lt!652671 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1020414 () Bool)

(assert (=> start!127668 (=> (not res!1020414) (not e!839262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127668 (= res!1020414 (validMask!0 mask!2661))))

(assert (=> start!127668 e!839262))

(assert (=> start!127668 true))

(declare-fun array_inv!37181 (array!99962) Bool)

(assert (=> start!127668 (array_inv!37181 a!2850)))

(declare-fun b!1499268 () Bool)

(assert (=> b!1499268 (= e!839263 false)))

(declare-fun lt!652672 () SeekEntryResult!12465)

(assert (=> b!1499268 (= lt!652672 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652671 vacantBefore!10 (select (arr!48236 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499269 () Bool)

(declare-fun res!1020409 () Bool)

(assert (=> b!1499269 (=> (not res!1020409) (not e!839262))))

(declare-datatypes ((List!34908 0))(
  ( (Nil!34905) (Cons!34904 (h!36302 (_ BitVec 64)) (t!49609 List!34908)) )
))
(declare-fun arrayNoDuplicates!0 (array!99962 (_ BitVec 32) List!34908) Bool)

(assert (=> b!1499269 (= res!1020409 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34905))))

(assert (= (and start!127668 res!1020414) b!1499260))

(assert (= (and b!1499260 res!1020415) b!1499263))

(assert (= (and b!1499263 res!1020412) b!1499264))

(assert (= (and b!1499264 res!1020410) b!1499267))

(assert (= (and b!1499267 res!1020411) b!1499269))

(assert (= (and b!1499269 res!1020409) b!1499265))

(assert (= (and b!1499265 res!1020416) b!1499266))

(assert (= (and b!1499266 res!1020413) b!1499261))

(assert (= (and b!1499261 res!1020408) b!1499262))

(assert (= (and b!1499262 res!1020417) b!1499268))

(declare-fun m!1382511 () Bool)

(assert (=> b!1499268 m!1382511))

(assert (=> b!1499268 m!1382511))

(declare-fun m!1382513 () Bool)

(assert (=> b!1499268 m!1382513))

(declare-fun m!1382515 () Bool)

(assert (=> b!1499269 m!1382515))

(declare-fun m!1382517 () Bool)

(assert (=> b!1499267 m!1382517))

(declare-fun m!1382519 () Bool)

(assert (=> b!1499261 m!1382519))

(assert (=> b!1499261 m!1382511))

(declare-fun m!1382521 () Bool)

(assert (=> b!1499262 m!1382521))

(assert (=> b!1499264 m!1382511))

(assert (=> b!1499264 m!1382511))

(declare-fun m!1382523 () Bool)

(assert (=> b!1499264 m!1382523))

(assert (=> b!1499266 m!1382511))

(assert (=> b!1499266 m!1382511))

(declare-fun m!1382525 () Bool)

(assert (=> b!1499266 m!1382525))

(declare-fun m!1382527 () Bool)

(assert (=> b!1499265 m!1382527))

(declare-fun m!1382529 () Bool)

(assert (=> b!1499265 m!1382529))

(declare-fun m!1382531 () Bool)

(assert (=> b!1499265 m!1382531))

(declare-fun m!1382533 () Bool)

(assert (=> b!1499263 m!1382533))

(assert (=> b!1499263 m!1382533))

(declare-fun m!1382535 () Bool)

(assert (=> b!1499263 m!1382535))

(declare-fun m!1382537 () Bool)

(assert (=> start!127668 m!1382537))

(declare-fun m!1382539 () Bool)

(assert (=> start!127668 m!1382539))

(check-sat (not b!1499268) (not b!1499262) (not b!1499263) (not start!127668) (not b!1499267) (not b!1499266) (not b!1499264) (not b!1499269))
(check-sat)
