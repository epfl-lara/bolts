; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127608 () Bool)

(assert start!127608)

(declare-fun b!1498561 () Bool)

(declare-fun res!1019711 () Bool)

(declare-fun e!839078 () Bool)

(assert (=> b!1498561 (=> (not res!1019711) (not e!839078))))

(declare-datatypes ((array!99902 0))(
  ( (array!99903 (arr!48206 (Array (_ BitVec 32) (_ BitVec 64))) (size!48757 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99902)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99902 (_ BitVec 32)) Bool)

(assert (=> b!1498561 (= res!1019711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498562 () Bool)

(declare-fun res!1019715 () Bool)

(assert (=> b!1498562 (=> (not res!1019715) (not e!839078))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498562 (= res!1019715 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48757 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48757 a!2850)) (= (select (arr!48206 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48206 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48757 a!2850))))))

(declare-fun res!1019714 () Bool)

(assert (=> start!127608 (=> (not res!1019714) (not e!839078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127608 (= res!1019714 (validMask!0 mask!2661))))

(assert (=> start!127608 e!839078))

(assert (=> start!127608 true))

(declare-fun array_inv!37151 (array!99902) Bool)

(assert (=> start!127608 (array_inv!37151 a!2850)))

(declare-fun b!1498563 () Bool)

(declare-fun res!1019710 () Bool)

(assert (=> b!1498563 (=> (not res!1019710) (not e!839078))))

(declare-datatypes ((List!34878 0))(
  ( (Nil!34875) (Cons!34874 (h!36272 (_ BitVec 64)) (t!49579 List!34878)) )
))
(declare-fun arrayNoDuplicates!0 (array!99902 (_ BitVec 32) List!34878) Bool)

(assert (=> b!1498563 (= res!1019710 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34875))))

(declare-fun b!1498564 () Bool)

(declare-fun res!1019713 () Bool)

(assert (=> b!1498564 (=> (not res!1019713) (not e!839078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498564 (= res!1019713 (validKeyInArray!0 (select (arr!48206 a!2850) i!996)))))

(declare-fun b!1498565 () Bool)

(declare-fun res!1019709 () Bool)

(assert (=> b!1498565 (=> (not res!1019709) (not e!839078))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498565 (= res!1019709 (validKeyInArray!0 (select (arr!48206 a!2850) j!87)))))

(declare-fun b!1498566 () Bool)

(assert (=> b!1498566 (= e!839078 false)))

(declare-datatypes ((SeekEntryResult!12435 0))(
  ( (MissingZero!12435 (index!52131 (_ BitVec 32))) (Found!12435 (index!52132 (_ BitVec 32))) (Intermediate!12435 (undefined!13247 Bool) (index!52133 (_ BitVec 32)) (x!133842 (_ BitVec 32))) (Undefined!12435) (MissingVacant!12435 (index!52134 (_ BitVec 32))) )
))
(declare-fun lt!652621 () SeekEntryResult!12435)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99902 (_ BitVec 32)) SeekEntryResult!12435)

(assert (=> b!1498566 (= lt!652621 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48206 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498567 () Bool)

(declare-fun res!1019712 () Bool)

(assert (=> b!1498567 (=> (not res!1019712) (not e!839078))))

(assert (=> b!1498567 (= res!1019712 (and (= (size!48757 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48757 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48757 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127608 res!1019714) b!1498567))

(assert (= (and b!1498567 res!1019712) b!1498564))

(assert (= (and b!1498564 res!1019713) b!1498565))

(assert (= (and b!1498565 res!1019709) b!1498561))

(assert (= (and b!1498561 res!1019711) b!1498563))

(assert (= (and b!1498563 res!1019710) b!1498562))

(assert (= (and b!1498562 res!1019715) b!1498566))

(declare-fun m!1381743 () Bool)

(assert (=> b!1498561 m!1381743))

(declare-fun m!1381745 () Bool)

(assert (=> b!1498562 m!1381745))

(declare-fun m!1381747 () Bool)

(assert (=> b!1498562 m!1381747))

(declare-fun m!1381749 () Bool)

(assert (=> b!1498562 m!1381749))

(declare-fun m!1381751 () Bool)

(assert (=> b!1498566 m!1381751))

(assert (=> b!1498566 m!1381751))

(declare-fun m!1381753 () Bool)

(assert (=> b!1498566 m!1381753))

(assert (=> b!1498565 m!1381751))

(assert (=> b!1498565 m!1381751))

(declare-fun m!1381755 () Bool)

(assert (=> b!1498565 m!1381755))

(declare-fun m!1381757 () Bool)

(assert (=> start!127608 m!1381757))

(declare-fun m!1381759 () Bool)

(assert (=> start!127608 m!1381759))

(declare-fun m!1381761 () Bool)

(assert (=> b!1498564 m!1381761))

(assert (=> b!1498564 m!1381761))

(declare-fun m!1381763 () Bool)

(assert (=> b!1498564 m!1381763))

(declare-fun m!1381765 () Bool)

(assert (=> b!1498563 m!1381765))

(check-sat (not b!1498561) (not b!1498563) (not start!127608) (not b!1498564) (not b!1498566) (not b!1498565))
