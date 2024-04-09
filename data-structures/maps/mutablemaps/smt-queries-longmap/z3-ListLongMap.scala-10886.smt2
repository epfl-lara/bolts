; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127626 () Bool)

(assert start!127626)

(declare-fun b!1498764 () Bool)

(declare-fun res!1019915 () Bool)

(declare-fun e!839131 () Bool)

(assert (=> b!1498764 (=> (not res!1019915) (not e!839131))))

(declare-datatypes ((array!99920 0))(
  ( (array!99921 (arr!48215 (Array (_ BitVec 32) (_ BitVec 64))) (size!48766 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99920)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498764 (= res!1019915 (validKeyInArray!0 (select (arr!48215 a!2850) i!996)))))

(declare-fun b!1498765 () Bool)

(declare-fun res!1019912 () Bool)

(assert (=> b!1498765 (=> (not res!1019912) (not e!839131))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498765 (= res!1019912 (validKeyInArray!0 (select (arr!48215 a!2850) j!87)))))

(declare-fun b!1498766 () Bool)

(declare-fun res!1019913 () Bool)

(assert (=> b!1498766 (=> (not res!1019913) (not e!839131))))

(declare-datatypes ((List!34887 0))(
  ( (Nil!34884) (Cons!34883 (h!36281 (_ BitVec 64)) (t!49588 List!34887)) )
))
(declare-fun arrayNoDuplicates!0 (array!99920 (_ BitVec 32) List!34887) Bool)

(assert (=> b!1498766 (= res!1019913 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34884))))

(declare-fun b!1498767 () Bool)

(declare-fun res!1019916 () Bool)

(assert (=> b!1498767 (=> (not res!1019916) (not e!839131))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12444 0))(
  ( (MissingZero!12444 (index!52167 (_ BitVec 32))) (Found!12444 (index!52168 (_ BitVec 32))) (Intermediate!12444 (undefined!13256 Bool) (index!52169 (_ BitVec 32)) (x!133875 (_ BitVec 32))) (Undefined!12444) (MissingVacant!12444 (index!52170 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99920 (_ BitVec 32)) SeekEntryResult!12444)

(assert (=> b!1498767 (= res!1019916 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48215 a!2850) j!87) a!2850 mask!2661) (Found!12444 j!87)))))

(declare-fun b!1498768 () Bool)

(declare-fun res!1019914 () Bool)

(assert (=> b!1498768 (=> (not res!1019914) (not e!839131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99920 (_ BitVec 32)) Bool)

(assert (=> b!1498768 (= res!1019914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498769 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498769 (= e!839131 (and (= (select (arr!48215 a!2850) index!625) (select (arr!48215 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498770 () Bool)

(declare-fun res!1019919 () Bool)

(assert (=> b!1498770 (=> (not res!1019919) (not e!839131))))

(assert (=> b!1498770 (= res!1019919 (and (= (size!48766 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48766 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48766 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498771 () Bool)

(declare-fun res!1019917 () Bool)

(assert (=> b!1498771 (=> (not res!1019917) (not e!839131))))

(assert (=> b!1498771 (= res!1019917 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48766 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48766 a!2850)) (= (select (arr!48215 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48215 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48766 a!2850))))))

(declare-fun res!1019918 () Bool)

(assert (=> start!127626 (=> (not res!1019918) (not e!839131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127626 (= res!1019918 (validMask!0 mask!2661))))

(assert (=> start!127626 e!839131))

(assert (=> start!127626 true))

(declare-fun array_inv!37160 (array!99920) Bool)

(assert (=> start!127626 (array_inv!37160 a!2850)))

(assert (= (and start!127626 res!1019918) b!1498770))

(assert (= (and b!1498770 res!1019919) b!1498764))

(assert (= (and b!1498764 res!1019915) b!1498765))

(assert (= (and b!1498765 res!1019912) b!1498768))

(assert (= (and b!1498768 res!1019914) b!1498766))

(assert (= (and b!1498766 res!1019913) b!1498771))

(assert (= (and b!1498771 res!1019917) b!1498767))

(assert (= (and b!1498767 res!1019916) b!1498769))

(declare-fun m!1381967 () Bool)

(assert (=> b!1498769 m!1381967))

(declare-fun m!1381969 () Bool)

(assert (=> b!1498769 m!1381969))

(declare-fun m!1381971 () Bool)

(assert (=> b!1498764 m!1381971))

(assert (=> b!1498764 m!1381971))

(declare-fun m!1381973 () Bool)

(assert (=> b!1498764 m!1381973))

(declare-fun m!1381975 () Bool)

(assert (=> b!1498766 m!1381975))

(declare-fun m!1381977 () Bool)

(assert (=> start!127626 m!1381977))

(declare-fun m!1381979 () Bool)

(assert (=> start!127626 m!1381979))

(declare-fun m!1381981 () Bool)

(assert (=> b!1498768 m!1381981))

(assert (=> b!1498767 m!1381969))

(assert (=> b!1498767 m!1381969))

(declare-fun m!1381983 () Bool)

(assert (=> b!1498767 m!1381983))

(assert (=> b!1498765 m!1381969))

(assert (=> b!1498765 m!1381969))

(declare-fun m!1381985 () Bool)

(assert (=> b!1498765 m!1381985))

(declare-fun m!1381987 () Bool)

(assert (=> b!1498771 m!1381987))

(declare-fun m!1381989 () Bool)

(assert (=> b!1498771 m!1381989))

(declare-fun m!1381991 () Bool)

(assert (=> b!1498771 m!1381991))

(check-sat (not b!1498764) (not b!1498768) (not b!1498765) (not start!127626) (not b!1498767) (not b!1498766))
(check-sat)
