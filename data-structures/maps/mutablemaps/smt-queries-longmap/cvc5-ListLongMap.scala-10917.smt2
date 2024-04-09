; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127810 () Bool)

(assert start!127810)

(declare-fun b!1501437 () Bool)

(declare-fun e!839950 () Bool)

(declare-fun e!839951 () Bool)

(assert (=> b!1501437 (= e!839950 e!839951)))

(declare-fun res!1022589 () Bool)

(assert (=> b!1501437 (=> (not res!1022589) (not e!839951))))

(declare-datatypes ((SeekEntryResult!12536 0))(
  ( (MissingZero!12536 (index!52535 (_ BitVec 32))) (Found!12536 (index!52536 (_ BitVec 32))) (Intermediate!12536 (undefined!13348 Bool) (index!52537 (_ BitVec 32)) (x!134215 (_ BitVec 32))) (Undefined!12536) (MissingVacant!12536 (index!52538 (_ BitVec 32))) )
))
(declare-fun lt!653144 () SeekEntryResult!12536)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100104 0))(
  ( (array!100105 (arr!48307 (Array (_ BitVec 32) (_ BitVec 64))) (size!48858 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100104)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100104 (_ BitVec 32)) SeekEntryResult!12536)

(assert (=> b!1501437 (= res!1022589 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48307 a!2850) j!87) a!2850 mask!2661) lt!653144))))

(assert (=> b!1501437 (= lt!653144 (Found!12536 j!87))))

(declare-fun b!1501438 () Bool)

(declare-fun res!1022592 () Bool)

(assert (=> b!1501438 (=> (not res!1022592) (not e!839950))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501438 (= res!1022592 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48858 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48858 a!2850)) (= (select (arr!48307 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48307 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48858 a!2850))))))

(declare-fun res!1022588 () Bool)

(assert (=> start!127810 (=> (not res!1022588) (not e!839950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127810 (= res!1022588 (validMask!0 mask!2661))))

(assert (=> start!127810 e!839950))

(assert (=> start!127810 true))

(declare-fun array_inv!37252 (array!100104) Bool)

(assert (=> start!127810 (array_inv!37252 a!2850)))

(declare-fun b!1501439 () Bool)

(declare-fun e!839948 () Bool)

(assert (=> b!1501439 (= e!839951 e!839948)))

(declare-fun res!1022590 () Bool)

(assert (=> b!1501439 (=> (not res!1022590) (not e!839948))))

(declare-fun lt!653146 () (_ BitVec 32))

(assert (=> b!1501439 (= res!1022590 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653146 #b00000000000000000000000000000000) (bvslt lt!653146 (size!48858 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501439 (= lt!653146 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501440 () Bool)

(declare-fun res!1022594 () Bool)

(assert (=> b!1501440 (=> (not res!1022594) (not e!839950))))

(assert (=> b!1501440 (= res!1022594 (and (= (size!48858 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48858 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48858 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501441 () Bool)

(declare-fun res!1022593 () Bool)

(assert (=> b!1501441 (=> (not res!1022593) (not e!839950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501441 (= res!1022593 (validKeyInArray!0 (select (arr!48307 a!2850) i!996)))))

(declare-fun b!1501442 () Bool)

(declare-fun res!1022587 () Bool)

(assert (=> b!1501442 (=> (not res!1022587) (not e!839951))))

(assert (=> b!1501442 (= res!1022587 (not (= (select (arr!48307 a!2850) index!625) (select (arr!48307 a!2850) j!87))))))

(declare-fun b!1501443 () Bool)

(declare-fun res!1022591 () Bool)

(assert (=> b!1501443 (=> (not res!1022591) (not e!839950))))

(assert (=> b!1501443 (= res!1022591 (validKeyInArray!0 (select (arr!48307 a!2850) j!87)))))

(declare-fun b!1501444 () Bool)

(assert (=> b!1501444 (= e!839948 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(assert (=> b!1501444 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653146 vacantAfter!10 (select (store (arr!48307 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100105 (store (arr!48307 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48858 a!2850)) mask!2661) lt!653144)))

(declare-datatypes ((Unit!50180 0))(
  ( (Unit!50181) )
))
(declare-fun lt!653145 () Unit!50180)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50180)

(assert (=> b!1501444 (= lt!653145 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653146 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501445 () Bool)

(declare-fun res!1022595 () Bool)

(assert (=> b!1501445 (=> (not res!1022595) (not e!839948))))

(assert (=> b!1501445 (= res!1022595 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653146 vacantBefore!10 (select (arr!48307 a!2850) j!87) a!2850 mask!2661) lt!653144))))

(declare-fun b!1501446 () Bool)

(declare-fun res!1022585 () Bool)

(assert (=> b!1501446 (=> (not res!1022585) (not e!839950))))

(declare-datatypes ((List!34979 0))(
  ( (Nil!34976) (Cons!34975 (h!36373 (_ BitVec 64)) (t!49680 List!34979)) )
))
(declare-fun arrayNoDuplicates!0 (array!100104 (_ BitVec 32) List!34979) Bool)

(assert (=> b!1501446 (= res!1022585 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34976))))

(declare-fun b!1501447 () Bool)

(declare-fun res!1022586 () Bool)

(assert (=> b!1501447 (=> (not res!1022586) (not e!839950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100104 (_ BitVec 32)) Bool)

(assert (=> b!1501447 (= res!1022586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127810 res!1022588) b!1501440))

(assert (= (and b!1501440 res!1022594) b!1501441))

(assert (= (and b!1501441 res!1022593) b!1501443))

(assert (= (and b!1501443 res!1022591) b!1501447))

(assert (= (and b!1501447 res!1022586) b!1501446))

(assert (= (and b!1501446 res!1022585) b!1501438))

(assert (= (and b!1501438 res!1022592) b!1501437))

(assert (= (and b!1501437 res!1022589) b!1501442))

(assert (= (and b!1501442 res!1022587) b!1501439))

(assert (= (and b!1501439 res!1022590) b!1501445))

(assert (= (and b!1501445 res!1022595) b!1501444))

(declare-fun m!1384731 () Bool)

(assert (=> b!1501445 m!1384731))

(assert (=> b!1501445 m!1384731))

(declare-fun m!1384733 () Bool)

(assert (=> b!1501445 m!1384733))

(declare-fun m!1384735 () Bool)

(assert (=> b!1501442 m!1384735))

(assert (=> b!1501442 m!1384731))

(declare-fun m!1384737 () Bool)

(assert (=> b!1501446 m!1384737))

(declare-fun m!1384739 () Bool)

(assert (=> b!1501441 m!1384739))

(assert (=> b!1501441 m!1384739))

(declare-fun m!1384741 () Bool)

(assert (=> b!1501441 m!1384741))

(declare-fun m!1384743 () Bool)

(assert (=> start!127810 m!1384743))

(declare-fun m!1384745 () Bool)

(assert (=> start!127810 m!1384745))

(declare-fun m!1384747 () Bool)

(assert (=> b!1501447 m!1384747))

(assert (=> b!1501443 m!1384731))

(assert (=> b!1501443 m!1384731))

(declare-fun m!1384749 () Bool)

(assert (=> b!1501443 m!1384749))

(declare-fun m!1384751 () Bool)

(assert (=> b!1501439 m!1384751))

(assert (=> b!1501437 m!1384731))

(assert (=> b!1501437 m!1384731))

(declare-fun m!1384753 () Bool)

(assert (=> b!1501437 m!1384753))

(declare-fun m!1384755 () Bool)

(assert (=> b!1501444 m!1384755))

(declare-fun m!1384757 () Bool)

(assert (=> b!1501444 m!1384757))

(assert (=> b!1501444 m!1384757))

(declare-fun m!1384759 () Bool)

(assert (=> b!1501444 m!1384759))

(declare-fun m!1384761 () Bool)

(assert (=> b!1501444 m!1384761))

(declare-fun m!1384763 () Bool)

(assert (=> b!1501438 m!1384763))

(assert (=> b!1501438 m!1384755))

(declare-fun m!1384765 () Bool)

(assert (=> b!1501438 m!1384765))

(push 1)

(assert (not b!1501446))

(assert (not b!1501447))

(assert (not b!1501445))

(assert (not b!1501444))

(assert (not b!1501437))

(assert (not b!1501439))

(assert (not b!1501443))

(assert (not start!127810))

(assert (not b!1501441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

