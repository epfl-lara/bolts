; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49764 () Bool)

(assert start!49764)

(declare-fun b!546592 () Bool)

(declare-fun res!340456 () Bool)

(declare-fun e!315885 () Bool)

(assert (=> b!546592 (=> (not res!340456) (not e!315885))))

(declare-datatypes ((array!34456 0))(
  ( (array!34457 (arr!16550 (Array (_ BitVec 32) (_ BitVec 64))) (size!16914 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34456)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546592 (= res!340456 (validKeyInArray!0 (select (arr!16550 a!3118) j!142)))))

(declare-fun b!546593 () Bool)

(assert (=> b!546593 (= e!315885 false)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5006 0))(
  ( (MissingZero!5006 (index!22251 (_ BitVec 32))) (Found!5006 (index!22252 (_ BitVec 32))) (Intermediate!5006 (undefined!5818 Bool) (index!22253 (_ BitVec 32)) (x!51229 (_ BitVec 32))) (Undefined!5006) (MissingVacant!5006 (index!22254 (_ BitVec 32))) )
))
(declare-fun lt!249326 () SeekEntryResult!5006)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34456 (_ BitVec 32)) SeekEntryResult!5006)

(assert (=> b!546593 (= lt!249326 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546594 () Bool)

(declare-fun res!340458 () Bool)

(assert (=> b!546594 (=> (not res!340458) (not e!315885))))

(assert (=> b!546594 (= res!340458 (validKeyInArray!0 k!1914))))

(declare-fun b!546595 () Bool)

(declare-fun res!340459 () Bool)

(assert (=> b!546595 (=> (not res!340459) (not e!315885))))

(declare-fun arrayContainsKey!0 (array!34456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546595 (= res!340459 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340457 () Bool)

(assert (=> start!49764 (=> (not res!340457) (not e!315885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49764 (= res!340457 (validMask!0 mask!3119))))

(assert (=> start!49764 e!315885))

(assert (=> start!49764 true))

(declare-fun array_inv!12324 (array!34456) Bool)

(assert (=> start!49764 (array_inv!12324 a!3118)))

(declare-fun b!546596 () Bool)

(declare-fun res!340460 () Bool)

(assert (=> b!546596 (=> (not res!340460) (not e!315885))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546596 (= res!340460 (and (= (size!16914 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16914 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16914 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!49764 res!340457) b!546596))

(assert (= (and b!546596 res!340460) b!546592))

(assert (= (and b!546592 res!340456) b!546594))

(assert (= (and b!546594 res!340458) b!546595))

(assert (= (and b!546595 res!340459) b!546593))

(declare-fun m!524021 () Bool)

(assert (=> b!546594 m!524021))

(declare-fun m!524023 () Bool)

(assert (=> b!546593 m!524023))

(declare-fun m!524025 () Bool)

(assert (=> b!546592 m!524025))

(assert (=> b!546592 m!524025))

(declare-fun m!524027 () Bool)

(assert (=> b!546592 m!524027))

(declare-fun m!524029 () Bool)

(assert (=> start!49764 m!524029))

(declare-fun m!524031 () Bool)

(assert (=> start!49764 m!524031))

(declare-fun m!524033 () Bool)

(assert (=> b!546595 m!524033))

(push 1)

(assert (not b!546592))

(assert (not b!546594))

(assert (not b!546595))

(assert (not b!546593))

(assert (not start!49764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

