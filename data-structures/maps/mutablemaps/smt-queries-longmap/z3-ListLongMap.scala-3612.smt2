; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49762 () Bool)

(assert start!49762)

(declare-fun b!546577 () Bool)

(declare-fun res!340441 () Bool)

(declare-fun e!315880 () Bool)

(assert (=> b!546577 (=> (not res!340441) (not e!315880))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34454 0))(
  ( (array!34455 (arr!16549 (Array (_ BitVec 32) (_ BitVec 64))) (size!16913 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34454)

(assert (=> b!546577 (= res!340441 (and (= (size!16913 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16913 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16913 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546578 () Bool)

(declare-fun res!340445 () Bool)

(assert (=> b!546578 (=> (not res!340445) (not e!315880))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546578 (= res!340445 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546580 () Bool)

(declare-fun res!340442 () Bool)

(assert (=> b!546580 (=> (not res!340442) (not e!315880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546580 (= res!340442 (validKeyInArray!0 (select (arr!16549 a!3118) j!142)))))

(declare-fun b!546581 () Bool)

(assert (=> b!546581 (= e!315880 false)))

(declare-datatypes ((SeekEntryResult!5005 0))(
  ( (MissingZero!5005 (index!22247 (_ BitVec 32))) (Found!5005 (index!22248 (_ BitVec 32))) (Intermediate!5005 (undefined!5817 Bool) (index!22249 (_ BitVec 32)) (x!51228 (_ BitVec 32))) (Undefined!5005) (MissingVacant!5005 (index!22250 (_ BitVec 32))) )
))
(declare-fun lt!249323 () SeekEntryResult!5005)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34454 (_ BitVec 32)) SeekEntryResult!5005)

(assert (=> b!546581 (= lt!249323 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546579 () Bool)

(declare-fun res!340444 () Bool)

(assert (=> b!546579 (=> (not res!340444) (not e!315880))))

(assert (=> b!546579 (= res!340444 (validKeyInArray!0 k0!1914))))

(declare-fun res!340443 () Bool)

(assert (=> start!49762 (=> (not res!340443) (not e!315880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49762 (= res!340443 (validMask!0 mask!3119))))

(assert (=> start!49762 e!315880))

(assert (=> start!49762 true))

(declare-fun array_inv!12323 (array!34454) Bool)

(assert (=> start!49762 (array_inv!12323 a!3118)))

(assert (= (and start!49762 res!340443) b!546577))

(assert (= (and b!546577 res!340441) b!546580))

(assert (= (and b!546580 res!340442) b!546579))

(assert (= (and b!546579 res!340444) b!546578))

(assert (= (and b!546578 res!340445) b!546581))

(declare-fun m!524007 () Bool)

(assert (=> b!546579 m!524007))

(declare-fun m!524009 () Bool)

(assert (=> b!546580 m!524009))

(assert (=> b!546580 m!524009))

(declare-fun m!524011 () Bool)

(assert (=> b!546580 m!524011))

(declare-fun m!524013 () Bool)

(assert (=> b!546581 m!524013))

(declare-fun m!524015 () Bool)

(assert (=> b!546578 m!524015))

(declare-fun m!524017 () Bool)

(assert (=> start!49762 m!524017))

(declare-fun m!524019 () Bool)

(assert (=> start!49762 m!524019))

(check-sat (not b!546578) (not start!49762) (not b!546581) (not b!546580) (not b!546579))
