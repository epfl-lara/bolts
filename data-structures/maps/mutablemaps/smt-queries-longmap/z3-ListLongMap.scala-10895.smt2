; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127680 () Bool)

(assert start!127680)

(declare-fun b!1499440 () Bool)

(declare-fun res!1020593 () Bool)

(declare-fun e!839317 () Bool)

(assert (=> b!1499440 (=> (not res!1020593) (not e!839317))))

(declare-datatypes ((array!99974 0))(
  ( (array!99975 (arr!48242 (Array (_ BitVec 32) (_ BitVec 64))) (size!48793 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99974)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499440 (= res!1020593 (validKeyInArray!0 (select (arr!48242 a!2850) j!87)))))

(declare-fun b!1499441 () Bool)

(declare-fun e!839318 () Bool)

(assert (=> b!1499441 (= e!839318 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun lt!652708 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12471 0))(
  ( (MissingZero!12471 (index!52275 (_ BitVec 32))) (Found!12471 (index!52276 (_ BitVec 32))) (Intermediate!12471 (undefined!13283 Bool) (index!52277 (_ BitVec 32)) (x!133974 (_ BitVec 32))) (Undefined!12471) (MissingVacant!12471 (index!52278 (_ BitVec 32))) )
))
(declare-fun lt!652707 () SeekEntryResult!12471)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99974 (_ BitVec 32)) SeekEntryResult!12471)

(assert (=> b!1499441 (= lt!652707 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652708 vacantBefore!10 (select (arr!48242 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499442 () Bool)

(declare-fun res!1020596 () Bool)

(assert (=> b!1499442 (=> (not res!1020596) (not e!839317))))

(declare-datatypes ((List!34914 0))(
  ( (Nil!34911) (Cons!34910 (h!36308 (_ BitVec 64)) (t!49615 List!34914)) )
))
(declare-fun arrayNoDuplicates!0 (array!99974 (_ BitVec 32) List!34914) Bool)

(assert (=> b!1499442 (= res!1020596 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34911))))

(declare-fun b!1499443 () Bool)

(declare-fun res!1020588 () Bool)

(assert (=> b!1499443 (=> (not res!1020588) (not e!839317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99974 (_ BitVec 32)) Bool)

(assert (=> b!1499443 (= res!1020588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499444 () Bool)

(declare-fun res!1020594 () Bool)

(assert (=> b!1499444 (=> (not res!1020594) (not e!839317))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499444 (= res!1020594 (and (= (size!48793 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48793 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48793 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499445 () Bool)

(declare-fun res!1020590 () Bool)

(assert (=> b!1499445 (=> (not res!1020590) (not e!839317))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1499445 (= res!1020590 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48242 a!2850) j!87) a!2850 mask!2661) (Found!12471 j!87)))))

(declare-fun b!1499446 () Bool)

(declare-fun res!1020597 () Bool)

(assert (=> b!1499446 (=> (not res!1020597) (not e!839317))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499446 (= res!1020597 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48793 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48793 a!2850)) (= (select (arr!48242 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48242 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48793 a!2850))))))

(declare-fun res!1020589 () Bool)

(assert (=> start!127680 (=> (not res!1020589) (not e!839317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127680 (= res!1020589 (validMask!0 mask!2661))))

(assert (=> start!127680 e!839317))

(assert (=> start!127680 true))

(declare-fun array_inv!37187 (array!99974) Bool)

(assert (=> start!127680 (array_inv!37187 a!2850)))

(declare-fun b!1499447 () Bool)

(declare-fun res!1020592 () Bool)

(assert (=> b!1499447 (=> (not res!1020592) (not e!839317))))

(assert (=> b!1499447 (= res!1020592 (validKeyInArray!0 (select (arr!48242 a!2850) i!996)))))

(declare-fun b!1499448 () Bool)

(assert (=> b!1499448 (= e!839317 e!839318)))

(declare-fun res!1020591 () Bool)

(assert (=> b!1499448 (=> (not res!1020591) (not e!839318))))

(assert (=> b!1499448 (= res!1020591 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652708 #b00000000000000000000000000000000) (bvslt lt!652708 (size!48793 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499448 (= lt!652708 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499449 () Bool)

(declare-fun res!1020595 () Bool)

(assert (=> b!1499449 (=> (not res!1020595) (not e!839317))))

(assert (=> b!1499449 (= res!1020595 (not (= (select (arr!48242 a!2850) index!625) (select (arr!48242 a!2850) j!87))))))

(assert (= (and start!127680 res!1020589) b!1499444))

(assert (= (and b!1499444 res!1020594) b!1499447))

(assert (= (and b!1499447 res!1020592) b!1499440))

(assert (= (and b!1499440 res!1020593) b!1499443))

(assert (= (and b!1499443 res!1020588) b!1499442))

(assert (= (and b!1499442 res!1020596) b!1499446))

(assert (= (and b!1499446 res!1020597) b!1499445))

(assert (= (and b!1499445 res!1020590) b!1499449))

(assert (= (and b!1499449 res!1020595) b!1499448))

(assert (= (and b!1499448 res!1020591) b!1499441))

(declare-fun m!1382691 () Bool)

(assert (=> b!1499449 m!1382691))

(declare-fun m!1382693 () Bool)

(assert (=> b!1499449 m!1382693))

(declare-fun m!1382695 () Bool)

(assert (=> start!127680 m!1382695))

(declare-fun m!1382697 () Bool)

(assert (=> start!127680 m!1382697))

(declare-fun m!1382699 () Bool)

(assert (=> b!1499447 m!1382699))

(assert (=> b!1499447 m!1382699))

(declare-fun m!1382701 () Bool)

(assert (=> b!1499447 m!1382701))

(assert (=> b!1499445 m!1382693))

(assert (=> b!1499445 m!1382693))

(declare-fun m!1382703 () Bool)

(assert (=> b!1499445 m!1382703))

(assert (=> b!1499440 m!1382693))

(assert (=> b!1499440 m!1382693))

(declare-fun m!1382705 () Bool)

(assert (=> b!1499440 m!1382705))

(declare-fun m!1382707 () Bool)

(assert (=> b!1499446 m!1382707))

(declare-fun m!1382709 () Bool)

(assert (=> b!1499446 m!1382709))

(declare-fun m!1382711 () Bool)

(assert (=> b!1499446 m!1382711))

(declare-fun m!1382713 () Bool)

(assert (=> b!1499448 m!1382713))

(declare-fun m!1382715 () Bool)

(assert (=> b!1499442 m!1382715))

(declare-fun m!1382717 () Bool)

(assert (=> b!1499443 m!1382717))

(assert (=> b!1499441 m!1382693))

(assert (=> b!1499441 m!1382693))

(declare-fun m!1382719 () Bool)

(assert (=> b!1499441 m!1382719))

(check-sat (not b!1499443) (not b!1499445) (not start!127680) (not b!1499447) (not b!1499441) (not b!1499440) (not b!1499442) (not b!1499448))
(check-sat)
