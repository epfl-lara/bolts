; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123840 () Bool)

(assert start!123840)

(declare-fun b!1434760 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97559 0))(
  ( (array!97560 (arr!47078 (Array (_ BitVec 32) (_ BitVec 64))) (size!47629 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97559)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun e!809797 () Bool)

(declare-datatypes ((SeekEntryResult!11379 0))(
  ( (MissingZero!11379 (index!47907 (_ BitVec 32))) (Found!11379 (index!47908 (_ BitVec 32))) (Intermediate!11379 (undefined!12191 Bool) (index!47909 (_ BitVec 32)) (x!129571 (_ BitVec 32))) (Undefined!11379) (MissingVacant!11379 (index!47910 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97559 (_ BitVec 32)) SeekEntryResult!11379)

(assert (=> b!1434760 (= e!809797 (= (seekEntryOrOpen!0 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) (Found!11379 j!81)))))

(declare-fun b!1434761 () Bool)

(declare-fun res!968125 () Bool)

(declare-fun e!809794 () Bool)

(assert (=> b!1434761 (=> (not res!968125) (not e!809794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97559 (_ BitVec 32)) Bool)

(assert (=> b!1434761 (= res!968125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434762 () Bool)

(declare-fun res!968120 () Bool)

(assert (=> b!1434762 (=> (not res!968120) (not e!809794))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1434762 (= res!968120 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47629 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47629 a!2831))))))

(declare-fun b!1434763 () Bool)

(declare-fun res!968124 () Bool)

(declare-fun e!809798 () Bool)

(assert (=> b!1434763 (=> (not res!968124) (not e!809798))))

(declare-fun lt!631575 () (_ BitVec 64))

(declare-fun lt!631578 () SeekEntryResult!11379)

(declare-fun lt!631576 () array!97559)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97559 (_ BitVec 32)) SeekEntryResult!11379)

(assert (=> b!1434763 (= res!968124 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631575 lt!631576 mask!2608) lt!631578))))

(declare-fun res!968118 () Bool)

(assert (=> start!123840 (=> (not res!968118) (not e!809794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123840 (= res!968118 (validMask!0 mask!2608))))

(assert (=> start!123840 e!809794))

(assert (=> start!123840 true))

(declare-fun array_inv!36023 (array!97559) Bool)

(assert (=> start!123840 (array_inv!36023 a!2831)))

(declare-fun b!1434764 () Bool)

(declare-fun res!968113 () Bool)

(declare-fun e!809795 () Bool)

(assert (=> b!1434764 (=> res!968113 e!809795)))

(declare-fun lt!631577 () SeekEntryResult!11379)

(declare-fun lt!631579 () (_ BitVec 32))

(assert (=> b!1434764 (= res!968113 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631579 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631577)))))

(declare-fun b!1434765 () Bool)

(declare-fun res!968126 () Bool)

(assert (=> b!1434765 (=> (not res!968126) (not e!809794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434765 (= res!968126 (validKeyInArray!0 (select (arr!47078 a!2831) j!81)))))

(declare-fun b!1434766 () Bool)

(declare-fun res!968127 () Bool)

(assert (=> b!1434766 (=> (not res!968127) (not e!809798))))

(assert (=> b!1434766 (= res!968127 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631577))))

(declare-fun b!1434767 () Bool)

(declare-fun e!809792 () Bool)

(assert (=> b!1434767 (= e!809792 e!809795)))

(declare-fun res!968114 () Bool)

(assert (=> b!1434767 (=> res!968114 e!809795)))

(assert (=> b!1434767 (= res!968114 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631579 #b00000000000000000000000000000000) (bvsge lt!631579 (size!47629 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434767 (= lt!631579 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434768 () Bool)

(declare-fun res!968122 () Bool)

(assert (=> b!1434768 (=> (not res!968122) (not e!809794))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434768 (= res!968122 (and (= (size!47629 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47629 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47629 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434769 () Bool)

(declare-fun res!968112 () Bool)

(assert (=> b!1434769 (=> (not res!968112) (not e!809794))))

(assert (=> b!1434769 (= res!968112 (validKeyInArray!0 (select (arr!47078 a!2831) i!982)))))

(declare-fun b!1434770 () Bool)

(declare-fun e!809796 () Bool)

(assert (=> b!1434770 (= e!809796 e!809798)))

(declare-fun res!968121 () Bool)

(assert (=> b!1434770 (=> (not res!968121) (not e!809798))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434770 (= res!968121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631575 mask!2608) lt!631575 lt!631576 mask!2608) lt!631578))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434770 (= lt!631578 (Intermediate!11379 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434770 (= lt!631575 (select (store (arr!47078 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434770 (= lt!631576 (array!97560 (store (arr!47078 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47629 a!2831)))))

(declare-fun b!1434771 () Bool)

(declare-fun res!968119 () Bool)

(assert (=> b!1434771 (=> (not res!968119) (not e!809794))))

(declare-datatypes ((List!33768 0))(
  ( (Nil!33765) (Cons!33764 (h!35096 (_ BitVec 64)) (t!48469 List!33768)) )
))
(declare-fun arrayNoDuplicates!0 (array!97559 (_ BitVec 32) List!33768) Bool)

(assert (=> b!1434771 (= res!968119 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33765))))

(declare-fun b!1434772 () Bool)

(assert (=> b!1434772 (= e!809794 e!809796)))

(declare-fun res!968117 () Bool)

(assert (=> b!1434772 (=> (not res!968117) (not e!809796))))

(assert (=> b!1434772 (= res!968117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631577))))

(assert (=> b!1434772 (= lt!631577 (Intermediate!11379 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434773 () Bool)

(assert (=> b!1434773 (= e!809795 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631579 lt!631575 lt!631576 mask!2608) lt!631578))))

(declare-fun b!1434774 () Bool)

(assert (=> b!1434774 (= e!809798 (not e!809792))))

(declare-fun res!968123 () Bool)

(assert (=> b!1434774 (=> res!968123 e!809792)))

(assert (=> b!1434774 (= res!968123 (or (= (select (arr!47078 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47078 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47078 a!2831) index!585) (select (arr!47078 a!2831) j!81)) (= (select (store (arr!47078 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434774 e!809797))

(declare-fun res!968115 () Bool)

(assert (=> b!1434774 (=> (not res!968115) (not e!809797))))

(assert (=> b!1434774 (= res!968115 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48452 0))(
  ( (Unit!48453) )
))
(declare-fun lt!631574 () Unit!48452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48452)

(assert (=> b!1434774 (= lt!631574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434775 () Bool)

(declare-fun res!968116 () Bool)

(assert (=> b!1434775 (=> (not res!968116) (not e!809798))))

(assert (=> b!1434775 (= res!968116 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123840 res!968118) b!1434768))

(assert (= (and b!1434768 res!968122) b!1434769))

(assert (= (and b!1434769 res!968112) b!1434765))

(assert (= (and b!1434765 res!968126) b!1434761))

(assert (= (and b!1434761 res!968125) b!1434771))

(assert (= (and b!1434771 res!968119) b!1434762))

(assert (= (and b!1434762 res!968120) b!1434772))

(assert (= (and b!1434772 res!968117) b!1434770))

(assert (= (and b!1434770 res!968121) b!1434766))

(assert (= (and b!1434766 res!968127) b!1434763))

(assert (= (and b!1434763 res!968124) b!1434775))

(assert (= (and b!1434775 res!968116) b!1434774))

(assert (= (and b!1434774 res!968115) b!1434760))

(assert (= (and b!1434774 (not res!968123)) b!1434767))

(assert (= (and b!1434767 (not res!968114)) b!1434764))

(assert (= (and b!1434764 (not res!968113)) b!1434773))

(declare-fun m!1324313 () Bool)

(assert (=> b!1434767 m!1324313))

(declare-fun m!1324315 () Bool)

(assert (=> b!1434769 m!1324315))

(assert (=> b!1434769 m!1324315))

(declare-fun m!1324317 () Bool)

(assert (=> b!1434769 m!1324317))

(declare-fun m!1324319 () Bool)

(assert (=> b!1434763 m!1324319))

(declare-fun m!1324321 () Bool)

(assert (=> b!1434773 m!1324321))

(declare-fun m!1324323 () Bool)

(assert (=> b!1434764 m!1324323))

(assert (=> b!1434764 m!1324323))

(declare-fun m!1324325 () Bool)

(assert (=> b!1434764 m!1324325))

(assert (=> b!1434772 m!1324323))

(assert (=> b!1434772 m!1324323))

(declare-fun m!1324327 () Bool)

(assert (=> b!1434772 m!1324327))

(assert (=> b!1434772 m!1324327))

(assert (=> b!1434772 m!1324323))

(declare-fun m!1324329 () Bool)

(assert (=> b!1434772 m!1324329))

(declare-fun m!1324331 () Bool)

(assert (=> b!1434774 m!1324331))

(declare-fun m!1324333 () Bool)

(assert (=> b!1434774 m!1324333))

(declare-fun m!1324335 () Bool)

(assert (=> b!1434774 m!1324335))

(declare-fun m!1324337 () Bool)

(assert (=> b!1434774 m!1324337))

(assert (=> b!1434774 m!1324323))

(declare-fun m!1324339 () Bool)

(assert (=> b!1434774 m!1324339))

(declare-fun m!1324341 () Bool)

(assert (=> start!123840 m!1324341))

(declare-fun m!1324343 () Bool)

(assert (=> start!123840 m!1324343))

(assert (=> b!1434765 m!1324323))

(assert (=> b!1434765 m!1324323))

(declare-fun m!1324345 () Bool)

(assert (=> b!1434765 m!1324345))

(assert (=> b!1434766 m!1324323))

(assert (=> b!1434766 m!1324323))

(declare-fun m!1324347 () Bool)

(assert (=> b!1434766 m!1324347))

(declare-fun m!1324349 () Bool)

(assert (=> b!1434761 m!1324349))

(assert (=> b!1434760 m!1324323))

(assert (=> b!1434760 m!1324323))

(declare-fun m!1324351 () Bool)

(assert (=> b!1434760 m!1324351))

(declare-fun m!1324353 () Bool)

(assert (=> b!1434770 m!1324353))

(assert (=> b!1434770 m!1324353))

(declare-fun m!1324355 () Bool)

(assert (=> b!1434770 m!1324355))

(assert (=> b!1434770 m!1324331))

(declare-fun m!1324357 () Bool)

(assert (=> b!1434770 m!1324357))

(declare-fun m!1324359 () Bool)

(assert (=> b!1434771 m!1324359))

(check-sat (not b!1434767) (not b!1434764) (not b!1434760) (not b!1434765) (not b!1434774) (not b!1434761) (not b!1434770) (not b!1434769) (not b!1434772) (not b!1434771) (not b!1434766) (not b!1434763) (not start!123840) (not b!1434773))
(check-sat)
(get-model)

(declare-fun b!1434842 () Bool)

(declare-fun lt!631603 () SeekEntryResult!11379)

(assert (=> b!1434842 (and (bvsge (index!47909 lt!631603) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631603) (size!47629 lt!631576)))))

(declare-fun res!968183 () Bool)

(assert (=> b!1434842 (= res!968183 (= (select (arr!47078 lt!631576) (index!47909 lt!631603)) lt!631575))))

(declare-fun e!809832 () Bool)

(assert (=> b!1434842 (=> res!968183 e!809832)))

(declare-fun e!809831 () Bool)

(assert (=> b!1434842 (= e!809831 e!809832)))

(declare-fun b!1434843 () Bool)

(declare-fun e!809830 () Bool)

(assert (=> b!1434843 (= e!809830 e!809831)))

(declare-fun res!968184 () Bool)

(get-info :version)

(assert (=> b!1434843 (= res!968184 (and ((_ is Intermediate!11379) lt!631603) (not (undefined!12191 lt!631603)) (bvslt (x!129571 lt!631603) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631603) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631603) x!605)))))

(assert (=> b!1434843 (=> (not res!968184) (not e!809831))))

(declare-fun b!1434844 () Bool)

(declare-fun e!809834 () SeekEntryResult!11379)

(assert (=> b!1434844 (= e!809834 (Intermediate!11379 false index!585 x!605))))

(declare-fun b!1434845 () Bool)

(assert (=> b!1434845 (and (bvsge (index!47909 lt!631603) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631603) (size!47629 lt!631576)))))

(declare-fun res!968182 () Bool)

(assert (=> b!1434845 (= res!968182 (= (select (arr!47078 lt!631576) (index!47909 lt!631603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434845 (=> res!968182 e!809832)))

(declare-fun b!1434846 () Bool)

(declare-fun e!809833 () SeekEntryResult!11379)

(assert (=> b!1434846 (= e!809833 e!809834)))

(declare-fun c!132834 () Bool)

(declare-fun lt!631602 () (_ BitVec 64))

(assert (=> b!1434846 (= c!132834 (or (= lt!631602 lt!631575) (= (bvadd lt!631602 lt!631602) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154223 () Bool)

(assert (=> d!154223 e!809830))

(declare-fun c!132836 () Bool)

(assert (=> d!154223 (= c!132836 (and ((_ is Intermediate!11379) lt!631603) (undefined!12191 lt!631603)))))

(assert (=> d!154223 (= lt!631603 e!809833)))

(declare-fun c!132835 () Bool)

(assert (=> d!154223 (= c!132835 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154223 (= lt!631602 (select (arr!47078 lt!631576) index!585))))

(assert (=> d!154223 (validMask!0 mask!2608)))

(assert (=> d!154223 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631575 lt!631576 mask!2608) lt!631603)))

(declare-fun b!1434847 () Bool)

(assert (=> b!1434847 (= e!809830 (bvsge (x!129571 lt!631603) #b01111111111111111111111111111110))))

(declare-fun b!1434848 () Bool)

(assert (=> b!1434848 (= e!809834 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631575 lt!631576 mask!2608))))

(declare-fun b!1434849 () Bool)

(assert (=> b!1434849 (= e!809833 (Intermediate!11379 true index!585 x!605))))

(declare-fun b!1434850 () Bool)

(assert (=> b!1434850 (and (bvsge (index!47909 lt!631603) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631603) (size!47629 lt!631576)))))

(assert (=> b!1434850 (= e!809832 (= (select (arr!47078 lt!631576) (index!47909 lt!631603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154223 c!132835) b!1434849))

(assert (= (and d!154223 (not c!132835)) b!1434846))

(assert (= (and b!1434846 c!132834) b!1434844))

(assert (= (and b!1434846 (not c!132834)) b!1434848))

(assert (= (and d!154223 c!132836) b!1434847))

(assert (= (and d!154223 (not c!132836)) b!1434843))

(assert (= (and b!1434843 res!968184) b!1434842))

(assert (= (and b!1434842 (not res!968183)) b!1434845))

(assert (= (and b!1434845 (not res!968182)) b!1434850))

(declare-fun m!1324409 () Bool)

(assert (=> b!1434845 m!1324409))

(declare-fun m!1324411 () Bool)

(assert (=> d!154223 m!1324411))

(assert (=> d!154223 m!1324341))

(assert (=> b!1434850 m!1324409))

(assert (=> b!1434842 m!1324409))

(assert (=> b!1434848 m!1324313))

(assert (=> b!1434848 m!1324313))

(declare-fun m!1324413 () Bool)

(assert (=> b!1434848 m!1324413))

(assert (=> b!1434763 d!154223))

(declare-fun b!1434859 () Bool)

(declare-fun e!809841 () Bool)

(declare-fun call!67542 () Bool)

(assert (=> b!1434859 (= e!809841 call!67542)))

(declare-fun b!1434860 () Bool)

(declare-fun e!809843 () Bool)

(assert (=> b!1434860 (= e!809843 call!67542)))

(declare-fun b!1434861 () Bool)

(assert (=> b!1434861 (= e!809841 e!809843)))

(declare-fun lt!631612 () (_ BitVec 64))

(assert (=> b!1434861 (= lt!631612 (select (arr!47078 a!2831) j!81))))

(declare-fun lt!631611 () Unit!48452)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97559 (_ BitVec 64) (_ BitVec 32)) Unit!48452)

(assert (=> b!1434861 (= lt!631611 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631612 j!81))))

(declare-fun arrayContainsKey!0 (array!97559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1434861 (arrayContainsKey!0 a!2831 lt!631612 #b00000000000000000000000000000000)))

(declare-fun lt!631610 () Unit!48452)

(assert (=> b!1434861 (= lt!631610 lt!631611)))

(declare-fun res!968190 () Bool)

(assert (=> b!1434861 (= res!968190 (= (seekEntryOrOpen!0 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) (Found!11379 j!81)))))

(assert (=> b!1434861 (=> (not res!968190) (not e!809843))))

(declare-fun d!154225 () Bool)

(declare-fun res!968189 () Bool)

(declare-fun e!809842 () Bool)

(assert (=> d!154225 (=> res!968189 e!809842)))

(assert (=> d!154225 (= res!968189 (bvsge j!81 (size!47629 a!2831)))))

(assert (=> d!154225 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809842)))

(declare-fun bm!67539 () Bool)

(assert (=> bm!67539 (= call!67542 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434862 () Bool)

(assert (=> b!1434862 (= e!809842 e!809841)))

(declare-fun c!132839 () Bool)

(assert (=> b!1434862 (= c!132839 (validKeyInArray!0 (select (arr!47078 a!2831) j!81)))))

(assert (= (and d!154225 (not res!968189)) b!1434862))

(assert (= (and b!1434862 c!132839) b!1434861))

(assert (= (and b!1434862 (not c!132839)) b!1434859))

(assert (= (and b!1434861 res!968190) b!1434860))

(assert (= (or b!1434860 b!1434859) bm!67539))

(assert (=> b!1434861 m!1324323))

(declare-fun m!1324415 () Bool)

(assert (=> b!1434861 m!1324415))

(declare-fun m!1324417 () Bool)

(assert (=> b!1434861 m!1324417))

(assert (=> b!1434861 m!1324323))

(assert (=> b!1434861 m!1324351))

(declare-fun m!1324419 () Bool)

(assert (=> bm!67539 m!1324419))

(assert (=> b!1434862 m!1324323))

(assert (=> b!1434862 m!1324323))

(assert (=> b!1434862 m!1324345))

(assert (=> b!1434774 d!154225))

(declare-fun d!154227 () Bool)

(assert (=> d!154227 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631615 () Unit!48452)

(declare-fun choose!38 (array!97559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48452)

(assert (=> d!154227 (= lt!631615 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154227 (validMask!0 mask!2608)))

(assert (=> d!154227 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631615)))

(declare-fun bs!41765 () Bool)

(assert (= bs!41765 d!154227))

(assert (=> bs!41765 m!1324337))

(declare-fun m!1324421 () Bool)

(assert (=> bs!41765 m!1324421))

(assert (=> bs!41765 m!1324341))

(assert (=> b!1434774 d!154227))

(declare-fun b!1434863 () Bool)

(declare-fun lt!631617 () SeekEntryResult!11379)

(assert (=> b!1434863 (and (bvsge (index!47909 lt!631617) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631617) (size!47629 a!2831)))))

(declare-fun res!968192 () Bool)

(assert (=> b!1434863 (= res!968192 (= (select (arr!47078 a!2831) (index!47909 lt!631617)) (select (arr!47078 a!2831) j!81)))))

(declare-fun e!809846 () Bool)

(assert (=> b!1434863 (=> res!968192 e!809846)))

(declare-fun e!809845 () Bool)

(assert (=> b!1434863 (= e!809845 e!809846)))

(declare-fun b!1434864 () Bool)

(declare-fun e!809844 () Bool)

(assert (=> b!1434864 (= e!809844 e!809845)))

(declare-fun res!968193 () Bool)

(assert (=> b!1434864 (= res!968193 (and ((_ is Intermediate!11379) lt!631617) (not (undefined!12191 lt!631617)) (bvslt (x!129571 lt!631617) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631617) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631617) #b00000000000000000000000000000000)))))

(assert (=> b!1434864 (=> (not res!968193) (not e!809845))))

(declare-fun b!1434865 () Bool)

(declare-fun e!809848 () SeekEntryResult!11379)

(assert (=> b!1434865 (= e!809848 (Intermediate!11379 false (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434866 () Bool)

(assert (=> b!1434866 (and (bvsge (index!47909 lt!631617) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631617) (size!47629 a!2831)))))

(declare-fun res!968191 () Bool)

(assert (=> b!1434866 (= res!968191 (= (select (arr!47078 a!2831) (index!47909 lt!631617)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434866 (=> res!968191 e!809846)))

(declare-fun b!1434867 () Bool)

(declare-fun e!809847 () SeekEntryResult!11379)

(assert (=> b!1434867 (= e!809847 e!809848)))

(declare-fun c!132840 () Bool)

(declare-fun lt!631616 () (_ BitVec 64))

(assert (=> b!1434867 (= c!132840 (or (= lt!631616 (select (arr!47078 a!2831) j!81)) (= (bvadd lt!631616 lt!631616) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154229 () Bool)

(assert (=> d!154229 e!809844))

(declare-fun c!132842 () Bool)

(assert (=> d!154229 (= c!132842 (and ((_ is Intermediate!11379) lt!631617) (undefined!12191 lt!631617)))))

(assert (=> d!154229 (= lt!631617 e!809847)))

(declare-fun c!132841 () Bool)

(assert (=> d!154229 (= c!132841 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154229 (= lt!631616 (select (arr!47078 a!2831) (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608)))))

(assert (=> d!154229 (validMask!0 mask!2608)))

(assert (=> d!154229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631617)))

(declare-fun b!1434868 () Bool)

(assert (=> b!1434868 (= e!809844 (bvsge (x!129571 lt!631617) #b01111111111111111111111111111110))))

(declare-fun b!1434869 () Bool)

(assert (=> b!1434869 (= e!809848 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434870 () Bool)

(assert (=> b!1434870 (= e!809847 (Intermediate!11379 true (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434871 () Bool)

(assert (=> b!1434871 (and (bvsge (index!47909 lt!631617) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631617) (size!47629 a!2831)))))

(assert (=> b!1434871 (= e!809846 (= (select (arr!47078 a!2831) (index!47909 lt!631617)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154229 c!132841) b!1434870))

(assert (= (and d!154229 (not c!132841)) b!1434867))

(assert (= (and b!1434867 c!132840) b!1434865))

(assert (= (and b!1434867 (not c!132840)) b!1434869))

(assert (= (and d!154229 c!132842) b!1434868))

(assert (= (and d!154229 (not c!132842)) b!1434864))

(assert (= (and b!1434864 res!968193) b!1434863))

(assert (= (and b!1434863 (not res!968192)) b!1434866))

(assert (= (and b!1434866 (not res!968191)) b!1434871))

(declare-fun m!1324423 () Bool)

(assert (=> b!1434866 m!1324423))

(assert (=> d!154229 m!1324327))

(declare-fun m!1324425 () Bool)

(assert (=> d!154229 m!1324425))

(assert (=> d!154229 m!1324341))

(assert (=> b!1434871 m!1324423))

(assert (=> b!1434863 m!1324423))

(assert (=> b!1434869 m!1324327))

(declare-fun m!1324427 () Bool)

(assert (=> b!1434869 m!1324427))

(assert (=> b!1434869 m!1324427))

(assert (=> b!1434869 m!1324323))

(declare-fun m!1324429 () Bool)

(assert (=> b!1434869 m!1324429))

(assert (=> b!1434772 d!154229))

(declare-fun d!154233 () Bool)

(declare-fun lt!631623 () (_ BitVec 32))

(declare-fun lt!631622 () (_ BitVec 32))

(assert (=> d!154233 (= lt!631623 (bvmul (bvxor lt!631622 (bvlshr lt!631622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154233 (= lt!631622 ((_ extract 31 0) (bvand (bvxor (select (arr!47078 a!2831) j!81) (bvlshr (select (arr!47078 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154233 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968194 (let ((h!35098 ((_ extract 31 0) (bvand (bvxor (select (arr!47078 a!2831) j!81) (bvlshr (select (arr!47078 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129574 (bvmul (bvxor h!35098 (bvlshr h!35098 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129574 (bvlshr x!129574 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968194 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968194 #b00000000000000000000000000000000))))))

(assert (=> d!154233 (= (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) (bvand (bvxor lt!631623 (bvlshr lt!631623 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434772 d!154233))

(declare-fun b!1434878 () Bool)

(declare-fun lt!631629 () SeekEntryResult!11379)

(assert (=> b!1434878 (and (bvsge (index!47909 lt!631629) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631629) (size!47629 lt!631576)))))

(declare-fun res!968198 () Bool)

(assert (=> b!1434878 (= res!968198 (= (select (arr!47078 lt!631576) (index!47909 lt!631629)) lt!631575))))

(declare-fun e!809855 () Bool)

(assert (=> b!1434878 (=> res!968198 e!809855)))

(declare-fun e!809854 () Bool)

(assert (=> b!1434878 (= e!809854 e!809855)))

(declare-fun b!1434879 () Bool)

(declare-fun e!809853 () Bool)

(assert (=> b!1434879 (= e!809853 e!809854)))

(declare-fun res!968199 () Bool)

(assert (=> b!1434879 (= res!968199 (and ((_ is Intermediate!11379) lt!631629) (not (undefined!12191 lt!631629)) (bvslt (x!129571 lt!631629) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631629) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631629) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1434879 (=> (not res!968199) (not e!809854))))

(declare-fun b!1434880 () Bool)

(declare-fun e!809857 () SeekEntryResult!11379)

(assert (=> b!1434880 (= e!809857 (Intermediate!11379 false lt!631579 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434881 () Bool)

(assert (=> b!1434881 (and (bvsge (index!47909 lt!631629) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631629) (size!47629 lt!631576)))))

(declare-fun res!968197 () Bool)

(assert (=> b!1434881 (= res!968197 (= (select (arr!47078 lt!631576) (index!47909 lt!631629)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434881 (=> res!968197 e!809855)))

(declare-fun b!1434882 () Bool)

(declare-fun e!809856 () SeekEntryResult!11379)

(assert (=> b!1434882 (= e!809856 e!809857)))

(declare-fun c!132845 () Bool)

(declare-fun lt!631624 () (_ BitVec 64))

(assert (=> b!1434882 (= c!132845 (or (= lt!631624 lt!631575) (= (bvadd lt!631624 lt!631624) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154237 () Bool)

(assert (=> d!154237 e!809853))

(declare-fun c!132847 () Bool)

(assert (=> d!154237 (= c!132847 (and ((_ is Intermediate!11379) lt!631629) (undefined!12191 lt!631629)))))

(assert (=> d!154237 (= lt!631629 e!809856)))

(declare-fun c!132846 () Bool)

(assert (=> d!154237 (= c!132846 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154237 (= lt!631624 (select (arr!47078 lt!631576) lt!631579))))

(assert (=> d!154237 (validMask!0 mask!2608)))

(assert (=> d!154237 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631579 lt!631575 lt!631576 mask!2608) lt!631629)))

(declare-fun b!1434883 () Bool)

(assert (=> b!1434883 (= e!809853 (bvsge (x!129571 lt!631629) #b01111111111111111111111111111110))))

(declare-fun b!1434884 () Bool)

(assert (=> b!1434884 (= e!809857 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631579 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) lt!631575 lt!631576 mask!2608))))

(declare-fun b!1434885 () Bool)

(assert (=> b!1434885 (= e!809856 (Intermediate!11379 true lt!631579 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434886 () Bool)

(assert (=> b!1434886 (and (bvsge (index!47909 lt!631629) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631629) (size!47629 lt!631576)))))

(assert (=> b!1434886 (= e!809855 (= (select (arr!47078 lt!631576) (index!47909 lt!631629)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154237 c!132846) b!1434885))

(assert (= (and d!154237 (not c!132846)) b!1434882))

(assert (= (and b!1434882 c!132845) b!1434880))

(assert (= (and b!1434882 (not c!132845)) b!1434884))

(assert (= (and d!154237 c!132847) b!1434883))

(assert (= (and d!154237 (not c!132847)) b!1434879))

(assert (= (and b!1434879 res!968199) b!1434878))

(assert (= (and b!1434878 (not res!968198)) b!1434881))

(assert (= (and b!1434881 (not res!968197)) b!1434886))

(declare-fun m!1324431 () Bool)

(assert (=> b!1434881 m!1324431))

(declare-fun m!1324433 () Bool)

(assert (=> d!154237 m!1324433))

(assert (=> d!154237 m!1324341))

(assert (=> b!1434886 m!1324431))

(assert (=> b!1434878 m!1324431))

(declare-fun m!1324435 () Bool)

(assert (=> b!1434884 m!1324435))

(assert (=> b!1434884 m!1324435))

(declare-fun m!1324437 () Bool)

(assert (=> b!1434884 m!1324437))

(assert (=> b!1434773 d!154237))

(declare-fun d!154239 () Bool)

(declare-fun res!968212 () Bool)

(declare-fun e!809872 () Bool)

(assert (=> d!154239 (=> res!968212 e!809872)))

(assert (=> d!154239 (= res!968212 (bvsge #b00000000000000000000000000000000 (size!47629 a!2831)))))

(assert (=> d!154239 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33765) e!809872)))

(declare-fun b!1434903 () Bool)

(declare-fun e!809874 () Bool)

(declare-fun e!809873 () Bool)

(assert (=> b!1434903 (= e!809874 e!809873)))

(declare-fun c!132851 () Bool)

(assert (=> b!1434903 (= c!132851 (validKeyInArray!0 (select (arr!47078 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434904 () Bool)

(declare-fun call!67548 () Bool)

(assert (=> b!1434904 (= e!809873 call!67548)))

(declare-fun b!1434905 () Bool)

(assert (=> b!1434905 (= e!809872 e!809874)))

(declare-fun res!968211 () Bool)

(assert (=> b!1434905 (=> (not res!968211) (not e!809874))))

(declare-fun e!809871 () Bool)

(assert (=> b!1434905 (= res!968211 (not e!809871))))

(declare-fun res!968210 () Bool)

(assert (=> b!1434905 (=> (not res!968210) (not e!809871))))

(assert (=> b!1434905 (= res!968210 (validKeyInArray!0 (select (arr!47078 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434906 () Bool)

(declare-fun contains!9885 (List!33768 (_ BitVec 64)) Bool)

(assert (=> b!1434906 (= e!809871 (contains!9885 Nil!33765 (select (arr!47078 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434907 () Bool)

(assert (=> b!1434907 (= e!809873 call!67548)))

(declare-fun bm!67545 () Bool)

(assert (=> bm!67545 (= call!67548 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132851 (Cons!33764 (select (arr!47078 a!2831) #b00000000000000000000000000000000) Nil!33765) Nil!33765)))))

(assert (= (and d!154239 (not res!968212)) b!1434905))

(assert (= (and b!1434905 res!968210) b!1434906))

(assert (= (and b!1434905 res!968211) b!1434903))

(assert (= (and b!1434903 c!132851) b!1434904))

(assert (= (and b!1434903 (not c!132851)) b!1434907))

(assert (= (or b!1434904 b!1434907) bm!67545))

(declare-fun m!1324451 () Bool)

(assert (=> b!1434903 m!1324451))

(assert (=> b!1434903 m!1324451))

(declare-fun m!1324453 () Bool)

(assert (=> b!1434903 m!1324453))

(assert (=> b!1434905 m!1324451))

(assert (=> b!1434905 m!1324451))

(assert (=> b!1434905 m!1324453))

(assert (=> b!1434906 m!1324451))

(assert (=> b!1434906 m!1324451))

(declare-fun m!1324455 () Bool)

(assert (=> b!1434906 m!1324455))

(assert (=> bm!67545 m!1324451))

(declare-fun m!1324457 () Bool)

(assert (=> bm!67545 m!1324457))

(assert (=> b!1434771 d!154239))

(declare-fun b!1434965 () Bool)

(declare-fun e!809905 () SeekEntryResult!11379)

(declare-fun lt!631657 () SeekEntryResult!11379)

(assert (=> b!1434965 (= e!809905 (Found!11379 (index!47909 lt!631657)))))

(declare-fun b!1434966 () Bool)

(declare-fun e!809906 () SeekEntryResult!11379)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97559 (_ BitVec 32)) SeekEntryResult!11379)

(assert (=> b!1434966 (= e!809906 (seekKeyOrZeroReturnVacant!0 (x!129571 lt!631657) (index!47909 lt!631657) (index!47909 lt!631657) (select (arr!47078 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434967 () Bool)

(declare-fun e!809907 () SeekEntryResult!11379)

(assert (=> b!1434967 (= e!809907 e!809905)))

(declare-fun lt!631656 () (_ BitVec 64))

(assert (=> b!1434967 (= lt!631656 (select (arr!47078 a!2831) (index!47909 lt!631657)))))

(declare-fun c!132876 () Bool)

(assert (=> b!1434967 (= c!132876 (= lt!631656 (select (arr!47078 a!2831) j!81)))))

(declare-fun b!1434968 () Bool)

(assert (=> b!1434968 (= e!809906 (MissingZero!11379 (index!47909 lt!631657)))))

(declare-fun b!1434969 () Bool)

(declare-fun c!132878 () Bool)

(assert (=> b!1434969 (= c!132878 (= lt!631656 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434969 (= e!809905 e!809906)))

(declare-fun b!1434970 () Bool)

(assert (=> b!1434970 (= e!809907 Undefined!11379)))

(declare-fun d!154243 () Bool)

(declare-fun lt!631658 () SeekEntryResult!11379)

(assert (=> d!154243 (and (or ((_ is Undefined!11379) lt!631658) (not ((_ is Found!11379) lt!631658)) (and (bvsge (index!47908 lt!631658) #b00000000000000000000000000000000) (bvslt (index!47908 lt!631658) (size!47629 a!2831)))) (or ((_ is Undefined!11379) lt!631658) ((_ is Found!11379) lt!631658) (not ((_ is MissingZero!11379) lt!631658)) (and (bvsge (index!47907 lt!631658) #b00000000000000000000000000000000) (bvslt (index!47907 lt!631658) (size!47629 a!2831)))) (or ((_ is Undefined!11379) lt!631658) ((_ is Found!11379) lt!631658) ((_ is MissingZero!11379) lt!631658) (not ((_ is MissingVacant!11379) lt!631658)) (and (bvsge (index!47910 lt!631658) #b00000000000000000000000000000000) (bvslt (index!47910 lt!631658) (size!47629 a!2831)))) (or ((_ is Undefined!11379) lt!631658) (ite ((_ is Found!11379) lt!631658) (= (select (arr!47078 a!2831) (index!47908 lt!631658)) (select (arr!47078 a!2831) j!81)) (ite ((_ is MissingZero!11379) lt!631658) (= (select (arr!47078 a!2831) (index!47907 lt!631658)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11379) lt!631658) (= (select (arr!47078 a!2831) (index!47910 lt!631658)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154243 (= lt!631658 e!809907)))

(declare-fun c!132877 () Bool)

(assert (=> d!154243 (= c!132877 (and ((_ is Intermediate!11379) lt!631657) (undefined!12191 lt!631657)))))

(assert (=> d!154243 (= lt!631657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47078 a!2831) j!81) mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154243 (validMask!0 mask!2608)))

(assert (=> d!154243 (= (seekEntryOrOpen!0 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631658)))

(assert (= (and d!154243 c!132877) b!1434970))

(assert (= (and d!154243 (not c!132877)) b!1434967))

(assert (= (and b!1434967 c!132876) b!1434965))

(assert (= (and b!1434967 (not c!132876)) b!1434969))

(assert (= (and b!1434969 c!132878) b!1434968))

(assert (= (and b!1434969 (not c!132878)) b!1434966))

(assert (=> b!1434966 m!1324323))

(declare-fun m!1324473 () Bool)

(assert (=> b!1434966 m!1324473))

(declare-fun m!1324475 () Bool)

(assert (=> b!1434967 m!1324475))

(assert (=> d!154243 m!1324323))

(assert (=> d!154243 m!1324327))

(assert (=> d!154243 m!1324341))

(declare-fun m!1324477 () Bool)

(assert (=> d!154243 m!1324477))

(assert (=> d!154243 m!1324327))

(assert (=> d!154243 m!1324323))

(assert (=> d!154243 m!1324329))

(declare-fun m!1324479 () Bool)

(assert (=> d!154243 m!1324479))

(declare-fun m!1324481 () Bool)

(assert (=> d!154243 m!1324481))

(assert (=> b!1434760 d!154243))

(declare-fun b!1434971 () Bool)

(declare-fun e!809908 () Bool)

(declare-fun call!67549 () Bool)

(assert (=> b!1434971 (= e!809908 call!67549)))

(declare-fun b!1434972 () Bool)

(declare-fun e!809910 () Bool)

(assert (=> b!1434972 (= e!809910 call!67549)))

(declare-fun b!1434973 () Bool)

(assert (=> b!1434973 (= e!809908 e!809910)))

(declare-fun lt!631661 () (_ BitVec 64))

(assert (=> b!1434973 (= lt!631661 (select (arr!47078 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631660 () Unit!48452)

(assert (=> b!1434973 (= lt!631660 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631661 #b00000000000000000000000000000000))))

(assert (=> b!1434973 (arrayContainsKey!0 a!2831 lt!631661 #b00000000000000000000000000000000)))

(declare-fun lt!631659 () Unit!48452)

(assert (=> b!1434973 (= lt!631659 lt!631660)))

(declare-fun res!968223 () Bool)

(assert (=> b!1434973 (= res!968223 (= (seekEntryOrOpen!0 (select (arr!47078 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11379 #b00000000000000000000000000000000)))))

(assert (=> b!1434973 (=> (not res!968223) (not e!809910))))

(declare-fun d!154249 () Bool)

(declare-fun res!968222 () Bool)

(declare-fun e!809909 () Bool)

(assert (=> d!154249 (=> res!968222 e!809909)))

(assert (=> d!154249 (= res!968222 (bvsge #b00000000000000000000000000000000 (size!47629 a!2831)))))

(assert (=> d!154249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809909)))

(declare-fun bm!67546 () Bool)

(assert (=> bm!67546 (= call!67549 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434974 () Bool)

(assert (=> b!1434974 (= e!809909 e!809908)))

(declare-fun c!132879 () Bool)

(assert (=> b!1434974 (= c!132879 (validKeyInArray!0 (select (arr!47078 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154249 (not res!968222)) b!1434974))

(assert (= (and b!1434974 c!132879) b!1434973))

(assert (= (and b!1434974 (not c!132879)) b!1434971))

(assert (= (and b!1434973 res!968223) b!1434972))

(assert (= (or b!1434972 b!1434971) bm!67546))

(assert (=> b!1434973 m!1324451))

(declare-fun m!1324483 () Bool)

(assert (=> b!1434973 m!1324483))

(declare-fun m!1324485 () Bool)

(assert (=> b!1434973 m!1324485))

(assert (=> b!1434973 m!1324451))

(declare-fun m!1324487 () Bool)

(assert (=> b!1434973 m!1324487))

(declare-fun m!1324489 () Bool)

(assert (=> bm!67546 m!1324489))

(assert (=> b!1434974 m!1324451))

(assert (=> b!1434974 m!1324451))

(assert (=> b!1434974 m!1324453))

(assert (=> b!1434761 d!154249))

(declare-fun b!1434975 () Bool)

(declare-fun lt!631663 () SeekEntryResult!11379)

(assert (=> b!1434975 (and (bvsge (index!47909 lt!631663) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631663) (size!47629 lt!631576)))))

(declare-fun res!968225 () Bool)

(assert (=> b!1434975 (= res!968225 (= (select (arr!47078 lt!631576) (index!47909 lt!631663)) lt!631575))))

(declare-fun e!809913 () Bool)

(assert (=> b!1434975 (=> res!968225 e!809913)))

(declare-fun e!809912 () Bool)

(assert (=> b!1434975 (= e!809912 e!809913)))

(declare-fun b!1434976 () Bool)

(declare-fun e!809911 () Bool)

(assert (=> b!1434976 (= e!809911 e!809912)))

(declare-fun res!968226 () Bool)

(assert (=> b!1434976 (= res!968226 (and ((_ is Intermediate!11379) lt!631663) (not (undefined!12191 lt!631663)) (bvslt (x!129571 lt!631663) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631663) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631663) #b00000000000000000000000000000000)))))

(assert (=> b!1434976 (=> (not res!968226) (not e!809912))))

(declare-fun b!1434977 () Bool)

(declare-fun e!809915 () SeekEntryResult!11379)

(assert (=> b!1434977 (= e!809915 (Intermediate!11379 false (toIndex!0 lt!631575 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434978 () Bool)

(assert (=> b!1434978 (and (bvsge (index!47909 lt!631663) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631663) (size!47629 lt!631576)))))

(declare-fun res!968224 () Bool)

(assert (=> b!1434978 (= res!968224 (= (select (arr!47078 lt!631576) (index!47909 lt!631663)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434978 (=> res!968224 e!809913)))

(declare-fun b!1434979 () Bool)

(declare-fun e!809914 () SeekEntryResult!11379)

(assert (=> b!1434979 (= e!809914 e!809915)))

(declare-fun c!132880 () Bool)

(declare-fun lt!631662 () (_ BitVec 64))

(assert (=> b!1434979 (= c!132880 (or (= lt!631662 lt!631575) (= (bvadd lt!631662 lt!631662) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154253 () Bool)

(assert (=> d!154253 e!809911))

(declare-fun c!132882 () Bool)

(assert (=> d!154253 (= c!132882 (and ((_ is Intermediate!11379) lt!631663) (undefined!12191 lt!631663)))))

(assert (=> d!154253 (= lt!631663 e!809914)))

(declare-fun c!132881 () Bool)

(assert (=> d!154253 (= c!132881 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154253 (= lt!631662 (select (arr!47078 lt!631576) (toIndex!0 lt!631575 mask!2608)))))

(assert (=> d!154253 (validMask!0 mask!2608)))

(assert (=> d!154253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631575 mask!2608) lt!631575 lt!631576 mask!2608) lt!631663)))

(declare-fun b!1434980 () Bool)

(assert (=> b!1434980 (= e!809911 (bvsge (x!129571 lt!631663) #b01111111111111111111111111111110))))

(declare-fun b!1434981 () Bool)

(assert (=> b!1434981 (= e!809915 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631575 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631575 lt!631576 mask!2608))))

(declare-fun b!1434982 () Bool)

(assert (=> b!1434982 (= e!809914 (Intermediate!11379 true (toIndex!0 lt!631575 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434983 () Bool)

(assert (=> b!1434983 (and (bvsge (index!47909 lt!631663) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631663) (size!47629 lt!631576)))))

(assert (=> b!1434983 (= e!809913 (= (select (arr!47078 lt!631576) (index!47909 lt!631663)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154253 c!132881) b!1434982))

(assert (= (and d!154253 (not c!132881)) b!1434979))

(assert (= (and b!1434979 c!132880) b!1434977))

(assert (= (and b!1434979 (not c!132880)) b!1434981))

(assert (= (and d!154253 c!132882) b!1434980))

(assert (= (and d!154253 (not c!132882)) b!1434976))

(assert (= (and b!1434976 res!968226) b!1434975))

(assert (= (and b!1434975 (not res!968225)) b!1434978))

(assert (= (and b!1434978 (not res!968224)) b!1434983))

(declare-fun m!1324491 () Bool)

(assert (=> b!1434978 m!1324491))

(assert (=> d!154253 m!1324353))

(declare-fun m!1324493 () Bool)

(assert (=> d!154253 m!1324493))

(assert (=> d!154253 m!1324341))

(assert (=> b!1434983 m!1324491))

(assert (=> b!1434975 m!1324491))

(assert (=> b!1434981 m!1324353))

(declare-fun m!1324495 () Bool)

(assert (=> b!1434981 m!1324495))

(assert (=> b!1434981 m!1324495))

(declare-fun m!1324497 () Bool)

(assert (=> b!1434981 m!1324497))

(assert (=> b!1434770 d!154253))

(declare-fun d!154257 () Bool)

(declare-fun lt!631665 () (_ BitVec 32))

(declare-fun lt!631664 () (_ BitVec 32))

(assert (=> d!154257 (= lt!631665 (bvmul (bvxor lt!631664 (bvlshr lt!631664 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154257 (= lt!631664 ((_ extract 31 0) (bvand (bvxor lt!631575 (bvlshr lt!631575 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154257 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968194 (let ((h!35098 ((_ extract 31 0) (bvand (bvxor lt!631575 (bvlshr lt!631575 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129574 (bvmul (bvxor h!35098 (bvlshr h!35098 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129574 (bvlshr x!129574 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968194 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968194 #b00000000000000000000000000000000))))))

(assert (=> d!154257 (= (toIndex!0 lt!631575 mask!2608) (bvand (bvxor lt!631665 (bvlshr lt!631665 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434770 d!154257))

(declare-fun d!154259 () Bool)

(assert (=> d!154259 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123840 d!154259))

(declare-fun d!154273 () Bool)

(assert (=> d!154273 (= (array_inv!36023 a!2831) (bvsge (size!47629 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123840 d!154273))

(declare-fun d!154275 () Bool)

(assert (=> d!154275 (= (validKeyInArray!0 (select (arr!47078 a!2831) i!982)) (and (not (= (select (arr!47078 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47078 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434769 d!154275))

(declare-fun d!154277 () Bool)

(declare-fun lt!631681 () (_ BitVec 32))

(assert (=> d!154277 (and (bvsge lt!631681 #b00000000000000000000000000000000) (bvslt lt!631681 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154277 (= lt!631681 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154277 (validMask!0 mask!2608)))

(assert (=> d!154277 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631681)))

(declare-fun bs!41767 () Bool)

(assert (= bs!41767 d!154277))

(declare-fun m!1324517 () Bool)

(assert (=> bs!41767 m!1324517))

(assert (=> bs!41767 m!1324341))

(assert (=> b!1434767 d!154277))

(declare-fun b!1435002 () Bool)

(declare-fun lt!631683 () SeekEntryResult!11379)

(assert (=> b!1435002 (and (bvsge (index!47909 lt!631683) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631683) (size!47629 a!2831)))))

(declare-fun res!968235 () Bool)

(assert (=> b!1435002 (= res!968235 (= (select (arr!47078 a!2831) (index!47909 lt!631683)) (select (arr!47078 a!2831) j!81)))))

(declare-fun e!809928 () Bool)

(assert (=> b!1435002 (=> res!968235 e!809928)))

(declare-fun e!809927 () Bool)

(assert (=> b!1435002 (= e!809927 e!809928)))

(declare-fun b!1435003 () Bool)

(declare-fun e!809926 () Bool)

(assert (=> b!1435003 (= e!809926 e!809927)))

(declare-fun res!968236 () Bool)

(assert (=> b!1435003 (= res!968236 (and ((_ is Intermediate!11379) lt!631683) (not (undefined!12191 lt!631683)) (bvslt (x!129571 lt!631683) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631683) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631683) x!605)))))

(assert (=> b!1435003 (=> (not res!968236) (not e!809927))))

(declare-fun b!1435004 () Bool)

(declare-fun e!809930 () SeekEntryResult!11379)

(assert (=> b!1435004 (= e!809930 (Intermediate!11379 false index!585 x!605))))

(declare-fun b!1435005 () Bool)

(assert (=> b!1435005 (and (bvsge (index!47909 lt!631683) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631683) (size!47629 a!2831)))))

(declare-fun res!968234 () Bool)

(assert (=> b!1435005 (= res!968234 (= (select (arr!47078 a!2831) (index!47909 lt!631683)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435005 (=> res!968234 e!809928)))

(declare-fun b!1435006 () Bool)

(declare-fun e!809929 () SeekEntryResult!11379)

(assert (=> b!1435006 (= e!809929 e!809930)))

(declare-fun lt!631682 () (_ BitVec 64))

(declare-fun c!132889 () Bool)

(assert (=> b!1435006 (= c!132889 (or (= lt!631682 (select (arr!47078 a!2831) j!81)) (= (bvadd lt!631682 lt!631682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154279 () Bool)

(assert (=> d!154279 e!809926))

(declare-fun c!132891 () Bool)

(assert (=> d!154279 (= c!132891 (and ((_ is Intermediate!11379) lt!631683) (undefined!12191 lt!631683)))))

(assert (=> d!154279 (= lt!631683 e!809929)))

(declare-fun c!132890 () Bool)

(assert (=> d!154279 (= c!132890 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154279 (= lt!631682 (select (arr!47078 a!2831) index!585))))

(assert (=> d!154279 (validMask!0 mask!2608)))

(assert (=> d!154279 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631683)))

(declare-fun b!1435007 () Bool)

(assert (=> b!1435007 (= e!809926 (bvsge (x!129571 lt!631683) #b01111111111111111111111111111110))))

(declare-fun b!1435008 () Bool)

(assert (=> b!1435008 (= e!809930 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435009 () Bool)

(assert (=> b!1435009 (= e!809929 (Intermediate!11379 true index!585 x!605))))

(declare-fun b!1435010 () Bool)

(assert (=> b!1435010 (and (bvsge (index!47909 lt!631683) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631683) (size!47629 a!2831)))))

(assert (=> b!1435010 (= e!809928 (= (select (arr!47078 a!2831) (index!47909 lt!631683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154279 c!132890) b!1435009))

(assert (= (and d!154279 (not c!132890)) b!1435006))

(assert (= (and b!1435006 c!132889) b!1435004))

(assert (= (and b!1435006 (not c!132889)) b!1435008))

(assert (= (and d!154279 c!132891) b!1435007))

(assert (= (and d!154279 (not c!132891)) b!1435003))

(assert (= (and b!1435003 res!968236) b!1435002))

(assert (= (and b!1435002 (not res!968235)) b!1435005))

(assert (= (and b!1435005 (not res!968234)) b!1435010))

(declare-fun m!1324519 () Bool)

(assert (=> b!1435005 m!1324519))

(assert (=> d!154279 m!1324335))

(assert (=> d!154279 m!1324341))

(assert (=> b!1435010 m!1324519))

(assert (=> b!1435002 m!1324519))

(assert (=> b!1435008 m!1324313))

(assert (=> b!1435008 m!1324313))

(assert (=> b!1435008 m!1324323))

(declare-fun m!1324521 () Bool)

(assert (=> b!1435008 m!1324521))

(assert (=> b!1434766 d!154279))

(declare-fun b!1435019 () Bool)

(declare-fun lt!631691 () SeekEntryResult!11379)

(assert (=> b!1435019 (and (bvsge (index!47909 lt!631691) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631691) (size!47629 a!2831)))))

(declare-fun res!968242 () Bool)

(assert (=> b!1435019 (= res!968242 (= (select (arr!47078 a!2831) (index!47909 lt!631691)) (select (arr!47078 a!2831) j!81)))))

(declare-fun e!809939 () Bool)

(assert (=> b!1435019 (=> res!968242 e!809939)))

(declare-fun e!809938 () Bool)

(assert (=> b!1435019 (= e!809938 e!809939)))

(declare-fun b!1435020 () Bool)

(declare-fun e!809937 () Bool)

(assert (=> b!1435020 (= e!809937 e!809938)))

(declare-fun res!968243 () Bool)

(assert (=> b!1435020 (= res!968243 (and ((_ is Intermediate!11379) lt!631691) (not (undefined!12191 lt!631691)) (bvslt (x!129571 lt!631691) #b01111111111111111111111111111110) (bvsge (x!129571 lt!631691) #b00000000000000000000000000000000) (bvsge (x!129571 lt!631691) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1435020 (=> (not res!968243) (not e!809938))))

(declare-fun b!1435021 () Bool)

(declare-fun e!809941 () SeekEntryResult!11379)

(assert (=> b!1435021 (= e!809941 (Intermediate!11379 false lt!631579 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435022 () Bool)

(assert (=> b!1435022 (and (bvsge (index!47909 lt!631691) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631691) (size!47629 a!2831)))))

(declare-fun res!968241 () Bool)

(assert (=> b!1435022 (= res!968241 (= (select (arr!47078 a!2831) (index!47909 lt!631691)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435022 (=> res!968241 e!809939)))

(declare-fun b!1435023 () Bool)

(declare-fun e!809940 () SeekEntryResult!11379)

(assert (=> b!1435023 (= e!809940 e!809941)))

(declare-fun lt!631690 () (_ BitVec 64))

(declare-fun c!132894 () Bool)

(assert (=> b!1435023 (= c!132894 (or (= lt!631690 (select (arr!47078 a!2831) j!81)) (= (bvadd lt!631690 lt!631690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!154281 () Bool)

(assert (=> d!154281 e!809937))

(declare-fun c!132896 () Bool)

(assert (=> d!154281 (= c!132896 (and ((_ is Intermediate!11379) lt!631691) (undefined!12191 lt!631691)))))

(assert (=> d!154281 (= lt!631691 e!809940)))

(declare-fun c!132895 () Bool)

(assert (=> d!154281 (= c!132895 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154281 (= lt!631690 (select (arr!47078 a!2831) lt!631579))))

(assert (=> d!154281 (validMask!0 mask!2608)))

(assert (=> d!154281 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631579 (select (arr!47078 a!2831) j!81) a!2831 mask!2608) lt!631691)))

(declare-fun b!1435024 () Bool)

(assert (=> b!1435024 (= e!809937 (bvsge (x!129571 lt!631691) #b01111111111111111111111111111110))))

(declare-fun b!1435025 () Bool)

(assert (=> b!1435025 (= e!809941 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631579 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) (select (arr!47078 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435026 () Bool)

(assert (=> b!1435026 (= e!809940 (Intermediate!11379 true lt!631579 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435027 () Bool)

(assert (=> b!1435027 (and (bvsge (index!47909 lt!631691) #b00000000000000000000000000000000) (bvslt (index!47909 lt!631691) (size!47629 a!2831)))))

(assert (=> b!1435027 (= e!809939 (= (select (arr!47078 a!2831) (index!47909 lt!631691)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154281 c!132895) b!1435026))

(assert (= (and d!154281 (not c!132895)) b!1435023))

(assert (= (and b!1435023 c!132894) b!1435021))

(assert (= (and b!1435023 (not c!132894)) b!1435025))

(assert (= (and d!154281 c!132896) b!1435024))

(assert (= (and d!154281 (not c!132896)) b!1435020))

(assert (= (and b!1435020 res!968243) b!1435019))

(assert (= (and b!1435019 (not res!968242)) b!1435022))

(assert (= (and b!1435022 (not res!968241)) b!1435027))

(declare-fun m!1324523 () Bool)

(assert (=> b!1435022 m!1324523))

(declare-fun m!1324525 () Bool)

(assert (=> d!154281 m!1324525))

(assert (=> d!154281 m!1324341))

(assert (=> b!1435027 m!1324523))

(assert (=> b!1435019 m!1324523))

(assert (=> b!1435025 m!1324435))

(assert (=> b!1435025 m!1324435))

(assert (=> b!1435025 m!1324323))

(declare-fun m!1324527 () Bool)

(assert (=> b!1435025 m!1324527))

(assert (=> b!1434764 d!154281))

(declare-fun d!154283 () Bool)

(assert (=> d!154283 (= (validKeyInArray!0 (select (arr!47078 a!2831) j!81)) (and (not (= (select (arr!47078 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47078 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434765 d!154283))

(check-sat (not bm!67546) (not b!1434862) (not d!154223) (not bm!67539) (not b!1434848) (not d!154279) (not b!1434966) (not b!1434974) (not b!1434861) (not d!154281) (not d!154229) (not d!154243) (not d!154277) (not b!1435008) (not b!1434903) (not b!1434981) (not b!1434905) (not d!154253) (not b!1434906) (not b!1434884) (not d!154227) (not b!1435025) (not d!154237) (not b!1434973) (not bm!67545) (not b!1434869))
(check-sat)
