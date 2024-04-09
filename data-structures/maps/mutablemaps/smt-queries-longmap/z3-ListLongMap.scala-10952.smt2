; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128220 () Bool)

(assert start!128220)

(declare-fun b!1504845 () Bool)

(declare-fun res!1025517 () Bool)

(declare-fun e!841166 () Bool)

(assert (=> b!1504845 (=> (not res!1025517) (not e!841166))))

(declare-datatypes ((array!100331 0))(
  ( (array!100332 (arr!48413 (Array (_ BitVec 32) (_ BitVec 64))) (size!48964 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100331)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504845 (= res!1025517 (validKeyInArray!0 (select (arr!48413 a!2850) j!87)))))

(declare-fun b!1504846 () Bool)

(declare-fun res!1025514 () Bool)

(declare-fun e!841167 () Bool)

(assert (=> b!1504846 (=> (not res!1025514) (not e!841167))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1504846 (= res!1025514 (not (= (select (arr!48413 a!2850) index!625) (select (arr!48413 a!2850) j!87))))))

(declare-fun res!1025510 () Bool)

(assert (=> start!128220 (=> (not res!1025510) (not e!841166))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128220 (= res!1025510 (validMask!0 mask!2661))))

(assert (=> start!128220 e!841166))

(assert (=> start!128220 true))

(declare-fun array_inv!37358 (array!100331) Bool)

(assert (=> start!128220 (array_inv!37358 a!2850)))

(declare-fun b!1504847 () Bool)

(declare-fun res!1025513 () Bool)

(assert (=> b!1504847 (=> (not res!1025513) (not e!841166))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504847 (= res!1025513 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48964 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48964 a!2850)) (= (select (arr!48413 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48413 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48964 a!2850))))))

(declare-fun b!1504848 () Bool)

(declare-fun res!1025512 () Bool)

(assert (=> b!1504848 (=> (not res!1025512) (not e!841166))))

(assert (=> b!1504848 (= res!1025512 (validKeyInArray!0 (select (arr!48413 a!2850) i!996)))))

(declare-fun b!1504849 () Bool)

(declare-fun res!1025515 () Bool)

(declare-fun e!841169 () Bool)

(assert (=> b!1504849 (=> (not res!1025515) (not e!841169))))

(declare-fun lt!653796 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12630 0))(
  ( (MissingZero!12630 (index!52911 (_ BitVec 32))) (Found!12630 (index!52912 (_ BitVec 32))) (Intermediate!12630 (undefined!13442 Bool) (index!52913 (_ BitVec 32)) (x!134613 (_ BitVec 32))) (Undefined!12630) (MissingVacant!12630 (index!52914 (_ BitVec 32))) )
))
(declare-fun lt!653795 () SeekEntryResult!12630)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100331 (_ BitVec 32)) SeekEntryResult!12630)

(assert (=> b!1504849 (= res!1025515 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653796 vacantBefore!10 (select (arr!48413 a!2850) j!87) a!2850 mask!2661) lt!653795))))

(declare-fun b!1504850 () Bool)

(assert (=> b!1504850 (= e!841167 e!841169)))

(declare-fun res!1025516 () Bool)

(assert (=> b!1504850 (=> (not res!1025516) (not e!841169))))

(assert (=> b!1504850 (= res!1025516 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653796 #b00000000000000000000000000000000) (bvslt lt!653796 (size!48964 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504850 (= lt!653796 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504851 () Bool)

(assert (=> b!1504851 (= e!841169 (not true))))

(assert (=> b!1504851 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653796 vacantAfter!10 (select (store (arr!48413 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100332 (store (arr!48413 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48964 a!2850)) mask!2661) lt!653795)))

(declare-datatypes ((Unit!50222 0))(
  ( (Unit!50223) )
))
(declare-fun lt!653797 () Unit!50222)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50222)

(assert (=> b!1504851 (= lt!653797 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653796 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1504852 () Bool)

(declare-fun res!1025509 () Bool)

(assert (=> b!1504852 (=> (not res!1025509) (not e!841166))))

(declare-datatypes ((List!35085 0))(
  ( (Nil!35082) (Cons!35081 (h!36479 (_ BitVec 64)) (t!49786 List!35085)) )
))
(declare-fun arrayNoDuplicates!0 (array!100331 (_ BitVec 32) List!35085) Bool)

(assert (=> b!1504852 (= res!1025509 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35082))))

(declare-fun b!1504853 () Bool)

(declare-fun res!1025507 () Bool)

(assert (=> b!1504853 (=> (not res!1025507) (not e!841166))))

(assert (=> b!1504853 (= res!1025507 (and (= (size!48964 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48964 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48964 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504854 () Bool)

(assert (=> b!1504854 (= e!841166 e!841167)))

(declare-fun res!1025511 () Bool)

(assert (=> b!1504854 (=> (not res!1025511) (not e!841167))))

(assert (=> b!1504854 (= res!1025511 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48413 a!2850) j!87) a!2850 mask!2661) lt!653795))))

(assert (=> b!1504854 (= lt!653795 (Found!12630 j!87))))

(declare-fun b!1504855 () Bool)

(declare-fun res!1025508 () Bool)

(assert (=> b!1504855 (=> (not res!1025508) (not e!841166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100331 (_ BitVec 32)) Bool)

(assert (=> b!1504855 (= res!1025508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!128220 res!1025510) b!1504853))

(assert (= (and b!1504853 res!1025507) b!1504848))

(assert (= (and b!1504848 res!1025512) b!1504845))

(assert (= (and b!1504845 res!1025517) b!1504855))

(assert (= (and b!1504855 res!1025508) b!1504852))

(assert (= (and b!1504852 res!1025509) b!1504847))

(assert (= (and b!1504847 res!1025513) b!1504854))

(assert (= (and b!1504854 res!1025511) b!1504846))

(assert (= (and b!1504846 res!1025514) b!1504850))

(assert (= (and b!1504850 res!1025516) b!1504849))

(assert (= (and b!1504849 res!1025515) b!1504851))

(declare-fun m!1387995 () Bool)

(assert (=> b!1504846 m!1387995))

(declare-fun m!1387997 () Bool)

(assert (=> b!1504846 m!1387997))

(declare-fun m!1387999 () Bool)

(assert (=> b!1504851 m!1387999))

(declare-fun m!1388001 () Bool)

(assert (=> b!1504851 m!1388001))

(assert (=> b!1504851 m!1388001))

(declare-fun m!1388003 () Bool)

(assert (=> b!1504851 m!1388003))

(declare-fun m!1388005 () Bool)

(assert (=> b!1504851 m!1388005))

(assert (=> b!1504845 m!1387997))

(assert (=> b!1504845 m!1387997))

(declare-fun m!1388007 () Bool)

(assert (=> b!1504845 m!1388007))

(declare-fun m!1388009 () Bool)

(assert (=> b!1504852 m!1388009))

(declare-fun m!1388011 () Bool)

(assert (=> b!1504855 m!1388011))

(declare-fun m!1388013 () Bool)

(assert (=> start!128220 m!1388013))

(declare-fun m!1388015 () Bool)

(assert (=> start!128220 m!1388015))

(assert (=> b!1504849 m!1387997))

(assert (=> b!1504849 m!1387997))

(declare-fun m!1388017 () Bool)

(assert (=> b!1504849 m!1388017))

(declare-fun m!1388019 () Bool)

(assert (=> b!1504848 m!1388019))

(assert (=> b!1504848 m!1388019))

(declare-fun m!1388021 () Bool)

(assert (=> b!1504848 m!1388021))

(declare-fun m!1388023 () Bool)

(assert (=> b!1504850 m!1388023))

(declare-fun m!1388025 () Bool)

(assert (=> b!1504847 m!1388025))

(assert (=> b!1504847 m!1387999))

(declare-fun m!1388027 () Bool)

(assert (=> b!1504847 m!1388027))

(assert (=> b!1504854 m!1387997))

(assert (=> b!1504854 m!1387997))

(declare-fun m!1388029 () Bool)

(assert (=> b!1504854 m!1388029))

(check-sat (not b!1504852) (not b!1504854) (not b!1504845) (not b!1504849) (not b!1504855) (not b!1504850) (not b!1504848) (not b!1504851) (not start!128220))
(check-sat)
