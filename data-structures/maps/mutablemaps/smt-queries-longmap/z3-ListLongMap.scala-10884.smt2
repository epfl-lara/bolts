; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127614 () Bool)

(assert start!127614)

(declare-fun b!1498629 () Bool)

(declare-fun res!1019783 () Bool)

(declare-fun e!839096 () Bool)

(assert (=> b!1498629 (=> (not res!1019783) (not e!839096))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99908 0))(
  ( (array!99909 (arr!48209 (Array (_ BitVec 32) (_ BitVec 64))) (size!48760 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99908)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498629 (= res!1019783 (and (= (size!48760 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48760 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48760 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498630 () Bool)

(declare-fun res!1019781 () Bool)

(assert (=> b!1498630 (=> (not res!1019781) (not e!839096))))

(declare-datatypes ((List!34881 0))(
  ( (Nil!34878) (Cons!34877 (h!36275 (_ BitVec 64)) (t!49582 List!34881)) )
))
(declare-fun arrayNoDuplicates!0 (array!99908 (_ BitVec 32) List!34881) Bool)

(assert (=> b!1498630 (= res!1019781 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34878))))

(declare-fun res!1019777 () Bool)

(assert (=> start!127614 (=> (not res!1019777) (not e!839096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127614 (= res!1019777 (validMask!0 mask!2661))))

(assert (=> start!127614 e!839096))

(assert (=> start!127614 true))

(declare-fun array_inv!37154 (array!99908) Bool)

(assert (=> start!127614 (array_inv!37154 a!2850)))

(declare-fun b!1498631 () Bool)

(declare-fun res!1019784 () Bool)

(assert (=> b!1498631 (=> (not res!1019784) (not e!839096))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498631 (= res!1019784 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48760 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48760 a!2850)) (= (select (arr!48209 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48209 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48760 a!2850))))))

(declare-fun b!1498632 () Bool)

(declare-fun res!1019782 () Bool)

(assert (=> b!1498632 (=> (not res!1019782) (not e!839096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99908 (_ BitVec 32)) Bool)

(assert (=> b!1498632 (= res!1019782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498633 () Bool)

(declare-fun res!1019779 () Bool)

(assert (=> b!1498633 (=> (not res!1019779) (not e!839096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498633 (= res!1019779 (validKeyInArray!0 (select (arr!48209 a!2850) j!87)))))

(declare-fun b!1498634 () Bool)

(declare-fun res!1019780 () Bool)

(assert (=> b!1498634 (=> (not res!1019780) (not e!839096))))

(assert (=> b!1498634 (= res!1019780 (validKeyInArray!0 (select (arr!48209 a!2850) i!996)))))

(declare-fun b!1498635 () Bool)

(assert (=> b!1498635 (= e!839096 (and (= (select (arr!48209 a!2850) index!625) (select (arr!48209 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498636 () Bool)

(declare-fun res!1019778 () Bool)

(assert (=> b!1498636 (=> (not res!1019778) (not e!839096))))

(declare-datatypes ((SeekEntryResult!12438 0))(
  ( (MissingZero!12438 (index!52143 (_ BitVec 32))) (Found!12438 (index!52144 (_ BitVec 32))) (Intermediate!12438 (undefined!13250 Bool) (index!52145 (_ BitVec 32)) (x!133853 (_ BitVec 32))) (Undefined!12438) (MissingVacant!12438 (index!52146 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99908 (_ BitVec 32)) SeekEntryResult!12438)

(assert (=> b!1498636 (= res!1019778 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48209 a!2850) j!87) a!2850 mask!2661) (Found!12438 j!87)))))

(assert (= (and start!127614 res!1019777) b!1498629))

(assert (= (and b!1498629 res!1019783) b!1498634))

(assert (= (and b!1498634 res!1019780) b!1498633))

(assert (= (and b!1498633 res!1019779) b!1498632))

(assert (= (and b!1498632 res!1019782) b!1498630))

(assert (= (and b!1498630 res!1019781) b!1498631))

(assert (= (and b!1498631 res!1019784) b!1498636))

(assert (= (and b!1498636 res!1019778) b!1498635))

(declare-fun m!1381817 () Bool)

(assert (=> b!1498634 m!1381817))

(assert (=> b!1498634 m!1381817))

(declare-fun m!1381819 () Bool)

(assert (=> b!1498634 m!1381819))

(declare-fun m!1381821 () Bool)

(assert (=> b!1498636 m!1381821))

(assert (=> b!1498636 m!1381821))

(declare-fun m!1381823 () Bool)

(assert (=> b!1498636 m!1381823))

(assert (=> b!1498633 m!1381821))

(assert (=> b!1498633 m!1381821))

(declare-fun m!1381825 () Bool)

(assert (=> b!1498633 m!1381825))

(declare-fun m!1381827 () Bool)

(assert (=> start!127614 m!1381827))

(declare-fun m!1381829 () Bool)

(assert (=> start!127614 m!1381829))

(declare-fun m!1381831 () Bool)

(assert (=> b!1498635 m!1381831))

(assert (=> b!1498635 m!1381821))

(declare-fun m!1381833 () Bool)

(assert (=> b!1498632 m!1381833))

(declare-fun m!1381835 () Bool)

(assert (=> b!1498630 m!1381835))

(declare-fun m!1381837 () Bool)

(assert (=> b!1498631 m!1381837))

(declare-fun m!1381839 () Bool)

(assert (=> b!1498631 m!1381839))

(declare-fun m!1381841 () Bool)

(assert (=> b!1498631 m!1381841))

(check-sat (not b!1498630) (not b!1498632) (not b!1498633) (not start!127614) (not b!1498634) (not b!1498636))
(check-sat)
