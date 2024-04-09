; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45386 () Bool)

(assert start!45386)

(declare-fun b!498228 () Bool)

(declare-fun res!300486 () Bool)

(declare-fun e!292022 () Bool)

(assert (=> b!498228 (=> (not res!300486) (not e!292022))))

(declare-datatypes ((array!32171 0))(
  ( (array!32172 (arr!15464 (Array (_ BitVec 32) (_ BitVec 64))) (size!15828 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32171)

(declare-datatypes ((List!9675 0))(
  ( (Nil!9672) (Cons!9671 (h!10545 (_ BitVec 64)) (t!15911 List!9675)) )
))
(declare-fun arrayNoDuplicates!0 (array!32171 (_ BitVec 32) List!9675) Bool)

(assert (=> b!498228 (= res!300486 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9672))))

(declare-fun b!498229 () Bool)

(declare-fun res!300485 () Bool)

(assert (=> b!498229 (=> (not res!300485) (not e!292022))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32171 (_ BitVec 32)) Bool)

(assert (=> b!498229 (= res!300485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498230 () Bool)

(declare-fun res!300482 () Bool)

(declare-fun e!292021 () Bool)

(assert (=> b!498230 (=> (not res!300482) (not e!292021))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498230 (= res!300482 (validKeyInArray!0 k!2280))))

(declare-fun res!300476 () Bool)

(assert (=> start!45386 (=> (not res!300476) (not e!292021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45386 (= res!300476 (validMask!0 mask!3524))))

(assert (=> start!45386 e!292021))

(assert (=> start!45386 true))

(declare-fun array_inv!11238 (array!32171) Bool)

(assert (=> start!45386 (array_inv!11238 a!3235)))

(declare-fun b!498231 () Bool)

(declare-fun res!300479 () Bool)

(declare-fun e!292027 () Bool)

(assert (=> b!498231 (=> res!300479 e!292027)))

(declare-datatypes ((SeekEntryResult!3938 0))(
  ( (MissingZero!3938 (index!17934 (_ BitVec 32))) (Found!3938 (index!17935 (_ BitVec 32))) (Intermediate!3938 (undefined!4750 Bool) (index!17936 (_ BitVec 32)) (x!47010 (_ BitVec 32))) (Undefined!3938) (MissingVacant!3938 (index!17937 (_ BitVec 32))) )
))
(declare-fun lt!225736 () SeekEntryResult!3938)

(assert (=> b!498231 (= res!300479 (or (undefined!4750 lt!225736) (not (is-Intermediate!3938 lt!225736))))))

(declare-fun b!498232 () Bool)

(declare-fun e!292024 () Bool)

(assert (=> b!498232 (= e!292024 false)))

(declare-fun b!498233 () Bool)

(declare-fun res!300477 () Bool)

(assert (=> b!498233 (=> (not res!300477) (not e!292021))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498233 (= res!300477 (and (= (size!15828 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15828 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15828 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498234 () Bool)

(declare-fun e!292025 () Bool)

(assert (=> b!498234 (= e!292025 true)))

(declare-fun lt!225738 () (_ BitVec 32))

(declare-fun lt!225733 () (_ BitVec 64))

(declare-fun lt!225732 () SeekEntryResult!3938)

(declare-fun lt!225731 () array!32171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32171 (_ BitVec 32)) SeekEntryResult!3938)

(assert (=> b!498234 (= lt!225732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225738 lt!225733 lt!225731 mask!3524))))

(declare-fun b!498235 () Bool)

(declare-datatypes ((Unit!14842 0))(
  ( (Unit!14843) )
))
(declare-fun e!292020 () Unit!14842)

(declare-fun Unit!14844 () Unit!14842)

(assert (=> b!498235 (= e!292020 Unit!14844)))

(declare-fun lt!225740 () Unit!14842)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14842)

(assert (=> b!498235 (= lt!225740 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225738 #b00000000000000000000000000000000 (index!17936 lt!225736) (x!47010 lt!225736) mask!3524))))

(declare-fun res!300487 () Bool)

(assert (=> b!498235 (= res!300487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225738 lt!225733 lt!225731 mask!3524) (Intermediate!3938 false (index!17936 lt!225736) (x!47010 lt!225736))))))

(assert (=> b!498235 (=> (not res!300487) (not e!292024))))

(assert (=> b!498235 e!292024))

(declare-fun b!498236 () Bool)

(declare-fun Unit!14845 () Unit!14842)

(assert (=> b!498236 (= e!292020 Unit!14845)))

(declare-fun b!498237 () Bool)

(declare-fun res!300488 () Bool)

(assert (=> b!498237 (=> (not res!300488) (not e!292021))))

(assert (=> b!498237 (= res!300488 (validKeyInArray!0 (select (arr!15464 a!3235) j!176)))))

(declare-fun b!498238 () Bool)

(assert (=> b!498238 (= e!292027 e!292025)))

(declare-fun res!300478 () Bool)

(assert (=> b!498238 (=> res!300478 e!292025)))

(assert (=> b!498238 (= res!300478 (or (bvsgt #b00000000000000000000000000000000 (x!47010 lt!225736)) (bvsgt (x!47010 lt!225736) #b01111111111111111111111111111110) (bvslt lt!225738 #b00000000000000000000000000000000) (bvsge lt!225738 (size!15828 a!3235)) (bvslt (index!17936 lt!225736) #b00000000000000000000000000000000) (bvsge (index!17936 lt!225736) (size!15828 a!3235)) (not (= lt!225736 (Intermediate!3938 false (index!17936 lt!225736) (x!47010 lt!225736))))))))

(assert (=> b!498238 (and (or (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225739 () Unit!14842)

(assert (=> b!498238 (= lt!225739 e!292020)))

(declare-fun c!59153 () Bool)

(assert (=> b!498238 (= c!59153 (= (select (arr!15464 a!3235) (index!17936 lt!225736)) (select (arr!15464 a!3235) j!176)))))

(assert (=> b!498238 (and (bvslt (x!47010 lt!225736) #b01111111111111111111111111111110) (or (= (select (arr!15464 a!3235) (index!17936 lt!225736)) (select (arr!15464 a!3235) j!176)) (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15464 a!3235) (index!17936 lt!225736)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498239 () Bool)

(declare-fun res!300484 () Bool)

(assert (=> b!498239 (=> (not res!300484) (not e!292021))))

(declare-fun arrayContainsKey!0 (array!32171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498239 (= res!300484 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498240 () Bool)

(assert (=> b!498240 (= e!292022 (not e!292027))))

(declare-fun res!300481 () Bool)

(assert (=> b!498240 (=> res!300481 e!292027)))

(declare-fun lt!225734 () (_ BitVec 32))

(assert (=> b!498240 (= res!300481 (= lt!225736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225734 lt!225733 lt!225731 mask!3524)))))

(assert (=> b!498240 (= lt!225736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225738 (select (arr!15464 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498240 (= lt!225734 (toIndex!0 lt!225733 mask!3524))))

(assert (=> b!498240 (= lt!225733 (select (store (arr!15464 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498240 (= lt!225738 (toIndex!0 (select (arr!15464 a!3235) j!176) mask!3524))))

(assert (=> b!498240 (= lt!225731 (array!32172 (store (arr!15464 a!3235) i!1204 k!2280) (size!15828 a!3235)))))

(declare-fun e!292023 () Bool)

(assert (=> b!498240 e!292023))

(declare-fun res!300483 () Bool)

(assert (=> b!498240 (=> (not res!300483) (not e!292023))))

(assert (=> b!498240 (= res!300483 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225737 () Unit!14842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14842)

(assert (=> b!498240 (= lt!225737 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498241 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32171 (_ BitVec 32)) SeekEntryResult!3938)

(assert (=> b!498241 (= e!292023 (= (seekEntryOrOpen!0 (select (arr!15464 a!3235) j!176) a!3235 mask!3524) (Found!3938 j!176)))))

(declare-fun b!498242 () Bool)

(assert (=> b!498242 (= e!292021 e!292022)))

(declare-fun res!300480 () Bool)

(assert (=> b!498242 (=> (not res!300480) (not e!292022))))

(declare-fun lt!225735 () SeekEntryResult!3938)

(assert (=> b!498242 (= res!300480 (or (= lt!225735 (MissingZero!3938 i!1204)) (= lt!225735 (MissingVacant!3938 i!1204))))))

(assert (=> b!498242 (= lt!225735 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45386 res!300476) b!498233))

(assert (= (and b!498233 res!300477) b!498237))

(assert (= (and b!498237 res!300488) b!498230))

(assert (= (and b!498230 res!300482) b!498239))

(assert (= (and b!498239 res!300484) b!498242))

(assert (= (and b!498242 res!300480) b!498229))

(assert (= (and b!498229 res!300485) b!498228))

(assert (= (and b!498228 res!300486) b!498240))

(assert (= (and b!498240 res!300483) b!498241))

(assert (= (and b!498240 (not res!300481)) b!498231))

(assert (= (and b!498231 (not res!300479)) b!498238))

(assert (= (and b!498238 c!59153) b!498235))

(assert (= (and b!498238 (not c!59153)) b!498236))

(assert (= (and b!498235 res!300487) b!498232))

(assert (= (and b!498238 (not res!300478)) b!498234))

(declare-fun m!479533 () Bool)

(assert (=> b!498239 m!479533))

(declare-fun m!479535 () Bool)

(assert (=> b!498229 m!479535))

(declare-fun m!479537 () Bool)

(assert (=> b!498235 m!479537))

(declare-fun m!479539 () Bool)

(assert (=> b!498235 m!479539))

(declare-fun m!479541 () Bool)

(assert (=> b!498240 m!479541))

(declare-fun m!479543 () Bool)

(assert (=> b!498240 m!479543))

(declare-fun m!479545 () Bool)

(assert (=> b!498240 m!479545))

(declare-fun m!479547 () Bool)

(assert (=> b!498240 m!479547))

(declare-fun m!479549 () Bool)

(assert (=> b!498240 m!479549))

(declare-fun m!479551 () Bool)

(assert (=> b!498240 m!479551))

(assert (=> b!498240 m!479549))

(declare-fun m!479553 () Bool)

(assert (=> b!498240 m!479553))

(assert (=> b!498240 m!479549))

(declare-fun m!479555 () Bool)

(assert (=> b!498240 m!479555))

(declare-fun m!479557 () Bool)

(assert (=> b!498240 m!479557))

(declare-fun m!479559 () Bool)

(assert (=> b!498242 m!479559))

(declare-fun m!479561 () Bool)

(assert (=> b!498238 m!479561))

(assert (=> b!498238 m!479549))

(declare-fun m!479563 () Bool)

(assert (=> b!498228 m!479563))

(declare-fun m!479565 () Bool)

(assert (=> b!498230 m!479565))

(assert (=> b!498237 m!479549))

(assert (=> b!498237 m!479549))

(declare-fun m!479567 () Bool)

(assert (=> b!498237 m!479567))

(assert (=> b!498234 m!479539))

(declare-fun m!479569 () Bool)

(assert (=> start!45386 m!479569))

(declare-fun m!479571 () Bool)

(assert (=> start!45386 m!479571))

(assert (=> b!498241 m!479549))

(assert (=> b!498241 m!479549))

(declare-fun m!479573 () Bool)

(assert (=> b!498241 m!479573))

(push 1)

