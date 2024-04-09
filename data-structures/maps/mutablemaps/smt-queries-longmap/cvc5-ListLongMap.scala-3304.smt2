; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45778 () Bool)

(assert start!45778)

(declare-fun e!296322 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32494 0))(
  ( (array!32495 (arr!15624 (Array (_ BitVec 32) (_ BitVec 64))) (size!15988 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32494)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!506260 () Bool)

(declare-datatypes ((SeekEntryResult!4098 0))(
  ( (MissingZero!4098 (index!18580 (_ BitVec 32))) (Found!4098 (index!18581 (_ BitVec 32))) (Intermediate!4098 (undefined!4910 Bool) (index!18582 (_ BitVec 32)) (x!47614 (_ BitVec 32))) (Undefined!4098) (MissingVacant!4098 (index!18583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32494 (_ BitVec 32)) SeekEntryResult!4098)

(assert (=> b!506260 (= e!296322 (= (seekEntryOrOpen!0 (select (arr!15624 a!3235) j!176) a!3235 mask!3524) (Found!4098 j!176)))))

(declare-fun b!506261 () Bool)

(declare-fun e!296318 () Bool)

(declare-fun e!296321 () Bool)

(assert (=> b!506261 (= e!296318 e!296321)))

(declare-fun res!307374 () Bool)

(assert (=> b!506261 (=> (not res!307374) (not e!296321))))

(declare-fun lt!231068 () SeekEntryResult!4098)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506261 (= res!307374 (or (= lt!231068 (MissingZero!4098 i!1204)) (= lt!231068 (MissingVacant!4098 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!506261 (= lt!231068 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506262 () Bool)

(declare-fun res!307371 () Bool)

(assert (=> b!506262 (=> (not res!307371) (not e!296318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506262 (= res!307371 (validKeyInArray!0 k!2280))))

(declare-fun b!506263 () Bool)

(declare-fun e!296319 () Bool)

(declare-fun e!296323 () Bool)

(assert (=> b!506263 (= e!296319 e!296323)))

(declare-fun res!307372 () Bool)

(assert (=> b!506263 (=> res!307372 e!296323)))

(declare-fun lt!231064 () Bool)

(declare-fun lt!231063 () SeekEntryResult!4098)

(assert (=> b!506263 (= res!307372 (or (and (not lt!231064) (undefined!4910 lt!231063)) (and (not lt!231064) (not (undefined!4910 lt!231063)))))))

(assert (=> b!506263 (= lt!231064 (not (is-Intermediate!4098 lt!231063)))))

(declare-fun b!506264 () Bool)

(declare-fun res!307379 () Bool)

(assert (=> b!506264 (=> (not res!307379) (not e!296321))))

(declare-datatypes ((List!9835 0))(
  ( (Nil!9832) (Cons!9831 (h!10708 (_ BitVec 64)) (t!16071 List!9835)) )
))
(declare-fun arrayNoDuplicates!0 (array!32494 (_ BitVec 32) List!9835) Bool)

(assert (=> b!506264 (= res!307379 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9832))))

(declare-fun b!506265 () Bool)

(declare-fun res!307369 () Bool)

(assert (=> b!506265 (=> (not res!307369) (not e!296318))))

(assert (=> b!506265 (= res!307369 (and (= (size!15988 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15988 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15988 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!307377 () Bool)

(assert (=> start!45778 (=> (not res!307377) (not e!296318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45778 (= res!307377 (validMask!0 mask!3524))))

(assert (=> start!45778 e!296318))

(assert (=> start!45778 true))

(declare-fun array_inv!11398 (array!32494) Bool)

(assert (=> start!45778 (array_inv!11398 a!3235)))

(declare-fun b!506266 () Bool)

(declare-fun res!307370 () Bool)

(assert (=> b!506266 (=> (not res!307370) (not e!296321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32494 (_ BitVec 32)) Bool)

(assert (=> b!506266 (= res!307370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506267 () Bool)

(declare-fun res!307373 () Bool)

(assert (=> b!506267 (=> (not res!307373) (not e!296318))))

(declare-fun arrayContainsKey!0 (array!32494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506267 (= res!307373 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506268 () Bool)

(declare-fun res!307378 () Bool)

(assert (=> b!506268 (=> (not res!307378) (not e!296318))))

(assert (=> b!506268 (= res!307378 (validKeyInArray!0 (select (arr!15624 a!3235) j!176)))))

(declare-fun b!506269 () Bool)

(assert (=> b!506269 (= e!296323 true)))

(assert (=> b!506269 false))

(declare-fun b!506270 () Bool)

(assert (=> b!506270 (= e!296321 (not e!296319))))

(declare-fun res!307375 () Bool)

(assert (=> b!506270 (=> res!307375 e!296319)))

(declare-fun lt!231065 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32494 (_ BitVec 32)) SeekEntryResult!4098)

(assert (=> b!506270 (= res!307375 (= lt!231063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231065 (select (store (arr!15624 a!3235) i!1204 k!2280) j!176) (array!32495 (store (arr!15624 a!3235) i!1204 k!2280) (size!15988 a!3235)) mask!3524)))))

(declare-fun lt!231067 () (_ BitVec 32))

(assert (=> b!506270 (= lt!231063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231067 (select (arr!15624 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506270 (= lt!231065 (toIndex!0 (select (store (arr!15624 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506270 (= lt!231067 (toIndex!0 (select (arr!15624 a!3235) j!176) mask!3524))))

(assert (=> b!506270 e!296322))

(declare-fun res!307376 () Bool)

(assert (=> b!506270 (=> (not res!307376) (not e!296322))))

(assert (=> b!506270 (= res!307376 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15476 0))(
  ( (Unit!15477) )
))
(declare-fun lt!231066 () Unit!15476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15476)

(assert (=> b!506270 (= lt!231066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45778 res!307377) b!506265))

(assert (= (and b!506265 res!307369) b!506268))

(assert (= (and b!506268 res!307378) b!506262))

(assert (= (and b!506262 res!307371) b!506267))

(assert (= (and b!506267 res!307373) b!506261))

(assert (= (and b!506261 res!307374) b!506266))

(assert (= (and b!506266 res!307370) b!506264))

(assert (= (and b!506264 res!307379) b!506270))

(assert (= (and b!506270 res!307376) b!506260))

(assert (= (and b!506270 (not res!307375)) b!506263))

(assert (= (and b!506263 (not res!307372)) b!506269))

(declare-fun m!486961 () Bool)

(assert (=> b!506264 m!486961))

(declare-fun m!486963 () Bool)

(assert (=> b!506266 m!486963))

(declare-fun m!486965 () Bool)

(assert (=> b!506262 m!486965))

(declare-fun m!486967 () Bool)

(assert (=> b!506267 m!486967))

(declare-fun m!486969 () Bool)

(assert (=> b!506260 m!486969))

(assert (=> b!506260 m!486969))

(declare-fun m!486971 () Bool)

(assert (=> b!506260 m!486971))

(declare-fun m!486973 () Bool)

(assert (=> start!45778 m!486973))

(declare-fun m!486975 () Bool)

(assert (=> start!45778 m!486975))

(declare-fun m!486977 () Bool)

(assert (=> b!506261 m!486977))

(assert (=> b!506268 m!486969))

(assert (=> b!506268 m!486969))

(declare-fun m!486979 () Bool)

(assert (=> b!506268 m!486979))

(declare-fun m!486981 () Bool)

(assert (=> b!506270 m!486981))

(declare-fun m!486983 () Bool)

(assert (=> b!506270 m!486983))

(declare-fun m!486985 () Bool)

(assert (=> b!506270 m!486985))

(assert (=> b!506270 m!486969))

(declare-fun m!486987 () Bool)

(assert (=> b!506270 m!486987))

(assert (=> b!506270 m!486969))

(declare-fun m!486989 () Bool)

(assert (=> b!506270 m!486989))

(assert (=> b!506270 m!486969))

(declare-fun m!486991 () Bool)

(assert (=> b!506270 m!486991))

(assert (=> b!506270 m!486985))

(declare-fun m!486993 () Bool)

(assert (=> b!506270 m!486993))

(assert (=> b!506270 m!486985))

(declare-fun m!486995 () Bool)

(assert (=> b!506270 m!486995))

(push 1)

