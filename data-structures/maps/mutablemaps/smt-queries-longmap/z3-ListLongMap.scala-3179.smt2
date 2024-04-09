; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44712 () Bool)

(assert start!44712)

(declare-fun b!490374 () Bool)

(declare-fun res!293468 () Bool)

(declare-fun e!288256 () Bool)

(assert (=> b!490374 (=> (not res!293468) (not e!288256))))

(declare-datatypes ((array!31731 0))(
  ( (array!31732 (arr!15250 (Array (_ BitVec 32) (_ BitVec 64))) (size!15614 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31731)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31731 (_ BitVec 32)) Bool)

(assert (=> b!490374 (= res!293468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!293467 () Bool)

(declare-fun e!288258 () Bool)

(assert (=> start!44712 (=> (not res!293467) (not e!288258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44712 (= res!293467 (validMask!0 mask!3524))))

(assert (=> start!44712 e!288258))

(assert (=> start!44712 true))

(declare-fun array_inv!11024 (array!31731) Bool)

(assert (=> start!44712 (array_inv!11024 a!3235)))

(declare-fun b!490375 () Bool)

(declare-fun res!293466 () Bool)

(assert (=> b!490375 (=> (not res!293466) (not e!288256))))

(declare-datatypes ((List!9461 0))(
  ( (Nil!9458) (Cons!9457 (h!10319 (_ BitVec 64)) (t!15697 List!9461)) )
))
(declare-fun arrayNoDuplicates!0 (array!31731 (_ BitVec 32) List!9461) Bool)

(assert (=> b!490375 (= res!293466 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9458))))

(declare-fun b!490376 () Bool)

(declare-fun e!288257 () Bool)

(assert (=> b!490376 (= e!288256 (not e!288257))))

(declare-fun res!293463 () Bool)

(assert (=> b!490376 (=> res!293463 e!288257)))

(declare-fun lt!221545 () array!31731)

(declare-fun lt!221543 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3724 0))(
  ( (MissingZero!3724 (index!17075 (_ BitVec 32))) (Found!3724 (index!17076 (_ BitVec 32))) (Intermediate!3724 (undefined!4536 Bool) (index!17077 (_ BitVec 32)) (x!46201 (_ BitVec 32))) (Undefined!3724) (MissingVacant!3724 (index!17078 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31731 (_ BitVec 32)) SeekEntryResult!3724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490376 (= res!293463 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15250 a!3235) j!176) mask!3524) (select (arr!15250 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221543 mask!3524) lt!221543 lt!221545 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!490376 (= lt!221543 (select (store (arr!15250 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490376 (= lt!221545 (array!31732 (store (arr!15250 a!3235) i!1204 k0!2280) (size!15614 a!3235)))))

(declare-fun lt!221542 () SeekEntryResult!3724)

(assert (=> b!490376 (= lt!221542 (Found!3724 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31731 (_ BitVec 32)) SeekEntryResult!3724)

(assert (=> b!490376 (= lt!221542 (seekEntryOrOpen!0 (select (arr!15250 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490376 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14386 0))(
  ( (Unit!14387) )
))
(declare-fun lt!221544 () Unit!14386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14386)

(assert (=> b!490376 (= lt!221544 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490377 () Bool)

(declare-fun res!293460 () Bool)

(assert (=> b!490377 (=> (not res!293460) (not e!288258))))

(declare-fun arrayContainsKey!0 (array!31731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490377 (= res!293460 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490378 () Bool)

(assert (=> b!490378 (= e!288258 e!288256)))

(declare-fun res!293465 () Bool)

(assert (=> b!490378 (=> (not res!293465) (not e!288256))))

(declare-fun lt!221546 () SeekEntryResult!3724)

(assert (=> b!490378 (= res!293465 (or (= lt!221546 (MissingZero!3724 i!1204)) (= lt!221546 (MissingVacant!3724 i!1204))))))

(assert (=> b!490378 (= lt!221546 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490379 () Bool)

(declare-fun res!293462 () Bool)

(assert (=> b!490379 (=> (not res!293462) (not e!288258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490379 (= res!293462 (validKeyInArray!0 (select (arr!15250 a!3235) j!176)))))

(declare-fun b!490380 () Bool)

(declare-fun res!293461 () Bool)

(assert (=> b!490380 (=> (not res!293461) (not e!288258))))

(assert (=> b!490380 (= res!293461 (and (= (size!15614 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15614 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15614 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490381 () Bool)

(assert (=> b!490381 (= e!288257 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!490381 (= lt!221542 (seekEntryOrOpen!0 lt!221543 lt!221545 mask!3524))))

(declare-fun lt!221541 () Unit!14386)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14386)

(assert (=> b!490381 (= lt!221541 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490382 () Bool)

(declare-fun res!293464 () Bool)

(assert (=> b!490382 (=> (not res!293464) (not e!288258))))

(assert (=> b!490382 (= res!293464 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44712 res!293467) b!490380))

(assert (= (and b!490380 res!293461) b!490379))

(assert (= (and b!490379 res!293462) b!490382))

(assert (= (and b!490382 res!293464) b!490377))

(assert (= (and b!490377 res!293460) b!490378))

(assert (= (and b!490378 res!293465) b!490374))

(assert (= (and b!490374 res!293468) b!490375))

(assert (= (and b!490375 res!293466) b!490376))

(assert (= (and b!490376 (not res!293463)) b!490381))

(declare-fun m!470579 () Bool)

(assert (=> b!490378 m!470579))

(declare-fun m!470581 () Bool)

(assert (=> b!490379 m!470581))

(assert (=> b!490379 m!470581))

(declare-fun m!470583 () Bool)

(assert (=> b!490379 m!470583))

(declare-fun m!470585 () Bool)

(assert (=> b!490376 m!470585))

(declare-fun m!470587 () Bool)

(assert (=> b!490376 m!470587))

(declare-fun m!470589 () Bool)

(assert (=> b!490376 m!470589))

(assert (=> b!490376 m!470585))

(declare-fun m!470591 () Bool)

(assert (=> b!490376 m!470591))

(declare-fun m!470593 () Bool)

(assert (=> b!490376 m!470593))

(declare-fun m!470595 () Bool)

(assert (=> b!490376 m!470595))

(assert (=> b!490376 m!470581))

(declare-fun m!470597 () Bool)

(assert (=> b!490376 m!470597))

(assert (=> b!490376 m!470581))

(assert (=> b!490376 m!470595))

(assert (=> b!490376 m!470581))

(declare-fun m!470599 () Bool)

(assert (=> b!490376 m!470599))

(assert (=> b!490376 m!470581))

(declare-fun m!470601 () Bool)

(assert (=> b!490376 m!470601))

(declare-fun m!470603 () Bool)

(assert (=> start!44712 m!470603))

(declare-fun m!470605 () Bool)

(assert (=> start!44712 m!470605))

(declare-fun m!470607 () Bool)

(assert (=> b!490382 m!470607))

(declare-fun m!470609 () Bool)

(assert (=> b!490377 m!470609))

(declare-fun m!470611 () Bool)

(assert (=> b!490375 m!470611))

(declare-fun m!470613 () Bool)

(assert (=> b!490374 m!470613))

(declare-fun m!470615 () Bool)

(assert (=> b!490381 m!470615))

(declare-fun m!470617 () Bool)

(assert (=> b!490381 m!470617))

(check-sat (not b!490375) (not b!490376) (not b!490377) (not b!490382) (not b!490378) (not b!490374) (not b!490379) (not start!44712) (not b!490381))
(check-sat)
