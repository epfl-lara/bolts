; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45092 () Bool)

(assert start!45092)

(declare-fun b!494681 () Bool)

(declare-fun res!297403 () Bool)

(declare-fun e!290253 () Bool)

(assert (=> b!494681 (=> (not res!297403) (not e!290253))))

(declare-datatypes ((array!31997 0))(
  ( (array!31998 (arr!15380 (Array (_ BitVec 32) (_ BitVec 64))) (size!15744 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31997)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494681 (= res!297403 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494682 () Bool)

(declare-fun e!290254 () Bool)

(declare-fun e!290251 () Bool)

(assert (=> b!494682 (= e!290254 (not e!290251))))

(declare-fun res!297410 () Bool)

(assert (=> b!494682 (=> res!297410 e!290251)))

(declare-datatypes ((SeekEntryResult!3854 0))(
  ( (MissingZero!3854 (index!17595 (_ BitVec 32))) (Found!3854 (index!17596 (_ BitVec 32))) (Intermediate!3854 (undefined!4666 Bool) (index!17597 (_ BitVec 32)) (x!46687 (_ BitVec 32))) (Undefined!3854) (MissingVacant!3854 (index!17598 (_ BitVec 32))) )
))
(declare-fun lt!223996 () SeekEntryResult!3854)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223995 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31997 (_ BitVec 32)) SeekEntryResult!3854)

(assert (=> b!494682 (= res!297410 (= lt!223996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223995 (select (store (arr!15380 a!3235) i!1204 k!2280) j!176) (array!31998 (store (arr!15380 a!3235) i!1204 k!2280) (size!15744 a!3235)) mask!3524)))))

(declare-fun lt!224000 () (_ BitVec 32))

(assert (=> b!494682 (= lt!223996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224000 (select (arr!15380 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494682 (= lt!223995 (toIndex!0 (select (store (arr!15380 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494682 (= lt!224000 (toIndex!0 (select (arr!15380 a!3235) j!176) mask!3524))))

(declare-fun lt!223999 () SeekEntryResult!3854)

(assert (=> b!494682 (= lt!223999 (Found!3854 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31997 (_ BitVec 32)) SeekEntryResult!3854)

(assert (=> b!494682 (= lt!223999 (seekEntryOrOpen!0 (select (arr!15380 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31997 (_ BitVec 32)) Bool)

(assert (=> b!494682 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14646 0))(
  ( (Unit!14647) )
))
(declare-fun lt!223997 () Unit!14646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14646)

(assert (=> b!494682 (= lt!223997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494683 () Bool)

(declare-fun res!297406 () Bool)

(assert (=> b!494683 (=> (not res!297406) (not e!290253))))

(assert (=> b!494683 (= res!297406 (and (= (size!15744 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15744 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15744 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494684 () Bool)

(declare-fun res!297404 () Bool)

(assert (=> b!494684 (=> (not res!297404) (not e!290253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494684 (= res!297404 (validKeyInArray!0 k!2280))))

(declare-fun b!494685 () Bool)

(declare-fun res!297408 () Bool)

(assert (=> b!494685 (=> (not res!297408) (not e!290254))))

(assert (=> b!494685 (= res!297408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494686 () Bool)

(declare-fun res!297405 () Bool)

(assert (=> b!494686 (=> (not res!297405) (not e!290253))))

(assert (=> b!494686 (= res!297405 (validKeyInArray!0 (select (arr!15380 a!3235) j!176)))))

(declare-fun b!494687 () Bool)

(assert (=> b!494687 (= e!290253 e!290254)))

(declare-fun res!297409 () Bool)

(assert (=> b!494687 (=> (not res!297409) (not e!290254))))

(declare-fun lt!223998 () SeekEntryResult!3854)

(assert (=> b!494687 (= res!297409 (or (= lt!223998 (MissingZero!3854 i!1204)) (= lt!223998 (MissingVacant!3854 i!1204))))))

(assert (=> b!494687 (= lt!223998 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!297402 () Bool)

(assert (=> start!45092 (=> (not res!297402) (not e!290253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45092 (= res!297402 (validMask!0 mask!3524))))

(assert (=> start!45092 e!290253))

(assert (=> start!45092 true))

(declare-fun array_inv!11154 (array!31997) Bool)

(assert (=> start!45092 (array_inv!11154 a!3235)))

(declare-fun b!494688 () Bool)

(declare-fun res!297401 () Bool)

(assert (=> b!494688 (=> (not res!297401) (not e!290254))))

(declare-datatypes ((List!9591 0))(
  ( (Nil!9588) (Cons!9587 (h!10455 (_ BitVec 64)) (t!15827 List!9591)) )
))
(declare-fun arrayNoDuplicates!0 (array!31997 (_ BitVec 32) List!9591) Bool)

(assert (=> b!494688 (= res!297401 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9588))))

(declare-fun b!494689 () Bool)

(declare-fun res!297407 () Bool)

(assert (=> b!494689 (=> res!297407 e!290251)))

(assert (=> b!494689 (= res!297407 (or (not (is-Intermediate!3854 lt!223996)) (not (undefined!4666 lt!223996))))))

(declare-fun b!494690 () Bool)

(assert (=> b!494690 (= e!290251 true)))

(assert (=> b!494690 (= lt!223999 Undefined!3854)))

(assert (= (and start!45092 res!297402) b!494683))

(assert (= (and b!494683 res!297406) b!494686))

(assert (= (and b!494686 res!297405) b!494684))

(assert (= (and b!494684 res!297404) b!494681))

(assert (= (and b!494681 res!297403) b!494687))

(assert (= (and b!494687 res!297409) b!494685))

(assert (= (and b!494685 res!297408) b!494688))

(assert (= (and b!494688 res!297401) b!494682))

(assert (= (and b!494682 (not res!297410)) b!494689))

(assert (= (and b!494689 (not res!297407)) b!494690))

(declare-fun m!475849 () Bool)

(assert (=> b!494682 m!475849))

(declare-fun m!475851 () Bool)

(assert (=> b!494682 m!475851))

(declare-fun m!475853 () Bool)

(assert (=> b!494682 m!475853))

(declare-fun m!475855 () Bool)

(assert (=> b!494682 m!475855))

(declare-fun m!475857 () Bool)

(assert (=> b!494682 m!475857))

(assert (=> b!494682 m!475855))

(declare-fun m!475859 () Bool)

(assert (=> b!494682 m!475859))

(assert (=> b!494682 m!475855))

(declare-fun m!475861 () Bool)

(assert (=> b!494682 m!475861))

(assert (=> b!494682 m!475853))

(declare-fun m!475863 () Bool)

(assert (=> b!494682 m!475863))

(assert (=> b!494682 m!475853))

(declare-fun m!475865 () Bool)

(assert (=> b!494682 m!475865))

(assert (=> b!494682 m!475855))

(declare-fun m!475867 () Bool)

(assert (=> b!494682 m!475867))

(declare-fun m!475869 () Bool)

(assert (=> b!494688 m!475869))

(declare-fun m!475871 () Bool)

(assert (=> start!45092 m!475871))

(declare-fun m!475873 () Bool)

(assert (=> start!45092 m!475873))

(declare-fun m!475875 () Bool)

(assert (=> b!494687 m!475875))

(assert (=> b!494686 m!475855))

(assert (=> b!494686 m!475855))

(declare-fun m!475877 () Bool)

(assert (=> b!494686 m!475877))

(declare-fun m!475879 () Bool)

(assert (=> b!494684 m!475879))

(declare-fun m!475881 () Bool)

(assert (=> b!494681 m!475881))

(declare-fun m!475883 () Bool)

(assert (=> b!494685 m!475883))

(push 1)

