; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122744 () Bool)

(assert start!122744)

(declare-fun b!1421533 () Bool)

(declare-fun res!957084 () Bool)

(declare-fun e!803783 () Bool)

(assert (=> b!1421533 (=> (not res!957084) (not e!803783))))

(declare-datatypes ((array!97027 0))(
  ( (array!97028 (arr!46827 (Array (_ BitVec 32) (_ BitVec 64))) (size!47378 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97027)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421533 (= res!957084 (validKeyInArray!0 (select (arr!46827 a!2831) j!81)))))

(declare-fun b!1421534 () Bool)

(declare-fun res!957086 () Bool)

(declare-fun e!803782 () Bool)

(assert (=> b!1421534 (=> (not res!957086) (not e!803782))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1421534 (= res!957086 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421535 () Bool)

(assert (=> b!1421535 (= e!803782 (not true))))

(declare-fun e!803784 () Bool)

(assert (=> b!1421535 e!803784))

(declare-fun res!957076 () Bool)

(assert (=> b!1421535 (=> (not res!957076) (not e!803784))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97027 (_ BitVec 32)) Bool)

(assert (=> b!1421535 (= res!957076 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48052 0))(
  ( (Unit!48053) )
))
(declare-fun lt!626274 () Unit!48052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48052)

(assert (=> b!1421535 (= lt!626274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421536 () Bool)

(declare-datatypes ((SeekEntryResult!11134 0))(
  ( (MissingZero!11134 (index!46927 (_ BitVec 32))) (Found!11134 (index!46928 (_ BitVec 32))) (Intermediate!11134 (undefined!11946 Bool) (index!46929 (_ BitVec 32)) (x!128579 (_ BitVec 32))) (Undefined!11134) (MissingVacant!11134 (index!46930 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97027 (_ BitVec 32)) SeekEntryResult!11134)

(assert (=> b!1421536 (= e!803784 (= (seekEntryOrOpen!0 (select (arr!46827 a!2831) j!81) a!2831 mask!2608) (Found!11134 j!81)))))

(declare-fun b!1421537 () Bool)

(declare-fun res!957078 () Bool)

(assert (=> b!1421537 (=> (not res!957078) (not e!803782))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626275 () SeekEntryResult!11134)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97027 (_ BitVec 32)) SeekEntryResult!11134)

(assert (=> b!1421537 (= res!957078 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46827 a!2831) j!81) a!2831 mask!2608) lt!626275))))

(declare-fun res!957081 () Bool)

(assert (=> start!122744 (=> (not res!957081) (not e!803783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122744 (= res!957081 (validMask!0 mask!2608))))

(assert (=> start!122744 e!803783))

(assert (=> start!122744 true))

(declare-fun array_inv!35772 (array!97027) Bool)

(assert (=> start!122744 (array_inv!35772 a!2831)))

(declare-fun b!1421538 () Bool)

(declare-fun res!957075 () Bool)

(assert (=> b!1421538 (=> (not res!957075) (not e!803782))))

(declare-fun lt!626277 () SeekEntryResult!11134)

(declare-fun lt!626278 () array!97027)

(declare-fun lt!626276 () (_ BitVec 64))

(assert (=> b!1421538 (= res!957075 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626276 lt!626278 mask!2608) lt!626277))))

(declare-fun b!1421539 () Bool)

(declare-fun res!957083 () Bool)

(assert (=> b!1421539 (=> (not res!957083) (not e!803783))))

(assert (=> b!1421539 (= res!957083 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47378 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47378 a!2831))))))

(declare-fun b!1421540 () Bool)

(declare-fun e!803786 () Bool)

(assert (=> b!1421540 (= e!803786 e!803782)))

(declare-fun res!957082 () Bool)

(assert (=> b!1421540 (=> (not res!957082) (not e!803782))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421540 (= res!957082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626276 mask!2608) lt!626276 lt!626278 mask!2608) lt!626277))))

(assert (=> b!1421540 (= lt!626277 (Intermediate!11134 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421540 (= lt!626276 (select (store (arr!46827 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421540 (= lt!626278 (array!97028 (store (arr!46827 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47378 a!2831)))))

(declare-fun b!1421541 () Bool)

(declare-fun res!957077 () Bool)

(assert (=> b!1421541 (=> (not res!957077) (not e!803783))))

(assert (=> b!1421541 (= res!957077 (and (= (size!47378 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47378 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47378 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421542 () Bool)

(declare-fun res!957080 () Bool)

(assert (=> b!1421542 (=> (not res!957080) (not e!803783))))

(assert (=> b!1421542 (= res!957080 (validKeyInArray!0 (select (arr!46827 a!2831) i!982)))))

(declare-fun b!1421543 () Bool)

(declare-fun res!957079 () Bool)

(assert (=> b!1421543 (=> (not res!957079) (not e!803783))))

(declare-datatypes ((List!33517 0))(
  ( (Nil!33514) (Cons!33513 (h!34815 (_ BitVec 64)) (t!48218 List!33517)) )
))
(declare-fun arrayNoDuplicates!0 (array!97027 (_ BitVec 32) List!33517) Bool)

(assert (=> b!1421543 (= res!957079 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33514))))

(declare-fun b!1421544 () Bool)

(declare-fun res!957087 () Bool)

(assert (=> b!1421544 (=> (not res!957087) (not e!803783))))

(assert (=> b!1421544 (= res!957087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421545 () Bool)

(assert (=> b!1421545 (= e!803783 e!803786)))

(declare-fun res!957085 () Bool)

(assert (=> b!1421545 (=> (not res!957085) (not e!803786))))

(assert (=> b!1421545 (= res!957085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46827 a!2831) j!81) mask!2608) (select (arr!46827 a!2831) j!81) a!2831 mask!2608) lt!626275))))

(assert (=> b!1421545 (= lt!626275 (Intermediate!11134 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122744 res!957081) b!1421541))

(assert (= (and b!1421541 res!957077) b!1421542))

(assert (= (and b!1421542 res!957080) b!1421533))

(assert (= (and b!1421533 res!957084) b!1421544))

(assert (= (and b!1421544 res!957087) b!1421543))

(assert (= (and b!1421543 res!957079) b!1421539))

(assert (= (and b!1421539 res!957083) b!1421545))

(assert (= (and b!1421545 res!957085) b!1421540))

(assert (= (and b!1421540 res!957082) b!1421537))

(assert (= (and b!1421537 res!957078) b!1421538))

(assert (= (and b!1421538 res!957075) b!1421534))

(assert (= (and b!1421534 res!957086) b!1421535))

(assert (= (and b!1421535 res!957076) b!1421536))

(declare-fun m!1312131 () Bool)

(assert (=> b!1421537 m!1312131))

(assert (=> b!1421537 m!1312131))

(declare-fun m!1312133 () Bool)

(assert (=> b!1421537 m!1312133))

(declare-fun m!1312135 () Bool)

(assert (=> start!122744 m!1312135))

(declare-fun m!1312137 () Bool)

(assert (=> start!122744 m!1312137))

(declare-fun m!1312139 () Bool)

(assert (=> b!1421542 m!1312139))

(assert (=> b!1421542 m!1312139))

(declare-fun m!1312141 () Bool)

(assert (=> b!1421542 m!1312141))

(declare-fun m!1312143 () Bool)

(assert (=> b!1421544 m!1312143))

(declare-fun m!1312145 () Bool)

(assert (=> b!1421535 m!1312145))

(declare-fun m!1312147 () Bool)

(assert (=> b!1421535 m!1312147))

(assert (=> b!1421536 m!1312131))

(assert (=> b!1421536 m!1312131))

(declare-fun m!1312149 () Bool)

(assert (=> b!1421536 m!1312149))

(assert (=> b!1421545 m!1312131))

(assert (=> b!1421545 m!1312131))

(declare-fun m!1312151 () Bool)

(assert (=> b!1421545 m!1312151))

(assert (=> b!1421545 m!1312151))

(assert (=> b!1421545 m!1312131))

(declare-fun m!1312153 () Bool)

(assert (=> b!1421545 m!1312153))

(declare-fun m!1312155 () Bool)

(assert (=> b!1421540 m!1312155))

(assert (=> b!1421540 m!1312155))

(declare-fun m!1312157 () Bool)

(assert (=> b!1421540 m!1312157))

(declare-fun m!1312159 () Bool)

(assert (=> b!1421540 m!1312159))

(declare-fun m!1312161 () Bool)

(assert (=> b!1421540 m!1312161))

(assert (=> b!1421533 m!1312131))

(assert (=> b!1421533 m!1312131))

(declare-fun m!1312163 () Bool)

(assert (=> b!1421533 m!1312163))

(declare-fun m!1312165 () Bool)

(assert (=> b!1421543 m!1312165))

(declare-fun m!1312167 () Bool)

(assert (=> b!1421538 m!1312167))

(push 1)

