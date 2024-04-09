; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127656 () Bool)

(assert start!127656)

(declare-fun b!1499115 () Bool)

(declare-fun res!1020263 () Bool)

(declare-fun e!839221 () Bool)

(assert (=> b!1499115 (=> (not res!1020263) (not e!839221))))

(declare-datatypes ((array!99950 0))(
  ( (array!99951 (arr!48230 (Array (_ BitVec 32) (_ BitVec 64))) (size!48781 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99950)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99950 (_ BitVec 32)) Bool)

(assert (=> b!1499115 (= res!1020263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499116 () Bool)

(declare-fun res!1020266 () Bool)

(assert (=> b!1499116 (=> (not res!1020266) (not e!839221))))

(declare-datatypes ((List!34902 0))(
  ( (Nil!34899) (Cons!34898 (h!36296 (_ BitVec 64)) (t!49603 List!34902)) )
))
(declare-fun arrayNoDuplicates!0 (array!99950 (_ BitVec 32) List!34902) Bool)

(assert (=> b!1499116 (= res!1020266 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34899))))

(declare-fun b!1499117 () Bool)

(declare-fun res!1020267 () Bool)

(assert (=> b!1499117 (=> (not res!1020267) (not e!839221))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12459 0))(
  ( (MissingZero!12459 (index!52227 (_ BitVec 32))) (Found!12459 (index!52228 (_ BitVec 32))) (Intermediate!12459 (undefined!13271 Bool) (index!52229 (_ BitVec 32)) (x!133930 (_ BitVec 32))) (Undefined!12459) (MissingVacant!12459 (index!52230 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99950 (_ BitVec 32)) SeekEntryResult!12459)

(assert (=> b!1499117 (= res!1020267 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48230 a!2850) j!87) a!2850 mask!2661) (Found!12459 j!87)))))

(declare-fun b!1499118 () Bool)

(assert (=> b!1499118 (= e!839221 (and (not (= (select (arr!48230 a!2850) index!625) (select (arr!48230 a!2850) j!87))) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1499119 () Bool)

(declare-fun res!1020269 () Bool)

(assert (=> b!1499119 (=> (not res!1020269) (not e!839221))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499119 (= res!1020269 (and (= (size!48781 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48781 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48781 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1020270 () Bool)

(assert (=> start!127656 (=> (not res!1020270) (not e!839221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127656 (= res!1020270 (validMask!0 mask!2661))))

(assert (=> start!127656 e!839221))

(assert (=> start!127656 true))

(declare-fun array_inv!37175 (array!99950) Bool)

(assert (=> start!127656 (array_inv!37175 a!2850)))

(declare-fun b!1499120 () Bool)

(declare-fun res!1020268 () Bool)

(assert (=> b!1499120 (=> (not res!1020268) (not e!839221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499120 (= res!1020268 (validKeyInArray!0 (select (arr!48230 a!2850) i!996)))))

(declare-fun b!1499121 () Bool)

(declare-fun res!1020264 () Bool)

(assert (=> b!1499121 (=> (not res!1020264) (not e!839221))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499121 (= res!1020264 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48781 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48781 a!2850)) (= (select (arr!48230 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48230 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48781 a!2850))))))

(declare-fun b!1499122 () Bool)

(declare-fun res!1020265 () Bool)

(assert (=> b!1499122 (=> (not res!1020265) (not e!839221))))

(assert (=> b!1499122 (= res!1020265 (validKeyInArray!0 (select (arr!48230 a!2850) j!87)))))

(assert (= (and start!127656 res!1020270) b!1499119))

(assert (= (and b!1499119 res!1020269) b!1499120))

(assert (= (and b!1499120 res!1020268) b!1499122))

(assert (= (and b!1499122 res!1020265) b!1499115))

(assert (= (and b!1499115 res!1020263) b!1499116))

(assert (= (and b!1499116 res!1020266) b!1499121))

(assert (= (and b!1499121 res!1020264) b!1499117))

(assert (= (and b!1499117 res!1020267) b!1499118))

(declare-fun m!1382357 () Bool)

(assert (=> b!1499121 m!1382357))

(declare-fun m!1382359 () Bool)

(assert (=> b!1499121 m!1382359))

(declare-fun m!1382361 () Bool)

(assert (=> b!1499121 m!1382361))

(declare-fun m!1382363 () Bool)

(assert (=> b!1499115 m!1382363))

(declare-fun m!1382365 () Bool)

(assert (=> b!1499118 m!1382365))

(declare-fun m!1382367 () Bool)

(assert (=> b!1499118 m!1382367))

(declare-fun m!1382369 () Bool)

(assert (=> b!1499120 m!1382369))

(assert (=> b!1499120 m!1382369))

(declare-fun m!1382371 () Bool)

(assert (=> b!1499120 m!1382371))

(assert (=> b!1499117 m!1382367))

(assert (=> b!1499117 m!1382367))

(declare-fun m!1382373 () Bool)

(assert (=> b!1499117 m!1382373))

(assert (=> b!1499122 m!1382367))

(assert (=> b!1499122 m!1382367))

(declare-fun m!1382375 () Bool)

(assert (=> b!1499122 m!1382375))

(declare-fun m!1382377 () Bool)

(assert (=> start!127656 m!1382377))

(declare-fun m!1382379 () Bool)

(assert (=> start!127656 m!1382379))

(declare-fun m!1382381 () Bool)

(assert (=> b!1499116 m!1382381))

(check-sat (not b!1499115) (not start!127656) (not b!1499122) (not b!1499117) (not b!1499120) (not b!1499116))
(check-sat)
