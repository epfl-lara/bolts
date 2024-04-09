; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45022 () Bool)

(assert start!45022)

(declare-fun b!493632 () Bool)

(declare-fun e!289834 () Bool)

(declare-fun e!289831 () Bool)

(assert (=> b!493632 (= e!289834 e!289831)))

(declare-fun res!296353 () Bool)

(assert (=> b!493632 (=> (not res!296353) (not e!289831))))

(declare-datatypes ((SeekEntryResult!3819 0))(
  ( (MissingZero!3819 (index!17455 (_ BitVec 32))) (Found!3819 (index!17456 (_ BitVec 32))) (Intermediate!3819 (undefined!4631 Bool) (index!17457 (_ BitVec 32)) (x!46564 (_ BitVec 32))) (Undefined!3819) (MissingVacant!3819 (index!17458 (_ BitVec 32))) )
))
(declare-fun lt!223367 () SeekEntryResult!3819)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493632 (= res!296353 (or (= lt!223367 (MissingZero!3819 i!1204)) (= lt!223367 (MissingVacant!3819 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31927 0))(
  ( (array!31928 (arr!15345 (Array (_ BitVec 32) (_ BitVec 64))) (size!15709 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31927)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31927 (_ BitVec 32)) SeekEntryResult!3819)

(assert (=> b!493632 (= lt!223367 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493633 () Bool)

(declare-fun res!296358 () Bool)

(assert (=> b!493633 (=> (not res!296358) (not e!289834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493633 (= res!296358 (validKeyInArray!0 k!2280))))

(declare-fun b!493634 () Bool)

(declare-fun e!289833 () Bool)

(assert (=> b!493634 (= e!289831 (not e!289833))))

(declare-fun res!296357 () Bool)

(assert (=> b!493634 (=> res!296357 e!289833)))

(declare-fun lt!223370 () (_ BitVec 32))

(declare-fun lt!223366 () SeekEntryResult!3819)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31927 (_ BitVec 32)) SeekEntryResult!3819)

(assert (=> b!493634 (= res!296357 (= lt!223366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223370 (select (store (arr!15345 a!3235) i!1204 k!2280) j!176) (array!31928 (store (arr!15345 a!3235) i!1204 k!2280) (size!15709 a!3235)) mask!3524)))))

(declare-fun lt!223365 () (_ BitVec 32))

(assert (=> b!493634 (= lt!223366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223365 (select (arr!15345 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493634 (= lt!223370 (toIndex!0 (select (store (arr!15345 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493634 (= lt!223365 (toIndex!0 (select (arr!15345 a!3235) j!176) mask!3524))))

(declare-fun lt!223368 () SeekEntryResult!3819)

(assert (=> b!493634 (= lt!223368 (Found!3819 j!176))))

(assert (=> b!493634 (= lt!223368 (seekEntryOrOpen!0 (select (arr!15345 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31927 (_ BitVec 32)) Bool)

(assert (=> b!493634 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14576 0))(
  ( (Unit!14577) )
))
(declare-fun lt!223369 () Unit!14576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14576)

(assert (=> b!493634 (= lt!223369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493635 () Bool)

(declare-fun res!296351 () Bool)

(assert (=> b!493635 (=> res!296351 e!289833)))

(assert (=> b!493635 (= res!296351 (or (not (is-Intermediate!3819 lt!223366)) (not (undefined!4631 lt!223366))))))

(declare-fun b!493636 () Bool)

(declare-fun res!296360 () Bool)

(assert (=> b!493636 (=> (not res!296360) (not e!289831))))

(declare-datatypes ((List!9556 0))(
  ( (Nil!9553) (Cons!9552 (h!10420 (_ BitVec 64)) (t!15792 List!9556)) )
))
(declare-fun arrayNoDuplicates!0 (array!31927 (_ BitVec 32) List!9556) Bool)

(assert (=> b!493636 (= res!296360 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9553))))

(declare-fun b!493631 () Bool)

(declare-fun res!296359 () Bool)

(assert (=> b!493631 (=> (not res!296359) (not e!289834))))

(assert (=> b!493631 (= res!296359 (validKeyInArray!0 (select (arr!15345 a!3235) j!176)))))

(declare-fun res!296352 () Bool)

(assert (=> start!45022 (=> (not res!296352) (not e!289834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45022 (= res!296352 (validMask!0 mask!3524))))

(assert (=> start!45022 e!289834))

(assert (=> start!45022 true))

(declare-fun array_inv!11119 (array!31927) Bool)

(assert (=> start!45022 (array_inv!11119 a!3235)))

(declare-fun b!493637 () Bool)

(declare-fun res!296354 () Bool)

(assert (=> b!493637 (=> (not res!296354) (not e!289834))))

(declare-fun arrayContainsKey!0 (array!31927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493637 (= res!296354 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493638 () Bool)

(assert (=> b!493638 (= e!289833 true)))

(assert (=> b!493638 (= lt!223368 Undefined!3819)))

(declare-fun b!493639 () Bool)

(declare-fun res!296355 () Bool)

(assert (=> b!493639 (=> (not res!296355) (not e!289831))))

(assert (=> b!493639 (= res!296355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493640 () Bool)

(declare-fun res!296356 () Bool)

(assert (=> b!493640 (=> (not res!296356) (not e!289834))))

(assert (=> b!493640 (= res!296356 (and (= (size!15709 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15709 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15709 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45022 res!296352) b!493640))

(assert (= (and b!493640 res!296356) b!493631))

(assert (= (and b!493631 res!296359) b!493633))

(assert (= (and b!493633 res!296358) b!493637))

(assert (= (and b!493637 res!296354) b!493632))

(assert (= (and b!493632 res!296353) b!493639))

(assert (= (and b!493639 res!296355) b!493636))

(assert (= (and b!493636 res!296360) b!493634))

(assert (= (and b!493634 (not res!296357)) b!493635))

(assert (= (and b!493635 (not res!296351)) b!493638))

(declare-fun m!474589 () Bool)

(assert (=> b!493634 m!474589))

(declare-fun m!474591 () Bool)

(assert (=> b!493634 m!474591))

(declare-fun m!474593 () Bool)

(assert (=> b!493634 m!474593))

(declare-fun m!474595 () Bool)

(assert (=> b!493634 m!474595))

(declare-fun m!474597 () Bool)

(assert (=> b!493634 m!474597))

(assert (=> b!493634 m!474589))

(declare-fun m!474599 () Bool)

(assert (=> b!493634 m!474599))

(assert (=> b!493634 m!474589))

(declare-fun m!474601 () Bool)

(assert (=> b!493634 m!474601))

(assert (=> b!493634 m!474589))

(declare-fun m!474603 () Bool)

(assert (=> b!493634 m!474603))

(assert (=> b!493634 m!474597))

(declare-fun m!474605 () Bool)

(assert (=> b!493634 m!474605))

(assert (=> b!493634 m!474597))

(declare-fun m!474607 () Bool)

(assert (=> b!493634 m!474607))

(declare-fun m!474609 () Bool)

(assert (=> b!493632 m!474609))

(declare-fun m!474611 () Bool)

(assert (=> start!45022 m!474611))

(declare-fun m!474613 () Bool)

(assert (=> start!45022 m!474613))

(declare-fun m!474615 () Bool)

(assert (=> b!493637 m!474615))

(declare-fun m!474617 () Bool)

(assert (=> b!493633 m!474617))

(declare-fun m!474619 () Bool)

(assert (=> b!493639 m!474619))

(declare-fun m!474621 () Bool)

(assert (=> b!493636 m!474621))

(assert (=> b!493631 m!474589))

(assert (=> b!493631 m!474589))

(declare-fun m!474623 () Bool)

(assert (=> b!493631 m!474623))

(push 1)

