; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119546 () Bool)

(assert start!119546)

(declare-fun b!1392291 () Bool)

(declare-fun res!931973 () Bool)

(declare-fun e!788443 () Bool)

(assert (=> b!1392291 (=> (not res!931973) (not e!788443))))

(declare-datatypes ((array!95197 0))(
  ( (array!95198 (arr!45954 (Array (_ BitVec 32) (_ BitVec 64))) (size!46505 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95197)

(declare-datatypes ((List!32653 0))(
  ( (Nil!32650) (Cons!32649 (h!33879 (_ BitVec 64)) (t!47354 List!32653)) )
))
(declare-fun arrayNoDuplicates!0 (array!95197 (_ BitVec 32) List!32653) Bool)

(assert (=> b!1392291 (= res!931973 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32650))))

(declare-fun b!1392292 () Bool)

(declare-fun res!931974 () Bool)

(assert (=> b!1392292 (=> (not res!931974) (not e!788443))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392292 (= res!931974 (validKeyInArray!0 (select (arr!45954 a!2901) j!112)))))

(declare-fun b!1392293 () Bool)

(declare-fun e!788444 () Bool)

(assert (=> b!1392293 (= e!788444 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611535 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392293 (= lt!611535 (toIndex!0 (select (store (arr!45954 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1392294 () Bool)

(declare-fun res!931979 () Bool)

(assert (=> b!1392294 (=> (not res!931979) (not e!788443))))

(assert (=> b!1392294 (= res!931979 (validKeyInArray!0 (select (arr!45954 a!2901) i!1037)))))

(declare-fun b!1392295 () Bool)

(assert (=> b!1392295 (= e!788443 (not e!788444))))

(declare-fun res!931975 () Bool)

(assert (=> b!1392295 (=> res!931975 e!788444)))

(declare-datatypes ((SeekEntryResult!10293 0))(
  ( (MissingZero!10293 (index!43542 (_ BitVec 32))) (Found!10293 (index!43543 (_ BitVec 32))) (Intermediate!10293 (undefined!11105 Bool) (index!43544 (_ BitVec 32)) (x!125230 (_ BitVec 32))) (Undefined!10293) (MissingVacant!10293 (index!43545 (_ BitVec 32))) )
))
(declare-fun lt!611536 () SeekEntryResult!10293)

(assert (=> b!1392295 (= res!931975 (or (not (is-Intermediate!10293 lt!611536)) (undefined!11105 lt!611536)))))

(declare-fun e!788441 () Bool)

(assert (=> b!1392295 e!788441))

(declare-fun res!931976 () Bool)

(assert (=> b!1392295 (=> (not res!931976) (not e!788441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95197 (_ BitVec 32)) Bool)

(assert (=> b!1392295 (= res!931976 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46540 0))(
  ( (Unit!46541) )
))
(declare-fun lt!611534 () Unit!46540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46540)

(assert (=> b!1392295 (= lt!611534 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95197 (_ BitVec 32)) SeekEntryResult!10293)

(assert (=> b!1392295 (= lt!611536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45954 a!2901) j!112) mask!2840) (select (arr!45954 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!931978 () Bool)

(assert (=> start!119546 (=> (not res!931978) (not e!788443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119546 (= res!931978 (validMask!0 mask!2840))))

(assert (=> start!119546 e!788443))

(assert (=> start!119546 true))

(declare-fun array_inv!34899 (array!95197) Bool)

(assert (=> start!119546 (array_inv!34899 a!2901)))

(declare-fun b!1392296 () Bool)

(declare-fun res!931977 () Bool)

(assert (=> b!1392296 (=> (not res!931977) (not e!788443))))

(assert (=> b!1392296 (= res!931977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392297 () Bool)

(declare-fun res!931980 () Bool)

(assert (=> b!1392297 (=> (not res!931980) (not e!788443))))

(assert (=> b!1392297 (= res!931980 (and (= (size!46505 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46505 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46505 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392298 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95197 (_ BitVec 32)) SeekEntryResult!10293)

(assert (=> b!1392298 (= e!788441 (= (seekEntryOrOpen!0 (select (arr!45954 a!2901) j!112) a!2901 mask!2840) (Found!10293 j!112)))))

(assert (= (and start!119546 res!931978) b!1392297))

(assert (= (and b!1392297 res!931980) b!1392294))

(assert (= (and b!1392294 res!931979) b!1392292))

(assert (= (and b!1392292 res!931974) b!1392296))

(assert (= (and b!1392296 res!931977) b!1392291))

(assert (= (and b!1392291 res!931973) b!1392295))

(assert (= (and b!1392295 res!931976) b!1392298))

(assert (= (and b!1392295 (not res!931975)) b!1392293))

(declare-fun m!1278069 () Bool)

(assert (=> b!1392294 m!1278069))

(assert (=> b!1392294 m!1278069))

(declare-fun m!1278071 () Bool)

(assert (=> b!1392294 m!1278071))

(declare-fun m!1278073 () Bool)

(assert (=> b!1392298 m!1278073))

(assert (=> b!1392298 m!1278073))

(declare-fun m!1278075 () Bool)

(assert (=> b!1392298 m!1278075))

(declare-fun m!1278077 () Bool)

(assert (=> start!119546 m!1278077))

(declare-fun m!1278079 () Bool)

(assert (=> start!119546 m!1278079))

(assert (=> b!1392292 m!1278073))

(assert (=> b!1392292 m!1278073))

(declare-fun m!1278081 () Bool)

(assert (=> b!1392292 m!1278081))

(declare-fun m!1278083 () Bool)

(assert (=> b!1392296 m!1278083))

(assert (=> b!1392295 m!1278073))

(declare-fun m!1278085 () Bool)

(assert (=> b!1392295 m!1278085))

(assert (=> b!1392295 m!1278073))

(declare-fun m!1278087 () Bool)

(assert (=> b!1392295 m!1278087))

(assert (=> b!1392295 m!1278085))

(assert (=> b!1392295 m!1278073))

(declare-fun m!1278089 () Bool)

(assert (=> b!1392295 m!1278089))

(declare-fun m!1278091 () Bool)

(assert (=> b!1392295 m!1278091))

(declare-fun m!1278093 () Bool)

(assert (=> b!1392293 m!1278093))

(declare-fun m!1278095 () Bool)

(assert (=> b!1392293 m!1278095))

(assert (=> b!1392293 m!1278095))

(declare-fun m!1278097 () Bool)

(assert (=> b!1392293 m!1278097))

(declare-fun m!1278099 () Bool)

(assert (=> b!1392291 m!1278099))

(push 1)

(assert (not b!1392295))

(assert (not b!1392291))

(assert (not start!119546))

(assert (not b!1392298))

(assert (not b!1392296))

(assert (not b!1392293))

(assert (not b!1392292))

(assert (not b!1392294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

