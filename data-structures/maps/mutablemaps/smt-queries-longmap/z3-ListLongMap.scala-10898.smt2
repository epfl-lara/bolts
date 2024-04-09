; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127698 () Bool)

(assert start!127698)

(declare-fun b!1499710 () Bool)

(declare-fun e!839398 () Bool)

(declare-fun e!839399 () Bool)

(assert (=> b!1499710 (= e!839398 e!839399)))

(declare-fun res!1020863 () Bool)

(assert (=> b!1499710 (=> (not res!1020863) (not e!839399))))

(declare-datatypes ((array!99992 0))(
  ( (array!99993 (arr!48251 (Array (_ BitVec 32) (_ BitVec 64))) (size!48802 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99992)

(declare-fun lt!652762 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1499710 (= res!1020863 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652762 #b00000000000000000000000000000000) (bvslt lt!652762 (size!48802 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499710 (= lt!652762 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499711 () Bool)

(declare-fun res!1020867 () Bool)

(assert (=> b!1499711 (=> (not res!1020867) (not e!839398))))

(declare-datatypes ((List!34923 0))(
  ( (Nil!34920) (Cons!34919 (h!36317 (_ BitVec 64)) (t!49624 List!34923)) )
))
(declare-fun arrayNoDuplicates!0 (array!99992 (_ BitVec 32) List!34923) Bool)

(assert (=> b!1499711 (= res!1020867 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34920))))

(declare-fun b!1499712 () Bool)

(assert (=> b!1499712 (= e!839399 false)))

(declare-datatypes ((SeekEntryResult!12480 0))(
  ( (MissingZero!12480 (index!52311 (_ BitVec 32))) (Found!12480 (index!52312 (_ BitVec 32))) (Intermediate!12480 (undefined!13292 Bool) (index!52313 (_ BitVec 32)) (x!134007 (_ BitVec 32))) (Undefined!12480) (MissingVacant!12480 (index!52314 (_ BitVec 32))) )
))
(declare-fun lt!652761 () SeekEntryResult!12480)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99992 (_ BitVec 32)) SeekEntryResult!12480)

(assert (=> b!1499712 (= lt!652761 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652762 vacantBefore!10 (select (arr!48251 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499713 () Bool)

(declare-fun res!1020862 () Bool)

(assert (=> b!1499713 (=> (not res!1020862) (not e!839398))))

(assert (=> b!1499713 (= res!1020862 (not (= (select (arr!48251 a!2850) index!625) (select (arr!48251 a!2850) j!87))))))

(declare-fun b!1499714 () Bool)

(declare-fun res!1020859 () Bool)

(assert (=> b!1499714 (=> (not res!1020859) (not e!839398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499714 (= res!1020859 (validKeyInArray!0 (select (arr!48251 a!2850) j!87)))))

(declare-fun b!1499715 () Bool)

(declare-fun res!1020865 () Bool)

(assert (=> b!1499715 (=> (not res!1020865) (not e!839398))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499715 (= res!1020865 (validKeyInArray!0 (select (arr!48251 a!2850) i!996)))))

(declare-fun b!1499716 () Bool)

(declare-fun res!1020866 () Bool)

(assert (=> b!1499716 (=> (not res!1020866) (not e!839398))))

(assert (=> b!1499716 (= res!1020866 (and (= (size!48802 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48802 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48802 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499717 () Bool)

(declare-fun res!1020861 () Bool)

(assert (=> b!1499717 (=> (not res!1020861) (not e!839398))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499717 (= res!1020861 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48802 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48802 a!2850)) (= (select (arr!48251 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48251 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48802 a!2850))))))

(declare-fun res!1020858 () Bool)

(assert (=> start!127698 (=> (not res!1020858) (not e!839398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127698 (= res!1020858 (validMask!0 mask!2661))))

(assert (=> start!127698 e!839398))

(assert (=> start!127698 true))

(declare-fun array_inv!37196 (array!99992) Bool)

(assert (=> start!127698 (array_inv!37196 a!2850)))

(declare-fun b!1499718 () Bool)

(declare-fun res!1020864 () Bool)

(assert (=> b!1499718 (=> (not res!1020864) (not e!839398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99992 (_ BitVec 32)) Bool)

(assert (=> b!1499718 (= res!1020864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499719 () Bool)

(declare-fun res!1020860 () Bool)

(assert (=> b!1499719 (=> (not res!1020860) (not e!839398))))

(assert (=> b!1499719 (= res!1020860 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48251 a!2850) j!87) a!2850 mask!2661) (Found!12480 j!87)))))

(assert (= (and start!127698 res!1020858) b!1499716))

(assert (= (and b!1499716 res!1020866) b!1499715))

(assert (= (and b!1499715 res!1020865) b!1499714))

(assert (= (and b!1499714 res!1020859) b!1499718))

(assert (= (and b!1499718 res!1020864) b!1499711))

(assert (= (and b!1499711 res!1020867) b!1499717))

(assert (= (and b!1499717 res!1020861) b!1499719))

(assert (= (and b!1499719 res!1020860) b!1499713))

(assert (= (and b!1499713 res!1020862) b!1499710))

(assert (= (and b!1499710 res!1020863) b!1499712))

(declare-fun m!1382961 () Bool)

(assert (=> b!1499713 m!1382961))

(declare-fun m!1382963 () Bool)

(assert (=> b!1499713 m!1382963))

(assert (=> b!1499714 m!1382963))

(assert (=> b!1499714 m!1382963))

(declare-fun m!1382965 () Bool)

(assert (=> b!1499714 m!1382965))

(assert (=> b!1499712 m!1382963))

(assert (=> b!1499712 m!1382963))

(declare-fun m!1382967 () Bool)

(assert (=> b!1499712 m!1382967))

(declare-fun m!1382969 () Bool)

(assert (=> b!1499718 m!1382969))

(declare-fun m!1382971 () Bool)

(assert (=> b!1499717 m!1382971))

(declare-fun m!1382973 () Bool)

(assert (=> b!1499717 m!1382973))

(declare-fun m!1382975 () Bool)

(assert (=> b!1499717 m!1382975))

(assert (=> b!1499719 m!1382963))

(assert (=> b!1499719 m!1382963))

(declare-fun m!1382977 () Bool)

(assert (=> b!1499719 m!1382977))

(declare-fun m!1382979 () Bool)

(assert (=> b!1499715 m!1382979))

(assert (=> b!1499715 m!1382979))

(declare-fun m!1382981 () Bool)

(assert (=> b!1499715 m!1382981))

(declare-fun m!1382983 () Bool)

(assert (=> b!1499710 m!1382983))

(declare-fun m!1382985 () Bool)

(assert (=> b!1499711 m!1382985))

(declare-fun m!1382987 () Bool)

(assert (=> start!127698 m!1382987))

(declare-fun m!1382989 () Bool)

(assert (=> start!127698 m!1382989))

(check-sat (not b!1499710) (not b!1499711) (not b!1499718) (not b!1499719) (not b!1499712) (not start!127698) (not b!1499715) (not b!1499714))
(check-sat)
