; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49778 () Bool)

(assert start!49778)

(declare-fun b!546697 () Bool)

(declare-fun res!340562 () Bool)

(declare-fun e!315928 () Bool)

(assert (=> b!546697 (=> (not res!340562) (not e!315928))))

(declare-datatypes ((array!34470 0))(
  ( (array!34471 (arr!16557 (Array (_ BitVec 32) (_ BitVec 64))) (size!16921 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34470)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546697 (= res!340562 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546698 () Bool)

(declare-fun res!340561 () Bool)

(assert (=> b!546698 (=> (not res!340561) (not e!315928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546698 (= res!340561 (validKeyInArray!0 k!1914))))

(declare-fun b!546699 () Bool)

(declare-fun res!340565 () Bool)

(assert (=> b!546699 (=> (not res!340565) (not e!315928))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546699 (= res!340565 (and (= (size!16921 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16921 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16921 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546701 () Bool)

(assert (=> b!546701 (= e!315928 false)))

(declare-datatypes ((SeekEntryResult!5013 0))(
  ( (MissingZero!5013 (index!22279 (_ BitVec 32))) (Found!5013 (index!22280 (_ BitVec 32))) (Intermediate!5013 (undefined!5825 Bool) (index!22281 (_ BitVec 32)) (x!51260 (_ BitVec 32))) (Undefined!5013) (MissingVacant!5013 (index!22282 (_ BitVec 32))) )
))
(declare-fun lt!249347 () SeekEntryResult!5013)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34470 (_ BitVec 32)) SeekEntryResult!5013)

(assert (=> b!546701 (= lt!249347 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546700 () Bool)

(declare-fun res!340563 () Bool)

(assert (=> b!546700 (=> (not res!340563) (not e!315928))))

(assert (=> b!546700 (= res!340563 (validKeyInArray!0 (select (arr!16557 a!3118) j!142)))))

(declare-fun res!340564 () Bool)

(assert (=> start!49778 (=> (not res!340564) (not e!315928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49778 (= res!340564 (validMask!0 mask!3119))))

(assert (=> start!49778 e!315928))

(assert (=> start!49778 true))

(declare-fun array_inv!12331 (array!34470) Bool)

(assert (=> start!49778 (array_inv!12331 a!3118)))

(assert (= (and start!49778 res!340564) b!546699))

(assert (= (and b!546699 res!340565) b!546700))

(assert (= (and b!546700 res!340563) b!546698))

(assert (= (and b!546698 res!340561) b!546697))

(assert (= (and b!546697 res!340562) b!546701))

(declare-fun m!524119 () Bool)

(assert (=> b!546698 m!524119))

(declare-fun m!524121 () Bool)

(assert (=> start!49778 m!524121))

(declare-fun m!524123 () Bool)

(assert (=> start!49778 m!524123))

(declare-fun m!524125 () Bool)

(assert (=> b!546700 m!524125))

(assert (=> b!546700 m!524125))

(declare-fun m!524127 () Bool)

(assert (=> b!546700 m!524127))

(declare-fun m!524129 () Bool)

(assert (=> b!546701 m!524129))

(declare-fun m!524131 () Bool)

(assert (=> b!546697 m!524131))

(push 1)

(assert (not b!546700))

(assert (not b!546698))

(assert (not b!546701))

(assert (not b!546697))

(assert (not start!49778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

