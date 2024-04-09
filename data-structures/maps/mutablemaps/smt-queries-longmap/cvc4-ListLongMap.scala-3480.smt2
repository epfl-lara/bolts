; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48242 () Bool)

(assert start!48242)

(declare-fun b!530698 () Bool)

(declare-fun res!326555 () Bool)

(declare-fun e!309136 () Bool)

(assert (=> b!530698 (=> (not res!326555) (not e!309136))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33623 0))(
  ( (array!33624 (arr!16154 (Array (_ BitVec 32) (_ BitVec 64))) (size!16518 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33623)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530698 (= res!326555 (and (= (size!16518 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16518 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16518 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326556 () Bool)

(assert (=> start!48242 (=> (not res!326556) (not e!309136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48242 (= res!326556 (validMask!0 mask!3216))))

(assert (=> start!48242 e!309136))

(assert (=> start!48242 true))

(declare-fun array_inv!11928 (array!33623) Bool)

(assert (=> start!48242 (array_inv!11928 a!3154)))

(declare-fun b!530699 () Bool)

(declare-fun res!326557 () Bool)

(assert (=> b!530699 (=> (not res!326557) (not e!309136))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530699 (= res!326557 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!4619 0))(
  ( (MissingZero!4619 (index!20700 (_ BitVec 32))) (Found!4619 (index!20701 (_ BitVec 32))) (Intermediate!4619 (undefined!5431 Bool) (index!20702 (_ BitVec 32)) (x!49708 (_ BitVec 32))) (Undefined!4619) (MissingVacant!4619 (index!20703 (_ BitVec 32))) )
))
(declare-fun lt!244781 () SeekEntryResult!4619)

(declare-fun b!530700 () Bool)

(assert (=> b!530700 (= e!309136 (and (or (= lt!244781 (MissingZero!4619 i!1153)) (= lt!244781 (MissingVacant!4619 i!1153))) (bvsgt #b00000000000000000000000000000000 (size!16518 a!3154))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33623 (_ BitVec 32)) SeekEntryResult!4619)

(assert (=> b!530700 (= lt!244781 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530701 () Bool)

(declare-fun res!326554 () Bool)

(assert (=> b!530701 (=> (not res!326554) (not e!309136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530701 (= res!326554 (validKeyInArray!0 k!1998))))

(declare-fun b!530702 () Bool)

(declare-fun res!326558 () Bool)

(assert (=> b!530702 (=> (not res!326558) (not e!309136))))

(assert (=> b!530702 (= res!326558 (validKeyInArray!0 (select (arr!16154 a!3154) j!147)))))

(assert (= (and start!48242 res!326556) b!530698))

(assert (= (and b!530698 res!326555) b!530702))

(assert (= (and b!530702 res!326558) b!530701))

(assert (= (and b!530701 res!326554) b!530699))

(assert (= (and b!530699 res!326557) b!530700))

(declare-fun m!511277 () Bool)

(assert (=> b!530700 m!511277))

(declare-fun m!511279 () Bool)

(assert (=> b!530702 m!511279))

(assert (=> b!530702 m!511279))

(declare-fun m!511281 () Bool)

(assert (=> b!530702 m!511281))

(declare-fun m!511283 () Bool)

(assert (=> b!530701 m!511283))

(declare-fun m!511285 () Bool)

(assert (=> start!48242 m!511285))

(declare-fun m!511287 () Bool)

(assert (=> start!48242 m!511287))

(declare-fun m!511289 () Bool)

(assert (=> b!530699 m!511289))

(push 1)

(assert (not b!530700))

(assert (not b!530701))

(assert (not b!530699))

(assert (not b!530702))

(assert (not start!48242))

(check-sat)

