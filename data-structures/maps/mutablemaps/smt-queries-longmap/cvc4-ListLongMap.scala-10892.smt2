; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127664 () Bool)

(assert start!127664)

(declare-fun b!1499203 () Bool)

(declare-fun res!1020356 () Bool)

(declare-fun e!839246 () Bool)

(assert (=> b!1499203 (=> (not res!1020356) (not e!839246))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-datatypes ((array!99958 0))(
  ( (array!99959 (arr!48234 (Array (_ BitVec 32) (_ BitVec 64))) (size!48785 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99958)

(assert (=> b!1499203 (= res!1020356 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48785 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48785 a!2850)) (= (select (arr!48234 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48234 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48785 a!2850))))))

(declare-fun b!1499205 () Bool)

(declare-fun res!1020351 () Bool)

(assert (=> b!1499205 (=> (not res!1020351) (not e!839246))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499205 (= res!1020351 (and (= (size!48785 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48785 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48785 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499206 () Bool)

(declare-fun res!1020354 () Bool)

(assert (=> b!1499206 (=> (not res!1020354) (not e!839246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499206 (= res!1020354 (validKeyInArray!0 (select (arr!48234 a!2850) j!87)))))

(declare-fun b!1499207 () Bool)

(declare-fun res!1020355 () Bool)

(assert (=> b!1499207 (=> (not res!1020355) (not e!839246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99958 (_ BitVec 32)) Bool)

(assert (=> b!1499207 (= res!1020355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499208 () Bool)

(declare-fun res!1020357 () Bool)

(assert (=> b!1499208 (=> (not res!1020357) (not e!839246))))

(declare-datatypes ((List!34906 0))(
  ( (Nil!34903) (Cons!34902 (h!36300 (_ BitVec 64)) (t!49607 List!34906)) )
))
(declare-fun arrayNoDuplicates!0 (array!99958 (_ BitVec 32) List!34906) Bool)

(assert (=> b!1499208 (= res!1020357 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34903))))

(declare-fun b!1499209 () Bool)

(assert (=> b!1499209 (= e!839246 false)))

(declare-datatypes ((SeekEntryResult!12463 0))(
  ( (MissingZero!12463 (index!52243 (_ BitVec 32))) (Found!12463 (index!52244 (_ BitVec 32))) (Intermediate!12463 (undefined!13275 Bool) (index!52245 (_ BitVec 32)) (x!133942 (_ BitVec 32))) (Undefined!12463) (MissingVacant!12463 (index!52246 (_ BitVec 32))) )
))
(declare-fun lt!652660 () SeekEntryResult!12463)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99958 (_ BitVec 32)) SeekEntryResult!12463)

(assert (=> b!1499209 (= lt!652660 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48234 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1020352 () Bool)

(assert (=> start!127664 (=> (not res!1020352) (not e!839246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127664 (= res!1020352 (validMask!0 mask!2661))))

(assert (=> start!127664 e!839246))

(assert (=> start!127664 true))

(declare-fun array_inv!37179 (array!99958) Bool)

(assert (=> start!127664 (array_inv!37179 a!2850)))

(declare-fun b!1499204 () Bool)

(declare-fun res!1020353 () Bool)

(assert (=> b!1499204 (=> (not res!1020353) (not e!839246))))

(assert (=> b!1499204 (= res!1020353 (validKeyInArray!0 (select (arr!48234 a!2850) i!996)))))

(assert (= (and start!127664 res!1020352) b!1499205))

(assert (= (and b!1499205 res!1020351) b!1499204))

(assert (= (and b!1499204 res!1020353) b!1499206))

(assert (= (and b!1499206 res!1020354) b!1499207))

(assert (= (and b!1499207 res!1020355) b!1499208))

(assert (= (and b!1499208 res!1020357) b!1499203))

(assert (= (and b!1499203 res!1020356) b!1499209))

(declare-fun m!1382457 () Bool)

(assert (=> b!1499203 m!1382457))

(declare-fun m!1382459 () Bool)

(assert (=> b!1499203 m!1382459))

(declare-fun m!1382461 () Bool)

(assert (=> b!1499203 m!1382461))

(declare-fun m!1382463 () Bool)

(assert (=> b!1499204 m!1382463))

(assert (=> b!1499204 m!1382463))

(declare-fun m!1382465 () Bool)

(assert (=> b!1499204 m!1382465))

(declare-fun m!1382467 () Bool)

(assert (=> b!1499209 m!1382467))

(assert (=> b!1499209 m!1382467))

(declare-fun m!1382469 () Bool)

(assert (=> b!1499209 m!1382469))

(declare-fun m!1382471 () Bool)

(assert (=> b!1499207 m!1382471))

(assert (=> b!1499206 m!1382467))

(assert (=> b!1499206 m!1382467))

(declare-fun m!1382473 () Bool)

(assert (=> b!1499206 m!1382473))

(declare-fun m!1382475 () Bool)

(assert (=> start!127664 m!1382475))

(declare-fun m!1382477 () Bool)

(assert (=> start!127664 m!1382477))

(declare-fun m!1382479 () Bool)

(assert (=> b!1499208 m!1382479))

(push 1)

(assert (not b!1499208))

(assert (not b!1499209))

(assert (not b!1499204))

(assert (not b!1499206))

(assert (not start!127664))

(assert (not b!1499207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

