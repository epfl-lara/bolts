; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45004 () Bool)

(assert start!45004)

(declare-fun b!493361 () Bool)

(declare-fun res!296088 () Bool)

(declare-fun e!289725 () Bool)

(assert (=> b!493361 (=> (not res!296088) (not e!289725))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493361 (= res!296088 (validKeyInArray!0 k!2280))))

(declare-fun res!296082 () Bool)

(assert (=> start!45004 (=> (not res!296082) (not e!289725))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45004 (= res!296082 (validMask!0 mask!3524))))

(assert (=> start!45004 e!289725))

(assert (=> start!45004 true))

(declare-datatypes ((array!31909 0))(
  ( (array!31910 (arr!15336 (Array (_ BitVec 32) (_ BitVec 64))) (size!15700 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31909)

(declare-fun array_inv!11110 (array!31909) Bool)

(assert (=> start!45004 (array_inv!11110 a!3235)))

(declare-fun b!493362 () Bool)

(declare-fun res!296081 () Bool)

(declare-fun e!289724 () Bool)

(assert (=> b!493362 (=> res!296081 e!289724)))

(declare-datatypes ((SeekEntryResult!3810 0))(
  ( (MissingZero!3810 (index!17419 (_ BitVec 32))) (Found!3810 (index!17420 (_ BitVec 32))) (Intermediate!3810 (undefined!4622 Bool) (index!17421 (_ BitVec 32)) (x!46531 (_ BitVec 32))) (Undefined!3810) (MissingVacant!3810 (index!17422 (_ BitVec 32))) )
))
(declare-fun lt!223205 () SeekEntryResult!3810)

(assert (=> b!493362 (= res!296081 (or (not (is-Intermediate!3810 lt!223205)) (not (undefined!4622 lt!223205))))))

(declare-fun b!493363 () Bool)

(declare-fun res!296089 () Bool)

(assert (=> b!493363 (=> (not res!296089) (not e!289725))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493363 (= res!296089 (validKeyInArray!0 (select (arr!15336 a!3235) j!176)))))

(declare-fun b!493364 () Bool)

(assert (=> b!493364 (= e!289724 true)))

(declare-fun lt!223207 () SeekEntryResult!3810)

(assert (=> b!493364 (= lt!223207 Undefined!3810)))

(declare-fun b!493365 () Bool)

(declare-fun e!289723 () Bool)

(assert (=> b!493365 (= e!289723 (not e!289724))))

(declare-fun res!296084 () Bool)

(assert (=> b!493365 (=> res!296084 e!289724)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31909 (_ BitVec 32)) SeekEntryResult!3810)

(assert (=> b!493365 (= res!296084 (= lt!223205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223204 (select (store (arr!15336 a!3235) i!1204 k!2280) j!176) (array!31910 (store (arr!15336 a!3235) i!1204 k!2280) (size!15700 a!3235)) mask!3524)))))

(declare-fun lt!223206 () (_ BitVec 32))

(assert (=> b!493365 (= lt!223205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223206 (select (arr!15336 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493365 (= lt!223204 (toIndex!0 (select (store (arr!15336 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493365 (= lt!223206 (toIndex!0 (select (arr!15336 a!3235) j!176) mask!3524))))

(assert (=> b!493365 (= lt!223207 (Found!3810 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31909 (_ BitVec 32)) SeekEntryResult!3810)

(assert (=> b!493365 (= lt!223207 (seekEntryOrOpen!0 (select (arr!15336 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31909 (_ BitVec 32)) Bool)

(assert (=> b!493365 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14558 0))(
  ( (Unit!14559) )
))
(declare-fun lt!223203 () Unit!14558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14558)

(assert (=> b!493365 (= lt!223203 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493366 () Bool)

(declare-fun res!296086 () Bool)

(assert (=> b!493366 (=> (not res!296086) (not e!289723))))

(declare-datatypes ((List!9547 0))(
  ( (Nil!9544) (Cons!9543 (h!10411 (_ BitVec 64)) (t!15783 List!9547)) )
))
(declare-fun arrayNoDuplicates!0 (array!31909 (_ BitVec 32) List!9547) Bool)

(assert (=> b!493366 (= res!296086 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9544))))

(declare-fun b!493367 () Bool)

(assert (=> b!493367 (= e!289725 e!289723)))

(declare-fun res!296085 () Bool)

(assert (=> b!493367 (=> (not res!296085) (not e!289723))))

(declare-fun lt!223208 () SeekEntryResult!3810)

(assert (=> b!493367 (= res!296085 (or (= lt!223208 (MissingZero!3810 i!1204)) (= lt!223208 (MissingVacant!3810 i!1204))))))

(assert (=> b!493367 (= lt!223208 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493368 () Bool)

(declare-fun res!296083 () Bool)

(assert (=> b!493368 (=> (not res!296083) (not e!289723))))

(assert (=> b!493368 (= res!296083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493369 () Bool)

(declare-fun res!296090 () Bool)

(assert (=> b!493369 (=> (not res!296090) (not e!289725))))

(declare-fun arrayContainsKey!0 (array!31909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493369 (= res!296090 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493370 () Bool)

(declare-fun res!296087 () Bool)

(assert (=> b!493370 (=> (not res!296087) (not e!289725))))

(assert (=> b!493370 (= res!296087 (and (= (size!15700 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15700 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15700 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45004 res!296082) b!493370))

(assert (= (and b!493370 res!296087) b!493363))

(assert (= (and b!493363 res!296089) b!493361))

(assert (= (and b!493361 res!296088) b!493369))

(assert (= (and b!493369 res!296090) b!493367))

(assert (= (and b!493367 res!296085) b!493368))

(assert (= (and b!493368 res!296083) b!493366))

(assert (= (and b!493366 res!296086) b!493365))

(assert (= (and b!493365 (not res!296084)) b!493362))

(assert (= (and b!493362 (not res!296081)) b!493364))

(declare-fun m!474265 () Bool)

(assert (=> b!493366 m!474265))

(declare-fun m!474267 () Bool)

(assert (=> b!493361 m!474267))

(declare-fun m!474269 () Bool)

(assert (=> start!45004 m!474269))

(declare-fun m!474271 () Bool)

(assert (=> start!45004 m!474271))

(declare-fun m!474273 () Bool)

(assert (=> b!493365 m!474273))

(declare-fun m!474275 () Bool)

(assert (=> b!493365 m!474275))

(declare-fun m!474277 () Bool)

(assert (=> b!493365 m!474277))

(declare-fun m!474279 () Bool)

(assert (=> b!493365 m!474279))

(declare-fun m!474281 () Bool)

(assert (=> b!493365 m!474281))

(declare-fun m!474283 () Bool)

(assert (=> b!493365 m!474283))

(assert (=> b!493365 m!474273))

(assert (=> b!493365 m!474277))

(declare-fun m!474285 () Bool)

(assert (=> b!493365 m!474285))

(assert (=> b!493365 m!474277))

(declare-fun m!474287 () Bool)

(assert (=> b!493365 m!474287))

(assert (=> b!493365 m!474277))

(declare-fun m!474289 () Bool)

(assert (=> b!493365 m!474289))

(assert (=> b!493365 m!474273))

(declare-fun m!474291 () Bool)

(assert (=> b!493365 m!474291))

(declare-fun m!474293 () Bool)

(assert (=> b!493368 m!474293))

(declare-fun m!474295 () Bool)

(assert (=> b!493367 m!474295))

(assert (=> b!493363 m!474277))

(assert (=> b!493363 m!474277))

(declare-fun m!474297 () Bool)

(assert (=> b!493363 m!474297))

(declare-fun m!474299 () Bool)

(assert (=> b!493369 m!474299))

(push 1)

