; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127740 () Bool)

(assert start!127740)

(declare-fun b!1500340 () Bool)

(declare-fun res!1021492 () Bool)

(declare-fun e!839586 () Bool)

(assert (=> b!1500340 (=> (not res!1021492) (not e!839586))))

(declare-datatypes ((array!100034 0))(
  ( (array!100035 (arr!48272 (Array (_ BitVec 32) (_ BitVec 64))) (size!48823 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100034)

(declare-datatypes ((List!34944 0))(
  ( (Nil!34941) (Cons!34940 (h!36338 (_ BitVec 64)) (t!49645 List!34944)) )
))
(declare-fun arrayNoDuplicates!0 (array!100034 (_ BitVec 32) List!34944) Bool)

(assert (=> b!1500340 (= res!1021492 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34941))))

(declare-fun b!1500341 () Bool)

(declare-fun res!1021495 () Bool)

(assert (=> b!1500341 (=> (not res!1021495) (not e!839586))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500341 (= res!1021495 (validKeyInArray!0 (select (arr!48272 a!2850) j!87)))))

(declare-fun res!1021490 () Bool)

(assert (=> start!127740 (=> (not res!1021490) (not e!839586))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127740 (= res!1021490 (validMask!0 mask!2661))))

(assert (=> start!127740 e!839586))

(assert (=> start!127740 true))

(declare-fun array_inv!37217 (array!100034) Bool)

(assert (=> start!127740 (array_inv!37217 a!2850)))

(declare-fun b!1500342 () Bool)

(declare-fun e!839588 () Bool)

(assert (=> b!1500342 (= e!839588 false)))

(declare-fun lt!652887 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12501 0))(
  ( (MissingZero!12501 (index!52395 (_ BitVec 32))) (Found!12501 (index!52396 (_ BitVec 32))) (Intermediate!12501 (undefined!13313 Bool) (index!52397 (_ BitVec 32)) (x!134084 (_ BitVec 32))) (Undefined!12501) (MissingVacant!12501 (index!52398 (_ BitVec 32))) )
))
(declare-fun lt!652888 () SeekEntryResult!12501)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100034 (_ BitVec 32)) SeekEntryResult!12501)

(assert (=> b!1500342 (= lt!652888 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652887 vacantBefore!10 (select (arr!48272 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500343 () Bool)

(declare-fun res!1021497 () Bool)

(assert (=> b!1500343 (=> (not res!1021497) (not e!839586))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500343 (= res!1021497 (validKeyInArray!0 (select (arr!48272 a!2850) i!996)))))

(declare-fun b!1500344 () Bool)

(declare-fun res!1021496 () Bool)

(assert (=> b!1500344 (=> (not res!1021496) (not e!839586))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1500344 (= res!1021496 (not (= (select (arr!48272 a!2850) index!625) (select (arr!48272 a!2850) j!87))))))

(declare-fun b!1500345 () Bool)

(declare-fun res!1021491 () Bool)

(assert (=> b!1500345 (=> (not res!1021491) (not e!839586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100034 (_ BitVec 32)) Bool)

(assert (=> b!1500345 (= res!1021491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500346 () Bool)

(declare-fun res!1021488 () Bool)

(assert (=> b!1500346 (=> (not res!1021488) (not e!839586))))

(assert (=> b!1500346 (= res!1021488 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48272 a!2850) j!87) a!2850 mask!2661) (Found!12501 j!87)))))

(declare-fun b!1500347 () Bool)

(declare-fun res!1021489 () Bool)

(assert (=> b!1500347 (=> (not res!1021489) (not e!839586))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500347 (= res!1021489 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48823 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48823 a!2850)) (= (select (arr!48272 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48272 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48823 a!2850))))))

(declare-fun b!1500348 () Bool)

(assert (=> b!1500348 (= e!839586 e!839588)))

(declare-fun res!1021494 () Bool)

(assert (=> b!1500348 (=> (not res!1021494) (not e!839588))))

(assert (=> b!1500348 (= res!1021494 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652887 #b00000000000000000000000000000000) (bvslt lt!652887 (size!48823 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500348 (= lt!652887 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500349 () Bool)

(declare-fun res!1021493 () Bool)

(assert (=> b!1500349 (=> (not res!1021493) (not e!839586))))

(assert (=> b!1500349 (= res!1021493 (and (= (size!48823 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48823 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48823 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127740 res!1021490) b!1500349))

(assert (= (and b!1500349 res!1021493) b!1500343))

(assert (= (and b!1500343 res!1021497) b!1500341))

(assert (= (and b!1500341 res!1021495) b!1500345))

(assert (= (and b!1500345 res!1021491) b!1500340))

(assert (= (and b!1500340 res!1021492) b!1500347))

(assert (= (and b!1500347 res!1021489) b!1500346))

(assert (= (and b!1500346 res!1021488) b!1500344))

(assert (= (and b!1500344 res!1021496) b!1500348))

(assert (= (and b!1500348 res!1021494) b!1500342))

(declare-fun m!1383591 () Bool)

(assert (=> b!1500345 m!1383591))

(declare-fun m!1383593 () Bool)

(assert (=> b!1500348 m!1383593))

(declare-fun m!1383595 () Bool)

(assert (=> b!1500347 m!1383595))

(declare-fun m!1383597 () Bool)

(assert (=> b!1500347 m!1383597))

(declare-fun m!1383599 () Bool)

(assert (=> b!1500347 m!1383599))

(declare-fun m!1383601 () Bool)

(assert (=> b!1500346 m!1383601))

(assert (=> b!1500346 m!1383601))

(declare-fun m!1383603 () Bool)

(assert (=> b!1500346 m!1383603))

(declare-fun m!1383605 () Bool)

(assert (=> b!1500340 m!1383605))

(assert (=> b!1500341 m!1383601))

(assert (=> b!1500341 m!1383601))

(declare-fun m!1383607 () Bool)

(assert (=> b!1500341 m!1383607))

(declare-fun m!1383609 () Bool)

(assert (=> start!127740 m!1383609))

(declare-fun m!1383611 () Bool)

(assert (=> start!127740 m!1383611))

(assert (=> b!1500342 m!1383601))

(assert (=> b!1500342 m!1383601))

(declare-fun m!1383613 () Bool)

(assert (=> b!1500342 m!1383613))

(declare-fun m!1383615 () Bool)

(assert (=> b!1500343 m!1383615))

(assert (=> b!1500343 m!1383615))

(declare-fun m!1383617 () Bool)

(assert (=> b!1500343 m!1383617))

(declare-fun m!1383619 () Bool)

(assert (=> b!1500344 m!1383619))

(assert (=> b!1500344 m!1383601))

(check-sat (not b!1500348) (not b!1500345) (not b!1500342) (not b!1500343) (not b!1500340) (not b!1500341) (not start!127740) (not b!1500346))
(check-sat)
