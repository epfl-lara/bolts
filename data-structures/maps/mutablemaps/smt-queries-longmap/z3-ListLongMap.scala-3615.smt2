; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49780 () Bool)

(assert start!49780)

(declare-fun b!546712 () Bool)

(declare-fun res!340576 () Bool)

(declare-fun e!315933 () Bool)

(assert (=> b!546712 (=> (not res!340576) (not e!315933))))

(declare-datatypes ((array!34472 0))(
  ( (array!34473 (arr!16558 (Array (_ BitVec 32) (_ BitVec 64))) (size!16922 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34472)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546712 (= res!340576 (validKeyInArray!0 (select (arr!16558 a!3118) j!142)))))

(declare-fun res!340578 () Bool)

(assert (=> start!49780 (=> (not res!340578) (not e!315933))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49780 (= res!340578 (validMask!0 mask!3119))))

(assert (=> start!49780 e!315933))

(assert (=> start!49780 true))

(declare-fun array_inv!12332 (array!34472) Bool)

(assert (=> start!49780 (array_inv!12332 a!3118)))

(declare-fun b!546713 () Bool)

(declare-fun res!340580 () Bool)

(assert (=> b!546713 (=> (not res!340580) (not e!315933))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!546713 (= res!340580 (validKeyInArray!0 k0!1914))))

(declare-fun b!546714 () Bool)

(declare-fun res!340579 () Bool)

(assert (=> b!546714 (=> (not res!340579) (not e!315933))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546714 (= res!340579 (and (= (size!16922 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16922 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16922 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546715 () Bool)

(declare-fun res!340577 () Bool)

(assert (=> b!546715 (=> (not res!340577) (not e!315933))))

(declare-fun arrayContainsKey!0 (array!34472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546715 (= res!340577 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546716 () Bool)

(assert (=> b!546716 (= e!315933 false)))

(declare-datatypes ((SeekEntryResult!5014 0))(
  ( (MissingZero!5014 (index!22283 (_ BitVec 32))) (Found!5014 (index!22284 (_ BitVec 32))) (Intermediate!5014 (undefined!5826 Bool) (index!22285 (_ BitVec 32)) (x!51261 (_ BitVec 32))) (Undefined!5014) (MissingVacant!5014 (index!22286 (_ BitVec 32))) )
))
(declare-fun lt!249350 () SeekEntryResult!5014)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34472 (_ BitVec 32)) SeekEntryResult!5014)

(assert (=> b!546716 (= lt!249350 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!49780 res!340578) b!546714))

(assert (= (and b!546714 res!340579) b!546712))

(assert (= (and b!546712 res!340576) b!546713))

(assert (= (and b!546713 res!340580) b!546715))

(assert (= (and b!546715 res!340577) b!546716))

(declare-fun m!524133 () Bool)

(assert (=> b!546713 m!524133))

(declare-fun m!524135 () Bool)

(assert (=> b!546712 m!524135))

(assert (=> b!546712 m!524135))

(declare-fun m!524137 () Bool)

(assert (=> b!546712 m!524137))

(declare-fun m!524139 () Bool)

(assert (=> start!49780 m!524139))

(declare-fun m!524141 () Bool)

(assert (=> start!49780 m!524141))

(declare-fun m!524143 () Bool)

(assert (=> b!546715 m!524143))

(declare-fun m!524145 () Bool)

(assert (=> b!546716 m!524145))

(check-sat (not b!546712) (not start!49780) (not b!546715) (not b!546716) (not b!546713))
