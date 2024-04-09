; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48136 () Bool)

(assert start!48136)

(declare-fun b!529843 () Bool)

(declare-fun res!325702 () Bool)

(declare-fun e!308737 () Bool)

(assert (=> b!529843 (=> (not res!325702) (not e!308737))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33532 0))(
  ( (array!33533 (arr!16110 (Array (_ BitVec 32) (_ BitVec 64))) (size!16474 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33532)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529843 (= res!325702 (and (= (size!16474 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16474 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16474 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529844 () Bool)

(declare-fun res!325704 () Bool)

(declare-fun e!308739 () Bool)

(assert (=> b!529844 (=> (not res!325704) (not e!308739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33532 (_ BitVec 32)) Bool)

(assert (=> b!529844 (= res!325704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529845 () Bool)

(assert (=> b!529845 (= e!308737 e!308739)))

(declare-fun res!325701 () Bool)

(assert (=> b!529845 (=> (not res!325701) (not e!308739))))

(declare-datatypes ((SeekEntryResult!4584 0))(
  ( (MissingZero!4584 (index!20560 (_ BitVec 32))) (Found!4584 (index!20561 (_ BitVec 32))) (Intermediate!4584 (undefined!5396 Bool) (index!20562 (_ BitVec 32)) (x!49561 (_ BitVec 32))) (Undefined!4584) (MissingVacant!4584 (index!20563 (_ BitVec 32))) )
))
(declare-fun lt!244417 () SeekEntryResult!4584)

(assert (=> b!529845 (= res!325701 (or (= lt!244417 (MissingZero!4584 i!1204)) (= lt!244417 (MissingVacant!4584 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33532 (_ BitVec 32)) SeekEntryResult!4584)

(assert (=> b!529845 (= lt!244417 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529846 () Bool)

(declare-fun e!308735 () Bool)

(assert (=> b!529846 (= e!308735 (= (seekEntryOrOpen!0 (select (arr!16110 a!3235) j!176) a!3235 mask!3524) (Found!4584 j!176)))))

(declare-fun b!529847 () Bool)

(declare-fun e!308740 () Bool)

(assert (=> b!529847 (= e!308739 (not e!308740))))

(declare-fun res!325708 () Bool)

(assert (=> b!529847 (=> res!325708 e!308740)))

(declare-fun lt!244418 () array!33532)

(declare-fun lt!244419 () (_ BitVec 32))

(declare-fun lt!244420 () (_ BitVec 64))

(declare-fun lt!244414 () SeekEntryResult!4584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33532 (_ BitVec 32)) SeekEntryResult!4584)

(assert (=> b!529847 (= res!325708 (= lt!244414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244419 lt!244420 lt!244418 mask!3524)))))

(declare-fun lt!244415 () (_ BitVec 32))

(assert (=> b!529847 (= lt!244414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244415 (select (arr!16110 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529847 (= lt!244419 (toIndex!0 lt!244420 mask!3524))))

(assert (=> b!529847 (= lt!244420 (select (store (arr!16110 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529847 (= lt!244415 (toIndex!0 (select (arr!16110 a!3235) j!176) mask!3524))))

(assert (=> b!529847 (= lt!244418 (array!33533 (store (arr!16110 a!3235) i!1204 k!2280) (size!16474 a!3235)))))

(assert (=> b!529847 e!308735))

(declare-fun res!325709 () Bool)

(assert (=> b!529847 (=> (not res!325709) (not e!308735))))

(assert (=> b!529847 (= res!325709 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16772 0))(
  ( (Unit!16773) )
))
(declare-fun lt!244413 () Unit!16772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16772)

(assert (=> b!529847 (= lt!244413 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!325705 () Bool)

(assert (=> start!48136 (=> (not res!325705) (not e!308737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48136 (= res!325705 (validMask!0 mask!3524))))

(assert (=> start!48136 e!308737))

(assert (=> start!48136 true))

(declare-fun array_inv!11884 (array!33532) Bool)

(assert (=> start!48136 (array_inv!11884 a!3235)))

(declare-fun b!529848 () Bool)

(declare-fun res!325706 () Bool)

(assert (=> b!529848 (=> (not res!325706) (not e!308739))))

(declare-datatypes ((List!10321 0))(
  ( (Nil!10318) (Cons!10317 (h!11257 (_ BitVec 64)) (t!16557 List!10321)) )
))
(declare-fun arrayNoDuplicates!0 (array!33532 (_ BitVec 32) List!10321) Bool)

(assert (=> b!529848 (= res!325706 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10318))))

(declare-fun b!529849 () Bool)

(declare-fun res!325707 () Bool)

(assert (=> b!529849 (=> (not res!325707) (not e!308737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529849 (= res!325707 (validKeyInArray!0 (select (arr!16110 a!3235) j!176)))))

(declare-fun b!529850 () Bool)

(declare-fun res!325700 () Bool)

(assert (=> b!529850 (=> (not res!325700) (not e!308737))))

(assert (=> b!529850 (= res!325700 (validKeyInArray!0 k!2280))))

(declare-fun b!529851 () Bool)

(declare-fun e!308736 () Bool)

(assert (=> b!529851 (= e!308740 e!308736)))

(declare-fun res!325699 () Bool)

(assert (=> b!529851 (=> res!325699 e!308736)))

(declare-fun lt!244421 () Bool)

(assert (=> b!529851 (= res!325699 (or (and (not lt!244421) (undefined!5396 lt!244414)) (and (not lt!244421) (not (undefined!5396 lt!244414)))))))

(assert (=> b!529851 (= lt!244421 (not (is-Intermediate!4584 lt!244414)))))

(declare-fun b!529852 () Bool)

(declare-fun res!325703 () Bool)

(assert (=> b!529852 (=> (not res!325703) (not e!308737))))

(declare-fun arrayContainsKey!0 (array!33532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529852 (= res!325703 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529853 () Bool)

(assert (=> b!529853 (= e!308736 true)))

(declare-fun lt!244416 () SeekEntryResult!4584)

(assert (=> b!529853 (= lt!244416 (seekEntryOrOpen!0 lt!244420 lt!244418 mask!3524))))

(assert (=> b!529853 false))

(assert (= (and start!48136 res!325705) b!529843))

(assert (= (and b!529843 res!325702) b!529849))

(assert (= (and b!529849 res!325707) b!529850))

(assert (= (and b!529850 res!325700) b!529852))

(assert (= (and b!529852 res!325703) b!529845))

(assert (= (and b!529845 res!325701) b!529844))

(assert (= (and b!529844 res!325704) b!529848))

(assert (= (and b!529848 res!325706) b!529847))

(assert (= (and b!529847 res!325709) b!529846))

(assert (= (and b!529847 (not res!325708)) b!529851))

(assert (= (and b!529851 (not res!325699)) b!529853))

(declare-fun m!510403 () Bool)

(assert (=> b!529844 m!510403))

(declare-fun m!510405 () Bool)

(assert (=> b!529848 m!510405))

(declare-fun m!510407 () Bool)

(assert (=> b!529852 m!510407))

(declare-fun m!510409 () Bool)

(assert (=> b!529850 m!510409))

(declare-fun m!510411 () Bool)

(assert (=> b!529853 m!510411))

(declare-fun m!510413 () Bool)

(assert (=> b!529847 m!510413))

(declare-fun m!510415 () Bool)

(assert (=> b!529847 m!510415))

(declare-fun m!510417 () Bool)

(assert (=> b!529847 m!510417))

(declare-fun m!510419 () Bool)

(assert (=> b!529847 m!510419))

(declare-fun m!510421 () Bool)

(assert (=> b!529847 m!510421))

(assert (=> b!529847 m!510419))

(declare-fun m!510423 () Bool)

(assert (=> b!529847 m!510423))

(declare-fun m!510425 () Bool)

(assert (=> b!529847 m!510425))

(declare-fun m!510427 () Bool)

(assert (=> b!529847 m!510427))

(declare-fun m!510429 () Bool)

(assert (=> b!529847 m!510429))

(assert (=> b!529847 m!510419))

(declare-fun m!510431 () Bool)

(assert (=> start!48136 m!510431))

(declare-fun m!510433 () Bool)

(assert (=> start!48136 m!510433))

(declare-fun m!510435 () Bool)

(assert (=> b!529845 m!510435))

(assert (=> b!529846 m!510419))

(assert (=> b!529846 m!510419))

(declare-fun m!510437 () Bool)

(assert (=> b!529846 m!510437))

(assert (=> b!529849 m!510419))

(assert (=> b!529849 m!510419))

(declare-fun m!510439 () Bool)

(assert (=> b!529849 m!510439))

(push 1)

