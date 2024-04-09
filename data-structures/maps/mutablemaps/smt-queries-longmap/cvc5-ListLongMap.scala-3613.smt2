; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49766 () Bool)

(assert start!49766)

(declare-fun b!546607 () Bool)

(declare-fun res!340472 () Bool)

(declare-fun e!315891 () Bool)

(assert (=> b!546607 (=> (not res!340472) (not e!315891))))

(declare-datatypes ((array!34458 0))(
  ( (array!34459 (arr!16551 (Array (_ BitVec 32) (_ BitVec 64))) (size!16915 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34458)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546607 (= res!340472 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546608 () Bool)

(declare-fun res!340474 () Bool)

(assert (=> b!546608 (=> (not res!340474) (not e!315891))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546608 (= res!340474 (and (= (size!16915 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16915 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16915 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546609 () Bool)

(assert (=> b!546609 (= e!315891 false)))

(declare-datatypes ((SeekEntryResult!5007 0))(
  ( (MissingZero!5007 (index!22255 (_ BitVec 32))) (Found!5007 (index!22256 (_ BitVec 32))) (Intermediate!5007 (undefined!5819 Bool) (index!22257 (_ BitVec 32)) (x!51238 (_ BitVec 32))) (Undefined!5007) (MissingVacant!5007 (index!22258 (_ BitVec 32))) )
))
(declare-fun lt!249329 () SeekEntryResult!5007)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34458 (_ BitVec 32)) SeekEntryResult!5007)

(assert (=> b!546609 (= lt!249329 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!340475 () Bool)

(assert (=> start!49766 (=> (not res!340475) (not e!315891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49766 (= res!340475 (validMask!0 mask!3119))))

(assert (=> start!49766 e!315891))

(assert (=> start!49766 true))

(declare-fun array_inv!12325 (array!34458) Bool)

(assert (=> start!49766 (array_inv!12325 a!3118)))

(declare-fun b!546610 () Bool)

(declare-fun res!340473 () Bool)

(assert (=> b!546610 (=> (not res!340473) (not e!315891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546610 (= res!340473 (validKeyInArray!0 k!1914))))

(declare-fun b!546611 () Bool)

(declare-fun res!340471 () Bool)

(assert (=> b!546611 (=> (not res!340471) (not e!315891))))

(assert (=> b!546611 (= res!340471 (validKeyInArray!0 (select (arr!16551 a!3118) j!142)))))

(assert (= (and start!49766 res!340475) b!546608))

(assert (= (and b!546608 res!340474) b!546611))

(assert (= (and b!546611 res!340471) b!546610))

(assert (= (and b!546610 res!340473) b!546607))

(assert (= (and b!546607 res!340472) b!546609))

(declare-fun m!524035 () Bool)

(assert (=> b!546609 m!524035))

(declare-fun m!524037 () Bool)

(assert (=> b!546611 m!524037))

(assert (=> b!546611 m!524037))

(declare-fun m!524039 () Bool)

(assert (=> b!546611 m!524039))

(declare-fun m!524041 () Bool)

(assert (=> b!546607 m!524041))

(declare-fun m!524043 () Bool)

(assert (=> start!49766 m!524043))

(declare-fun m!524045 () Bool)

(assert (=> start!49766 m!524045))

(declare-fun m!524047 () Bool)

(assert (=> b!546610 m!524047))

(push 1)

(assert (not b!546610))

(assert (not b!546611))

(assert (not start!49766))

(assert (not b!546609))

(assert (not b!546607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

