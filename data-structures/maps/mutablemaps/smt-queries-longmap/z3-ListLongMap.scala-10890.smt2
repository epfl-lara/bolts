; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127650 () Bool)

(assert start!127650)

(declare-fun b!1499043 () Bool)

(declare-fun res!1020191 () Bool)

(declare-fun e!839203 () Bool)

(assert (=> b!1499043 (=> (not res!1020191) (not e!839203))))

(declare-datatypes ((array!99944 0))(
  ( (array!99945 (arr!48227 (Array (_ BitVec 32) (_ BitVec 64))) (size!48778 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99944)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499043 (= res!1020191 (validKeyInArray!0 (select (arr!48227 a!2850) i!996)))))

(declare-fun b!1499044 () Bool)

(declare-fun res!1020198 () Bool)

(assert (=> b!1499044 (=> (not res!1020198) (not e!839203))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12456 0))(
  ( (MissingZero!12456 (index!52215 (_ BitVec 32))) (Found!12456 (index!52216 (_ BitVec 32))) (Intermediate!12456 (undefined!13268 Bool) (index!52217 (_ BitVec 32)) (x!133919 (_ BitVec 32))) (Undefined!12456) (MissingVacant!12456 (index!52218 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99944 (_ BitVec 32)) SeekEntryResult!12456)

(assert (=> b!1499044 (= res!1020198 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48227 a!2850) j!87) a!2850 mask!2661) (Found!12456 j!87)))))

(declare-fun b!1499045 () Bool)

(declare-fun res!1020195 () Bool)

(assert (=> b!1499045 (=> (not res!1020195) (not e!839203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99944 (_ BitVec 32)) Bool)

(assert (=> b!1499045 (= res!1020195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1020193 () Bool)

(assert (=> start!127650 (=> (not res!1020193) (not e!839203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127650 (= res!1020193 (validMask!0 mask!2661))))

(assert (=> start!127650 e!839203))

(assert (=> start!127650 true))

(declare-fun array_inv!37172 (array!99944) Bool)

(assert (=> start!127650 (array_inv!37172 a!2850)))

(declare-fun b!1499046 () Bool)

(declare-fun res!1020192 () Bool)

(assert (=> b!1499046 (=> (not res!1020192) (not e!839203))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499046 (= res!1020192 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48778 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48778 a!2850)) (= (select (arr!48227 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48227 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48778 a!2850))))))

(declare-fun b!1499047 () Bool)

(declare-fun res!1020196 () Bool)

(assert (=> b!1499047 (=> (not res!1020196) (not e!839203))))

(assert (=> b!1499047 (= res!1020196 (validKeyInArray!0 (select (arr!48227 a!2850) j!87)))))

(declare-fun b!1499048 () Bool)

(declare-fun res!1020194 () Bool)

(assert (=> b!1499048 (=> (not res!1020194) (not e!839203))))

(declare-datatypes ((List!34899 0))(
  ( (Nil!34896) (Cons!34895 (h!36293 (_ BitVec 64)) (t!49600 List!34899)) )
))
(declare-fun arrayNoDuplicates!0 (array!99944 (_ BitVec 32) List!34899) Bool)

(assert (=> b!1499048 (= res!1020194 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34896))))

(declare-fun b!1499049 () Bool)

(declare-fun res!1020197 () Bool)

(assert (=> b!1499049 (=> (not res!1020197) (not e!839203))))

(assert (=> b!1499049 (= res!1020197 (and (= (size!48778 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48778 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48778 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499050 () Bool)

(assert (=> b!1499050 (= e!839203 (and (not (= (select (arr!48227 a!2850) index!625) (select (arr!48227 a!2850) j!87))) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(assert (= (and start!127650 res!1020193) b!1499049))

(assert (= (and b!1499049 res!1020197) b!1499043))

(assert (= (and b!1499043 res!1020191) b!1499047))

(assert (= (and b!1499047 res!1020196) b!1499045))

(assert (= (and b!1499045 res!1020195) b!1499048))

(assert (= (and b!1499048 res!1020194) b!1499046))

(assert (= (and b!1499046 res!1020192) b!1499044))

(assert (= (and b!1499044 res!1020198) b!1499050))

(declare-fun m!1382279 () Bool)

(assert (=> b!1499044 m!1382279))

(assert (=> b!1499044 m!1382279))

(declare-fun m!1382281 () Bool)

(assert (=> b!1499044 m!1382281))

(declare-fun m!1382283 () Bool)

(assert (=> b!1499050 m!1382283))

(assert (=> b!1499050 m!1382279))

(assert (=> b!1499047 m!1382279))

(assert (=> b!1499047 m!1382279))

(declare-fun m!1382285 () Bool)

(assert (=> b!1499047 m!1382285))

(declare-fun m!1382287 () Bool)

(assert (=> b!1499045 m!1382287))

(declare-fun m!1382289 () Bool)

(assert (=> b!1499043 m!1382289))

(assert (=> b!1499043 m!1382289))

(declare-fun m!1382291 () Bool)

(assert (=> b!1499043 m!1382291))

(declare-fun m!1382293 () Bool)

(assert (=> start!127650 m!1382293))

(declare-fun m!1382295 () Bool)

(assert (=> start!127650 m!1382295))

(declare-fun m!1382297 () Bool)

(assert (=> b!1499048 m!1382297))

(declare-fun m!1382299 () Bool)

(assert (=> b!1499046 m!1382299))

(declare-fun m!1382301 () Bool)

(assert (=> b!1499046 m!1382301))

(declare-fun m!1382303 () Bool)

(assert (=> b!1499046 m!1382303))

(check-sat (not start!127650) (not b!1499048) (not b!1499047) (not b!1499045) (not b!1499043) (not b!1499044))
(check-sat)
