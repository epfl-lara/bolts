; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125202 () Bool)

(assert start!125202)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639175 () (_ BitVec 32))

(declare-fun b!1458838 () Bool)

(declare-fun lt!639170 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!820538 () Bool)

(declare-datatypes ((SeekEntryResult!11842 0))(
  ( (MissingZero!11842 (index!49759 (_ BitVec 32))) (Found!11842 (index!49760 (_ BitVec 32))) (Intermediate!11842 (undefined!12654 Bool) (index!49761 (_ BitVec 32)) (x!131374 (_ BitVec 32))) (Undefined!11842) (MissingVacant!11842 (index!49762 (_ BitVec 32))) )
))
(declare-fun lt!639173 () SeekEntryResult!11842)

(declare-datatypes ((array!98567 0))(
  ( (array!98568 (arr!47567 (Array (_ BitVec 32) (_ BitVec 64))) (size!48118 (_ BitVec 32))) )
))
(declare-fun lt!639178 () array!98567)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98567 (_ BitVec 32)) SeekEntryResult!11842)

(assert (=> b!1458838 (= e!820538 (not (= lt!639173 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639175 lt!639170 lt!639178 mask!2687))))))

(declare-fun b!1458839 () Bool)

(declare-fun res!988992 () Bool)

(declare-fun e!820533 () Bool)

(assert (=> b!1458839 (=> res!988992 e!820533)))

(assert (=> b!1458839 (= res!988992 e!820538)))

(declare-fun c!134443 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1458839 (= c!134443 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458840 () Bool)

(declare-fun res!988984 () Bool)

(declare-fun e!820530 () Bool)

(assert (=> b!1458840 (=> (not res!988984) (not e!820530))))

(declare-fun a!2862 () array!98567)

(declare-datatypes ((List!34248 0))(
  ( (Nil!34245) (Cons!34244 (h!35594 (_ BitVec 64)) (t!48949 List!34248)) )
))
(declare-fun arrayNoDuplicates!0 (array!98567 (_ BitVec 32) List!34248) Bool)

(assert (=> b!1458840 (= res!988984 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34245))))

(declare-fun b!1458841 () Bool)

(declare-fun e!820534 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1458841 (= e!820534 (= lt!639173 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639170 lt!639178 mask!2687)))))

(declare-fun b!1458842 () Bool)

(declare-fun res!988979 () Bool)

(assert (=> b!1458842 (=> res!988979 e!820533)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458842 (= res!988979 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458843 () Bool)

(declare-fun lt!639176 () SeekEntryResult!11842)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98567 (_ BitVec 32)) SeekEntryResult!11842)

(assert (=> b!1458843 (= e!820538 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639175 intermediateAfterIndex!19 lt!639170 lt!639178 mask!2687) lt!639176)))))

(declare-fun b!1458844 () Bool)

(declare-fun e!820531 () Bool)

(declare-fun e!820532 () Bool)

(assert (=> b!1458844 (= e!820531 (not e!820532))))

(declare-fun res!988988 () Bool)

(assert (=> b!1458844 (=> res!988988 e!820532)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458844 (= res!988988 (or (and (= (select (arr!47567 a!2862) index!646) (select (store (arr!47567 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47567 a!2862) index!646) (select (arr!47567 a!2862) j!93))) (= (select (arr!47567 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639172 () SeekEntryResult!11842)

(assert (=> b!1458844 (and (= lt!639172 (Found!11842 j!93)) (or (= (select (arr!47567 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47567 a!2862) intermediateBeforeIndex!19) (select (arr!47567 a!2862) j!93))) (let ((bdg!53467 (select (store (arr!47567 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47567 a!2862) index!646) bdg!53467) (= (select (arr!47567 a!2862) index!646) (select (arr!47567 a!2862) j!93))) (= (select (arr!47567 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53467 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98567 (_ BitVec 32)) SeekEntryResult!11842)

(assert (=> b!1458844 (= lt!639172 (seekEntryOrOpen!0 (select (arr!47567 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98567 (_ BitVec 32)) Bool)

(assert (=> b!1458844 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49128 0))(
  ( (Unit!49129) )
))
(declare-fun lt!639174 () Unit!49128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49128)

(assert (=> b!1458844 (= lt!639174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458845 () Bool)

(declare-fun res!988978 () Bool)

(assert (=> b!1458845 (=> res!988978 e!820533)))

(declare-fun lt!639177 () SeekEntryResult!11842)

(assert (=> b!1458845 (= res!988978 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639175 (select (arr!47567 a!2862) j!93) a!2862 mask!2687) lt!639177)))))

(declare-fun b!1458846 () Bool)

(declare-fun res!988989 () Bool)

(assert (=> b!1458846 (=> (not res!988989) (not e!820531))))

(assert (=> b!1458846 (= res!988989 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458847 () Bool)

(declare-fun res!988995 () Bool)

(assert (=> b!1458847 (=> (not res!988995) (not e!820530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458847 (= res!988995 (validKeyInArray!0 (select (arr!47567 a!2862) j!93)))))

(declare-fun b!1458848 () Bool)

(declare-fun e!820536 () Bool)

(declare-fun e!820535 () Bool)

(assert (=> b!1458848 (= e!820536 e!820535)))

(declare-fun res!988993 () Bool)

(assert (=> b!1458848 (=> (not res!988993) (not e!820535))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458848 (= res!988993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47567 a!2862) j!93) mask!2687) (select (arr!47567 a!2862) j!93) a!2862 mask!2687) lt!639177))))

(assert (=> b!1458848 (= lt!639177 (Intermediate!11842 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458849 () Bool)

(declare-fun res!988986 () Bool)

(assert (=> b!1458849 (=> (not res!988986) (not e!820530))))

(assert (=> b!1458849 (= res!988986 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48118 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48118 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48118 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458850 () Bool)

(declare-fun res!988985 () Bool)

(assert (=> b!1458850 (=> (not res!988985) (not e!820531))))

(assert (=> b!1458850 (= res!988985 e!820534)))

(declare-fun c!134444 () Bool)

(assert (=> b!1458850 (= c!134444 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458851 () Bool)

(assert (=> b!1458851 (= e!820533 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1458851 (= lt!639172 lt!639176)))

(declare-fun lt!639171 () Unit!49128)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49128)

(assert (=> b!1458851 (= lt!639171 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639175 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458852 () Bool)

(assert (=> b!1458852 (= e!820534 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639170 lt!639178 mask!2687) (seekEntryOrOpen!0 lt!639170 lt!639178 mask!2687)))))

(declare-fun b!1458853 () Bool)

(declare-fun res!988981 () Bool)

(assert (=> b!1458853 (=> (not res!988981) (not e!820530))))

(assert (=> b!1458853 (= res!988981 (validKeyInArray!0 (select (arr!47567 a!2862) i!1006)))))

(declare-fun res!988987 () Bool)

(assert (=> start!125202 (=> (not res!988987) (not e!820530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125202 (= res!988987 (validMask!0 mask!2687))))

(assert (=> start!125202 e!820530))

(assert (=> start!125202 true))

(declare-fun array_inv!36512 (array!98567) Bool)

(assert (=> start!125202 (array_inv!36512 a!2862)))

(declare-fun b!1458854 () Bool)

(assert (=> b!1458854 (= e!820535 e!820531)))

(declare-fun res!988991 () Bool)

(assert (=> b!1458854 (=> (not res!988991) (not e!820531))))

(assert (=> b!1458854 (= res!988991 (= lt!639173 (Intermediate!11842 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458854 (= lt!639173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639170 mask!2687) lt!639170 lt!639178 mask!2687))))

(assert (=> b!1458854 (= lt!639170 (select (store (arr!47567 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458855 () Bool)

(assert (=> b!1458855 (= e!820532 e!820533)))

(declare-fun res!988994 () Bool)

(assert (=> b!1458855 (=> res!988994 e!820533)))

(assert (=> b!1458855 (= res!988994 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639175 #b00000000000000000000000000000000) (bvsge lt!639175 (size!48118 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458855 (= lt!639175 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458855 (= lt!639176 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639170 lt!639178 mask!2687))))

(assert (=> b!1458855 (= lt!639176 (seekEntryOrOpen!0 lt!639170 lt!639178 mask!2687))))

(declare-fun b!1458856 () Bool)

(assert (=> b!1458856 (= e!820530 e!820536)))

(declare-fun res!988990 () Bool)

(assert (=> b!1458856 (=> (not res!988990) (not e!820536))))

(assert (=> b!1458856 (= res!988990 (= (select (store (arr!47567 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458856 (= lt!639178 (array!98568 (store (arr!47567 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48118 a!2862)))))

(declare-fun b!1458857 () Bool)

(declare-fun res!988982 () Bool)

(assert (=> b!1458857 (=> (not res!988982) (not e!820535))))

(assert (=> b!1458857 (= res!988982 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47567 a!2862) j!93) a!2862 mask!2687) lt!639177))))

(declare-fun b!1458858 () Bool)

(declare-fun res!988983 () Bool)

(assert (=> b!1458858 (=> (not res!988983) (not e!820530))))

(assert (=> b!1458858 (= res!988983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458859 () Bool)

(declare-fun res!988980 () Bool)

(assert (=> b!1458859 (=> (not res!988980) (not e!820530))))

(assert (=> b!1458859 (= res!988980 (and (= (size!48118 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48118 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48118 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125202 res!988987) b!1458859))

(assert (= (and b!1458859 res!988980) b!1458853))

(assert (= (and b!1458853 res!988981) b!1458847))

(assert (= (and b!1458847 res!988995) b!1458858))

(assert (= (and b!1458858 res!988983) b!1458840))

(assert (= (and b!1458840 res!988984) b!1458849))

(assert (= (and b!1458849 res!988986) b!1458856))

(assert (= (and b!1458856 res!988990) b!1458848))

(assert (= (and b!1458848 res!988993) b!1458857))

(assert (= (and b!1458857 res!988982) b!1458854))

(assert (= (and b!1458854 res!988991) b!1458850))

(assert (= (and b!1458850 c!134444) b!1458841))

(assert (= (and b!1458850 (not c!134444)) b!1458852))

(assert (= (and b!1458850 res!988985) b!1458846))

(assert (= (and b!1458846 res!988989) b!1458844))

(assert (= (and b!1458844 (not res!988988)) b!1458855))

(assert (= (and b!1458855 (not res!988994)) b!1458845))

(assert (= (and b!1458845 (not res!988978)) b!1458839))

(assert (= (and b!1458839 c!134443) b!1458838))

(assert (= (and b!1458839 (not c!134443)) b!1458843))

(assert (= (and b!1458839 (not res!988992)) b!1458842))

(assert (= (and b!1458842 (not res!988979)) b!1458851))

(declare-fun m!1346703 () Bool)

(assert (=> b!1458843 m!1346703))

(declare-fun m!1346705 () Bool)

(assert (=> b!1458841 m!1346705))

(declare-fun m!1346707 () Bool)

(assert (=> start!125202 m!1346707))

(declare-fun m!1346709 () Bool)

(assert (=> start!125202 m!1346709))

(declare-fun m!1346711 () Bool)

(assert (=> b!1458858 m!1346711))

(declare-fun m!1346713 () Bool)

(assert (=> b!1458856 m!1346713))

(declare-fun m!1346715 () Bool)

(assert (=> b!1458856 m!1346715))

(declare-fun m!1346717 () Bool)

(assert (=> b!1458848 m!1346717))

(assert (=> b!1458848 m!1346717))

(declare-fun m!1346719 () Bool)

(assert (=> b!1458848 m!1346719))

(assert (=> b!1458848 m!1346719))

(assert (=> b!1458848 m!1346717))

(declare-fun m!1346721 () Bool)

(assert (=> b!1458848 m!1346721))

(declare-fun m!1346723 () Bool)

(assert (=> b!1458853 m!1346723))

(assert (=> b!1458853 m!1346723))

(declare-fun m!1346725 () Bool)

(assert (=> b!1458853 m!1346725))

(declare-fun m!1346727 () Bool)

(assert (=> b!1458852 m!1346727))

(declare-fun m!1346729 () Bool)

(assert (=> b!1458852 m!1346729))

(assert (=> b!1458845 m!1346717))

(assert (=> b!1458845 m!1346717))

(declare-fun m!1346731 () Bool)

(assert (=> b!1458845 m!1346731))

(declare-fun m!1346733 () Bool)

(assert (=> b!1458840 m!1346733))

(declare-fun m!1346735 () Bool)

(assert (=> b!1458855 m!1346735))

(assert (=> b!1458855 m!1346727))

(assert (=> b!1458855 m!1346729))

(assert (=> b!1458857 m!1346717))

(assert (=> b!1458857 m!1346717))

(declare-fun m!1346737 () Bool)

(assert (=> b!1458857 m!1346737))

(declare-fun m!1346739 () Bool)

(assert (=> b!1458844 m!1346739))

(assert (=> b!1458844 m!1346713))

(declare-fun m!1346741 () Bool)

(assert (=> b!1458844 m!1346741))

(declare-fun m!1346743 () Bool)

(assert (=> b!1458844 m!1346743))

(declare-fun m!1346745 () Bool)

(assert (=> b!1458844 m!1346745))

(assert (=> b!1458844 m!1346717))

(declare-fun m!1346747 () Bool)

(assert (=> b!1458844 m!1346747))

(declare-fun m!1346749 () Bool)

(assert (=> b!1458844 m!1346749))

(assert (=> b!1458844 m!1346717))

(declare-fun m!1346751 () Bool)

(assert (=> b!1458851 m!1346751))

(declare-fun m!1346753 () Bool)

(assert (=> b!1458838 m!1346753))

(declare-fun m!1346755 () Bool)

(assert (=> b!1458854 m!1346755))

(assert (=> b!1458854 m!1346755))

(declare-fun m!1346757 () Bool)

(assert (=> b!1458854 m!1346757))

(assert (=> b!1458854 m!1346713))

(declare-fun m!1346759 () Bool)

(assert (=> b!1458854 m!1346759))

(assert (=> b!1458847 m!1346717))

(assert (=> b!1458847 m!1346717))

(declare-fun m!1346761 () Bool)

(assert (=> b!1458847 m!1346761))

(check-sat (not b!1458855) (not b!1458851) (not b!1458841) (not start!125202) (not b!1458844) (not b!1458838) (not b!1458845) (not b!1458843) (not b!1458858) (not b!1458840) (not b!1458854) (not b!1458853) (not b!1458852) (not b!1458847) (not b!1458857) (not b!1458848))
(check-sat)
