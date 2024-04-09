; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49788 () Bool)

(assert start!49788)

(declare-fun e!315958 () Bool)

(declare-datatypes ((SeekEntryResult!5018 0))(
  ( (MissingZero!5018 (index!22299 (_ BitVec 32))) (Found!5018 (index!22300 (_ BitVec 32))) (Intermediate!5018 (undefined!5830 Bool) (index!22301 (_ BitVec 32)) (x!51273 (_ BitVec 32))) (Undefined!5018) (MissingVacant!5018 (index!22302 (_ BitVec 32))) )
))
(declare-fun lt!249362 () SeekEntryResult!5018)

(declare-fun b!546772 () Bool)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34480 0))(
  ( (array!34481 (arr!16562 (Array (_ BitVec 32) (_ BitVec 64))) (size!16926 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34480)

(assert (=> b!546772 (= e!315958 (and (or (= lt!249362 (MissingZero!5018 i!1132)) (= lt!249362 (MissingVacant!5018 i!1132))) (bvsgt #b00000000000000000000000000000000 (size!16926 a!3118))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34480 (_ BitVec 32)) SeekEntryResult!5018)

(assert (=> b!546772 (= lt!249362 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546773 () Bool)

(declare-fun res!340640 () Bool)

(assert (=> b!546773 (=> (not res!340640) (not e!315958))))

(declare-fun arrayContainsKey!0 (array!34480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546773 (= res!340640 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546774 () Bool)

(declare-fun res!340638 () Bool)

(assert (=> b!546774 (=> (not res!340638) (not e!315958))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546774 (= res!340638 (and (= (size!16926 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16926 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16926 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340637 () Bool)

(assert (=> start!49788 (=> (not res!340637) (not e!315958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49788 (= res!340637 (validMask!0 mask!3119))))

(assert (=> start!49788 e!315958))

(assert (=> start!49788 true))

(declare-fun array_inv!12336 (array!34480) Bool)

(assert (=> start!49788 (array_inv!12336 a!3118)))

(declare-fun b!546775 () Bool)

(declare-fun res!340636 () Bool)

(assert (=> b!546775 (=> (not res!340636) (not e!315958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546775 (= res!340636 (validKeyInArray!0 (select (arr!16562 a!3118) j!142)))))

(declare-fun b!546776 () Bool)

(declare-fun res!340639 () Bool)

(assert (=> b!546776 (=> (not res!340639) (not e!315958))))

(assert (=> b!546776 (= res!340639 (validKeyInArray!0 k!1914))))

(assert (= (and start!49788 res!340637) b!546774))

(assert (= (and b!546774 res!340638) b!546775))

(assert (= (and b!546775 res!340636) b!546776))

(assert (= (and b!546776 res!340639) b!546773))

(assert (= (and b!546773 res!340640) b!546772))

(declare-fun m!524189 () Bool)

(assert (=> b!546772 m!524189))

(declare-fun m!524191 () Bool)

(assert (=> b!546776 m!524191))

(declare-fun m!524193 () Bool)

(assert (=> start!49788 m!524193))

(declare-fun m!524195 () Bool)

(assert (=> start!49788 m!524195))

(declare-fun m!524197 () Bool)

(assert (=> b!546775 m!524197))

(assert (=> b!546775 m!524197))

(declare-fun m!524199 () Bool)

(assert (=> b!546775 m!524199))

(declare-fun m!524201 () Bool)

(assert (=> b!546773 m!524201))

(push 1)

(assert (not start!49788))

(assert (not b!546775))

(assert (not b!546776))

