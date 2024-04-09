; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122788 () Bool)

(assert start!122788)

(declare-fun b!1422505 () Bool)

(declare-fun e!804193 () Bool)

(declare-fun e!804190 () Bool)

(assert (=> b!1422505 (= e!804193 e!804190)))

(declare-fun res!958052 () Bool)

(assert (=> b!1422505 (=> res!958052 e!804190)))

(declare-fun lt!626680 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97071 0))(
  ( (array!97072 (arr!46849 (Array (_ BitVec 32) (_ BitVec 64))) (size!47400 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97071)

(assert (=> b!1422505 (= res!958052 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626680 #b00000000000000000000000000000000) (bvsge lt!626680 (size!47400 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422505 (= lt!626680 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422506 () Bool)

(declare-fun e!804189 () Bool)

(assert (=> b!1422506 (= e!804189 (not e!804193))))

(declare-fun res!958062 () Bool)

(assert (=> b!1422506 (=> res!958062 e!804193)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422506 (= res!958062 (or (= (select (arr!46849 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46849 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46849 a!2831) index!585) (select (arr!46849 a!2831) j!81)) (= (select (store (arr!46849 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804188 () Bool)

(assert (=> b!1422506 e!804188))

(declare-fun res!958053 () Bool)

(assert (=> b!1422506 (=> (not res!958053) (not e!804188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97071 (_ BitVec 32)) Bool)

(assert (=> b!1422506 (= res!958053 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48096 0))(
  ( (Unit!48097) )
))
(declare-fun lt!626681 () Unit!48096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48096)

(assert (=> b!1422506 (= lt!626681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422507 () Bool)

(declare-fun res!958054 () Bool)

(declare-fun e!804192 () Bool)

(assert (=> b!1422507 (=> (not res!958054) (not e!804192))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1422507 (= res!958054 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47400 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47400 a!2831))))))

(declare-fun b!1422508 () Bool)

(declare-fun res!958056 () Bool)

(assert (=> b!1422508 (=> (not res!958056) (not e!804192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422508 (= res!958056 (validKeyInArray!0 (select (arr!46849 a!2831) j!81)))))

(declare-fun res!958058 () Bool)

(assert (=> start!122788 (=> (not res!958058) (not e!804192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122788 (= res!958058 (validMask!0 mask!2608))))

(assert (=> start!122788 e!804192))

(assert (=> start!122788 true))

(declare-fun array_inv!35794 (array!97071) Bool)

(assert (=> start!122788 (array_inv!35794 a!2831)))

(declare-fun b!1422509 () Bool)

(declare-fun e!804191 () Bool)

(assert (=> b!1422509 (= e!804191 e!804189)))

(declare-fun res!958060 () Bool)

(assert (=> b!1422509 (=> (not res!958060) (not e!804189))))

(declare-fun lt!626686 () array!97071)

(declare-fun lt!626682 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11156 0))(
  ( (MissingZero!11156 (index!47015 (_ BitVec 32))) (Found!11156 (index!47016 (_ BitVec 32))) (Intermediate!11156 (undefined!11968 Bool) (index!47017 (_ BitVec 32)) (x!128665 (_ BitVec 32))) (Undefined!11156) (MissingVacant!11156 (index!47018 (_ BitVec 32))) )
))
(declare-fun lt!626683 () SeekEntryResult!11156)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97071 (_ BitVec 32)) SeekEntryResult!11156)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422509 (= res!958060 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626682 mask!2608) lt!626682 lt!626686 mask!2608) lt!626683))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422509 (= lt!626683 (Intermediate!11156 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422509 (= lt!626682 (select (store (arr!46849 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422509 (= lt!626686 (array!97072 (store (arr!46849 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47400 a!2831)))))

(declare-fun b!1422510 () Bool)

(declare-fun res!958051 () Bool)

(assert (=> b!1422510 (=> (not res!958051) (not e!804192))))

(assert (=> b!1422510 (= res!958051 (validKeyInArray!0 (select (arr!46849 a!2831) i!982)))))

(declare-fun b!1422511 () Bool)

(declare-fun res!958059 () Bool)

(assert (=> b!1422511 (=> (not res!958059) (not e!804192))))

(declare-datatypes ((List!33539 0))(
  ( (Nil!33536) (Cons!33535 (h!34837 (_ BitVec 64)) (t!48240 List!33539)) )
))
(declare-fun arrayNoDuplicates!0 (array!97071 (_ BitVec 32) List!33539) Bool)

(assert (=> b!1422511 (= res!958059 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33536))))

(declare-fun b!1422512 () Bool)

(assert (=> b!1422512 (= e!804190 true)))

(declare-fun lt!626684 () SeekEntryResult!11156)

(assert (=> b!1422512 (= lt!626684 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626680 lt!626682 lt!626686 mask!2608))))

(declare-fun b!1422513 () Bool)

(declare-fun res!958047 () Bool)

(assert (=> b!1422513 (=> (not res!958047) (not e!804189))))

(declare-fun lt!626685 () SeekEntryResult!11156)

(assert (=> b!1422513 (= res!958047 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46849 a!2831) j!81) a!2831 mask!2608) lt!626685))))

(declare-fun b!1422514 () Bool)

(assert (=> b!1422514 (= e!804192 e!804191)))

(declare-fun res!958055 () Bool)

(assert (=> b!1422514 (=> (not res!958055) (not e!804191))))

(assert (=> b!1422514 (= res!958055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46849 a!2831) j!81) mask!2608) (select (arr!46849 a!2831) j!81) a!2831 mask!2608) lt!626685))))

(assert (=> b!1422514 (= lt!626685 (Intermediate!11156 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422515 () Bool)

(declare-fun res!958048 () Bool)

(assert (=> b!1422515 (=> (not res!958048) (not e!804192))))

(assert (=> b!1422515 (= res!958048 (and (= (size!47400 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47400 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47400 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422516 () Bool)

(declare-fun res!958050 () Bool)

(assert (=> b!1422516 (=> (not res!958050) (not e!804189))))

(assert (=> b!1422516 (= res!958050 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626682 lt!626686 mask!2608) lt!626683))))

(declare-fun b!1422517 () Bool)

(declare-fun res!958049 () Bool)

(assert (=> b!1422517 (=> res!958049 e!804190)))

(assert (=> b!1422517 (= res!958049 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626680 (select (arr!46849 a!2831) j!81) a!2831 mask!2608) lt!626685)))))

(declare-fun b!1422518 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97071 (_ BitVec 32)) SeekEntryResult!11156)

(assert (=> b!1422518 (= e!804188 (= (seekEntryOrOpen!0 (select (arr!46849 a!2831) j!81) a!2831 mask!2608) (Found!11156 j!81)))))

(declare-fun b!1422519 () Bool)

(declare-fun res!958057 () Bool)

(assert (=> b!1422519 (=> (not res!958057) (not e!804189))))

(assert (=> b!1422519 (= res!958057 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422520 () Bool)

(declare-fun res!958061 () Bool)

(assert (=> b!1422520 (=> (not res!958061) (not e!804192))))

(assert (=> b!1422520 (= res!958061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122788 res!958058) b!1422515))

(assert (= (and b!1422515 res!958048) b!1422510))

(assert (= (and b!1422510 res!958051) b!1422508))

(assert (= (and b!1422508 res!958056) b!1422520))

(assert (= (and b!1422520 res!958061) b!1422511))

(assert (= (and b!1422511 res!958059) b!1422507))

(assert (= (and b!1422507 res!958054) b!1422514))

(assert (= (and b!1422514 res!958055) b!1422509))

(assert (= (and b!1422509 res!958060) b!1422513))

(assert (= (and b!1422513 res!958047) b!1422516))

(assert (= (and b!1422516 res!958050) b!1422519))

(assert (= (and b!1422519 res!958057) b!1422506))

(assert (= (and b!1422506 res!958053) b!1422518))

(assert (= (and b!1422506 (not res!958062)) b!1422505))

(assert (= (and b!1422505 (not res!958052)) b!1422517))

(assert (= (and b!1422517 (not res!958049)) b!1422512))

(declare-fun m!1313111 () Bool)

(assert (=> b!1422513 m!1313111))

(assert (=> b!1422513 m!1313111))

(declare-fun m!1313113 () Bool)

(assert (=> b!1422513 m!1313113))

(assert (=> b!1422514 m!1313111))

(assert (=> b!1422514 m!1313111))

(declare-fun m!1313115 () Bool)

(assert (=> b!1422514 m!1313115))

(assert (=> b!1422514 m!1313115))

(assert (=> b!1422514 m!1313111))

(declare-fun m!1313117 () Bool)

(assert (=> b!1422514 m!1313117))

(declare-fun m!1313119 () Bool)

(assert (=> b!1422520 m!1313119))

(declare-fun m!1313121 () Bool)

(assert (=> b!1422511 m!1313121))

(declare-fun m!1313123 () Bool)

(assert (=> b!1422506 m!1313123))

(declare-fun m!1313125 () Bool)

(assert (=> b!1422506 m!1313125))

(declare-fun m!1313127 () Bool)

(assert (=> b!1422506 m!1313127))

(declare-fun m!1313129 () Bool)

(assert (=> b!1422506 m!1313129))

(assert (=> b!1422506 m!1313111))

(declare-fun m!1313131 () Bool)

(assert (=> b!1422506 m!1313131))

(declare-fun m!1313133 () Bool)

(assert (=> b!1422505 m!1313133))

(assert (=> b!1422517 m!1313111))

(assert (=> b!1422517 m!1313111))

(declare-fun m!1313135 () Bool)

(assert (=> b!1422517 m!1313135))

(declare-fun m!1313137 () Bool)

(assert (=> b!1422512 m!1313137))

(assert (=> b!1422518 m!1313111))

(assert (=> b!1422518 m!1313111))

(declare-fun m!1313139 () Bool)

(assert (=> b!1422518 m!1313139))

(declare-fun m!1313141 () Bool)

(assert (=> start!122788 m!1313141))

(declare-fun m!1313143 () Bool)

(assert (=> start!122788 m!1313143))

(assert (=> b!1422508 m!1313111))

(assert (=> b!1422508 m!1313111))

(declare-fun m!1313145 () Bool)

(assert (=> b!1422508 m!1313145))

(declare-fun m!1313147 () Bool)

(assert (=> b!1422510 m!1313147))

(assert (=> b!1422510 m!1313147))

(declare-fun m!1313149 () Bool)

(assert (=> b!1422510 m!1313149))

(declare-fun m!1313151 () Bool)

(assert (=> b!1422509 m!1313151))

(assert (=> b!1422509 m!1313151))

(declare-fun m!1313153 () Bool)

(assert (=> b!1422509 m!1313153))

(assert (=> b!1422509 m!1313123))

(declare-fun m!1313155 () Bool)

(assert (=> b!1422509 m!1313155))

(declare-fun m!1313157 () Bool)

(assert (=> b!1422516 m!1313157))

(push 1)

