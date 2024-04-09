; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45086 () Bool)

(assert start!45086)

(declare-fun b!494591 () Bool)

(declare-fun e!290215 () Bool)

(declare-fun e!290217 () Bool)

(assert (=> b!494591 (= e!290215 e!290217)))

(declare-fun res!297316 () Bool)

(assert (=> b!494591 (=> (not res!297316) (not e!290217))))

(declare-datatypes ((SeekEntryResult!3851 0))(
  ( (MissingZero!3851 (index!17583 (_ BitVec 32))) (Found!3851 (index!17584 (_ BitVec 32))) (Intermediate!3851 (undefined!4663 Bool) (index!17585 (_ BitVec 32)) (x!46676 (_ BitVec 32))) (Undefined!3851) (MissingVacant!3851 (index!17586 (_ BitVec 32))) )
))
(declare-fun lt!223946 () SeekEntryResult!3851)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494591 (= res!297316 (or (= lt!223946 (MissingZero!3851 i!1204)) (= lt!223946 (MissingVacant!3851 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31991 0))(
  ( (array!31992 (arr!15377 (Array (_ BitVec 32) (_ BitVec 64))) (size!15741 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31991)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31991 (_ BitVec 32)) SeekEntryResult!3851)

(assert (=> b!494591 (= lt!223946 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494592 () Bool)

(declare-fun res!297319 () Bool)

(assert (=> b!494592 (=> (not res!297319) (not e!290215))))

(declare-fun arrayContainsKey!0 (array!31991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494592 (= res!297319 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494593 () Bool)

(declare-fun res!297311 () Bool)

(assert (=> b!494593 (=> (not res!297311) (not e!290217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31991 (_ BitVec 32)) Bool)

(assert (=> b!494593 (= res!297311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494594 () Bool)

(declare-fun res!297314 () Bool)

(assert (=> b!494594 (=> (not res!297314) (not e!290215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494594 (= res!297314 (validKeyInArray!0 k!2280))))

(declare-fun res!297313 () Bool)

(assert (=> start!45086 (=> (not res!297313) (not e!290215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45086 (= res!297313 (validMask!0 mask!3524))))

(assert (=> start!45086 e!290215))

(assert (=> start!45086 true))

(declare-fun array_inv!11151 (array!31991) Bool)

(assert (=> start!45086 (array_inv!11151 a!3235)))

(declare-fun b!494595 () Bool)

(declare-fun e!290218 () Bool)

(assert (=> b!494595 (= e!290217 (not e!290218))))

(declare-fun res!297318 () Bool)

(assert (=> b!494595 (=> res!297318 e!290218)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!223941 () (_ BitVec 32))

(declare-fun lt!223944 () SeekEntryResult!3851)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31991 (_ BitVec 32)) SeekEntryResult!3851)

(assert (=> b!494595 (= res!297318 (= lt!223944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223941 (select (store (arr!15377 a!3235) i!1204 k!2280) j!176) (array!31992 (store (arr!15377 a!3235) i!1204 k!2280) (size!15741 a!3235)) mask!3524)))))

(declare-fun lt!223943 () (_ BitVec 32))

(assert (=> b!494595 (= lt!223944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223943 (select (arr!15377 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494595 (= lt!223941 (toIndex!0 (select (store (arr!15377 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494595 (= lt!223943 (toIndex!0 (select (arr!15377 a!3235) j!176) mask!3524))))

(declare-fun lt!223945 () SeekEntryResult!3851)

(assert (=> b!494595 (= lt!223945 (Found!3851 j!176))))

(assert (=> b!494595 (= lt!223945 (seekEntryOrOpen!0 (select (arr!15377 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494595 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14640 0))(
  ( (Unit!14641) )
))
(declare-fun lt!223942 () Unit!14640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14640)

(assert (=> b!494595 (= lt!223942 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494596 () Bool)

(declare-fun res!297312 () Bool)

(assert (=> b!494596 (=> (not res!297312) (not e!290217))))

(declare-datatypes ((List!9588 0))(
  ( (Nil!9585) (Cons!9584 (h!10452 (_ BitVec 64)) (t!15824 List!9588)) )
))
(declare-fun arrayNoDuplicates!0 (array!31991 (_ BitVec 32) List!9588) Bool)

(assert (=> b!494596 (= res!297312 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9585))))

(declare-fun b!494597 () Bool)

(declare-fun res!297315 () Bool)

(assert (=> b!494597 (=> (not res!297315) (not e!290215))))

(assert (=> b!494597 (= res!297315 (and (= (size!15741 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15741 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15741 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494598 () Bool)

(assert (=> b!494598 (= e!290218 true)))

(assert (=> b!494598 (= lt!223945 Undefined!3851)))

(declare-fun b!494599 () Bool)

(declare-fun res!297320 () Bool)

(assert (=> b!494599 (=> (not res!297320) (not e!290215))))

(assert (=> b!494599 (= res!297320 (validKeyInArray!0 (select (arr!15377 a!3235) j!176)))))

(declare-fun b!494600 () Bool)

(declare-fun res!297317 () Bool)

(assert (=> b!494600 (=> res!297317 e!290218)))

(assert (=> b!494600 (= res!297317 (or (not (is-Intermediate!3851 lt!223944)) (not (undefined!4663 lt!223944))))))

(assert (= (and start!45086 res!297313) b!494597))

(assert (= (and b!494597 res!297315) b!494599))

(assert (= (and b!494599 res!297320) b!494594))

(assert (= (and b!494594 res!297314) b!494592))

(assert (= (and b!494592 res!297319) b!494591))

(assert (= (and b!494591 res!297316) b!494593))

(assert (= (and b!494593 res!297311) b!494596))

(assert (= (and b!494596 res!297312) b!494595))

(assert (= (and b!494595 (not res!297318)) b!494600))

(assert (= (and b!494600 (not res!297317)) b!494598))

(declare-fun m!475741 () Bool)

(assert (=> b!494592 m!475741))

(declare-fun m!475743 () Bool)

(assert (=> b!494596 m!475743))

(declare-fun m!475745 () Bool)

(assert (=> b!494595 m!475745))

(declare-fun m!475747 () Bool)

(assert (=> b!494595 m!475747))

(declare-fun m!475749 () Bool)

(assert (=> b!494595 m!475749))

(assert (=> b!494595 m!475749))

(declare-fun m!475751 () Bool)

(assert (=> b!494595 m!475751))

(declare-fun m!475753 () Bool)

(assert (=> b!494595 m!475753))

(declare-fun m!475755 () Bool)

(assert (=> b!494595 m!475755))

(assert (=> b!494595 m!475753))

(declare-fun m!475757 () Bool)

(assert (=> b!494595 m!475757))

(assert (=> b!494595 m!475753))

(declare-fun m!475759 () Bool)

(assert (=> b!494595 m!475759))

(assert (=> b!494595 m!475749))

(declare-fun m!475761 () Bool)

(assert (=> b!494595 m!475761))

(assert (=> b!494595 m!475753))

(declare-fun m!475763 () Bool)

(assert (=> b!494595 m!475763))

(declare-fun m!475765 () Bool)

(assert (=> b!494591 m!475765))

(assert (=> b!494599 m!475753))

(assert (=> b!494599 m!475753))

(declare-fun m!475767 () Bool)

(assert (=> b!494599 m!475767))

(declare-fun m!475769 () Bool)

(assert (=> b!494593 m!475769))

(declare-fun m!475771 () Bool)

(assert (=> b!494594 m!475771))

(declare-fun m!475773 () Bool)

(assert (=> start!45086 m!475773))

(declare-fun m!475775 () Bool)

(assert (=> start!45086 m!475775))

(push 1)

