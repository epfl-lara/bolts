; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45418 () Bool)

(assert start!45418)

(declare-fun b!498948 () Bool)

(declare-datatypes ((Unit!14906 0))(
  ( (Unit!14907) )
))
(declare-fun e!292404 () Unit!14906)

(declare-fun Unit!14908 () Unit!14906)

(assert (=> b!498948 (= e!292404 Unit!14908)))

(declare-fun b!498949 () Bool)

(declare-fun res!301105 () Bool)

(declare-fun e!292405 () Bool)

(assert (=> b!498949 (=> (not res!301105) (not e!292405))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498949 (= res!301105 (validKeyInArray!0 k!2280))))

(declare-fun res!301108 () Bool)

(assert (=> start!45418 (=> (not res!301108) (not e!292405))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45418 (= res!301108 (validMask!0 mask!3524))))

(assert (=> start!45418 e!292405))

(assert (=> start!45418 true))

(declare-datatypes ((array!32203 0))(
  ( (array!32204 (arr!15480 (Array (_ BitVec 32) (_ BitVec 64))) (size!15844 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32203)

(declare-fun array_inv!11254 (array!32203) Bool)

(assert (=> start!45418 (array_inv!11254 a!3235)))

(declare-fun b!498950 () Bool)

(declare-fun res!301101 () Bool)

(assert (=> b!498950 (=> (not res!301101) (not e!292405))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498950 (= res!301101 (and (= (size!15844 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15844 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15844 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498951 () Bool)

(declare-fun res!301102 () Bool)

(declare-fun e!292409 () Bool)

(assert (=> b!498951 (=> (not res!301102) (not e!292409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32203 (_ BitVec 32)) Bool)

(assert (=> b!498951 (= res!301102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498952 () Bool)

(declare-fun e!292406 () Bool)

(declare-fun e!292407 () Bool)

(assert (=> b!498952 (= e!292406 e!292407)))

(declare-fun res!301103 () Bool)

(assert (=> b!498952 (=> res!301103 e!292407)))

(declare-datatypes ((SeekEntryResult!3954 0))(
  ( (MissingZero!3954 (index!17998 (_ BitVec 32))) (Found!3954 (index!17999 (_ BitVec 32))) (Intermediate!3954 (undefined!4766 Bool) (index!18000 (_ BitVec 32)) (x!47074 (_ BitVec 32))) (Undefined!3954) (MissingVacant!3954 (index!18001 (_ BitVec 32))) )
))
(declare-fun lt!226211 () SeekEntryResult!3954)

(declare-fun lt!226217 () (_ BitVec 32))

(assert (=> b!498952 (= res!301103 (or (bvsgt #b00000000000000000000000000000000 (x!47074 lt!226211)) (bvsgt (x!47074 lt!226211) #b01111111111111111111111111111110) (bvslt lt!226217 #b00000000000000000000000000000000) (bvsge lt!226217 (size!15844 a!3235)) (bvslt (index!18000 lt!226211) #b00000000000000000000000000000000) (bvsge (index!18000 lt!226211) (size!15844 a!3235)) (not (= lt!226211 (Intermediate!3954 false (index!18000 lt!226211) (x!47074 lt!226211))))))))

(assert (=> b!498952 (and (or (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226220 () Unit!14906)

(assert (=> b!498952 (= lt!226220 e!292404)))

(declare-fun c!59201 () Bool)

(assert (=> b!498952 (= c!59201 (= (select (arr!15480 a!3235) (index!18000 lt!226211)) (select (arr!15480 a!3235) j!176)))))

(assert (=> b!498952 (and (bvslt (x!47074 lt!226211) #b01111111111111111111111111111110) (or (= (select (arr!15480 a!3235) (index!18000 lt!226211)) (select (arr!15480 a!3235) j!176)) (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15480 a!3235) (index!18000 lt!226211)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498953 () Bool)

(assert (=> b!498953 (= e!292409 (not e!292406))))

(declare-fun res!301110 () Bool)

(assert (=> b!498953 (=> res!301110 e!292406)))

(declare-fun lt!226214 () array!32203)

(declare-fun lt!226216 () (_ BitVec 32))

(declare-fun lt!226215 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32203 (_ BitVec 32)) SeekEntryResult!3954)

(assert (=> b!498953 (= res!301110 (= lt!226211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226216 lt!226215 lt!226214 mask!3524)))))

(assert (=> b!498953 (= lt!226211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226217 (select (arr!15480 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498953 (= lt!226216 (toIndex!0 lt!226215 mask!3524))))

(assert (=> b!498953 (= lt!226215 (select (store (arr!15480 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498953 (= lt!226217 (toIndex!0 (select (arr!15480 a!3235) j!176) mask!3524))))

(assert (=> b!498953 (= lt!226214 (array!32204 (store (arr!15480 a!3235) i!1204 k!2280) (size!15844 a!3235)))))

(declare-fun e!292410 () Bool)

(assert (=> b!498953 e!292410))

(declare-fun res!301112 () Bool)

(assert (=> b!498953 (=> (not res!301112) (not e!292410))))

(assert (=> b!498953 (= res!301112 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226219 () Unit!14906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14906)

(assert (=> b!498953 (= lt!226219 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498954 () Bool)

(declare-fun e!292411 () Bool)

(assert (=> b!498954 (= e!292411 false)))

(declare-fun b!498955 () Bool)

(assert (=> b!498955 (= e!292407 true)))

(declare-fun lt!226212 () SeekEntryResult!3954)

(assert (=> b!498955 (= lt!226212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226217 lt!226215 lt!226214 mask!3524))))

(declare-fun b!498956 () Bool)

(declare-fun res!301111 () Bool)

(assert (=> b!498956 (=> (not res!301111) (not e!292409))))

(declare-datatypes ((List!9691 0))(
  ( (Nil!9688) (Cons!9687 (h!10561 (_ BitVec 64)) (t!15927 List!9691)) )
))
(declare-fun arrayNoDuplicates!0 (array!32203 (_ BitVec 32) List!9691) Bool)

(assert (=> b!498956 (= res!301111 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9688))))

(declare-fun b!498957 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32203 (_ BitVec 32)) SeekEntryResult!3954)

(assert (=> b!498957 (= e!292410 (= (seekEntryOrOpen!0 (select (arr!15480 a!3235) j!176) a!3235 mask!3524) (Found!3954 j!176)))))

(declare-fun b!498958 () Bool)

(declare-fun res!301100 () Bool)

(assert (=> b!498958 (=> (not res!301100) (not e!292405))))

(assert (=> b!498958 (= res!301100 (validKeyInArray!0 (select (arr!15480 a!3235) j!176)))))

(declare-fun b!498959 () Bool)

(declare-fun res!301109 () Bool)

(assert (=> b!498959 (=> (not res!301109) (not e!292405))))

(declare-fun arrayContainsKey!0 (array!32203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498959 (= res!301109 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498960 () Bool)

(declare-fun Unit!14909 () Unit!14906)

(assert (=> b!498960 (= e!292404 Unit!14909)))

(declare-fun lt!226218 () Unit!14906)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14906)

(assert (=> b!498960 (= lt!226218 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226217 #b00000000000000000000000000000000 (index!18000 lt!226211) (x!47074 lt!226211) mask!3524))))

(declare-fun res!301107 () Bool)

(assert (=> b!498960 (= res!301107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226217 lt!226215 lt!226214 mask!3524) (Intermediate!3954 false (index!18000 lt!226211) (x!47074 lt!226211))))))

(assert (=> b!498960 (=> (not res!301107) (not e!292411))))

(assert (=> b!498960 e!292411))

(declare-fun b!498961 () Bool)

(declare-fun res!301106 () Bool)

(assert (=> b!498961 (=> res!301106 e!292406)))

(assert (=> b!498961 (= res!301106 (or (undefined!4766 lt!226211) (not (is-Intermediate!3954 lt!226211))))))

(declare-fun b!498962 () Bool)

(assert (=> b!498962 (= e!292405 e!292409)))

(declare-fun res!301104 () Bool)

(assert (=> b!498962 (=> (not res!301104) (not e!292409))))

(declare-fun lt!226213 () SeekEntryResult!3954)

(assert (=> b!498962 (= res!301104 (or (= lt!226213 (MissingZero!3954 i!1204)) (= lt!226213 (MissingVacant!3954 i!1204))))))

(assert (=> b!498962 (= lt!226213 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45418 res!301108) b!498950))

(assert (= (and b!498950 res!301101) b!498958))

(assert (= (and b!498958 res!301100) b!498949))

(assert (= (and b!498949 res!301105) b!498959))

(assert (= (and b!498959 res!301109) b!498962))

(assert (= (and b!498962 res!301104) b!498951))

(assert (= (and b!498951 res!301102) b!498956))

(assert (= (and b!498956 res!301111) b!498953))

(assert (= (and b!498953 res!301112) b!498957))

(assert (= (and b!498953 (not res!301110)) b!498961))

(assert (= (and b!498961 (not res!301106)) b!498952))

(assert (= (and b!498952 c!59201) b!498960))

(assert (= (and b!498952 (not c!59201)) b!498948))

(assert (= (and b!498960 res!301107) b!498954))

(assert (= (and b!498952 (not res!301103)) b!498955))

(declare-fun m!480205 () Bool)

(assert (=> b!498957 m!480205))

(assert (=> b!498957 m!480205))

(declare-fun m!480207 () Bool)

(assert (=> b!498957 m!480207))

(declare-fun m!480209 () Bool)

(assert (=> b!498960 m!480209))

(declare-fun m!480211 () Bool)

(assert (=> b!498960 m!480211))

(assert (=> b!498955 m!480211))

(declare-fun m!480213 () Bool)

(assert (=> b!498949 m!480213))

(declare-fun m!480215 () Bool)

(assert (=> b!498956 m!480215))

(declare-fun m!480217 () Bool)

(assert (=> b!498953 m!480217))

(declare-fun m!480219 () Bool)

(assert (=> b!498953 m!480219))

(declare-fun m!480221 () Bool)

(assert (=> b!498953 m!480221))

(declare-fun m!480223 () Bool)

(assert (=> b!498953 m!480223))

(assert (=> b!498953 m!480205))

(declare-fun m!480225 () Bool)

(assert (=> b!498953 m!480225))

(assert (=> b!498953 m!480205))

(declare-fun m!480227 () Bool)

(assert (=> b!498953 m!480227))

(assert (=> b!498953 m!480205))

(declare-fun m!480229 () Bool)

(assert (=> b!498953 m!480229))

(declare-fun m!480231 () Bool)

(assert (=> b!498953 m!480231))

(declare-fun m!480233 () Bool)

(assert (=> b!498952 m!480233))

(assert (=> b!498952 m!480205))

(declare-fun m!480235 () Bool)

(assert (=> start!45418 m!480235))

(declare-fun m!480237 () Bool)

(assert (=> start!45418 m!480237))

(declare-fun m!480239 () Bool)

(assert (=> b!498951 m!480239))

(declare-fun m!480241 () Bool)

(assert (=> b!498962 m!480241))

(assert (=> b!498958 m!480205))

(assert (=> b!498958 m!480205))

(declare-fun m!480243 () Bool)

(assert (=> b!498958 m!480243))

(declare-fun m!480245 () Bool)

(assert (=> b!498959 m!480245))

(push 1)

