; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122726 () Bool)

(assert start!122726)

(declare-fun b!1421201 () Bool)

(declare-fun e!803669 () Bool)

(declare-fun e!803667 () Bool)

(assert (=> b!1421201 (= e!803669 e!803667)))

(declare-fun res!956743 () Bool)

(assert (=> b!1421201 (=> (not res!956743) (not e!803667))))

(declare-datatypes ((array!97009 0))(
  ( (array!97010 (arr!46818 (Array (_ BitVec 32) (_ BitVec 64))) (size!47369 (_ BitVec 32))) )
))
(declare-fun lt!626142 () array!97009)

(declare-datatypes ((SeekEntryResult!11125 0))(
  ( (MissingZero!11125 (index!46891 (_ BitVec 32))) (Found!11125 (index!46892 (_ BitVec 32))) (Intermediate!11125 (undefined!11937 Bool) (index!46893 (_ BitVec 32)) (x!128546 (_ BitVec 32))) (Undefined!11125) (MissingVacant!11125 (index!46894 (_ BitVec 32))) )
))
(declare-fun lt!626141 () SeekEntryResult!11125)

(declare-fun lt!626139 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97009 (_ BitVec 32)) SeekEntryResult!11125)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421201 (= res!956743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626139 mask!2608) lt!626139 lt!626142 mask!2608) lt!626141))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421201 (= lt!626141 (Intermediate!11125 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97009)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421201 (= lt!626139 (select (store (arr!46818 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421201 (= lt!626142 (array!97010 (store (arr!46818 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47369 a!2831)))))

(declare-fun b!1421202 () Bool)

(declare-fun res!956745 () Bool)

(declare-fun e!803668 () Bool)

(assert (=> b!1421202 (=> (not res!956745) (not e!803668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97009 (_ BitVec 32)) Bool)

(assert (=> b!1421202 (= res!956745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421203 () Bool)

(declare-fun res!956751 () Bool)

(assert (=> b!1421203 (=> (not res!956751) (not e!803668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421203 (= res!956751 (validKeyInArray!0 (select (arr!46818 a!2831) i!982)))))

(declare-fun b!1421204 () Bool)

(declare-fun res!956744 () Bool)

(assert (=> b!1421204 (=> (not res!956744) (not e!803668))))

(declare-datatypes ((List!33508 0))(
  ( (Nil!33505) (Cons!33504 (h!34806 (_ BitVec 64)) (t!48209 List!33508)) )
))
(declare-fun arrayNoDuplicates!0 (array!97009 (_ BitVec 32) List!33508) Bool)

(assert (=> b!1421204 (= res!956744 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33505))))

(declare-fun b!1421205 () Bool)

(assert (=> b!1421205 (= e!803668 e!803669)))

(declare-fun res!956747 () Bool)

(assert (=> b!1421205 (=> (not res!956747) (not e!803669))))

(declare-fun lt!626143 () SeekEntryResult!11125)

(assert (=> b!1421205 (= res!956747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46818 a!2831) j!81) mask!2608) (select (arr!46818 a!2831) j!81) a!2831 mask!2608) lt!626143))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421205 (= lt!626143 (Intermediate!11125 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421206 () Bool)

(assert (=> b!1421206 (= e!803667 (not (bvsge mask!2608 #b00000000000000000000000000000000)))))

(assert (=> b!1421206 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48034 0))(
  ( (Unit!48035) )
))
(declare-fun lt!626140 () Unit!48034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48034)

(assert (=> b!1421206 (= lt!626140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!956752 () Bool)

(assert (=> start!122726 (=> (not res!956752) (not e!803668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122726 (= res!956752 (validMask!0 mask!2608))))

(assert (=> start!122726 e!803668))

(assert (=> start!122726 true))

(declare-fun array_inv!35763 (array!97009) Bool)

(assert (=> start!122726 (array_inv!35763 a!2831)))

(declare-fun b!1421207 () Bool)

(declare-fun res!956754 () Bool)

(assert (=> b!1421207 (=> (not res!956754) (not e!803668))))

(assert (=> b!1421207 (= res!956754 (and (= (size!47369 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47369 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47369 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421208 () Bool)

(declare-fun res!956749 () Bool)

(assert (=> b!1421208 (=> (not res!956749) (not e!803668))))

(assert (=> b!1421208 (= res!956749 (validKeyInArray!0 (select (arr!46818 a!2831) j!81)))))

(declare-fun b!1421209 () Bool)

(declare-fun res!956750 () Bool)

(assert (=> b!1421209 (=> (not res!956750) (not e!803667))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421209 (= res!956750 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626139 lt!626142 mask!2608) lt!626141))))

(declare-fun b!1421210 () Bool)

(declare-fun res!956748 () Bool)

(assert (=> b!1421210 (=> (not res!956748) (not e!803667))))

(assert (=> b!1421210 (= res!956748 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46818 a!2831) j!81) a!2831 mask!2608) lt!626143))))

(declare-fun b!1421211 () Bool)

(declare-fun res!956746 () Bool)

(assert (=> b!1421211 (=> (not res!956746) (not e!803667))))

(assert (=> b!1421211 (= res!956746 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421212 () Bool)

(declare-fun res!956753 () Bool)

(assert (=> b!1421212 (=> (not res!956753) (not e!803668))))

(assert (=> b!1421212 (= res!956753 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47369 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47369 a!2831))))))

(assert (= (and start!122726 res!956752) b!1421207))

(assert (= (and b!1421207 res!956754) b!1421203))

(assert (= (and b!1421203 res!956751) b!1421208))

(assert (= (and b!1421208 res!956749) b!1421202))

(assert (= (and b!1421202 res!956745) b!1421204))

(assert (= (and b!1421204 res!956744) b!1421212))

(assert (= (and b!1421212 res!956753) b!1421205))

(assert (= (and b!1421205 res!956747) b!1421201))

(assert (= (and b!1421201 res!956743) b!1421210))

(assert (= (and b!1421210 res!956748) b!1421209))

(assert (= (and b!1421209 res!956750) b!1421211))

(assert (= (and b!1421211 res!956746) b!1421206))

(declare-fun m!1311803 () Bool)

(assert (=> b!1421203 m!1311803))

(assert (=> b!1421203 m!1311803))

(declare-fun m!1311805 () Bool)

(assert (=> b!1421203 m!1311805))

(declare-fun m!1311807 () Bool)

(assert (=> b!1421205 m!1311807))

(assert (=> b!1421205 m!1311807))

(declare-fun m!1311809 () Bool)

(assert (=> b!1421205 m!1311809))

(assert (=> b!1421205 m!1311809))

(assert (=> b!1421205 m!1311807))

(declare-fun m!1311811 () Bool)

(assert (=> b!1421205 m!1311811))

(assert (=> b!1421210 m!1311807))

(assert (=> b!1421210 m!1311807))

(declare-fun m!1311813 () Bool)

(assert (=> b!1421210 m!1311813))

(declare-fun m!1311815 () Bool)

(assert (=> b!1421201 m!1311815))

(assert (=> b!1421201 m!1311815))

(declare-fun m!1311817 () Bool)

(assert (=> b!1421201 m!1311817))

(declare-fun m!1311819 () Bool)

(assert (=> b!1421201 m!1311819))

(declare-fun m!1311821 () Bool)

(assert (=> b!1421201 m!1311821))

(declare-fun m!1311823 () Bool)

(assert (=> b!1421209 m!1311823))

(declare-fun m!1311825 () Bool)

(assert (=> b!1421206 m!1311825))

(declare-fun m!1311827 () Bool)

(assert (=> b!1421206 m!1311827))

(assert (=> b!1421208 m!1311807))

(assert (=> b!1421208 m!1311807))

(declare-fun m!1311829 () Bool)

(assert (=> b!1421208 m!1311829))

(declare-fun m!1311831 () Bool)

(assert (=> b!1421202 m!1311831))

(declare-fun m!1311833 () Bool)

(assert (=> b!1421204 m!1311833))

(declare-fun m!1311835 () Bool)

(assert (=> start!122726 m!1311835))

(declare-fun m!1311837 () Bool)

(assert (=> start!122726 m!1311837))

(push 1)

(assert (not b!1421202))

(assert (not b!1421201))

(assert (not b!1421205))

(assert (not b!1421209))

(assert (not start!122726))

