; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127776 () Bool)

(assert start!127776)

(declare-fun b!1500880 () Bool)

(declare-fun e!839750 () Bool)

(assert (=> b!1500880 (= e!839750 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100070 0))(
  ( (array!100071 (arr!48290 (Array (_ BitVec 32) (_ BitVec 64))) (size!48841 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100070)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12519 0))(
  ( (MissingZero!12519 (index!52467 (_ BitVec 32))) (Found!12519 (index!52468 (_ BitVec 32))) (Intermediate!12519 (undefined!13331 Bool) (index!52469 (_ BitVec 32)) (x!134150 (_ BitVec 32))) (Undefined!12519) (MissingVacant!12519 (index!52470 (_ BitVec 32))) )
))
(declare-fun lt!652995 () SeekEntryResult!12519)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun lt!652996 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100070 (_ BitVec 32)) SeekEntryResult!12519)

(assert (=> b!1500880 (= lt!652995 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652996 vacantBefore!10 (select (arr!48290 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1022030 () Bool)

(declare-fun e!839748 () Bool)

(assert (=> start!127776 (=> (not res!1022030) (not e!839748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127776 (= res!1022030 (validMask!0 mask!2661))))

(assert (=> start!127776 e!839748))

(assert (=> start!127776 true))

(declare-fun array_inv!37235 (array!100070) Bool)

(assert (=> start!127776 (array_inv!37235 a!2850)))

(declare-fun b!1500881 () Bool)

(assert (=> b!1500881 (= e!839748 e!839750)))

(declare-fun res!1022034 () Bool)

(assert (=> b!1500881 (=> (not res!1022034) (not e!839750))))

(assert (=> b!1500881 (= res!1022034 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652996 #b00000000000000000000000000000000) (bvslt lt!652996 (size!48841 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500881 (= lt!652996 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500882 () Bool)

(declare-fun res!1022032 () Bool)

(assert (=> b!1500882 (=> (not res!1022032) (not e!839748))))

(assert (=> b!1500882 (= res!1022032 (not (= (select (arr!48290 a!2850) index!625) (select (arr!48290 a!2850) j!87))))))

(declare-fun b!1500883 () Bool)

(declare-fun res!1022031 () Bool)

(assert (=> b!1500883 (=> (not res!1022031) (not e!839748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100070 (_ BitVec 32)) Bool)

(assert (=> b!1500883 (= res!1022031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500884 () Bool)

(declare-fun res!1022029 () Bool)

(assert (=> b!1500884 (=> (not res!1022029) (not e!839748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500884 (= res!1022029 (validKeyInArray!0 (select (arr!48290 a!2850) j!87)))))

(declare-fun b!1500885 () Bool)

(declare-fun res!1022036 () Bool)

(assert (=> b!1500885 (=> (not res!1022036) (not e!839748))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500885 (= res!1022036 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48841 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48841 a!2850)) (= (select (arr!48290 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48290 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48841 a!2850))))))

(declare-fun b!1500886 () Bool)

(declare-fun res!1022037 () Bool)

(assert (=> b!1500886 (=> (not res!1022037) (not e!839748))))

(assert (=> b!1500886 (= res!1022037 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48290 a!2850) j!87) a!2850 mask!2661) (Found!12519 j!87)))))

(declare-fun b!1500887 () Bool)

(declare-fun res!1022033 () Bool)

(assert (=> b!1500887 (=> (not res!1022033) (not e!839748))))

(assert (=> b!1500887 (= res!1022033 (and (= (size!48841 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48841 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48841 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500888 () Bool)

(declare-fun res!1022035 () Bool)

(assert (=> b!1500888 (=> (not res!1022035) (not e!839748))))

(declare-datatypes ((List!34962 0))(
  ( (Nil!34959) (Cons!34958 (h!36356 (_ BitVec 64)) (t!49663 List!34962)) )
))
(declare-fun arrayNoDuplicates!0 (array!100070 (_ BitVec 32) List!34962) Bool)

(assert (=> b!1500888 (= res!1022035 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34959))))

(declare-fun b!1500889 () Bool)

(declare-fun res!1022028 () Bool)

(assert (=> b!1500889 (=> (not res!1022028) (not e!839748))))

(assert (=> b!1500889 (= res!1022028 (validKeyInArray!0 (select (arr!48290 a!2850) i!996)))))

(assert (= (and start!127776 res!1022030) b!1500887))

(assert (= (and b!1500887 res!1022033) b!1500889))

(assert (= (and b!1500889 res!1022028) b!1500884))

(assert (= (and b!1500884 res!1022029) b!1500883))

(assert (= (and b!1500883 res!1022031) b!1500888))

(assert (= (and b!1500888 res!1022035) b!1500885))

(assert (= (and b!1500885 res!1022036) b!1500886))

(assert (= (and b!1500886 res!1022037) b!1500882))

(assert (= (and b!1500882 res!1022032) b!1500881))

(assert (= (and b!1500881 res!1022034) b!1500880))

(declare-fun m!1384131 () Bool)

(assert (=> b!1500884 m!1384131))

(assert (=> b!1500884 m!1384131))

(declare-fun m!1384133 () Bool)

(assert (=> b!1500884 m!1384133))

(assert (=> b!1500880 m!1384131))

(assert (=> b!1500880 m!1384131))

(declare-fun m!1384135 () Bool)

(assert (=> b!1500880 m!1384135))

(declare-fun m!1384137 () Bool)

(assert (=> b!1500882 m!1384137))

(assert (=> b!1500882 m!1384131))

(declare-fun m!1384139 () Bool)

(assert (=> b!1500883 m!1384139))

(declare-fun m!1384141 () Bool)

(assert (=> b!1500889 m!1384141))

(assert (=> b!1500889 m!1384141))

(declare-fun m!1384143 () Bool)

(assert (=> b!1500889 m!1384143))

(declare-fun m!1384145 () Bool)

(assert (=> b!1500888 m!1384145))

(assert (=> b!1500886 m!1384131))

(assert (=> b!1500886 m!1384131))

(declare-fun m!1384147 () Bool)

(assert (=> b!1500886 m!1384147))

(declare-fun m!1384149 () Bool)

(assert (=> b!1500885 m!1384149))

(declare-fun m!1384151 () Bool)

(assert (=> b!1500885 m!1384151))

(declare-fun m!1384153 () Bool)

(assert (=> b!1500885 m!1384153))

(declare-fun m!1384155 () Bool)

(assert (=> b!1500881 m!1384155))

(declare-fun m!1384157 () Bool)

(assert (=> start!127776 m!1384157))

(declare-fun m!1384159 () Bool)

(assert (=> start!127776 m!1384159))

(check-sat (not b!1500883) (not b!1500886) (not start!127776) (not b!1500889) (not b!1500880) (not b!1500888) (not b!1500881) (not b!1500884))
(check-sat)
