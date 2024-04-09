; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44718 () Bool)

(assert start!44718)

(declare-fun b!490455 () Bool)

(declare-fun res!293547 () Bool)

(declare-fun e!288294 () Bool)

(assert (=> b!490455 (=> (not res!293547) (not e!288294))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490455 (= res!293547 (validKeyInArray!0 k0!2280))))

(declare-fun b!490456 () Bool)

(declare-fun res!293544 () Bool)

(assert (=> b!490456 (=> (not res!293544) (not e!288294))))

(declare-datatypes ((array!31737 0))(
  ( (array!31738 (arr!15253 (Array (_ BitVec 32) (_ BitVec 64))) (size!15617 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31737)

(declare-fun arrayContainsKey!0 (array!31737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490456 (= res!293544 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490457 () Bool)

(declare-fun e!288292 () Bool)

(assert (=> b!490457 (= e!288292 true)))

(declare-fun lt!221600 () array!31737)

(declare-fun lt!221599 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3727 0))(
  ( (MissingZero!3727 (index!17087 (_ BitVec 32))) (Found!3727 (index!17088 (_ BitVec 32))) (Intermediate!3727 (undefined!4539 Bool) (index!17089 (_ BitVec 32)) (x!46212 (_ BitVec 32))) (Undefined!3727) (MissingVacant!3727 (index!17090 (_ BitVec 32))) )
))
(declare-fun lt!221598 () SeekEntryResult!3727)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31737 (_ BitVec 32)) SeekEntryResult!3727)

(assert (=> b!490457 (= lt!221598 (seekEntryOrOpen!0 lt!221599 lt!221600 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!14392 0))(
  ( (Unit!14393) )
))
(declare-fun lt!221595 () Unit!14392)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31737 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14392)

(assert (=> b!490457 (= lt!221595 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490458 () Bool)

(declare-fun e!288293 () Bool)

(assert (=> b!490458 (= e!288294 e!288293)))

(declare-fun res!293542 () Bool)

(assert (=> b!490458 (=> (not res!293542) (not e!288293))))

(declare-fun lt!221597 () SeekEntryResult!3727)

(assert (=> b!490458 (= res!293542 (or (= lt!221597 (MissingZero!3727 i!1204)) (= lt!221597 (MissingVacant!3727 i!1204))))))

(assert (=> b!490458 (= lt!221597 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490459 () Bool)

(declare-fun res!293543 () Bool)

(assert (=> b!490459 (=> (not res!293543) (not e!288293))))

(declare-datatypes ((List!9464 0))(
  ( (Nil!9461) (Cons!9460 (h!10322 (_ BitVec 64)) (t!15700 List!9464)) )
))
(declare-fun arrayNoDuplicates!0 (array!31737 (_ BitVec 32) List!9464) Bool)

(assert (=> b!490459 (= res!293543 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9461))))

(declare-fun b!490460 () Bool)

(declare-fun res!293546 () Bool)

(assert (=> b!490460 (=> (not res!293546) (not e!288294))))

(assert (=> b!490460 (= res!293546 (validKeyInArray!0 (select (arr!15253 a!3235) j!176)))))

(declare-fun res!293545 () Bool)

(assert (=> start!44718 (=> (not res!293545) (not e!288294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44718 (= res!293545 (validMask!0 mask!3524))))

(assert (=> start!44718 e!288294))

(assert (=> start!44718 true))

(declare-fun array_inv!11027 (array!31737) Bool)

(assert (=> start!44718 (array_inv!11027 a!3235)))

(declare-fun b!490461 () Bool)

(declare-fun res!293541 () Bool)

(assert (=> b!490461 (=> (not res!293541) (not e!288294))))

(assert (=> b!490461 (= res!293541 (and (= (size!15617 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15617 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15617 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490462 () Bool)

(declare-fun res!293548 () Bool)

(assert (=> b!490462 (=> (not res!293548) (not e!288293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31737 (_ BitVec 32)) Bool)

(assert (=> b!490462 (= res!293548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490463 () Bool)

(assert (=> b!490463 (= e!288293 (not e!288292))))

(declare-fun res!293549 () Bool)

(assert (=> b!490463 (=> res!293549 e!288292)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31737 (_ BitVec 32)) SeekEntryResult!3727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490463 (= res!293549 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15253 a!3235) j!176) mask!3524) (select (arr!15253 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221599 mask!3524) lt!221599 lt!221600 mask!3524))))))

(assert (=> b!490463 (= lt!221599 (select (store (arr!15253 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490463 (= lt!221600 (array!31738 (store (arr!15253 a!3235) i!1204 k0!2280) (size!15617 a!3235)))))

(assert (=> b!490463 (= lt!221598 (Found!3727 j!176))))

(assert (=> b!490463 (= lt!221598 (seekEntryOrOpen!0 (select (arr!15253 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490463 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221596 () Unit!14392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14392)

(assert (=> b!490463 (= lt!221596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44718 res!293545) b!490461))

(assert (= (and b!490461 res!293541) b!490460))

(assert (= (and b!490460 res!293546) b!490455))

(assert (= (and b!490455 res!293547) b!490456))

(assert (= (and b!490456 res!293544) b!490458))

(assert (= (and b!490458 res!293542) b!490462))

(assert (= (and b!490462 res!293548) b!490459))

(assert (= (and b!490459 res!293543) b!490463))

(assert (= (and b!490463 (not res!293549)) b!490457))

(declare-fun m!470699 () Bool)

(assert (=> b!490456 m!470699))

(declare-fun m!470701 () Bool)

(assert (=> b!490457 m!470701))

(declare-fun m!470703 () Bool)

(assert (=> b!490457 m!470703))

(declare-fun m!470705 () Bool)

(assert (=> b!490455 m!470705))

(declare-fun m!470707 () Bool)

(assert (=> b!490462 m!470707))

(declare-fun m!470709 () Bool)

(assert (=> b!490459 m!470709))

(declare-fun m!470711 () Bool)

(assert (=> b!490458 m!470711))

(declare-fun m!470713 () Bool)

(assert (=> b!490460 m!470713))

(assert (=> b!490460 m!470713))

(declare-fun m!470715 () Bool)

(assert (=> b!490460 m!470715))

(declare-fun m!470717 () Bool)

(assert (=> b!490463 m!470717))

(declare-fun m!470719 () Bool)

(assert (=> b!490463 m!470719))

(declare-fun m!470721 () Bool)

(assert (=> b!490463 m!470721))

(declare-fun m!470723 () Bool)

(assert (=> b!490463 m!470723))

(declare-fun m!470725 () Bool)

(assert (=> b!490463 m!470725))

(declare-fun m!470727 () Bool)

(assert (=> b!490463 m!470727))

(assert (=> b!490463 m!470713))

(declare-fun m!470729 () Bool)

(assert (=> b!490463 m!470729))

(assert (=> b!490463 m!470713))

(assert (=> b!490463 m!470727))

(assert (=> b!490463 m!470713))

(declare-fun m!470731 () Bool)

(assert (=> b!490463 m!470731))

(assert (=> b!490463 m!470719))

(assert (=> b!490463 m!470713))

(declare-fun m!470733 () Bool)

(assert (=> b!490463 m!470733))

(declare-fun m!470735 () Bool)

(assert (=> start!44718 m!470735))

(declare-fun m!470737 () Bool)

(assert (=> start!44718 m!470737))

(check-sat (not b!490459) (not b!490463) (not b!490455) (not b!490457) (not start!44718) (not b!490458) (not b!490460) (not b!490462) (not b!490456))
(check-sat)
