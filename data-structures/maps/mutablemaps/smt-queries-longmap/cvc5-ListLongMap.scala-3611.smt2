; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49754 () Bool)

(assert start!49754)

(declare-fun b!546517 () Bool)

(declare-fun res!340383 () Bool)

(declare-fun e!315855 () Bool)

(assert (=> b!546517 (=> (not res!340383) (not e!315855))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546517 (= res!340383 (validKeyInArray!0 k!1914))))

(declare-fun b!546518 () Bool)

(declare-fun res!340384 () Bool)

(assert (=> b!546518 (=> (not res!340384) (not e!315855))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34446 0))(
  ( (array!34447 (arr!16545 (Array (_ BitVec 32) (_ BitVec 64))) (size!16909 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34446)

(assert (=> b!546518 (= res!340384 (and (= (size!16909 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16909 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16909 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340381 () Bool)

(assert (=> start!49754 (=> (not res!340381) (not e!315855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49754 (= res!340381 (validMask!0 mask!3119))))

(assert (=> start!49754 e!315855))

(assert (=> start!49754 true))

(declare-fun array_inv!12319 (array!34446) Bool)

(assert (=> start!49754 (array_inv!12319 a!3118)))

(declare-fun b!546519 () Bool)

(declare-fun res!340382 () Bool)

(assert (=> b!546519 (=> (not res!340382) (not e!315855))))

(declare-fun arrayContainsKey!0 (array!34446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546519 (= res!340382 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546520 () Bool)

(declare-fun res!340385 () Bool)

(assert (=> b!546520 (=> (not res!340385) (not e!315855))))

(assert (=> b!546520 (= res!340385 (validKeyInArray!0 (select (arr!16545 a!3118) j!142)))))

(declare-fun b!546521 () Bool)

(assert (=> b!546521 (= e!315855 false)))

(declare-datatypes ((SeekEntryResult!5001 0))(
  ( (MissingZero!5001 (index!22231 (_ BitVec 32))) (Found!5001 (index!22232 (_ BitVec 32))) (Intermediate!5001 (undefined!5813 Bool) (index!22233 (_ BitVec 32)) (x!51216 (_ BitVec 32))) (Undefined!5001) (MissingVacant!5001 (index!22234 (_ BitVec 32))) )
))
(declare-fun lt!249311 () SeekEntryResult!5001)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34446 (_ BitVec 32)) SeekEntryResult!5001)

(assert (=> b!546521 (= lt!249311 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!49754 res!340381) b!546518))

(assert (= (and b!546518 res!340384) b!546520))

(assert (= (and b!546520 res!340385) b!546517))

(assert (= (and b!546517 res!340383) b!546519))

(assert (= (and b!546519 res!340382) b!546521))

(declare-fun m!523951 () Bool)

(assert (=> start!49754 m!523951))

(declare-fun m!523953 () Bool)

(assert (=> start!49754 m!523953))

(declare-fun m!523955 () Bool)

(assert (=> b!546519 m!523955))

(declare-fun m!523957 () Bool)

(assert (=> b!546521 m!523957))

(declare-fun m!523959 () Bool)

(assert (=> b!546517 m!523959))

(declare-fun m!523961 () Bool)

(assert (=> b!546520 m!523961))

(assert (=> b!546520 m!523961))

(declare-fun m!523963 () Bool)

(assert (=> b!546520 m!523963))

(push 1)

(assert (not b!546519))

(assert (not start!49754))

(assert (not b!546517))

(assert (not b!546521))

(assert (not b!546520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

