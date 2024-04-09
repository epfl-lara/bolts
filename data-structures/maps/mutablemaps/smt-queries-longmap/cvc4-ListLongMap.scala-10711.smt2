; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125450 () Bool)

(assert start!125450)

(declare-fun b!1466851 () Bool)

(declare-fun e!824042 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1466851 (= e!824042 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-datatypes ((array!98815 0))(
  ( (array!98816 (arr!47691 (Array (_ BitVec 32) (_ BitVec 64))) (size!48242 (_ BitVec 32))) )
))
(declare-fun lt!641873 () array!98815)

(declare-datatypes ((SeekEntryResult!11966 0))(
  ( (MissingZero!11966 (index!50255 (_ BitVec 32))) (Found!11966 (index!50256 (_ BitVec 32))) (Intermediate!11966 (undefined!12778 Bool) (index!50257 (_ BitVec 32)) (x!131826 (_ BitVec 32))) (Undefined!11966) (MissingVacant!11966 (index!50258 (_ BitVec 32))) )
))
(declare-fun lt!641872 () SeekEntryResult!11966)

(declare-fun lt!641875 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98815 (_ BitVec 32)) SeekEntryResult!11966)

(assert (=> b!1466851 (= lt!641872 (seekEntryOrOpen!0 lt!641875 lt!641873 mask!2687))))

(declare-fun lt!641871 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49376 0))(
  ( (Unit!49377) )
))
(declare-fun lt!641874 () Unit!49376)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98815)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49376)

(assert (=> b!1466851 (= lt!641874 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641871 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun lt!641876 () SeekEntryResult!11966)

(declare-fun b!1466852 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!824040 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98815 (_ BitVec 32)) SeekEntryResult!11966)

(assert (=> b!1466852 (= e!824040 (= lt!641876 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641875 lt!641873 mask!2687)))))

(declare-fun b!1466853 () Bool)

(declare-fun res!995589 () Bool)

(declare-fun e!824048 () Bool)

(assert (=> b!1466853 (=> (not res!995589) (not e!824048))))

(declare-datatypes ((List!34372 0))(
  ( (Nil!34369) (Cons!34368 (h!35718 (_ BitVec 64)) (t!49073 List!34372)) )
))
(declare-fun arrayNoDuplicates!0 (array!98815 (_ BitVec 32) List!34372) Bool)

(assert (=> b!1466853 (= res!995589 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34369))))

(declare-fun b!1466854 () Bool)

(declare-fun res!995577 () Bool)

(assert (=> b!1466854 (=> (not res!995577) (not e!824048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466854 (= res!995577 (validKeyInArray!0 (select (arr!47691 a!2862) i!1006)))))

(declare-fun b!1466855 () Bool)

(declare-fun e!824043 () Bool)

(assert (=> b!1466855 (= e!824048 e!824043)))

(declare-fun res!995578 () Bool)

(assert (=> b!1466855 (=> (not res!995578) (not e!824043))))

(assert (=> b!1466855 (= res!995578 (= (select (store (arr!47691 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466855 (= lt!641873 (array!98816 (store (arr!47691 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48242 a!2862)))))

(declare-fun b!1466856 () Bool)

(declare-fun res!995583 () Bool)

(assert (=> b!1466856 (=> res!995583 e!824042)))

(declare-fun e!824044 () Bool)

(assert (=> b!1466856 (= res!995583 e!824044)))

(declare-fun c!135151 () Bool)

(assert (=> b!1466856 (= c!135151 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466857 () Bool)

(declare-fun res!995579 () Bool)

(assert (=> b!1466857 (=> (not res!995579) (not e!824048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98815 (_ BitVec 32)) Bool)

(assert (=> b!1466857 (= res!995579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466858 () Bool)

(declare-fun res!995584 () Bool)

(declare-fun e!824045 () Bool)

(assert (=> b!1466858 (=> (not res!995584) (not e!824045))))

(assert (=> b!1466858 (= res!995584 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466859 () Bool)

(declare-fun res!995585 () Bool)

(assert (=> b!1466859 (=> (not res!995585) (not e!824045))))

(assert (=> b!1466859 (= res!995585 e!824040)))

(declare-fun c!135152 () Bool)

(assert (=> b!1466859 (= c!135152 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466860 () Bool)

(declare-fun e!824046 () Bool)

(assert (=> b!1466860 (= e!824043 e!824046)))

(declare-fun res!995590 () Bool)

(assert (=> b!1466860 (=> (not res!995590) (not e!824046))))

(declare-fun lt!641877 () SeekEntryResult!11966)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466860 (= res!995590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47691 a!2862) j!93) mask!2687) (select (arr!47691 a!2862) j!93) a!2862 mask!2687) lt!641877))))

(assert (=> b!1466860 (= lt!641877 (Intermediate!11966 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466861 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98815 (_ BitVec 32)) SeekEntryResult!11966)

(assert (=> b!1466861 (= e!824040 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641875 lt!641873 mask!2687) (seekEntryOrOpen!0 lt!641875 lt!641873 mask!2687)))))

(declare-fun b!1466862 () Bool)

(declare-fun res!995576 () Bool)

(assert (=> b!1466862 (=> (not res!995576) (not e!824048))))

(assert (=> b!1466862 (= res!995576 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48242 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48242 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48242 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!995582 () Bool)

(assert (=> start!125450 (=> (not res!995582) (not e!824048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125450 (= res!995582 (validMask!0 mask!2687))))

(assert (=> start!125450 e!824048))

(assert (=> start!125450 true))

(declare-fun array_inv!36636 (array!98815) Bool)

(assert (=> start!125450 (array_inv!36636 a!2862)))

(declare-fun b!1466863 () Bool)

(assert (=> b!1466863 (= e!824046 e!824045)))

(declare-fun res!995575 () Bool)

(assert (=> b!1466863 (=> (not res!995575) (not e!824045))))

(assert (=> b!1466863 (= res!995575 (= lt!641876 (Intermediate!11966 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466863 (= lt!641876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641875 mask!2687) lt!641875 lt!641873 mask!2687))))

(assert (=> b!1466863 (= lt!641875 (select (store (arr!47691 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466864 () Bool)

(declare-fun e!824041 () Bool)

(assert (=> b!1466864 (= e!824045 (not e!824041))))

(declare-fun res!995588 () Bool)

(assert (=> b!1466864 (=> res!995588 e!824041)))

(assert (=> b!1466864 (= res!995588 (or (and (= (select (arr!47691 a!2862) index!646) (select (store (arr!47691 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47691 a!2862) index!646) (select (arr!47691 a!2862) j!93))) (= (select (arr!47691 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466864 (and (= lt!641872 (Found!11966 j!93)) (or (= (select (arr!47691 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47691 a!2862) intermediateBeforeIndex!19) (select (arr!47691 a!2862) j!93))))))

(assert (=> b!1466864 (= lt!641872 (seekEntryOrOpen!0 (select (arr!47691 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466864 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641878 () Unit!49376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49376)

(assert (=> b!1466864 (= lt!641878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466865 () Bool)

(declare-fun res!995580 () Bool)

(assert (=> b!1466865 (=> res!995580 e!824042)))

(assert (=> b!1466865 (= res!995580 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466866 () Bool)

(declare-fun res!995591 () Bool)

(assert (=> b!1466866 (=> (not res!995591) (not e!824046))))

(assert (=> b!1466866 (= res!995591 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47691 a!2862) j!93) a!2862 mask!2687) lt!641877))))

(declare-fun b!1466867 () Bool)

(declare-fun res!995587 () Bool)

(assert (=> b!1466867 (=> res!995587 e!824042)))

(assert (=> b!1466867 (= res!995587 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641871 (select (arr!47691 a!2862) j!93) a!2862 mask!2687) lt!641877)))))

(declare-fun b!1466868 () Bool)

(assert (=> b!1466868 (= e!824044 (not (= lt!641876 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641871 lt!641875 lt!641873 mask!2687))))))

(declare-fun b!1466869 () Bool)

(declare-fun res!995581 () Bool)

(assert (=> b!1466869 (=> (not res!995581) (not e!824048))))

(assert (=> b!1466869 (= res!995581 (and (= (size!48242 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48242 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48242 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466870 () Bool)

(declare-fun res!995592 () Bool)

(assert (=> b!1466870 (=> (not res!995592) (not e!824048))))

(assert (=> b!1466870 (= res!995592 (validKeyInArray!0 (select (arr!47691 a!2862) j!93)))))

(declare-fun b!1466871 () Bool)

(assert (=> b!1466871 (= e!824044 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641871 intermediateAfterIndex!19 lt!641875 lt!641873 mask!2687) (seekEntryOrOpen!0 lt!641875 lt!641873 mask!2687))))))

(declare-fun b!1466872 () Bool)

(assert (=> b!1466872 (= e!824041 e!824042)))

(declare-fun res!995586 () Bool)

(assert (=> b!1466872 (=> res!995586 e!824042)))

(assert (=> b!1466872 (= res!995586 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641871 #b00000000000000000000000000000000) (bvsge lt!641871 (size!48242 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466872 (= lt!641871 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125450 res!995582) b!1466869))

(assert (= (and b!1466869 res!995581) b!1466854))

(assert (= (and b!1466854 res!995577) b!1466870))

(assert (= (and b!1466870 res!995592) b!1466857))

(assert (= (and b!1466857 res!995579) b!1466853))

(assert (= (and b!1466853 res!995589) b!1466862))

(assert (= (and b!1466862 res!995576) b!1466855))

(assert (= (and b!1466855 res!995578) b!1466860))

(assert (= (and b!1466860 res!995590) b!1466866))

(assert (= (and b!1466866 res!995591) b!1466863))

(assert (= (and b!1466863 res!995575) b!1466859))

(assert (= (and b!1466859 c!135152) b!1466852))

(assert (= (and b!1466859 (not c!135152)) b!1466861))

(assert (= (and b!1466859 res!995585) b!1466858))

(assert (= (and b!1466858 res!995584) b!1466864))

(assert (= (and b!1466864 (not res!995588)) b!1466872))

(assert (= (and b!1466872 (not res!995586)) b!1466867))

(assert (= (and b!1466867 (not res!995587)) b!1466856))

(assert (= (and b!1466856 c!135151) b!1466868))

(assert (= (and b!1466856 (not c!135151)) b!1466871))

(assert (= (and b!1466856 (not res!995583)) b!1466865))

(assert (= (and b!1466865 (not res!995580)) b!1466851))

(declare-fun m!1353855 () Bool)

(assert (=> b!1466868 m!1353855))

(declare-fun m!1353857 () Bool)

(assert (=> b!1466857 m!1353857))

(declare-fun m!1353859 () Bool)

(assert (=> b!1466853 m!1353859))

(declare-fun m!1353861 () Bool)

(assert (=> b!1466872 m!1353861))

(declare-fun m!1353863 () Bool)

(assert (=> b!1466861 m!1353863))

(declare-fun m!1353865 () Bool)

(assert (=> b!1466861 m!1353865))

(declare-fun m!1353867 () Bool)

(assert (=> b!1466866 m!1353867))

(assert (=> b!1466866 m!1353867))

(declare-fun m!1353869 () Bool)

(assert (=> b!1466866 m!1353869))

(declare-fun m!1353871 () Bool)

(assert (=> start!125450 m!1353871))

(declare-fun m!1353873 () Bool)

(assert (=> start!125450 m!1353873))

(assert (=> b!1466860 m!1353867))

(assert (=> b!1466860 m!1353867))

(declare-fun m!1353875 () Bool)

(assert (=> b!1466860 m!1353875))

(assert (=> b!1466860 m!1353875))

(assert (=> b!1466860 m!1353867))

(declare-fun m!1353877 () Bool)

(assert (=> b!1466860 m!1353877))

(assert (=> b!1466870 m!1353867))

(assert (=> b!1466870 m!1353867))

(declare-fun m!1353879 () Bool)

(assert (=> b!1466870 m!1353879))

(declare-fun m!1353881 () Bool)

(assert (=> b!1466852 m!1353881))

(declare-fun m!1353883 () Bool)

(assert (=> b!1466854 m!1353883))

(assert (=> b!1466854 m!1353883))

(declare-fun m!1353885 () Bool)

(assert (=> b!1466854 m!1353885))

(assert (=> b!1466867 m!1353867))

(assert (=> b!1466867 m!1353867))

(declare-fun m!1353887 () Bool)

(assert (=> b!1466867 m!1353887))

(declare-fun m!1353889 () Bool)

(assert (=> b!1466855 m!1353889))

(declare-fun m!1353891 () Bool)

(assert (=> b!1466855 m!1353891))

(declare-fun m!1353893 () Bool)

(assert (=> b!1466863 m!1353893))

(assert (=> b!1466863 m!1353893))

(declare-fun m!1353895 () Bool)

(assert (=> b!1466863 m!1353895))

(assert (=> b!1466863 m!1353889))

(declare-fun m!1353897 () Bool)

(assert (=> b!1466863 m!1353897))

(assert (=> b!1466851 m!1353865))

(declare-fun m!1353899 () Bool)

(assert (=> b!1466851 m!1353899))

(declare-fun m!1353901 () Bool)

(assert (=> b!1466864 m!1353901))

(assert (=> b!1466864 m!1353889))

(declare-fun m!1353903 () Bool)

(assert (=> b!1466864 m!1353903))

(declare-fun m!1353905 () Bool)

(assert (=> b!1466864 m!1353905))

(declare-fun m!1353907 () Bool)

(assert (=> b!1466864 m!1353907))

(assert (=> b!1466864 m!1353867))

(declare-fun m!1353909 () Bool)

(assert (=> b!1466864 m!1353909))

(declare-fun m!1353911 () Bool)

(assert (=> b!1466864 m!1353911))

(assert (=> b!1466864 m!1353867))

(declare-fun m!1353913 () Bool)

(assert (=> b!1466871 m!1353913))

(assert (=> b!1466871 m!1353865))

(push 1)

(assert (not b!1466870))

(assert (not b!1466867))

(assert (not b!1466868))

