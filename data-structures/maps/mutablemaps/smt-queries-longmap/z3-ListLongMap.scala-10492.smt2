; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123570 () Bool)

(assert start!123570)

(declare-fun b!1431897 () Bool)

(declare-fun res!965883 () Bool)

(declare-fun e!808389 () Bool)

(assert (=> b!1431897 (=> (not res!965883) (not e!808389))))

(declare-datatypes ((array!97460 0))(
  ( (array!97461 (arr!47033 (Array (_ BitVec 32) (_ BitVec 64))) (size!47584 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97460)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431897 (= res!965883 (validKeyInArray!0 (select (arr!47033 a!2831) i!982)))))

(declare-fun b!1431898 () Bool)

(declare-fun e!808391 () Bool)

(assert (=> b!1431898 (= e!808391 true)))

(declare-fun lt!630339 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431898 (= lt!630339 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431899 () Bool)

(declare-fun res!965873 () Bool)

(declare-fun e!808388 () Bool)

(assert (=> b!1431899 (=> (not res!965873) (not e!808388))))

(declare-datatypes ((SeekEntryResult!11334 0))(
  ( (MissingZero!11334 (index!47727 (_ BitVec 32))) (Found!11334 (index!47728 (_ BitVec 32))) (Intermediate!11334 (undefined!12146 Bool) (index!47729 (_ BitVec 32)) (x!129379 (_ BitVec 32))) (Undefined!11334) (MissingVacant!11334 (index!47730 (_ BitVec 32))) )
))
(declare-fun lt!630337 () SeekEntryResult!11334)

(declare-fun lt!630336 () array!97460)

(declare-fun lt!630340 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97460 (_ BitVec 32)) SeekEntryResult!11334)

(assert (=> b!1431899 (= res!965873 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630340 lt!630336 mask!2608) lt!630337))))

(declare-fun b!1431900 () Bool)

(assert (=> b!1431900 (= e!808388 (not e!808391))))

(declare-fun res!965877 () Bool)

(assert (=> b!1431900 (=> res!965877 e!808391)))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1431900 (= res!965877 (or (= (select (arr!47033 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47033 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47033 a!2831) index!585) (select (arr!47033 a!2831) j!81)) (= (select (store (arr!47033 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808390 () Bool)

(assert (=> b!1431900 e!808390))

(declare-fun res!965882 () Bool)

(assert (=> b!1431900 (=> (not res!965882) (not e!808390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97460 (_ BitVec 32)) Bool)

(assert (=> b!1431900 (= res!965882 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48362 0))(
  ( (Unit!48363) )
))
(declare-fun lt!630335 () Unit!48362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48362)

(assert (=> b!1431900 (= lt!630335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431901 () Bool)

(declare-fun res!965870 () Bool)

(assert (=> b!1431901 (=> (not res!965870) (not e!808389))))

(assert (=> b!1431901 (= res!965870 (validKeyInArray!0 (select (arr!47033 a!2831) j!81)))))

(declare-fun b!1431902 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97460 (_ BitVec 32)) SeekEntryResult!11334)

(assert (=> b!1431902 (= e!808390 (= (seekEntryOrOpen!0 (select (arr!47033 a!2831) j!81) a!2831 mask!2608) (Found!11334 j!81)))))

(declare-fun b!1431903 () Bool)

(declare-fun res!965876 () Bool)

(assert (=> b!1431903 (=> (not res!965876) (not e!808389))))

(declare-datatypes ((List!33723 0))(
  ( (Nil!33720) (Cons!33719 (h!35042 (_ BitVec 64)) (t!48424 List!33723)) )
))
(declare-fun arrayNoDuplicates!0 (array!97460 (_ BitVec 32) List!33723) Bool)

(assert (=> b!1431903 (= res!965876 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33720))))

(declare-fun res!965881 () Bool)

(assert (=> start!123570 (=> (not res!965881) (not e!808389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123570 (= res!965881 (validMask!0 mask!2608))))

(assert (=> start!123570 e!808389))

(assert (=> start!123570 true))

(declare-fun array_inv!35978 (array!97460) Bool)

(assert (=> start!123570 (array_inv!35978 a!2831)))

(declare-fun b!1431904 () Bool)

(declare-fun res!965871 () Bool)

(assert (=> b!1431904 (=> (not res!965871) (not e!808389))))

(assert (=> b!1431904 (= res!965871 (and (= (size!47584 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47584 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47584 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431905 () Bool)

(declare-fun e!808386 () Bool)

(assert (=> b!1431905 (= e!808386 e!808388)))

(declare-fun res!965872 () Bool)

(assert (=> b!1431905 (=> (not res!965872) (not e!808388))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431905 (= res!965872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630340 mask!2608) lt!630340 lt!630336 mask!2608) lt!630337))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431905 (= lt!630337 (Intermediate!11334 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431905 (= lt!630340 (select (store (arr!47033 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431905 (= lt!630336 (array!97461 (store (arr!47033 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47584 a!2831)))))

(declare-fun b!1431906 () Bool)

(declare-fun res!965878 () Bool)

(assert (=> b!1431906 (=> (not res!965878) (not e!808388))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1431906 (= res!965878 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431907 () Bool)

(declare-fun res!965874 () Bool)

(assert (=> b!1431907 (=> (not res!965874) (not e!808389))))

(assert (=> b!1431907 (= res!965874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431908 () Bool)

(assert (=> b!1431908 (= e!808389 e!808386)))

(declare-fun res!965880 () Bool)

(assert (=> b!1431908 (=> (not res!965880) (not e!808386))))

(declare-fun lt!630338 () SeekEntryResult!11334)

(assert (=> b!1431908 (= res!965880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47033 a!2831) j!81) mask!2608) (select (arr!47033 a!2831) j!81) a!2831 mask!2608) lt!630338))))

(assert (=> b!1431908 (= lt!630338 (Intermediate!11334 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431909 () Bool)

(declare-fun res!965879 () Bool)

(assert (=> b!1431909 (=> (not res!965879) (not e!808389))))

(assert (=> b!1431909 (= res!965879 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47584 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47584 a!2831))))))

(declare-fun b!1431910 () Bool)

(declare-fun res!965875 () Bool)

(assert (=> b!1431910 (=> (not res!965875) (not e!808388))))

(assert (=> b!1431910 (= res!965875 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47033 a!2831) j!81) a!2831 mask!2608) lt!630338))))

(assert (= (and start!123570 res!965881) b!1431904))

(assert (= (and b!1431904 res!965871) b!1431897))

(assert (= (and b!1431897 res!965883) b!1431901))

(assert (= (and b!1431901 res!965870) b!1431907))

(assert (= (and b!1431907 res!965874) b!1431903))

(assert (= (and b!1431903 res!965876) b!1431909))

(assert (= (and b!1431909 res!965879) b!1431908))

(assert (= (and b!1431908 res!965880) b!1431905))

(assert (= (and b!1431905 res!965872) b!1431910))

(assert (= (and b!1431910 res!965875) b!1431899))

(assert (= (and b!1431899 res!965873) b!1431906))

(assert (= (and b!1431906 res!965878) b!1431900))

(assert (= (and b!1431900 res!965882) b!1431902))

(assert (= (and b!1431900 (not res!965877)) b!1431898))

(declare-fun m!1321741 () Bool)

(assert (=> b!1431905 m!1321741))

(assert (=> b!1431905 m!1321741))

(declare-fun m!1321743 () Bool)

(assert (=> b!1431905 m!1321743))

(declare-fun m!1321745 () Bool)

(assert (=> b!1431905 m!1321745))

(declare-fun m!1321747 () Bool)

(assert (=> b!1431905 m!1321747))

(declare-fun m!1321749 () Bool)

(assert (=> b!1431910 m!1321749))

(assert (=> b!1431910 m!1321749))

(declare-fun m!1321751 () Bool)

(assert (=> b!1431910 m!1321751))

(assert (=> b!1431902 m!1321749))

(assert (=> b!1431902 m!1321749))

(declare-fun m!1321753 () Bool)

(assert (=> b!1431902 m!1321753))

(declare-fun m!1321755 () Bool)

(assert (=> b!1431903 m!1321755))

(assert (=> b!1431900 m!1321745))

(declare-fun m!1321757 () Bool)

(assert (=> b!1431900 m!1321757))

(declare-fun m!1321759 () Bool)

(assert (=> b!1431900 m!1321759))

(declare-fun m!1321761 () Bool)

(assert (=> b!1431900 m!1321761))

(assert (=> b!1431900 m!1321749))

(declare-fun m!1321763 () Bool)

(assert (=> b!1431900 m!1321763))

(assert (=> b!1431908 m!1321749))

(assert (=> b!1431908 m!1321749))

(declare-fun m!1321765 () Bool)

(assert (=> b!1431908 m!1321765))

(assert (=> b!1431908 m!1321765))

(assert (=> b!1431908 m!1321749))

(declare-fun m!1321767 () Bool)

(assert (=> b!1431908 m!1321767))

(declare-fun m!1321769 () Bool)

(assert (=> b!1431898 m!1321769))

(declare-fun m!1321771 () Bool)

(assert (=> b!1431899 m!1321771))

(declare-fun m!1321773 () Bool)

(assert (=> b!1431897 m!1321773))

(assert (=> b!1431897 m!1321773))

(declare-fun m!1321775 () Bool)

(assert (=> b!1431897 m!1321775))

(declare-fun m!1321777 () Bool)

(assert (=> start!123570 m!1321777))

(declare-fun m!1321779 () Bool)

(assert (=> start!123570 m!1321779))

(assert (=> b!1431901 m!1321749))

(assert (=> b!1431901 m!1321749))

(declare-fun m!1321781 () Bool)

(assert (=> b!1431901 m!1321781))

(declare-fun m!1321783 () Bool)

(assert (=> b!1431907 m!1321783))

(check-sat (not b!1431897) (not b!1431898) (not b!1431910) (not b!1431907) (not b!1431903) (not b!1431900) (not start!123570) (not b!1431901) (not b!1431899) (not b!1431902) (not b!1431905) (not b!1431908))
(check-sat)
