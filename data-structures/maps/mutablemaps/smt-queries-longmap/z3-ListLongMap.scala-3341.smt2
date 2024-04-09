; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46050 () Bool)

(assert start!46050)

(declare-fun b!509643 () Bool)

(declare-fun e!297994 () Bool)

(assert (=> b!509643 (= e!297994 (not true))))

(declare-datatypes ((SeekEntryResult!4210 0))(
  ( (MissingZero!4210 (index!19028 (_ BitVec 32))) (Found!4210 (index!19029 (_ BitVec 32))) (Intermediate!4210 (undefined!5022 Bool) (index!19030 (_ BitVec 32)) (x!48022 (_ BitVec 32))) (Undefined!4210) (MissingVacant!4210 (index!19031 (_ BitVec 32))) )
))
(declare-fun lt!232944 () SeekEntryResult!4210)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!232945 () (_ BitVec 32))

(declare-datatypes ((array!32721 0))(
  ( (array!32722 (arr!15736 (Array (_ BitVec 32) (_ BitVec 64))) (size!16100 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32721)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32721 (_ BitVec 32)) SeekEntryResult!4210)

(assert (=> b!509643 (= lt!232944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232945 (select (store (arr!15736 a!3235) i!1204 k0!2280) j!176) (array!32722 (store (arr!15736 a!3235) i!1204 k0!2280) (size!16100 a!3235)) mask!3524))))

(declare-fun lt!232948 () SeekEntryResult!4210)

(declare-fun lt!232947 () (_ BitVec 32))

(assert (=> b!509643 (= lt!232948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232947 (select (arr!15736 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509643 (= lt!232945 (toIndex!0 (select (store (arr!15736 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509643 (= lt!232947 (toIndex!0 (select (arr!15736 a!3235) j!176) mask!3524))))

(declare-fun e!297992 () Bool)

(assert (=> b!509643 e!297992))

(declare-fun res!310643 () Bool)

(assert (=> b!509643 (=> (not res!310643) (not e!297992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32721 (_ BitVec 32)) Bool)

(assert (=> b!509643 (= res!310643 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15670 0))(
  ( (Unit!15671) )
))
(declare-fun lt!232949 () Unit!15670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15670)

(assert (=> b!509643 (= lt!232949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509644 () Bool)

(declare-fun res!310646 () Bool)

(declare-fun e!297991 () Bool)

(assert (=> b!509644 (=> (not res!310646) (not e!297991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509644 (= res!310646 (validKeyInArray!0 (select (arr!15736 a!3235) j!176)))))

(declare-fun b!509645 () Bool)

(assert (=> b!509645 (= e!297991 e!297994)))

(declare-fun res!310644 () Bool)

(assert (=> b!509645 (=> (not res!310644) (not e!297994))))

(declare-fun lt!232946 () SeekEntryResult!4210)

(assert (=> b!509645 (= res!310644 (or (= lt!232946 (MissingZero!4210 i!1204)) (= lt!232946 (MissingVacant!4210 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32721 (_ BitVec 32)) SeekEntryResult!4210)

(assert (=> b!509645 (= lt!232946 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509646 () Bool)

(assert (=> b!509646 (= e!297992 (= (seekEntryOrOpen!0 (select (arr!15736 a!3235) j!176) a!3235 mask!3524) (Found!4210 j!176)))))

(declare-fun b!509647 () Bool)

(declare-fun res!310639 () Bool)

(assert (=> b!509647 (=> (not res!310639) (not e!297994))))

(assert (=> b!509647 (= res!310639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509648 () Bool)

(declare-fun res!310638 () Bool)

(assert (=> b!509648 (=> (not res!310638) (not e!297991))))

(assert (=> b!509648 (= res!310638 (validKeyInArray!0 k0!2280))))

(declare-fun b!509649 () Bool)

(declare-fun res!310641 () Bool)

(assert (=> b!509649 (=> (not res!310641) (not e!297991))))

(declare-fun arrayContainsKey!0 (array!32721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509649 (= res!310641 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!310642 () Bool)

(assert (=> start!46050 (=> (not res!310642) (not e!297991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46050 (= res!310642 (validMask!0 mask!3524))))

(assert (=> start!46050 e!297991))

(assert (=> start!46050 true))

(declare-fun array_inv!11510 (array!32721) Bool)

(assert (=> start!46050 (array_inv!11510 a!3235)))

(declare-fun b!509650 () Bool)

(declare-fun res!310645 () Bool)

(assert (=> b!509650 (=> (not res!310645) (not e!297991))))

(assert (=> b!509650 (= res!310645 (and (= (size!16100 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16100 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16100 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509651 () Bool)

(declare-fun res!310640 () Bool)

(assert (=> b!509651 (=> (not res!310640) (not e!297994))))

(declare-datatypes ((List!9947 0))(
  ( (Nil!9944) (Cons!9943 (h!10820 (_ BitVec 64)) (t!16183 List!9947)) )
))
(declare-fun arrayNoDuplicates!0 (array!32721 (_ BitVec 32) List!9947) Bool)

(assert (=> b!509651 (= res!310640 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9944))))

(assert (= (and start!46050 res!310642) b!509650))

(assert (= (and b!509650 res!310645) b!509644))

(assert (= (and b!509644 res!310646) b!509648))

(assert (= (and b!509648 res!310638) b!509649))

(assert (= (and b!509649 res!310641) b!509645))

(assert (= (and b!509645 res!310644) b!509647))

(assert (= (and b!509647 res!310639) b!509651))

(assert (= (and b!509651 res!310640) b!509643))

(assert (= (and b!509643 res!310643) b!509646))

(declare-fun m!490699 () Bool)

(assert (=> start!46050 m!490699))

(declare-fun m!490701 () Bool)

(assert (=> start!46050 m!490701))

(declare-fun m!490703 () Bool)

(assert (=> b!509648 m!490703))

(declare-fun m!490705 () Bool)

(assert (=> b!509651 m!490705))

(declare-fun m!490707 () Bool)

(assert (=> b!509645 m!490707))

(declare-fun m!490709 () Bool)

(assert (=> b!509644 m!490709))

(assert (=> b!509644 m!490709))

(declare-fun m!490711 () Bool)

(assert (=> b!509644 m!490711))

(declare-fun m!490713 () Bool)

(assert (=> b!509647 m!490713))

(declare-fun m!490715 () Bool)

(assert (=> b!509643 m!490715))

(declare-fun m!490717 () Bool)

(assert (=> b!509643 m!490717))

(declare-fun m!490719 () Bool)

(assert (=> b!509643 m!490719))

(assert (=> b!509643 m!490709))

(declare-fun m!490721 () Bool)

(assert (=> b!509643 m!490721))

(assert (=> b!509643 m!490709))

(declare-fun m!490723 () Bool)

(assert (=> b!509643 m!490723))

(assert (=> b!509643 m!490709))

(declare-fun m!490725 () Bool)

(assert (=> b!509643 m!490725))

(assert (=> b!509643 m!490719))

(declare-fun m!490727 () Bool)

(assert (=> b!509643 m!490727))

(assert (=> b!509643 m!490719))

(declare-fun m!490729 () Bool)

(assert (=> b!509643 m!490729))

(assert (=> b!509646 m!490709))

(assert (=> b!509646 m!490709))

(declare-fun m!490731 () Bool)

(assert (=> b!509646 m!490731))

(declare-fun m!490733 () Bool)

(assert (=> b!509649 m!490733))

(check-sat (not b!509643) (not start!46050) (not b!509645) (not b!509646) (not b!509651) (not b!509648) (not b!509647) (not b!509644) (not b!509649))
(check-sat)
