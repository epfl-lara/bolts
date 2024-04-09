; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44794 () Bool)

(assert start!44794)

(declare-fun b!491492 () Bool)

(declare-fun res!294581 () Bool)

(declare-fun e!288763 () Bool)

(assert (=> b!491492 (=> (not res!294581) (not e!288763))))

(declare-datatypes ((array!31813 0))(
  ( (array!31814 (arr!15291 (Array (_ BitVec 32) (_ BitVec 64))) (size!15655 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31813)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491492 (= res!294581 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491493 () Bool)

(declare-fun res!294579 () Bool)

(assert (=> b!491493 (=> (not res!294579) (not e!288763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491493 (= res!294579 (validKeyInArray!0 k!2280))))

(declare-fun b!491495 () Bool)

(declare-fun res!294585 () Bool)

(declare-fun e!288759 () Bool)

(assert (=> b!491495 (=> (not res!294585) (not e!288759))))

(declare-datatypes ((List!9502 0))(
  ( (Nil!9499) (Cons!9498 (h!10360 (_ BitVec 64)) (t!15738 List!9502)) )
))
(declare-fun arrayNoDuplicates!0 (array!31813 (_ BitVec 32) List!9502) Bool)

(assert (=> b!491495 (= res!294585 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9499))))

(declare-fun b!491496 () Bool)

(declare-fun e!288762 () Bool)

(assert (=> b!491496 (= e!288759 (not e!288762))))

(declare-fun res!294587 () Bool)

(assert (=> b!491496 (=> res!294587 e!288762)))

(declare-fun lt!222280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222279 () array!31813)

(declare-datatypes ((SeekEntryResult!3765 0))(
  ( (MissingZero!3765 (index!17239 (_ BitVec 32))) (Found!3765 (index!17240 (_ BitVec 32))) (Intermediate!3765 (undefined!4577 Bool) (index!17241 (_ BitVec 32)) (x!46354 (_ BitVec 32))) (Undefined!3765) (MissingVacant!3765 (index!17242 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31813 (_ BitVec 32)) SeekEntryResult!3765)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491496 (= res!294587 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15291 a!3235) j!176) mask!3524) (select (arr!15291 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222280 mask!3524) lt!222280 lt!222279 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491496 (= lt!222280 (select (store (arr!15291 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491496 (= lt!222279 (array!31814 (store (arr!15291 a!3235) i!1204 k!2280) (size!15655 a!3235)))))

(declare-fun lt!222282 () SeekEntryResult!3765)

(assert (=> b!491496 (= lt!222282 (Found!3765 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31813 (_ BitVec 32)) SeekEntryResult!3765)

(assert (=> b!491496 (= lt!222282 (seekEntryOrOpen!0 (select (arr!15291 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31813 (_ BitVec 32)) Bool)

(assert (=> b!491496 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14468 0))(
  ( (Unit!14469) )
))
(declare-fun lt!222283 () Unit!14468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14468)

(assert (=> b!491496 (= lt!222283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491497 () Bool)

(declare-fun e!288761 () Bool)

(assert (=> b!491497 (= e!288761 (validKeyInArray!0 lt!222280))))

(declare-fun b!491498 () Bool)

(assert (=> b!491498 (= e!288762 e!288761)))

(declare-fun res!294586 () Bool)

(assert (=> b!491498 (=> res!294586 e!288761)))

(assert (=> b!491498 (= res!294586 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491498 (= lt!222282 (seekEntryOrOpen!0 lt!222280 lt!222279 mask!3524))))

(declare-fun lt!222284 () Unit!14468)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31813 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14468)

(assert (=> b!491498 (= lt!222284 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491499 () Bool)

(declare-fun res!294580 () Bool)

(assert (=> b!491499 (=> (not res!294580) (not e!288763))))

(assert (=> b!491499 (= res!294580 (and (= (size!15655 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15655 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15655 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491494 () Bool)

(declare-fun res!294584 () Bool)

(assert (=> b!491494 (=> (not res!294584) (not e!288759))))

(assert (=> b!491494 (= res!294584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!294582 () Bool)

(assert (=> start!44794 (=> (not res!294582) (not e!288763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44794 (= res!294582 (validMask!0 mask!3524))))

(assert (=> start!44794 e!288763))

(assert (=> start!44794 true))

(declare-fun array_inv!11065 (array!31813) Bool)

(assert (=> start!44794 (array_inv!11065 a!3235)))

(declare-fun b!491500 () Bool)

(declare-fun res!294578 () Bool)

(assert (=> b!491500 (=> (not res!294578) (not e!288763))))

(assert (=> b!491500 (= res!294578 (validKeyInArray!0 (select (arr!15291 a!3235) j!176)))))

(declare-fun b!491501 () Bool)

(assert (=> b!491501 (= e!288763 e!288759)))

(declare-fun res!294583 () Bool)

(assert (=> b!491501 (=> (not res!294583) (not e!288759))))

(declare-fun lt!222281 () SeekEntryResult!3765)

(assert (=> b!491501 (= res!294583 (or (= lt!222281 (MissingZero!3765 i!1204)) (= lt!222281 (MissingVacant!3765 i!1204))))))

(assert (=> b!491501 (= lt!222281 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44794 res!294582) b!491499))

(assert (= (and b!491499 res!294580) b!491500))

(assert (= (and b!491500 res!294578) b!491493))

(assert (= (and b!491493 res!294579) b!491492))

(assert (= (and b!491492 res!294581) b!491501))

(assert (= (and b!491501 res!294583) b!491494))

(assert (= (and b!491494 res!294584) b!491495))

(assert (= (and b!491495 res!294585) b!491496))

(assert (= (and b!491496 (not res!294587)) b!491498))

(assert (= (and b!491498 (not res!294586)) b!491497))

(declare-fun m!472225 () Bool)

(assert (=> b!491492 m!472225))

(declare-fun m!472227 () Bool)

(assert (=> b!491500 m!472227))

(assert (=> b!491500 m!472227))

(declare-fun m!472229 () Bool)

(assert (=> b!491500 m!472229))

(declare-fun m!472231 () Bool)

(assert (=> b!491497 m!472231))

(declare-fun m!472233 () Bool)

(assert (=> b!491495 m!472233))

(declare-fun m!472235 () Bool)

(assert (=> start!44794 m!472235))

(declare-fun m!472237 () Bool)

(assert (=> start!44794 m!472237))

(declare-fun m!472239 () Bool)

(assert (=> b!491494 m!472239))

(declare-fun m!472241 () Bool)

(assert (=> b!491498 m!472241))

(declare-fun m!472243 () Bool)

(assert (=> b!491498 m!472243))

(declare-fun m!472245 () Bool)

(assert (=> b!491496 m!472245))

(declare-fun m!472247 () Bool)

(assert (=> b!491496 m!472247))

(assert (=> b!491496 m!472245))

(declare-fun m!472249 () Bool)

(assert (=> b!491496 m!472249))

(declare-fun m!472251 () Bool)

(assert (=> b!491496 m!472251))

(declare-fun m!472253 () Bool)

(assert (=> b!491496 m!472253))

(declare-fun m!472255 () Bool)

(assert (=> b!491496 m!472255))

(assert (=> b!491496 m!472227))

(declare-fun m!472257 () Bool)

(assert (=> b!491496 m!472257))

(assert (=> b!491496 m!472227))

(assert (=> b!491496 m!472255))

(assert (=> b!491496 m!472227))

(declare-fun m!472259 () Bool)

(assert (=> b!491496 m!472259))

(assert (=> b!491496 m!472227))

(declare-fun m!472261 () Bool)

(assert (=> b!491496 m!472261))

(declare-fun m!472263 () Bool)

(assert (=> b!491501 m!472263))

(declare-fun m!472265 () Bool)

(assert (=> b!491493 m!472265))

(push 1)

