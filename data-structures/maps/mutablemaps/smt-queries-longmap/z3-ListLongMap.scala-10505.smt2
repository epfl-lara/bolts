; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123768 () Bool)

(assert start!123768)

(declare-fun b!1434153 () Bool)

(declare-fun e!809466 () Bool)

(declare-fun e!809468 () Bool)

(assert (=> b!1434153 (= e!809466 (not e!809468))))

(declare-fun res!967733 () Bool)

(assert (=> b!1434153 (=> res!967733 e!809468)))

(declare-datatypes ((array!97544 0))(
  ( (array!97545 (arr!47072 (Array (_ BitVec 32) (_ BitVec 64))) (size!47623 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97544)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434153 (= res!967733 (or (= (select (arr!47072 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47072 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47072 a!2831) index!585) (select (arr!47072 a!2831) j!81)) (= (select (store (arr!47072 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809471 () Bool)

(assert (=> b!1434153 e!809471))

(declare-fun res!967729 () Bool)

(assert (=> b!1434153 (=> (not res!967729) (not e!809471))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97544 (_ BitVec 32)) Bool)

(assert (=> b!1434153 (= res!967729 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48440 0))(
  ( (Unit!48441) )
))
(declare-fun lt!631319 () Unit!48440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48440)

(assert (=> b!1434153 (= lt!631319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434154 () Bool)

(declare-fun res!967728 () Bool)

(declare-fun e!809470 () Bool)

(assert (=> b!1434154 (=> (not res!967728) (not e!809470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434154 (= res!967728 (validKeyInArray!0 (select (arr!47072 a!2831) j!81)))))

(declare-fun b!1434156 () Bool)

(declare-fun res!967726 () Bool)

(assert (=> b!1434156 (=> (not res!967726) (not e!809466))))

(declare-datatypes ((SeekEntryResult!11373 0))(
  ( (MissingZero!11373 (index!47883 (_ BitVec 32))) (Found!11373 (index!47884 (_ BitVec 32))) (Intermediate!11373 (undefined!12185 Bool) (index!47885 (_ BitVec 32)) (x!129540 (_ BitVec 32))) (Undefined!11373) (MissingVacant!11373 (index!47886 (_ BitVec 32))) )
))
(declare-fun lt!631324 () SeekEntryResult!11373)

(declare-fun lt!631323 () (_ BitVec 64))

(declare-fun lt!631321 () array!97544)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97544 (_ BitVec 32)) SeekEntryResult!11373)

(assert (=> b!1434156 (= res!967726 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631323 lt!631321 mask!2608) lt!631324))))

(declare-fun b!1434157 () Bool)

(declare-fun res!967724 () Bool)

(assert (=> b!1434157 (=> (not res!967724) (not e!809466))))

(declare-fun lt!631320 () SeekEntryResult!11373)

(assert (=> b!1434157 (= res!967724 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47072 a!2831) j!81) a!2831 mask!2608) lt!631320))))

(declare-fun b!1434158 () Bool)

(declare-fun res!967731 () Bool)

(assert (=> b!1434158 (=> (not res!967731) (not e!809470))))

(assert (=> b!1434158 (= res!967731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434159 () Bool)

(declare-fun e!809469 () Bool)

(assert (=> b!1434159 (= e!809469 e!809466)))

(declare-fun res!967734 () Bool)

(assert (=> b!1434159 (=> (not res!967734) (not e!809466))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434159 (= res!967734 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631323 mask!2608) lt!631323 lt!631321 mask!2608) lt!631324))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434159 (= lt!631324 (Intermediate!11373 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434159 (= lt!631323 (select (store (arr!47072 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434159 (= lt!631321 (array!97545 (store (arr!47072 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47623 a!2831)))))

(declare-fun b!1434155 () Bool)

(assert (=> b!1434155 (= e!809470 e!809469)))

(declare-fun res!967730 () Bool)

(assert (=> b!1434155 (=> (not res!967730) (not e!809469))))

(assert (=> b!1434155 (= res!967730 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47072 a!2831) j!81) mask!2608) (select (arr!47072 a!2831) j!81) a!2831 mask!2608) lt!631320))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1434155 (= lt!631320 (Intermediate!11373 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!967725 () Bool)

(assert (=> start!123768 (=> (not res!967725) (not e!809470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123768 (= res!967725 (validMask!0 mask!2608))))

(assert (=> start!123768 e!809470))

(assert (=> start!123768 true))

(declare-fun array_inv!36017 (array!97544) Bool)

(assert (=> start!123768 (array_inv!36017 a!2831)))

(declare-fun b!1434160 () Bool)

(declare-fun res!967736 () Bool)

(assert (=> b!1434160 (=> (not res!967736) (not e!809470))))

(assert (=> b!1434160 (= res!967736 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47623 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47623 a!2831))))))

(declare-fun b!1434161 () Bool)

(declare-fun res!967737 () Bool)

(assert (=> b!1434161 (=> (not res!967737) (not e!809470))))

(declare-datatypes ((List!33762 0))(
  ( (Nil!33759) (Cons!33758 (h!35087 (_ BitVec 64)) (t!48463 List!33762)) )
))
(declare-fun arrayNoDuplicates!0 (array!97544 (_ BitVec 32) List!33762) Bool)

(assert (=> b!1434161 (= res!967737 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33759))))

(declare-fun b!1434162 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97544 (_ BitVec 32)) SeekEntryResult!11373)

(assert (=> b!1434162 (= e!809471 (= (seekEntryOrOpen!0 (select (arr!47072 a!2831) j!81) a!2831 mask!2608) (Found!11373 j!81)))))

(declare-fun b!1434163 () Bool)

(assert (=> b!1434163 (= e!809468 true)))

(declare-fun lt!631322 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434163 (= lt!631322 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434164 () Bool)

(declare-fun res!967735 () Bool)

(assert (=> b!1434164 (=> (not res!967735) (not e!809466))))

(assert (=> b!1434164 (= res!967735 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434165 () Bool)

(declare-fun res!967732 () Bool)

(assert (=> b!1434165 (=> (not res!967732) (not e!809470))))

(assert (=> b!1434165 (= res!967732 (and (= (size!47623 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47623 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47623 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434166 () Bool)

(declare-fun res!967727 () Bool)

(assert (=> b!1434166 (=> (not res!967727) (not e!809470))))

(assert (=> b!1434166 (= res!967727 (validKeyInArray!0 (select (arr!47072 a!2831) i!982)))))

(assert (= (and start!123768 res!967725) b!1434165))

(assert (= (and b!1434165 res!967732) b!1434166))

(assert (= (and b!1434166 res!967727) b!1434154))

(assert (= (and b!1434154 res!967728) b!1434158))

(assert (= (and b!1434158 res!967731) b!1434161))

(assert (= (and b!1434161 res!967737) b!1434160))

(assert (= (and b!1434160 res!967736) b!1434155))

(assert (= (and b!1434155 res!967730) b!1434159))

(assert (= (and b!1434159 res!967734) b!1434157))

(assert (= (and b!1434157 res!967724) b!1434156))

(assert (= (and b!1434156 res!967726) b!1434164))

(assert (= (and b!1434164 res!967735) b!1434153))

(assert (= (and b!1434153 res!967729) b!1434162))

(assert (= (and b!1434153 (not res!967733)) b!1434163))

(declare-fun m!1323829 () Bool)

(assert (=> start!123768 m!1323829))

(declare-fun m!1323831 () Bool)

(assert (=> start!123768 m!1323831))

(declare-fun m!1323833 () Bool)

(assert (=> b!1434157 m!1323833))

(assert (=> b!1434157 m!1323833))

(declare-fun m!1323835 () Bool)

(assert (=> b!1434157 m!1323835))

(declare-fun m!1323837 () Bool)

(assert (=> b!1434158 m!1323837))

(declare-fun m!1323839 () Bool)

(assert (=> b!1434166 m!1323839))

(assert (=> b!1434166 m!1323839))

(declare-fun m!1323841 () Bool)

(assert (=> b!1434166 m!1323841))

(assert (=> b!1434154 m!1323833))

(assert (=> b!1434154 m!1323833))

(declare-fun m!1323843 () Bool)

(assert (=> b!1434154 m!1323843))

(declare-fun m!1323845 () Bool)

(assert (=> b!1434161 m!1323845))

(declare-fun m!1323847 () Bool)

(assert (=> b!1434156 m!1323847))

(declare-fun m!1323849 () Bool)

(assert (=> b!1434153 m!1323849))

(declare-fun m!1323851 () Bool)

(assert (=> b!1434153 m!1323851))

(declare-fun m!1323853 () Bool)

(assert (=> b!1434153 m!1323853))

(declare-fun m!1323855 () Bool)

(assert (=> b!1434153 m!1323855))

(assert (=> b!1434153 m!1323833))

(declare-fun m!1323857 () Bool)

(assert (=> b!1434153 m!1323857))

(assert (=> b!1434162 m!1323833))

(assert (=> b!1434162 m!1323833))

(declare-fun m!1323859 () Bool)

(assert (=> b!1434162 m!1323859))

(declare-fun m!1323861 () Bool)

(assert (=> b!1434163 m!1323861))

(declare-fun m!1323863 () Bool)

(assert (=> b!1434159 m!1323863))

(assert (=> b!1434159 m!1323863))

(declare-fun m!1323865 () Bool)

(assert (=> b!1434159 m!1323865))

(assert (=> b!1434159 m!1323849))

(declare-fun m!1323867 () Bool)

(assert (=> b!1434159 m!1323867))

(assert (=> b!1434155 m!1323833))

(assert (=> b!1434155 m!1323833))

(declare-fun m!1323869 () Bool)

(assert (=> b!1434155 m!1323869))

(assert (=> b!1434155 m!1323869))

(assert (=> b!1434155 m!1323833))

(declare-fun m!1323871 () Bool)

(assert (=> b!1434155 m!1323871))

(check-sat (not start!123768) (not b!1434161) (not b!1434159) (not b!1434163) (not b!1434158) (not b!1434153) (not b!1434162) (not b!1434166) (not b!1434154) (not b!1434155) (not b!1434156) (not b!1434157))
(check-sat)
