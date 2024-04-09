; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123912 () Bool)

(assert start!123912)

(declare-fun b!1435416 () Bool)

(declare-fun res!968538 () Bool)

(declare-fun e!810140 () Bool)

(assert (=> b!1435416 (=> res!968538 e!810140)))

(declare-fun lt!631847 () (_ BitVec 32))

(declare-fun lt!631848 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11385 0))(
  ( (MissingZero!11385 (index!47931 (_ BitVec 32))) (Found!11385 (index!47932 (_ BitVec 32))) (Intermediate!11385 (undefined!12197 Bool) (index!47933 (_ BitVec 32)) (x!129602 (_ BitVec 32))) (Undefined!11385) (MissingVacant!11385 (index!47934 (_ BitVec 32))) )
))
(declare-fun lt!631849 () SeekEntryResult!11385)

(declare-datatypes ((array!97574 0))(
  ( (array!97575 (arr!47084 (Array (_ BitVec 32) (_ BitVec 64))) (size!47635 (_ BitVec 32))) )
))
(declare-fun lt!631846 () array!97574)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97574 (_ BitVec 32)) SeekEntryResult!11385)

(assert (=> b!1435416 (= res!968538 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631847 lt!631848 lt!631846 mask!2608) lt!631849)))))

(declare-fun b!1435417 () Bool)

(assert (=> b!1435417 (= e!810140 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!605)) (bvsub #b01111111111111111111111111111110 x!605)))))

(declare-fun b!1435418 () Bool)

(declare-fun res!968531 () Bool)

(assert (=> b!1435418 (=> res!968531 e!810140)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97574)

(declare-fun lt!631845 () SeekEntryResult!11385)

(assert (=> b!1435418 (= res!968531 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631847 (select (arr!47084 a!2831) j!81) a!2831 mask!2608) lt!631845)))))

(declare-fun b!1435419 () Bool)

(declare-fun e!810139 () Bool)

(declare-fun e!810143 () Bool)

(assert (=> b!1435419 (= e!810139 e!810143)))

(declare-fun res!968537 () Bool)

(assert (=> b!1435419 (=> (not res!968537) (not e!810143))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435419 (= res!968537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631848 mask!2608) lt!631848 lt!631846 mask!2608) lt!631849))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435419 (= lt!631849 (Intermediate!11385 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435419 (= lt!631848 (select (store (arr!47084 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435419 (= lt!631846 (array!97575 (store (arr!47084 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47635 a!2831)))))

(declare-fun b!1435420 () Bool)

(declare-fun res!968545 () Bool)

(declare-fun e!810141 () Bool)

(assert (=> b!1435420 (=> (not res!968545) (not e!810141))))

(assert (=> b!1435420 (= res!968545 (and (= (size!47635 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47635 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47635 a!2831)) (not (= i!982 j!81))))))

(declare-fun e!810142 () Bool)

(declare-fun b!1435421 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97574 (_ BitVec 32)) SeekEntryResult!11385)

(assert (=> b!1435421 (= e!810142 (= (seekEntryOrOpen!0 (select (arr!47084 a!2831) j!81) a!2831 mask!2608) (Found!11385 j!81)))))

(declare-fun b!1435422 () Bool)

(declare-fun e!810137 () Bool)

(assert (=> b!1435422 (= e!810137 e!810140)))

(declare-fun res!968535 () Bool)

(assert (=> b!1435422 (=> res!968535 e!810140)))

(assert (=> b!1435422 (= res!968535 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631847 #b00000000000000000000000000000000) (bvsge lt!631847 (size!47635 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435422 (= lt!631847 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435423 () Bool)

(assert (=> b!1435423 (= e!810141 e!810139)))

(declare-fun res!968540 () Bool)

(assert (=> b!1435423 (=> (not res!968540) (not e!810139))))

(assert (=> b!1435423 (= res!968540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47084 a!2831) j!81) mask!2608) (select (arr!47084 a!2831) j!81) a!2831 mask!2608) lt!631845))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1435423 (= lt!631845 (Intermediate!11385 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435424 () Bool)

(declare-fun res!968536 () Bool)

(assert (=> b!1435424 (=> (not res!968536) (not e!810141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435424 (= res!968536 (validKeyInArray!0 (select (arr!47084 a!2831) j!81)))))

(declare-fun res!968533 () Bool)

(assert (=> start!123912 (=> (not res!968533) (not e!810141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123912 (= res!968533 (validMask!0 mask!2608))))

(assert (=> start!123912 e!810141))

(assert (=> start!123912 true))

(declare-fun array_inv!36029 (array!97574) Bool)

(assert (=> start!123912 (array_inv!36029 a!2831)))

(declare-fun b!1435425 () Bool)

(declare-fun res!968543 () Bool)

(assert (=> b!1435425 (=> (not res!968543) (not e!810143))))

(assert (=> b!1435425 (= res!968543 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435426 () Bool)

(declare-fun res!968539 () Bool)

(assert (=> b!1435426 (=> (not res!968539) (not e!810141))))

(declare-datatypes ((List!33774 0))(
  ( (Nil!33771) (Cons!33770 (h!35105 (_ BitVec 64)) (t!48475 List!33774)) )
))
(declare-fun arrayNoDuplicates!0 (array!97574 (_ BitVec 32) List!33774) Bool)

(assert (=> b!1435426 (= res!968539 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33771))))

(declare-fun b!1435427 () Bool)

(declare-fun res!968542 () Bool)

(assert (=> b!1435427 (=> (not res!968542) (not e!810141))))

(assert (=> b!1435427 (= res!968542 (validKeyInArray!0 (select (arr!47084 a!2831) i!982)))))

(declare-fun b!1435428 () Bool)

(assert (=> b!1435428 (= e!810143 (not e!810137))))

(declare-fun res!968532 () Bool)

(assert (=> b!1435428 (=> res!968532 e!810137)))

(assert (=> b!1435428 (= res!968532 (or (= (select (arr!47084 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47084 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47084 a!2831) index!585) (select (arr!47084 a!2831) j!81)) (= (select (store (arr!47084 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1435428 e!810142))

(declare-fun res!968534 () Bool)

(assert (=> b!1435428 (=> (not res!968534) (not e!810142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97574 (_ BitVec 32)) Bool)

(assert (=> b!1435428 (= res!968534 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48464 0))(
  ( (Unit!48465) )
))
(declare-fun lt!631844 () Unit!48464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48464)

(assert (=> b!1435428 (= lt!631844 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435429 () Bool)

(declare-fun res!968546 () Bool)

(assert (=> b!1435429 (=> (not res!968546) (not e!810141))))

(assert (=> b!1435429 (= res!968546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435430 () Bool)

(declare-fun res!968547 () Bool)

(assert (=> b!1435430 (=> (not res!968547) (not e!810143))))

(assert (=> b!1435430 (= res!968547 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47084 a!2831) j!81) a!2831 mask!2608) lt!631845))))

(declare-fun b!1435431 () Bool)

(declare-fun res!968544 () Bool)

(assert (=> b!1435431 (=> (not res!968544) (not e!810143))))

(assert (=> b!1435431 (= res!968544 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631848 lt!631846 mask!2608) lt!631849))))

(declare-fun b!1435432 () Bool)

(declare-fun res!968541 () Bool)

(assert (=> b!1435432 (=> (not res!968541) (not e!810141))))

(assert (=> b!1435432 (= res!968541 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47635 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47635 a!2831))))))

(assert (= (and start!123912 res!968533) b!1435420))

(assert (= (and b!1435420 res!968545) b!1435427))

(assert (= (and b!1435427 res!968542) b!1435424))

(assert (= (and b!1435424 res!968536) b!1435429))

(assert (= (and b!1435429 res!968546) b!1435426))

(assert (= (and b!1435426 res!968539) b!1435432))

(assert (= (and b!1435432 res!968541) b!1435423))

(assert (= (and b!1435423 res!968540) b!1435419))

(assert (= (and b!1435419 res!968537) b!1435430))

(assert (= (and b!1435430 res!968547) b!1435431))

(assert (= (and b!1435431 res!968544) b!1435425))

(assert (= (and b!1435425 res!968543) b!1435428))

(assert (= (and b!1435428 res!968534) b!1435421))

(assert (= (and b!1435428 (not res!968532)) b!1435422))

(assert (= (and b!1435422 (not res!968535)) b!1435418))

(assert (= (and b!1435418 (not res!968531)) b!1435416))

(assert (= (and b!1435416 (not res!968538)) b!1435417))

(declare-fun m!1324829 () Bool)

(assert (=> b!1435421 m!1324829))

(assert (=> b!1435421 m!1324829))

(declare-fun m!1324831 () Bool)

(assert (=> b!1435421 m!1324831))

(assert (=> b!1435430 m!1324829))

(assert (=> b!1435430 m!1324829))

(declare-fun m!1324833 () Bool)

(assert (=> b!1435430 m!1324833))

(declare-fun m!1324835 () Bool)

(assert (=> b!1435428 m!1324835))

(declare-fun m!1324837 () Bool)

(assert (=> b!1435428 m!1324837))

(declare-fun m!1324839 () Bool)

(assert (=> b!1435428 m!1324839))

(declare-fun m!1324841 () Bool)

(assert (=> b!1435428 m!1324841))

(assert (=> b!1435428 m!1324829))

(declare-fun m!1324843 () Bool)

(assert (=> b!1435428 m!1324843))

(assert (=> b!1435424 m!1324829))

(assert (=> b!1435424 m!1324829))

(declare-fun m!1324845 () Bool)

(assert (=> b!1435424 m!1324845))

(assert (=> b!1435423 m!1324829))

(assert (=> b!1435423 m!1324829))

(declare-fun m!1324847 () Bool)

(assert (=> b!1435423 m!1324847))

(assert (=> b!1435423 m!1324847))

(assert (=> b!1435423 m!1324829))

(declare-fun m!1324849 () Bool)

(assert (=> b!1435423 m!1324849))

(declare-fun m!1324851 () Bool)

(assert (=> b!1435431 m!1324851))

(declare-fun m!1324853 () Bool)

(assert (=> b!1435429 m!1324853))

(declare-fun m!1324855 () Bool)

(assert (=> b!1435426 m!1324855))

(declare-fun m!1324857 () Bool)

(assert (=> b!1435419 m!1324857))

(assert (=> b!1435419 m!1324857))

(declare-fun m!1324859 () Bool)

(assert (=> b!1435419 m!1324859))

(assert (=> b!1435419 m!1324835))

(declare-fun m!1324861 () Bool)

(assert (=> b!1435419 m!1324861))

(declare-fun m!1324863 () Bool)

(assert (=> b!1435416 m!1324863))

(declare-fun m!1324865 () Bool)

(assert (=> b!1435422 m!1324865))

(declare-fun m!1324867 () Bool)

(assert (=> b!1435427 m!1324867))

(assert (=> b!1435427 m!1324867))

(declare-fun m!1324869 () Bool)

(assert (=> b!1435427 m!1324869))

(assert (=> b!1435418 m!1324829))

(assert (=> b!1435418 m!1324829))

(declare-fun m!1324871 () Bool)

(assert (=> b!1435418 m!1324871))

(declare-fun m!1324873 () Bool)

(assert (=> start!123912 m!1324873))

(declare-fun m!1324875 () Bool)

(assert (=> start!123912 m!1324875))

(check-sat (not b!1435422) (not b!1435423) (not b!1435431) (not b!1435429) (not b!1435421) (not b!1435418) (not b!1435430) (not b!1435424) (not b!1435427) (not start!123912) (not b!1435426) (not b!1435428) (not b!1435419) (not b!1435416))
(check-sat)
