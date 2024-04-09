; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128024 () Bool)

(assert start!128024)

(declare-fun b!1503440 () Bool)

(declare-fun res!1024395 () Bool)

(declare-fun e!840632 () Bool)

(assert (=> b!1503440 (=> (not res!1024395) (not e!840632))))

(declare-datatypes ((array!100252 0))(
  ( (array!100253 (arr!48378 (Array (_ BitVec 32) (_ BitVec 64))) (size!48929 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100252)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100252 (_ BitVec 32)) Bool)

(assert (=> b!1503440 (= res!1024395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503441 () Bool)

(declare-fun res!1024391 () Bool)

(assert (=> b!1503441 (=> (not res!1024391) (not e!840632))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12595 0))(
  ( (MissingZero!12595 (index!52771 (_ BitVec 32))) (Found!12595 (index!52772 (_ BitVec 32))) (Intermediate!12595 (undefined!13407 Bool) (index!52773 (_ BitVec 32)) (x!134464 (_ BitVec 32))) (Undefined!12595) (MissingVacant!12595 (index!52774 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100252 (_ BitVec 32)) SeekEntryResult!12595)

(assert (=> b!1503441 (= res!1024391 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48378 a!2850) j!87) a!2850 mask!2661) (Found!12595 j!87)))))

(declare-fun b!1503442 () Bool)

(assert (=> b!1503442 (= e!840632 false)))

(declare-fun lt!653494 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503442 (= lt!653494 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503443 () Bool)

(declare-fun res!1024392 () Bool)

(assert (=> b!1503443 (=> (not res!1024392) (not e!840632))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503443 (= res!1024392 (and (= (size!48929 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48929 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48929 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503444 () Bool)

(declare-fun res!1024393 () Bool)

(assert (=> b!1503444 (=> (not res!1024393) (not e!840632))))

(declare-datatypes ((List!35050 0))(
  ( (Nil!35047) (Cons!35046 (h!36444 (_ BitVec 64)) (t!49751 List!35050)) )
))
(declare-fun arrayNoDuplicates!0 (array!100252 (_ BitVec 32) List!35050) Bool)

(assert (=> b!1503444 (= res!1024393 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35047))))

(declare-fun res!1024390 () Bool)

(assert (=> start!128024 (=> (not res!1024390) (not e!840632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128024 (= res!1024390 (validMask!0 mask!2661))))

(assert (=> start!128024 e!840632))

(assert (=> start!128024 true))

(declare-fun array_inv!37323 (array!100252) Bool)

(assert (=> start!128024 (array_inv!37323 a!2850)))

(declare-fun b!1503445 () Bool)

(declare-fun res!1024394 () Bool)

(assert (=> b!1503445 (=> (not res!1024394) (not e!840632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503445 (= res!1024394 (validKeyInArray!0 (select (arr!48378 a!2850) i!996)))))

(declare-fun b!1503446 () Bool)

(declare-fun res!1024397 () Bool)

(assert (=> b!1503446 (=> (not res!1024397) (not e!840632))))

(assert (=> b!1503446 (= res!1024397 (not (= (select (arr!48378 a!2850) index!625) (select (arr!48378 a!2850) j!87))))))

(declare-fun b!1503447 () Bool)

(declare-fun res!1024396 () Bool)

(assert (=> b!1503447 (=> (not res!1024396) (not e!840632))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503447 (= res!1024396 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48929 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48929 a!2850)) (= (select (arr!48378 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48378 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48929 a!2850))))))

(declare-fun b!1503448 () Bool)

(declare-fun res!1024398 () Bool)

(assert (=> b!1503448 (=> (not res!1024398) (not e!840632))))

(assert (=> b!1503448 (= res!1024398 (validKeyInArray!0 (select (arr!48378 a!2850) j!87)))))

(assert (= (and start!128024 res!1024390) b!1503443))

(assert (= (and b!1503443 res!1024392) b!1503445))

(assert (= (and b!1503445 res!1024394) b!1503448))

(assert (= (and b!1503448 res!1024398) b!1503440))

(assert (= (and b!1503440 res!1024395) b!1503444))

(assert (= (and b!1503444 res!1024393) b!1503447))

(assert (= (and b!1503447 res!1024396) b!1503441))

(assert (= (and b!1503441 res!1024391) b!1503446))

(assert (= (and b!1503446 res!1024397) b!1503442))

(declare-fun m!1386749 () Bool)

(assert (=> b!1503440 m!1386749))

(declare-fun m!1386751 () Bool)

(assert (=> start!128024 m!1386751))

(declare-fun m!1386753 () Bool)

(assert (=> start!128024 m!1386753))

(declare-fun m!1386755 () Bool)

(assert (=> b!1503448 m!1386755))

(assert (=> b!1503448 m!1386755))

(declare-fun m!1386757 () Bool)

(assert (=> b!1503448 m!1386757))

(declare-fun m!1386759 () Bool)

(assert (=> b!1503445 m!1386759))

(assert (=> b!1503445 m!1386759))

(declare-fun m!1386761 () Bool)

(assert (=> b!1503445 m!1386761))

(assert (=> b!1503441 m!1386755))

(assert (=> b!1503441 m!1386755))

(declare-fun m!1386763 () Bool)

(assert (=> b!1503441 m!1386763))

(declare-fun m!1386765 () Bool)

(assert (=> b!1503442 m!1386765))

(declare-fun m!1386767 () Bool)

(assert (=> b!1503447 m!1386767))

(declare-fun m!1386769 () Bool)

(assert (=> b!1503447 m!1386769))

(declare-fun m!1386771 () Bool)

(assert (=> b!1503447 m!1386771))

(declare-fun m!1386773 () Bool)

(assert (=> b!1503444 m!1386773))

(declare-fun m!1386775 () Bool)

(assert (=> b!1503446 m!1386775))

(assert (=> b!1503446 m!1386755))

(push 1)

(assert (not b!1503441))

(assert (not b!1503448))

(assert (not b!1503440))

(assert (not start!128024))

(assert (not b!1503444))

(assert (not b!1503445))

(assert (not b!1503442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

