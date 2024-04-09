; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49758 () Bool)

(assert start!49758)

(declare-fun b!546547 () Bool)

(declare-fun res!340411 () Bool)

(declare-fun e!315868 () Bool)

(assert (=> b!546547 (=> (not res!340411) (not e!315868))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34450 0))(
  ( (array!34451 (arr!16547 (Array (_ BitVec 32) (_ BitVec 64))) (size!16911 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34450)

(assert (=> b!546547 (= res!340411 (and (= (size!16911 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16911 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16911 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546548 () Bool)

(assert (=> b!546548 (= e!315868 false)))

(declare-datatypes ((SeekEntryResult!5003 0))(
  ( (MissingZero!5003 (index!22239 (_ BitVec 32))) (Found!5003 (index!22240 (_ BitVec 32))) (Intermediate!5003 (undefined!5815 Bool) (index!22241 (_ BitVec 32)) (x!51218 (_ BitVec 32))) (Undefined!5003) (MissingVacant!5003 (index!22242 (_ BitVec 32))) )
))
(declare-fun lt!249317 () SeekEntryResult!5003)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34450 (_ BitVec 32)) SeekEntryResult!5003)

(assert (=> b!546548 (= lt!249317 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546550 () Bool)

(declare-fun res!340413 () Bool)

(assert (=> b!546550 (=> (not res!340413) (not e!315868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546550 (= res!340413 (validKeyInArray!0 (select (arr!16547 a!3118) j!142)))))

(declare-fun b!546551 () Bool)

(declare-fun res!340412 () Bool)

(assert (=> b!546551 (=> (not res!340412) (not e!315868))))

(assert (=> b!546551 (= res!340412 (validKeyInArray!0 k!1914))))

(declare-fun b!546549 () Bool)

(declare-fun res!340415 () Bool)

(assert (=> b!546549 (=> (not res!340415) (not e!315868))))

(declare-fun arrayContainsKey!0 (array!34450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546549 (= res!340415 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340414 () Bool)

(assert (=> start!49758 (=> (not res!340414) (not e!315868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49758 (= res!340414 (validMask!0 mask!3119))))

(assert (=> start!49758 e!315868))

(assert (=> start!49758 true))

(declare-fun array_inv!12321 (array!34450) Bool)

(assert (=> start!49758 (array_inv!12321 a!3118)))

(assert (= (and start!49758 res!340414) b!546547))

(assert (= (and b!546547 res!340411) b!546550))

(assert (= (and b!546550 res!340413) b!546551))

(assert (= (and b!546551 res!340412) b!546549))

(assert (= (and b!546549 res!340415) b!546548))

(declare-fun m!523979 () Bool)

(assert (=> b!546549 m!523979))

(declare-fun m!523981 () Bool)

(assert (=> b!546548 m!523981))

(declare-fun m!523983 () Bool)

(assert (=> start!49758 m!523983))

(declare-fun m!523985 () Bool)

(assert (=> start!49758 m!523985))

(declare-fun m!523987 () Bool)

(assert (=> b!546550 m!523987))

(assert (=> b!546550 m!523987))

(declare-fun m!523989 () Bool)

(assert (=> b!546550 m!523989))

(declare-fun m!523991 () Bool)

(assert (=> b!546551 m!523991))

(push 1)

(assert (not start!49758))

(assert (not b!546549))

(assert (not b!546548))

(assert (not b!546550))

(assert (not b!546551))

(check-sat)

