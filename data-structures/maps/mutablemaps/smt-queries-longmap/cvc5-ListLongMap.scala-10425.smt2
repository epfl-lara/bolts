; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122752 () Bool)

(assert start!122752)

(declare-fun b!1421689 () Bool)

(declare-fun res!957242 () Bool)

(declare-fun e!803843 () Bool)

(assert (=> b!1421689 (=> (not res!957242) (not e!803843))))

(declare-datatypes ((array!97035 0))(
  ( (array!97036 (arr!46831 (Array (_ BitVec 32) (_ BitVec 64))) (size!47382 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97035)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421689 (= res!957242 (validKeyInArray!0 (select (arr!46831 a!2831) i!982)))))

(declare-fun res!957243 () Bool)

(assert (=> start!122752 (=> (not res!957243) (not e!803843))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122752 (= res!957243 (validMask!0 mask!2608))))

(assert (=> start!122752 e!803843))

(assert (=> start!122752 true))

(declare-fun array_inv!35776 (array!97035) Bool)

(assert (=> start!122752 (array_inv!35776 a!2831)))

(declare-fun b!1421690 () Bool)

(declare-fun e!803846 () Bool)

(assert (=> b!1421690 (= e!803843 e!803846)))

(declare-fun res!957231 () Bool)

(assert (=> b!1421690 (=> (not res!957231) (not e!803846))))

(declare-datatypes ((SeekEntryResult!11138 0))(
  ( (MissingZero!11138 (index!46943 (_ BitVec 32))) (Found!11138 (index!46944 (_ BitVec 32))) (Intermediate!11138 (undefined!11950 Bool) (index!46945 (_ BitVec 32)) (x!128599 (_ BitVec 32))) (Undefined!11138) (MissingVacant!11138 (index!46946 (_ BitVec 32))) )
))
(declare-fun lt!626338 () SeekEntryResult!11138)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97035 (_ BitVec 32)) SeekEntryResult!11138)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421690 (= res!957231 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46831 a!2831) j!81) mask!2608) (select (arr!46831 a!2831) j!81) a!2831 mask!2608) lt!626338))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421690 (= lt!626338 (Intermediate!11138 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421691 () Bool)

(declare-fun res!957235 () Bool)

(declare-fun e!803844 () Bool)

(assert (=> b!1421691 (=> (not res!957235) (not e!803844))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1421691 (= res!957235 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46831 a!2831) j!81) a!2831 mask!2608) lt!626338))))

(declare-fun b!1421692 () Bool)

(assert (=> b!1421692 (= e!803846 e!803844)))

(declare-fun res!957236 () Bool)

(assert (=> b!1421692 (=> (not res!957236) (not e!803844))))

(declare-fun lt!626334 () (_ BitVec 64))

(declare-fun lt!626335 () SeekEntryResult!11138)

(declare-fun lt!626337 () array!97035)

(assert (=> b!1421692 (= res!957236 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626334 mask!2608) lt!626334 lt!626337 mask!2608) lt!626335))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421692 (= lt!626335 (Intermediate!11138 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421692 (= lt!626334 (select (store (arr!46831 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421692 (= lt!626337 (array!97036 (store (arr!46831 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47382 a!2831)))))

(declare-fun b!1421693 () Bool)

(declare-fun res!957241 () Bool)

(assert (=> b!1421693 (=> (not res!957241) (not e!803843))))

(assert (=> b!1421693 (= res!957241 (and (= (size!47382 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47382 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47382 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421694 () Bool)

(declare-fun res!957234 () Bool)

(assert (=> b!1421694 (=> (not res!957234) (not e!803844))))

(assert (=> b!1421694 (= res!957234 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421695 () Bool)

(declare-fun res!957237 () Bool)

(assert (=> b!1421695 (=> (not res!957237) (not e!803843))))

(declare-datatypes ((List!33521 0))(
  ( (Nil!33518) (Cons!33517 (h!34819 (_ BitVec 64)) (t!48222 List!33521)) )
))
(declare-fun arrayNoDuplicates!0 (array!97035 (_ BitVec 32) List!33521) Bool)

(assert (=> b!1421695 (= res!957237 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33518))))

(declare-fun b!1421696 () Bool)

(declare-fun res!957239 () Bool)

(assert (=> b!1421696 (=> (not res!957239) (not e!803843))))

(assert (=> b!1421696 (= res!957239 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47382 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47382 a!2831))))))

(declare-fun b!1421697 () Bool)

(declare-fun res!957238 () Bool)

(assert (=> b!1421697 (=> (not res!957238) (not e!803843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97035 (_ BitVec 32)) Bool)

(assert (=> b!1421697 (= res!957238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421698 () Bool)

(assert (=> b!1421698 (= e!803844 (not (or (= (select (arr!46831 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46831 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46831 a!2831) index!585) (select (arr!46831 a!2831) j!81)) (= (select (store (arr!46831 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun e!803842 () Bool)

(assert (=> b!1421698 e!803842))

(declare-fun res!957240 () Bool)

(assert (=> b!1421698 (=> (not res!957240) (not e!803842))))

(assert (=> b!1421698 (= res!957240 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48060 0))(
  ( (Unit!48061) )
))
(declare-fun lt!626336 () Unit!48060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48060)

(assert (=> b!1421698 (= lt!626336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421699 () Bool)

(declare-fun res!957233 () Bool)

(assert (=> b!1421699 (=> (not res!957233) (not e!803843))))

(assert (=> b!1421699 (= res!957233 (validKeyInArray!0 (select (arr!46831 a!2831) j!81)))))

(declare-fun b!1421700 () Bool)

(declare-fun res!957232 () Bool)

(assert (=> b!1421700 (=> (not res!957232) (not e!803844))))

(assert (=> b!1421700 (= res!957232 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626334 lt!626337 mask!2608) lt!626335))))

(declare-fun b!1421701 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97035 (_ BitVec 32)) SeekEntryResult!11138)

(assert (=> b!1421701 (= e!803842 (= (seekEntryOrOpen!0 (select (arr!46831 a!2831) j!81) a!2831 mask!2608) (Found!11138 j!81)))))

(assert (= (and start!122752 res!957243) b!1421693))

(assert (= (and b!1421693 res!957241) b!1421689))

(assert (= (and b!1421689 res!957242) b!1421699))

(assert (= (and b!1421699 res!957233) b!1421697))

(assert (= (and b!1421697 res!957238) b!1421695))

(assert (= (and b!1421695 res!957237) b!1421696))

(assert (= (and b!1421696 res!957239) b!1421690))

(assert (= (and b!1421690 res!957231) b!1421692))

(assert (= (and b!1421692 res!957236) b!1421691))

(assert (= (and b!1421691 res!957235) b!1421700))

(assert (= (and b!1421700 res!957232) b!1421694))

(assert (= (and b!1421694 res!957234) b!1421698))

(assert (= (and b!1421698 res!957240) b!1421701))

(declare-fun m!1312295 () Bool)

(assert (=> start!122752 m!1312295))

(declare-fun m!1312297 () Bool)

(assert (=> start!122752 m!1312297))

(declare-fun m!1312299 () Bool)

(assert (=> b!1421698 m!1312299))

(declare-fun m!1312301 () Bool)

(assert (=> b!1421698 m!1312301))

(declare-fun m!1312303 () Bool)

(assert (=> b!1421698 m!1312303))

(declare-fun m!1312305 () Bool)

(assert (=> b!1421698 m!1312305))

(declare-fun m!1312307 () Bool)

(assert (=> b!1421698 m!1312307))

(declare-fun m!1312309 () Bool)

(assert (=> b!1421698 m!1312309))

(assert (=> b!1421690 m!1312307))

(assert (=> b!1421690 m!1312307))

(declare-fun m!1312311 () Bool)

(assert (=> b!1421690 m!1312311))

(assert (=> b!1421690 m!1312311))

(assert (=> b!1421690 m!1312307))

(declare-fun m!1312313 () Bool)

(assert (=> b!1421690 m!1312313))

(declare-fun m!1312315 () Bool)

(assert (=> b!1421697 m!1312315))

(declare-fun m!1312317 () Bool)

(assert (=> b!1421689 m!1312317))

(assert (=> b!1421689 m!1312317))

(declare-fun m!1312319 () Bool)

(assert (=> b!1421689 m!1312319))

(declare-fun m!1312321 () Bool)

(assert (=> b!1421700 m!1312321))

(declare-fun m!1312323 () Bool)

(assert (=> b!1421692 m!1312323))

(assert (=> b!1421692 m!1312323))

(declare-fun m!1312325 () Bool)

(assert (=> b!1421692 m!1312325))

(assert (=> b!1421692 m!1312299))

(declare-fun m!1312327 () Bool)

(assert (=> b!1421692 m!1312327))

(assert (=> b!1421699 m!1312307))

(assert (=> b!1421699 m!1312307))

(declare-fun m!1312329 () Bool)

(assert (=> b!1421699 m!1312329))

(declare-fun m!1312331 () Bool)

(assert (=> b!1421695 m!1312331))

(assert (=> b!1421701 m!1312307))

(assert (=> b!1421701 m!1312307))

(declare-fun m!1312333 () Bool)

(assert (=> b!1421701 m!1312333))

(assert (=> b!1421691 m!1312307))

(assert (=> b!1421691 m!1312307))

(declare-fun m!1312335 () Bool)

(assert (=> b!1421691 m!1312335))

(push 1)

(assert (not b!1421691))

(assert (not b!1421699))

(assert (not b!1421701))

(assert (not b!1421689))

(assert (not start!122752))

(assert (not b!1421690))

(assert (not b!1421697))

(assert (not b!1421700))

(assert (not b!1421698))

(assert (not b!1421695))

(assert (not b!1421692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

