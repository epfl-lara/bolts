; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45466 () Bool)

(assert start!45466)

(declare-fun b!500028 () Bool)

(declare-fun e!292983 () Bool)

(assert (=> b!500028 (= e!292983 false)))

(declare-fun b!500029 () Bool)

(declare-fun res!302047 () Bool)

(declare-fun e!292985 () Bool)

(assert (=> b!500029 (=> (not res!302047) (not e!292985))))

(declare-datatypes ((array!32251 0))(
  ( (array!32252 (arr!15504 (Array (_ BitVec 32) (_ BitVec 64))) (size!15868 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32251)

(declare-datatypes ((List!9715 0))(
  ( (Nil!9712) (Cons!9711 (h!10585 (_ BitVec 64)) (t!15951 List!9715)) )
))
(declare-fun arrayNoDuplicates!0 (array!32251 (_ BitVec 32) List!9715) Bool)

(assert (=> b!500029 (= res!302047 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9712))))

(declare-fun b!500030 () Bool)

(declare-fun e!292981 () Bool)

(assert (=> b!500030 (= e!292985 (not e!292981))))

(declare-fun res!302043 () Bool)

(assert (=> b!500030 (=> res!302043 e!292981)))

(declare-fun lt!226936 () (_ BitVec 64))

(declare-fun lt!226933 () (_ BitVec 32))

(declare-fun lt!226939 () array!32251)

(declare-datatypes ((SeekEntryResult!3978 0))(
  ( (MissingZero!3978 (index!18094 (_ BitVec 32))) (Found!3978 (index!18095 (_ BitVec 32))) (Intermediate!3978 (undefined!4790 Bool) (index!18096 (_ BitVec 32)) (x!47162 (_ BitVec 32))) (Undefined!3978) (MissingVacant!3978 (index!18097 (_ BitVec 32))) )
))
(declare-fun lt!226938 () SeekEntryResult!3978)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32251 (_ BitVec 32)) SeekEntryResult!3978)

(assert (=> b!500030 (= res!302043 (= lt!226938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226933 lt!226936 lt!226939 mask!3524)))))

(declare-fun lt!226934 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500030 (= lt!226938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226934 (select (arr!15504 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500030 (= lt!226933 (toIndex!0 lt!226936 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500030 (= lt!226936 (select (store (arr!15504 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500030 (= lt!226934 (toIndex!0 (select (arr!15504 a!3235) j!176) mask!3524))))

(assert (=> b!500030 (= lt!226939 (array!32252 (store (arr!15504 a!3235) i!1204 k!2280) (size!15868 a!3235)))))

(declare-fun e!292986 () Bool)

(assert (=> b!500030 e!292986))

(declare-fun res!302048 () Bool)

(assert (=> b!500030 (=> (not res!302048) (not e!292986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32251 (_ BitVec 32)) Bool)

(assert (=> b!500030 (= res!302048 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15002 0))(
  ( (Unit!15003) )
))
(declare-fun lt!226932 () Unit!15002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32251 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15002)

(assert (=> b!500030 (= lt!226932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500031 () Bool)

(declare-fun e!292980 () Unit!15002)

(declare-fun Unit!15004 () Unit!15002)

(assert (=> b!500031 (= e!292980 Unit!15004)))

(declare-fun b!500032 () Bool)

(declare-fun res!302046 () Bool)

(declare-fun e!292984 () Bool)

(assert (=> b!500032 (=> (not res!302046) (not e!292984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500032 (= res!302046 (validKeyInArray!0 k!2280))))

(declare-fun b!500033 () Bool)

(declare-fun res!302038 () Bool)

(assert (=> b!500033 (=> (not res!302038) (not e!292984))))

(assert (=> b!500033 (= res!302038 (and (= (size!15868 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15868 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15868 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!302045 () Bool)

(assert (=> start!45466 (=> (not res!302045) (not e!292984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45466 (= res!302045 (validMask!0 mask!3524))))

(assert (=> start!45466 e!292984))

(assert (=> start!45466 true))

(declare-fun array_inv!11278 (array!32251) Bool)

(assert (=> start!45466 (array_inv!11278 a!3235)))

(declare-fun b!500034 () Bool)

(declare-fun res!302044 () Bool)

(assert (=> b!500034 (=> res!302044 e!292981)))

(assert (=> b!500034 (= res!302044 (or (undefined!4790 lt!226938) (not (is-Intermediate!3978 lt!226938))))))

(declare-fun b!500035 () Bool)

(declare-fun res!302042 () Bool)

(assert (=> b!500035 (=> (not res!302042) (not e!292985))))

(assert (=> b!500035 (= res!302042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500036 () Bool)

(assert (=> b!500036 (= e!292984 e!292985)))

(declare-fun res!302037 () Bool)

(assert (=> b!500036 (=> (not res!302037) (not e!292985))))

(declare-fun lt!226940 () SeekEntryResult!3978)

(assert (=> b!500036 (= res!302037 (or (= lt!226940 (MissingZero!3978 i!1204)) (= lt!226940 (MissingVacant!3978 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32251 (_ BitVec 32)) SeekEntryResult!3978)

(assert (=> b!500036 (= lt!226940 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500037 () Bool)

(declare-fun res!302039 () Bool)

(assert (=> b!500037 (=> (not res!302039) (not e!292984))))

(assert (=> b!500037 (= res!302039 (validKeyInArray!0 (select (arr!15504 a!3235) j!176)))))

(declare-fun b!500038 () Bool)

(declare-fun e!292987 () Bool)

(assert (=> b!500038 (= e!292981 e!292987)))

(declare-fun res!302041 () Bool)

(assert (=> b!500038 (=> res!302041 e!292987)))

(assert (=> b!500038 (= res!302041 (or (bvsgt #b00000000000000000000000000000000 (x!47162 lt!226938)) (bvsgt (x!47162 lt!226938) #b01111111111111111111111111111110) (bvslt lt!226934 #b00000000000000000000000000000000) (bvsge lt!226934 (size!15868 a!3235)) (bvslt (index!18096 lt!226938) #b00000000000000000000000000000000) (bvsge (index!18096 lt!226938) (size!15868 a!3235)) (not (= lt!226938 (Intermediate!3978 false (index!18096 lt!226938) (x!47162 lt!226938))))))))

(assert (=> b!500038 (and (or (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226935 () Unit!15002)

(assert (=> b!500038 (= lt!226935 e!292980)))

(declare-fun c!59273 () Bool)

(assert (=> b!500038 (= c!59273 (= (select (arr!15504 a!3235) (index!18096 lt!226938)) (select (arr!15504 a!3235) j!176)))))

(assert (=> b!500038 (and (bvslt (x!47162 lt!226938) #b01111111111111111111111111111110) (or (= (select (arr!15504 a!3235) (index!18096 lt!226938)) (select (arr!15504 a!3235) j!176)) (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15504 a!3235) (index!18096 lt!226938)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500039 () Bool)

(declare-fun res!302040 () Bool)

(assert (=> b!500039 (=> (not res!302040) (not e!292984))))

(declare-fun arrayContainsKey!0 (array!32251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500039 (= res!302040 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500040 () Bool)

(assert (=> b!500040 (= e!292987 true)))

(declare-fun lt!226931 () SeekEntryResult!3978)

(assert (=> b!500040 (= lt!226931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226934 lt!226936 lt!226939 mask!3524))))

(declare-fun b!500041 () Bool)

(assert (=> b!500041 (= e!292986 (= (seekEntryOrOpen!0 (select (arr!15504 a!3235) j!176) a!3235 mask!3524) (Found!3978 j!176)))))

(declare-fun b!500042 () Bool)

(declare-fun Unit!15005 () Unit!15002)

(assert (=> b!500042 (= e!292980 Unit!15005)))

(declare-fun lt!226937 () Unit!15002)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32251 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15002)

(assert (=> b!500042 (= lt!226937 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226934 #b00000000000000000000000000000000 (index!18096 lt!226938) (x!47162 lt!226938) mask!3524))))

(declare-fun res!302036 () Bool)

(assert (=> b!500042 (= res!302036 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226934 lt!226936 lt!226939 mask!3524) (Intermediate!3978 false (index!18096 lt!226938) (x!47162 lt!226938))))))

(assert (=> b!500042 (=> (not res!302036) (not e!292983))))

(assert (=> b!500042 e!292983))

(assert (= (and start!45466 res!302045) b!500033))

(assert (= (and b!500033 res!302038) b!500037))

(assert (= (and b!500037 res!302039) b!500032))

(assert (= (and b!500032 res!302046) b!500039))

(assert (= (and b!500039 res!302040) b!500036))

(assert (= (and b!500036 res!302037) b!500035))

(assert (= (and b!500035 res!302042) b!500029))

(assert (= (and b!500029 res!302047) b!500030))

(assert (= (and b!500030 res!302048) b!500041))

(assert (= (and b!500030 (not res!302043)) b!500034))

(assert (= (and b!500034 (not res!302044)) b!500038))

(assert (= (and b!500038 c!59273) b!500042))

(assert (= (and b!500038 (not c!59273)) b!500031))

(assert (= (and b!500042 res!302036) b!500028))

(assert (= (and b!500038 (not res!302041)) b!500040))

(declare-fun m!481213 () Bool)

(assert (=> b!500035 m!481213))

(declare-fun m!481215 () Bool)

(assert (=> b!500029 m!481215))

(declare-fun m!481217 () Bool)

(assert (=> b!500040 m!481217))

(declare-fun m!481219 () Bool)

(assert (=> b!500032 m!481219))

(declare-fun m!481221 () Bool)

(assert (=> b!500041 m!481221))

(assert (=> b!500041 m!481221))

(declare-fun m!481223 () Bool)

(assert (=> b!500041 m!481223))

(declare-fun m!481225 () Bool)

(assert (=> b!500039 m!481225))

(declare-fun m!481227 () Bool)

(assert (=> b!500038 m!481227))

(assert (=> b!500038 m!481221))

(declare-fun m!481229 () Bool)

(assert (=> start!45466 m!481229))

(declare-fun m!481231 () Bool)

(assert (=> start!45466 m!481231))

(assert (=> b!500037 m!481221))

(assert (=> b!500037 m!481221))

(declare-fun m!481233 () Bool)

(assert (=> b!500037 m!481233))

(declare-fun m!481235 () Bool)

(assert (=> b!500030 m!481235))

(declare-fun m!481237 () Bool)

(assert (=> b!500030 m!481237))

(declare-fun m!481239 () Bool)

(assert (=> b!500030 m!481239))

(declare-fun m!481241 () Bool)

(assert (=> b!500030 m!481241))

(assert (=> b!500030 m!481221))

(declare-fun m!481243 () Bool)

(assert (=> b!500030 m!481243))

(assert (=> b!500030 m!481221))

(declare-fun m!481245 () Bool)

(assert (=> b!500030 m!481245))

(assert (=> b!500030 m!481221))

(declare-fun m!481247 () Bool)

(assert (=> b!500030 m!481247))

(declare-fun m!481249 () Bool)

(assert (=> b!500030 m!481249))

(declare-fun m!481251 () Bool)

(assert (=> b!500042 m!481251))

(assert (=> b!500042 m!481217))

(declare-fun m!481253 () Bool)

(assert (=> b!500036 m!481253))

(push 1)

