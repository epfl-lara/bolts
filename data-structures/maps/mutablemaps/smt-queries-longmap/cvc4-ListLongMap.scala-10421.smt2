; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122732 () Bool)

(assert start!122732)

(declare-fun b!1421310 () Bool)

(declare-fun res!956856 () Bool)

(declare-fun e!803702 () Bool)

(assert (=> b!1421310 (=> (not res!956856) (not e!803702))))

(declare-datatypes ((array!97015 0))(
  ( (array!97016 (arr!46821 (Array (_ BitVec 32) (_ BitVec 64))) (size!47372 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97015)

(declare-datatypes ((List!33511 0))(
  ( (Nil!33508) (Cons!33507 (h!34809 (_ BitVec 64)) (t!48212 List!33511)) )
))
(declare-fun arrayNoDuplicates!0 (array!97015 (_ BitVec 32) List!33511) Bool)

(assert (=> b!1421310 (= res!956856 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33508))))

(declare-fun b!1421311 () Bool)

(declare-fun res!956853 () Bool)

(assert (=> b!1421311 (=> (not res!956853) (not e!803702))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421311 (= res!956853 (and (= (size!47372 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47372 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47372 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421312 () Bool)

(declare-fun e!803704 () Bool)

(declare-fun e!803705 () Bool)

(assert (=> b!1421312 (= e!803704 e!803705)))

(declare-fun res!956859 () Bool)

(assert (=> b!1421312 (=> (not res!956859) (not e!803705))))

(declare-fun lt!626186 () (_ BitVec 64))

(declare-fun lt!626184 () array!97015)

(declare-datatypes ((SeekEntryResult!11128 0))(
  ( (MissingZero!11128 (index!46903 (_ BitVec 32))) (Found!11128 (index!46904 (_ BitVec 32))) (Intermediate!11128 (undefined!11940 Bool) (index!46905 (_ BitVec 32)) (x!128557 (_ BitVec 32))) (Undefined!11128) (MissingVacant!11128 (index!46906 (_ BitVec 32))) )
))
(declare-fun lt!626188 () SeekEntryResult!11128)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97015 (_ BitVec 32)) SeekEntryResult!11128)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421312 (= res!956859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626186 mask!2608) lt!626186 lt!626184 mask!2608) lt!626188))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421312 (= lt!626188 (Intermediate!11128 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421312 (= lt!626186 (select (store (arr!46821 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421312 (= lt!626184 (array!97016 (store (arr!46821 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47372 a!2831)))))

(declare-fun b!1421313 () Bool)

(declare-fun res!956855 () Bool)

(assert (=> b!1421313 (=> (not res!956855) (not e!803702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97015 (_ BitVec 32)) Bool)

(assert (=> b!1421313 (= res!956855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421314 () Bool)

(assert (=> b!1421314 (= e!803702 e!803704)))

(declare-fun res!956857 () Bool)

(assert (=> b!1421314 (=> (not res!956857) (not e!803704))))

(declare-fun lt!626185 () SeekEntryResult!11128)

(assert (=> b!1421314 (= res!956857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46821 a!2831) j!81) mask!2608) (select (arr!46821 a!2831) j!81) a!2831 mask!2608) lt!626185))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421314 (= lt!626185 (Intermediate!11128 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421309 () Bool)

(assert (=> b!1421309 (= e!803705 (not true))))

(assert (=> b!1421309 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48040 0))(
  ( (Unit!48041) )
))
(declare-fun lt!626187 () Unit!48040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48040)

(assert (=> b!1421309 (= lt!626187 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!956854 () Bool)

(assert (=> start!122732 (=> (not res!956854) (not e!803702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122732 (= res!956854 (validMask!0 mask!2608))))

(assert (=> start!122732 e!803702))

(assert (=> start!122732 true))

(declare-fun array_inv!35766 (array!97015) Bool)

(assert (=> start!122732 (array_inv!35766 a!2831)))

(declare-fun b!1421315 () Bool)

(declare-fun res!956862 () Bool)

(assert (=> b!1421315 (=> (not res!956862) (not e!803702))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421315 (= res!956862 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47372 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47372 a!2831))))))

(declare-fun b!1421316 () Bool)

(declare-fun res!956861 () Bool)

(assert (=> b!1421316 (=> (not res!956861) (not e!803705))))

(assert (=> b!1421316 (= res!956861 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421317 () Bool)

(declare-fun res!956858 () Bool)

(assert (=> b!1421317 (=> (not res!956858) (not e!803702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421317 (= res!956858 (validKeyInArray!0 (select (arr!46821 a!2831) i!982)))))

(declare-fun b!1421318 () Bool)

(declare-fun res!956852 () Bool)

(assert (=> b!1421318 (=> (not res!956852) (not e!803705))))

(assert (=> b!1421318 (= res!956852 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46821 a!2831) j!81) a!2831 mask!2608) lt!626185))))

(declare-fun b!1421319 () Bool)

(declare-fun res!956851 () Bool)

(assert (=> b!1421319 (=> (not res!956851) (not e!803705))))

(assert (=> b!1421319 (= res!956851 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626186 lt!626184 mask!2608) lt!626188))))

(declare-fun b!1421320 () Bool)

(declare-fun res!956860 () Bool)

(assert (=> b!1421320 (=> (not res!956860) (not e!803702))))

(assert (=> b!1421320 (= res!956860 (validKeyInArray!0 (select (arr!46821 a!2831) j!81)))))

(assert (= (and start!122732 res!956854) b!1421311))

(assert (= (and b!1421311 res!956853) b!1421317))

(assert (= (and b!1421317 res!956858) b!1421320))

(assert (= (and b!1421320 res!956860) b!1421313))

(assert (= (and b!1421313 res!956855) b!1421310))

(assert (= (and b!1421310 res!956856) b!1421315))

(assert (= (and b!1421315 res!956862) b!1421314))

(assert (= (and b!1421314 res!956857) b!1421312))

(assert (= (and b!1421312 res!956859) b!1421318))

(assert (= (and b!1421318 res!956852) b!1421319))

(assert (= (and b!1421319 res!956851) b!1421316))

(assert (= (and b!1421316 res!956861) b!1421309))

(declare-fun m!1311911 () Bool)

(assert (=> b!1421319 m!1311911))

(declare-fun m!1311913 () Bool)

(assert (=> b!1421317 m!1311913))

(assert (=> b!1421317 m!1311913))

(declare-fun m!1311915 () Bool)

(assert (=> b!1421317 m!1311915))

(declare-fun m!1311917 () Bool)

(assert (=> b!1421313 m!1311917))

(declare-fun m!1311919 () Bool)

(assert (=> b!1421318 m!1311919))

(assert (=> b!1421318 m!1311919))

(declare-fun m!1311921 () Bool)

(assert (=> b!1421318 m!1311921))

(declare-fun m!1311923 () Bool)

(assert (=> start!122732 m!1311923))

(declare-fun m!1311925 () Bool)

(assert (=> start!122732 m!1311925))

(assert (=> b!1421314 m!1311919))

(assert (=> b!1421314 m!1311919))

(declare-fun m!1311927 () Bool)

(assert (=> b!1421314 m!1311927))

(assert (=> b!1421314 m!1311927))

(assert (=> b!1421314 m!1311919))

(declare-fun m!1311929 () Bool)

(assert (=> b!1421314 m!1311929))

(declare-fun m!1311931 () Bool)

(assert (=> b!1421312 m!1311931))

(assert (=> b!1421312 m!1311931))

(declare-fun m!1311933 () Bool)

(assert (=> b!1421312 m!1311933))

(declare-fun m!1311935 () Bool)

(assert (=> b!1421312 m!1311935))

(declare-fun m!1311937 () Bool)

(assert (=> b!1421312 m!1311937))

(declare-fun m!1311939 () Bool)

(assert (=> b!1421310 m!1311939))

(assert (=> b!1421320 m!1311919))

(assert (=> b!1421320 m!1311919))

(declare-fun m!1311941 () Bool)

(assert (=> b!1421320 m!1311941))

(declare-fun m!1311943 () Bool)

(assert (=> b!1421309 m!1311943))

(declare-fun m!1311945 () Bool)

(assert (=> b!1421309 m!1311945))

(push 1)

(assert (not b!1421319))

