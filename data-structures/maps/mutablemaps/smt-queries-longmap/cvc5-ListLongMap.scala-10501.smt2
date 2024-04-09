; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123682 () Bool)

(assert start!123682)

(declare-fun b!1433298 () Bool)

(declare-fun res!967074 () Bool)

(declare-fun e!809043 () Bool)

(assert (=> b!1433298 (=> (not res!967074) (not e!809043))))

(declare-datatypes ((array!97515 0))(
  ( (array!97516 (arr!47059 (Array (_ BitVec 32) (_ BitVec 64))) (size!47610 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97515)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433298 (= res!967074 (validKeyInArray!0 (select (arr!47059 a!2831) j!81)))))

(declare-fun b!1433299 () Bool)

(declare-fun e!809044 () Bool)

(assert (=> b!1433299 (= e!809043 e!809044)))

(declare-fun res!967079 () Bool)

(assert (=> b!1433299 (=> (not res!967079) (not e!809044))))

(declare-datatypes ((SeekEntryResult!11360 0))(
  ( (MissingZero!11360 (index!47831 (_ BitVec 32))) (Found!11360 (index!47832 (_ BitVec 32))) (Intermediate!11360 (undefined!12172 Bool) (index!47833 (_ BitVec 32)) (x!129486 (_ BitVec 32))) (Undefined!11360) (MissingVacant!11360 (index!47834 (_ BitVec 32))) )
))
(declare-fun lt!630948 () SeekEntryResult!11360)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97515 (_ BitVec 32)) SeekEntryResult!11360)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433299 (= res!967079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47059 a!2831) j!81) mask!2608) (select (arr!47059 a!2831) j!81) a!2831 mask!2608) lt!630948))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1433299 (= lt!630948 (Intermediate!11360 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433300 () Bool)

(declare-fun e!809047 () Bool)

(assert (=> b!1433300 (= e!809047 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630945 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433300 (= lt!630945 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433301 () Bool)

(declare-fun res!967070 () Bool)

(assert (=> b!1433301 (=> (not res!967070) (not e!809043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97515 (_ BitVec 32)) Bool)

(assert (=> b!1433301 (= res!967070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433302 () Bool)

(declare-fun res!967080 () Bool)

(assert (=> b!1433302 (=> (not res!967080) (not e!809043))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433302 (= res!967080 (and (= (size!47610 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47610 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47610 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433303 () Bool)

(declare-fun res!967073 () Bool)

(declare-fun e!809046 () Bool)

(assert (=> b!1433303 (=> (not res!967073) (not e!809046))))

(declare-fun lt!630947 () SeekEntryResult!11360)

(declare-fun lt!630944 () (_ BitVec 64))

(declare-fun lt!630946 () array!97515)

(assert (=> b!1433303 (= res!967073 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630944 lt!630946 mask!2608) lt!630947))))

(declare-fun b!1433304 () Bool)

(declare-fun res!967075 () Bool)

(assert (=> b!1433304 (=> (not res!967075) (not e!809043))))

(assert (=> b!1433304 (= res!967075 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47610 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47610 a!2831))))))

(declare-fun b!1433306 () Bool)

(declare-fun res!967077 () Bool)

(assert (=> b!1433306 (=> (not res!967077) (not e!809046))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433306 (= res!967077 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433307 () Bool)

(assert (=> b!1433307 (= e!809044 e!809046)))

(declare-fun res!967072 () Bool)

(assert (=> b!1433307 (=> (not res!967072) (not e!809046))))

(assert (=> b!1433307 (= res!967072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630944 mask!2608) lt!630944 lt!630946 mask!2608) lt!630947))))

(assert (=> b!1433307 (= lt!630947 (Intermediate!11360 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433307 (= lt!630944 (select (store (arr!47059 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433307 (= lt!630946 (array!97516 (store (arr!47059 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47610 a!2831)))))

(declare-fun b!1433308 () Bool)

(declare-fun res!967076 () Bool)

(assert (=> b!1433308 (=> (not res!967076) (not e!809043))))

(assert (=> b!1433308 (= res!967076 (validKeyInArray!0 (select (arr!47059 a!2831) i!982)))))

(declare-fun b!1433309 () Bool)

(assert (=> b!1433309 (= e!809046 (not e!809047))))

(declare-fun res!967083 () Bool)

(assert (=> b!1433309 (=> res!967083 e!809047)))

(assert (=> b!1433309 (= res!967083 (or (= (select (arr!47059 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47059 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47059 a!2831) index!585) (select (arr!47059 a!2831) j!81)) (= (select (store (arr!47059 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809045 () Bool)

(assert (=> b!1433309 e!809045))

(declare-fun res!967081 () Bool)

(assert (=> b!1433309 (=> (not res!967081) (not e!809045))))

(assert (=> b!1433309 (= res!967081 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48414 0))(
  ( (Unit!48415) )
))
(declare-fun lt!630949 () Unit!48414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48414)

(assert (=> b!1433309 (= lt!630949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!967071 () Bool)

(assert (=> start!123682 (=> (not res!967071) (not e!809043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123682 (= res!967071 (validMask!0 mask!2608))))

(assert (=> start!123682 e!809043))

(assert (=> start!123682 true))

(declare-fun array_inv!36004 (array!97515) Bool)

(assert (=> start!123682 (array_inv!36004 a!2831)))

(declare-fun b!1433305 () Bool)

(declare-fun res!967078 () Bool)

(assert (=> b!1433305 (=> (not res!967078) (not e!809043))))

(declare-datatypes ((List!33749 0))(
  ( (Nil!33746) (Cons!33745 (h!35071 (_ BitVec 64)) (t!48450 List!33749)) )
))
(declare-fun arrayNoDuplicates!0 (array!97515 (_ BitVec 32) List!33749) Bool)

(assert (=> b!1433305 (= res!967078 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33746))))

(declare-fun b!1433310 () Bool)

(declare-fun res!967082 () Bool)

(assert (=> b!1433310 (=> (not res!967082) (not e!809046))))

(assert (=> b!1433310 (= res!967082 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47059 a!2831) j!81) a!2831 mask!2608) lt!630948))))

(declare-fun b!1433311 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97515 (_ BitVec 32)) SeekEntryResult!11360)

(assert (=> b!1433311 (= e!809045 (= (seekEntryOrOpen!0 (select (arr!47059 a!2831) j!81) a!2831 mask!2608) (Found!11360 j!81)))))

(assert (= (and start!123682 res!967071) b!1433302))

(assert (= (and b!1433302 res!967080) b!1433308))

(assert (= (and b!1433308 res!967076) b!1433298))

(assert (= (and b!1433298 res!967074) b!1433301))

(assert (= (and b!1433301 res!967070) b!1433305))

(assert (= (and b!1433305 res!967078) b!1433304))

(assert (= (and b!1433304 res!967075) b!1433299))

(assert (= (and b!1433299 res!967079) b!1433307))

(assert (= (and b!1433307 res!967072) b!1433310))

(assert (= (and b!1433310 res!967082) b!1433303))

(assert (= (and b!1433303 res!967073) b!1433306))

(assert (= (and b!1433306 res!967077) b!1433309))

(assert (= (and b!1433309 res!967081) b!1433311))

(assert (= (and b!1433309 (not res!967083)) b!1433300))

(declare-fun m!1323071 () Bool)

(assert (=> start!123682 m!1323071))

(declare-fun m!1323073 () Bool)

(assert (=> start!123682 m!1323073))

(declare-fun m!1323075 () Bool)

(assert (=> b!1433301 m!1323075))

(declare-fun m!1323077 () Bool)

(assert (=> b!1433303 m!1323077))

(declare-fun m!1323079 () Bool)

(assert (=> b!1433298 m!1323079))

(assert (=> b!1433298 m!1323079))

(declare-fun m!1323081 () Bool)

(assert (=> b!1433298 m!1323081))

(declare-fun m!1323083 () Bool)

(assert (=> b!1433307 m!1323083))

(assert (=> b!1433307 m!1323083))

(declare-fun m!1323085 () Bool)

(assert (=> b!1433307 m!1323085))

(declare-fun m!1323087 () Bool)

(assert (=> b!1433307 m!1323087))

(declare-fun m!1323089 () Bool)

(assert (=> b!1433307 m!1323089))

(assert (=> b!1433310 m!1323079))

(assert (=> b!1433310 m!1323079))

(declare-fun m!1323091 () Bool)

(assert (=> b!1433310 m!1323091))

(declare-fun m!1323093 () Bool)

(assert (=> b!1433300 m!1323093))

(declare-fun m!1323095 () Bool)

(assert (=> b!1433308 m!1323095))

(assert (=> b!1433308 m!1323095))

(declare-fun m!1323097 () Bool)

(assert (=> b!1433308 m!1323097))

(assert (=> b!1433299 m!1323079))

(assert (=> b!1433299 m!1323079))

(declare-fun m!1323099 () Bool)

(assert (=> b!1433299 m!1323099))

(assert (=> b!1433299 m!1323099))

(assert (=> b!1433299 m!1323079))

(declare-fun m!1323101 () Bool)

(assert (=> b!1433299 m!1323101))

(declare-fun m!1323103 () Bool)

(assert (=> b!1433305 m!1323103))

(assert (=> b!1433311 m!1323079))

(assert (=> b!1433311 m!1323079))

(declare-fun m!1323105 () Bool)

(assert (=> b!1433311 m!1323105))

(assert (=> b!1433309 m!1323087))

(declare-fun m!1323107 () Bool)

(assert (=> b!1433309 m!1323107))

(declare-fun m!1323109 () Bool)

(assert (=> b!1433309 m!1323109))

(declare-fun m!1323111 () Bool)

(assert (=> b!1433309 m!1323111))

(assert (=> b!1433309 m!1323079))

(declare-fun m!1323113 () Bool)

(assert (=> b!1433309 m!1323113))

(push 1)

