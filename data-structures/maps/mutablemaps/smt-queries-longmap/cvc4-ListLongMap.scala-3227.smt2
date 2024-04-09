; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45182 () Bool)

(assert start!45182)

(declare-fun b!495466 () Bool)

(declare-fun res!298006 () Bool)

(declare-fun e!290661 () Bool)

(assert (=> b!495466 (=> (not res!298006) (not e!290661))))

(declare-datatypes ((array!32030 0))(
  ( (array!32031 (arr!15395 (Array (_ BitVec 32) (_ BitVec 64))) (size!15759 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32030)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495466 (= res!298006 (validKeyInArray!0 (select (arr!15395 a!3235) j!176)))))

(declare-fun b!495467 () Bool)

(declare-fun res!298005 () Bool)

(declare-fun e!290665 () Bool)

(assert (=> b!495467 (=> res!298005 e!290665)))

(declare-datatypes ((SeekEntryResult!3869 0))(
  ( (MissingZero!3869 (index!17655 (_ BitVec 32))) (Found!3869 (index!17656 (_ BitVec 32))) (Intermediate!3869 (undefined!4681 Bool) (index!17657 (_ BitVec 32)) (x!46748 (_ BitVec 32))) (Undefined!3869) (MissingVacant!3869 (index!17658 (_ BitVec 32))) )
))
(declare-fun lt!224352 () SeekEntryResult!3869)

(assert (=> b!495467 (= res!298005 (or (undefined!4681 lt!224352) (not (is-Intermediate!3869 lt!224352))))))

(declare-fun b!495469 () Bool)

(assert (=> b!495469 (= e!290665 true)))

(assert (=> b!495469 (and (bvslt (x!46748 lt!224352) #b01111111111111111111111111111110) (or (= (select (arr!15395 a!3235) (index!17657 lt!224352)) (select (arr!15395 a!3235) j!176)) (= (select (arr!15395 a!3235) (index!17657 lt!224352)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15395 a!3235) (index!17657 lt!224352)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495470 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!290662 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32030 (_ BitVec 32)) SeekEntryResult!3869)

(assert (=> b!495470 (= e!290662 (= (seekEntryOrOpen!0 (select (arr!15395 a!3235) j!176) a!3235 mask!3524) (Found!3869 j!176)))))

(declare-fun b!495471 () Bool)

(declare-fun e!290664 () Bool)

(assert (=> b!495471 (= e!290664 (not e!290665))))

(declare-fun res!298011 () Bool)

(assert (=> b!495471 (=> res!298011 e!290665)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224351 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32030 (_ BitVec 32)) SeekEntryResult!3869)

(assert (=> b!495471 (= res!298011 (= lt!224352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224351 (select (store (arr!15395 a!3235) i!1204 k!2280) j!176) (array!32031 (store (arr!15395 a!3235) i!1204 k!2280) (size!15759 a!3235)) mask!3524)))))

(declare-fun lt!224350 () (_ BitVec 32))

(assert (=> b!495471 (= lt!224352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224350 (select (arr!15395 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495471 (= lt!224351 (toIndex!0 (select (store (arr!15395 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495471 (= lt!224350 (toIndex!0 (select (arr!15395 a!3235) j!176) mask!3524))))

(assert (=> b!495471 e!290662))

(declare-fun res!298003 () Bool)

(assert (=> b!495471 (=> (not res!298003) (not e!290662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32030 (_ BitVec 32)) Bool)

(assert (=> b!495471 (= res!298003 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14676 0))(
  ( (Unit!14677) )
))
(declare-fun lt!224353 () Unit!14676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14676)

(assert (=> b!495471 (= lt!224353 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495472 () Bool)

(assert (=> b!495472 (= e!290661 e!290664)))

(declare-fun res!298008 () Bool)

(assert (=> b!495472 (=> (not res!298008) (not e!290664))))

(declare-fun lt!224354 () SeekEntryResult!3869)

(assert (=> b!495472 (= res!298008 (or (= lt!224354 (MissingZero!3869 i!1204)) (= lt!224354 (MissingVacant!3869 i!1204))))))

(assert (=> b!495472 (= lt!224354 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495473 () Bool)

(declare-fun res!298012 () Bool)

(assert (=> b!495473 (=> (not res!298012) (not e!290661))))

(assert (=> b!495473 (= res!298012 (and (= (size!15759 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15759 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15759 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495474 () Bool)

(declare-fun res!298004 () Bool)

(assert (=> b!495474 (=> (not res!298004) (not e!290661))))

(assert (=> b!495474 (= res!298004 (validKeyInArray!0 k!2280))))

(declare-fun b!495475 () Bool)

(declare-fun res!298007 () Bool)

(assert (=> b!495475 (=> (not res!298007) (not e!290661))))

(declare-fun arrayContainsKey!0 (array!32030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495475 (= res!298007 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495476 () Bool)

(declare-fun res!298009 () Bool)

(assert (=> b!495476 (=> (not res!298009) (not e!290664))))

(declare-datatypes ((List!9606 0))(
  ( (Nil!9603) (Cons!9602 (h!10473 (_ BitVec 64)) (t!15842 List!9606)) )
))
(declare-fun arrayNoDuplicates!0 (array!32030 (_ BitVec 32) List!9606) Bool)

(assert (=> b!495476 (= res!298009 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9603))))

(declare-fun b!495468 () Bool)

(declare-fun res!298010 () Bool)

(assert (=> b!495468 (=> (not res!298010) (not e!290664))))

(assert (=> b!495468 (= res!298010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!298013 () Bool)

(assert (=> start!45182 (=> (not res!298013) (not e!290661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45182 (= res!298013 (validMask!0 mask!3524))))

(assert (=> start!45182 e!290661))

(assert (=> start!45182 true))

(declare-fun array_inv!11169 (array!32030) Bool)

(assert (=> start!45182 (array_inv!11169 a!3235)))

(assert (= (and start!45182 res!298013) b!495473))

(assert (= (and b!495473 res!298012) b!495466))

(assert (= (and b!495466 res!298006) b!495474))

(assert (= (and b!495474 res!298004) b!495475))

(assert (= (and b!495475 res!298007) b!495472))

(assert (= (and b!495472 res!298008) b!495468))

(assert (= (and b!495468 res!298010) b!495476))

(assert (= (and b!495476 res!298009) b!495471))

(assert (= (and b!495471 res!298003) b!495470))

(assert (= (and b!495471 (not res!298011)) b!495467))

(assert (= (and b!495467 (not res!298005)) b!495469))

(declare-fun m!476621 () Bool)

(assert (=> b!495470 m!476621))

(assert (=> b!495470 m!476621))

(declare-fun m!476623 () Bool)

(assert (=> b!495470 m!476623))

(assert (=> b!495466 m!476621))

(assert (=> b!495466 m!476621))

(declare-fun m!476625 () Bool)

(assert (=> b!495466 m!476625))

(declare-fun m!476627 () Bool)

(assert (=> b!495468 m!476627))

(declare-fun m!476629 () Bool)

(assert (=> b!495472 m!476629))

(declare-fun m!476631 () Bool)

(assert (=> start!45182 m!476631))

(declare-fun m!476633 () Bool)

(assert (=> start!45182 m!476633))

(declare-fun m!476635 () Bool)

(assert (=> b!495469 m!476635))

(assert (=> b!495469 m!476621))

(declare-fun m!476637 () Bool)

(assert (=> b!495476 m!476637))

(declare-fun m!476639 () Bool)

(assert (=> b!495474 m!476639))

(declare-fun m!476641 () Bool)

(assert (=> b!495475 m!476641))

(declare-fun m!476643 () Bool)

(assert (=> b!495471 m!476643))

(declare-fun m!476645 () Bool)

(assert (=> b!495471 m!476645))

(declare-fun m!476647 () Bool)

(assert (=> b!495471 m!476647))

(assert (=> b!495471 m!476621))

(declare-fun m!476649 () Bool)

(assert (=> b!495471 m!476649))

(assert (=> b!495471 m!476621))

(declare-fun m!476651 () Bool)

(assert (=> b!495471 m!476651))

(assert (=> b!495471 m!476647))

(declare-fun m!476653 () Bool)

(assert (=> b!495471 m!476653))

(assert (=> b!495471 m!476621))

(declare-fun m!476655 () Bool)

(assert (=> b!495471 m!476655))

(assert (=> b!495471 m!476647))

(declare-fun m!476657 () Bool)

(assert (=> b!495471 m!476657))

(push 1)

