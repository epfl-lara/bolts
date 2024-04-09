; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49744 () Bool)

(assert start!49744)

(declare-fun b!546433 () Bool)

(declare-fun res!340300 () Bool)

(declare-fun e!315826 () Bool)

(assert (=> b!546433 (=> (not res!340300) (not e!315826))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546433 (= res!340300 (validKeyInArray!0 k0!1914))))

(declare-fun b!546434 () Bool)

(declare-fun res!340297 () Bool)

(assert (=> b!546434 (=> (not res!340297) (not e!315826))))

(declare-datatypes ((array!34436 0))(
  ( (array!34437 (arr!16540 (Array (_ BitVec 32) (_ BitVec 64))) (size!16904 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34436)

(declare-fun arrayContainsKey!0 (array!34436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546434 (= res!340297 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546435 () Bool)

(declare-fun res!340301 () Bool)

(assert (=> b!546435 (=> (not res!340301) (not e!315826))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546435 (= res!340301 (and (= (size!16904 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16904 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16904 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546436 () Bool)

(declare-fun res!340299 () Bool)

(assert (=> b!546436 (=> (not res!340299) (not e!315826))))

(assert (=> b!546436 (= res!340299 (validKeyInArray!0 (select (arr!16540 a!3118) j!142)))))

(declare-fun res!340298 () Bool)

(assert (=> start!49744 (=> (not res!340298) (not e!315826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49744 (= res!340298 (validMask!0 mask!3119))))

(assert (=> start!49744 e!315826))

(assert (=> start!49744 true))

(declare-fun array_inv!12314 (array!34436) Bool)

(assert (=> start!49744 (array_inv!12314 a!3118)))

(declare-fun b!546437 () Bool)

(assert (=> b!546437 (= e!315826 false)))

(declare-datatypes ((SeekEntryResult!4996 0))(
  ( (MissingZero!4996 (index!22211 (_ BitVec 32))) (Found!4996 (index!22212 (_ BitVec 32))) (Intermediate!4996 (undefined!5808 Bool) (index!22213 (_ BitVec 32)) (x!51195 (_ BitVec 32))) (Undefined!4996) (MissingVacant!4996 (index!22214 (_ BitVec 32))) )
))
(declare-fun lt!249305 () SeekEntryResult!4996)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34436 (_ BitVec 32)) SeekEntryResult!4996)

(assert (=> b!546437 (= lt!249305 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!49744 res!340298) b!546435))

(assert (= (and b!546435 res!340301) b!546436))

(assert (= (and b!546436 res!340299) b!546433))

(assert (= (and b!546433 res!340300) b!546434))

(assert (= (and b!546434 res!340297) b!546437))

(declare-fun m!523881 () Bool)

(assert (=> b!546436 m!523881))

(assert (=> b!546436 m!523881))

(declare-fun m!523883 () Bool)

(assert (=> b!546436 m!523883))

(declare-fun m!523885 () Bool)

(assert (=> b!546437 m!523885))

(declare-fun m!523887 () Bool)

(assert (=> b!546434 m!523887))

(declare-fun m!523889 () Bool)

(assert (=> start!49744 m!523889))

(declare-fun m!523891 () Bool)

(assert (=> start!49744 m!523891))

(declare-fun m!523893 () Bool)

(assert (=> b!546433 m!523893))

(check-sat (not b!546434) (not b!546433) (not b!546437) (not start!49744) (not b!546436))
