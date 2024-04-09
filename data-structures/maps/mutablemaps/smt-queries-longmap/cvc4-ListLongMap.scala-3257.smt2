; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45428 () Bool)

(assert start!45428)

(declare-fun b!499173 () Bool)

(declare-fun res!301307 () Bool)

(declare-fun e!292528 () Bool)

(assert (=> b!499173 (=> (not res!301307) (not e!292528))))

(declare-datatypes ((array!32213 0))(
  ( (array!32214 (arr!15485 (Array (_ BitVec 32) (_ BitVec 64))) (size!15849 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32213)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499173 (= res!301307 (validKeyInArray!0 (select (arr!15485 a!3235) j!176)))))

(declare-fun b!499174 () Bool)

(declare-datatypes ((Unit!14926 0))(
  ( (Unit!14927) )
))
(declare-fun e!292524 () Unit!14926)

(declare-fun Unit!14928 () Unit!14926)

(assert (=> b!499174 (= e!292524 Unit!14928)))

(declare-fun b!499175 () Bool)

(declare-fun e!292529 () Bool)

(declare-fun e!292527 () Bool)

(assert (=> b!499175 (= e!292529 (not e!292527))))

(declare-fun res!301297 () Bool)

(assert (=> b!499175 (=> res!301297 e!292527)))

(declare-datatypes ((SeekEntryResult!3959 0))(
  ( (MissingZero!3959 (index!18018 (_ BitVec 32))) (Found!3959 (index!18019 (_ BitVec 32))) (Intermediate!3959 (undefined!4771 Bool) (index!18020 (_ BitVec 32)) (x!47087 (_ BitVec 32))) (Undefined!3959) (MissingVacant!3959 (index!18021 (_ BitVec 32))) )
))
(declare-fun lt!226370 () SeekEntryResult!3959)

(declare-fun lt!226363 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!226361 () array!32213)

(declare-fun lt!226367 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32213 (_ BitVec 32)) SeekEntryResult!3959)

(assert (=> b!499175 (= res!301297 (= lt!226370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226363 lt!226367 lt!226361 mask!3524)))))

(declare-fun lt!226368 () (_ BitVec 32))

(assert (=> b!499175 (= lt!226370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226368 (select (arr!15485 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499175 (= lt!226363 (toIndex!0 lt!226367 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499175 (= lt!226367 (select (store (arr!15485 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499175 (= lt!226368 (toIndex!0 (select (arr!15485 a!3235) j!176) mask!3524))))

(assert (=> b!499175 (= lt!226361 (array!32214 (store (arr!15485 a!3235) i!1204 k!2280) (size!15849 a!3235)))))

(declare-fun e!292530 () Bool)

(assert (=> b!499175 e!292530))

(declare-fun res!301301 () Bool)

(assert (=> b!499175 (=> (not res!301301) (not e!292530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32213 (_ BitVec 32)) Bool)

(assert (=> b!499175 (= res!301301 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226362 () Unit!14926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14926)

(assert (=> b!499175 (= lt!226362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!301303 () Bool)

(assert (=> start!45428 (=> (not res!301303) (not e!292528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45428 (= res!301303 (validMask!0 mask!3524))))

(assert (=> start!45428 e!292528))

(assert (=> start!45428 true))

(declare-fun array_inv!11259 (array!32213) Bool)

(assert (=> start!45428 (array_inv!11259 a!3235)))

(declare-fun b!499176 () Bool)

(declare-fun res!301295 () Bool)

(assert (=> b!499176 (=> res!301295 e!292527)))

(assert (=> b!499176 (= res!301295 (or (undefined!4771 lt!226370) (not (is-Intermediate!3959 lt!226370))))))

(declare-fun b!499177 () Bool)

(declare-fun res!301306 () Bool)

(assert (=> b!499177 (=> (not res!301306) (not e!292528))))

(assert (=> b!499177 (= res!301306 (and (= (size!15849 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15849 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15849 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499178 () Bool)

(declare-fun e!292526 () Bool)

(assert (=> b!499178 (= e!292527 e!292526)))

(declare-fun res!301300 () Bool)

(assert (=> b!499178 (=> res!301300 e!292526)))

(assert (=> b!499178 (= res!301300 (or (bvsgt #b00000000000000000000000000000000 (x!47087 lt!226370)) (bvsgt (x!47087 lt!226370) #b01111111111111111111111111111110) (bvslt lt!226368 #b00000000000000000000000000000000) (bvsge lt!226368 (size!15849 a!3235)) (bvslt (index!18020 lt!226370) #b00000000000000000000000000000000) (bvsge (index!18020 lt!226370) (size!15849 a!3235)) (not (= lt!226370 (Intermediate!3959 false (index!18020 lt!226370) (x!47087 lt!226370))))))))

(assert (=> b!499178 (and (or (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226364 () Unit!14926)

(assert (=> b!499178 (= lt!226364 e!292524)))

(declare-fun c!59216 () Bool)

(assert (=> b!499178 (= c!59216 (= (select (arr!15485 a!3235) (index!18020 lt!226370)) (select (arr!15485 a!3235) j!176)))))

(assert (=> b!499178 (and (bvslt (x!47087 lt!226370) #b01111111111111111111111111111110) (or (= (select (arr!15485 a!3235) (index!18020 lt!226370)) (select (arr!15485 a!3235) j!176)) (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15485 a!3235) (index!18020 lt!226370)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499179 () Bool)

(declare-fun e!292531 () Bool)

(assert (=> b!499179 (= e!292531 false)))

(declare-fun b!499180 () Bool)

(declare-fun res!301299 () Bool)

(assert (=> b!499180 (=> (not res!301299) (not e!292528))))

(declare-fun arrayContainsKey!0 (array!32213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499180 (= res!301299 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499181 () Bool)

(assert (=> b!499181 (= e!292528 e!292529)))

(declare-fun res!301298 () Bool)

(assert (=> b!499181 (=> (not res!301298) (not e!292529))))

(declare-fun lt!226365 () SeekEntryResult!3959)

(assert (=> b!499181 (= res!301298 (or (= lt!226365 (MissingZero!3959 i!1204)) (= lt!226365 (MissingVacant!3959 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32213 (_ BitVec 32)) SeekEntryResult!3959)

(assert (=> b!499181 (= lt!226365 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499182 () Bool)

(declare-fun Unit!14929 () Unit!14926)

(assert (=> b!499182 (= e!292524 Unit!14929)))

(declare-fun lt!226369 () Unit!14926)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14926)

(assert (=> b!499182 (= lt!226369 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226368 #b00000000000000000000000000000000 (index!18020 lt!226370) (x!47087 lt!226370) mask!3524))))

(declare-fun res!301305 () Bool)

(assert (=> b!499182 (= res!301305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226368 lt!226367 lt!226361 mask!3524) (Intermediate!3959 false (index!18020 lt!226370) (x!47087 lt!226370))))))

(assert (=> b!499182 (=> (not res!301305) (not e!292531))))

(assert (=> b!499182 e!292531))

(declare-fun b!499183 () Bool)

(declare-fun res!301302 () Bool)

(assert (=> b!499183 (=> (not res!301302) (not e!292528))))

(assert (=> b!499183 (= res!301302 (validKeyInArray!0 k!2280))))

(declare-fun b!499184 () Bool)

(declare-fun res!301296 () Bool)

(assert (=> b!499184 (=> (not res!301296) (not e!292529))))

(assert (=> b!499184 (= res!301296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499185 () Bool)

(declare-fun res!301304 () Bool)

(assert (=> b!499185 (=> (not res!301304) (not e!292529))))

(declare-datatypes ((List!9696 0))(
  ( (Nil!9693) (Cons!9692 (h!10566 (_ BitVec 64)) (t!15932 List!9696)) )
))
(declare-fun arrayNoDuplicates!0 (array!32213 (_ BitVec 32) List!9696) Bool)

(assert (=> b!499185 (= res!301304 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9693))))

(declare-fun b!499186 () Bool)

(assert (=> b!499186 (= e!292526 true)))

(declare-fun lt!226366 () SeekEntryResult!3959)

(assert (=> b!499186 (= lt!226366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226368 lt!226367 lt!226361 mask!3524))))

(declare-fun b!499187 () Bool)

(assert (=> b!499187 (= e!292530 (= (seekEntryOrOpen!0 (select (arr!15485 a!3235) j!176) a!3235 mask!3524) (Found!3959 j!176)))))

(assert (= (and start!45428 res!301303) b!499177))

(assert (= (and b!499177 res!301306) b!499173))

(assert (= (and b!499173 res!301307) b!499183))

(assert (= (and b!499183 res!301302) b!499180))

(assert (= (and b!499180 res!301299) b!499181))

(assert (= (and b!499181 res!301298) b!499184))

(assert (= (and b!499184 res!301296) b!499185))

(assert (= (and b!499185 res!301304) b!499175))

(assert (= (and b!499175 res!301301) b!499187))

(assert (= (and b!499175 (not res!301297)) b!499176))

(assert (= (and b!499176 (not res!301295)) b!499178))

(assert (= (and b!499178 c!59216) b!499182))

(assert (= (and b!499178 (not c!59216)) b!499174))

(assert (= (and b!499182 res!301305) b!499179))

(assert (= (and b!499178 (not res!301300)) b!499186))

(declare-fun m!480415 () Bool)

(assert (=> b!499180 m!480415))

(declare-fun m!480417 () Bool)

(assert (=> b!499186 m!480417))

(declare-fun m!480419 () Bool)

(assert (=> b!499184 m!480419))

(declare-fun m!480421 () Bool)

(assert (=> b!499173 m!480421))

(assert (=> b!499173 m!480421))

(declare-fun m!480423 () Bool)

(assert (=> b!499173 m!480423))

(declare-fun m!480425 () Bool)

(assert (=> b!499183 m!480425))

(declare-fun m!480427 () Bool)

(assert (=> b!499181 m!480427))

(declare-fun m!480429 () Bool)

(assert (=> b!499182 m!480429))

(assert (=> b!499182 m!480417))

(declare-fun m!480431 () Bool)

(assert (=> b!499178 m!480431))

(assert (=> b!499178 m!480421))

(declare-fun m!480433 () Bool)

(assert (=> b!499185 m!480433))

(assert (=> b!499187 m!480421))

(assert (=> b!499187 m!480421))

(declare-fun m!480435 () Bool)

(assert (=> b!499187 m!480435))

(declare-fun m!480437 () Bool)

(assert (=> start!45428 m!480437))

(declare-fun m!480439 () Bool)

(assert (=> start!45428 m!480439))

(assert (=> b!499175 m!480421))

(declare-fun m!480441 () Bool)

(assert (=> b!499175 m!480441))

(declare-fun m!480443 () Bool)

(assert (=> b!499175 m!480443))

(declare-fun m!480445 () Bool)

(assert (=> b!499175 m!480445))

(declare-fun m!480447 () Bool)

(assert (=> b!499175 m!480447))

(declare-fun m!480449 () Bool)

(assert (=> b!499175 m!480449))

(assert (=> b!499175 m!480421))

(declare-fun m!480451 () Bool)

(assert (=> b!499175 m!480451))

(assert (=> b!499175 m!480421))

(declare-fun m!480453 () Bool)

(assert (=> b!499175 m!480453))

(declare-fun m!480455 () Bool)

(assert (=> b!499175 m!480455))

(push 1)

