; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45290 () Bool)

(assert start!45290)

(declare-fun b!497248 () Bool)

(declare-fun res!299794 () Bool)

(declare-fun e!291474 () Bool)

(assert (=> b!497248 (=> res!299794 e!291474)))

(declare-datatypes ((SeekEntryResult!3923 0))(
  ( (MissingZero!3923 (index!17871 (_ BitVec 32))) (Found!3923 (index!17872 (_ BitVec 32))) (Intermediate!3923 (undefined!4735 Bool) (index!17873 (_ BitVec 32)) (x!46946 (_ BitVec 32))) (Undefined!3923) (MissingVacant!3923 (index!17874 (_ BitVec 32))) )
))
(declare-fun lt!225163 () SeekEntryResult!3923)

(assert (=> b!497248 (= res!299794 (or (undefined!4735 lt!225163) (not (is-Intermediate!3923 lt!225163))))))

(declare-fun b!497249 () Bool)

(declare-fun res!299788 () Bool)

(declare-fun e!291471 () Bool)

(assert (=> b!497249 (=> (not res!299788) (not e!291471))))

(declare-datatypes ((array!32138 0))(
  ( (array!32139 (arr!15449 (Array (_ BitVec 32) (_ BitVec 64))) (size!15813 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32138)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497249 (= res!299788 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497250 () Bool)

(declare-fun res!299795 () Bool)

(assert (=> b!497250 (=> (not res!299795) (not e!291471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497250 (= res!299795 (validKeyInArray!0 k!2280))))

(declare-fun b!497251 () Bool)

(declare-fun res!299786 () Bool)

(declare-fun e!291472 () Bool)

(assert (=> b!497251 (=> (not res!299786) (not e!291472))))

(declare-datatypes ((List!9660 0))(
  ( (Nil!9657) (Cons!9656 (h!10527 (_ BitVec 64)) (t!15896 List!9660)) )
))
(declare-fun arrayNoDuplicates!0 (array!32138 (_ BitVec 32) List!9660) Bool)

(assert (=> b!497251 (= res!299786 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9657))))

(declare-fun b!497252 () Bool)

(assert (=> b!497252 (= e!291474 true)))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497252 (and (bvslt (x!46946 lt!225163) #b01111111111111111111111111111110) (or (= (select (arr!15449 a!3235) (index!17873 lt!225163)) (select (arr!15449 a!3235) j!176)) (= (select (arr!15449 a!3235) (index!17873 lt!225163)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15449 a!3235) (index!17873 lt!225163)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497253 () Bool)

(assert (=> b!497253 (= e!291472 (not e!291474))))

(declare-fun res!299790 () Bool)

(assert (=> b!497253 (=> res!299790 e!291474)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!225162 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32138 (_ BitVec 32)) SeekEntryResult!3923)

(assert (=> b!497253 (= res!299790 (= lt!225163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225162 (select (store (arr!15449 a!3235) i!1204 k!2280) j!176) (array!32139 (store (arr!15449 a!3235) i!1204 k!2280) (size!15813 a!3235)) mask!3524)))))

(declare-fun lt!225161 () (_ BitVec 32))

(assert (=> b!497253 (= lt!225163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225161 (select (arr!15449 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497253 (= lt!225162 (toIndex!0 (select (store (arr!15449 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!497253 (= lt!225161 (toIndex!0 (select (arr!15449 a!3235) j!176) mask!3524))))

(declare-fun e!291475 () Bool)

(assert (=> b!497253 e!291475))

(declare-fun res!299793 () Bool)

(assert (=> b!497253 (=> (not res!299793) (not e!291475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32138 (_ BitVec 32)) Bool)

(assert (=> b!497253 (= res!299793 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14784 0))(
  ( (Unit!14785) )
))
(declare-fun lt!225160 () Unit!14784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14784)

(assert (=> b!497253 (= lt!225160 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!299791 () Bool)

(assert (=> start!45290 (=> (not res!299791) (not e!291471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45290 (= res!299791 (validMask!0 mask!3524))))

(assert (=> start!45290 e!291471))

(assert (=> start!45290 true))

(declare-fun array_inv!11223 (array!32138) Bool)

(assert (=> start!45290 (array_inv!11223 a!3235)))

(declare-fun b!497254 () Bool)

(declare-fun res!299792 () Bool)

(assert (=> b!497254 (=> (not res!299792) (not e!291471))))

(assert (=> b!497254 (= res!299792 (validKeyInArray!0 (select (arr!15449 a!3235) j!176)))))

(declare-fun b!497255 () Bool)

(declare-fun res!299785 () Bool)

(assert (=> b!497255 (=> (not res!299785) (not e!291471))))

(assert (=> b!497255 (= res!299785 (and (= (size!15813 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15813 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15813 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497256 () Bool)

(assert (=> b!497256 (= e!291471 e!291472)))

(declare-fun res!299789 () Bool)

(assert (=> b!497256 (=> (not res!299789) (not e!291472))))

(declare-fun lt!225164 () SeekEntryResult!3923)

(assert (=> b!497256 (= res!299789 (or (= lt!225164 (MissingZero!3923 i!1204)) (= lt!225164 (MissingVacant!3923 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32138 (_ BitVec 32)) SeekEntryResult!3923)

(assert (=> b!497256 (= lt!225164 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497257 () Bool)

(assert (=> b!497257 (= e!291475 (= (seekEntryOrOpen!0 (select (arr!15449 a!3235) j!176) a!3235 mask!3524) (Found!3923 j!176)))))

(declare-fun b!497258 () Bool)

(declare-fun res!299787 () Bool)

(assert (=> b!497258 (=> (not res!299787) (not e!291472))))

(assert (=> b!497258 (= res!299787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45290 res!299791) b!497255))

(assert (= (and b!497255 res!299785) b!497254))

(assert (= (and b!497254 res!299792) b!497250))

(assert (= (and b!497250 res!299795) b!497249))

(assert (= (and b!497249 res!299788) b!497256))

(assert (= (and b!497256 res!299789) b!497258))

(assert (= (and b!497258 res!299787) b!497251))

(assert (= (and b!497251 res!299786) b!497253))

(assert (= (and b!497253 res!299793) b!497257))

(assert (= (and b!497253 (not res!299790)) b!497248))

(assert (= (and b!497248 (not res!299794)) b!497252))

(declare-fun m!478673 () Bool)

(assert (=> b!497252 m!478673))

(declare-fun m!478675 () Bool)

(assert (=> b!497252 m!478675))

(declare-fun m!478677 () Bool)

(assert (=> b!497250 m!478677))

(declare-fun m!478679 () Bool)

(assert (=> b!497253 m!478679))

(declare-fun m!478681 () Bool)

(assert (=> b!497253 m!478681))

(assert (=> b!497253 m!478675))

(declare-fun m!478683 () Bool)

(assert (=> b!497253 m!478683))

(assert (=> b!497253 m!478675))

(declare-fun m!478685 () Bool)

(assert (=> b!497253 m!478685))

(assert (=> b!497253 m!478675))

(declare-fun m!478687 () Bool)

(assert (=> b!497253 m!478687))

(assert (=> b!497253 m!478681))

(declare-fun m!478689 () Bool)

(assert (=> b!497253 m!478689))

(assert (=> b!497253 m!478681))

(declare-fun m!478691 () Bool)

(assert (=> b!497253 m!478691))

(declare-fun m!478693 () Bool)

(assert (=> b!497253 m!478693))

(declare-fun m!478695 () Bool)

(assert (=> b!497251 m!478695))

(declare-fun m!478697 () Bool)

(assert (=> b!497258 m!478697))

(declare-fun m!478699 () Bool)

(assert (=> b!497249 m!478699))

(assert (=> b!497254 m!478675))

(assert (=> b!497254 m!478675))

(declare-fun m!478701 () Bool)

(assert (=> b!497254 m!478701))

(declare-fun m!478703 () Bool)

(assert (=> start!45290 m!478703))

(declare-fun m!478705 () Bool)

(assert (=> start!45290 m!478705))

(declare-fun m!478707 () Bool)

(assert (=> b!497256 m!478707))

(assert (=> b!497257 m!478675))

(assert (=> b!497257 m!478675))

(declare-fun m!478709 () Bool)

(assert (=> b!497257 m!478709))

(push 1)

(assert (not b!497256))

(assert (not b!497258))

(assert (not start!45290))

(assert (not b!497249))

(assert (not b!497253))

(assert (not b!497251))

(assert (not b!497257))

(assert (not b!497254))

(assert (not b!497250))

(check-sat)

