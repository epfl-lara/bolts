; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123574 () Bool)

(assert start!123574)

(declare-fun b!1431981 () Bool)

(declare-fun res!965963 () Bool)

(declare-fun e!808426 () Bool)

(assert (=> b!1431981 (=> (not res!965963) (not e!808426))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97464 0))(
  ( (array!97465 (arr!47035 (Array (_ BitVec 32) (_ BitVec 64))) (size!47586 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97464)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431981 (= res!965963 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47586 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47586 a!2831))))))

(declare-fun res!965967 () Bool)

(assert (=> start!123574 (=> (not res!965967) (not e!808426))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123574 (= res!965967 (validMask!0 mask!2608))))

(assert (=> start!123574 e!808426))

(assert (=> start!123574 true))

(declare-fun array_inv!35980 (array!97464) Bool)

(assert (=> start!123574 (array_inv!35980 a!2831)))

(declare-fun b!1431982 () Bool)

(declare-fun res!965958 () Bool)

(declare-fun e!808424 () Bool)

(assert (=> b!1431982 (=> (not res!965958) (not e!808424))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11336 0))(
  ( (MissingZero!11336 (index!47735 (_ BitVec 32))) (Found!11336 (index!47736 (_ BitVec 32))) (Intermediate!11336 (undefined!12148 Bool) (index!47737 (_ BitVec 32)) (x!129389 (_ BitVec 32))) (Undefined!11336) (MissingVacant!11336 (index!47738 (_ BitVec 32))) )
))
(declare-fun lt!630374 () SeekEntryResult!11336)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97464 (_ BitVec 32)) SeekEntryResult!11336)

(assert (=> b!1431982 (= res!965958 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47035 a!2831) j!81) a!2831 mask!2608) lt!630374))))

(declare-fun b!1431983 () Bool)

(declare-fun res!965960 () Bool)

(assert (=> b!1431983 (=> (not res!965960) (not e!808426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431983 (= res!965960 (validKeyInArray!0 (select (arr!47035 a!2831) j!81)))))

(declare-fun b!1431984 () Bool)

(declare-fun res!965962 () Bool)

(assert (=> b!1431984 (=> (not res!965962) (not e!808424))))

(declare-fun lt!630372 () (_ BitVec 64))

(declare-fun lt!630373 () array!97464)

(declare-fun lt!630376 () SeekEntryResult!11336)

(assert (=> b!1431984 (= res!965962 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630372 lt!630373 mask!2608) lt!630376))))

(declare-fun b!1431985 () Bool)

(declare-fun e!808423 () Bool)

(assert (=> b!1431985 (= e!808423 true)))

(declare-fun lt!630371 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431985 (= lt!630371 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431986 () Bool)

(declare-fun res!965959 () Bool)

(assert (=> b!1431986 (=> (not res!965959) (not e!808426))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431986 (= res!965959 (and (= (size!47586 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47586 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47586 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431987 () Bool)

(declare-fun e!808427 () Bool)

(assert (=> b!1431987 (= e!808427 e!808424)))

(declare-fun res!965961 () Bool)

(assert (=> b!1431987 (=> (not res!965961) (not e!808424))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431987 (= res!965961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630372 mask!2608) lt!630372 lt!630373 mask!2608) lt!630376))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431987 (= lt!630376 (Intermediate!11336 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431987 (= lt!630372 (select (store (arr!47035 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431987 (= lt!630373 (array!97465 (store (arr!47035 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47586 a!2831)))))

(declare-fun e!808425 () Bool)

(declare-fun b!1431988 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97464 (_ BitVec 32)) SeekEntryResult!11336)

(assert (=> b!1431988 (= e!808425 (= (seekEntryOrOpen!0 (select (arr!47035 a!2831) j!81) a!2831 mask!2608) (Found!11336 j!81)))))

(declare-fun b!1431989 () Bool)

(declare-fun res!965966 () Bool)

(assert (=> b!1431989 (=> (not res!965966) (not e!808424))))

(assert (=> b!1431989 (= res!965966 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431990 () Bool)

(declare-fun res!965956 () Bool)

(assert (=> b!1431990 (=> (not res!965956) (not e!808426))))

(declare-datatypes ((List!33725 0))(
  ( (Nil!33722) (Cons!33721 (h!35044 (_ BitVec 64)) (t!48426 List!33725)) )
))
(declare-fun arrayNoDuplicates!0 (array!97464 (_ BitVec 32) List!33725) Bool)

(assert (=> b!1431990 (= res!965956 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33722))))

(declare-fun b!1431991 () Bool)

(assert (=> b!1431991 (= e!808426 e!808427)))

(declare-fun res!965955 () Bool)

(assert (=> b!1431991 (=> (not res!965955) (not e!808427))))

(assert (=> b!1431991 (= res!965955 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47035 a!2831) j!81) mask!2608) (select (arr!47035 a!2831) j!81) a!2831 mask!2608) lt!630374))))

(assert (=> b!1431991 (= lt!630374 (Intermediate!11336 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431992 () Bool)

(declare-fun res!965954 () Bool)

(assert (=> b!1431992 (=> (not res!965954) (not e!808426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97464 (_ BitVec 32)) Bool)

(assert (=> b!1431992 (= res!965954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431993 () Bool)

(assert (=> b!1431993 (= e!808424 (not e!808423))))

(declare-fun res!965964 () Bool)

(assert (=> b!1431993 (=> res!965964 e!808423)))

(assert (=> b!1431993 (= res!965964 (or (= (select (arr!47035 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47035 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47035 a!2831) index!585) (select (arr!47035 a!2831) j!81)) (= (select (store (arr!47035 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431993 e!808425))

(declare-fun res!965957 () Bool)

(assert (=> b!1431993 (=> (not res!965957) (not e!808425))))

(assert (=> b!1431993 (= res!965957 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48366 0))(
  ( (Unit!48367) )
))
(declare-fun lt!630375 () Unit!48366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48366)

(assert (=> b!1431993 (= lt!630375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431994 () Bool)

(declare-fun res!965965 () Bool)

(assert (=> b!1431994 (=> (not res!965965) (not e!808426))))

(assert (=> b!1431994 (= res!965965 (validKeyInArray!0 (select (arr!47035 a!2831) i!982)))))

(assert (= (and start!123574 res!965967) b!1431986))

(assert (= (and b!1431986 res!965959) b!1431994))

(assert (= (and b!1431994 res!965965) b!1431983))

(assert (= (and b!1431983 res!965960) b!1431992))

(assert (= (and b!1431992 res!965954) b!1431990))

(assert (= (and b!1431990 res!965956) b!1431981))

(assert (= (and b!1431981 res!965963) b!1431991))

(assert (= (and b!1431991 res!965955) b!1431987))

(assert (= (and b!1431987 res!965961) b!1431982))

(assert (= (and b!1431982 res!965958) b!1431984))

(assert (= (and b!1431984 res!965962) b!1431989))

(assert (= (and b!1431989 res!965966) b!1431993))

(assert (= (and b!1431993 res!965957) b!1431988))

(assert (= (and b!1431993 (not res!965964)) b!1431985))

(declare-fun m!1321829 () Bool)

(assert (=> b!1431982 m!1321829))

(assert (=> b!1431982 m!1321829))

(declare-fun m!1321831 () Bool)

(assert (=> b!1431982 m!1321831))

(assert (=> b!1431988 m!1321829))

(assert (=> b!1431988 m!1321829))

(declare-fun m!1321833 () Bool)

(assert (=> b!1431988 m!1321833))

(declare-fun m!1321835 () Bool)

(assert (=> b!1431984 m!1321835))

(declare-fun m!1321837 () Bool)

(assert (=> b!1431985 m!1321837))

(declare-fun m!1321839 () Bool)

(assert (=> b!1431990 m!1321839))

(declare-fun m!1321841 () Bool)

(assert (=> b!1431987 m!1321841))

(assert (=> b!1431987 m!1321841))

(declare-fun m!1321843 () Bool)

(assert (=> b!1431987 m!1321843))

(declare-fun m!1321845 () Bool)

(assert (=> b!1431987 m!1321845))

(declare-fun m!1321847 () Bool)

(assert (=> b!1431987 m!1321847))

(declare-fun m!1321849 () Bool)

(assert (=> start!123574 m!1321849))

(declare-fun m!1321851 () Bool)

(assert (=> start!123574 m!1321851))

(declare-fun m!1321853 () Bool)

(assert (=> b!1431992 m!1321853))

(assert (=> b!1431993 m!1321845))

(declare-fun m!1321855 () Bool)

(assert (=> b!1431993 m!1321855))

(declare-fun m!1321857 () Bool)

(assert (=> b!1431993 m!1321857))

(declare-fun m!1321859 () Bool)

(assert (=> b!1431993 m!1321859))

(assert (=> b!1431993 m!1321829))

(declare-fun m!1321861 () Bool)

(assert (=> b!1431993 m!1321861))

(declare-fun m!1321863 () Bool)

(assert (=> b!1431994 m!1321863))

(assert (=> b!1431994 m!1321863))

(declare-fun m!1321865 () Bool)

(assert (=> b!1431994 m!1321865))

(assert (=> b!1431983 m!1321829))

(assert (=> b!1431983 m!1321829))

(declare-fun m!1321867 () Bool)

(assert (=> b!1431983 m!1321867))

(assert (=> b!1431991 m!1321829))

(assert (=> b!1431991 m!1321829))

(declare-fun m!1321869 () Bool)

(assert (=> b!1431991 m!1321869))

(assert (=> b!1431991 m!1321869))

(assert (=> b!1431991 m!1321829))

(declare-fun m!1321871 () Bool)

(assert (=> b!1431991 m!1321871))

(push 1)

