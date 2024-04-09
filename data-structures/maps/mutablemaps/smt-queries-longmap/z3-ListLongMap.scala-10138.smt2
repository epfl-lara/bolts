; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119634 () Bool)

(assert start!119634)

(declare-fun b!1392981 () Bool)

(declare-fun res!932502 () Bool)

(declare-fun e!788814 () Bool)

(assert (=> b!1392981 (=> (not res!932502) (not e!788814))))

(declare-datatypes ((array!95234 0))(
  ( (array!95235 (arr!45971 (Array (_ BitVec 32) (_ BitVec 64))) (size!46522 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95234)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392981 (= res!932502 (validKeyInArray!0 (select (arr!45971 a!2901) j!112)))))

(declare-fun res!932505 () Bool)

(assert (=> start!119634 (=> (not res!932505) (not e!788814))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119634 (= res!932505 (validMask!0 mask!2840))))

(assert (=> start!119634 e!788814))

(assert (=> start!119634 true))

(declare-fun array_inv!34916 (array!95234) Bool)

(assert (=> start!119634 (array_inv!34916 a!2901)))

(declare-fun b!1392982 () Bool)

(declare-fun res!932500 () Bool)

(assert (=> b!1392982 (=> (not res!932500) (not e!788814))))

(declare-datatypes ((List!32670 0))(
  ( (Nil!32667) (Cons!32666 (h!33899 (_ BitVec 64)) (t!47371 List!32670)) )
))
(declare-fun arrayNoDuplicates!0 (array!95234 (_ BitVec 32) List!32670) Bool)

(assert (=> b!1392982 (= res!932500 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32667))))

(declare-fun e!788815 () Bool)

(declare-fun b!1392983 () Bool)

(declare-datatypes ((SeekEntryResult!10310 0))(
  ( (MissingZero!10310 (index!43610 (_ BitVec 32))) (Found!10310 (index!43611 (_ BitVec 32))) (Intermediate!10310 (undefined!11122 Bool) (index!43612 (_ BitVec 32)) (x!125301 (_ BitVec 32))) (Undefined!10310) (MissingVacant!10310 (index!43613 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95234 (_ BitVec 32)) SeekEntryResult!10310)

(assert (=> b!1392983 (= e!788815 (= (seekEntryOrOpen!0 (select (arr!45971 a!2901) j!112) a!2901 mask!2840) (Found!10310 j!112)))))

(declare-fun b!1392984 () Bool)

(declare-fun res!932499 () Bool)

(assert (=> b!1392984 (=> (not res!932499) (not e!788814))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1392984 (= res!932499 (and (= (size!46522 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46522 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46522 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392985 () Bool)

(declare-fun res!932504 () Bool)

(assert (=> b!1392985 (=> (not res!932504) (not e!788814))))

(assert (=> b!1392985 (= res!932504 (validKeyInArray!0 (select (arr!45971 a!2901) i!1037)))))

(declare-fun b!1392986 () Bool)

(declare-fun e!788816 () Bool)

(assert (=> b!1392986 (= e!788816 true)))

(declare-fun lt!611791 () SeekEntryResult!10310)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95234 (_ BitVec 32)) SeekEntryResult!10310)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392986 (= lt!611791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45971 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45971 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95235 (store (arr!45971 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46522 a!2901)) mask!2840))))

(declare-fun b!1392987 () Bool)

(assert (=> b!1392987 (= e!788814 (not e!788816))))

(declare-fun res!932501 () Bool)

(assert (=> b!1392987 (=> res!932501 e!788816)))

(declare-fun lt!611789 () SeekEntryResult!10310)

(get-info :version)

(assert (=> b!1392987 (= res!932501 (or (not ((_ is Intermediate!10310) lt!611789)) (undefined!11122 lt!611789)))))

(assert (=> b!1392987 e!788815))

(declare-fun res!932498 () Bool)

(assert (=> b!1392987 (=> (not res!932498) (not e!788815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95234 (_ BitVec 32)) Bool)

(assert (=> b!1392987 (= res!932498 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46574 0))(
  ( (Unit!46575) )
))
(declare-fun lt!611790 () Unit!46574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46574)

(assert (=> b!1392987 (= lt!611790 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1392987 (= lt!611789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45971 a!2901) j!112) mask!2840) (select (arr!45971 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392988 () Bool)

(declare-fun res!932503 () Bool)

(assert (=> b!1392988 (=> (not res!932503) (not e!788814))))

(assert (=> b!1392988 (= res!932503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119634 res!932505) b!1392984))

(assert (= (and b!1392984 res!932499) b!1392985))

(assert (= (and b!1392985 res!932504) b!1392981))

(assert (= (and b!1392981 res!932502) b!1392988))

(assert (= (and b!1392988 res!932503) b!1392982))

(assert (= (and b!1392982 res!932500) b!1392987))

(assert (= (and b!1392987 res!932498) b!1392983))

(assert (= (and b!1392987 (not res!932501)) b!1392986))

(declare-fun m!1278795 () Bool)

(assert (=> b!1392987 m!1278795))

(declare-fun m!1278797 () Bool)

(assert (=> b!1392987 m!1278797))

(assert (=> b!1392987 m!1278795))

(declare-fun m!1278799 () Bool)

(assert (=> b!1392987 m!1278799))

(assert (=> b!1392987 m!1278797))

(assert (=> b!1392987 m!1278795))

(declare-fun m!1278801 () Bool)

(assert (=> b!1392987 m!1278801))

(declare-fun m!1278803 () Bool)

(assert (=> b!1392987 m!1278803))

(declare-fun m!1278805 () Bool)

(assert (=> b!1392982 m!1278805))

(declare-fun m!1278807 () Bool)

(assert (=> b!1392986 m!1278807))

(declare-fun m!1278809 () Bool)

(assert (=> b!1392986 m!1278809))

(assert (=> b!1392986 m!1278809))

(declare-fun m!1278811 () Bool)

(assert (=> b!1392986 m!1278811))

(assert (=> b!1392986 m!1278811))

(assert (=> b!1392986 m!1278809))

(declare-fun m!1278813 () Bool)

(assert (=> b!1392986 m!1278813))

(declare-fun m!1278815 () Bool)

(assert (=> start!119634 m!1278815))

(declare-fun m!1278817 () Bool)

(assert (=> start!119634 m!1278817))

(declare-fun m!1278819 () Bool)

(assert (=> b!1392988 m!1278819))

(assert (=> b!1392983 m!1278795))

(assert (=> b!1392983 m!1278795))

(declare-fun m!1278821 () Bool)

(assert (=> b!1392983 m!1278821))

(assert (=> b!1392981 m!1278795))

(assert (=> b!1392981 m!1278795))

(declare-fun m!1278823 () Bool)

(assert (=> b!1392981 m!1278823))

(declare-fun m!1278825 () Bool)

(assert (=> b!1392985 m!1278825))

(assert (=> b!1392985 m!1278825))

(declare-fun m!1278827 () Bool)

(assert (=> b!1392985 m!1278827))

(check-sat (not b!1392988) (not b!1392981) (not b!1392982) (not start!119634) (not b!1392986) (not b!1392987) (not b!1392985) (not b!1392983))
(check-sat)
