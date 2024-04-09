; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123190 () Bool)

(assert start!123190)

(declare-fun b!1427845 () Bool)

(declare-fun res!962785 () Bool)

(declare-fun e!806470 () Bool)

(assert (=> b!1427845 (=> (not res!962785) (not e!806470))))

(declare-datatypes ((array!97320 0))(
  ( (array!97321 (arr!46969 (Array (_ BitVec 32) (_ BitVec 64))) (size!47520 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97320)

(declare-datatypes ((List!33659 0))(
  ( (Nil!33656) (Cons!33655 (h!34966 (_ BitVec 64)) (t!48360 List!33659)) )
))
(declare-fun arrayNoDuplicates!0 (array!97320 (_ BitVec 32) List!33659) Bool)

(assert (=> b!1427845 (= res!962785 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33656))))

(declare-fun b!1427846 () Bool)

(declare-fun res!962784 () Bool)

(declare-fun e!806473 () Bool)

(assert (=> b!1427846 (=> (not res!962784) (not e!806473))))

(declare-fun lt!628711 () array!97320)

(declare-datatypes ((SeekEntryResult!11270 0))(
  ( (MissingZero!11270 (index!47471 (_ BitVec 32))) (Found!11270 (index!47472 (_ BitVec 32))) (Intermediate!11270 (undefined!12082 Bool) (index!47473 (_ BitVec 32)) (x!129117 (_ BitVec 32))) (Undefined!11270) (MissingVacant!11270 (index!47474 (_ BitVec 32))) )
))
(declare-fun lt!628712 () SeekEntryResult!11270)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!628713 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97320 (_ BitVec 32)) SeekEntryResult!11270)

(assert (=> b!1427846 (= res!962784 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628713 lt!628711 mask!2608) lt!628712))))

(declare-fun b!1427847 () Bool)

(declare-fun res!962787 () Bool)

(assert (=> b!1427847 (=> (not res!962787) (not e!806470))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1427847 (= res!962787 (and (= (size!47520 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47520 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47520 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1427848 () Bool)

(declare-fun res!962796 () Bool)

(assert (=> b!1427848 (=> (not res!962796) (not e!806473))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427848 (= res!962796 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427849 () Bool)

(declare-fun res!962789 () Bool)

(assert (=> b!1427849 (=> (not res!962789) (not e!806473))))

(declare-fun lt!628714 () SeekEntryResult!11270)

(assert (=> b!1427849 (= res!962789 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46969 a!2831) j!81) a!2831 mask!2608) lt!628714))))

(declare-fun b!1427850 () Bool)

(declare-fun e!806471 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97320 (_ BitVec 32)) SeekEntryResult!11270)

(assert (=> b!1427850 (= e!806471 (= (seekEntryOrOpen!0 (select (arr!46969 a!2831) j!81) a!2831 mask!2608) (Found!11270 j!81)))))

(declare-fun res!962790 () Bool)

(assert (=> start!123190 (=> (not res!962790) (not e!806470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123190 (= res!962790 (validMask!0 mask!2608))))

(assert (=> start!123190 e!806470))

(assert (=> start!123190 true))

(declare-fun array_inv!35914 (array!97320) Bool)

(assert (=> start!123190 (array_inv!35914 a!2831)))

(declare-fun b!1427851 () Bool)

(declare-fun res!962792 () Bool)

(assert (=> b!1427851 (=> (not res!962792) (not e!806470))))

(assert (=> b!1427851 (= res!962792 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47520 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47520 a!2831))))))

(declare-fun b!1427852 () Bool)

(declare-fun e!806474 () Bool)

(assert (=> b!1427852 (= e!806474 e!806473)))

(declare-fun res!962795 () Bool)

(assert (=> b!1427852 (=> (not res!962795) (not e!806473))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427852 (= res!962795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628713 mask!2608) lt!628713 lt!628711 mask!2608) lt!628712))))

(assert (=> b!1427852 (= lt!628712 (Intermediate!11270 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427852 (= lt!628713 (select (store (arr!46969 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427852 (= lt!628711 (array!97321 (store (arr!46969 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47520 a!2831)))))

(declare-fun b!1427853 () Bool)

(assert (=> b!1427853 (= e!806473 (not true))))

(assert (=> b!1427853 e!806471))

(declare-fun res!962786 () Bool)

(assert (=> b!1427853 (=> (not res!962786) (not e!806471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97320 (_ BitVec 32)) Bool)

(assert (=> b!1427853 (= res!962786 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48234 0))(
  ( (Unit!48235) )
))
(declare-fun lt!628710 () Unit!48234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97320 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48234)

(assert (=> b!1427853 (= lt!628710 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427854 () Bool)

(declare-fun res!962794 () Bool)

(assert (=> b!1427854 (=> (not res!962794) (not e!806470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427854 (= res!962794 (validKeyInArray!0 (select (arr!46969 a!2831) j!81)))))

(declare-fun b!1427855 () Bool)

(declare-fun res!962793 () Bool)

(assert (=> b!1427855 (=> (not res!962793) (not e!806470))))

(assert (=> b!1427855 (= res!962793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427856 () Bool)

(declare-fun res!962791 () Bool)

(assert (=> b!1427856 (=> (not res!962791) (not e!806470))))

(assert (=> b!1427856 (= res!962791 (validKeyInArray!0 (select (arr!46969 a!2831) i!982)))))

(declare-fun b!1427857 () Bool)

(assert (=> b!1427857 (= e!806470 e!806474)))

(declare-fun res!962788 () Bool)

(assert (=> b!1427857 (=> (not res!962788) (not e!806474))))

(assert (=> b!1427857 (= res!962788 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46969 a!2831) j!81) mask!2608) (select (arr!46969 a!2831) j!81) a!2831 mask!2608) lt!628714))))

(assert (=> b!1427857 (= lt!628714 (Intermediate!11270 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123190 res!962790) b!1427847))

(assert (= (and b!1427847 res!962787) b!1427856))

(assert (= (and b!1427856 res!962791) b!1427854))

(assert (= (and b!1427854 res!962794) b!1427855))

(assert (= (and b!1427855 res!962793) b!1427845))

(assert (= (and b!1427845 res!962785) b!1427851))

(assert (= (and b!1427851 res!962792) b!1427857))

(assert (= (and b!1427857 res!962788) b!1427852))

(assert (= (and b!1427852 res!962795) b!1427849))

(assert (= (and b!1427849 res!962789) b!1427846))

(assert (= (and b!1427846 res!962784) b!1427848))

(assert (= (and b!1427848 res!962796) b!1427853))

(assert (= (and b!1427853 res!962786) b!1427850))

(declare-fun m!1318151 () Bool)

(assert (=> b!1427850 m!1318151))

(assert (=> b!1427850 m!1318151))

(declare-fun m!1318153 () Bool)

(assert (=> b!1427850 m!1318153))

(declare-fun m!1318155 () Bool)

(assert (=> b!1427855 m!1318155))

(declare-fun m!1318157 () Bool)

(assert (=> b!1427845 m!1318157))

(declare-fun m!1318159 () Bool)

(assert (=> b!1427856 m!1318159))

(assert (=> b!1427856 m!1318159))

(declare-fun m!1318161 () Bool)

(assert (=> b!1427856 m!1318161))

(declare-fun m!1318163 () Bool)

(assert (=> b!1427852 m!1318163))

(assert (=> b!1427852 m!1318163))

(declare-fun m!1318165 () Bool)

(assert (=> b!1427852 m!1318165))

(declare-fun m!1318167 () Bool)

(assert (=> b!1427852 m!1318167))

(declare-fun m!1318169 () Bool)

(assert (=> b!1427852 m!1318169))

(declare-fun m!1318171 () Bool)

(assert (=> b!1427846 m!1318171))

(declare-fun m!1318173 () Bool)

(assert (=> b!1427853 m!1318173))

(declare-fun m!1318175 () Bool)

(assert (=> b!1427853 m!1318175))

(assert (=> b!1427854 m!1318151))

(assert (=> b!1427854 m!1318151))

(declare-fun m!1318177 () Bool)

(assert (=> b!1427854 m!1318177))

(assert (=> b!1427849 m!1318151))

(assert (=> b!1427849 m!1318151))

(declare-fun m!1318179 () Bool)

(assert (=> b!1427849 m!1318179))

(assert (=> b!1427857 m!1318151))

(assert (=> b!1427857 m!1318151))

(declare-fun m!1318181 () Bool)

(assert (=> b!1427857 m!1318181))

(assert (=> b!1427857 m!1318181))

(assert (=> b!1427857 m!1318151))

(declare-fun m!1318183 () Bool)

(assert (=> b!1427857 m!1318183))

(declare-fun m!1318185 () Bool)

(assert (=> start!123190 m!1318185))

(declare-fun m!1318187 () Bool)

(assert (=> start!123190 m!1318187))

(push 1)

