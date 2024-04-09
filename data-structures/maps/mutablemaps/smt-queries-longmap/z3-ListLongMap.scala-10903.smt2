; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127728 () Bool)

(assert start!127728)

(declare-fun b!1500160 () Bool)

(declare-fun e!839533 () Bool)

(declare-fun e!839532 () Bool)

(assert (=> b!1500160 (= e!839533 e!839532)))

(declare-fun res!1021312 () Bool)

(assert (=> b!1500160 (=> (not res!1021312) (not e!839532))))

(declare-datatypes ((array!100022 0))(
  ( (array!100023 (arr!48266 (Array (_ BitVec 32) (_ BitVec 64))) (size!48817 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100022)

(declare-fun lt!652852 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1500160 (= res!1021312 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652852 #b00000000000000000000000000000000) (bvslt lt!652852 (size!48817 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500160 (= lt!652852 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500161 () Bool)

(declare-fun res!1021315 () Bool)

(assert (=> b!1500161 (=> (not res!1021315) (not e!839533))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500161 (= res!1021315 (and (= (size!48817 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48817 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48817 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500162 () Bool)

(declare-fun res!1021314 () Bool)

(assert (=> b!1500162 (=> (not res!1021314) (not e!839533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500162 (= res!1021314 (validKeyInArray!0 (select (arr!48266 a!2850) j!87)))))

(declare-fun b!1500163 () Bool)

(assert (=> b!1500163 (= e!839532 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12495 0))(
  ( (MissingZero!12495 (index!52371 (_ BitVec 32))) (Found!12495 (index!52372 (_ BitVec 32))) (Intermediate!12495 (undefined!13307 Bool) (index!52373 (_ BitVec 32)) (x!134062 (_ BitVec 32))) (Undefined!12495) (MissingVacant!12495 (index!52374 (_ BitVec 32))) )
))
(declare-fun lt!652851 () SeekEntryResult!12495)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100022 (_ BitVec 32)) SeekEntryResult!12495)

(assert (=> b!1500163 (= lt!652851 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652852 vacantBefore!10 (select (arr!48266 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500164 () Bool)

(declare-fun res!1021316 () Bool)

(assert (=> b!1500164 (=> (not res!1021316) (not e!839533))))

(declare-datatypes ((List!34938 0))(
  ( (Nil!34935) (Cons!34934 (h!36332 (_ BitVec 64)) (t!49639 List!34938)) )
))
(declare-fun arrayNoDuplicates!0 (array!100022 (_ BitVec 32) List!34938) Bool)

(assert (=> b!1500164 (= res!1021316 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34935))))

(declare-fun res!1021313 () Bool)

(assert (=> start!127728 (=> (not res!1021313) (not e!839533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127728 (= res!1021313 (validMask!0 mask!2661))))

(assert (=> start!127728 e!839533))

(assert (=> start!127728 true))

(declare-fun array_inv!37211 (array!100022) Bool)

(assert (=> start!127728 (array_inv!37211 a!2850)))

(declare-fun b!1500165 () Bool)

(declare-fun res!1021310 () Bool)

(assert (=> b!1500165 (=> (not res!1021310) (not e!839533))))

(assert (=> b!1500165 (= res!1021310 (validKeyInArray!0 (select (arr!48266 a!2850) i!996)))))

(declare-fun b!1500166 () Bool)

(declare-fun res!1021309 () Bool)

(assert (=> b!1500166 (=> (not res!1021309) (not e!839533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100022 (_ BitVec 32)) Bool)

(assert (=> b!1500166 (= res!1021309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500167 () Bool)

(declare-fun res!1021317 () Bool)

(assert (=> b!1500167 (=> (not res!1021317) (not e!839533))))

(assert (=> b!1500167 (= res!1021317 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48266 a!2850) j!87) a!2850 mask!2661) (Found!12495 j!87)))))

(declare-fun b!1500168 () Bool)

(declare-fun res!1021311 () Bool)

(assert (=> b!1500168 (=> (not res!1021311) (not e!839533))))

(assert (=> b!1500168 (= res!1021311 (not (= (select (arr!48266 a!2850) index!625) (select (arr!48266 a!2850) j!87))))))

(declare-fun b!1500169 () Bool)

(declare-fun res!1021308 () Bool)

(assert (=> b!1500169 (=> (not res!1021308) (not e!839533))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500169 (= res!1021308 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48817 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48817 a!2850)) (= (select (arr!48266 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48266 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48817 a!2850))))))

(assert (= (and start!127728 res!1021313) b!1500161))

(assert (= (and b!1500161 res!1021315) b!1500165))

(assert (= (and b!1500165 res!1021310) b!1500162))

(assert (= (and b!1500162 res!1021314) b!1500166))

(assert (= (and b!1500166 res!1021309) b!1500164))

(assert (= (and b!1500164 res!1021316) b!1500169))

(assert (= (and b!1500169 res!1021308) b!1500167))

(assert (= (and b!1500167 res!1021317) b!1500168))

(assert (= (and b!1500168 res!1021311) b!1500160))

(assert (= (and b!1500160 res!1021312) b!1500163))

(declare-fun m!1383411 () Bool)

(assert (=> b!1500162 m!1383411))

(assert (=> b!1500162 m!1383411))

(declare-fun m!1383413 () Bool)

(assert (=> b!1500162 m!1383413))

(declare-fun m!1383415 () Bool)

(assert (=> b!1500166 m!1383415))

(declare-fun m!1383417 () Bool)

(assert (=> b!1500169 m!1383417))

(declare-fun m!1383419 () Bool)

(assert (=> b!1500169 m!1383419))

(declare-fun m!1383421 () Bool)

(assert (=> b!1500169 m!1383421))

(declare-fun m!1383423 () Bool)

(assert (=> start!127728 m!1383423))

(declare-fun m!1383425 () Bool)

(assert (=> start!127728 m!1383425))

(declare-fun m!1383427 () Bool)

(assert (=> b!1500164 m!1383427))

(assert (=> b!1500163 m!1383411))

(assert (=> b!1500163 m!1383411))

(declare-fun m!1383429 () Bool)

(assert (=> b!1500163 m!1383429))

(declare-fun m!1383431 () Bool)

(assert (=> b!1500165 m!1383431))

(assert (=> b!1500165 m!1383431))

(declare-fun m!1383433 () Bool)

(assert (=> b!1500165 m!1383433))

(declare-fun m!1383435 () Bool)

(assert (=> b!1500160 m!1383435))

(declare-fun m!1383437 () Bool)

(assert (=> b!1500168 m!1383437))

(assert (=> b!1500168 m!1383411))

(assert (=> b!1500167 m!1383411))

(assert (=> b!1500167 m!1383411))

(declare-fun m!1383439 () Bool)

(assert (=> b!1500167 m!1383439))

(check-sat (not b!1500164) (not start!127728) (not b!1500163) (not b!1500165) (not b!1500166) (not b!1500162) (not b!1500160) (not b!1500167))
(check-sat)
