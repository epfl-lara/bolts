; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49756 () Bool)

(assert start!49756)

(declare-fun b!546532 () Bool)

(declare-fun res!340398 () Bool)

(declare-fun e!315862 () Bool)

(assert (=> b!546532 (=> (not res!340398) (not e!315862))))

(declare-datatypes ((array!34448 0))(
  ( (array!34449 (arr!16546 (Array (_ BitVec 32) (_ BitVec 64))) (size!16910 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34448)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546532 (= res!340398 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546533 () Bool)

(declare-fun res!340396 () Bool)

(assert (=> b!546533 (=> (not res!340396) (not e!315862))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546533 (= res!340396 (and (= (size!16910 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16910 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16910 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340400 () Bool)

(assert (=> start!49756 (=> (not res!340400) (not e!315862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49756 (= res!340400 (validMask!0 mask!3119))))

(assert (=> start!49756 e!315862))

(assert (=> start!49756 true))

(declare-fun array_inv!12320 (array!34448) Bool)

(assert (=> start!49756 (array_inv!12320 a!3118)))

(declare-fun b!546534 () Bool)

(assert (=> b!546534 (= e!315862 false)))

(declare-datatypes ((SeekEntryResult!5002 0))(
  ( (MissingZero!5002 (index!22235 (_ BitVec 32))) (Found!5002 (index!22236 (_ BitVec 32))) (Intermediate!5002 (undefined!5814 Bool) (index!22237 (_ BitVec 32)) (x!51217 (_ BitVec 32))) (Undefined!5002) (MissingVacant!5002 (index!22238 (_ BitVec 32))) )
))
(declare-fun lt!249314 () SeekEntryResult!5002)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34448 (_ BitVec 32)) SeekEntryResult!5002)

(assert (=> b!546534 (= lt!249314 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546535 () Bool)

(declare-fun res!340397 () Bool)

(assert (=> b!546535 (=> (not res!340397) (not e!315862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546535 (= res!340397 (validKeyInArray!0 k0!1914))))

(declare-fun b!546536 () Bool)

(declare-fun res!340399 () Bool)

(assert (=> b!546536 (=> (not res!340399) (not e!315862))))

(assert (=> b!546536 (= res!340399 (validKeyInArray!0 (select (arr!16546 a!3118) j!142)))))

(assert (= (and start!49756 res!340400) b!546533))

(assert (= (and b!546533 res!340396) b!546536))

(assert (= (and b!546536 res!340399) b!546535))

(assert (= (and b!546535 res!340397) b!546532))

(assert (= (and b!546532 res!340398) b!546534))

(declare-fun m!523965 () Bool)

(assert (=> b!546535 m!523965))

(declare-fun m!523967 () Bool)

(assert (=> start!49756 m!523967))

(declare-fun m!523969 () Bool)

(assert (=> start!49756 m!523969))

(declare-fun m!523971 () Bool)

(assert (=> b!546536 m!523971))

(assert (=> b!546536 m!523971))

(declare-fun m!523973 () Bool)

(assert (=> b!546536 m!523973))

(declare-fun m!523975 () Bool)

(assert (=> b!546532 m!523975))

(declare-fun m!523977 () Bool)

(assert (=> b!546534 m!523977))

(check-sat (not b!546536) (not b!546535) (not start!49756) (not b!546532) (not b!546534))
