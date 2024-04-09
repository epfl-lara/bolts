; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46714 () Bool)

(assert start!46714)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32986 0))(
  ( (array!32987 (arr!15858 (Array (_ BitVec 32) (_ BitVec 64))) (size!16222 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32986)

(declare-fun e!300860 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!515284 () Bool)

(declare-datatypes ((SeekEntryResult!4332 0))(
  ( (MissingZero!4332 (index!19516 (_ BitVec 32))) (Found!4332 (index!19517 (_ BitVec 32))) (Intermediate!4332 (undefined!5144 Bool) (index!19518 (_ BitVec 32)) (x!48514 (_ BitVec 32))) (Undefined!4332) (MissingVacant!4332 (index!19519 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32986 (_ BitVec 32)) SeekEntryResult!4332)

(assert (=> b!515284 (= e!300860 (= (seekEntryOrOpen!0 (select (arr!15858 a!3235) j!176) a!3235 mask!3524) (Found!4332 j!176)))))

(declare-fun b!515285 () Bool)

(declare-fun res!315001 () Bool)

(declare-fun e!300859 () Bool)

(assert (=> b!515285 (=> (not res!315001) (not e!300859))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515285 (= res!315001 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515286 () Bool)

(declare-fun res!315008 () Bool)

(assert (=> b!515286 (=> (not res!315008) (not e!300859))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515286 (= res!315008 (and (= (size!16222 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16222 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16222 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515287 () Bool)

(declare-fun res!314998 () Bool)

(declare-fun e!300862 () Bool)

(assert (=> b!515287 (=> (not res!314998) (not e!300862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32986 (_ BitVec 32)) Bool)

(assert (=> b!515287 (= res!314998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515288 () Bool)

(assert (=> b!515288 (= e!300859 e!300862)))

(declare-fun res!315006 () Bool)

(assert (=> b!515288 (=> (not res!315006) (not e!300862))))

(declare-fun lt!235946 () SeekEntryResult!4332)

(assert (=> b!515288 (= res!315006 (or (= lt!235946 (MissingZero!4332 i!1204)) (= lt!235946 (MissingVacant!4332 i!1204))))))

(assert (=> b!515288 (= lt!235946 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515289 () Bool)

(declare-fun res!315004 () Bool)

(declare-fun e!300858 () Bool)

(assert (=> b!515289 (=> res!315004 e!300858)))

(declare-fun lt!235944 () SeekEntryResult!4332)

(assert (=> b!515289 (= res!315004 (or (undefined!5144 lt!235944) (not (is-Intermediate!4332 lt!235944))))))

(declare-fun b!515290 () Bool)

(declare-fun res!315003 () Bool)

(assert (=> b!515290 (=> (not res!315003) (not e!300859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515290 (= res!315003 (validKeyInArray!0 (select (arr!15858 a!3235) j!176)))))

(declare-fun b!515291 () Bool)

(declare-fun res!315005 () Bool)

(assert (=> b!515291 (=> (not res!315005) (not e!300862))))

(declare-datatypes ((List!10069 0))(
  ( (Nil!10066) (Cons!10065 (h!10963 (_ BitVec 64)) (t!16305 List!10069)) )
))
(declare-fun arrayNoDuplicates!0 (array!32986 (_ BitVec 32) List!10069) Bool)

(assert (=> b!515291 (= res!315005 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10066))))

(declare-fun b!515292 () Bool)

(declare-fun res!315000 () Bool)

(assert (=> b!515292 (=> (not res!315000) (not e!300859))))

(assert (=> b!515292 (= res!315000 (validKeyInArray!0 k!2280))))

(declare-fun res!315007 () Bool)

(assert (=> start!46714 (=> (not res!315007) (not e!300859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46714 (= res!315007 (validMask!0 mask!3524))))

(assert (=> start!46714 e!300859))

(assert (=> start!46714 true))

(declare-fun array_inv!11632 (array!32986) Bool)

(assert (=> start!46714 (array_inv!11632 a!3235)))

(declare-fun b!515293 () Bool)

(assert (=> b!515293 (= e!300858 true)))

(assert (=> b!515293 (and (bvslt (x!48514 lt!235944) #b01111111111111111111111111111110) (or (= (select (arr!15858 a!3235) (index!19518 lt!235944)) (select (arr!15858 a!3235) j!176)) (= (select (arr!15858 a!3235) (index!19518 lt!235944)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15858 a!3235) (index!19518 lt!235944)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515294 () Bool)

(assert (=> b!515294 (= e!300862 (not e!300858))))

(declare-fun res!315002 () Bool)

(assert (=> b!515294 (=> res!315002 e!300858)))

(declare-fun lt!235945 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32986 (_ BitVec 32)) SeekEntryResult!4332)

(assert (=> b!515294 (= res!315002 (= lt!235944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235945 (select (store (arr!15858 a!3235) i!1204 k!2280) j!176) (array!32987 (store (arr!15858 a!3235) i!1204 k!2280) (size!16222 a!3235)) mask!3524)))))

(declare-fun lt!235943 () (_ BitVec 32))

(assert (=> b!515294 (= lt!235944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235943 (select (arr!15858 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515294 (= lt!235945 (toIndex!0 (select (store (arr!15858 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515294 (= lt!235943 (toIndex!0 (select (arr!15858 a!3235) j!176) mask!3524))))

(assert (=> b!515294 e!300860))

(declare-fun res!314999 () Bool)

(assert (=> b!515294 (=> (not res!314999) (not e!300860))))

(assert (=> b!515294 (= res!314999 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15914 0))(
  ( (Unit!15915) )
))
(declare-fun lt!235942 () Unit!15914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32986 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15914)

(assert (=> b!515294 (= lt!235942 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46714 res!315007) b!515286))

(assert (= (and b!515286 res!315008) b!515290))

(assert (= (and b!515290 res!315003) b!515292))

(assert (= (and b!515292 res!315000) b!515285))

(assert (= (and b!515285 res!315001) b!515288))

(assert (= (and b!515288 res!315006) b!515287))

(assert (= (and b!515287 res!314998) b!515291))

(assert (= (and b!515291 res!315005) b!515294))

(assert (= (and b!515294 res!314999) b!515284))

(assert (= (and b!515294 (not res!315002)) b!515289))

(assert (= (and b!515289 (not res!315004)) b!515293))

(declare-fun m!496663 () Bool)

(assert (=> b!515284 m!496663))

(assert (=> b!515284 m!496663))

(declare-fun m!496665 () Bool)

(assert (=> b!515284 m!496665))

(declare-fun m!496667 () Bool)

(assert (=> b!515294 m!496667))

(declare-fun m!496669 () Bool)

(assert (=> b!515294 m!496669))

(declare-fun m!496671 () Bool)

(assert (=> b!515294 m!496671))

(assert (=> b!515294 m!496667))

(assert (=> b!515294 m!496663))

(declare-fun m!496673 () Bool)

(assert (=> b!515294 m!496673))

(assert (=> b!515294 m!496663))

(declare-fun m!496675 () Bool)

(assert (=> b!515294 m!496675))

(assert (=> b!515294 m!496667))

(declare-fun m!496677 () Bool)

(assert (=> b!515294 m!496677))

(declare-fun m!496679 () Bool)

(assert (=> b!515294 m!496679))

(assert (=> b!515294 m!496663))

(declare-fun m!496681 () Bool)

(assert (=> b!515294 m!496681))

(declare-fun m!496683 () Bool)

(assert (=> b!515287 m!496683))

(assert (=> b!515290 m!496663))

(assert (=> b!515290 m!496663))

(declare-fun m!496685 () Bool)

(assert (=> b!515290 m!496685))

(declare-fun m!496687 () Bool)

(assert (=> b!515288 m!496687))

(declare-fun m!496689 () Bool)

(assert (=> b!515293 m!496689))

(assert (=> b!515293 m!496663))

(declare-fun m!496691 () Bool)

(assert (=> start!46714 m!496691))

(declare-fun m!496693 () Bool)

(assert (=> start!46714 m!496693))

(declare-fun m!496695 () Bool)

(assert (=> b!515291 m!496695))

(declare-fun m!496697 () Bool)

(assert (=> b!515285 m!496697))

(declare-fun m!496699 () Bool)

(assert (=> b!515292 m!496699))

(push 1)

