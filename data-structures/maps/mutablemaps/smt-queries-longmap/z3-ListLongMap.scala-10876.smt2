; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127566 () Bool)

(assert start!127566)

(declare-fun b!1498178 () Bool)

(declare-fun res!1019330 () Bool)

(declare-fun e!838951 () Bool)

(assert (=> b!1498178 (=> (not res!1019330) (not e!838951))))

(declare-datatypes ((array!99860 0))(
  ( (array!99861 (arr!48185 (Array (_ BitVec 32) (_ BitVec 64))) (size!48736 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99860)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498178 (= res!1019330 (validKeyInArray!0 (select (arr!48185 a!2850) j!87)))))

(declare-fun b!1498179 () Bool)

(declare-fun res!1019331 () Bool)

(assert (=> b!1498179 (=> (not res!1019331) (not e!838951))))

(declare-datatypes ((List!34857 0))(
  ( (Nil!34854) (Cons!34853 (h!36251 (_ BitVec 64)) (t!49558 List!34857)) )
))
(declare-fun arrayNoDuplicates!0 (array!99860 (_ BitVec 32) List!34857) Bool)

(assert (=> b!1498179 (= res!1019331 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34854))))

(declare-fun b!1498180 () Bool)

(declare-fun res!1019326 () Bool)

(assert (=> b!1498180 (=> (not res!1019326) (not e!838951))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99860 (_ BitVec 32)) Bool)

(assert (=> b!1498180 (= res!1019326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1498181 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498181 (= e!838951 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48736 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48736 a!2850)) (= (select (arr!48185 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48185 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48736 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498182 () Bool)

(declare-fun res!1019329 () Bool)

(assert (=> b!1498182 (=> (not res!1019329) (not e!838951))))

(assert (=> b!1498182 (= res!1019329 (validKeyInArray!0 (select (arr!48185 a!2850) i!996)))))

(declare-fun res!1019328 () Bool)

(assert (=> start!127566 (=> (not res!1019328) (not e!838951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127566 (= res!1019328 (validMask!0 mask!2661))))

(assert (=> start!127566 e!838951))

(assert (=> start!127566 true))

(declare-fun array_inv!37130 (array!99860) Bool)

(assert (=> start!127566 (array_inv!37130 a!2850)))

(declare-fun b!1498183 () Bool)

(declare-fun res!1019327 () Bool)

(assert (=> b!1498183 (=> (not res!1019327) (not e!838951))))

(assert (=> b!1498183 (= res!1019327 (and (= (size!48736 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48736 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48736 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127566 res!1019328) b!1498183))

(assert (= (and b!1498183 res!1019327) b!1498182))

(assert (= (and b!1498182 res!1019329) b!1498178))

(assert (= (and b!1498178 res!1019330) b!1498180))

(assert (= (and b!1498180 res!1019326) b!1498179))

(assert (= (and b!1498179 res!1019331) b!1498181))

(declare-fun m!1381315 () Bool)

(assert (=> start!127566 m!1381315))

(declare-fun m!1381317 () Bool)

(assert (=> start!127566 m!1381317))

(declare-fun m!1381319 () Bool)

(assert (=> b!1498181 m!1381319))

(declare-fun m!1381321 () Bool)

(assert (=> b!1498181 m!1381321))

(declare-fun m!1381323 () Bool)

(assert (=> b!1498181 m!1381323))

(declare-fun m!1381325 () Bool)

(assert (=> b!1498178 m!1381325))

(assert (=> b!1498178 m!1381325))

(declare-fun m!1381327 () Bool)

(assert (=> b!1498178 m!1381327))

(declare-fun m!1381329 () Bool)

(assert (=> b!1498180 m!1381329))

(declare-fun m!1381331 () Bool)

(assert (=> b!1498182 m!1381331))

(assert (=> b!1498182 m!1381331))

(declare-fun m!1381333 () Bool)

(assert (=> b!1498182 m!1381333))

(declare-fun m!1381335 () Bool)

(assert (=> b!1498179 m!1381335))

(check-sat (not b!1498180) (not b!1498182) (not b!1498178) (not start!127566) (not b!1498179))
(check-sat)
