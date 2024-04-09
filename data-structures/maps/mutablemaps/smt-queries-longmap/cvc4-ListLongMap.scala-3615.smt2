; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49782 () Bool)

(assert start!49782)

(declare-fun res!340595 () Bool)

(declare-fun e!315940 () Bool)

(assert (=> start!49782 (=> (not res!340595) (not e!315940))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49782 (= res!340595 (validMask!0 mask!3119))))

(assert (=> start!49782 e!315940))

(assert (=> start!49782 true))

(declare-datatypes ((array!34474 0))(
  ( (array!34475 (arr!16559 (Array (_ BitVec 32) (_ BitVec 64))) (size!16923 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34474)

(declare-fun array_inv!12333 (array!34474) Bool)

(assert (=> start!49782 (array_inv!12333 a!3118)))

(declare-fun b!546727 () Bool)

(declare-fun res!340593 () Bool)

(assert (=> b!546727 (=> (not res!340593) (not e!315940))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546727 (= res!340593 (validKeyInArray!0 k!1914))))

(declare-fun b!546728 () Bool)

(declare-fun res!340592 () Bool)

(assert (=> b!546728 (=> (not res!340592) (not e!315940))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546728 (= res!340592 (and (= (size!16923 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16923 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16923 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546729 () Bool)

(assert (=> b!546729 (= e!315940 false)))

(declare-datatypes ((SeekEntryResult!5015 0))(
  ( (MissingZero!5015 (index!22287 (_ BitVec 32))) (Found!5015 (index!22288 (_ BitVec 32))) (Intermediate!5015 (undefined!5827 Bool) (index!22289 (_ BitVec 32)) (x!51262 (_ BitVec 32))) (Undefined!5015) (MissingVacant!5015 (index!22290 (_ BitVec 32))) )
))
(declare-fun lt!249353 () SeekEntryResult!5015)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34474 (_ BitVec 32)) SeekEntryResult!5015)

(assert (=> b!546729 (= lt!249353 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546730 () Bool)

(declare-fun res!340591 () Bool)

(assert (=> b!546730 (=> (not res!340591) (not e!315940))))

(declare-fun arrayContainsKey!0 (array!34474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546730 (= res!340591 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546731 () Bool)

(declare-fun res!340594 () Bool)

(assert (=> b!546731 (=> (not res!340594) (not e!315940))))

(assert (=> b!546731 (= res!340594 (validKeyInArray!0 (select (arr!16559 a!3118) j!142)))))

(assert (= (and start!49782 res!340595) b!546728))

(assert (= (and b!546728 res!340592) b!546731))

(assert (= (and b!546731 res!340594) b!546727))

(assert (= (and b!546727 res!340593) b!546730))

(assert (= (and b!546730 res!340591) b!546729))

(declare-fun m!524147 () Bool)

(assert (=> b!546731 m!524147))

(assert (=> b!546731 m!524147))

(declare-fun m!524149 () Bool)

(assert (=> b!546731 m!524149))

(declare-fun m!524151 () Bool)

(assert (=> b!546729 m!524151))

(declare-fun m!524153 () Bool)

(assert (=> b!546727 m!524153))

(declare-fun m!524155 () Bool)

(assert (=> b!546730 m!524155))

(declare-fun m!524157 () Bool)

(assert (=> start!49782 m!524157))

(declare-fun m!524159 () Bool)

(assert (=> start!49782 m!524159))

(push 1)

(assert (not start!49782))

(assert (not b!546729))

(assert (not b!546730))

(assert (not b!546727))

(assert (not b!546731))

(check-sat)

(pop 1)

