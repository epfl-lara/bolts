; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127692 () Bool)

(assert start!127692)

(declare-fun b!1499621 () Bool)

(declare-fun e!839372 () Bool)

(assert (=> b!1499621 (= e!839372 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99986 0))(
  ( (array!99987 (arr!48248 (Array (_ BitVec 32) (_ BitVec 64))) (size!48799 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99986)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652743 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12477 0))(
  ( (MissingZero!12477 (index!52299 (_ BitVec 32))) (Found!12477 (index!52300 (_ BitVec 32))) (Intermediate!12477 (undefined!13289 Bool) (index!52301 (_ BitVec 32)) (x!133996 (_ BitVec 32))) (Undefined!12477) (MissingVacant!12477 (index!52302 (_ BitVec 32))) )
))
(declare-fun lt!652744 () SeekEntryResult!12477)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99986 (_ BitVec 32)) SeekEntryResult!12477)

(assert (=> b!1499621 (= lt!652744 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652743 vacantBefore!10 (select (arr!48248 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499622 () Bool)

(declare-fun res!1020768 () Bool)

(declare-fun e!839370 () Bool)

(assert (=> b!1499622 (=> (not res!1020768) (not e!839370))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499622 (= res!1020768 (validKeyInArray!0 (select (arr!48248 a!2850) i!996)))))

(declare-fun b!1499623 () Bool)

(declare-fun res!1020769 () Bool)

(assert (=> b!1499623 (=> (not res!1020769) (not e!839370))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499623 (= res!1020769 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48799 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48799 a!2850)) (= (select (arr!48248 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48248 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48799 a!2850))))))

(declare-fun b!1499624 () Bool)

(declare-fun res!1020777 () Bool)

(assert (=> b!1499624 (=> (not res!1020777) (not e!839370))))

(assert (=> b!1499624 (= res!1020777 (not (= (select (arr!48248 a!2850) index!625) (select (arr!48248 a!2850) j!87))))))

(declare-fun b!1499625 () Bool)

(assert (=> b!1499625 (= e!839370 e!839372)))

(declare-fun res!1020773 () Bool)

(assert (=> b!1499625 (=> (not res!1020773) (not e!839372))))

(assert (=> b!1499625 (= res!1020773 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652743 #b00000000000000000000000000000000) (bvslt lt!652743 (size!48799 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499625 (= lt!652743 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499626 () Bool)

(declare-fun res!1020775 () Bool)

(assert (=> b!1499626 (=> (not res!1020775) (not e!839370))))

(assert (=> b!1499626 (= res!1020775 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48248 a!2850) j!87) a!2850 mask!2661) (Found!12477 j!87)))))

(declare-fun b!1499627 () Bool)

(declare-fun res!1020772 () Bool)

(assert (=> b!1499627 (=> (not res!1020772) (not e!839370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99986 (_ BitVec 32)) Bool)

(assert (=> b!1499627 (= res!1020772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499628 () Bool)

(declare-fun res!1020770 () Bool)

(assert (=> b!1499628 (=> (not res!1020770) (not e!839370))))

(assert (=> b!1499628 (= res!1020770 (and (= (size!48799 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48799 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48799 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499629 () Bool)

(declare-fun res!1020774 () Bool)

(assert (=> b!1499629 (=> (not res!1020774) (not e!839370))))

(declare-datatypes ((List!34920 0))(
  ( (Nil!34917) (Cons!34916 (h!36314 (_ BitVec 64)) (t!49621 List!34920)) )
))
(declare-fun arrayNoDuplicates!0 (array!99986 (_ BitVec 32) List!34920) Bool)

(assert (=> b!1499629 (= res!1020774 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34917))))

(declare-fun res!1020776 () Bool)

(assert (=> start!127692 (=> (not res!1020776) (not e!839370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127692 (= res!1020776 (validMask!0 mask!2661))))

(assert (=> start!127692 e!839370))

(assert (=> start!127692 true))

(declare-fun array_inv!37193 (array!99986) Bool)

(assert (=> start!127692 (array_inv!37193 a!2850)))

(declare-fun b!1499620 () Bool)

(declare-fun res!1020771 () Bool)

(assert (=> b!1499620 (=> (not res!1020771) (not e!839370))))

(assert (=> b!1499620 (= res!1020771 (validKeyInArray!0 (select (arr!48248 a!2850) j!87)))))

(assert (= (and start!127692 res!1020776) b!1499628))

(assert (= (and b!1499628 res!1020770) b!1499622))

(assert (= (and b!1499622 res!1020768) b!1499620))

(assert (= (and b!1499620 res!1020771) b!1499627))

(assert (= (and b!1499627 res!1020772) b!1499629))

(assert (= (and b!1499629 res!1020774) b!1499623))

(assert (= (and b!1499623 res!1020769) b!1499626))

(assert (= (and b!1499626 res!1020775) b!1499624))

(assert (= (and b!1499624 res!1020777) b!1499625))

(assert (= (and b!1499625 res!1020773) b!1499621))

(declare-fun m!1382871 () Bool)

(assert (=> b!1499621 m!1382871))

(assert (=> b!1499621 m!1382871))

(declare-fun m!1382873 () Bool)

(assert (=> b!1499621 m!1382873))

(declare-fun m!1382875 () Bool)

(assert (=> b!1499622 m!1382875))

(assert (=> b!1499622 m!1382875))

(declare-fun m!1382877 () Bool)

(assert (=> b!1499622 m!1382877))

(declare-fun m!1382879 () Bool)

(assert (=> b!1499623 m!1382879))

(declare-fun m!1382881 () Bool)

(assert (=> b!1499623 m!1382881))

(declare-fun m!1382883 () Bool)

(assert (=> b!1499623 m!1382883))

(declare-fun m!1382885 () Bool)

(assert (=> b!1499625 m!1382885))

(declare-fun m!1382887 () Bool)

(assert (=> b!1499624 m!1382887))

(assert (=> b!1499624 m!1382871))

(assert (=> b!1499620 m!1382871))

(assert (=> b!1499620 m!1382871))

(declare-fun m!1382889 () Bool)

(assert (=> b!1499620 m!1382889))

(declare-fun m!1382891 () Bool)

(assert (=> b!1499627 m!1382891))

(declare-fun m!1382893 () Bool)

(assert (=> b!1499629 m!1382893))

(declare-fun m!1382895 () Bool)

(assert (=> start!127692 m!1382895))

(declare-fun m!1382897 () Bool)

(assert (=> start!127692 m!1382897))

(assert (=> b!1499626 m!1382871))

(assert (=> b!1499626 m!1382871))

(declare-fun m!1382899 () Bool)

(assert (=> b!1499626 m!1382899))

(check-sat (not b!1499625) (not b!1499629) (not b!1499620) (not b!1499622) (not b!1499627) (not start!127692) (not b!1499621) (not b!1499626))
(check-sat)
