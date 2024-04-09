; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49770 () Bool)

(assert start!49770)

(declare-fun b!546637 () Bool)

(declare-fun res!340501 () Bool)

(declare-fun e!315903 () Bool)

(assert (=> b!546637 (=> (not res!340501) (not e!315903))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34462 0))(
  ( (array!34463 (arr!16553 (Array (_ BitVec 32) (_ BitVec 64))) (size!16917 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34462)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!546637 (= res!340501 (and (= (size!16917 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16917 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16917 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340504 () Bool)

(assert (=> start!49770 (=> (not res!340504) (not e!315903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49770 (= res!340504 (validMask!0 mask!3119))))

(assert (=> start!49770 e!315903))

(assert (=> start!49770 true))

(declare-fun array_inv!12327 (array!34462) Bool)

(assert (=> start!49770 (array_inv!12327 a!3118)))

(declare-fun b!546638 () Bool)

(assert (=> b!546638 (= e!315903 false)))

(declare-datatypes ((SeekEntryResult!5009 0))(
  ( (MissingZero!5009 (index!22263 (_ BitVec 32))) (Found!5009 (index!22264 (_ BitVec 32))) (Intermediate!5009 (undefined!5821 Bool) (index!22265 (_ BitVec 32)) (x!51240 (_ BitVec 32))) (Undefined!5009) (MissingVacant!5009 (index!22266 (_ BitVec 32))) )
))
(declare-fun lt!249335 () SeekEntryResult!5009)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34462 (_ BitVec 32)) SeekEntryResult!5009)

(assert (=> b!546638 (= lt!249335 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546639 () Bool)

(declare-fun res!340505 () Bool)

(assert (=> b!546639 (=> (not res!340505) (not e!315903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546639 (= res!340505 (validKeyInArray!0 (select (arr!16553 a!3118) j!142)))))

(declare-fun b!546640 () Bool)

(declare-fun res!340502 () Bool)

(assert (=> b!546640 (=> (not res!340502) (not e!315903))))

(assert (=> b!546640 (= res!340502 (validKeyInArray!0 k!1914))))

(declare-fun b!546641 () Bool)

(declare-fun res!340503 () Bool)

(assert (=> b!546641 (=> (not res!340503) (not e!315903))))

(declare-fun arrayContainsKey!0 (array!34462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546641 (= res!340503 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!49770 res!340504) b!546637))

(assert (= (and b!546637 res!340501) b!546639))

(assert (= (and b!546639 res!340505) b!546640))

(assert (= (and b!546640 res!340502) b!546641))

(assert (= (and b!546641 res!340503) b!546638))

(declare-fun m!524063 () Bool)

(assert (=> b!546638 m!524063))

(declare-fun m!524065 () Bool)

(assert (=> b!546640 m!524065))

(declare-fun m!524067 () Bool)

(assert (=> start!49770 m!524067))

(declare-fun m!524069 () Bool)

(assert (=> start!49770 m!524069))

(declare-fun m!524071 () Bool)

(assert (=> b!546641 m!524071))

(declare-fun m!524073 () Bool)

(assert (=> b!546639 m!524073))

(assert (=> b!546639 m!524073))

(declare-fun m!524075 () Bool)

(assert (=> b!546639 m!524075))

(push 1)

(assert (not b!546641))

(assert (not b!546638))

(assert (not start!49770))

(assert (not b!546640))

(assert (not b!546639))

(check-sat)

(pop 1)

