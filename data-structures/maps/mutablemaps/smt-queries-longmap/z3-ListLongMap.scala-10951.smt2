; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128214 () Bool)

(assert start!128214)

(declare-fun b!1504746 () Bool)

(declare-fun res!1025417 () Bool)

(declare-fun e!841130 () Bool)

(assert (=> b!1504746 (=> (not res!1025417) (not e!841130))))

(declare-datatypes ((array!100325 0))(
  ( (array!100326 (arr!48410 (Array (_ BitVec 32) (_ BitVec 64))) (size!48961 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100325)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504746 (= res!1025417 (validKeyInArray!0 (select (arr!48410 a!2850) i!996)))))

(declare-fun b!1504748 () Bool)

(declare-fun res!1025408 () Bool)

(assert (=> b!1504748 (=> (not res!1025408) (not e!841130))))

(declare-datatypes ((List!35082 0))(
  ( (Nil!35079) (Cons!35078 (h!36476 (_ BitVec 64)) (t!49783 List!35082)) )
))
(declare-fun arrayNoDuplicates!0 (array!100325 (_ BitVec 32) List!35082) Bool)

(assert (=> b!1504748 (= res!1025408 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35079))))

(declare-fun b!1504749 () Bool)

(declare-fun res!1025416 () Bool)

(assert (=> b!1504749 (=> (not res!1025416) (not e!841130))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504749 (= res!1025416 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48961 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48961 a!2850)) (= (select (arr!48410 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48410 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48961 a!2850))))))

(declare-fun b!1504750 () Bool)

(declare-fun e!841131 () Bool)

(assert (=> b!1504750 (= e!841130 e!841131)))

(declare-fun res!1025412 () Bool)

(assert (=> b!1504750 (=> (not res!1025412) (not e!841131))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12627 0))(
  ( (MissingZero!12627 (index!52899 (_ BitVec 32))) (Found!12627 (index!52900 (_ BitVec 32))) (Intermediate!12627 (undefined!13439 Bool) (index!52901 (_ BitVec 32)) (x!134602 (_ BitVec 32))) (Undefined!12627) (MissingVacant!12627 (index!52902 (_ BitVec 32))) )
))
(declare-fun lt!653772 () SeekEntryResult!12627)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100325 (_ BitVec 32)) SeekEntryResult!12627)

(assert (=> b!1504750 (= res!1025412 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48410 a!2850) j!87) a!2850 mask!2661) lt!653772))))

(assert (=> b!1504750 (= lt!653772 (Found!12627 j!87))))

(declare-fun b!1504751 () Bool)

(declare-fun res!1025409 () Bool)

(declare-fun e!841133 () Bool)

(assert (=> b!1504751 (=> (not res!1025409) (not e!841133))))

(declare-fun lt!653773 () (_ BitVec 32))

(assert (=> b!1504751 (= res!1025409 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653773 vacantBefore!10 (select (arr!48410 a!2850) j!87) a!2850 mask!2661) lt!653772))))

(declare-fun b!1504752 () Bool)

(declare-fun res!1025418 () Bool)

(assert (=> b!1504752 (=> (not res!1025418) (not e!841130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100325 (_ BitVec 32)) Bool)

(assert (=> b!1504752 (= res!1025418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504753 () Bool)

(declare-fun res!1025415 () Bool)

(assert (=> b!1504753 (=> (not res!1025415) (not e!841130))))

(assert (=> b!1504753 (= res!1025415 (validKeyInArray!0 (select (arr!48410 a!2850) j!87)))))

(declare-fun b!1504754 () Bool)

(declare-fun res!1025414 () Bool)

(assert (=> b!1504754 (=> (not res!1025414) (not e!841131))))

(assert (=> b!1504754 (= res!1025414 (not (= (select (arr!48410 a!2850) index!625) (select (arr!48410 a!2850) j!87))))))

(declare-fun b!1504747 () Bool)

(assert (=> b!1504747 (= e!841133 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!647)) (bvsub #b01111111111111111111111111111110 x!647)))))

(declare-fun res!1025411 () Bool)

(assert (=> start!128214 (=> (not res!1025411) (not e!841130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128214 (= res!1025411 (validMask!0 mask!2661))))

(assert (=> start!128214 e!841130))

(assert (=> start!128214 true))

(declare-fun array_inv!37355 (array!100325) Bool)

(assert (=> start!128214 (array_inv!37355 a!2850)))

(declare-fun b!1504755 () Bool)

(declare-fun res!1025413 () Bool)

(assert (=> b!1504755 (=> (not res!1025413) (not e!841130))))

(assert (=> b!1504755 (= res!1025413 (and (= (size!48961 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48961 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48961 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504756 () Bool)

(assert (=> b!1504756 (= e!841131 e!841133)))

(declare-fun res!1025410 () Bool)

(assert (=> b!1504756 (=> (not res!1025410) (not e!841133))))

(assert (=> b!1504756 (= res!1025410 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653773 #b00000000000000000000000000000000) (bvslt lt!653773 (size!48961 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504756 (= lt!653773 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128214 res!1025411) b!1504755))

(assert (= (and b!1504755 res!1025413) b!1504746))

(assert (= (and b!1504746 res!1025417) b!1504753))

(assert (= (and b!1504753 res!1025415) b!1504752))

(assert (= (and b!1504752 res!1025418) b!1504748))

(assert (= (and b!1504748 res!1025408) b!1504749))

(assert (= (and b!1504749 res!1025416) b!1504750))

(assert (= (and b!1504750 res!1025412) b!1504754))

(assert (= (and b!1504754 res!1025414) b!1504756))

(assert (= (and b!1504756 res!1025410) b!1504751))

(assert (= (and b!1504751 res!1025409) b!1504747))

(declare-fun m!1387899 () Bool)

(assert (=> b!1504750 m!1387899))

(assert (=> b!1504750 m!1387899))

(declare-fun m!1387901 () Bool)

(assert (=> b!1504750 m!1387901))

(declare-fun m!1387903 () Bool)

(assert (=> b!1504746 m!1387903))

(assert (=> b!1504746 m!1387903))

(declare-fun m!1387905 () Bool)

(assert (=> b!1504746 m!1387905))

(declare-fun m!1387907 () Bool)

(assert (=> b!1504752 m!1387907))

(assert (=> b!1504753 m!1387899))

(assert (=> b!1504753 m!1387899))

(declare-fun m!1387909 () Bool)

(assert (=> b!1504753 m!1387909))

(declare-fun m!1387911 () Bool)

(assert (=> b!1504748 m!1387911))

(declare-fun m!1387913 () Bool)

(assert (=> b!1504749 m!1387913))

(declare-fun m!1387915 () Bool)

(assert (=> b!1504749 m!1387915))

(declare-fun m!1387917 () Bool)

(assert (=> b!1504749 m!1387917))

(declare-fun m!1387919 () Bool)

(assert (=> b!1504756 m!1387919))

(assert (=> b!1504751 m!1387899))

(assert (=> b!1504751 m!1387899))

(declare-fun m!1387921 () Bool)

(assert (=> b!1504751 m!1387921))

(declare-fun m!1387923 () Bool)

(assert (=> start!128214 m!1387923))

(declare-fun m!1387925 () Bool)

(assert (=> start!128214 m!1387925))

(declare-fun m!1387927 () Bool)

(assert (=> b!1504754 m!1387927))

(assert (=> b!1504754 m!1387899))

(check-sat (not b!1504751) (not b!1504748) (not b!1504756) (not b!1504753) (not b!1504750) (not start!128214) (not b!1504752) (not b!1504746))
(check-sat)
