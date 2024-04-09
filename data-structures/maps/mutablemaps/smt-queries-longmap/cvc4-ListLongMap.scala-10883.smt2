; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127610 () Bool)

(assert start!127610)

(declare-fun b!1498582 () Bool)

(declare-fun res!1019732 () Bool)

(declare-fun e!839084 () Bool)

(assert (=> b!1498582 (=> (not res!1019732) (not e!839084))))

(declare-datatypes ((array!99904 0))(
  ( (array!99905 (arr!48207 (Array (_ BitVec 32) (_ BitVec 64))) (size!48758 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99904)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99904 (_ BitVec 32)) Bool)

(assert (=> b!1498582 (= res!1019732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498583 () Bool)

(declare-fun res!1019734 () Bool)

(assert (=> b!1498583 (=> (not res!1019734) (not e!839084))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498583 (= res!1019734 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48758 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48758 a!2850)) (= (select (arr!48207 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48207 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48758 a!2850))))))

(declare-fun b!1498584 () Bool)

(declare-fun res!1019733 () Bool)

(assert (=> b!1498584 (=> (not res!1019733) (not e!839084))))

(declare-datatypes ((List!34879 0))(
  ( (Nil!34876) (Cons!34875 (h!36273 (_ BitVec 64)) (t!49580 List!34879)) )
))
(declare-fun arrayNoDuplicates!0 (array!99904 (_ BitVec 32) List!34879) Bool)

(assert (=> b!1498584 (= res!1019733 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34876))))

(declare-fun b!1498585 () Bool)

(declare-fun res!1019736 () Bool)

(assert (=> b!1498585 (=> (not res!1019736) (not e!839084))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498585 (= res!1019736 (and (= (size!48758 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48758 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48758 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498586 () Bool)

(declare-fun res!1019735 () Bool)

(assert (=> b!1498586 (=> (not res!1019735) (not e!839084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498586 (= res!1019735 (validKeyInArray!0 (select (arr!48207 a!2850) j!87)))))

(declare-fun b!1498587 () Bool)

(declare-fun res!1019730 () Bool)

(assert (=> b!1498587 (=> (not res!1019730) (not e!839084))))

(assert (=> b!1498587 (= res!1019730 (validKeyInArray!0 (select (arr!48207 a!2850) i!996)))))

(declare-fun b!1498588 () Bool)

(assert (=> b!1498588 (= e!839084 false)))

(declare-datatypes ((SeekEntryResult!12436 0))(
  ( (MissingZero!12436 (index!52135 (_ BitVec 32))) (Found!12436 (index!52136 (_ BitVec 32))) (Intermediate!12436 (undefined!13248 Bool) (index!52137 (_ BitVec 32)) (x!133843 (_ BitVec 32))) (Undefined!12436) (MissingVacant!12436 (index!52138 (_ BitVec 32))) )
))
(declare-fun lt!652624 () SeekEntryResult!12436)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99904 (_ BitVec 32)) SeekEntryResult!12436)

(assert (=> b!1498588 (= lt!652624 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48207 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1019731 () Bool)

(assert (=> start!127610 (=> (not res!1019731) (not e!839084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127610 (= res!1019731 (validMask!0 mask!2661))))

(assert (=> start!127610 e!839084))

(assert (=> start!127610 true))

(declare-fun array_inv!37152 (array!99904) Bool)

(assert (=> start!127610 (array_inv!37152 a!2850)))

(assert (= (and start!127610 res!1019731) b!1498585))

(assert (= (and b!1498585 res!1019736) b!1498587))

(assert (= (and b!1498587 res!1019730) b!1498586))

(assert (= (and b!1498586 res!1019735) b!1498582))

(assert (= (and b!1498582 res!1019732) b!1498584))

(assert (= (and b!1498584 res!1019733) b!1498583))

(assert (= (and b!1498583 res!1019734) b!1498588))

(declare-fun m!1381767 () Bool)

(assert (=> b!1498588 m!1381767))

(assert (=> b!1498588 m!1381767))

(declare-fun m!1381769 () Bool)

(assert (=> b!1498588 m!1381769))

(declare-fun m!1381771 () Bool)

(assert (=> b!1498583 m!1381771))

(declare-fun m!1381773 () Bool)

(assert (=> b!1498583 m!1381773))

(declare-fun m!1381775 () Bool)

(assert (=> b!1498583 m!1381775))

(assert (=> b!1498586 m!1381767))

(assert (=> b!1498586 m!1381767))

(declare-fun m!1381777 () Bool)

(assert (=> b!1498586 m!1381777))

(declare-fun m!1381779 () Bool)

(assert (=> start!127610 m!1381779))

(declare-fun m!1381781 () Bool)

(assert (=> start!127610 m!1381781))

(declare-fun m!1381783 () Bool)

(assert (=> b!1498582 m!1381783))

(declare-fun m!1381785 () Bool)

(assert (=> b!1498587 m!1381785))

(assert (=> b!1498587 m!1381785))

(declare-fun m!1381787 () Bool)

(assert (=> b!1498587 m!1381787))

(declare-fun m!1381789 () Bool)

(assert (=> b!1498584 m!1381789))

(push 1)

(assert (not start!127610))

(assert (not b!1498584))

(assert (not b!1498582))

(assert (not b!1498588))

(assert (not b!1498587))

(assert (not b!1498586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

