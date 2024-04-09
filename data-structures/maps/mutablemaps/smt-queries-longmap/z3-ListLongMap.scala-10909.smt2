; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127764 () Bool)

(assert start!127764)

(declare-fun b!1500700 () Bool)

(declare-fun res!1021857 () Bool)

(declare-fun e!839694 () Bool)

(assert (=> b!1500700 (=> (not res!1021857) (not e!839694))))

(declare-datatypes ((array!100058 0))(
  ( (array!100059 (arr!48284 (Array (_ BitVec 32) (_ BitVec 64))) (size!48835 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100058)

(declare-datatypes ((List!34956 0))(
  ( (Nil!34953) (Cons!34952 (h!36350 (_ BitVec 64)) (t!49657 List!34956)) )
))
(declare-fun arrayNoDuplicates!0 (array!100058 (_ BitVec 32) List!34956) Bool)

(assert (=> b!1500700 (= res!1021857 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34953))))

(declare-fun b!1500701 () Bool)

(declare-fun res!1021851 () Bool)

(assert (=> b!1500701 (=> (not res!1021851) (not e!839694))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500701 (= res!1021851 (and (= (size!48835 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48835 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48835 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1021848 () Bool)

(assert (=> start!127764 (=> (not res!1021848) (not e!839694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127764 (= res!1021848 (validMask!0 mask!2661))))

(assert (=> start!127764 e!839694))

(assert (=> start!127764 true))

(declare-fun array_inv!37229 (array!100058) Bool)

(assert (=> start!127764 (array_inv!37229 a!2850)))

(declare-fun b!1500702 () Bool)

(declare-fun res!1021850 () Bool)

(assert (=> b!1500702 (=> (not res!1021850) (not e!839694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500702 (= res!1021850 (validKeyInArray!0 (select (arr!48284 a!2850) j!87)))))

(declare-fun b!1500703 () Bool)

(declare-fun e!839695 () Bool)

(assert (=> b!1500703 (= e!839695 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12513 0))(
  ( (MissingZero!12513 (index!52443 (_ BitVec 32))) (Found!12513 (index!52444 (_ BitVec 32))) (Intermediate!12513 (undefined!13325 Bool) (index!52445 (_ BitVec 32)) (x!134128 (_ BitVec 32))) (Undefined!12513) (MissingVacant!12513 (index!52446 (_ BitVec 32))) )
))
(declare-fun lt!652960 () SeekEntryResult!12513)

(declare-fun lt!652959 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100058 (_ BitVec 32)) SeekEntryResult!12513)

(assert (=> b!1500703 (= lt!652960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652959 vacantBefore!10 (select (arr!48284 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500704 () Bool)

(declare-fun res!1021852 () Bool)

(assert (=> b!1500704 (=> (not res!1021852) (not e!839694))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1500704 (= res!1021852 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48284 a!2850) j!87) a!2850 mask!2661) (Found!12513 j!87)))))

(declare-fun b!1500705 () Bool)

(declare-fun res!1021856 () Bool)

(assert (=> b!1500705 (=> (not res!1021856) (not e!839694))))

(assert (=> b!1500705 (= res!1021856 (validKeyInArray!0 (select (arr!48284 a!2850) i!996)))))

(declare-fun b!1500706 () Bool)

(declare-fun res!1021854 () Bool)

(assert (=> b!1500706 (=> (not res!1021854) (not e!839694))))

(assert (=> b!1500706 (= res!1021854 (not (= (select (arr!48284 a!2850) index!625) (select (arr!48284 a!2850) j!87))))))

(declare-fun b!1500707 () Bool)

(declare-fun res!1021853 () Bool)

(assert (=> b!1500707 (=> (not res!1021853) (not e!839694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100058 (_ BitVec 32)) Bool)

(assert (=> b!1500707 (= res!1021853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500708 () Bool)

(declare-fun res!1021849 () Bool)

(assert (=> b!1500708 (=> (not res!1021849) (not e!839694))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500708 (= res!1021849 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48835 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48835 a!2850)) (= (select (arr!48284 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48284 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48835 a!2850))))))

(declare-fun b!1500709 () Bool)

(assert (=> b!1500709 (= e!839694 e!839695)))

(declare-fun res!1021855 () Bool)

(assert (=> b!1500709 (=> (not res!1021855) (not e!839695))))

(assert (=> b!1500709 (= res!1021855 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652959 #b00000000000000000000000000000000) (bvslt lt!652959 (size!48835 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500709 (= lt!652959 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127764 res!1021848) b!1500701))

(assert (= (and b!1500701 res!1021851) b!1500705))

(assert (= (and b!1500705 res!1021856) b!1500702))

(assert (= (and b!1500702 res!1021850) b!1500707))

(assert (= (and b!1500707 res!1021853) b!1500700))

(assert (= (and b!1500700 res!1021857) b!1500708))

(assert (= (and b!1500708 res!1021849) b!1500704))

(assert (= (and b!1500704 res!1021852) b!1500706))

(assert (= (and b!1500706 res!1021854) b!1500709))

(assert (= (and b!1500709 res!1021855) b!1500703))

(declare-fun m!1383951 () Bool)

(assert (=> b!1500704 m!1383951))

(assert (=> b!1500704 m!1383951))

(declare-fun m!1383953 () Bool)

(assert (=> b!1500704 m!1383953))

(declare-fun m!1383955 () Bool)

(assert (=> b!1500707 m!1383955))

(declare-fun m!1383957 () Bool)

(assert (=> start!127764 m!1383957))

(declare-fun m!1383959 () Bool)

(assert (=> start!127764 m!1383959))

(assert (=> b!1500703 m!1383951))

(assert (=> b!1500703 m!1383951))

(declare-fun m!1383961 () Bool)

(assert (=> b!1500703 m!1383961))

(assert (=> b!1500702 m!1383951))

(assert (=> b!1500702 m!1383951))

(declare-fun m!1383963 () Bool)

(assert (=> b!1500702 m!1383963))

(declare-fun m!1383965 () Bool)

(assert (=> b!1500700 m!1383965))

(declare-fun m!1383967 () Bool)

(assert (=> b!1500709 m!1383967))

(declare-fun m!1383969 () Bool)

(assert (=> b!1500705 m!1383969))

(assert (=> b!1500705 m!1383969))

(declare-fun m!1383971 () Bool)

(assert (=> b!1500705 m!1383971))

(declare-fun m!1383973 () Bool)

(assert (=> b!1500706 m!1383973))

(assert (=> b!1500706 m!1383951))

(declare-fun m!1383975 () Bool)

(assert (=> b!1500708 m!1383975))

(declare-fun m!1383977 () Bool)

(assert (=> b!1500708 m!1383977))

(declare-fun m!1383979 () Bool)

(assert (=> b!1500708 m!1383979))

(check-sat (not b!1500707) (not b!1500700) (not b!1500704) (not b!1500709) (not b!1500705) (not b!1500703) (not start!127764) (not b!1500702))
(check-sat)
