; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49786 () Bool)

(assert start!49786)

(declare-fun b!546757 () Bool)

(declare-fun res!340624 () Bool)

(declare-fun e!315952 () Bool)

(assert (=> b!546757 (=> (not res!340624) (not e!315952))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546757 (= res!340624 (validKeyInArray!0 k0!1914))))

(declare-fun b!546758 () Bool)

(declare-fun res!340622 () Bool)

(assert (=> b!546758 (=> (not res!340622) (not e!315952))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34478 0))(
  ( (array!34479 (arr!16561 (Array (_ BitVec 32) (_ BitVec 64))) (size!16925 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34478)

(assert (=> b!546758 (= res!340622 (and (= (size!16925 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16925 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16925 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546760 () Bool)

(declare-fun res!340625 () Bool)

(assert (=> b!546760 (=> (not res!340625) (not e!315952))))

(assert (=> b!546760 (= res!340625 (validKeyInArray!0 (select (arr!16561 a!3118) j!142)))))

(declare-datatypes ((SeekEntryResult!5017 0))(
  ( (MissingZero!5017 (index!22295 (_ BitVec 32))) (Found!5017 (index!22296 (_ BitVec 32))) (Intermediate!5017 (undefined!5829 Bool) (index!22297 (_ BitVec 32)) (x!51272 (_ BitVec 32))) (Undefined!5017) (MissingVacant!5017 (index!22298 (_ BitVec 32))) )
))
(declare-fun lt!249359 () SeekEntryResult!5017)

(declare-fun b!546761 () Bool)

(assert (=> b!546761 (= e!315952 (and (or (= lt!249359 (MissingZero!5017 i!1132)) (= lt!249359 (MissingVacant!5017 i!1132))) (bvsgt #b00000000000000000000000000000000 (size!16925 a!3118))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34478 (_ BitVec 32)) SeekEntryResult!5017)

(assert (=> b!546761 (= lt!249359 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546759 () Bool)

(declare-fun res!340621 () Bool)

(assert (=> b!546759 (=> (not res!340621) (not e!315952))))

(declare-fun arrayContainsKey!0 (array!34478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546759 (= res!340621 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340623 () Bool)

(assert (=> start!49786 (=> (not res!340623) (not e!315952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49786 (= res!340623 (validMask!0 mask!3119))))

(assert (=> start!49786 e!315952))

(assert (=> start!49786 true))

(declare-fun array_inv!12335 (array!34478) Bool)

(assert (=> start!49786 (array_inv!12335 a!3118)))

(assert (= (and start!49786 res!340623) b!546758))

(assert (= (and b!546758 res!340622) b!546760))

(assert (= (and b!546760 res!340625) b!546757))

(assert (= (and b!546757 res!340624) b!546759))

(assert (= (and b!546759 res!340621) b!546761))

(declare-fun m!524175 () Bool)

(assert (=> b!546757 m!524175))

(declare-fun m!524177 () Bool)

(assert (=> b!546761 m!524177))

(declare-fun m!524179 () Bool)

(assert (=> b!546760 m!524179))

(assert (=> b!546760 m!524179))

(declare-fun m!524181 () Bool)

(assert (=> b!546760 m!524181))

(declare-fun m!524183 () Bool)

(assert (=> b!546759 m!524183))

(declare-fun m!524185 () Bool)

(assert (=> start!49786 m!524185))

(declare-fun m!524187 () Bool)

(assert (=> start!49786 m!524187))

(check-sat (not b!546757) (not b!546759) (not b!546761) (not start!49786) (not b!546760))
(check-sat)
