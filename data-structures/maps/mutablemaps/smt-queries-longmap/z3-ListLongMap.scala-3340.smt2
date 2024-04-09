; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46044 () Bool)

(assert start!46044)

(declare-fun b!509562 () Bool)

(declare-fun res!310565 () Bool)

(declare-fun e!297956 () Bool)

(assert (=> b!509562 (=> (not res!310565) (not e!297956))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32715 0))(
  ( (array!32716 (arr!15733 (Array (_ BitVec 32) (_ BitVec 64))) (size!16097 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32715)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509562 (= res!310565 (and (= (size!16097 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16097 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16097 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509563 () Bool)

(declare-fun res!310561 () Bool)

(assert (=> b!509563 (=> (not res!310561) (not e!297956))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509563 (= res!310561 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509564 () Bool)

(declare-fun e!297957 () Bool)

(assert (=> b!509564 (= e!297956 e!297957)))

(declare-fun res!310562 () Bool)

(assert (=> b!509564 (=> (not res!310562) (not e!297957))))

(declare-datatypes ((SeekEntryResult!4207 0))(
  ( (MissingZero!4207 (index!19016 (_ BitVec 32))) (Found!4207 (index!19017 (_ BitVec 32))) (Intermediate!4207 (undefined!5019 Bool) (index!19018 (_ BitVec 32)) (x!48011 (_ BitVec 32))) (Undefined!4207) (MissingVacant!4207 (index!19019 (_ BitVec 32))) )
))
(declare-fun lt!232893 () SeekEntryResult!4207)

(assert (=> b!509564 (= res!310562 (or (= lt!232893 (MissingZero!4207 i!1204)) (= lt!232893 (MissingVacant!4207 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32715 (_ BitVec 32)) SeekEntryResult!4207)

(assert (=> b!509564 (= lt!232893 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509565 () Bool)

(declare-fun res!310564 () Bool)

(assert (=> b!509565 (=> (not res!310564) (not e!297957))))

(declare-datatypes ((List!9944 0))(
  ( (Nil!9941) (Cons!9940 (h!10817 (_ BitVec 64)) (t!16180 List!9944)) )
))
(declare-fun arrayNoDuplicates!0 (array!32715 (_ BitVec 32) List!9944) Bool)

(assert (=> b!509565 (= res!310564 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9941))))

(declare-fun e!297958 () Bool)

(declare-fun b!509566 () Bool)

(assert (=> b!509566 (= e!297958 (= (seekEntryOrOpen!0 (select (arr!15733 a!3235) j!176) a!3235 mask!3524) (Found!4207 j!176)))))

(declare-fun b!509567 () Bool)

(declare-fun res!310558 () Bool)

(assert (=> b!509567 (=> (not res!310558) (not e!297956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509567 (= res!310558 (validKeyInArray!0 k0!2280))))

(declare-fun b!509568 () Bool)

(assert (=> b!509568 (= e!297957 (not true))))

(declare-fun lt!232892 () SeekEntryResult!4207)

(declare-fun lt!232891 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32715 (_ BitVec 32)) SeekEntryResult!4207)

(assert (=> b!509568 (= lt!232892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232891 (select (store (arr!15733 a!3235) i!1204 k0!2280) j!176) (array!32716 (store (arr!15733 a!3235) i!1204 k0!2280) (size!16097 a!3235)) mask!3524))))

(declare-fun lt!232890 () (_ BitVec 32))

(declare-fun lt!232895 () SeekEntryResult!4207)

(assert (=> b!509568 (= lt!232895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232890 (select (arr!15733 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509568 (= lt!232891 (toIndex!0 (select (store (arr!15733 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509568 (= lt!232890 (toIndex!0 (select (arr!15733 a!3235) j!176) mask!3524))))

(assert (=> b!509568 e!297958))

(declare-fun res!310563 () Bool)

(assert (=> b!509568 (=> (not res!310563) (not e!297958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32715 (_ BitVec 32)) Bool)

(assert (=> b!509568 (= res!310563 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15664 0))(
  ( (Unit!15665) )
))
(declare-fun lt!232894 () Unit!15664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15664)

(assert (=> b!509568 (= lt!232894 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509569 () Bool)

(declare-fun res!310557 () Bool)

(assert (=> b!509569 (=> (not res!310557) (not e!297956))))

(assert (=> b!509569 (= res!310557 (validKeyInArray!0 (select (arr!15733 a!3235) j!176)))))

(declare-fun res!310559 () Bool)

(assert (=> start!46044 (=> (not res!310559) (not e!297956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46044 (= res!310559 (validMask!0 mask!3524))))

(assert (=> start!46044 e!297956))

(assert (=> start!46044 true))

(declare-fun array_inv!11507 (array!32715) Bool)

(assert (=> start!46044 (array_inv!11507 a!3235)))

(declare-fun b!509570 () Bool)

(declare-fun res!310560 () Bool)

(assert (=> b!509570 (=> (not res!310560) (not e!297957))))

(assert (=> b!509570 (= res!310560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46044 res!310559) b!509562))

(assert (= (and b!509562 res!310565) b!509569))

(assert (= (and b!509569 res!310557) b!509567))

(assert (= (and b!509567 res!310558) b!509563))

(assert (= (and b!509563 res!310561) b!509564))

(assert (= (and b!509564 res!310562) b!509570))

(assert (= (and b!509570 res!310560) b!509565))

(assert (= (and b!509565 res!310564) b!509568))

(assert (= (and b!509568 res!310563) b!509566))

(declare-fun m!490591 () Bool)

(assert (=> b!509566 m!490591))

(assert (=> b!509566 m!490591))

(declare-fun m!490593 () Bool)

(assert (=> b!509566 m!490593))

(declare-fun m!490595 () Bool)

(assert (=> b!509570 m!490595))

(declare-fun m!490597 () Bool)

(assert (=> b!509565 m!490597))

(declare-fun m!490599 () Bool)

(assert (=> b!509567 m!490599))

(declare-fun m!490601 () Bool)

(assert (=> b!509563 m!490601))

(assert (=> b!509569 m!490591))

(assert (=> b!509569 m!490591))

(declare-fun m!490603 () Bool)

(assert (=> b!509569 m!490603))

(declare-fun m!490605 () Bool)

(assert (=> start!46044 m!490605))

(declare-fun m!490607 () Bool)

(assert (=> start!46044 m!490607))

(declare-fun m!490609 () Bool)

(assert (=> b!509564 m!490609))

(declare-fun m!490611 () Bool)

(assert (=> b!509568 m!490611))

(declare-fun m!490613 () Bool)

(assert (=> b!509568 m!490613))

(declare-fun m!490615 () Bool)

(assert (=> b!509568 m!490615))

(declare-fun m!490617 () Bool)

(assert (=> b!509568 m!490617))

(assert (=> b!509568 m!490611))

(assert (=> b!509568 m!490591))

(declare-fun m!490619 () Bool)

(assert (=> b!509568 m!490619))

(assert (=> b!509568 m!490591))

(declare-fun m!490621 () Bool)

(assert (=> b!509568 m!490621))

(assert (=> b!509568 m!490591))

(declare-fun m!490623 () Bool)

(assert (=> b!509568 m!490623))

(assert (=> b!509568 m!490611))

(declare-fun m!490625 () Bool)

(assert (=> b!509568 m!490625))

(check-sat (not b!509569) (not start!46044) (not b!509568) (not b!509566) (not b!509564) (not b!509567) (not b!509570) (not b!509565) (not b!509563))
(check-sat)
