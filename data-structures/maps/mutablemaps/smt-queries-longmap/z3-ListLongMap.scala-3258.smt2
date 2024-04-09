; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45432 () Bool)

(assert start!45432)

(declare-fun b!499263 () Bool)

(declare-datatypes ((Unit!14934 0))(
  ( (Unit!14935) )
))
(declare-fun e!292577 () Unit!14934)

(declare-fun Unit!14936 () Unit!14934)

(assert (=> b!499263 (= e!292577 Unit!14936)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32217 0))(
  ( (array!32218 (arr!15487 (Array (_ BitVec 32) (_ BitVec 64))) (size!15851 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32217)

(declare-datatypes ((SeekEntryResult!3961 0))(
  ( (MissingZero!3961 (index!18026 (_ BitVec 32))) (Found!3961 (index!18027 (_ BitVec 32))) (Intermediate!3961 (undefined!4773 Bool) (index!18028 (_ BitVec 32)) (x!47097 (_ BitVec 32))) (Undefined!3961) (MissingVacant!3961 (index!18029 (_ BitVec 32))) )
))
(declare-fun lt!226426 () SeekEntryResult!3961)

(declare-fun lt!226429 () Unit!14934)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!226424 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14934)

(assert (=> b!499263 (= lt!226429 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226424 #b00000000000000000000000000000000 (index!18028 lt!226426) (x!47097 lt!226426) mask!3524))))

(declare-fun res!301383 () Bool)

(declare-fun lt!226428 () (_ BitVec 64))

(declare-fun lt!226427 () array!32217)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32217 (_ BitVec 32)) SeekEntryResult!3961)

(assert (=> b!499263 (= res!301383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226424 lt!226428 lt!226427 mask!3524) (Intermediate!3961 false (index!18028 lt!226426) (x!47097 lt!226426))))))

(declare-fun e!292574 () Bool)

(assert (=> b!499263 (=> (not res!301383) (not e!292574))))

(assert (=> b!499263 e!292574))

(declare-fun b!499264 () Bool)

(declare-fun e!292575 () Bool)

(declare-fun e!292572 () Bool)

(assert (=> b!499264 (= e!292575 (not e!292572))))

(declare-fun res!301379 () Bool)

(assert (=> b!499264 (=> res!301379 e!292572)))

(declare-fun lt!226422 () (_ BitVec 32))

(assert (=> b!499264 (= res!301379 (= lt!226426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226422 lt!226428 lt!226427 mask!3524)))))

(assert (=> b!499264 (= lt!226426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226424 (select (arr!15487 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499264 (= lt!226422 (toIndex!0 lt!226428 mask!3524))))

(assert (=> b!499264 (= lt!226428 (select (store (arr!15487 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499264 (= lt!226424 (toIndex!0 (select (arr!15487 a!3235) j!176) mask!3524))))

(assert (=> b!499264 (= lt!226427 (array!32218 (store (arr!15487 a!3235) i!1204 k0!2280) (size!15851 a!3235)))))

(declare-fun e!292579 () Bool)

(assert (=> b!499264 e!292579))

(declare-fun res!301377 () Bool)

(assert (=> b!499264 (=> (not res!301377) (not e!292579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32217 (_ BitVec 32)) Bool)

(assert (=> b!499264 (= res!301377 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226423 () Unit!14934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32217 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14934)

(assert (=> b!499264 (= lt!226423 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499265 () Bool)

(declare-fun e!292578 () Bool)

(assert (=> b!499265 (= e!292572 e!292578)))

(declare-fun res!301376 () Bool)

(assert (=> b!499265 (=> res!301376 e!292578)))

(assert (=> b!499265 (= res!301376 (or (bvsgt #b00000000000000000000000000000000 (x!47097 lt!226426)) (bvsgt (x!47097 lt!226426) #b01111111111111111111111111111110) (bvslt lt!226424 #b00000000000000000000000000000000) (bvsge lt!226424 (size!15851 a!3235)) (bvslt (index!18028 lt!226426) #b00000000000000000000000000000000) (bvsge (index!18028 lt!226426) (size!15851 a!3235)) (not (= lt!226426 (Intermediate!3961 false (index!18028 lt!226426) (x!47097 lt!226426))))))))

(assert (=> b!499265 (and (or (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226425 () Unit!14934)

(assert (=> b!499265 (= lt!226425 e!292577)))

(declare-fun c!59222 () Bool)

(assert (=> b!499265 (= c!59222 (= (select (arr!15487 a!3235) (index!18028 lt!226426)) (select (arr!15487 a!3235) j!176)))))

(assert (=> b!499265 (and (bvslt (x!47097 lt!226426) #b01111111111111111111111111111110) (or (= (select (arr!15487 a!3235) (index!18028 lt!226426)) (select (arr!15487 a!3235) j!176)) (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15487 a!3235) (index!18028 lt!226426)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499266 () Bool)

(declare-fun res!301385 () Bool)

(declare-fun e!292576 () Bool)

(assert (=> b!499266 (=> (not res!301385) (not e!292576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499266 (= res!301385 (validKeyInArray!0 (select (arr!15487 a!3235) j!176)))))

(declare-fun b!499268 () Bool)

(declare-fun res!301384 () Bool)

(assert (=> b!499268 (=> (not res!301384) (not e!292575))))

(declare-datatypes ((List!9698 0))(
  ( (Nil!9695) (Cons!9694 (h!10568 (_ BitVec 64)) (t!15934 List!9698)) )
))
(declare-fun arrayNoDuplicates!0 (array!32217 (_ BitVec 32) List!9698) Bool)

(assert (=> b!499268 (= res!301384 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9695))))

(declare-fun b!499269 () Bool)

(declare-fun res!301374 () Bool)

(assert (=> b!499269 (=> res!301374 e!292572)))

(get-info :version)

(assert (=> b!499269 (= res!301374 (or (undefined!4773 lt!226426) (not ((_ is Intermediate!3961) lt!226426))))))

(declare-fun b!499270 () Bool)

(declare-fun res!301382 () Bool)

(assert (=> b!499270 (=> (not res!301382) (not e!292576))))

(assert (=> b!499270 (= res!301382 (validKeyInArray!0 k0!2280))))

(declare-fun b!499271 () Bool)

(assert (=> b!499271 (= e!292576 e!292575)))

(declare-fun res!301378 () Bool)

(assert (=> b!499271 (=> (not res!301378) (not e!292575))))

(declare-fun lt!226421 () SeekEntryResult!3961)

(assert (=> b!499271 (= res!301378 (or (= lt!226421 (MissingZero!3961 i!1204)) (= lt!226421 (MissingVacant!3961 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32217 (_ BitVec 32)) SeekEntryResult!3961)

(assert (=> b!499271 (= lt!226421 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499272 () Bool)

(assert (=> b!499272 (= e!292578 true)))

(declare-fun lt!226430 () SeekEntryResult!3961)

(assert (=> b!499272 (= lt!226430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226424 lt!226428 lt!226427 mask!3524))))

(declare-fun b!499273 () Bool)

(declare-fun res!301373 () Bool)

(assert (=> b!499273 (=> (not res!301373) (not e!292576))))

(declare-fun arrayContainsKey!0 (array!32217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499273 (= res!301373 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499274 () Bool)

(assert (=> b!499274 (= e!292574 false)))

(declare-fun b!499275 () Bool)

(assert (=> b!499275 (= e!292579 (= (seekEntryOrOpen!0 (select (arr!15487 a!3235) j!176) a!3235 mask!3524) (Found!3961 j!176)))))

(declare-fun b!499276 () Bool)

(declare-fun res!301381 () Bool)

(assert (=> b!499276 (=> (not res!301381) (not e!292575))))

(assert (=> b!499276 (= res!301381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499277 () Bool)

(declare-fun Unit!14937 () Unit!14934)

(assert (=> b!499277 (= e!292577 Unit!14937)))

(declare-fun b!499267 () Bool)

(declare-fun res!301380 () Bool)

(assert (=> b!499267 (=> (not res!301380) (not e!292576))))

(assert (=> b!499267 (= res!301380 (and (= (size!15851 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15851 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15851 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!301375 () Bool)

(assert (=> start!45432 (=> (not res!301375) (not e!292576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45432 (= res!301375 (validMask!0 mask!3524))))

(assert (=> start!45432 e!292576))

(assert (=> start!45432 true))

(declare-fun array_inv!11261 (array!32217) Bool)

(assert (=> start!45432 (array_inv!11261 a!3235)))

(assert (= (and start!45432 res!301375) b!499267))

(assert (= (and b!499267 res!301380) b!499266))

(assert (= (and b!499266 res!301385) b!499270))

(assert (= (and b!499270 res!301382) b!499273))

(assert (= (and b!499273 res!301373) b!499271))

(assert (= (and b!499271 res!301378) b!499276))

(assert (= (and b!499276 res!301381) b!499268))

(assert (= (and b!499268 res!301384) b!499264))

(assert (= (and b!499264 res!301377) b!499275))

(assert (= (and b!499264 (not res!301379)) b!499269))

(assert (= (and b!499269 (not res!301374)) b!499265))

(assert (= (and b!499265 c!59222) b!499263))

(assert (= (and b!499265 (not c!59222)) b!499277))

(assert (= (and b!499263 res!301383) b!499274))

(assert (= (and b!499265 (not res!301376)) b!499272))

(declare-fun m!480499 () Bool)

(assert (=> b!499273 m!480499))

(declare-fun m!480501 () Bool)

(assert (=> b!499271 m!480501))

(declare-fun m!480503 () Bool)

(assert (=> b!499263 m!480503))

(declare-fun m!480505 () Bool)

(assert (=> b!499263 m!480505))

(declare-fun m!480507 () Bool)

(assert (=> b!499276 m!480507))

(declare-fun m!480509 () Bool)

(assert (=> b!499275 m!480509))

(assert (=> b!499275 m!480509))

(declare-fun m!480511 () Bool)

(assert (=> b!499275 m!480511))

(declare-fun m!480513 () Bool)

(assert (=> b!499265 m!480513))

(assert (=> b!499265 m!480509))

(declare-fun m!480515 () Bool)

(assert (=> b!499268 m!480515))

(assert (=> b!499272 m!480505))

(declare-fun m!480517 () Bool)

(assert (=> b!499270 m!480517))

(declare-fun m!480519 () Bool)

(assert (=> start!45432 m!480519))

(declare-fun m!480521 () Bool)

(assert (=> start!45432 m!480521))

(declare-fun m!480523 () Bool)

(assert (=> b!499264 m!480523))

(declare-fun m!480525 () Bool)

(assert (=> b!499264 m!480525))

(declare-fun m!480527 () Bool)

(assert (=> b!499264 m!480527))

(declare-fun m!480529 () Bool)

(assert (=> b!499264 m!480529))

(assert (=> b!499264 m!480509))

(declare-fun m!480531 () Bool)

(assert (=> b!499264 m!480531))

(assert (=> b!499264 m!480509))

(declare-fun m!480533 () Bool)

(assert (=> b!499264 m!480533))

(assert (=> b!499264 m!480509))

(declare-fun m!480535 () Bool)

(assert (=> b!499264 m!480535))

(declare-fun m!480537 () Bool)

(assert (=> b!499264 m!480537))

(assert (=> b!499266 m!480509))

(assert (=> b!499266 m!480509))

(declare-fun m!480539 () Bool)

(assert (=> b!499266 m!480539))

(check-sat (not b!499273) (not b!499270) (not b!499263) (not b!499271) (not b!499266) (not b!499276) (not b!499272) (not start!45432) (not b!499268) (not b!499264) (not b!499275))
(check-sat)
