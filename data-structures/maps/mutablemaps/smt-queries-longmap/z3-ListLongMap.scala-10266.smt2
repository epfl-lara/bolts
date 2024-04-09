; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120798 () Bool)

(assert start!120798)

(declare-fun b!1405030 () Bool)

(declare-fun res!943358 () Bool)

(declare-fun e!795401 () Bool)

(assert (=> b!1405030 (=> (not res!943358) (not e!795401))))

(declare-datatypes ((array!96023 0))(
  ( (array!96024 (arr!46355 (Array (_ BitVec 32) (_ BitVec 64))) (size!46906 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96023)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405030 (= res!943358 (validKeyInArray!0 (select (arr!46355 a!2901) i!1037)))))

(declare-fun b!1405032 () Bool)

(assert (=> b!1405032 (= e!795401 (not true))))

(declare-fun e!795399 () Bool)

(assert (=> b!1405032 e!795399))

(declare-fun res!943362 () Bool)

(assert (=> b!1405032 (=> (not res!943362) (not e!795399))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96023 (_ BitVec 32)) Bool)

(assert (=> b!1405032 (= res!943362 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47300 0))(
  ( (Unit!47301) )
))
(declare-fun lt!618874 () Unit!47300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47300)

(assert (=> b!1405032 (= lt!618874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10688 0))(
  ( (MissingZero!10688 (index!45128 (_ BitVec 32))) (Found!10688 (index!45129 (_ BitVec 32))) (Intermediate!10688 (undefined!11500 Bool) (index!45130 (_ BitVec 32)) (x!126754 (_ BitVec 32))) (Undefined!10688) (MissingVacant!10688 (index!45131 (_ BitVec 32))) )
))
(declare-fun lt!618873 () SeekEntryResult!10688)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96023 (_ BitVec 32)) SeekEntryResult!10688)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405032 (= lt!618873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46355 a!2901) j!112) mask!2840) (select (arr!46355 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405033 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96023 (_ BitVec 32)) SeekEntryResult!10688)

(assert (=> b!1405033 (= e!795399 (= (seekEntryOrOpen!0 (select (arr!46355 a!2901) j!112) a!2901 mask!2840) (Found!10688 j!112)))))

(declare-fun b!1405034 () Bool)

(declare-fun res!943360 () Bool)

(assert (=> b!1405034 (=> (not res!943360) (not e!795401))))

(assert (=> b!1405034 (= res!943360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405035 () Bool)

(declare-fun res!943359 () Bool)

(assert (=> b!1405035 (=> (not res!943359) (not e!795401))))

(assert (=> b!1405035 (= res!943359 (validKeyInArray!0 (select (arr!46355 a!2901) j!112)))))

(declare-fun b!1405036 () Bool)

(declare-fun res!943357 () Bool)

(assert (=> b!1405036 (=> (not res!943357) (not e!795401))))

(declare-datatypes ((List!33054 0))(
  ( (Nil!33051) (Cons!33050 (h!34304 (_ BitVec 64)) (t!47755 List!33054)) )
))
(declare-fun arrayNoDuplicates!0 (array!96023 (_ BitVec 32) List!33054) Bool)

(assert (=> b!1405036 (= res!943357 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33051))))

(declare-fun res!943361 () Bool)

(assert (=> start!120798 (=> (not res!943361) (not e!795401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120798 (= res!943361 (validMask!0 mask!2840))))

(assert (=> start!120798 e!795401))

(assert (=> start!120798 true))

(declare-fun array_inv!35300 (array!96023) Bool)

(assert (=> start!120798 (array_inv!35300 a!2901)))

(declare-fun b!1405031 () Bool)

(declare-fun res!943356 () Bool)

(assert (=> b!1405031 (=> (not res!943356) (not e!795401))))

(assert (=> b!1405031 (= res!943356 (and (= (size!46906 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46906 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46906 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120798 res!943361) b!1405031))

(assert (= (and b!1405031 res!943356) b!1405030))

(assert (= (and b!1405030 res!943358) b!1405035))

(assert (= (and b!1405035 res!943359) b!1405034))

(assert (= (and b!1405034 res!943360) b!1405036))

(assert (= (and b!1405036 res!943357) b!1405032))

(assert (= (and b!1405032 res!943362) b!1405033))

(declare-fun m!1293793 () Bool)

(assert (=> b!1405033 m!1293793))

(assert (=> b!1405033 m!1293793))

(declare-fun m!1293795 () Bool)

(assert (=> b!1405033 m!1293795))

(declare-fun m!1293797 () Bool)

(assert (=> start!120798 m!1293797))

(declare-fun m!1293799 () Bool)

(assert (=> start!120798 m!1293799))

(declare-fun m!1293801 () Bool)

(assert (=> b!1405036 m!1293801))

(assert (=> b!1405032 m!1293793))

(declare-fun m!1293803 () Bool)

(assert (=> b!1405032 m!1293803))

(assert (=> b!1405032 m!1293793))

(declare-fun m!1293805 () Bool)

(assert (=> b!1405032 m!1293805))

(assert (=> b!1405032 m!1293803))

(assert (=> b!1405032 m!1293793))

(declare-fun m!1293807 () Bool)

(assert (=> b!1405032 m!1293807))

(declare-fun m!1293809 () Bool)

(assert (=> b!1405032 m!1293809))

(declare-fun m!1293811 () Bool)

(assert (=> b!1405034 m!1293811))

(assert (=> b!1405035 m!1293793))

(assert (=> b!1405035 m!1293793))

(declare-fun m!1293813 () Bool)

(assert (=> b!1405035 m!1293813))

(declare-fun m!1293815 () Bool)

(assert (=> b!1405030 m!1293815))

(assert (=> b!1405030 m!1293815))

(declare-fun m!1293817 () Bool)

(assert (=> b!1405030 m!1293817))

(check-sat (not start!120798) (not b!1405036) (not b!1405030) (not b!1405032) (not b!1405035) (not b!1405034) (not b!1405033))
