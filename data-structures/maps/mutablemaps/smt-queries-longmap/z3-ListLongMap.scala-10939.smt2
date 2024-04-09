; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128016 () Bool)

(assert start!128016)

(declare-fun res!1024290 () Bool)

(declare-fun e!840607 () Bool)

(assert (=> start!128016 (=> (not res!1024290) (not e!840607))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128016 (= res!1024290 (validMask!0 mask!2661))))

(assert (=> start!128016 e!840607))

(assert (=> start!128016 true))

(declare-datatypes ((array!100244 0))(
  ( (array!100245 (arr!48374 (Array (_ BitVec 32) (_ BitVec 64))) (size!48925 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100244)

(declare-fun array_inv!37319 (array!100244) Bool)

(assert (=> start!128016 (array_inv!37319 a!2850)))

(declare-fun b!1503332 () Bool)

(declare-fun res!1024289 () Bool)

(assert (=> b!1503332 (=> (not res!1024289) (not e!840607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100244 (_ BitVec 32)) Bool)

(assert (=> b!1503332 (= res!1024289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503333 () Bool)

(declare-fun res!1024285 () Bool)

(assert (=> b!1503333 (=> (not res!1024285) (not e!840607))))

(declare-datatypes ((List!35046 0))(
  ( (Nil!35043) (Cons!35042 (h!36440 (_ BitVec 64)) (t!49747 List!35046)) )
))
(declare-fun arrayNoDuplicates!0 (array!100244 (_ BitVec 32) List!35046) Bool)

(assert (=> b!1503333 (= res!1024285 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35043))))

(declare-fun b!1503334 () Bool)

(declare-fun res!1024283 () Bool)

(assert (=> b!1503334 (=> (not res!1024283) (not e!840607))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503334 (= res!1024283 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48925 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48925 a!2850)) (= (select (arr!48374 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48374 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48925 a!2850))))))

(declare-fun b!1503335 () Bool)

(declare-fun res!1024286 () Bool)

(assert (=> b!1503335 (=> (not res!1024286) (not e!840607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503335 (= res!1024286 (validKeyInArray!0 (select (arr!48374 a!2850) i!996)))))

(declare-fun b!1503336 () Bool)

(declare-fun res!1024282 () Bool)

(assert (=> b!1503336 (=> (not res!1024282) (not e!840607))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503336 (= res!1024282 (not (= (select (arr!48374 a!2850) index!625) (select (arr!48374 a!2850) j!87))))))

(declare-fun b!1503337 () Bool)

(declare-fun res!1024287 () Bool)

(assert (=> b!1503337 (=> (not res!1024287) (not e!840607))))

(declare-datatypes ((SeekEntryResult!12591 0))(
  ( (MissingZero!12591 (index!52755 (_ BitVec 32))) (Found!12591 (index!52756 (_ BitVec 32))) (Intermediate!12591 (undefined!13403 Bool) (index!52757 (_ BitVec 32)) (x!134452 (_ BitVec 32))) (Undefined!12591) (MissingVacant!12591 (index!52758 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100244 (_ BitVec 32)) SeekEntryResult!12591)

(assert (=> b!1503337 (= res!1024287 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48374 a!2850) j!87) a!2850 mask!2661) (Found!12591 j!87)))))

(declare-fun b!1503338 () Bool)

(declare-fun res!1024288 () Bool)

(assert (=> b!1503338 (=> (not res!1024288) (not e!840607))))

(assert (=> b!1503338 (= res!1024288 (validKeyInArray!0 (select (arr!48374 a!2850) j!87)))))

(declare-fun b!1503339 () Bool)

(assert (=> b!1503339 (= e!840607 false)))

(declare-fun lt!653482 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503339 (= lt!653482 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503340 () Bool)

(declare-fun res!1024284 () Bool)

(assert (=> b!1503340 (=> (not res!1024284) (not e!840607))))

(assert (=> b!1503340 (= res!1024284 (and (= (size!48925 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48925 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48925 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128016 res!1024290) b!1503340))

(assert (= (and b!1503340 res!1024284) b!1503335))

(assert (= (and b!1503335 res!1024286) b!1503338))

(assert (= (and b!1503338 res!1024288) b!1503332))

(assert (= (and b!1503332 res!1024289) b!1503333))

(assert (= (and b!1503333 res!1024285) b!1503334))

(assert (= (and b!1503334 res!1024283) b!1503337))

(assert (= (and b!1503337 res!1024287) b!1503336))

(assert (= (and b!1503336 res!1024282) b!1503339))

(declare-fun m!1386637 () Bool)

(assert (=> b!1503338 m!1386637))

(assert (=> b!1503338 m!1386637))

(declare-fun m!1386639 () Bool)

(assert (=> b!1503338 m!1386639))

(declare-fun m!1386641 () Bool)

(assert (=> b!1503333 m!1386641))

(declare-fun m!1386643 () Bool)

(assert (=> start!128016 m!1386643))

(declare-fun m!1386645 () Bool)

(assert (=> start!128016 m!1386645))

(declare-fun m!1386647 () Bool)

(assert (=> b!1503339 m!1386647))

(declare-fun m!1386649 () Bool)

(assert (=> b!1503332 m!1386649))

(declare-fun m!1386651 () Bool)

(assert (=> b!1503336 m!1386651))

(assert (=> b!1503336 m!1386637))

(declare-fun m!1386653 () Bool)

(assert (=> b!1503334 m!1386653))

(declare-fun m!1386655 () Bool)

(assert (=> b!1503334 m!1386655))

(declare-fun m!1386657 () Bool)

(assert (=> b!1503334 m!1386657))

(assert (=> b!1503337 m!1386637))

(assert (=> b!1503337 m!1386637))

(declare-fun m!1386659 () Bool)

(assert (=> b!1503337 m!1386659))

(declare-fun m!1386661 () Bool)

(assert (=> b!1503335 m!1386661))

(assert (=> b!1503335 m!1386661))

(declare-fun m!1386663 () Bool)

(assert (=> b!1503335 m!1386663))

(check-sat (not b!1503332) (not b!1503338) (not b!1503335) (not b!1503339) (not start!128016) (not b!1503337) (not b!1503333))
