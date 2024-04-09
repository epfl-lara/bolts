; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31006 () Bool)

(assert start!31006)

(declare-fun b!311364 () Bool)

(declare-fun res!167985 () Bool)

(declare-fun e!194275 () Bool)

(assert (=> b!311364 (=> (not res!167985) (not e!194275))))

(declare-datatypes ((array!15906 0))(
  ( (array!15907 (arr!7533 (Array (_ BitVec 32) (_ BitVec 64))) (size!7885 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15906)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!311364 (= res!167985 (and (= (size!7885 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7885 a!3293))))))

(declare-fun b!311365 () Bool)

(declare-fun e!194271 () Bool)

(assert (=> b!311365 (= e!194275 e!194271)))

(declare-fun res!167981 () Bool)

(assert (=> b!311365 (=> (not res!167981) (not e!194271))))

(declare-datatypes ((SeekEntryResult!2684 0))(
  ( (MissingZero!2684 (index!12912 (_ BitVec 32))) (Found!2684 (index!12913 (_ BitVec 32))) (Intermediate!2684 (undefined!3496 Bool) (index!12914 (_ BitVec 32)) (x!31092 (_ BitVec 32))) (Undefined!2684) (MissingVacant!2684 (index!12915 (_ BitVec 32))) )
))
(declare-fun lt!152369 () SeekEntryResult!2684)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15906 (_ BitVec 32)) SeekEntryResult!2684)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311365 (= res!167981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152369))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311365 (= lt!152369 (Intermediate!2684 false resIndex!52 resX!52))))

(declare-fun b!311366 () Bool)

(declare-fun res!167983 () Bool)

(assert (=> b!311366 (=> (not res!167983) (not e!194271))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311366 (= res!167983 (and (= (select (arr!7533 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7885 a!3293))))))

(declare-fun b!311367 () Bool)

(declare-fun e!194274 () Bool)

(assert (=> b!311367 (= e!194271 e!194274)))

(declare-fun res!167980 () Bool)

(assert (=> b!311367 (=> (not res!167980) (not e!194274))))

(declare-fun lt!152367 () SeekEntryResult!2684)

(assert (=> b!311367 (= res!167980 (and (= lt!152367 lt!152369) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7533 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311367 (= lt!152367 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun lt!152368 () array!15906)

(declare-fun lt!152366 () (_ BitVec 32))

(declare-fun e!194273 () Bool)

(declare-fun b!311368 () Bool)

(assert (=> b!311368 (= e!194273 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152368 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152366 k!2441 lt!152368 mask!3709)))))

(assert (=> b!311368 (= lt!152368 (array!15907 (store (arr!7533 a!3293) i!1240 k!2441) (size!7885 a!3293)))))

(declare-fun res!167982 () Bool)

(assert (=> start!31006 (=> (not res!167982) (not e!194275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31006 (= res!167982 (validMask!0 mask!3709))))

(assert (=> start!31006 e!194275))

(declare-fun array_inv!5487 (array!15906) Bool)

(assert (=> start!31006 (array_inv!5487 a!3293)))

(assert (=> start!31006 true))

(declare-fun b!311369 () Bool)

(declare-fun res!167984 () Bool)

(assert (=> b!311369 (=> (not res!167984) (not e!194275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15906 (_ BitVec 32)) Bool)

(assert (=> b!311369 (= res!167984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311370 () Bool)

(declare-fun res!167977 () Bool)

(assert (=> b!311370 (=> (not res!167977) (not e!194275))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15906 (_ BitVec 32)) SeekEntryResult!2684)

(assert (=> b!311370 (= res!167977 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2684 i!1240)))))

(declare-fun b!311371 () Bool)

(assert (=> b!311371 (= e!194274 (not true))))

(assert (=> b!311371 e!194273))

(declare-fun res!167978 () Bool)

(assert (=> b!311371 (=> (not res!167978) (not e!194273))))

(assert (=> b!311371 (= res!167978 (= lt!152367 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152366 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311371 (= lt!152366 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311372 () Bool)

(declare-fun res!167979 () Bool)

(assert (=> b!311372 (=> (not res!167979) (not e!194275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311372 (= res!167979 (validKeyInArray!0 k!2441))))

(declare-fun b!311373 () Bool)

(declare-fun res!167976 () Bool)

(assert (=> b!311373 (=> (not res!167976) (not e!194275))))

(declare-fun arrayContainsKey!0 (array!15906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311373 (= res!167976 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31006 res!167982) b!311364))

(assert (= (and b!311364 res!167985) b!311372))

(assert (= (and b!311372 res!167979) b!311373))

(assert (= (and b!311373 res!167976) b!311370))

(assert (= (and b!311370 res!167977) b!311369))

(assert (= (and b!311369 res!167984) b!311365))

(assert (= (and b!311365 res!167981) b!311366))

(assert (= (and b!311366 res!167983) b!311367))

(assert (= (and b!311367 res!167980) b!311371))

(assert (= (and b!311371 res!167978) b!311368))

(declare-fun m!321389 () Bool)

(assert (=> start!31006 m!321389))

(declare-fun m!321391 () Bool)

(assert (=> start!31006 m!321391))

(declare-fun m!321393 () Bool)

(assert (=> b!311366 m!321393))

(declare-fun m!321395 () Bool)

(assert (=> b!311367 m!321395))

(declare-fun m!321397 () Bool)

(assert (=> b!311367 m!321397))

(declare-fun m!321399 () Bool)

(assert (=> b!311373 m!321399))

(declare-fun m!321401 () Bool)

(assert (=> b!311372 m!321401))

(declare-fun m!321403 () Bool)

(assert (=> b!311368 m!321403))

(declare-fun m!321405 () Bool)

(assert (=> b!311368 m!321405))

(declare-fun m!321407 () Bool)

(assert (=> b!311368 m!321407))

(declare-fun m!321409 () Bool)

(assert (=> b!311365 m!321409))

(assert (=> b!311365 m!321409))

(declare-fun m!321411 () Bool)

(assert (=> b!311365 m!321411))

(declare-fun m!321413 () Bool)

(assert (=> b!311371 m!321413))

(declare-fun m!321415 () Bool)

(assert (=> b!311371 m!321415))

(declare-fun m!321417 () Bool)

(assert (=> b!311370 m!321417))

(declare-fun m!321419 () Bool)

(assert (=> b!311369 m!321419))

(push 1)

(assert (not b!311368))

(assert (not b!311373))

(assert (not start!31006))

(assert (not b!311371))

