; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124806 () Bool)

(assert start!124806)

(declare-datatypes ((array!98171 0))(
  ( (array!98172 (arr!47369 (Array (_ BitVec 32) (_ BitVec 64))) (size!47920 (_ BitVec 32))) )
))
(declare-fun lt!634944 () array!98171)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634940 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1446916 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!814946 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11644 0))(
  ( (MissingZero!11644 (index!48967 (_ BitVec 32))) (Found!11644 (index!48968 (_ BitVec 32))) (Intermediate!11644 (undefined!12456 Bool) (index!48969 (_ BitVec 32)) (x!130648 (_ BitVec 32))) (Undefined!11644) (MissingVacant!11644 (index!48970 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98171 (_ BitVec 32)) SeekEntryResult!11644)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98171 (_ BitVec 32)) SeekEntryResult!11644)

(assert (=> b!1446916 (= e!814946 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634940 lt!634944 mask!2687) (seekEntryOrOpen!0 lt!634940 lt!634944 mask!2687)))))

(declare-fun b!1446917 () Bool)

(declare-fun e!814939 () Bool)

(declare-fun e!814937 () Bool)

(assert (=> b!1446917 (= e!814939 (not e!814937))))

(declare-fun res!978723 () Bool)

(assert (=> b!1446917 (=> res!978723 e!814937)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98171)

(assert (=> b!1446917 (= res!978723 (or (and (= (select (arr!47369 a!2862) index!646) (select (store (arr!47369 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47369 a!2862) index!646) (select (arr!47369 a!2862) j!93))) (not (= (select (arr!47369 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47369 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814942 () Bool)

(assert (=> b!1446917 e!814942))

(declare-fun res!978722 () Bool)

(assert (=> b!1446917 (=> (not res!978722) (not e!814942))))

(declare-fun lt!634939 () SeekEntryResult!11644)

(assert (=> b!1446917 (= res!978722 (and (= lt!634939 (Found!11644 j!93)) (or (= (select (arr!47369 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47369 a!2862) intermediateBeforeIndex!19) (select (arr!47369 a!2862) j!93)))))))

(assert (=> b!1446917 (= lt!634939 (seekEntryOrOpen!0 (select (arr!47369 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98171 (_ BitVec 32)) Bool)

(assert (=> b!1446917 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48732 0))(
  ( (Unit!48733) )
))
(declare-fun lt!634942 () Unit!48732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48732)

(assert (=> b!1446917 (= lt!634942 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446918 () Bool)

(declare-fun e!814945 () Bool)

(declare-fun e!814941 () Bool)

(assert (=> b!1446918 (= e!814945 e!814941)))

(declare-fun res!978725 () Bool)

(assert (=> b!1446918 (=> (not res!978725) (not e!814941))))

(declare-fun lt!634943 () SeekEntryResult!11644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98171 (_ BitVec 32)) SeekEntryResult!11644)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446918 (= res!978725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47369 a!2862) j!93) mask!2687) (select (arr!47369 a!2862) j!93) a!2862 mask!2687) lt!634943))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446918 (= lt!634943 (Intermediate!11644 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446919 () Bool)

(declare-fun res!978732 () Bool)

(declare-fun e!814943 () Bool)

(assert (=> b!1446919 (=> (not res!978732) (not e!814943))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446919 (= res!978732 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47920 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47920 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47920 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!978729 () Bool)

(assert (=> start!124806 (=> (not res!978729) (not e!814943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124806 (= res!978729 (validMask!0 mask!2687))))

(assert (=> start!124806 e!814943))

(assert (=> start!124806 true))

(declare-fun array_inv!36314 (array!98171) Bool)

(assert (=> start!124806 (array_inv!36314 a!2862)))

(declare-fun b!1446920 () Bool)

(declare-fun res!978737 () Bool)

(assert (=> b!1446920 (=> (not res!978737) (not e!814939))))

(assert (=> b!1446920 (= res!978737 e!814946)))

(declare-fun c!133610 () Bool)

(assert (=> b!1446920 (= c!133610 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446921 () Bool)

(declare-fun lt!634941 () SeekEntryResult!11644)

(assert (=> b!1446921 (= e!814946 (= lt!634941 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634940 lt!634944 mask!2687)))))

(declare-fun b!1446922 () Bool)

(declare-fun res!978724 () Bool)

(assert (=> b!1446922 (=> (not res!978724) (not e!814943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446922 (= res!978724 (validKeyInArray!0 (select (arr!47369 a!2862) j!93)))))

(declare-fun b!1446923 () Bool)

(declare-fun e!814944 () Bool)

(declare-fun e!814938 () Bool)

(assert (=> b!1446923 (= e!814944 e!814938)))

(declare-fun res!978734 () Bool)

(assert (=> b!1446923 (=> (not res!978734) (not e!814938))))

(assert (=> b!1446923 (= res!978734 (= lt!634939 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47369 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446924 () Bool)

(assert (=> b!1446924 (= e!814942 e!814944)))

(declare-fun res!978738 () Bool)

(assert (=> b!1446924 (=> res!978738 e!814944)))

(assert (=> b!1446924 (= res!978738 (or (and (= (select (arr!47369 a!2862) index!646) (select (store (arr!47369 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47369 a!2862) index!646) (select (arr!47369 a!2862) j!93))) (not (= (select (arr!47369 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446925 () Bool)

(assert (=> b!1446925 (= e!814938 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446926 () Bool)

(declare-fun res!978735 () Bool)

(assert (=> b!1446926 (=> (not res!978735) (not e!814943))))

(assert (=> b!1446926 (= res!978735 (and (= (size!47920 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47920 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47920 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446927 () Bool)

(assert (=> b!1446927 (= e!814943 e!814945)))

(declare-fun res!978733 () Bool)

(assert (=> b!1446927 (=> (not res!978733) (not e!814945))))

(assert (=> b!1446927 (= res!978733 (= (select (store (arr!47369 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446927 (= lt!634944 (array!98172 (store (arr!47369 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47920 a!2862)))))

(declare-fun b!1446928 () Bool)

(assert (=> b!1446928 (= e!814941 e!814939)))

(declare-fun res!978727 () Bool)

(assert (=> b!1446928 (=> (not res!978727) (not e!814939))))

(assert (=> b!1446928 (= res!978727 (= lt!634941 (Intermediate!11644 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446928 (= lt!634941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634940 mask!2687) lt!634940 lt!634944 mask!2687))))

(assert (=> b!1446928 (= lt!634940 (select (store (arr!47369 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446929 () Bool)

(declare-fun res!978730 () Bool)

(assert (=> b!1446929 (=> (not res!978730) (not e!814943))))

(assert (=> b!1446929 (= res!978730 (validKeyInArray!0 (select (arr!47369 a!2862) i!1006)))))

(declare-fun b!1446930 () Bool)

(declare-fun res!978726 () Bool)

(assert (=> b!1446930 (=> (not res!978726) (not e!814941))))

(assert (=> b!1446930 (= res!978726 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47369 a!2862) j!93) a!2862 mask!2687) lt!634943))))

(declare-fun b!1446931 () Bool)

(declare-fun res!978731 () Bool)

(assert (=> b!1446931 (=> (not res!978731) (not e!814943))))

(assert (=> b!1446931 (= res!978731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446932 () Bool)

(declare-fun res!978736 () Bool)

(assert (=> b!1446932 (=> (not res!978736) (not e!814939))))

(assert (=> b!1446932 (= res!978736 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446933 () Bool)

(declare-fun res!978728 () Bool)

(assert (=> b!1446933 (=> (not res!978728) (not e!814943))))

(declare-datatypes ((List!34050 0))(
  ( (Nil!34047) (Cons!34046 (h!35396 (_ BitVec 64)) (t!48751 List!34050)) )
))
(declare-fun arrayNoDuplicates!0 (array!98171 (_ BitVec 32) List!34050) Bool)

(assert (=> b!1446933 (= res!978728 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34047))))

(declare-fun b!1446934 () Bool)

(assert (=> b!1446934 (= e!814937 true)))

(declare-fun lt!634945 () SeekEntryResult!11644)

(assert (=> b!1446934 (= lt!634945 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47369 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and start!124806 res!978729) b!1446926))

(assert (= (and b!1446926 res!978735) b!1446929))

(assert (= (and b!1446929 res!978730) b!1446922))

(assert (= (and b!1446922 res!978724) b!1446931))

(assert (= (and b!1446931 res!978731) b!1446933))

(assert (= (and b!1446933 res!978728) b!1446919))

(assert (= (and b!1446919 res!978732) b!1446927))

(assert (= (and b!1446927 res!978733) b!1446918))

(assert (= (and b!1446918 res!978725) b!1446930))

(assert (= (and b!1446930 res!978726) b!1446928))

(assert (= (and b!1446928 res!978727) b!1446920))

(assert (= (and b!1446920 c!133610) b!1446921))

(assert (= (and b!1446920 (not c!133610)) b!1446916))

(assert (= (and b!1446920 res!978737) b!1446932))

(assert (= (and b!1446932 res!978736) b!1446917))

(assert (= (and b!1446917 res!978722) b!1446924))

(assert (= (and b!1446924 (not res!978738)) b!1446923))

(assert (= (and b!1446923 res!978734) b!1446925))

(assert (= (and b!1446917 (not res!978723)) b!1446934))

(declare-fun m!1335813 () Bool)

(assert (=> b!1446928 m!1335813))

(assert (=> b!1446928 m!1335813))

(declare-fun m!1335815 () Bool)

(assert (=> b!1446928 m!1335815))

(declare-fun m!1335817 () Bool)

(assert (=> b!1446928 m!1335817))

(declare-fun m!1335819 () Bool)

(assert (=> b!1446928 m!1335819))

(declare-fun m!1335821 () Bool)

(assert (=> b!1446933 m!1335821))

(declare-fun m!1335823 () Bool)

(assert (=> b!1446923 m!1335823))

(assert (=> b!1446923 m!1335823))

(declare-fun m!1335825 () Bool)

(assert (=> b!1446923 m!1335825))

(assert (=> b!1446930 m!1335823))

(assert (=> b!1446930 m!1335823))

(declare-fun m!1335827 () Bool)

(assert (=> b!1446930 m!1335827))

(declare-fun m!1335829 () Bool)

(assert (=> b!1446931 m!1335829))

(declare-fun m!1335831 () Bool)

(assert (=> b!1446921 m!1335831))

(declare-fun m!1335833 () Bool)

(assert (=> b!1446924 m!1335833))

(assert (=> b!1446924 m!1335817))

(declare-fun m!1335835 () Bool)

(assert (=> b!1446924 m!1335835))

(assert (=> b!1446924 m!1335823))

(assert (=> b!1446934 m!1335823))

(assert (=> b!1446934 m!1335823))

(declare-fun m!1335837 () Bool)

(assert (=> b!1446934 m!1335837))

(assert (=> b!1446927 m!1335817))

(declare-fun m!1335839 () Bool)

(assert (=> b!1446927 m!1335839))

(declare-fun m!1335841 () Bool)

(assert (=> b!1446929 m!1335841))

(assert (=> b!1446929 m!1335841))

(declare-fun m!1335843 () Bool)

(assert (=> b!1446929 m!1335843))

(declare-fun m!1335845 () Bool)

(assert (=> b!1446916 m!1335845))

(declare-fun m!1335847 () Bool)

(assert (=> b!1446916 m!1335847))

(declare-fun m!1335849 () Bool)

(assert (=> b!1446917 m!1335849))

(assert (=> b!1446917 m!1335817))

(declare-fun m!1335851 () Bool)

(assert (=> b!1446917 m!1335851))

(assert (=> b!1446917 m!1335835))

(assert (=> b!1446917 m!1335833))

(assert (=> b!1446917 m!1335823))

(declare-fun m!1335853 () Bool)

(assert (=> b!1446917 m!1335853))

(declare-fun m!1335855 () Bool)

(assert (=> b!1446917 m!1335855))

(assert (=> b!1446917 m!1335823))

(assert (=> b!1446922 m!1335823))

(assert (=> b!1446922 m!1335823))

(declare-fun m!1335857 () Bool)

(assert (=> b!1446922 m!1335857))

(declare-fun m!1335859 () Bool)

(assert (=> start!124806 m!1335859))

(declare-fun m!1335861 () Bool)

(assert (=> start!124806 m!1335861))

(assert (=> b!1446918 m!1335823))

(assert (=> b!1446918 m!1335823))

(declare-fun m!1335863 () Bool)

(assert (=> b!1446918 m!1335863))

(assert (=> b!1446918 m!1335863))

(assert (=> b!1446918 m!1335823))

(declare-fun m!1335865 () Bool)

(assert (=> b!1446918 m!1335865))

(check-sat (not b!1446929) (not b!1446930) (not start!124806) (not b!1446918) (not b!1446916) (not b!1446923) (not b!1446931) (not b!1446933) (not b!1446921) (not b!1446928) (not b!1446917) (not b!1446922) (not b!1446934))
(check-sat)
