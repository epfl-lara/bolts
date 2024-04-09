; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48154 () Bool)

(assert start!48154)

(declare-fun b!530140 () Bool)

(declare-fun res!325999 () Bool)

(declare-fun e!308902 () Bool)

(assert (=> b!530140 (=> (not res!325999) (not e!308902))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530140 (= res!325999 (validKeyInArray!0 k!2280))))

(declare-fun b!530141 () Bool)

(declare-fun res!326002 () Bool)

(declare-fun e!308897 () Bool)

(assert (=> b!530141 (=> (not res!326002) (not e!308897))))

(declare-datatypes ((array!33550 0))(
  ( (array!33551 (arr!16119 (Array (_ BitVec 32) (_ BitVec 64))) (size!16483 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33550)

(declare-datatypes ((List!10330 0))(
  ( (Nil!10327) (Cons!10326 (h!11266 (_ BitVec 64)) (t!16566 List!10330)) )
))
(declare-fun arrayNoDuplicates!0 (array!33550 (_ BitVec 32) List!10330) Bool)

(assert (=> b!530141 (= res!326002 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10327))))

(declare-fun b!530142 () Bool)

(declare-fun res!326005 () Bool)

(assert (=> b!530142 (=> (not res!326005) (not e!308902))))

(declare-fun arrayContainsKey!0 (array!33550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530142 (= res!326005 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!530143 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!308900 () Bool)

(declare-datatypes ((SeekEntryResult!4593 0))(
  ( (MissingZero!4593 (index!20596 (_ BitVec 32))) (Found!4593 (index!20597 (_ BitVec 32))) (Intermediate!4593 (undefined!5405 Bool) (index!20598 (_ BitVec 32)) (x!49594 (_ BitVec 32))) (Undefined!4593) (MissingVacant!4593 (index!20599 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33550 (_ BitVec 32)) SeekEntryResult!4593)

(assert (=> b!530143 (= e!308900 (= (seekEntryOrOpen!0 (select (arr!16119 a!3235) j!176) a!3235 mask!3524) (Found!4593 j!176)))))

(declare-fun b!530144 () Bool)

(declare-fun res!325996 () Bool)

(assert (=> b!530144 (=> (not res!325996) (not e!308902))))

(assert (=> b!530144 (= res!325996 (validKeyInArray!0 (select (arr!16119 a!3235) j!176)))))

(declare-fun b!530145 () Bool)

(declare-fun e!308899 () Bool)

(assert (=> b!530145 (= e!308899 true)))

(declare-fun lt!244663 () array!33550)

(declare-fun lt!244658 () (_ BitVec 64))

(declare-fun lt!244661 () SeekEntryResult!4593)

(assert (=> b!530145 (= lt!244661 (seekEntryOrOpen!0 lt!244658 lt!244663 mask!3524))))

(assert (=> b!530145 false))

(declare-fun res!325998 () Bool)

(assert (=> start!48154 (=> (not res!325998) (not e!308902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48154 (= res!325998 (validMask!0 mask!3524))))

(assert (=> start!48154 e!308902))

(assert (=> start!48154 true))

(declare-fun array_inv!11893 (array!33550) Bool)

(assert (=> start!48154 (array_inv!11893 a!3235)))

(declare-fun b!530146 () Bool)

(declare-fun res!326003 () Bool)

(assert (=> b!530146 (=> (not res!326003) (not e!308902))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530146 (= res!326003 (and (= (size!16483 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16483 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16483 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530147 () Bool)

(declare-fun e!308901 () Bool)

(assert (=> b!530147 (= e!308897 (not e!308901))))

(declare-fun res!326000 () Bool)

(assert (=> b!530147 (=> res!326000 e!308901)))

(declare-fun lt!244656 () (_ BitVec 32))

(declare-fun lt!244664 () SeekEntryResult!4593)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33550 (_ BitVec 32)) SeekEntryResult!4593)

(assert (=> b!530147 (= res!326000 (= lt!244664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244656 lt!244658 lt!244663 mask!3524)))))

(declare-fun lt!244659 () (_ BitVec 32))

(assert (=> b!530147 (= lt!244664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244659 (select (arr!16119 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530147 (= lt!244656 (toIndex!0 lt!244658 mask!3524))))

(assert (=> b!530147 (= lt!244658 (select (store (arr!16119 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!530147 (= lt!244659 (toIndex!0 (select (arr!16119 a!3235) j!176) mask!3524))))

(assert (=> b!530147 (= lt!244663 (array!33551 (store (arr!16119 a!3235) i!1204 k!2280) (size!16483 a!3235)))))

(assert (=> b!530147 e!308900))

(declare-fun res!326004 () Bool)

(assert (=> b!530147 (=> (not res!326004) (not e!308900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33550 (_ BitVec 32)) Bool)

(assert (=> b!530147 (= res!326004 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16790 0))(
  ( (Unit!16791) )
))
(declare-fun lt!244657 () Unit!16790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16790)

(assert (=> b!530147 (= lt!244657 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!530148 () Bool)

(declare-fun res!325997 () Bool)

(assert (=> b!530148 (=> (not res!325997) (not e!308897))))

(assert (=> b!530148 (= res!325997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530149 () Bool)

(assert (=> b!530149 (= e!308901 e!308899)))

(declare-fun res!326001 () Bool)

(assert (=> b!530149 (=> res!326001 e!308899)))

(declare-fun lt!244660 () Bool)

(assert (=> b!530149 (= res!326001 (or (and (not lt!244660) (undefined!5405 lt!244664)) (and (not lt!244660) (not (undefined!5405 lt!244664)))))))

(assert (=> b!530149 (= lt!244660 (not (is-Intermediate!4593 lt!244664)))))

(declare-fun b!530150 () Bool)

(assert (=> b!530150 (= e!308902 e!308897)))

(declare-fun res!326006 () Bool)

(assert (=> b!530150 (=> (not res!326006) (not e!308897))))

(declare-fun lt!244662 () SeekEntryResult!4593)

(assert (=> b!530150 (= res!326006 (or (= lt!244662 (MissingZero!4593 i!1204)) (= lt!244662 (MissingVacant!4593 i!1204))))))

(assert (=> b!530150 (= lt!244662 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!48154 res!325998) b!530146))

(assert (= (and b!530146 res!326003) b!530144))

(assert (= (and b!530144 res!325996) b!530140))

(assert (= (and b!530140 res!325999) b!530142))

(assert (= (and b!530142 res!326005) b!530150))

(assert (= (and b!530150 res!326006) b!530148))

(assert (= (and b!530148 res!325997) b!530141))

(assert (= (and b!530141 res!326002) b!530147))

(assert (= (and b!530147 res!326004) b!530143))

(assert (= (and b!530147 (not res!326000)) b!530149))

(assert (= (and b!530149 (not res!326001)) b!530145))

(declare-fun m!510745 () Bool)

(assert (=> b!530141 m!510745))

(declare-fun m!510747 () Bool)

(assert (=> b!530148 m!510747))

(declare-fun m!510749 () Bool)

(assert (=> b!530143 m!510749))

(assert (=> b!530143 m!510749))

(declare-fun m!510751 () Bool)

(assert (=> b!530143 m!510751))

(assert (=> b!530144 m!510749))

(assert (=> b!530144 m!510749))

(declare-fun m!510753 () Bool)

(assert (=> b!530144 m!510753))

(declare-fun m!510755 () Bool)

(assert (=> b!530142 m!510755))

(declare-fun m!510757 () Bool)

(assert (=> b!530150 m!510757))

(declare-fun m!510759 () Bool)

(assert (=> start!48154 m!510759))

(declare-fun m!510761 () Bool)

(assert (=> start!48154 m!510761))

(declare-fun m!510763 () Bool)

(assert (=> b!530145 m!510763))

(declare-fun m!510765 () Bool)

(assert (=> b!530147 m!510765))

(declare-fun m!510767 () Bool)

(assert (=> b!530147 m!510767))

(declare-fun m!510769 () Bool)

(assert (=> b!530147 m!510769))

(assert (=> b!530147 m!510749))

(declare-fun m!510771 () Bool)

(assert (=> b!530147 m!510771))

(assert (=> b!530147 m!510749))

(declare-fun m!510773 () Bool)

(assert (=> b!530147 m!510773))

(declare-fun m!510775 () Bool)

(assert (=> b!530147 m!510775))

(declare-fun m!510777 () Bool)

(assert (=> b!530147 m!510777))

(assert (=> b!530147 m!510749))

(declare-fun m!510779 () Bool)

(assert (=> b!530147 m!510779))

(declare-fun m!510781 () Bool)

(assert (=> b!530140 m!510781))

(push 1)

