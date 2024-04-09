; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120566 () Bool)

(assert start!120566)

(declare-fun b!1403352 () Bool)

(declare-fun res!941978 () Bool)

(declare-fun e!794624 () Bool)

(assert (=> b!1403352 (=> (not res!941978) (not e!794624))))

(declare-datatypes ((array!95893 0))(
  ( (array!95894 (arr!46293 (Array (_ BitVec 32) (_ BitVec 64))) (size!46844 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95893)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95893 (_ BitVec 32)) Bool)

(assert (=> b!1403352 (= res!941978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403353 () Bool)

(declare-fun res!941976 () Bool)

(assert (=> b!1403353 (=> (not res!941976) (not e!794624))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403353 (= res!941976 (validKeyInArray!0 (select (arr!46293 a!2901) i!1037)))))

(declare-fun b!1403355 () Bool)

(declare-fun res!941977 () Bool)

(assert (=> b!1403355 (=> (not res!941977) (not e!794624))))

(declare-datatypes ((List!32992 0))(
  ( (Nil!32989) (Cons!32988 (h!34236 (_ BitVec 64)) (t!47693 List!32992)) )
))
(declare-fun arrayNoDuplicates!0 (array!95893 (_ BitVec 32) List!32992) Bool)

(assert (=> b!1403355 (= res!941977 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32989))))

(declare-fun b!1403356 () Bool)

(declare-fun e!794626 () Bool)

(assert (=> b!1403356 (= e!794626 true)))

(declare-datatypes ((SeekEntryResult!10632 0))(
  ( (MissingZero!10632 (index!44904 (_ BitVec 32))) (Found!10632 (index!44905 (_ BitVec 32))) (Intermediate!10632 (undefined!11444 Bool) (index!44906 (_ BitVec 32)) (x!126518 (_ BitVec 32))) (Undefined!10632) (MissingVacant!10632 (index!44907 (_ BitVec 32))) )
))
(declare-fun lt!618339 () SeekEntryResult!10632)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95893 (_ BitVec 32)) SeekEntryResult!10632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403356 (= lt!618339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46293 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46293 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95894 (store (arr!46293 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46844 a!2901)) mask!2840))))

(declare-fun b!1403357 () Bool)

(declare-fun res!941979 () Bool)

(assert (=> b!1403357 (=> (not res!941979) (not e!794624))))

(assert (=> b!1403357 (= res!941979 (validKeyInArray!0 (select (arr!46293 a!2901) j!112)))))

(declare-fun b!1403358 () Bool)

(assert (=> b!1403358 (= e!794624 (not e!794626))))

(declare-fun res!941975 () Bool)

(assert (=> b!1403358 (=> res!941975 e!794626)))

(declare-fun lt!618340 () SeekEntryResult!10632)

(assert (=> b!1403358 (= res!941975 (or (not (is-Intermediate!10632 lt!618340)) (undefined!11444 lt!618340)))))

(declare-fun e!794627 () Bool)

(assert (=> b!1403358 e!794627))

(declare-fun res!941972 () Bool)

(assert (=> b!1403358 (=> (not res!941972) (not e!794627))))

(assert (=> b!1403358 (= res!941972 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47218 0))(
  ( (Unit!47219) )
))
(declare-fun lt!618338 () Unit!47218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47218)

(assert (=> b!1403358 (= lt!618338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403358 (= lt!618340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46293 a!2901) j!112) mask!2840) (select (arr!46293 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403359 () Bool)

(declare-fun res!941974 () Bool)

(assert (=> b!1403359 (=> (not res!941974) (not e!794624))))

(assert (=> b!1403359 (= res!941974 (and (= (size!46844 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46844 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46844 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941973 () Bool)

(assert (=> start!120566 (=> (not res!941973) (not e!794624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120566 (= res!941973 (validMask!0 mask!2840))))

(assert (=> start!120566 e!794624))

(assert (=> start!120566 true))

(declare-fun array_inv!35238 (array!95893) Bool)

(assert (=> start!120566 (array_inv!35238 a!2901)))

(declare-fun b!1403354 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95893 (_ BitVec 32)) SeekEntryResult!10632)

(assert (=> b!1403354 (= e!794627 (= (seekEntryOrOpen!0 (select (arr!46293 a!2901) j!112) a!2901 mask!2840) (Found!10632 j!112)))))

(assert (= (and start!120566 res!941973) b!1403359))

(assert (= (and b!1403359 res!941974) b!1403353))

(assert (= (and b!1403353 res!941976) b!1403357))

(assert (= (and b!1403357 res!941979) b!1403352))

(assert (= (and b!1403352 res!941978) b!1403355))

(assert (= (and b!1403355 res!941977) b!1403358))

(assert (= (and b!1403358 res!941972) b!1403354))

(assert (= (and b!1403358 (not res!941975)) b!1403356))

(declare-fun m!1292047 () Bool)

(assert (=> b!1403353 m!1292047))

(assert (=> b!1403353 m!1292047))

(declare-fun m!1292049 () Bool)

(assert (=> b!1403353 m!1292049))

(declare-fun m!1292051 () Bool)

(assert (=> start!120566 m!1292051))

(declare-fun m!1292053 () Bool)

(assert (=> start!120566 m!1292053))

(declare-fun m!1292055 () Bool)

(assert (=> b!1403355 m!1292055))

(declare-fun m!1292057 () Bool)

(assert (=> b!1403356 m!1292057))

(declare-fun m!1292059 () Bool)

(assert (=> b!1403356 m!1292059))

(assert (=> b!1403356 m!1292059))

(declare-fun m!1292061 () Bool)

(assert (=> b!1403356 m!1292061))

(assert (=> b!1403356 m!1292061))

(assert (=> b!1403356 m!1292059))

(declare-fun m!1292063 () Bool)

(assert (=> b!1403356 m!1292063))

(declare-fun m!1292065 () Bool)

(assert (=> b!1403358 m!1292065))

(declare-fun m!1292067 () Bool)

(assert (=> b!1403358 m!1292067))

(assert (=> b!1403358 m!1292065))

(declare-fun m!1292069 () Bool)

(assert (=> b!1403358 m!1292069))

(assert (=> b!1403358 m!1292067))

(assert (=> b!1403358 m!1292065))

(declare-fun m!1292071 () Bool)

(assert (=> b!1403358 m!1292071))

(declare-fun m!1292073 () Bool)

(assert (=> b!1403358 m!1292073))

(assert (=> b!1403354 m!1292065))

(assert (=> b!1403354 m!1292065))

(declare-fun m!1292075 () Bool)

(assert (=> b!1403354 m!1292075))

(declare-fun m!1292077 () Bool)

(assert (=> b!1403352 m!1292077))

(assert (=> b!1403357 m!1292065))

(assert (=> b!1403357 m!1292065))

(declare-fun m!1292079 () Bool)

(assert (=> b!1403357 m!1292079))

(push 1)

(assert (not b!1403353))

(assert (not b!1403357))

(assert (not b!1403358))

(assert (not b!1403352))

(assert (not b!1403355))

(assert (not start!120566))

(assert (not b!1403354))

(assert (not b!1403356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

