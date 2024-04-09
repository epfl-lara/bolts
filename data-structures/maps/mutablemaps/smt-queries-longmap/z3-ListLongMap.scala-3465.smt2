; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48132 () Bool)

(assert start!48132)

(declare-fun res!325636 () Bool)

(declare-fun e!308700 () Bool)

(assert (=> start!48132 (=> (not res!325636) (not e!308700))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48132 (= res!325636 (validMask!0 mask!3524))))

(assert (=> start!48132 e!308700))

(assert (=> start!48132 true))

(declare-datatypes ((array!33528 0))(
  ( (array!33529 (arr!16108 (Array (_ BitVec 32) (_ BitVec 64))) (size!16472 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33528)

(declare-fun array_inv!11882 (array!33528) Bool)

(assert (=> start!48132 (array_inv!11882 a!3235)))

(declare-fun b!529777 () Bool)

(declare-fun res!325643 () Bool)

(assert (=> b!529777 (=> (not res!325643) (not e!308700))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529777 (= res!325643 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529778 () Bool)

(declare-fun e!308699 () Bool)

(declare-fun e!308704 () Bool)

(assert (=> b!529778 (= e!308699 e!308704)))

(declare-fun res!325634 () Bool)

(assert (=> b!529778 (=> res!325634 e!308704)))

(declare-fun lt!244359 () Bool)

(declare-datatypes ((SeekEntryResult!4582 0))(
  ( (MissingZero!4582 (index!20552 (_ BitVec 32))) (Found!4582 (index!20553 (_ BitVec 32))) (Intermediate!4582 (undefined!5394 Bool) (index!20554 (_ BitVec 32)) (x!49551 (_ BitVec 32))) (Undefined!4582) (MissingVacant!4582 (index!20555 (_ BitVec 32))) )
))
(declare-fun lt!244362 () SeekEntryResult!4582)

(assert (=> b!529778 (= res!325634 (or (and (not lt!244359) (undefined!5394 lt!244362)) (and (not lt!244359) (not (undefined!5394 lt!244362)))))))

(get-info :version)

(assert (=> b!529778 (= lt!244359 (not ((_ is Intermediate!4582) lt!244362)))))

(declare-fun b!529779 () Bool)

(assert (=> b!529779 (= e!308704 true)))

(declare-fun lt!244367 () array!33528)

(declare-fun lt!244363 () SeekEntryResult!4582)

(declare-fun lt!244365 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33528 (_ BitVec 32)) SeekEntryResult!4582)

(assert (=> b!529779 (= lt!244363 (seekEntryOrOpen!0 lt!244365 lt!244367 mask!3524))))

(assert (=> b!529779 false))

(declare-fun b!529780 () Bool)

(declare-fun res!325642 () Bool)

(assert (=> b!529780 (=> (not res!325642) (not e!308700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529780 (= res!325642 (validKeyInArray!0 k0!2280))))

(declare-fun e!308703 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!529781 () Bool)

(assert (=> b!529781 (= e!308703 (= (seekEntryOrOpen!0 (select (arr!16108 a!3235) j!176) a!3235 mask!3524) (Found!4582 j!176)))))

(declare-fun b!529782 () Bool)

(declare-fun res!325640 () Bool)

(assert (=> b!529782 (=> (not res!325640) (not e!308700))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529782 (= res!325640 (and (= (size!16472 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16472 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16472 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529783 () Bool)

(declare-fun res!325638 () Bool)

(declare-fun e!308702 () Bool)

(assert (=> b!529783 (=> (not res!325638) (not e!308702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33528 (_ BitVec 32)) Bool)

(assert (=> b!529783 (= res!325638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529784 () Bool)

(declare-fun res!325635 () Bool)

(assert (=> b!529784 (=> (not res!325635) (not e!308700))))

(assert (=> b!529784 (= res!325635 (validKeyInArray!0 (select (arr!16108 a!3235) j!176)))))

(declare-fun b!529785 () Bool)

(assert (=> b!529785 (= e!308700 e!308702)))

(declare-fun res!325633 () Bool)

(assert (=> b!529785 (=> (not res!325633) (not e!308702))))

(declare-fun lt!244364 () SeekEntryResult!4582)

(assert (=> b!529785 (= res!325633 (or (= lt!244364 (MissingZero!4582 i!1204)) (= lt!244364 (MissingVacant!4582 i!1204))))))

(assert (=> b!529785 (= lt!244364 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529786 () Bool)

(assert (=> b!529786 (= e!308702 (not e!308699))))

(declare-fun res!325637 () Bool)

(assert (=> b!529786 (=> res!325637 e!308699)))

(declare-fun lt!244366 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33528 (_ BitVec 32)) SeekEntryResult!4582)

(assert (=> b!529786 (= res!325637 (= lt!244362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244366 lt!244365 lt!244367 mask!3524)))))

(declare-fun lt!244361 () (_ BitVec 32))

(assert (=> b!529786 (= lt!244362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244361 (select (arr!16108 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529786 (= lt!244366 (toIndex!0 lt!244365 mask!3524))))

(assert (=> b!529786 (= lt!244365 (select (store (arr!16108 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!529786 (= lt!244361 (toIndex!0 (select (arr!16108 a!3235) j!176) mask!3524))))

(assert (=> b!529786 (= lt!244367 (array!33529 (store (arr!16108 a!3235) i!1204 k0!2280) (size!16472 a!3235)))))

(assert (=> b!529786 e!308703))

(declare-fun res!325641 () Bool)

(assert (=> b!529786 (=> (not res!325641) (not e!308703))))

(assert (=> b!529786 (= res!325641 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16768 0))(
  ( (Unit!16769) )
))
(declare-fun lt!244360 () Unit!16768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16768)

(assert (=> b!529786 (= lt!244360 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529787 () Bool)

(declare-fun res!325639 () Bool)

(assert (=> b!529787 (=> (not res!325639) (not e!308702))))

(declare-datatypes ((List!10319 0))(
  ( (Nil!10316) (Cons!10315 (h!11255 (_ BitVec 64)) (t!16555 List!10319)) )
))
(declare-fun arrayNoDuplicates!0 (array!33528 (_ BitVec 32) List!10319) Bool)

(assert (=> b!529787 (= res!325639 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10316))))

(assert (= (and start!48132 res!325636) b!529782))

(assert (= (and b!529782 res!325640) b!529784))

(assert (= (and b!529784 res!325635) b!529780))

(assert (= (and b!529780 res!325642) b!529777))

(assert (= (and b!529777 res!325643) b!529785))

(assert (= (and b!529785 res!325633) b!529783))

(assert (= (and b!529783 res!325638) b!529787))

(assert (= (and b!529787 res!325639) b!529786))

(assert (= (and b!529786 res!325641) b!529781))

(assert (= (and b!529786 (not res!325637)) b!529778))

(assert (= (and b!529778 (not res!325634)) b!529779))

(declare-fun m!510327 () Bool)

(assert (=> b!529777 m!510327))

(declare-fun m!510329 () Bool)

(assert (=> b!529783 m!510329))

(declare-fun m!510331 () Bool)

(assert (=> start!48132 m!510331))

(declare-fun m!510333 () Bool)

(assert (=> start!48132 m!510333))

(declare-fun m!510335 () Bool)

(assert (=> b!529781 m!510335))

(assert (=> b!529781 m!510335))

(declare-fun m!510337 () Bool)

(assert (=> b!529781 m!510337))

(assert (=> b!529784 m!510335))

(assert (=> b!529784 m!510335))

(declare-fun m!510339 () Bool)

(assert (=> b!529784 m!510339))

(declare-fun m!510341 () Bool)

(assert (=> b!529779 m!510341))

(declare-fun m!510343 () Bool)

(assert (=> b!529785 m!510343))

(declare-fun m!510345 () Bool)

(assert (=> b!529786 m!510345))

(declare-fun m!510347 () Bool)

(assert (=> b!529786 m!510347))

(declare-fun m!510349 () Bool)

(assert (=> b!529786 m!510349))

(assert (=> b!529786 m!510335))

(declare-fun m!510351 () Bool)

(assert (=> b!529786 m!510351))

(declare-fun m!510353 () Bool)

(assert (=> b!529786 m!510353))

(declare-fun m!510355 () Bool)

(assert (=> b!529786 m!510355))

(assert (=> b!529786 m!510335))

(declare-fun m!510357 () Bool)

(assert (=> b!529786 m!510357))

(declare-fun m!510359 () Bool)

(assert (=> b!529786 m!510359))

(assert (=> b!529786 m!510335))

(declare-fun m!510361 () Bool)

(assert (=> b!529780 m!510361))

(declare-fun m!510363 () Bool)

(assert (=> b!529787 m!510363))

(check-sat (not b!529783) (not b!529781) (not start!48132) (not b!529784) (not b!529780) (not b!529785) (not b!529779) (not b!529786) (not b!529777) (not b!529787))
(check-sat)
