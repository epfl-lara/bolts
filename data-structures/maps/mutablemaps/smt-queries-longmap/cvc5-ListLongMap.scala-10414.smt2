; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122686 () Bool)

(assert start!122686)

(declare-fun b!1420567 () Bool)

(declare-fun res!956117 () Bool)

(declare-fun e!803429 () Bool)

(assert (=> b!1420567 (=> (not res!956117) (not e!803429))))

(declare-datatypes ((array!96969 0))(
  ( (array!96970 (arr!46798 (Array (_ BitVec 32) (_ BitVec 64))) (size!47349 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96969)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420567 (= res!956117 (validKeyInArray!0 (select (arr!46798 a!2831) i!982)))))

(declare-fun b!1420568 () Bool)

(declare-fun res!956118 () Bool)

(assert (=> b!1420568 (=> (not res!956118) (not e!803429))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1420568 (= res!956118 (validKeyInArray!0 (select (arr!46798 a!2831) j!81)))))

(declare-fun b!1420569 () Bool)

(declare-fun res!956111 () Bool)

(assert (=> b!1420569 (=> (not res!956111) (not e!803429))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96969 (_ BitVec 32)) Bool)

(assert (=> b!1420569 (= res!956111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420570 () Bool)

(declare-fun res!956109 () Bool)

(declare-fun e!803426 () Bool)

(assert (=> b!1420570 (=> (not res!956109) (not e!803426))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11105 0))(
  ( (MissingZero!11105 (index!46811 (_ BitVec 32))) (Found!11105 (index!46812 (_ BitVec 32))) (Intermediate!11105 (undefined!11917 Bool) (index!46813 (_ BitVec 32)) (x!128478 (_ BitVec 32))) (Undefined!11105) (MissingVacant!11105 (index!46814 (_ BitVec 32))) )
))
(declare-fun lt!625885 () SeekEntryResult!11105)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96969 (_ BitVec 32)) SeekEntryResult!11105)

(assert (=> b!1420570 (= res!956109 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46798 a!2831) j!81) a!2831 mask!2608) lt!625885))))

(declare-fun b!1420572 () Bool)

(declare-fun res!956110 () Bool)

(assert (=> b!1420572 (=> (not res!956110) (not e!803429))))

(declare-datatypes ((List!33488 0))(
  ( (Nil!33485) (Cons!33484 (h!34786 (_ BitVec 64)) (t!48189 List!33488)) )
))
(declare-fun arrayNoDuplicates!0 (array!96969 (_ BitVec 32) List!33488) Bool)

(assert (=> b!1420572 (= res!956110 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33485))))

(declare-fun b!1420573 () Bool)

(declare-fun res!956113 () Bool)

(assert (=> b!1420573 (=> (not res!956113) (not e!803429))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420573 (= res!956113 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47349 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47349 a!2831))))))

(declare-fun b!1420574 () Bool)

(declare-fun e!803427 () Bool)

(assert (=> b!1420574 (= e!803427 e!803426)))

(declare-fun res!956116 () Bool)

(assert (=> b!1420574 (=> (not res!956116) (not e!803426))))

(declare-fun lt!625883 () array!96969)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!625882 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420574 (= res!956116 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625882 mask!2608) lt!625882 lt!625883 mask!2608) (Intermediate!11105 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420574 (= lt!625882 (select (store (arr!46798 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420574 (= lt!625883 (array!96970 (store (arr!46798 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47349 a!2831)))))

(declare-fun b!1420571 () Bool)

(assert (=> b!1420571 (= e!803429 e!803427)))

(declare-fun res!956114 () Bool)

(assert (=> b!1420571 (=> (not res!956114) (not e!803427))))

(assert (=> b!1420571 (= res!956114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46798 a!2831) j!81) mask!2608) (select (arr!46798 a!2831) j!81) a!2831 mask!2608) lt!625885))))

(assert (=> b!1420571 (= lt!625885 (Intermediate!11105 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!956115 () Bool)

(assert (=> start!122686 (=> (not res!956115) (not e!803429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122686 (= res!956115 (validMask!0 mask!2608))))

(assert (=> start!122686 e!803429))

(assert (=> start!122686 true))

(declare-fun array_inv!35743 (array!96969) Bool)

(assert (=> start!122686 (array_inv!35743 a!2831)))

(declare-fun b!1420575 () Bool)

(declare-fun res!956112 () Bool)

(assert (=> b!1420575 (=> (not res!956112) (not e!803429))))

(assert (=> b!1420575 (= res!956112 (and (= (size!47349 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47349 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47349 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420576 () Bool)

(assert (=> b!1420576 (= e!803426 false)))

(declare-fun lt!625884 () SeekEntryResult!11105)

(assert (=> b!1420576 (= lt!625884 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625882 lt!625883 mask!2608))))

(assert (= (and start!122686 res!956115) b!1420575))

(assert (= (and b!1420575 res!956112) b!1420567))

(assert (= (and b!1420567 res!956117) b!1420568))

(assert (= (and b!1420568 res!956118) b!1420569))

(assert (= (and b!1420569 res!956111) b!1420572))

(assert (= (and b!1420572 res!956110) b!1420573))

(assert (= (and b!1420573 res!956113) b!1420571))

(assert (= (and b!1420571 res!956114) b!1420574))

(assert (= (and b!1420574 res!956116) b!1420570))

(assert (= (and b!1420570 res!956109) b!1420576))

(declare-fun m!1311143 () Bool)

(assert (=> b!1420574 m!1311143))

(assert (=> b!1420574 m!1311143))

(declare-fun m!1311145 () Bool)

(assert (=> b!1420574 m!1311145))

(declare-fun m!1311147 () Bool)

(assert (=> b!1420574 m!1311147))

(declare-fun m!1311149 () Bool)

(assert (=> b!1420574 m!1311149))

(declare-fun m!1311151 () Bool)

(assert (=> b!1420576 m!1311151))

(declare-fun m!1311153 () Bool)

(assert (=> b!1420567 m!1311153))

(assert (=> b!1420567 m!1311153))

(declare-fun m!1311155 () Bool)

(assert (=> b!1420567 m!1311155))

(declare-fun m!1311157 () Bool)

(assert (=> b!1420571 m!1311157))

(assert (=> b!1420571 m!1311157))

(declare-fun m!1311159 () Bool)

(assert (=> b!1420571 m!1311159))

(assert (=> b!1420571 m!1311159))

(assert (=> b!1420571 m!1311157))

(declare-fun m!1311161 () Bool)

(assert (=> b!1420571 m!1311161))

(assert (=> b!1420568 m!1311157))

(assert (=> b!1420568 m!1311157))

(declare-fun m!1311163 () Bool)

(assert (=> b!1420568 m!1311163))

(declare-fun m!1311165 () Bool)

(assert (=> b!1420569 m!1311165))

(assert (=> b!1420570 m!1311157))

(assert (=> b!1420570 m!1311157))

(declare-fun m!1311167 () Bool)

(assert (=> b!1420570 m!1311167))

(declare-fun m!1311169 () Bool)

(assert (=> b!1420572 m!1311169))

(declare-fun m!1311171 () Bool)

(assert (=> start!122686 m!1311171))

(declare-fun m!1311173 () Bool)

(assert (=> start!122686 m!1311173))

(push 1)

