; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45028 () Bool)

(assert start!45028)

(declare-fun b!493721 () Bool)

(declare-fun e!289868 () Bool)

(declare-fun e!289869 () Bool)

(assert (=> b!493721 (= e!289868 (not e!289869))))

(declare-fun res!296441 () Bool)

(assert (=> b!493721 (=> res!296441 e!289869)))

(declare-datatypes ((SeekEntryResult!3822 0))(
  ( (MissingZero!3822 (index!17467 (_ BitVec 32))) (Found!3822 (index!17468 (_ BitVec 32))) (Intermediate!3822 (undefined!4634 Bool) (index!17469 (_ BitVec 32)) (x!46575 (_ BitVec 32))) (Undefined!3822) (MissingVacant!3822 (index!17470 (_ BitVec 32))) )
))
(declare-fun lt!223423 () SeekEntryResult!3822)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31933 0))(
  ( (array!31934 (arr!15348 (Array (_ BitVec 32) (_ BitVec 64))) (size!15712 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31933)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!223422 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31933 (_ BitVec 32)) SeekEntryResult!3822)

(assert (=> b!493721 (= res!296441 (= lt!223423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223422 (select (store (arr!15348 a!3235) i!1204 k!2280) j!176) (array!31934 (store (arr!15348 a!3235) i!1204 k!2280) (size!15712 a!3235)) mask!3524)))))

(declare-fun lt!223421 () (_ BitVec 32))

(assert (=> b!493721 (= lt!223423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223421 (select (arr!15348 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493721 (= lt!223422 (toIndex!0 (select (store (arr!15348 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493721 (= lt!223421 (toIndex!0 (select (arr!15348 a!3235) j!176) mask!3524))))

(declare-fun lt!223420 () SeekEntryResult!3822)

(assert (=> b!493721 (= lt!223420 (Found!3822 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31933 (_ BitVec 32)) SeekEntryResult!3822)

(assert (=> b!493721 (= lt!223420 (seekEntryOrOpen!0 (select (arr!15348 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31933 (_ BitVec 32)) Bool)

(assert (=> b!493721 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14582 0))(
  ( (Unit!14583) )
))
(declare-fun lt!223419 () Unit!14582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14582)

(assert (=> b!493721 (= lt!223419 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493722 () Bool)

(declare-fun res!296445 () Bool)

(assert (=> b!493722 (=> res!296445 e!289869)))

(assert (=> b!493722 (= res!296445 (or (not (is-Intermediate!3822 lt!223423)) (not (undefined!4634 lt!223423))))))

(declare-fun b!493723 () Bool)

(declare-fun e!289870 () Bool)

(assert (=> b!493723 (= e!289870 e!289868)))

(declare-fun res!296443 () Bool)

(assert (=> b!493723 (=> (not res!296443) (not e!289868))))

(declare-fun lt!223424 () SeekEntryResult!3822)

(assert (=> b!493723 (= res!296443 (or (= lt!223424 (MissingZero!3822 i!1204)) (= lt!223424 (MissingVacant!3822 i!1204))))))

(assert (=> b!493723 (= lt!223424 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493724 () Bool)

(declare-fun res!296446 () Bool)

(assert (=> b!493724 (=> (not res!296446) (not e!289870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493724 (= res!296446 (validKeyInArray!0 k!2280))))

(declare-fun b!493725 () Bool)

(assert (=> b!493725 (= e!289869 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!493725 (= lt!223420 Undefined!3822)))

(declare-fun b!493727 () Bool)

(declare-fun res!296447 () Bool)

(assert (=> b!493727 (=> (not res!296447) (not e!289870))))

(assert (=> b!493727 (= res!296447 (and (= (size!15712 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15712 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15712 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493728 () Bool)

(declare-fun res!296442 () Bool)

(assert (=> b!493728 (=> (not res!296442) (not e!289870))))

(declare-fun arrayContainsKey!0 (array!31933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493728 (= res!296442 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493726 () Bool)

(declare-fun res!296448 () Bool)

(assert (=> b!493726 (=> (not res!296448) (not e!289868))))

(declare-datatypes ((List!9559 0))(
  ( (Nil!9556) (Cons!9555 (h!10423 (_ BitVec 64)) (t!15795 List!9559)) )
))
(declare-fun arrayNoDuplicates!0 (array!31933 (_ BitVec 32) List!9559) Bool)

(assert (=> b!493726 (= res!296448 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9556))))

(declare-fun res!296450 () Bool)

(assert (=> start!45028 (=> (not res!296450) (not e!289870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45028 (= res!296450 (validMask!0 mask!3524))))

(assert (=> start!45028 e!289870))

(assert (=> start!45028 true))

(declare-fun array_inv!11122 (array!31933) Bool)

(assert (=> start!45028 (array_inv!11122 a!3235)))

(declare-fun b!493729 () Bool)

(declare-fun res!296444 () Bool)

(assert (=> b!493729 (=> (not res!296444) (not e!289870))))

(assert (=> b!493729 (= res!296444 (validKeyInArray!0 (select (arr!15348 a!3235) j!176)))))

(declare-fun b!493730 () Bool)

(declare-fun res!296449 () Bool)

(assert (=> b!493730 (=> (not res!296449) (not e!289868))))

(assert (=> b!493730 (= res!296449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45028 res!296450) b!493727))

(assert (= (and b!493727 res!296447) b!493729))

(assert (= (and b!493729 res!296444) b!493724))

(assert (= (and b!493724 res!296446) b!493728))

(assert (= (and b!493728 res!296442) b!493723))

(assert (= (and b!493723 res!296443) b!493730))

(assert (= (and b!493730 res!296449) b!493726))

(assert (= (and b!493726 res!296448) b!493721))

(assert (= (and b!493721 (not res!296441)) b!493722))

(assert (= (and b!493722 (not res!296445)) b!493725))

(declare-fun m!474697 () Bool)

(assert (=> b!493724 m!474697))

(declare-fun m!474699 () Bool)

(assert (=> b!493726 m!474699))

(declare-fun m!474701 () Bool)

(assert (=> start!45028 m!474701))

(declare-fun m!474703 () Bool)

(assert (=> start!45028 m!474703))

(declare-fun m!474705 () Bool)

(assert (=> b!493729 m!474705))

(assert (=> b!493729 m!474705))

(declare-fun m!474707 () Bool)

(assert (=> b!493729 m!474707))

(declare-fun m!474709 () Bool)

(assert (=> b!493721 m!474709))

(declare-fun m!474711 () Bool)

(assert (=> b!493721 m!474711))

(assert (=> b!493721 m!474705))

(declare-fun m!474713 () Bool)

(assert (=> b!493721 m!474713))

(assert (=> b!493721 m!474705))

(declare-fun m!474715 () Bool)

(assert (=> b!493721 m!474715))

(assert (=> b!493721 m!474705))

(declare-fun m!474717 () Bool)

(assert (=> b!493721 m!474717))

(assert (=> b!493721 m!474705))

(declare-fun m!474719 () Bool)

(assert (=> b!493721 m!474719))

(assert (=> b!493721 m!474711))

(declare-fun m!474721 () Bool)

(assert (=> b!493721 m!474721))

(declare-fun m!474723 () Bool)

(assert (=> b!493721 m!474723))

(assert (=> b!493721 m!474711))

(declare-fun m!474725 () Bool)

(assert (=> b!493721 m!474725))

(declare-fun m!474727 () Bool)

(assert (=> b!493730 m!474727))

(declare-fun m!474729 () Bool)

(assert (=> b!493723 m!474729))

(declare-fun m!474731 () Bool)

(assert (=> b!493728 m!474731))

(push 1)

