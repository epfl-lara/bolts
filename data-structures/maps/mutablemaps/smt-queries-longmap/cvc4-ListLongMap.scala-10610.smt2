; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124844 () Bool)

(assert start!124844)

(declare-fun b!1447999 () Bool)

(declare-fun res!979692 () Bool)

(declare-fun e!815510 () Bool)

(assert (=> b!1447999 (=> (not res!979692) (not e!815510))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98209 0))(
  ( (array!98210 (arr!47388 (Array (_ BitVec 32) (_ BitVec 64))) (size!47939 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98209)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1447999 (= res!979692 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47939 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47939 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47939 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448000 () Bool)

(declare-fun res!979700 () Bool)

(declare-fun e!815507 () Bool)

(assert (=> b!1448000 (=> (not res!979700) (not e!815507))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11663 0))(
  ( (MissingZero!11663 (index!49043 (_ BitVec 32))) (Found!11663 (index!49044 (_ BitVec 32))) (Intermediate!11663 (undefined!12475 Bool) (index!49045 (_ BitVec 32)) (x!130715 (_ BitVec 32))) (Undefined!11663) (MissingVacant!11663 (index!49046 (_ BitVec 32))) )
))
(declare-fun lt!635339 () SeekEntryResult!11663)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98209 (_ BitVec 32)) SeekEntryResult!11663)

(assert (=> b!1448000 (= res!979700 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47388 a!2862) j!93) a!2862 mask!2687) lt!635339))))

(declare-fun b!1448001 () Bool)

(declare-fun res!979703 () Bool)

(assert (=> b!1448001 (=> (not res!979703) (not e!815510))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448001 (= res!979703 (validKeyInArray!0 (select (arr!47388 a!2862) i!1006)))))

(declare-fun b!1448002 () Bool)

(declare-fun e!815512 () Bool)

(declare-fun e!815516 () Bool)

(assert (=> b!1448002 (= e!815512 e!815516)))

(declare-fun res!979696 () Bool)

(assert (=> b!1448002 (=> res!979696 e!815516)))

(assert (=> b!1448002 (= res!979696 (or (and (= (select (arr!47388 a!2862) index!646) (select (store (arr!47388 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47388 a!2862) index!646) (select (arr!47388 a!2862) j!93))) (not (= (select (arr!47388 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!635344 () array!98209)

(declare-fun lt!635343 () (_ BitVec 64))

(declare-fun b!1448003 () Bool)

(declare-fun e!815509 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98209 (_ BitVec 32)) SeekEntryResult!11663)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98209 (_ BitVec 32)) SeekEntryResult!11663)

(assert (=> b!1448003 (= e!815509 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635343 lt!635344 mask!2687) (seekEntryOrOpen!0 lt!635343 lt!635344 mask!2687)))))

(declare-fun b!1448004 () Bool)

(declare-fun res!979698 () Bool)

(assert (=> b!1448004 (=> (not res!979698) (not e!815510))))

(declare-datatypes ((List!34069 0))(
  ( (Nil!34066) (Cons!34065 (h!35415 (_ BitVec 64)) (t!48770 List!34069)) )
))
(declare-fun arrayNoDuplicates!0 (array!98209 (_ BitVec 32) List!34069) Bool)

(assert (=> b!1448004 (= res!979698 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34066))))

(declare-fun b!1448006 () Bool)

(declare-fun e!815514 () Bool)

(assert (=> b!1448006 (= e!815516 e!815514)))

(declare-fun res!979702 () Bool)

(assert (=> b!1448006 (=> (not res!979702) (not e!815514))))

(declare-fun lt!635340 () SeekEntryResult!11663)

(assert (=> b!1448006 (= res!979702 (= lt!635340 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47388 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448007 () Bool)

(declare-fun res!979694 () Bool)

(assert (=> b!1448007 (=> (not res!979694) (not e!815510))))

(assert (=> b!1448007 (= res!979694 (and (= (size!47939 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47939 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47939 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448008 () Bool)

(declare-fun res!979699 () Bool)

(declare-fun e!815513 () Bool)

(assert (=> b!1448008 (=> (not res!979699) (not e!815513))))

(assert (=> b!1448008 (= res!979699 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!979704 () Bool)

(assert (=> start!124844 (=> (not res!979704) (not e!815510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124844 (= res!979704 (validMask!0 mask!2687))))

(assert (=> start!124844 e!815510))

(assert (=> start!124844 true))

(declare-fun array_inv!36333 (array!98209) Bool)

(assert (=> start!124844 (array_inv!36333 a!2862)))

(declare-fun b!1448005 () Bool)

(declare-fun e!815508 () Bool)

(assert (=> b!1448005 (= e!815508 true)))

(declare-fun lt!635338 () SeekEntryResult!11663)

(assert (=> b!1448005 (= lt!635338 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47388 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448009 () Bool)

(declare-fun res!979693 () Bool)

(assert (=> b!1448009 (=> (not res!979693) (not e!815510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98209 (_ BitVec 32)) Bool)

(assert (=> b!1448009 (= res!979693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448010 () Bool)

(declare-fun res!979695 () Bool)

(assert (=> b!1448010 (=> (not res!979695) (not e!815513))))

(assert (=> b!1448010 (= res!979695 e!815509)))

(declare-fun c!133667 () Bool)

(assert (=> b!1448010 (= c!133667 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448011 () Bool)

(assert (=> b!1448011 (= e!815507 e!815513)))

(declare-fun res!979706 () Bool)

(assert (=> b!1448011 (=> (not res!979706) (not e!815513))))

(declare-fun lt!635342 () SeekEntryResult!11663)

(assert (=> b!1448011 (= res!979706 (= lt!635342 (Intermediate!11663 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448011 (= lt!635342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635343 mask!2687) lt!635343 lt!635344 mask!2687))))

(assert (=> b!1448011 (= lt!635343 (select (store (arr!47388 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448012 () Bool)

(assert (=> b!1448012 (= e!815509 (= lt!635342 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635343 lt!635344 mask!2687)))))

(declare-fun b!1448013 () Bool)

(assert (=> b!1448013 (= e!815514 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448014 () Bool)

(declare-fun res!979691 () Bool)

(assert (=> b!1448014 (=> (not res!979691) (not e!815510))))

(assert (=> b!1448014 (= res!979691 (validKeyInArray!0 (select (arr!47388 a!2862) j!93)))))

(declare-fun b!1448015 () Bool)

(declare-fun e!815515 () Bool)

(assert (=> b!1448015 (= e!815515 e!815507)))

(declare-fun res!979701 () Bool)

(assert (=> b!1448015 (=> (not res!979701) (not e!815507))))

(assert (=> b!1448015 (= res!979701 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47388 a!2862) j!93) mask!2687) (select (arr!47388 a!2862) j!93) a!2862 mask!2687) lt!635339))))

(assert (=> b!1448015 (= lt!635339 (Intermediate!11663 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448016 () Bool)

(assert (=> b!1448016 (= e!815513 (not e!815508))))

(declare-fun res!979707 () Bool)

(assert (=> b!1448016 (=> res!979707 e!815508)))

(assert (=> b!1448016 (= res!979707 (or (and (= (select (arr!47388 a!2862) index!646) (select (store (arr!47388 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47388 a!2862) index!646) (select (arr!47388 a!2862) j!93))) (not (= (select (arr!47388 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47388 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1448016 e!815512))

(declare-fun res!979705 () Bool)

(assert (=> b!1448016 (=> (not res!979705) (not e!815512))))

(assert (=> b!1448016 (= res!979705 (and (= lt!635340 (Found!11663 j!93)) (or (= (select (arr!47388 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47388 a!2862) intermediateBeforeIndex!19) (select (arr!47388 a!2862) j!93)))))))

(assert (=> b!1448016 (= lt!635340 (seekEntryOrOpen!0 (select (arr!47388 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448016 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48770 0))(
  ( (Unit!48771) )
))
(declare-fun lt!635341 () Unit!48770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48770)

(assert (=> b!1448016 (= lt!635341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448017 () Bool)

(assert (=> b!1448017 (= e!815510 e!815515)))

(declare-fun res!979697 () Bool)

(assert (=> b!1448017 (=> (not res!979697) (not e!815515))))

(assert (=> b!1448017 (= res!979697 (= (select (store (arr!47388 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448017 (= lt!635344 (array!98210 (store (arr!47388 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47939 a!2862)))))

(assert (= (and start!124844 res!979704) b!1448007))

(assert (= (and b!1448007 res!979694) b!1448001))

(assert (= (and b!1448001 res!979703) b!1448014))

(assert (= (and b!1448014 res!979691) b!1448009))

(assert (= (and b!1448009 res!979693) b!1448004))

(assert (= (and b!1448004 res!979698) b!1447999))

(assert (= (and b!1447999 res!979692) b!1448017))

(assert (= (and b!1448017 res!979697) b!1448015))

(assert (= (and b!1448015 res!979701) b!1448000))

(assert (= (and b!1448000 res!979700) b!1448011))

(assert (= (and b!1448011 res!979706) b!1448010))

(assert (= (and b!1448010 c!133667) b!1448012))

(assert (= (and b!1448010 (not c!133667)) b!1448003))

(assert (= (and b!1448010 res!979695) b!1448008))

(assert (= (and b!1448008 res!979699) b!1448016))

(assert (= (and b!1448016 res!979705) b!1448002))

(assert (= (and b!1448002 (not res!979696)) b!1448006))

(assert (= (and b!1448006 res!979702) b!1448013))

(assert (= (and b!1448016 (not res!979707)) b!1448005))

(declare-fun m!1336839 () Bool)

(assert (=> b!1448000 m!1336839))

(assert (=> b!1448000 m!1336839))

(declare-fun m!1336841 () Bool)

(assert (=> b!1448000 m!1336841))

(declare-fun m!1336843 () Bool)

(assert (=> b!1448009 m!1336843))

(assert (=> b!1448014 m!1336839))

(assert (=> b!1448014 m!1336839))

(declare-fun m!1336845 () Bool)

(assert (=> b!1448014 m!1336845))

(assert (=> b!1448006 m!1336839))

(assert (=> b!1448006 m!1336839))

(declare-fun m!1336847 () Bool)

(assert (=> b!1448006 m!1336847))

(declare-fun m!1336849 () Bool)

(assert (=> b!1448003 m!1336849))

(declare-fun m!1336851 () Bool)

(assert (=> b!1448003 m!1336851))

(declare-fun m!1336853 () Bool)

(assert (=> b!1448004 m!1336853))

(declare-fun m!1336855 () Bool)

(assert (=> b!1448016 m!1336855))

(declare-fun m!1336857 () Bool)

(assert (=> b!1448016 m!1336857))

(declare-fun m!1336859 () Bool)

(assert (=> b!1448016 m!1336859))

(declare-fun m!1336861 () Bool)

(assert (=> b!1448016 m!1336861))

(declare-fun m!1336863 () Bool)

(assert (=> b!1448016 m!1336863))

(assert (=> b!1448016 m!1336839))

(declare-fun m!1336865 () Bool)

(assert (=> b!1448016 m!1336865))

(declare-fun m!1336867 () Bool)

(assert (=> b!1448016 m!1336867))

(assert (=> b!1448016 m!1336839))

(declare-fun m!1336869 () Bool)

(assert (=> b!1448001 m!1336869))

(assert (=> b!1448001 m!1336869))

(declare-fun m!1336871 () Bool)

(assert (=> b!1448001 m!1336871))

(declare-fun m!1336873 () Bool)

(assert (=> b!1448012 m!1336873))

(assert (=> b!1448017 m!1336857))

(declare-fun m!1336875 () Bool)

(assert (=> b!1448017 m!1336875))

(assert (=> b!1448005 m!1336839))

(assert (=> b!1448005 m!1336839))

(declare-fun m!1336877 () Bool)

(assert (=> b!1448005 m!1336877))

(declare-fun m!1336879 () Bool)

(assert (=> b!1448011 m!1336879))

(assert (=> b!1448011 m!1336879))

(declare-fun m!1336881 () Bool)

(assert (=> b!1448011 m!1336881))

(assert (=> b!1448011 m!1336857))

(declare-fun m!1336883 () Bool)

(assert (=> b!1448011 m!1336883))

(declare-fun m!1336885 () Bool)

(assert (=> start!124844 m!1336885))

(declare-fun m!1336887 () Bool)

(assert (=> start!124844 m!1336887))

(assert (=> b!1448002 m!1336863))

(assert (=> b!1448002 m!1336857))

(assert (=> b!1448002 m!1336861))

(assert (=> b!1448002 m!1336839))

(assert (=> b!1448015 m!1336839))

(assert (=> b!1448015 m!1336839))

(declare-fun m!1336889 () Bool)

(assert (=> b!1448015 m!1336889))

(assert (=> b!1448015 m!1336889))

(assert (=> b!1448015 m!1336839))

(declare-fun m!1336891 () Bool)

(assert (=> b!1448015 m!1336891))

(push 1)

