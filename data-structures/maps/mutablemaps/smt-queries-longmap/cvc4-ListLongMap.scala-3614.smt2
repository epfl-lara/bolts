; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49776 () Bool)

(assert start!49776)

(declare-fun b!546682 () Bool)

(declare-fun res!340547 () Bool)

(declare-fun e!315922 () Bool)

(assert (=> b!546682 (=> (not res!340547) (not e!315922))))

(declare-datatypes ((array!34468 0))(
  ( (array!34469 (arr!16556 (Array (_ BitVec 32) (_ BitVec 64))) (size!16920 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34468)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546682 (= res!340547 (validKeyInArray!0 (select (arr!16556 a!3118) j!142)))))

(declare-fun b!546683 () Bool)

(declare-fun res!340549 () Bool)

(assert (=> b!546683 (=> (not res!340549) (not e!315922))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!546683 (= res!340549 (validKeyInArray!0 k!1914))))

(declare-fun b!546684 () Bool)

(declare-fun res!340546 () Bool)

(assert (=> b!546684 (=> (not res!340546) (not e!315922))))

(declare-fun arrayContainsKey!0 (array!34468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546684 (= res!340546 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546685 () Bool)

(assert (=> b!546685 (= e!315922 false)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5012 0))(
  ( (MissingZero!5012 (index!22275 (_ BitVec 32))) (Found!5012 (index!22276 (_ BitVec 32))) (Intermediate!5012 (undefined!5824 Bool) (index!22277 (_ BitVec 32)) (x!51251 (_ BitVec 32))) (Undefined!5012) (MissingVacant!5012 (index!22278 (_ BitVec 32))) )
))
(declare-fun lt!249344 () SeekEntryResult!5012)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34468 (_ BitVec 32)) SeekEntryResult!5012)

(assert (=> b!546685 (= lt!249344 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546686 () Bool)

(declare-fun res!340550 () Bool)

(assert (=> b!546686 (=> (not res!340550) (not e!315922))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546686 (= res!340550 (and (= (size!16920 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16920 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16920 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340548 () Bool)

(assert (=> start!49776 (=> (not res!340548) (not e!315922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49776 (= res!340548 (validMask!0 mask!3119))))

(assert (=> start!49776 e!315922))

(assert (=> start!49776 true))

(declare-fun array_inv!12330 (array!34468) Bool)

(assert (=> start!49776 (array_inv!12330 a!3118)))

(assert (= (and start!49776 res!340548) b!546686))

(assert (= (and b!546686 res!340550) b!546682))

(assert (= (and b!546682 res!340547) b!546683))

(assert (= (and b!546683 res!340549) b!546684))

(assert (= (and b!546684 res!340546) b!546685))

(declare-fun m!524105 () Bool)

(assert (=> start!49776 m!524105))

(declare-fun m!524107 () Bool)

(assert (=> start!49776 m!524107))

(declare-fun m!524109 () Bool)

(assert (=> b!546683 m!524109))

(declare-fun m!524111 () Bool)

(assert (=> b!546684 m!524111))

(declare-fun m!524113 () Bool)

(assert (=> b!546682 m!524113))

(assert (=> b!546682 m!524113))

(declare-fun m!524115 () Bool)

(assert (=> b!546682 m!524115))

(declare-fun m!524117 () Bool)

(assert (=> b!546685 m!524117))

(push 1)

(assert (not b!546685))

(assert (not start!49776))

(assert (not b!546684))

(assert (not b!546682))

(assert (not b!546683))

(check-sat)

