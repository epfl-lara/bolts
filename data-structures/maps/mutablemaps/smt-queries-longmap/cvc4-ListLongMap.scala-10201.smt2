; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120236 () Bool)

(assert start!120236)

(declare-fun b!1398974 () Bool)

(declare-fun e!792037 () Bool)

(assert (=> b!1398974 (= e!792037 true)))

(declare-datatypes ((array!95626 0))(
  ( (array!95627 (arr!46161 (Array (_ BitVec 32) (_ BitVec 64))) (size!46712 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95626)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10500 0))(
  ( (MissingZero!10500 (index!44373 (_ BitVec 32))) (Found!10500 (index!44374 (_ BitVec 32))) (Intermediate!10500 (undefined!11312 Bool) (index!44375 (_ BitVec 32)) (x!126022 (_ BitVec 32))) (Undefined!10500) (MissingVacant!10500 (index!44376 (_ BitVec 32))) )
))
(declare-fun lt!615236 () SeekEntryResult!10500)

(declare-fun lt!615240 () SeekEntryResult!10500)

(assert (=> b!1398974 (and (not (undefined!11312 lt!615236)) (= (index!44375 lt!615236) i!1037) (bvslt (x!126022 lt!615236) (x!126022 lt!615240)) (= (select (store (arr!46161 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44375 lt!615236)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!46954 0))(
  ( (Unit!46955) )
))
(declare-fun lt!615238 () Unit!46954)

(declare-fun lt!615241 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46954)

(assert (=> b!1398974 (= lt!615238 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615241 (x!126022 lt!615240) (index!44375 lt!615240) (x!126022 lt!615236) (index!44375 lt!615236) (undefined!11312 lt!615236) mask!2840))))

(declare-fun b!1398975 () Bool)

(declare-fun res!937835 () Bool)

(declare-fun e!792035 () Bool)

(assert (=> b!1398975 (=> (not res!937835) (not e!792035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398975 (= res!937835 (validKeyInArray!0 (select (arr!46161 a!2901) i!1037)))))

(declare-fun b!1398976 () Bool)

(declare-fun e!792034 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95626 (_ BitVec 32)) SeekEntryResult!10500)

(assert (=> b!1398976 (= e!792034 (= (seekEntryOrOpen!0 (select (arr!46161 a!2901) j!112) a!2901 mask!2840) (Found!10500 j!112)))))

(declare-fun b!1398977 () Bool)

(declare-fun res!937832 () Bool)

(assert (=> b!1398977 (=> (not res!937832) (not e!792035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95626 (_ BitVec 32)) Bool)

(assert (=> b!1398977 (= res!937832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398978 () Bool)

(declare-fun e!792038 () Bool)

(assert (=> b!1398978 (= e!792038 e!792037)))

(declare-fun res!937839 () Bool)

(assert (=> b!1398978 (=> res!937839 e!792037)))

(assert (=> b!1398978 (= res!937839 (or (= lt!615240 lt!615236) (not (is-Intermediate!10500 lt!615236))))))

(declare-fun lt!615237 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95626 (_ BitVec 32)) SeekEntryResult!10500)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398978 (= lt!615236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615237 mask!2840) lt!615237 (array!95627 (store (arr!46161 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46712 a!2901)) mask!2840))))

(assert (=> b!1398978 (= lt!615237 (select (store (arr!46161 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398979 () Bool)

(declare-fun res!937833 () Bool)

(assert (=> b!1398979 (=> (not res!937833) (not e!792035))))

(declare-datatypes ((List!32860 0))(
  ( (Nil!32857) (Cons!32856 (h!34101 (_ BitVec 64)) (t!47561 List!32860)) )
))
(declare-fun arrayNoDuplicates!0 (array!95626 (_ BitVec 32) List!32860) Bool)

(assert (=> b!1398979 (= res!937833 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32857))))

(declare-fun b!1398980 () Bool)

(declare-fun res!937838 () Bool)

(assert (=> b!1398980 (=> (not res!937838) (not e!792035))))

(assert (=> b!1398980 (= res!937838 (validKeyInArray!0 (select (arr!46161 a!2901) j!112)))))

(declare-fun b!1398981 () Bool)

(assert (=> b!1398981 (= e!792035 (not e!792038))))

(declare-fun res!937836 () Bool)

(assert (=> b!1398981 (=> res!937836 e!792038)))

(assert (=> b!1398981 (= res!937836 (or (not (is-Intermediate!10500 lt!615240)) (undefined!11312 lt!615240)))))

(assert (=> b!1398981 e!792034))

(declare-fun res!937831 () Bool)

(assert (=> b!1398981 (=> (not res!937831) (not e!792034))))

(assert (=> b!1398981 (= res!937831 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615239 () Unit!46954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46954)

(assert (=> b!1398981 (= lt!615239 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398981 (= lt!615240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615241 (select (arr!46161 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398981 (= lt!615241 (toIndex!0 (select (arr!46161 a!2901) j!112) mask!2840))))

(declare-fun b!1398982 () Bool)

(declare-fun res!937834 () Bool)

(assert (=> b!1398982 (=> (not res!937834) (not e!792035))))

(assert (=> b!1398982 (= res!937834 (and (= (size!46712 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46712 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46712 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937837 () Bool)

(assert (=> start!120236 (=> (not res!937837) (not e!792035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120236 (= res!937837 (validMask!0 mask!2840))))

(assert (=> start!120236 e!792035))

(assert (=> start!120236 true))

(declare-fun array_inv!35106 (array!95626) Bool)

(assert (=> start!120236 (array_inv!35106 a!2901)))

(assert (= (and start!120236 res!937837) b!1398982))

(assert (= (and b!1398982 res!937834) b!1398975))

(assert (= (and b!1398975 res!937835) b!1398980))

(assert (= (and b!1398980 res!937838) b!1398977))

(assert (= (and b!1398977 res!937832) b!1398979))

(assert (= (and b!1398979 res!937833) b!1398981))

(assert (= (and b!1398981 res!937831) b!1398976))

(assert (= (and b!1398981 (not res!937836)) b!1398978))

(assert (= (and b!1398978 (not res!937839)) b!1398974))

(declare-fun m!1286217 () Bool)

(assert (=> start!120236 m!1286217))

(declare-fun m!1286219 () Bool)

(assert (=> start!120236 m!1286219))

(declare-fun m!1286221 () Bool)

(assert (=> b!1398975 m!1286221))

(assert (=> b!1398975 m!1286221))

(declare-fun m!1286223 () Bool)

(assert (=> b!1398975 m!1286223))

(declare-fun m!1286225 () Bool)

(assert (=> b!1398981 m!1286225))

(declare-fun m!1286227 () Bool)

(assert (=> b!1398981 m!1286227))

(assert (=> b!1398981 m!1286225))

(declare-fun m!1286229 () Bool)

(assert (=> b!1398981 m!1286229))

(assert (=> b!1398981 m!1286225))

(declare-fun m!1286231 () Bool)

(assert (=> b!1398981 m!1286231))

(declare-fun m!1286233 () Bool)

(assert (=> b!1398981 m!1286233))

(declare-fun m!1286235 () Bool)

(assert (=> b!1398978 m!1286235))

(declare-fun m!1286237 () Bool)

(assert (=> b!1398978 m!1286237))

(assert (=> b!1398978 m!1286235))

(declare-fun m!1286239 () Bool)

(assert (=> b!1398978 m!1286239))

(declare-fun m!1286241 () Bool)

(assert (=> b!1398978 m!1286241))

(declare-fun m!1286243 () Bool)

(assert (=> b!1398977 m!1286243))

(declare-fun m!1286245 () Bool)

(assert (=> b!1398979 m!1286245))

(assert (=> b!1398974 m!1286237))

(declare-fun m!1286247 () Bool)

(assert (=> b!1398974 m!1286247))

(declare-fun m!1286249 () Bool)

(assert (=> b!1398974 m!1286249))

(assert (=> b!1398980 m!1286225))

(assert (=> b!1398980 m!1286225))

(declare-fun m!1286251 () Bool)

(assert (=> b!1398980 m!1286251))

(assert (=> b!1398976 m!1286225))

(assert (=> b!1398976 m!1286225))

(declare-fun m!1286253 () Bool)

(assert (=> b!1398976 m!1286253))

(push 1)

