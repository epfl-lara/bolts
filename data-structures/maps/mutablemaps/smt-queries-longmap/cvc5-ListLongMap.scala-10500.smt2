; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123616 () Bool)

(assert start!123616)

(declare-fun b!1432863 () Bool)

(declare-fun e!808805 () Bool)

(declare-fun e!808800 () Bool)

(assert (=> b!1432863 (= e!808805 (not e!808800))))

(declare-fun res!966849 () Bool)

(assert (=> b!1432863 (=> res!966849 e!808800)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97506 0))(
  ( (array!97507 (arr!47056 (Array (_ BitVec 32) (_ BitVec 64))) (size!47607 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97506)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432863 (= res!966849 (or (= (select (arr!47056 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47056 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47056 a!2831) index!585) (select (arr!47056 a!2831) j!81)) (= (select (store (arr!47056 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808802 () Bool)

(assert (=> b!1432863 e!808802))

(declare-fun res!966848 () Bool)

(assert (=> b!1432863 (=> (not res!966848) (not e!808802))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97506 (_ BitVec 32)) Bool)

(assert (=> b!1432863 (= res!966848 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48408 0))(
  ( (Unit!48409) )
))
(declare-fun lt!630752 () Unit!48408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48408)

(assert (=> b!1432863 (= lt!630752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432864 () Bool)

(declare-fun res!966844 () Bool)

(declare-fun e!808801 () Bool)

(assert (=> b!1432864 (=> (not res!966844) (not e!808801))))

(declare-datatypes ((List!33746 0))(
  ( (Nil!33743) (Cons!33742 (h!35065 (_ BitVec 64)) (t!48447 List!33746)) )
))
(declare-fun arrayNoDuplicates!0 (array!97506 (_ BitVec 32) List!33746) Bool)

(assert (=> b!1432864 (= res!966844 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33743))))

(declare-fun b!1432866 () Bool)

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1432866 (= e!808800 (and (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110)))))

(declare-fun lt!630749 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432866 (= lt!630749 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432867 () Bool)

(declare-fun res!966843 () Bool)

(assert (=> b!1432867 (=> (not res!966843) (not e!808805))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432867 (= res!966843 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432868 () Bool)

(declare-fun e!808804 () Bool)

(assert (=> b!1432868 (= e!808801 e!808804)))

(declare-fun res!966847 () Bool)

(assert (=> b!1432868 (=> (not res!966847) (not e!808804))))

(declare-datatypes ((SeekEntryResult!11357 0))(
  ( (MissingZero!11357 (index!47819 (_ BitVec 32))) (Found!11357 (index!47820 (_ BitVec 32))) (Intermediate!11357 (undefined!12169 Bool) (index!47821 (_ BitVec 32)) (x!129466 (_ BitVec 32))) (Undefined!11357) (MissingVacant!11357 (index!47822 (_ BitVec 32))) )
))
(declare-fun lt!630751 () SeekEntryResult!11357)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97506 (_ BitVec 32)) SeekEntryResult!11357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432868 (= res!966847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) (select (arr!47056 a!2831) j!81) a!2831 mask!2608) lt!630751))))

(assert (=> b!1432868 (= lt!630751 (Intermediate!11357 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432869 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97506 (_ BitVec 32)) SeekEntryResult!11357)

(assert (=> b!1432869 (= e!808802 (= (seekEntryOrOpen!0 (select (arr!47056 a!2831) j!81) a!2831 mask!2608) (Found!11357 j!81)))))

(declare-fun res!966842 () Bool)

(assert (=> start!123616 (=> (not res!966842) (not e!808801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123616 (= res!966842 (validMask!0 mask!2608))))

(assert (=> start!123616 e!808801))

(assert (=> start!123616 true))

(declare-fun array_inv!36001 (array!97506) Bool)

(assert (=> start!123616 (array_inv!36001 a!2831)))

(declare-fun b!1432865 () Bool)

(declare-fun res!966839 () Bool)

(assert (=> b!1432865 (=> (not res!966839) (not e!808801))))

(assert (=> b!1432865 (= res!966839 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47607 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47607 a!2831))))))

(declare-fun b!1432870 () Bool)

(declare-fun res!966840 () Bool)

(assert (=> b!1432870 (=> (not res!966840) (not e!808801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432870 (= res!966840 (validKeyInArray!0 (select (arr!47056 a!2831) i!982)))))

(declare-fun b!1432871 () Bool)

(declare-fun res!966836 () Bool)

(assert (=> b!1432871 (=> (not res!966836) (not e!808805))))

(assert (=> b!1432871 (= res!966836 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47056 a!2831) j!81) a!2831 mask!2608) lt!630751))))

(declare-fun b!1432872 () Bool)

(declare-fun res!966838 () Bool)

(assert (=> b!1432872 (=> (not res!966838) (not e!808801))))

(assert (=> b!1432872 (= res!966838 (and (= (size!47607 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47607 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47607 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432873 () Bool)

(assert (=> b!1432873 (= e!808804 e!808805)))

(declare-fun res!966846 () Bool)

(assert (=> b!1432873 (=> (not res!966846) (not e!808805))))

(declare-fun lt!630753 () SeekEntryResult!11357)

(declare-fun lt!630750 () (_ BitVec 64))

(declare-fun lt!630754 () array!97506)

(assert (=> b!1432873 (= res!966846 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630750 mask!2608) lt!630750 lt!630754 mask!2608) lt!630753))))

(assert (=> b!1432873 (= lt!630753 (Intermediate!11357 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432873 (= lt!630750 (select (store (arr!47056 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432873 (= lt!630754 (array!97507 (store (arr!47056 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47607 a!2831)))))

(declare-fun b!1432874 () Bool)

(declare-fun res!966837 () Bool)

(assert (=> b!1432874 (=> (not res!966837) (not e!808805))))

(assert (=> b!1432874 (= res!966837 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630750 lt!630754 mask!2608) lt!630753))))

(declare-fun b!1432875 () Bool)

(declare-fun res!966845 () Bool)

(assert (=> b!1432875 (=> (not res!966845) (not e!808801))))

(assert (=> b!1432875 (= res!966845 (validKeyInArray!0 (select (arr!47056 a!2831) j!81)))))

(declare-fun b!1432876 () Bool)

(declare-fun res!966841 () Bool)

(assert (=> b!1432876 (=> (not res!966841) (not e!808801))))

(assert (=> b!1432876 (= res!966841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123616 res!966842) b!1432872))

(assert (= (and b!1432872 res!966838) b!1432870))

(assert (= (and b!1432870 res!966840) b!1432875))

(assert (= (and b!1432875 res!966845) b!1432876))

(assert (= (and b!1432876 res!966841) b!1432864))

(assert (= (and b!1432864 res!966844) b!1432865))

(assert (= (and b!1432865 res!966839) b!1432868))

(assert (= (and b!1432868 res!966847) b!1432873))

(assert (= (and b!1432873 res!966846) b!1432871))

(assert (= (and b!1432871 res!966836) b!1432874))

(assert (= (and b!1432874 res!966837) b!1432867))

(assert (= (and b!1432867 res!966843) b!1432863))

(assert (= (and b!1432863 res!966848) b!1432869))

(assert (= (and b!1432863 (not res!966849)) b!1432866))

(declare-fun m!1322753 () Bool)

(assert (=> b!1432874 m!1322753))

(declare-fun m!1322755 () Bool)

(assert (=> b!1432873 m!1322755))

(assert (=> b!1432873 m!1322755))

(declare-fun m!1322757 () Bool)

(assert (=> b!1432873 m!1322757))

(declare-fun m!1322759 () Bool)

(assert (=> b!1432873 m!1322759))

(declare-fun m!1322761 () Bool)

(assert (=> b!1432873 m!1322761))

(declare-fun m!1322763 () Bool)

(assert (=> b!1432876 m!1322763))

(declare-fun m!1322765 () Bool)

(assert (=> b!1432868 m!1322765))

(assert (=> b!1432868 m!1322765))

(declare-fun m!1322767 () Bool)

(assert (=> b!1432868 m!1322767))

(assert (=> b!1432868 m!1322767))

(assert (=> b!1432868 m!1322765))

(declare-fun m!1322769 () Bool)

(assert (=> b!1432868 m!1322769))

(declare-fun m!1322771 () Bool)

(assert (=> b!1432866 m!1322771))

(assert (=> b!1432875 m!1322765))

(assert (=> b!1432875 m!1322765))

(declare-fun m!1322773 () Bool)

(assert (=> b!1432875 m!1322773))

(declare-fun m!1322775 () Bool)

(assert (=> start!123616 m!1322775))

(declare-fun m!1322777 () Bool)

(assert (=> start!123616 m!1322777))

(declare-fun m!1322779 () Bool)

(assert (=> b!1432864 m!1322779))

(assert (=> b!1432871 m!1322765))

(assert (=> b!1432871 m!1322765))

(declare-fun m!1322781 () Bool)

(assert (=> b!1432871 m!1322781))

(assert (=> b!1432863 m!1322759))

(declare-fun m!1322783 () Bool)

(assert (=> b!1432863 m!1322783))

(declare-fun m!1322785 () Bool)

(assert (=> b!1432863 m!1322785))

(declare-fun m!1322787 () Bool)

(assert (=> b!1432863 m!1322787))

(assert (=> b!1432863 m!1322765))

(declare-fun m!1322789 () Bool)

(assert (=> b!1432863 m!1322789))

(declare-fun m!1322791 () Bool)

(assert (=> b!1432870 m!1322791))

(assert (=> b!1432870 m!1322791))

(declare-fun m!1322793 () Bool)

(assert (=> b!1432870 m!1322793))

(assert (=> b!1432869 m!1322765))

(assert (=> b!1432869 m!1322765))

(declare-fun m!1322795 () Bool)

(assert (=> b!1432869 m!1322795))

(push 1)

(assert (not b!1432866))

(assert (not b!1432875))

(assert (not b!1432871))

(assert (not b!1432874))

(assert (not b!1432873))

(assert (not b!1432876))

(assert (not start!123616))

(assert (not b!1432869))

(assert (not b!1432870))

(assert (not b!1432868))

(assert (not b!1432864))

(assert (not b!1432863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153935 () Bool)

(declare-fun res!966969 () Bool)

(declare-fun e!808897 () Bool)

(assert (=> d!153935 (=> res!966969 e!808897)))

(assert (=> d!153935 (= res!966969 (bvsge #b00000000000000000000000000000000 (size!47607 a!2831)))))

(assert (=> d!153935 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!808897)))

(declare-fun bm!67483 () Bool)

(declare-fun call!67486 () Bool)

(assert (=> bm!67483 (= call!67486 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433044 () Bool)

(declare-fun e!808898 () Bool)

(declare-fun e!808895 () Bool)

(assert (=> b!1433044 (= e!808898 e!808895)))

(declare-fun lt!630832 () (_ BitVec 64))

(assert (=> b!1433044 (= lt!630832 (select (arr!47056 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!630830 () Unit!48408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97506 (_ BitVec 64) (_ BitVec 32)) Unit!48408)

(assert (=> b!1433044 (= lt!630830 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630832 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1433044 (arrayContainsKey!0 a!2831 lt!630832 #b00000000000000000000000000000000)))

(declare-fun lt!630831 () Unit!48408)

(assert (=> b!1433044 (= lt!630831 lt!630830)))

(declare-fun res!966968 () Bool)

(assert (=> b!1433044 (= res!966968 (= (seekEntryOrOpen!0 (select (arr!47056 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11357 #b00000000000000000000000000000000)))))

(assert (=> b!1433044 (=> (not res!966968) (not e!808895))))

(declare-fun b!1433045 () Bool)

(assert (=> b!1433045 (= e!808895 call!67486)))

(declare-fun b!1433046 () Bool)

(assert (=> b!1433046 (= e!808898 call!67486)))

(declare-fun b!1433047 () Bool)

(assert (=> b!1433047 (= e!808897 e!808898)))

(declare-fun c!132538 () Bool)

(assert (=> b!1433047 (= c!132538 (validKeyInArray!0 (select (arr!47056 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153935 (not res!966969)) b!1433047))

(assert (= (and b!1433047 c!132538) b!1433044))

(assert (= (and b!1433047 (not c!132538)) b!1433046))

(assert (= (and b!1433044 res!966968) b!1433045))

(assert (= (or b!1433045 b!1433046) bm!67483))

(declare-fun m!1322923 () Bool)

(assert (=> bm!67483 m!1322923))

(declare-fun m!1322925 () Bool)

(assert (=> b!1433044 m!1322925))

(declare-fun m!1322927 () Bool)

(assert (=> b!1433044 m!1322927))

(declare-fun m!1322929 () Bool)

(assert (=> b!1433044 m!1322929))

(assert (=> b!1433044 m!1322925))

(declare-fun m!1322931 () Bool)

(assert (=> b!1433044 m!1322931))

(assert (=> b!1433047 m!1322925))

(assert (=> b!1433047 m!1322925))

(declare-fun m!1322933 () Bool)

(assert (=> b!1433047 m!1322933))

(assert (=> b!1432876 d!153935))

(declare-fun d!153939 () Bool)

(declare-fun lt!630835 () (_ BitVec 32))

(assert (=> d!153939 (and (bvsge lt!630835 #b00000000000000000000000000000000) (bvslt lt!630835 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!153939 (= lt!630835 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!153939 (validMask!0 mask!2608)))

(assert (=> d!153939 (= (nextIndex!0 index!585 x!605 mask!2608) lt!630835)))

(declare-fun bs!41727 () Bool)

(assert (= bs!41727 d!153939))

(declare-fun m!1322935 () Bool)

(assert (=> bs!41727 m!1322935))

(assert (=> bs!41727 m!1322775))

(assert (=> b!1432866 d!153939))

(declare-fun d!153941 () Bool)

(assert (=> d!153941 (= (validKeyInArray!0 (select (arr!47056 a!2831) i!982)) (and (not (= (select (arr!47056 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47056 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432870 d!153941))

(declare-fun b!1433124 () Bool)

(declare-fun lt!630868 () SeekEntryResult!11357)

(assert (=> b!1433124 (and (bvsge (index!47821 lt!630868) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630868) (size!47607 a!2831)))))

(declare-fun res!967001 () Bool)

(assert (=> b!1433124 (= res!967001 (= (select (arr!47056 a!2831) (index!47821 lt!630868)) (select (arr!47056 a!2831) j!81)))))

(declare-fun e!808948 () Bool)

(assert (=> b!1433124 (=> res!967001 e!808948)))

(declare-fun e!808946 () Bool)

(assert (=> b!1433124 (= e!808946 e!808948)))

(declare-fun b!1433125 () Bool)

(declare-fun e!808945 () SeekEntryResult!11357)

(declare-fun e!808944 () SeekEntryResult!11357)

(assert (=> b!1433125 (= e!808945 e!808944)))

(declare-fun lt!630869 () (_ BitVec 64))

(declare-fun c!132562 () Bool)

(assert (=> b!1433125 (= c!132562 (or (= lt!630869 (select (arr!47056 a!2831) j!81)) (= (bvadd lt!630869 lt!630869) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433126 () Bool)

(assert (=> b!1433126 (= e!808944 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47056 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433127 () Bool)

(assert (=> b!1433127 (= e!808945 (Intermediate!11357 true (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153943 () Bool)

(declare-fun e!808947 () Bool)

(assert (=> d!153943 e!808947))

(declare-fun c!132563 () Bool)

(assert (=> d!153943 (= c!132563 (and (is-Intermediate!11357 lt!630868) (undefined!12169 lt!630868)))))

(assert (=> d!153943 (= lt!630868 e!808945)))

(declare-fun c!132564 () Bool)

(assert (=> d!153943 (= c!132564 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153943 (= lt!630869 (select (arr!47056 a!2831) (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608)))))

(assert (=> d!153943 (validMask!0 mask!2608)))

(assert (=> d!153943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) (select (arr!47056 a!2831) j!81) a!2831 mask!2608) lt!630868)))

(declare-fun b!1433128 () Bool)

(assert (=> b!1433128 (= e!808947 e!808946)))

(declare-fun res!967002 () Bool)

(assert (=> b!1433128 (= res!967002 (and (is-Intermediate!11357 lt!630868) (not (undefined!12169 lt!630868)) (bvslt (x!129466 lt!630868) #b01111111111111111111111111111110) (bvsge (x!129466 lt!630868) #b00000000000000000000000000000000) (bvsge (x!129466 lt!630868) #b00000000000000000000000000000000)))))

(assert (=> b!1433128 (=> (not res!967002) (not e!808946))))

(declare-fun b!1433129 () Bool)

(assert (=> b!1433129 (= e!808944 (Intermediate!11357 false (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433130 () Bool)

(assert (=> b!1433130 (= e!808947 (bvsge (x!129466 lt!630868) #b01111111111111111111111111111110))))

(declare-fun b!1433131 () Bool)

(assert (=> b!1433131 (and (bvsge (index!47821 lt!630868) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630868) (size!47607 a!2831)))))

(declare-fun res!967003 () Bool)

(assert (=> b!1433131 (= res!967003 (= (select (arr!47056 a!2831) (index!47821 lt!630868)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433131 (=> res!967003 e!808948)))

(declare-fun b!1433132 () Bool)

(assert (=> b!1433132 (and (bvsge (index!47821 lt!630868) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630868) (size!47607 a!2831)))))

(assert (=> b!1433132 (= e!808948 (= (select (arr!47056 a!2831) (index!47821 lt!630868)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153943 c!132564) b!1433127))

(assert (= (and d!153943 (not c!132564)) b!1433125))

(assert (= (and b!1433125 c!132562) b!1433129))

(assert (= (and b!1433125 (not c!132562)) b!1433126))

(assert (= (and d!153943 c!132563) b!1433130))

(assert (= (and d!153943 (not c!132563)) b!1433128))

(assert (= (and b!1433128 res!967002) b!1433124))

(assert (= (and b!1433124 (not res!967001)) b!1433131))

(assert (= (and b!1433131 (not res!967003)) b!1433132))

(declare-fun m!1322969 () Bool)

(assert (=> b!1433132 m!1322969))

(assert (=> d!153943 m!1322767))

(declare-fun m!1322971 () Bool)

(assert (=> d!153943 m!1322971))

(assert (=> d!153943 m!1322775))

(assert (=> b!1433124 m!1322969))

(assert (=> b!1433131 m!1322969))

(assert (=> b!1433126 m!1322767))

(declare-fun m!1322973 () Bool)

(assert (=> b!1433126 m!1322973))

(assert (=> b!1433126 m!1322973))

(assert (=> b!1433126 m!1322765))

(declare-fun m!1322975 () Bool)

(assert (=> b!1433126 m!1322975))

(assert (=> b!1432868 d!153943))

(declare-fun d!153965 () Bool)

(declare-fun lt!630884 () (_ BitVec 32))

(declare-fun lt!630883 () (_ BitVec 32))

(assert (=> d!153965 (= lt!630884 (bvmul (bvxor lt!630883 (bvlshr lt!630883 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153965 (= lt!630883 ((_ extract 31 0) (bvand (bvxor (select (arr!47056 a!2831) j!81) (bvlshr (select (arr!47056 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153965 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967004 (let ((h!35070 ((_ extract 31 0) (bvand (bvxor (select (arr!47056 a!2831) j!81) (bvlshr (select (arr!47056 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129476 (bvmul (bvxor h!35070 (bvlshr h!35070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129476 (bvlshr x!129476 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967004 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967004 #b00000000000000000000000000000000))))))

(assert (=> d!153965 (= (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) (bvand (bvxor lt!630884 (bvlshr lt!630884 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1432868 d!153965))

(declare-fun b!1433172 () Bool)

(declare-fun e!808971 () SeekEntryResult!11357)

(declare-fun lt!630897 () SeekEntryResult!11357)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97506 (_ BitVec 32)) SeekEntryResult!11357)

(assert (=> b!1433172 (= e!808971 (seekKeyOrZeroReturnVacant!0 (x!129466 lt!630897) (index!47821 lt!630897) (index!47821 lt!630897) (select (arr!47056 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433174 () Bool)

(declare-fun e!808969 () SeekEntryResult!11357)

(declare-fun e!808970 () SeekEntryResult!11357)

(assert (=> b!1433174 (= e!808969 e!808970)))

(declare-fun lt!630898 () (_ BitVec 64))

(assert (=> b!1433174 (= lt!630898 (select (arr!47056 a!2831) (index!47821 lt!630897)))))

(declare-fun c!132584 () Bool)

(assert (=> b!1433174 (= c!132584 (= lt!630898 (select (arr!47056 a!2831) j!81)))))

(declare-fun b!1433175 () Bool)

(assert (=> b!1433175 (= e!808971 (MissingZero!11357 (index!47821 lt!630897)))))

(declare-fun d!153969 () Bool)

(declare-fun lt!630896 () SeekEntryResult!11357)

(assert (=> d!153969 (and (or (is-Undefined!11357 lt!630896) (not (is-Found!11357 lt!630896)) (and (bvsge (index!47820 lt!630896) #b00000000000000000000000000000000) (bvslt (index!47820 lt!630896) (size!47607 a!2831)))) (or (is-Undefined!11357 lt!630896) (is-Found!11357 lt!630896) (not (is-MissingZero!11357 lt!630896)) (and (bvsge (index!47819 lt!630896) #b00000000000000000000000000000000) (bvslt (index!47819 lt!630896) (size!47607 a!2831)))) (or (is-Undefined!11357 lt!630896) (is-Found!11357 lt!630896) (is-MissingZero!11357 lt!630896) (not (is-MissingVacant!11357 lt!630896)) (and (bvsge (index!47822 lt!630896) #b00000000000000000000000000000000) (bvslt (index!47822 lt!630896) (size!47607 a!2831)))) (or (is-Undefined!11357 lt!630896) (ite (is-Found!11357 lt!630896) (= (select (arr!47056 a!2831) (index!47820 lt!630896)) (select (arr!47056 a!2831) j!81)) (ite (is-MissingZero!11357 lt!630896) (= (select (arr!47056 a!2831) (index!47819 lt!630896)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11357 lt!630896) (= (select (arr!47056 a!2831) (index!47822 lt!630896)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153969 (= lt!630896 e!808969)))

(declare-fun c!132583 () Bool)

(assert (=> d!153969 (= c!132583 (and (is-Intermediate!11357 lt!630897) (undefined!12169 lt!630897)))))

(assert (=> d!153969 (= lt!630897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47056 a!2831) j!81) mask!2608) (select (arr!47056 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153969 (validMask!0 mask!2608)))

(assert (=> d!153969 (= (seekEntryOrOpen!0 (select (arr!47056 a!2831) j!81) a!2831 mask!2608) lt!630896)))

(declare-fun b!1433173 () Bool)

(assert (=> b!1433173 (= e!808969 Undefined!11357)))

(declare-fun b!1433176 () Bool)

(assert (=> b!1433176 (= e!808970 (Found!11357 (index!47821 lt!630897)))))

(declare-fun b!1433177 () Bool)

(declare-fun c!132585 () Bool)

(assert (=> b!1433177 (= c!132585 (= lt!630898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433177 (= e!808970 e!808971)))

(assert (= (and d!153969 c!132583) b!1433173))

(assert (= (and d!153969 (not c!132583)) b!1433174))

(assert (= (and b!1433174 c!132584) b!1433176))

(assert (= (and b!1433174 (not c!132584)) b!1433177))

(assert (= (and b!1433177 c!132585) b!1433175))

(assert (= (and b!1433177 (not c!132585)) b!1433172))

(assert (=> b!1433172 m!1322765))

(declare-fun m!1322995 () Bool)

(assert (=> b!1433172 m!1322995))

(declare-fun m!1322997 () Bool)

(assert (=> b!1433174 m!1322997))

(assert (=> d!153969 m!1322765))

(assert (=> d!153969 m!1322767))

(declare-fun m!1322999 () Bool)

(assert (=> d!153969 m!1322999))

(declare-fun m!1323001 () Bool)

(assert (=> d!153969 m!1323001))

(assert (=> d!153969 m!1322767))

(assert (=> d!153969 m!1322765))

(assert (=> d!153969 m!1322769))

(assert (=> d!153969 m!1322775))

(declare-fun m!1323003 () Bool)

(assert (=> d!153969 m!1323003))

(assert (=> b!1432869 d!153969))

(declare-fun b!1433178 () Bool)

(declare-fun lt!630899 () SeekEntryResult!11357)

(assert (=> b!1433178 (and (bvsge (index!47821 lt!630899) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630899) (size!47607 lt!630754)))))

(declare-fun res!967008 () Bool)

(assert (=> b!1433178 (= res!967008 (= (select (arr!47056 lt!630754) (index!47821 lt!630899)) lt!630750))))

(declare-fun e!808976 () Bool)

(assert (=> b!1433178 (=> res!967008 e!808976)))

(declare-fun e!808974 () Bool)

(assert (=> b!1433178 (= e!808974 e!808976)))

(declare-fun b!1433179 () Bool)

(declare-fun e!808973 () SeekEntryResult!11357)

(declare-fun e!808972 () SeekEntryResult!11357)

(assert (=> b!1433179 (= e!808973 e!808972)))

(declare-fun c!132586 () Bool)

(declare-fun lt!630900 () (_ BitVec 64))

(assert (=> b!1433179 (= c!132586 (or (= lt!630900 lt!630750) (= (bvadd lt!630900 lt!630900) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433180 () Bool)

(assert (=> b!1433180 (= e!808972 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!630750 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!630750 lt!630754 mask!2608))))

(declare-fun b!1433181 () Bool)

(assert (=> b!1433181 (= e!808973 (Intermediate!11357 true (toIndex!0 lt!630750 mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153979 () Bool)

(declare-fun e!808975 () Bool)

(assert (=> d!153979 e!808975))

(declare-fun c!132587 () Bool)

(assert (=> d!153979 (= c!132587 (and (is-Intermediate!11357 lt!630899) (undefined!12169 lt!630899)))))

(assert (=> d!153979 (= lt!630899 e!808973)))

(declare-fun c!132588 () Bool)

(assert (=> d!153979 (= c!132588 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153979 (= lt!630900 (select (arr!47056 lt!630754) (toIndex!0 lt!630750 mask!2608)))))

(assert (=> d!153979 (validMask!0 mask!2608)))

(assert (=> d!153979 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630750 mask!2608) lt!630750 lt!630754 mask!2608) lt!630899)))

(declare-fun b!1433182 () Bool)

(assert (=> b!1433182 (= e!808975 e!808974)))

(declare-fun res!967009 () Bool)

(assert (=> b!1433182 (= res!967009 (and (is-Intermediate!11357 lt!630899) (not (undefined!12169 lt!630899)) (bvslt (x!129466 lt!630899) #b01111111111111111111111111111110) (bvsge (x!129466 lt!630899) #b00000000000000000000000000000000) (bvsge (x!129466 lt!630899) #b00000000000000000000000000000000)))))

(assert (=> b!1433182 (=> (not res!967009) (not e!808974))))

(declare-fun b!1433183 () Bool)

(assert (=> b!1433183 (= e!808972 (Intermediate!11357 false (toIndex!0 lt!630750 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433184 () Bool)

(assert (=> b!1433184 (= e!808975 (bvsge (x!129466 lt!630899) #b01111111111111111111111111111110))))

(declare-fun b!1433185 () Bool)

(assert (=> b!1433185 (and (bvsge (index!47821 lt!630899) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630899) (size!47607 lt!630754)))))

(declare-fun res!967010 () Bool)

(assert (=> b!1433185 (= res!967010 (= (select (arr!47056 lt!630754) (index!47821 lt!630899)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433185 (=> res!967010 e!808976)))

(declare-fun b!1433186 () Bool)

(assert (=> b!1433186 (and (bvsge (index!47821 lt!630899) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630899) (size!47607 lt!630754)))))

(assert (=> b!1433186 (= e!808976 (= (select (arr!47056 lt!630754) (index!47821 lt!630899)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153979 c!132588) b!1433181))

(assert (= (and d!153979 (not c!132588)) b!1433179))

(assert (= (and b!1433179 c!132586) b!1433183))

(assert (= (and b!1433179 (not c!132586)) b!1433180))

(assert (= (and d!153979 c!132587) b!1433184))

(assert (= (and d!153979 (not c!132587)) b!1433182))

(assert (= (and b!1433182 res!967009) b!1433178))

(assert (= (and b!1433178 (not res!967008)) b!1433185))

(assert (= (and b!1433185 (not res!967010)) b!1433186))

(declare-fun m!1323005 () Bool)

(assert (=> b!1433186 m!1323005))

(assert (=> d!153979 m!1322755))

(declare-fun m!1323007 () Bool)

(assert (=> d!153979 m!1323007))

(assert (=> d!153979 m!1322775))

(assert (=> b!1433178 m!1323005))

(assert (=> b!1433185 m!1323005))

(assert (=> b!1433180 m!1322755))

(declare-fun m!1323009 () Bool)

(assert (=> b!1433180 m!1323009))

(assert (=> b!1433180 m!1323009))

(declare-fun m!1323011 () Bool)

(assert (=> b!1433180 m!1323011))

(assert (=> b!1432873 d!153979))

(declare-fun d!153981 () Bool)

(declare-fun lt!630902 () (_ BitVec 32))

(declare-fun lt!630901 () (_ BitVec 32))

(assert (=> d!153981 (= lt!630902 (bvmul (bvxor lt!630901 (bvlshr lt!630901 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153981 (= lt!630901 ((_ extract 31 0) (bvand (bvxor lt!630750 (bvlshr lt!630750 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153981 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967004 (let ((h!35070 ((_ extract 31 0) (bvand (bvxor lt!630750 (bvlshr lt!630750 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129476 (bvmul (bvxor h!35070 (bvlshr h!35070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129476 (bvlshr x!129476 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967004 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967004 #b00000000000000000000000000000000))))))

(assert (=> d!153981 (= (toIndex!0 lt!630750 mask!2608) (bvand (bvxor lt!630902 (bvlshr lt!630902 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1432873 d!153981))

(declare-fun b!1433187 () Bool)

(declare-fun lt!630903 () SeekEntryResult!11357)

(assert (=> b!1433187 (and (bvsge (index!47821 lt!630903) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630903) (size!47607 a!2831)))))

(declare-fun res!967011 () Bool)

(assert (=> b!1433187 (= res!967011 (= (select (arr!47056 a!2831) (index!47821 lt!630903)) (select (arr!47056 a!2831) j!81)))))

(declare-fun e!808981 () Bool)

(assert (=> b!1433187 (=> res!967011 e!808981)))

(declare-fun e!808979 () Bool)

(assert (=> b!1433187 (= e!808979 e!808981)))

(declare-fun b!1433188 () Bool)

(declare-fun e!808978 () SeekEntryResult!11357)

(declare-fun e!808977 () SeekEntryResult!11357)

(assert (=> b!1433188 (= e!808978 e!808977)))

(declare-fun c!132589 () Bool)

(declare-fun lt!630904 () (_ BitVec 64))

(assert (=> b!1433188 (= c!132589 (or (= lt!630904 (select (arr!47056 a!2831) j!81)) (= (bvadd lt!630904 lt!630904) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433189 () Bool)

(assert (=> b!1433189 (= e!808977 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47056 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433190 () Bool)

(assert (=> b!1433190 (= e!808978 (Intermediate!11357 true index!585 x!605))))

(declare-fun d!153983 () Bool)

(declare-fun e!808980 () Bool)

(assert (=> d!153983 e!808980))

(declare-fun c!132590 () Bool)

(assert (=> d!153983 (= c!132590 (and (is-Intermediate!11357 lt!630903) (undefined!12169 lt!630903)))))

(assert (=> d!153983 (= lt!630903 e!808978)))

(declare-fun c!132591 () Bool)

(assert (=> d!153983 (= c!132591 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153983 (= lt!630904 (select (arr!47056 a!2831) index!585))))

(assert (=> d!153983 (validMask!0 mask!2608)))

(assert (=> d!153983 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47056 a!2831) j!81) a!2831 mask!2608) lt!630903)))

(declare-fun b!1433191 () Bool)

(assert (=> b!1433191 (= e!808980 e!808979)))

(declare-fun res!967012 () Bool)

(assert (=> b!1433191 (= res!967012 (and (is-Intermediate!11357 lt!630903) (not (undefined!12169 lt!630903)) (bvslt (x!129466 lt!630903) #b01111111111111111111111111111110) (bvsge (x!129466 lt!630903) #b00000000000000000000000000000000) (bvsge (x!129466 lt!630903) x!605)))))

(assert (=> b!1433191 (=> (not res!967012) (not e!808979))))

(declare-fun b!1433192 () Bool)

(assert (=> b!1433192 (= e!808977 (Intermediate!11357 false index!585 x!605))))

(declare-fun b!1433193 () Bool)

(assert (=> b!1433193 (= e!808980 (bvsge (x!129466 lt!630903) #b01111111111111111111111111111110))))

(declare-fun b!1433194 () Bool)

(assert (=> b!1433194 (and (bvsge (index!47821 lt!630903) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630903) (size!47607 a!2831)))))

(declare-fun res!967013 () Bool)

(assert (=> b!1433194 (= res!967013 (= (select (arr!47056 a!2831) (index!47821 lt!630903)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433194 (=> res!967013 e!808981)))

(declare-fun b!1433195 () Bool)

(assert (=> b!1433195 (and (bvsge (index!47821 lt!630903) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630903) (size!47607 a!2831)))))

(assert (=> b!1433195 (= e!808981 (= (select (arr!47056 a!2831) (index!47821 lt!630903)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153983 c!132591) b!1433190))

(assert (= (and d!153983 (not c!132591)) b!1433188))

(assert (= (and b!1433188 c!132589) b!1433192))

(assert (= (and b!1433188 (not c!132589)) b!1433189))

(assert (= (and d!153983 c!132590) b!1433193))

(assert (= (and d!153983 (not c!132590)) b!1433191))

(assert (= (and b!1433191 res!967012) b!1433187))

(assert (= (and b!1433187 (not res!967011)) b!1433194))

(assert (= (and b!1433194 (not res!967013)) b!1433195))

(declare-fun m!1323013 () Bool)

(assert (=> b!1433195 m!1323013))

(assert (=> d!153983 m!1322785))

(assert (=> d!153983 m!1322775))

(assert (=> b!1433187 m!1323013))

(assert (=> b!1433194 m!1323013))

(assert (=> b!1433189 m!1322771))

(assert (=> b!1433189 m!1322771))

(assert (=> b!1433189 m!1322765))

(declare-fun m!1323015 () Bool)

(assert (=> b!1433189 m!1323015))

(assert (=> b!1432871 d!153983))

(declare-fun d!153985 () Bool)

(assert (=> d!153985 (= (validKeyInArray!0 (select (arr!47056 a!2831) j!81)) (and (not (= (select (arr!47056 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47056 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1432875 d!153985))

(declare-fun b!1433224 () Bool)

(declare-fun e!809002 () Bool)

(declare-fun call!67492 () Bool)

(assert (=> b!1433224 (= e!809002 call!67492)))

(declare-fun d!153987 () Bool)

(declare-fun res!967020 () Bool)

(declare-fun e!809000 () Bool)

(assert (=> d!153987 (=> res!967020 e!809000)))

(assert (=> d!153987 (= res!967020 (bvsge #b00000000000000000000000000000000 (size!47607 a!2831)))))

(assert (=> d!153987 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33743) e!809000)))

(declare-fun b!1433225 () Bool)

(declare-fun e!808999 () Bool)

(assert (=> b!1433225 (= e!809000 e!808999)))

(declare-fun res!967021 () Bool)

(assert (=> b!1433225 (=> (not res!967021) (not e!808999))))

(declare-fun e!809001 () Bool)

(assert (=> b!1433225 (= res!967021 (not e!809001))))

(declare-fun res!967022 () Bool)

(assert (=> b!1433225 (=> (not res!967022) (not e!809001))))

(assert (=> b!1433225 (= res!967022 (validKeyInArray!0 (select (arr!47056 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433226 () Bool)

(declare-fun contains!9878 (List!33746 (_ BitVec 64)) Bool)

(assert (=> b!1433226 (= e!809001 (contains!9878 Nil!33743 (select (arr!47056 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67489 () Bool)

(declare-fun c!132603 () Bool)

(assert (=> bm!67489 (= call!67492 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132603 (Cons!33742 (select (arr!47056 a!2831) #b00000000000000000000000000000000) Nil!33743) Nil!33743)))))

(declare-fun b!1433227 () Bool)

(assert (=> b!1433227 (= e!808999 e!809002)))

(assert (=> b!1433227 (= c!132603 (validKeyInArray!0 (select (arr!47056 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433228 () Bool)

(assert (=> b!1433228 (= e!809002 call!67492)))

(assert (= (and d!153987 (not res!967020)) b!1433225))

(assert (= (and b!1433225 res!967022) b!1433226))

(assert (= (and b!1433225 res!967021) b!1433227))

(assert (= (and b!1433227 c!132603) b!1433224))

(assert (= (and b!1433227 (not c!132603)) b!1433228))

(assert (= (or b!1433224 b!1433228) bm!67489))

(assert (=> b!1433225 m!1322925))

(assert (=> b!1433225 m!1322925))

(assert (=> b!1433225 m!1322933))

(assert (=> b!1433226 m!1322925))

(assert (=> b!1433226 m!1322925))

(declare-fun m!1323027 () Bool)

(assert (=> b!1433226 m!1323027))

(assert (=> bm!67489 m!1322925))

(declare-fun m!1323029 () Bool)

(assert (=> bm!67489 m!1323029))

(assert (=> b!1433227 m!1322925))

(assert (=> b!1433227 m!1322925))

(assert (=> b!1433227 m!1322933))

(assert (=> b!1432864 d!153987))

(declare-fun d!153993 () Bool)

(declare-fun res!967024 () Bool)

(declare-fun e!809004 () Bool)

(assert (=> d!153993 (=> res!967024 e!809004)))

(assert (=> d!153993 (= res!967024 (bvsge j!81 (size!47607 a!2831)))))

(assert (=> d!153993 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809004)))

(declare-fun call!67493 () Bool)

(declare-fun bm!67490 () Bool)

(assert (=> bm!67490 (= call!67493 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433229 () Bool)

(declare-fun e!809005 () Bool)

(declare-fun e!809003 () Bool)

(assert (=> b!1433229 (= e!809005 e!809003)))

(declare-fun lt!630916 () (_ BitVec 64))

(assert (=> b!1433229 (= lt!630916 (select (arr!47056 a!2831) j!81))))

(declare-fun lt!630914 () Unit!48408)

(assert (=> b!1433229 (= lt!630914 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630916 j!81))))

(assert (=> b!1433229 (arrayContainsKey!0 a!2831 lt!630916 #b00000000000000000000000000000000)))

(declare-fun lt!630915 () Unit!48408)

(assert (=> b!1433229 (= lt!630915 lt!630914)))

(declare-fun res!967023 () Bool)

(assert (=> b!1433229 (= res!967023 (= (seekEntryOrOpen!0 (select (arr!47056 a!2831) j!81) a!2831 mask!2608) (Found!11357 j!81)))))

(assert (=> b!1433229 (=> (not res!967023) (not e!809003))))

(declare-fun b!1433230 () Bool)

(assert (=> b!1433230 (= e!809003 call!67493)))

(declare-fun b!1433231 () Bool)

(assert (=> b!1433231 (= e!809005 call!67493)))

(declare-fun b!1433232 () Bool)

(assert (=> b!1433232 (= e!809004 e!809005)))

(declare-fun c!132604 () Bool)

(assert (=> b!1433232 (= c!132604 (validKeyInArray!0 (select (arr!47056 a!2831) j!81)))))

(assert (= (and d!153993 (not res!967024)) b!1433232))

(assert (= (and b!1433232 c!132604) b!1433229))

(assert (= (and b!1433232 (not c!132604)) b!1433231))

(assert (= (and b!1433229 res!967023) b!1433230))

(assert (= (or b!1433230 b!1433231) bm!67490))

(declare-fun m!1323031 () Bool)

(assert (=> bm!67490 m!1323031))

(assert (=> b!1433229 m!1322765))

(declare-fun m!1323033 () Bool)

(assert (=> b!1433229 m!1323033))

(declare-fun m!1323035 () Bool)

(assert (=> b!1433229 m!1323035))

(assert (=> b!1433229 m!1322765))

(assert (=> b!1433229 m!1322795))

(assert (=> b!1433232 m!1322765))

(assert (=> b!1433232 m!1322765))

(assert (=> b!1433232 m!1322773))

(assert (=> b!1432863 d!153993))

(declare-fun d!153995 () Bool)

(assert (=> d!153995 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630919 () Unit!48408)

(declare-fun choose!38 (array!97506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48408)

(assert (=> d!153995 (= lt!630919 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153995 (validMask!0 mask!2608)))

(assert (=> d!153995 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630919)))

(declare-fun bs!41730 () Bool)

(assert (= bs!41730 d!153995))

(assert (=> bs!41730 m!1322787))

(declare-fun m!1323037 () Bool)

(assert (=> bs!41730 m!1323037))

(assert (=> bs!41730 m!1322775))

(assert (=> b!1432863 d!153995))

(declare-fun d!153997 () Bool)

(assert (=> d!153997 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123616 d!153997))

(declare-fun d!154007 () Bool)

(assert (=> d!154007 (= (array_inv!36001 a!2831) (bvsge (size!47607 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123616 d!154007))

(declare-fun b!1433261 () Bool)

(declare-fun lt!630930 () SeekEntryResult!11357)

(assert (=> b!1433261 (and (bvsge (index!47821 lt!630930) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630930) (size!47607 lt!630754)))))

(declare-fun res!967039 () Bool)

(assert (=> b!1433261 (= res!967039 (= (select (arr!47056 lt!630754) (index!47821 lt!630930)) lt!630750))))

(declare-fun e!809030 () Bool)

(assert (=> b!1433261 (=> res!967039 e!809030)))

(declare-fun e!809028 () Bool)

(assert (=> b!1433261 (= e!809028 e!809030)))

(declare-fun b!1433262 () Bool)

(declare-fun e!809027 () SeekEntryResult!11357)

(declare-fun e!809026 () SeekEntryResult!11357)

(assert (=> b!1433262 (= e!809027 e!809026)))

(declare-fun c!132612 () Bool)

(declare-fun lt!630931 () (_ BitVec 64))

(assert (=> b!1433262 (= c!132612 (or (= lt!630931 lt!630750) (= (bvadd lt!630931 lt!630931) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433263 () Bool)

(assert (=> b!1433263 (= e!809026 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!630750 lt!630754 mask!2608))))

(declare-fun b!1433264 () Bool)

(assert (=> b!1433264 (= e!809027 (Intermediate!11357 true index!585 x!605))))

(declare-fun d!154009 () Bool)

(declare-fun e!809029 () Bool)

(assert (=> d!154009 e!809029))

(declare-fun c!132613 () Bool)

(assert (=> d!154009 (= c!132613 (and (is-Intermediate!11357 lt!630930) (undefined!12169 lt!630930)))))

(assert (=> d!154009 (= lt!630930 e!809027)))

(declare-fun c!132614 () Bool)

(assert (=> d!154009 (= c!132614 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154009 (= lt!630931 (select (arr!47056 lt!630754) index!585))))

(assert (=> d!154009 (validMask!0 mask!2608)))

(assert (=> d!154009 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630750 lt!630754 mask!2608) lt!630930)))

(declare-fun b!1433265 () Bool)

(assert (=> b!1433265 (= e!809029 e!809028)))

(declare-fun res!967040 () Bool)

(assert (=> b!1433265 (= res!967040 (and (is-Intermediate!11357 lt!630930) (not (undefined!12169 lt!630930)) (bvslt (x!129466 lt!630930) #b01111111111111111111111111111110) (bvsge (x!129466 lt!630930) #b00000000000000000000000000000000) (bvsge (x!129466 lt!630930) x!605)))))

(assert (=> b!1433265 (=> (not res!967040) (not e!809028))))

(declare-fun b!1433266 () Bool)

(assert (=> b!1433266 (= e!809026 (Intermediate!11357 false index!585 x!605))))

(declare-fun b!1433267 () Bool)

(assert (=> b!1433267 (= e!809029 (bvsge (x!129466 lt!630930) #b01111111111111111111111111111110))))

(declare-fun b!1433268 () Bool)

(assert (=> b!1433268 (and (bvsge (index!47821 lt!630930) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630930) (size!47607 lt!630754)))))

(declare-fun res!967041 () Bool)

(assert (=> b!1433268 (= res!967041 (= (select (arr!47056 lt!630754) (index!47821 lt!630930)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433268 (=> res!967041 e!809030)))

(declare-fun b!1433269 () Bool)

(assert (=> b!1433269 (and (bvsge (index!47821 lt!630930) #b00000000000000000000000000000000) (bvslt (index!47821 lt!630930) (size!47607 lt!630754)))))

(assert (=> b!1433269 (= e!809030 (= (select (arr!47056 lt!630754) (index!47821 lt!630930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154009 c!132614) b!1433264))

(assert (= (and d!154009 (not c!132614)) b!1433262))

(assert (= (and b!1433262 c!132612) b!1433266))

(assert (= (and b!1433262 (not c!132612)) b!1433263))

(assert (= (and d!154009 c!132613) b!1433267))

(assert (= (and d!154009 (not c!132613)) b!1433265))

(assert (= (and b!1433265 res!967040) b!1433261))

(assert (= (and b!1433261 (not res!967039)) b!1433268))

(assert (= (and b!1433268 (not res!967041)) b!1433269))

(declare-fun m!1323065 () Bool)

(assert (=> b!1433269 m!1323065))

(declare-fun m!1323067 () Bool)

(assert (=> d!154009 m!1323067))

(assert (=> d!154009 m!1322775))

(assert (=> b!1433261 m!1323065))

(assert (=> b!1433268 m!1323065))

(assert (=> b!1433263 m!1322771))

(assert (=> b!1433263 m!1322771))

(declare-fun m!1323069 () Bool)

(assert (=> b!1433263 m!1323069))

(assert (=> b!1432874 d!154009))

(push 1)

