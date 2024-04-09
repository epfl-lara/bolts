; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127660 () Bool)

(assert start!127660)

(declare-fun b!1499161 () Bool)

(declare-fun res!1020311 () Bool)

(declare-fun e!839233 () Bool)

(assert (=> b!1499161 (=> (not res!1020311) (not e!839233))))

(declare-datatypes ((array!99954 0))(
  ( (array!99955 (arr!48232 (Array (_ BitVec 32) (_ BitVec 64))) (size!48783 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99954)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499161 (= res!1020311 (validKeyInArray!0 (select (arr!48232 a!2850) i!996)))))

(declare-fun b!1499162 () Bool)

(declare-fun res!1020315 () Bool)

(assert (=> b!1499162 (=> (not res!1020315) (not e!839233))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499162 (= res!1020315 (and (= (size!48783 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48783 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48783 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1020312 () Bool)

(assert (=> start!127660 (=> (not res!1020312) (not e!839233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127660 (= res!1020312 (validMask!0 mask!2661))))

(assert (=> start!127660 e!839233))

(assert (=> start!127660 true))

(declare-fun array_inv!37177 (array!99954) Bool)

(assert (=> start!127660 (array_inv!37177 a!2850)))

(declare-fun b!1499163 () Bool)

(declare-fun res!1020310 () Bool)

(assert (=> b!1499163 (=> (not res!1020310) (not e!839233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99954 (_ BitVec 32)) Bool)

(assert (=> b!1499163 (= res!1020310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499164 () Bool)

(declare-fun res!1020313 () Bool)

(assert (=> b!1499164 (=> (not res!1020313) (not e!839233))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499164 (= res!1020313 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48783 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48783 a!2850)) (= (select (arr!48232 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48232 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48783 a!2850))))))

(declare-fun b!1499165 () Bool)

(assert (=> b!1499165 (= e!839233 false)))

(declare-datatypes ((SeekEntryResult!12461 0))(
  ( (MissingZero!12461 (index!52235 (_ BitVec 32))) (Found!12461 (index!52236 (_ BitVec 32))) (Intermediate!12461 (undefined!13273 Bool) (index!52237 (_ BitVec 32)) (x!133940 (_ BitVec 32))) (Undefined!12461) (MissingVacant!12461 (index!52238 (_ BitVec 32))) )
))
(declare-fun lt!652654 () SeekEntryResult!12461)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99954 (_ BitVec 32)) SeekEntryResult!12461)

(assert (=> b!1499165 (= lt!652654 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48232 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499166 () Bool)

(declare-fun res!1020314 () Bool)

(assert (=> b!1499166 (=> (not res!1020314) (not e!839233))))

(assert (=> b!1499166 (= res!1020314 (validKeyInArray!0 (select (arr!48232 a!2850) j!87)))))

(declare-fun b!1499167 () Bool)

(declare-fun res!1020309 () Bool)

(assert (=> b!1499167 (=> (not res!1020309) (not e!839233))))

(declare-datatypes ((List!34904 0))(
  ( (Nil!34901) (Cons!34900 (h!36298 (_ BitVec 64)) (t!49605 List!34904)) )
))
(declare-fun arrayNoDuplicates!0 (array!99954 (_ BitVec 32) List!34904) Bool)

(assert (=> b!1499167 (= res!1020309 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34901))))

(assert (= (and start!127660 res!1020312) b!1499162))

(assert (= (and b!1499162 res!1020315) b!1499161))

(assert (= (and b!1499161 res!1020311) b!1499166))

(assert (= (and b!1499166 res!1020314) b!1499163))

(assert (= (and b!1499163 res!1020310) b!1499167))

(assert (= (and b!1499167 res!1020309) b!1499164))

(assert (= (and b!1499164 res!1020313) b!1499165))

(declare-fun m!1382409 () Bool)

(assert (=> b!1499166 m!1382409))

(assert (=> b!1499166 m!1382409))

(declare-fun m!1382411 () Bool)

(assert (=> b!1499166 m!1382411))

(declare-fun m!1382413 () Bool)

(assert (=> b!1499163 m!1382413))

(declare-fun m!1382415 () Bool)

(assert (=> b!1499161 m!1382415))

(assert (=> b!1499161 m!1382415))

(declare-fun m!1382417 () Bool)

(assert (=> b!1499161 m!1382417))

(declare-fun m!1382419 () Bool)

(assert (=> b!1499164 m!1382419))

(declare-fun m!1382421 () Bool)

(assert (=> b!1499164 m!1382421))

(declare-fun m!1382423 () Bool)

(assert (=> b!1499164 m!1382423))

(declare-fun m!1382425 () Bool)

(assert (=> b!1499167 m!1382425))

(assert (=> b!1499165 m!1382409))

(assert (=> b!1499165 m!1382409))

(declare-fun m!1382427 () Bool)

(assert (=> b!1499165 m!1382427))

(declare-fun m!1382429 () Bool)

(assert (=> start!127660 m!1382429))

(declare-fun m!1382431 () Bool)

(assert (=> start!127660 m!1382431))

(push 1)

(assert (not b!1499161))

(assert (not b!1499167))

(assert (not b!1499166))

(assert (not b!1499163))

(assert (not b!1499165))

(assert (not start!127660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

