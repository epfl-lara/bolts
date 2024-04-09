; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122770 () Bool)

(assert start!122770)

(declare-fun b!1422073 () Bool)

(declare-fun e!803999 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97053 0))(
  ( (array!97054 (arr!46840 (Array (_ BitVec 32) (_ BitVec 64))) (size!47391 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97053)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11147 0))(
  ( (MissingZero!11147 (index!46979 (_ BitVec 32))) (Found!11147 (index!46980 (_ BitVec 32))) (Intermediate!11147 (undefined!11959 Bool) (index!46981 (_ BitVec 32)) (x!128632 (_ BitVec 32))) (Undefined!11147) (MissingVacant!11147 (index!46982 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97053 (_ BitVec 32)) SeekEntryResult!11147)

(assert (=> b!1422073 (= e!803999 (= (seekEntryOrOpen!0 (select (arr!46840 a!2831) j!81) a!2831 mask!2608) (Found!11147 j!81)))))

(declare-fun b!1422074 () Bool)

(declare-fun res!957623 () Bool)

(declare-fun e!804004 () Bool)

(assert (=> b!1422074 (=> (not res!957623) (not e!804004))))

(declare-datatypes ((List!33530 0))(
  ( (Nil!33527) (Cons!33526 (h!34828 (_ BitVec 64)) (t!48231 List!33530)) )
))
(declare-fun arrayNoDuplicates!0 (array!97053 (_ BitVec 32) List!33530) Bool)

(assert (=> b!1422074 (= res!957623 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33527))))

(declare-fun b!1422075 () Bool)

(declare-fun e!804001 () Bool)

(declare-fun e!804002 () Bool)

(assert (=> b!1422075 (= e!804001 e!804002)))

(declare-fun res!957616 () Bool)

(assert (=> b!1422075 (=> res!957616 e!804002)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626491 () (_ BitVec 32))

(assert (=> b!1422075 (= res!957616 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626491 #b00000000000000000000000000000000) (bvsge lt!626491 (size!47391 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422075 (= lt!626491 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!957624 () Bool)

(assert (=> start!122770 (=> (not res!957624) (not e!804004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122770 (= res!957624 (validMask!0 mask!2608))))

(assert (=> start!122770 e!804004))

(assert (=> start!122770 true))

(declare-fun array_inv!35785 (array!97053) Bool)

(assert (=> start!122770 (array_inv!35785 a!2831)))

(declare-fun b!1422076 () Bool)

(declare-fun res!957625 () Bool)

(assert (=> b!1422076 (=> (not res!957625) (not e!804004))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1422076 (= res!957625 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47391 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47391 a!2831))))))

(declare-fun b!1422077 () Bool)

(declare-fun e!804005 () Bool)

(assert (=> b!1422077 (= e!804004 e!804005)))

(declare-fun res!957620 () Bool)

(assert (=> b!1422077 (=> (not res!957620) (not e!804005))))

(declare-fun lt!626492 () SeekEntryResult!11147)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97053 (_ BitVec 32)) SeekEntryResult!11147)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422077 (= res!957620 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46840 a!2831) j!81) mask!2608) (select (arr!46840 a!2831) j!81) a!2831 mask!2608) lt!626492))))

(assert (=> b!1422077 (= lt!626492 (Intermediate!11147 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422078 () Bool)

(declare-fun res!957617 () Bool)

(assert (=> b!1422078 (=> (not res!957617) (not e!804004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422078 (= res!957617 (validKeyInArray!0 (select (arr!46840 a!2831) j!81)))))

(declare-fun b!1422079 () Bool)

(assert (=> b!1422079 (= e!804002 true)))

(declare-fun lt!626497 () array!97053)

(declare-fun lt!626496 () (_ BitVec 64))

(declare-fun lt!626494 () SeekEntryResult!11147)

(assert (=> b!1422079 (= lt!626494 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626491 lt!626496 lt!626497 mask!2608))))

(declare-fun b!1422080 () Bool)

(declare-fun res!957621 () Bool)

(assert (=> b!1422080 (=> res!957621 e!804002)))

(assert (=> b!1422080 (= res!957621 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626491 (select (arr!46840 a!2831) j!81) a!2831 mask!2608) lt!626492)))))

(declare-fun b!1422081 () Bool)

(declare-fun res!957629 () Bool)

(declare-fun e!804003 () Bool)

(assert (=> b!1422081 (=> (not res!957629) (not e!804003))))

(declare-fun lt!626495 () SeekEntryResult!11147)

(assert (=> b!1422081 (= res!957629 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626496 lt!626497 mask!2608) lt!626495))))

(declare-fun b!1422082 () Bool)

(assert (=> b!1422082 (= e!804005 e!804003)))

(declare-fun res!957615 () Bool)

(assert (=> b!1422082 (=> (not res!957615) (not e!804003))))

(assert (=> b!1422082 (= res!957615 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626496 mask!2608) lt!626496 lt!626497 mask!2608) lt!626495))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422082 (= lt!626495 (Intermediate!11147 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422082 (= lt!626496 (select (store (arr!46840 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422082 (= lt!626497 (array!97054 (store (arr!46840 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47391 a!2831)))))

(declare-fun b!1422083 () Bool)

(declare-fun res!957626 () Bool)

(assert (=> b!1422083 (=> (not res!957626) (not e!804004))))

(assert (=> b!1422083 (= res!957626 (and (= (size!47391 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47391 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47391 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422084 () Bool)

(declare-fun res!957619 () Bool)

(assert (=> b!1422084 (=> (not res!957619) (not e!804004))))

(assert (=> b!1422084 (= res!957619 (validKeyInArray!0 (select (arr!46840 a!2831) i!982)))))

(declare-fun b!1422085 () Bool)

(declare-fun res!957622 () Bool)

(assert (=> b!1422085 (=> (not res!957622) (not e!804004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97053 (_ BitVec 32)) Bool)

(assert (=> b!1422085 (= res!957622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422086 () Bool)

(declare-fun res!957628 () Bool)

(assert (=> b!1422086 (=> (not res!957628) (not e!804003))))

(assert (=> b!1422086 (= res!957628 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422087 () Bool)

(declare-fun res!957630 () Bool)

(assert (=> b!1422087 (=> (not res!957630) (not e!804003))))

(assert (=> b!1422087 (= res!957630 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46840 a!2831) j!81) a!2831 mask!2608) lt!626492))))

(declare-fun b!1422088 () Bool)

(assert (=> b!1422088 (= e!804003 (not e!804001))))

(declare-fun res!957618 () Bool)

(assert (=> b!1422088 (=> res!957618 e!804001)))

(assert (=> b!1422088 (= res!957618 (or (= (select (arr!46840 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46840 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46840 a!2831) index!585) (select (arr!46840 a!2831) j!81)) (= (select (store (arr!46840 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422088 e!803999))

(declare-fun res!957627 () Bool)

(assert (=> b!1422088 (=> (not res!957627) (not e!803999))))

(assert (=> b!1422088 (= res!957627 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48078 0))(
  ( (Unit!48079) )
))
(declare-fun lt!626493 () Unit!48078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48078)

(assert (=> b!1422088 (= lt!626493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!122770 res!957624) b!1422083))

(assert (= (and b!1422083 res!957626) b!1422084))

(assert (= (and b!1422084 res!957619) b!1422078))

(assert (= (and b!1422078 res!957617) b!1422085))

(assert (= (and b!1422085 res!957622) b!1422074))

(assert (= (and b!1422074 res!957623) b!1422076))

(assert (= (and b!1422076 res!957625) b!1422077))

(assert (= (and b!1422077 res!957620) b!1422082))

(assert (= (and b!1422082 res!957615) b!1422087))

(assert (= (and b!1422087 res!957630) b!1422081))

(assert (= (and b!1422081 res!957629) b!1422086))

(assert (= (and b!1422086 res!957628) b!1422088))

(assert (= (and b!1422088 res!957627) b!1422073))

(assert (= (and b!1422088 (not res!957618)) b!1422075))

(assert (= (and b!1422075 (not res!957616)) b!1422080))

(assert (= (and b!1422080 (not res!957621)) b!1422079))

(declare-fun m!1312679 () Bool)

(assert (=> b!1422074 m!1312679))

(declare-fun m!1312681 () Bool)

(assert (=> b!1422080 m!1312681))

(assert (=> b!1422080 m!1312681))

(declare-fun m!1312683 () Bool)

(assert (=> b!1422080 m!1312683))

(declare-fun m!1312685 () Bool)

(assert (=> start!122770 m!1312685))

(declare-fun m!1312687 () Bool)

(assert (=> start!122770 m!1312687))

(declare-fun m!1312689 () Bool)

(assert (=> b!1422081 m!1312689))

(declare-fun m!1312691 () Bool)

(assert (=> b!1422075 m!1312691))

(declare-fun m!1312693 () Bool)

(assert (=> b!1422082 m!1312693))

(assert (=> b!1422082 m!1312693))

(declare-fun m!1312695 () Bool)

(assert (=> b!1422082 m!1312695))

(declare-fun m!1312697 () Bool)

(assert (=> b!1422082 m!1312697))

(declare-fun m!1312699 () Bool)

(assert (=> b!1422082 m!1312699))

(assert (=> b!1422077 m!1312681))

(assert (=> b!1422077 m!1312681))

(declare-fun m!1312701 () Bool)

(assert (=> b!1422077 m!1312701))

(assert (=> b!1422077 m!1312701))

(assert (=> b!1422077 m!1312681))

(declare-fun m!1312703 () Bool)

(assert (=> b!1422077 m!1312703))

(assert (=> b!1422088 m!1312697))

(declare-fun m!1312705 () Bool)

(assert (=> b!1422088 m!1312705))

(declare-fun m!1312707 () Bool)

(assert (=> b!1422088 m!1312707))

(declare-fun m!1312709 () Bool)

(assert (=> b!1422088 m!1312709))

(assert (=> b!1422088 m!1312681))

(declare-fun m!1312711 () Bool)

(assert (=> b!1422088 m!1312711))

(declare-fun m!1312713 () Bool)

(assert (=> b!1422079 m!1312713))

(assert (=> b!1422073 m!1312681))

(assert (=> b!1422073 m!1312681))

(declare-fun m!1312715 () Bool)

(assert (=> b!1422073 m!1312715))

(declare-fun m!1312717 () Bool)

(assert (=> b!1422084 m!1312717))

(assert (=> b!1422084 m!1312717))

(declare-fun m!1312719 () Bool)

(assert (=> b!1422084 m!1312719))

(declare-fun m!1312721 () Bool)

(assert (=> b!1422085 m!1312721))

(assert (=> b!1422087 m!1312681))

(assert (=> b!1422087 m!1312681))

(declare-fun m!1312723 () Bool)

(assert (=> b!1422087 m!1312723))

(assert (=> b!1422078 m!1312681))

(assert (=> b!1422078 m!1312681))

(declare-fun m!1312725 () Bool)

(assert (=> b!1422078 m!1312725))

(push 1)

