; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128028 () Bool)

(assert start!128028)

(declare-fun b!1503494 () Bool)

(declare-fun res!1024448 () Bool)

(declare-fun e!840643 () Bool)

(assert (=> b!1503494 (=> (not res!1024448) (not e!840643))))

(declare-datatypes ((array!100256 0))(
  ( (array!100257 (arr!48380 (Array (_ BitVec 32) (_ BitVec 64))) (size!48931 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100256)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1503494 (= res!1024448 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48931 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48931 a!2850)) (= (select (arr!48380 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48380 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48931 a!2850))))))

(declare-fun res!1024445 () Bool)

(assert (=> start!128028 (=> (not res!1024445) (not e!840643))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128028 (= res!1024445 (validMask!0 mask!2661))))

(assert (=> start!128028 e!840643))

(assert (=> start!128028 true))

(declare-fun array_inv!37325 (array!100256) Bool)

(assert (=> start!128028 (array_inv!37325 a!2850)))

(declare-fun b!1503495 () Bool)

(declare-fun res!1024451 () Bool)

(assert (=> b!1503495 (=> (not res!1024451) (not e!840643))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503495 (= res!1024451 (and (= (size!48931 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48931 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48931 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503496 () Bool)

(assert (=> b!1503496 (= e!840643 false)))

(declare-fun lt!653500 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503496 (= lt!653500 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503497 () Bool)

(declare-fun res!1024452 () Bool)

(assert (=> b!1503497 (=> (not res!1024452) (not e!840643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503497 (= res!1024452 (validKeyInArray!0 (select (arr!48380 a!2850) j!87)))))

(declare-fun b!1503498 () Bool)

(declare-fun res!1024444 () Bool)

(assert (=> b!1503498 (=> (not res!1024444) (not e!840643))))

(declare-datatypes ((SeekEntryResult!12597 0))(
  ( (MissingZero!12597 (index!52779 (_ BitVec 32))) (Found!12597 (index!52780 (_ BitVec 32))) (Intermediate!12597 (undefined!13409 Bool) (index!52781 (_ BitVec 32)) (x!134474 (_ BitVec 32))) (Undefined!12597) (MissingVacant!12597 (index!52782 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100256 (_ BitVec 32)) SeekEntryResult!12597)

(assert (=> b!1503498 (= res!1024444 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48380 a!2850) j!87) a!2850 mask!2661) (Found!12597 j!87)))))

(declare-fun b!1503499 () Bool)

(declare-fun res!1024450 () Bool)

(assert (=> b!1503499 (=> (not res!1024450) (not e!840643))))

(declare-datatypes ((List!35052 0))(
  ( (Nil!35049) (Cons!35048 (h!36446 (_ BitVec 64)) (t!49753 List!35052)) )
))
(declare-fun arrayNoDuplicates!0 (array!100256 (_ BitVec 32) List!35052) Bool)

(assert (=> b!1503499 (= res!1024450 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35049))))

(declare-fun b!1503500 () Bool)

(declare-fun res!1024446 () Bool)

(assert (=> b!1503500 (=> (not res!1024446) (not e!840643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100256 (_ BitVec 32)) Bool)

(assert (=> b!1503500 (= res!1024446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503501 () Bool)

(declare-fun res!1024447 () Bool)

(assert (=> b!1503501 (=> (not res!1024447) (not e!840643))))

(assert (=> b!1503501 (= res!1024447 (not (= (select (arr!48380 a!2850) index!625) (select (arr!48380 a!2850) j!87))))))

(declare-fun b!1503502 () Bool)

(declare-fun res!1024449 () Bool)

(assert (=> b!1503502 (=> (not res!1024449) (not e!840643))))

(assert (=> b!1503502 (= res!1024449 (validKeyInArray!0 (select (arr!48380 a!2850) i!996)))))

(assert (= (and start!128028 res!1024445) b!1503495))

(assert (= (and b!1503495 res!1024451) b!1503502))

(assert (= (and b!1503502 res!1024449) b!1503497))

(assert (= (and b!1503497 res!1024452) b!1503500))

(assert (= (and b!1503500 res!1024446) b!1503499))

(assert (= (and b!1503499 res!1024450) b!1503494))

(assert (= (and b!1503494 res!1024448) b!1503498))

(assert (= (and b!1503498 res!1024444) b!1503501))

(assert (= (and b!1503501 res!1024447) b!1503496))

(declare-fun m!1386805 () Bool)

(assert (=> b!1503497 m!1386805))

(assert (=> b!1503497 m!1386805))

(declare-fun m!1386807 () Bool)

(assert (=> b!1503497 m!1386807))

(declare-fun m!1386809 () Bool)

(assert (=> start!128028 m!1386809))

(declare-fun m!1386811 () Bool)

(assert (=> start!128028 m!1386811))

(declare-fun m!1386813 () Bool)

(assert (=> b!1503496 m!1386813))

(declare-fun m!1386815 () Bool)

(assert (=> b!1503494 m!1386815))

(declare-fun m!1386817 () Bool)

(assert (=> b!1503494 m!1386817))

(declare-fun m!1386819 () Bool)

(assert (=> b!1503494 m!1386819))

(declare-fun m!1386821 () Bool)

(assert (=> b!1503501 m!1386821))

(assert (=> b!1503501 m!1386805))

(declare-fun m!1386823 () Bool)

(assert (=> b!1503500 m!1386823))

(declare-fun m!1386825 () Bool)

(assert (=> b!1503502 m!1386825))

(assert (=> b!1503502 m!1386825))

(declare-fun m!1386827 () Bool)

(assert (=> b!1503502 m!1386827))

(declare-fun m!1386829 () Bool)

(assert (=> b!1503499 m!1386829))

(assert (=> b!1503498 m!1386805))

(assert (=> b!1503498 m!1386805))

(declare-fun m!1386831 () Bool)

(assert (=> b!1503498 m!1386831))

(check-sat (not b!1503496) (not b!1503502) (not b!1503499) (not b!1503500) (not start!128028) (not b!1503498) (not b!1503497))
