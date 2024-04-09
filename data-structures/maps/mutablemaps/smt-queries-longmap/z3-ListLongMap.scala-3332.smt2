; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45996 () Bool)

(assert start!45996)

(declare-fun res!309914 () Bool)

(declare-fun e!297669 () Bool)

(assert (=> start!45996 (=> (not res!309914) (not e!297669))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45996 (= res!309914 (validMask!0 mask!3524))))

(assert (=> start!45996 e!297669))

(assert (=> start!45996 true))

(declare-datatypes ((array!32667 0))(
  ( (array!32668 (arr!15709 (Array (_ BitVec 32) (_ BitVec 64))) (size!16073 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32667)

(declare-fun array_inv!11483 (array!32667) Bool)

(assert (=> start!45996 (array_inv!11483 a!3235)))

(declare-fun b!508914 () Bool)

(declare-fun res!309915 () Bool)

(declare-fun e!297667 () Bool)

(assert (=> b!508914 (=> (not res!309915) (not e!297667))))

(declare-datatypes ((List!9920 0))(
  ( (Nil!9917) (Cons!9916 (h!10793 (_ BitVec 64)) (t!16156 List!9920)) )
))
(declare-fun arrayNoDuplicates!0 (array!32667 (_ BitVec 32) List!9920) Bool)

(assert (=> b!508914 (= res!309915 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9917))))

(declare-fun b!508915 () Bool)

(assert (=> b!508915 (= e!297669 e!297667)))

(declare-fun res!309913 () Bool)

(assert (=> b!508915 (=> (not res!309913) (not e!297667))))

(declare-datatypes ((SeekEntryResult!4183 0))(
  ( (MissingZero!4183 (index!18920 (_ BitVec 32))) (Found!4183 (index!18921 (_ BitVec 32))) (Intermediate!4183 (undefined!4995 Bool) (index!18922 (_ BitVec 32)) (x!47923 (_ BitVec 32))) (Undefined!4183) (MissingVacant!4183 (index!18923 (_ BitVec 32))) )
))
(declare-fun lt!232460 () SeekEntryResult!4183)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508915 (= res!309913 (or (= lt!232460 (MissingZero!4183 i!1204)) (= lt!232460 (MissingVacant!4183 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32667 (_ BitVec 32)) SeekEntryResult!4183)

(assert (=> b!508915 (= lt!232460 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508916 () Bool)

(assert (=> b!508916 (= e!297667 (not true))))

(declare-fun lt!232463 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!232462 () SeekEntryResult!4183)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32667 (_ BitVec 32)) SeekEntryResult!4183)

(assert (=> b!508916 (= lt!232462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232463 (select (store (arr!15709 a!3235) i!1204 k0!2280) j!176) (array!32668 (store (arr!15709 a!3235) i!1204 k0!2280) (size!16073 a!3235)) mask!3524))))

(declare-fun lt!232459 () SeekEntryResult!4183)

(declare-fun lt!232458 () (_ BitVec 32))

(assert (=> b!508916 (= lt!232459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232458 (select (arr!15709 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508916 (= lt!232463 (toIndex!0 (select (store (arr!15709 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!508916 (= lt!232458 (toIndex!0 (select (arr!15709 a!3235) j!176) mask!3524))))

(declare-fun e!297668 () Bool)

(assert (=> b!508916 e!297668))

(declare-fun res!309916 () Bool)

(assert (=> b!508916 (=> (not res!309916) (not e!297668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32667 (_ BitVec 32)) Bool)

(assert (=> b!508916 (= res!309916 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15616 0))(
  ( (Unit!15617) )
))
(declare-fun lt!232461 () Unit!15616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15616)

(assert (=> b!508916 (= lt!232461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508917 () Bool)

(declare-fun res!309912 () Bool)

(assert (=> b!508917 (=> (not res!309912) (not e!297667))))

(assert (=> b!508917 (= res!309912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508918 () Bool)

(declare-fun res!309917 () Bool)

(assert (=> b!508918 (=> (not res!309917) (not e!297669))))

(assert (=> b!508918 (= res!309917 (and (= (size!16073 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16073 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16073 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508919 () Bool)

(assert (=> b!508919 (= e!297668 (= (seekEntryOrOpen!0 (select (arr!15709 a!3235) j!176) a!3235 mask!3524) (Found!4183 j!176)))))

(declare-fun b!508920 () Bool)

(declare-fun res!309909 () Bool)

(assert (=> b!508920 (=> (not res!309909) (not e!297669))))

(declare-fun arrayContainsKey!0 (array!32667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508920 (= res!309909 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508921 () Bool)

(declare-fun res!309911 () Bool)

(assert (=> b!508921 (=> (not res!309911) (not e!297669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508921 (= res!309911 (validKeyInArray!0 (select (arr!15709 a!3235) j!176)))))

(declare-fun b!508922 () Bool)

(declare-fun res!309910 () Bool)

(assert (=> b!508922 (=> (not res!309910) (not e!297669))))

(assert (=> b!508922 (= res!309910 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45996 res!309914) b!508918))

(assert (= (and b!508918 res!309917) b!508921))

(assert (= (and b!508921 res!309911) b!508922))

(assert (= (and b!508922 res!309910) b!508920))

(assert (= (and b!508920 res!309909) b!508915))

(assert (= (and b!508915 res!309913) b!508917))

(assert (= (and b!508917 res!309912) b!508914))

(assert (= (and b!508914 res!309915) b!508916))

(assert (= (and b!508916 res!309916) b!508919))

(declare-fun m!489727 () Bool)

(assert (=> b!508914 m!489727))

(declare-fun m!489729 () Bool)

(assert (=> b!508920 m!489729))

(declare-fun m!489731 () Bool)

(assert (=> b!508922 m!489731))

(declare-fun m!489733 () Bool)

(assert (=> b!508917 m!489733))

(declare-fun m!489735 () Bool)

(assert (=> b!508919 m!489735))

(assert (=> b!508919 m!489735))

(declare-fun m!489737 () Bool)

(assert (=> b!508919 m!489737))

(assert (=> b!508921 m!489735))

(assert (=> b!508921 m!489735))

(declare-fun m!489739 () Bool)

(assert (=> b!508921 m!489739))

(declare-fun m!489741 () Bool)

(assert (=> start!45996 m!489741))

(declare-fun m!489743 () Bool)

(assert (=> start!45996 m!489743))

(declare-fun m!489745 () Bool)

(assert (=> b!508915 m!489745))

(declare-fun m!489747 () Bool)

(assert (=> b!508916 m!489747))

(declare-fun m!489749 () Bool)

(assert (=> b!508916 m!489749))

(assert (=> b!508916 m!489735))

(declare-fun m!489751 () Bool)

(assert (=> b!508916 m!489751))

(assert (=> b!508916 m!489735))

(declare-fun m!489753 () Bool)

(assert (=> b!508916 m!489753))

(assert (=> b!508916 m!489735))

(declare-fun m!489755 () Bool)

(assert (=> b!508916 m!489755))

(assert (=> b!508916 m!489749))

(declare-fun m!489757 () Bool)

(assert (=> b!508916 m!489757))

(declare-fun m!489759 () Bool)

(assert (=> b!508916 m!489759))

(assert (=> b!508916 m!489749))

(declare-fun m!489761 () Bool)

(assert (=> b!508916 m!489761))

(check-sat (not b!508922) (not b!508921) (not b!508914) (not start!45996) (not b!508919) (not b!508920) (not b!508917) (not b!508916) (not b!508915))
(check-sat)
