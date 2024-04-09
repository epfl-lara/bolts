; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49784 () Bool)

(assert start!49784)

(declare-fun b!546742 () Bool)

(declare-fun res!340606 () Bool)

(declare-fun e!315946 () Bool)

(assert (=> b!546742 (=> (not res!340606) (not e!315946))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34476 0))(
  ( (array!34477 (arr!16560 (Array (_ BitVec 32) (_ BitVec 64))) (size!16924 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34476)

(assert (=> b!546742 (= res!340606 (and (= (size!16924 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16924 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16924 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546743 () Bool)

(declare-fun res!340610 () Bool)

(assert (=> b!546743 (=> (not res!340610) (not e!315946))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546743 (= res!340610 (validKeyInArray!0 k!1914))))

(declare-fun b!546744 () Bool)

(declare-fun res!340608 () Bool)

(assert (=> b!546744 (=> (not res!340608) (not e!315946))))

(declare-fun arrayContainsKey!0 (array!34476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546744 (= res!340608 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546745 () Bool)

(declare-fun res!340609 () Bool)

(assert (=> b!546745 (=> (not res!340609) (not e!315946))))

(assert (=> b!546745 (= res!340609 (validKeyInArray!0 (select (arr!16560 a!3118) j!142)))))

(declare-fun res!340607 () Bool)

(assert (=> start!49784 (=> (not res!340607) (not e!315946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49784 (= res!340607 (validMask!0 mask!3119))))

(assert (=> start!49784 e!315946))

(assert (=> start!49784 true))

(declare-fun array_inv!12334 (array!34476) Bool)

(assert (=> start!49784 (array_inv!12334 a!3118)))

(declare-datatypes ((SeekEntryResult!5016 0))(
  ( (MissingZero!5016 (index!22291 (_ BitVec 32))) (Found!5016 (index!22292 (_ BitVec 32))) (Intermediate!5016 (undefined!5828 Bool) (index!22293 (_ BitVec 32)) (x!51271 (_ BitVec 32))) (Undefined!5016) (MissingVacant!5016 (index!22294 (_ BitVec 32))) )
))
(declare-fun lt!249356 () SeekEntryResult!5016)

(declare-fun b!546746 () Bool)

(assert (=> b!546746 (= e!315946 (and (or (= lt!249356 (MissingZero!5016 i!1132)) (= lt!249356 (MissingVacant!5016 i!1132))) (bvsgt #b00000000000000000000000000000000 (size!16924 a!3118))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34476 (_ BitVec 32)) SeekEntryResult!5016)

(assert (=> b!546746 (= lt!249356 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!49784 res!340607) b!546742))

(assert (= (and b!546742 res!340606) b!546745))

(assert (= (and b!546745 res!340609) b!546743))

(assert (= (and b!546743 res!340610) b!546744))

(assert (= (and b!546744 res!340608) b!546746))

(declare-fun m!524161 () Bool)

(assert (=> b!546743 m!524161))

(declare-fun m!524163 () Bool)

(assert (=> start!49784 m!524163))

(declare-fun m!524165 () Bool)

(assert (=> start!49784 m!524165))

(declare-fun m!524167 () Bool)

(assert (=> b!546746 m!524167))

(declare-fun m!524169 () Bool)

(assert (=> b!546745 m!524169))

(assert (=> b!546745 m!524169))

(declare-fun m!524171 () Bool)

(assert (=> b!546745 m!524171))

(declare-fun m!524173 () Bool)

(assert (=> b!546744 m!524173))

(push 1)

(assert (not b!546745))

(assert (not b!546743))

