; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122860 () Bool)

(assert start!122860)

(declare-fun b!1424233 () Bool)

(declare-fun res!959780 () Bool)

(declare-fun e!804949 () Bool)

(assert (=> b!1424233 (=> (not res!959780) (not e!804949))))

(declare-datatypes ((array!97143 0))(
  ( (array!97144 (arr!46885 (Array (_ BitVec 32) (_ BitVec 64))) (size!47436 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97143)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424233 (= res!959780 (validKeyInArray!0 (select (arr!46885 a!2831) i!982)))))

(declare-fun b!1424234 () Bool)

(declare-fun e!804946 () Bool)

(declare-fun e!804948 () Bool)

(assert (=> b!1424234 (= e!804946 e!804948)))

(declare-fun res!959782 () Bool)

(assert (=> b!1424234 (=> (not res!959782) (not e!804948))))

(declare-datatypes ((SeekEntryResult!11192 0))(
  ( (MissingZero!11192 (index!47159 (_ BitVec 32))) (Found!11192 (index!47160 (_ BitVec 32))) (Intermediate!11192 (undefined!12004 Bool) (index!47161 (_ BitVec 32)) (x!128797 (_ BitVec 32))) (Undefined!11192) (MissingVacant!11192 (index!47162 (_ BitVec 32))) )
))
(declare-fun lt!627437 () SeekEntryResult!11192)

(declare-fun lt!627442 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627440 () array!97143)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97143 (_ BitVec 32)) SeekEntryResult!11192)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424234 (= res!959782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627442 mask!2608) lt!627442 lt!627440 mask!2608) lt!627437))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424234 (= lt!627437 (Intermediate!11192 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1424234 (= lt!627442 (select (store (arr!46885 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424234 (= lt!627440 (array!97144 (store (arr!46885 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47436 a!2831)))))

(declare-fun b!1424235 () Bool)

(declare-fun res!959777 () Bool)

(assert (=> b!1424235 (=> (not res!959777) (not e!804949))))

(assert (=> b!1424235 (= res!959777 (and (= (size!47436 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47436 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47436 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!959781 () Bool)

(assert (=> start!122860 (=> (not res!959781) (not e!804949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122860 (= res!959781 (validMask!0 mask!2608))))

(assert (=> start!122860 e!804949))

(assert (=> start!122860 true))

(declare-fun array_inv!35830 (array!97143) Bool)

(assert (=> start!122860 (array_inv!35830 a!2831)))

(declare-fun b!1424236 () Bool)

(assert (=> b!1424236 (= e!804949 e!804946)))

(declare-fun res!959787 () Bool)

(assert (=> b!1424236 (=> (not res!959787) (not e!804946))))

(declare-fun lt!627438 () SeekEntryResult!11192)

(assert (=> b!1424236 (= res!959787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46885 a!2831) j!81) mask!2608) (select (arr!46885 a!2831) j!81) a!2831 mask!2608) lt!627438))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424236 (= lt!627438 (Intermediate!11192 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424237 () Bool)

(declare-fun res!959778 () Bool)

(assert (=> b!1424237 (=> (not res!959778) (not e!804948))))

(assert (=> b!1424237 (= res!959778 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424238 () Bool)

(declare-fun e!804945 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97143 (_ BitVec 32)) SeekEntryResult!11192)

(assert (=> b!1424238 (= e!804945 (= (seekEntryOrOpen!0 (select (arr!46885 a!2831) j!81) a!2831 mask!2608) (Found!11192 j!81)))))

(declare-fun b!1424239 () Bool)

(declare-fun res!959788 () Bool)

(assert (=> b!1424239 (=> (not res!959788) (not e!804948))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424239 (= res!959788 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46885 a!2831) j!81) a!2831 mask!2608) lt!627438))))

(declare-fun b!1424240 () Bool)

(declare-fun res!959785 () Bool)

(assert (=> b!1424240 (=> (not res!959785) (not e!804949))))

(assert (=> b!1424240 (= res!959785 (validKeyInArray!0 (select (arr!46885 a!2831) j!81)))))

(declare-fun b!1424241 () Bool)

(declare-fun e!804950 () Bool)

(assert (=> b!1424241 (= e!804948 (not e!804950))))

(declare-fun res!959784 () Bool)

(assert (=> b!1424241 (=> res!959784 e!804950)))

(assert (=> b!1424241 (= res!959784 (or (= (select (arr!46885 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46885 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46885 a!2831) index!585) (select (arr!46885 a!2831) j!81)) (= (select (store (arr!46885 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424241 e!804945))

(declare-fun res!959779 () Bool)

(assert (=> b!1424241 (=> (not res!959779) (not e!804945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97143 (_ BitVec 32)) Bool)

(assert (=> b!1424241 (= res!959779 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48168 0))(
  ( (Unit!48169) )
))
(declare-fun lt!627441 () Unit!48168)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48168)

(assert (=> b!1424241 (= lt!627441 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424242 () Bool)

(declare-fun res!959775 () Bool)

(assert (=> b!1424242 (=> (not res!959775) (not e!804948))))

(assert (=> b!1424242 (= res!959775 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627442 lt!627440 mask!2608) lt!627437))))

(declare-fun b!1424243 () Bool)

(declare-fun res!959786 () Bool)

(assert (=> b!1424243 (=> (not res!959786) (not e!804949))))

(declare-datatypes ((List!33575 0))(
  ( (Nil!33572) (Cons!33571 (h!34873 (_ BitVec 64)) (t!48276 List!33575)) )
))
(declare-fun arrayNoDuplicates!0 (array!97143 (_ BitVec 32) List!33575) Bool)

(assert (=> b!1424243 (= res!959786 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33572))))

(declare-fun b!1424244 () Bool)

(declare-fun res!959776 () Bool)

(assert (=> b!1424244 (=> (not res!959776) (not e!804949))))

(assert (=> b!1424244 (= res!959776 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47436 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47436 a!2831))))))

(declare-fun b!1424245 () Bool)

(declare-fun e!804944 () Bool)

(assert (=> b!1424245 (= e!804950 e!804944)))

(declare-fun res!959783 () Bool)

(assert (=> b!1424245 (=> res!959783 e!804944)))

(declare-fun lt!627439 () (_ BitVec 32))

(assert (=> b!1424245 (= res!959783 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627439 #b00000000000000000000000000000000) (bvsge lt!627439 (size!47436 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424245 (= lt!627439 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424246 () Bool)

(declare-fun res!959790 () Bool)

(assert (=> b!1424246 (=> (not res!959790) (not e!804949))))

(assert (=> b!1424246 (= res!959790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424247 () Bool)

(declare-fun res!959789 () Bool)

(assert (=> b!1424247 (=> res!959789 e!804944)))

(assert (=> b!1424247 (= res!959789 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627439 (select (arr!46885 a!2831) j!81) a!2831 mask!2608) lt!627438)))))

(declare-fun b!1424248 () Bool)

(assert (=> b!1424248 (= e!804944 true)))

(declare-fun lt!627436 () SeekEntryResult!11192)

(assert (=> b!1424248 (= lt!627436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627439 lt!627442 lt!627440 mask!2608))))

(assert (= (and start!122860 res!959781) b!1424235))

(assert (= (and b!1424235 res!959777) b!1424233))

(assert (= (and b!1424233 res!959780) b!1424240))

(assert (= (and b!1424240 res!959785) b!1424246))

(assert (= (and b!1424246 res!959790) b!1424243))

(assert (= (and b!1424243 res!959786) b!1424244))

(assert (= (and b!1424244 res!959776) b!1424236))

(assert (= (and b!1424236 res!959787) b!1424234))

(assert (= (and b!1424234 res!959782) b!1424239))

(assert (= (and b!1424239 res!959788) b!1424242))

(assert (= (and b!1424242 res!959775) b!1424237))

(assert (= (and b!1424237 res!959778) b!1424241))

(assert (= (and b!1424241 res!959779) b!1424238))

(assert (= (and b!1424241 (not res!959784)) b!1424245))

(assert (= (and b!1424245 (not res!959783)) b!1424247))

(assert (= (and b!1424247 (not res!959789)) b!1424248))

(declare-fun m!1314839 () Bool)

(assert (=> b!1424247 m!1314839))

(assert (=> b!1424247 m!1314839))

(declare-fun m!1314841 () Bool)

(assert (=> b!1424247 m!1314841))

(declare-fun m!1314843 () Bool)

(assert (=> b!1424245 m!1314843))

(declare-fun m!1314845 () Bool)

(assert (=> b!1424242 m!1314845))

(declare-fun m!1314847 () Bool)

(assert (=> b!1424246 m!1314847))

(declare-fun m!1314849 () Bool)

(assert (=> b!1424241 m!1314849))

(declare-fun m!1314851 () Bool)

(assert (=> b!1424241 m!1314851))

(declare-fun m!1314853 () Bool)

(assert (=> b!1424241 m!1314853))

(declare-fun m!1314855 () Bool)

(assert (=> b!1424241 m!1314855))

(assert (=> b!1424241 m!1314839))

(declare-fun m!1314857 () Bool)

(assert (=> b!1424241 m!1314857))

(declare-fun m!1314859 () Bool)

(assert (=> b!1424248 m!1314859))

(assert (=> b!1424238 m!1314839))

(assert (=> b!1424238 m!1314839))

(declare-fun m!1314861 () Bool)

(assert (=> b!1424238 m!1314861))

(declare-fun m!1314863 () Bool)

(assert (=> b!1424233 m!1314863))

(assert (=> b!1424233 m!1314863))

(declare-fun m!1314865 () Bool)

(assert (=> b!1424233 m!1314865))

(declare-fun m!1314867 () Bool)

(assert (=> b!1424243 m!1314867))

(assert (=> b!1424240 m!1314839))

(assert (=> b!1424240 m!1314839))

(declare-fun m!1314869 () Bool)

(assert (=> b!1424240 m!1314869))

(declare-fun m!1314871 () Bool)

(assert (=> b!1424234 m!1314871))

(assert (=> b!1424234 m!1314871))

(declare-fun m!1314873 () Bool)

(assert (=> b!1424234 m!1314873))

(assert (=> b!1424234 m!1314849))

(declare-fun m!1314875 () Bool)

(assert (=> b!1424234 m!1314875))

(assert (=> b!1424236 m!1314839))

(assert (=> b!1424236 m!1314839))

(declare-fun m!1314877 () Bool)

(assert (=> b!1424236 m!1314877))

(assert (=> b!1424236 m!1314877))

(assert (=> b!1424236 m!1314839))

(declare-fun m!1314879 () Bool)

(assert (=> b!1424236 m!1314879))

(assert (=> b!1424239 m!1314839))

(assert (=> b!1424239 m!1314839))

(declare-fun m!1314881 () Bool)

(assert (=> b!1424239 m!1314881))

(declare-fun m!1314883 () Bool)

(assert (=> start!122860 m!1314883))

(declare-fun m!1314885 () Bool)

(assert (=> start!122860 m!1314885))

(push 1)

