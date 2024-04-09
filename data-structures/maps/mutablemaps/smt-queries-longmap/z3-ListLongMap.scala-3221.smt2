; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45084 () Bool)

(assert start!45084)

(declare-fun b!494561 () Bool)

(declare-fun res!297284 () Bool)

(declare-fun e!290205 () Bool)

(assert (=> b!494561 (=> (not res!297284) (not e!290205))))

(declare-datatypes ((array!31989 0))(
  ( (array!31990 (arr!15376 (Array (_ BitVec 32) (_ BitVec 64))) (size!15740 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31989)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494561 (= res!297284 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494562 () Bool)

(declare-fun e!290203 () Bool)

(assert (=> b!494562 (= e!290205 e!290203)))

(declare-fun res!297286 () Bool)

(assert (=> b!494562 (=> (not res!297286) (not e!290203))))

(declare-datatypes ((SeekEntryResult!3850 0))(
  ( (MissingZero!3850 (index!17579 (_ BitVec 32))) (Found!3850 (index!17580 (_ BitVec 32))) (Intermediate!3850 (undefined!4662 Bool) (index!17581 (_ BitVec 32)) (x!46675 (_ BitVec 32))) (Undefined!3850) (MissingVacant!3850 (index!17582 (_ BitVec 32))) )
))
(declare-fun lt!223928 () SeekEntryResult!3850)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494562 (= res!297286 (or (= lt!223928 (MissingZero!3850 i!1204)) (= lt!223928 (MissingVacant!3850 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31989 (_ BitVec 32)) SeekEntryResult!3850)

(assert (=> b!494562 (= lt!223928 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494563 () Bool)

(declare-fun res!297287 () Bool)

(assert (=> b!494563 (=> (not res!297287) (not e!290203))))

(declare-datatypes ((List!9587 0))(
  ( (Nil!9584) (Cons!9583 (h!10451 (_ BitVec 64)) (t!15823 List!9587)) )
))
(declare-fun arrayNoDuplicates!0 (array!31989 (_ BitVec 32) List!9587) Bool)

(assert (=> b!494563 (= res!297287 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9584))))

(declare-fun b!494564 () Bool)

(declare-fun res!297290 () Bool)

(assert (=> b!494564 (=> (not res!297290) (not e!290205))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494564 (= res!297290 (and (= (size!15740 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15740 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15740 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494565 () Bool)

(declare-fun res!297288 () Bool)

(assert (=> b!494565 (=> (not res!297288) (not e!290203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31989 (_ BitVec 32)) Bool)

(assert (=> b!494565 (= res!297288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494566 () Bool)

(declare-fun e!290206 () Bool)

(assert (=> b!494566 (= e!290206 true)))

(declare-fun lt!223926 () SeekEntryResult!3850)

(assert (=> b!494566 (= lt!223926 Undefined!3850)))

(declare-fun b!494567 () Bool)

(declare-fun res!297282 () Bool)

(assert (=> b!494567 (=> (not res!297282) (not e!290205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494567 (= res!297282 (validKeyInArray!0 (select (arr!15376 a!3235) j!176)))))

(declare-fun res!297283 () Bool)

(assert (=> start!45084 (=> (not res!297283) (not e!290205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45084 (= res!297283 (validMask!0 mask!3524))))

(assert (=> start!45084 e!290205))

(assert (=> start!45084 true))

(declare-fun array_inv!11150 (array!31989) Bool)

(assert (=> start!45084 (array_inv!11150 a!3235)))

(declare-fun b!494568 () Bool)

(declare-fun res!297289 () Bool)

(assert (=> b!494568 (=> res!297289 e!290206)))

(declare-fun lt!223923 () SeekEntryResult!3850)

(get-info :version)

(assert (=> b!494568 (= res!297289 (or (not ((_ is Intermediate!3850) lt!223923)) (not (undefined!4662 lt!223923))))))

(declare-fun b!494569 () Bool)

(assert (=> b!494569 (= e!290203 (not e!290206))))

(declare-fun res!297281 () Bool)

(assert (=> b!494569 (=> res!297281 e!290206)))

(declare-fun lt!223925 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31989 (_ BitVec 32)) SeekEntryResult!3850)

(assert (=> b!494569 (= res!297281 (= lt!223923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223925 (select (store (arr!15376 a!3235) i!1204 k0!2280) j!176) (array!31990 (store (arr!15376 a!3235) i!1204 k0!2280) (size!15740 a!3235)) mask!3524)))))

(declare-fun lt!223924 () (_ BitVec 32))

(assert (=> b!494569 (= lt!223923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223924 (select (arr!15376 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494569 (= lt!223925 (toIndex!0 (select (store (arr!15376 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494569 (= lt!223924 (toIndex!0 (select (arr!15376 a!3235) j!176) mask!3524))))

(assert (=> b!494569 (= lt!223926 (Found!3850 j!176))))

(assert (=> b!494569 (= lt!223926 (seekEntryOrOpen!0 (select (arr!15376 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494569 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14638 0))(
  ( (Unit!14639) )
))
(declare-fun lt!223927 () Unit!14638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14638)

(assert (=> b!494569 (= lt!223927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494570 () Bool)

(declare-fun res!297285 () Bool)

(assert (=> b!494570 (=> (not res!297285) (not e!290205))))

(assert (=> b!494570 (= res!297285 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45084 res!297283) b!494564))

(assert (= (and b!494564 res!297290) b!494567))

(assert (= (and b!494567 res!297282) b!494570))

(assert (= (and b!494570 res!297285) b!494561))

(assert (= (and b!494561 res!297284) b!494562))

(assert (= (and b!494562 res!297286) b!494565))

(assert (= (and b!494565 res!297288) b!494563))

(assert (= (and b!494563 res!297287) b!494569))

(assert (= (and b!494569 (not res!297281)) b!494568))

(assert (= (and b!494568 (not res!297289)) b!494566))

(declare-fun m!475705 () Bool)

(assert (=> b!494562 m!475705))

(declare-fun m!475707 () Bool)

(assert (=> b!494570 m!475707))

(declare-fun m!475709 () Bool)

(assert (=> b!494565 m!475709))

(declare-fun m!475711 () Bool)

(assert (=> start!45084 m!475711))

(declare-fun m!475713 () Bool)

(assert (=> start!45084 m!475713))

(declare-fun m!475715 () Bool)

(assert (=> b!494561 m!475715))

(declare-fun m!475717 () Bool)

(assert (=> b!494563 m!475717))

(declare-fun m!475719 () Bool)

(assert (=> b!494569 m!475719))

(declare-fun m!475721 () Bool)

(assert (=> b!494569 m!475721))

(declare-fun m!475723 () Bool)

(assert (=> b!494569 m!475723))

(declare-fun m!475725 () Bool)

(assert (=> b!494569 m!475725))

(assert (=> b!494569 m!475723))

(declare-fun m!475727 () Bool)

(assert (=> b!494569 m!475727))

(assert (=> b!494569 m!475721))

(declare-fun m!475729 () Bool)

(assert (=> b!494569 m!475729))

(assert (=> b!494569 m!475721))

(declare-fun m!475731 () Bool)

(assert (=> b!494569 m!475731))

(declare-fun m!475733 () Bool)

(assert (=> b!494569 m!475733))

(assert (=> b!494569 m!475723))

(declare-fun m!475735 () Bool)

(assert (=> b!494569 m!475735))

(assert (=> b!494569 m!475723))

(declare-fun m!475737 () Bool)

(assert (=> b!494569 m!475737))

(assert (=> b!494567 m!475723))

(assert (=> b!494567 m!475723))

(declare-fun m!475739 () Bool)

(assert (=> b!494567 m!475739))

(check-sat (not b!494565) (not b!494561) (not b!494569) (not start!45084) (not b!494562) (not b!494570) (not b!494567) (not b!494563))
(check-sat)
