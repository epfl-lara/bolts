; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127678 () Bool)

(assert start!127678)

(declare-fun b!1499410 () Bool)

(declare-fun res!1020561 () Bool)

(declare-fun e!839307 () Bool)

(assert (=> b!1499410 (=> (not res!1020561) (not e!839307))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99972 0))(
  ( (array!99973 (arr!48241 (Array (_ BitVec 32) (_ BitVec 64))) (size!48792 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99972)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499410 (= res!1020561 (and (= (size!48792 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48792 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48792 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499411 () Bool)

(declare-fun e!839309 () Bool)

(assert (=> b!1499411 (= e!839309 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12470 0))(
  ( (MissingZero!12470 (index!52271 (_ BitVec 32))) (Found!12470 (index!52272 (_ BitVec 32))) (Intermediate!12470 (undefined!13282 Bool) (index!52273 (_ BitVec 32)) (x!133973 (_ BitVec 32))) (Undefined!12470) (MissingVacant!12470 (index!52274 (_ BitVec 32))) )
))
(declare-fun lt!652701 () SeekEntryResult!12470)

(declare-fun lt!652702 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99972 (_ BitVec 32)) SeekEntryResult!12470)

(assert (=> b!1499411 (= lt!652701 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652702 vacantBefore!10 (select (arr!48241 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499412 () Bool)

(declare-fun res!1020560 () Bool)

(assert (=> b!1499412 (=> (not res!1020560) (not e!839307))))

(declare-datatypes ((List!34913 0))(
  ( (Nil!34910) (Cons!34909 (h!36307 (_ BitVec 64)) (t!49614 List!34913)) )
))
(declare-fun arrayNoDuplicates!0 (array!99972 (_ BitVec 32) List!34913) Bool)

(assert (=> b!1499412 (= res!1020560 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34910))))

(declare-fun res!1020558 () Bool)

(assert (=> start!127678 (=> (not res!1020558) (not e!839307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127678 (= res!1020558 (validMask!0 mask!2661))))

(assert (=> start!127678 e!839307))

(assert (=> start!127678 true))

(declare-fun array_inv!37186 (array!99972) Bool)

(assert (=> start!127678 (array_inv!37186 a!2850)))

(declare-fun b!1499413 () Bool)

(declare-fun res!1020562 () Bool)

(assert (=> b!1499413 (=> (not res!1020562) (not e!839307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499413 (= res!1020562 (validKeyInArray!0 (select (arr!48241 a!2850) j!87)))))

(declare-fun b!1499414 () Bool)

(declare-fun res!1020559 () Bool)

(assert (=> b!1499414 (=> (not res!1020559) (not e!839307))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499414 (= res!1020559 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48792 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48792 a!2850)) (= (select (arr!48241 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48241 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48792 a!2850))))))

(declare-fun b!1499415 () Bool)

(declare-fun res!1020565 () Bool)

(assert (=> b!1499415 (=> (not res!1020565) (not e!839307))))

(assert (=> b!1499415 (= res!1020565 (validKeyInArray!0 (select (arr!48241 a!2850) i!996)))))

(declare-fun b!1499416 () Bool)

(declare-fun res!1020567 () Bool)

(assert (=> b!1499416 (=> (not res!1020567) (not e!839307))))

(assert (=> b!1499416 (= res!1020567 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48241 a!2850) j!87) a!2850 mask!2661) (Found!12470 j!87)))))

(declare-fun b!1499417 () Bool)

(declare-fun res!1020563 () Bool)

(assert (=> b!1499417 (=> (not res!1020563) (not e!839307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99972 (_ BitVec 32)) Bool)

(assert (=> b!1499417 (= res!1020563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499418 () Bool)

(declare-fun res!1020564 () Bool)

(assert (=> b!1499418 (=> (not res!1020564) (not e!839307))))

(assert (=> b!1499418 (= res!1020564 (not (= (select (arr!48241 a!2850) index!625) (select (arr!48241 a!2850) j!87))))))

(declare-fun b!1499419 () Bool)

(assert (=> b!1499419 (= e!839307 e!839309)))

(declare-fun res!1020566 () Bool)

(assert (=> b!1499419 (=> (not res!1020566) (not e!839309))))

(assert (=> b!1499419 (= res!1020566 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652702 #b00000000000000000000000000000000) (bvslt lt!652702 (size!48792 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499419 (= lt!652702 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127678 res!1020558) b!1499410))

(assert (= (and b!1499410 res!1020561) b!1499415))

(assert (= (and b!1499415 res!1020565) b!1499413))

(assert (= (and b!1499413 res!1020562) b!1499417))

(assert (= (and b!1499417 res!1020563) b!1499412))

(assert (= (and b!1499412 res!1020560) b!1499414))

(assert (= (and b!1499414 res!1020559) b!1499416))

(assert (= (and b!1499416 res!1020567) b!1499418))

(assert (= (and b!1499418 res!1020564) b!1499419))

(assert (= (and b!1499419 res!1020566) b!1499411))

(declare-fun m!1382661 () Bool)

(assert (=> b!1499411 m!1382661))

(assert (=> b!1499411 m!1382661))

(declare-fun m!1382663 () Bool)

(assert (=> b!1499411 m!1382663))

(declare-fun m!1382665 () Bool)

(assert (=> b!1499417 m!1382665))

(declare-fun m!1382667 () Bool)

(assert (=> start!127678 m!1382667))

(declare-fun m!1382669 () Bool)

(assert (=> start!127678 m!1382669))

(assert (=> b!1499416 m!1382661))

(assert (=> b!1499416 m!1382661))

(declare-fun m!1382671 () Bool)

(assert (=> b!1499416 m!1382671))

(declare-fun m!1382673 () Bool)

(assert (=> b!1499418 m!1382673))

(assert (=> b!1499418 m!1382661))

(declare-fun m!1382675 () Bool)

(assert (=> b!1499412 m!1382675))

(declare-fun m!1382677 () Bool)

(assert (=> b!1499419 m!1382677))

(assert (=> b!1499413 m!1382661))

(assert (=> b!1499413 m!1382661))

(declare-fun m!1382679 () Bool)

(assert (=> b!1499413 m!1382679))

(declare-fun m!1382681 () Bool)

(assert (=> b!1499414 m!1382681))

(declare-fun m!1382683 () Bool)

(assert (=> b!1499414 m!1382683))

(declare-fun m!1382685 () Bool)

(assert (=> b!1499414 m!1382685))

(declare-fun m!1382687 () Bool)

(assert (=> b!1499415 m!1382687))

(assert (=> b!1499415 m!1382687))

(declare-fun m!1382689 () Bool)

(assert (=> b!1499415 m!1382689))

(push 1)

