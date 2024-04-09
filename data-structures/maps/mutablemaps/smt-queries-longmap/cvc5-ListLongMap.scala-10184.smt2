; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120070 () Bool)

(assert start!120070)

(declare-fun res!936308 () Bool)

(declare-fun e!791072 () Bool)

(assert (=> start!120070 (=> (not res!936308) (not e!791072))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120070 (= res!936308 (validMask!0 mask!2840))))

(assert (=> start!120070 e!791072))

(assert (=> start!120070 true))

(declare-datatypes ((array!95517 0))(
  ( (array!95518 (arr!46108 (Array (_ BitVec 32) (_ BitVec 64))) (size!46659 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95517)

(declare-fun array_inv!35053 (array!95517) Bool)

(assert (=> start!120070 (array_inv!35053 a!2901)))

(declare-fun b!1397279 () Bool)

(declare-fun e!791074 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10447 0))(
  ( (MissingZero!10447 (index!44158 (_ BitVec 32))) (Found!10447 (index!44159 (_ BitVec 32))) (Intermediate!10447 (undefined!11259 Bool) (index!44160 (_ BitVec 32)) (x!125824 (_ BitVec 32))) (Undefined!10447) (MissingVacant!10447 (index!44161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95517 (_ BitVec 32)) SeekEntryResult!10447)

(assert (=> b!1397279 (= e!791074 (= (seekEntryOrOpen!0 (select (arr!46108 a!2901) j!112) a!2901 mask!2840) (Found!10447 j!112)))))

(declare-fun b!1397280 () Bool)

(declare-fun res!936306 () Bool)

(assert (=> b!1397280 (=> (not res!936306) (not e!791072))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397280 (= res!936306 (and (= (size!46659 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46659 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46659 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397281 () Bool)

(declare-fun res!936305 () Bool)

(assert (=> b!1397281 (=> (not res!936305) (not e!791072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397281 (= res!936305 (validKeyInArray!0 (select (arr!46108 a!2901) i!1037)))))

(declare-fun b!1397282 () Bool)

(declare-fun e!791073 () Bool)

(declare-fun e!791071 () Bool)

(assert (=> b!1397282 (= e!791073 e!791071)))

(declare-fun res!936303 () Bool)

(assert (=> b!1397282 (=> res!936303 e!791071)))

(declare-fun lt!614087 () (_ BitVec 32))

(declare-fun lt!614084 () SeekEntryResult!10447)

(declare-fun lt!614085 () SeekEntryResult!10447)

(assert (=> b!1397282 (= res!936303 (or (= lt!614085 lt!614084) (not (is-Intermediate!10447 lt!614084)) (bvslt (x!125824 lt!614085) #b00000000000000000000000000000000) (bvsgt (x!125824 lt!614085) #b01111111111111111111111111111110) (bvslt lt!614087 #b00000000000000000000000000000000) (bvsge lt!614087 (size!46659 a!2901)) (bvslt (index!44160 lt!614085) #b00000000000000000000000000000000) (bvsge (index!44160 lt!614085) (size!46659 a!2901)) (not (= lt!614085 (Intermediate!10447 false (index!44160 lt!614085) (x!125824 lt!614085)))) (not (= lt!614084 (Intermediate!10447 (undefined!11259 lt!614084) (index!44160 lt!614084) (x!125824 lt!614084))))))))

(declare-fun lt!614089 () (_ BitVec 64))

(declare-fun lt!614088 () array!95517)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95517 (_ BitVec 32)) SeekEntryResult!10447)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397282 (= lt!614084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614089 mask!2840) lt!614089 lt!614088 mask!2840))))

(assert (=> b!1397282 (= lt!614089 (select (store (arr!46108 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397282 (= lt!614088 (array!95518 (store (arr!46108 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46659 a!2901)))))

(declare-fun b!1397283 () Bool)

(declare-fun res!936304 () Bool)

(assert (=> b!1397283 (=> (not res!936304) (not e!791072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95517 (_ BitVec 32)) Bool)

(assert (=> b!1397283 (= res!936304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397284 () Bool)

(declare-fun res!936301 () Bool)

(assert (=> b!1397284 (=> (not res!936301) (not e!791072))))

(assert (=> b!1397284 (= res!936301 (validKeyInArray!0 (select (arr!46108 a!2901) j!112)))))

(declare-fun b!1397285 () Bool)

(assert (=> b!1397285 (= e!791071 true)))

(declare-fun lt!614083 () SeekEntryResult!10447)

(assert (=> b!1397285 (= lt!614083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614087 lt!614089 lt!614088 mask!2840))))

(declare-fun b!1397286 () Bool)

(declare-fun res!936309 () Bool)

(assert (=> b!1397286 (=> (not res!936309) (not e!791072))))

(declare-datatypes ((List!32807 0))(
  ( (Nil!32804) (Cons!32803 (h!34045 (_ BitVec 64)) (t!47508 List!32807)) )
))
(declare-fun arrayNoDuplicates!0 (array!95517 (_ BitVec 32) List!32807) Bool)

(assert (=> b!1397286 (= res!936309 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32804))))

(declare-fun b!1397287 () Bool)

(assert (=> b!1397287 (= e!791072 (not e!791073))))

(declare-fun res!936307 () Bool)

(assert (=> b!1397287 (=> res!936307 e!791073)))

(assert (=> b!1397287 (= res!936307 (or (not (is-Intermediate!10447 lt!614085)) (undefined!11259 lt!614085)))))

(assert (=> b!1397287 e!791074))

(declare-fun res!936302 () Bool)

(assert (=> b!1397287 (=> (not res!936302) (not e!791074))))

(assert (=> b!1397287 (= res!936302 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46848 0))(
  ( (Unit!46849) )
))
(declare-fun lt!614086 () Unit!46848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46848)

(assert (=> b!1397287 (= lt!614086 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397287 (= lt!614085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614087 (select (arr!46108 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397287 (= lt!614087 (toIndex!0 (select (arr!46108 a!2901) j!112) mask!2840))))

(assert (= (and start!120070 res!936308) b!1397280))

(assert (= (and b!1397280 res!936306) b!1397281))

(assert (= (and b!1397281 res!936305) b!1397284))

(assert (= (and b!1397284 res!936301) b!1397283))

(assert (= (and b!1397283 res!936304) b!1397286))

(assert (= (and b!1397286 res!936309) b!1397287))

(assert (= (and b!1397287 res!936302) b!1397279))

(assert (= (and b!1397287 (not res!936307)) b!1397282))

(assert (= (and b!1397282 (not res!936303)) b!1397285))

(declare-fun m!1284083 () Bool)

(assert (=> b!1397286 m!1284083))

(declare-fun m!1284085 () Bool)

(assert (=> b!1397283 m!1284085))

(declare-fun m!1284087 () Bool)

(assert (=> b!1397284 m!1284087))

(assert (=> b!1397284 m!1284087))

(declare-fun m!1284089 () Bool)

(assert (=> b!1397284 m!1284089))

(declare-fun m!1284091 () Bool)

(assert (=> b!1397282 m!1284091))

(assert (=> b!1397282 m!1284091))

(declare-fun m!1284093 () Bool)

(assert (=> b!1397282 m!1284093))

(declare-fun m!1284095 () Bool)

(assert (=> b!1397282 m!1284095))

(declare-fun m!1284097 () Bool)

(assert (=> b!1397282 m!1284097))

(assert (=> b!1397287 m!1284087))

(declare-fun m!1284099 () Bool)

(assert (=> b!1397287 m!1284099))

(assert (=> b!1397287 m!1284087))

(assert (=> b!1397287 m!1284087))

(declare-fun m!1284101 () Bool)

(assert (=> b!1397287 m!1284101))

(declare-fun m!1284103 () Bool)

(assert (=> b!1397287 m!1284103))

(declare-fun m!1284105 () Bool)

(assert (=> b!1397287 m!1284105))

(declare-fun m!1284107 () Bool)

(assert (=> b!1397285 m!1284107))

(declare-fun m!1284109 () Bool)

(assert (=> start!120070 m!1284109))

(declare-fun m!1284111 () Bool)

(assert (=> start!120070 m!1284111))

(declare-fun m!1284113 () Bool)

(assert (=> b!1397281 m!1284113))

(assert (=> b!1397281 m!1284113))

(declare-fun m!1284115 () Bool)

(assert (=> b!1397281 m!1284115))

(assert (=> b!1397279 m!1284087))

(assert (=> b!1397279 m!1284087))

(declare-fun m!1284117 () Bool)

(assert (=> b!1397279 m!1284117))

(push 1)

