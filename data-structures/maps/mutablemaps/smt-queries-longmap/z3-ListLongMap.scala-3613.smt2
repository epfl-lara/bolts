; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49768 () Bool)

(assert start!49768)

(declare-fun b!546622 () Bool)

(declare-fun res!340489 () Bool)

(declare-fun e!315898 () Bool)

(assert (=> b!546622 (=> (not res!340489) (not e!315898))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34460 0))(
  ( (array!34461 (arr!16552 (Array (_ BitVec 32) (_ BitVec 64))) (size!16916 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34460)

(assert (=> b!546622 (= res!340489 (and (= (size!16916 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16916 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16916 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546623 () Bool)

(assert (=> b!546623 (= e!315898 false)))

(declare-datatypes ((SeekEntryResult!5008 0))(
  ( (MissingZero!5008 (index!22259 (_ BitVec 32))) (Found!5008 (index!22260 (_ BitVec 32))) (Intermediate!5008 (undefined!5820 Bool) (index!22261 (_ BitVec 32)) (x!51239 (_ BitVec 32))) (Undefined!5008) (MissingVacant!5008 (index!22262 (_ BitVec 32))) )
))
(declare-fun lt!249332 () SeekEntryResult!5008)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34460 (_ BitVec 32)) SeekEntryResult!5008)

(assert (=> b!546623 (= lt!249332 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546624 () Bool)

(declare-fun res!340486 () Bool)

(assert (=> b!546624 (=> (not res!340486) (not e!315898))))

(declare-fun arrayContainsKey!0 (array!34460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546624 (= res!340486 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340487 () Bool)

(assert (=> start!49768 (=> (not res!340487) (not e!315898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49768 (= res!340487 (validMask!0 mask!3119))))

(assert (=> start!49768 e!315898))

(assert (=> start!49768 true))

(declare-fun array_inv!12326 (array!34460) Bool)

(assert (=> start!49768 (array_inv!12326 a!3118)))

(declare-fun b!546625 () Bool)

(declare-fun res!340490 () Bool)

(assert (=> b!546625 (=> (not res!340490) (not e!315898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546625 (= res!340490 (validKeyInArray!0 (select (arr!16552 a!3118) j!142)))))

(declare-fun b!546626 () Bool)

(declare-fun res!340488 () Bool)

(assert (=> b!546626 (=> (not res!340488) (not e!315898))))

(assert (=> b!546626 (= res!340488 (validKeyInArray!0 k0!1914))))

(assert (= (and start!49768 res!340487) b!546622))

(assert (= (and b!546622 res!340489) b!546625))

(assert (= (and b!546625 res!340490) b!546626))

(assert (= (and b!546626 res!340488) b!546624))

(assert (= (and b!546624 res!340486) b!546623))

(declare-fun m!524049 () Bool)

(assert (=> start!49768 m!524049))

(declare-fun m!524051 () Bool)

(assert (=> start!49768 m!524051))

(declare-fun m!524053 () Bool)

(assert (=> b!546623 m!524053))

(declare-fun m!524055 () Bool)

(assert (=> b!546625 m!524055))

(assert (=> b!546625 m!524055))

(declare-fun m!524057 () Bool)

(assert (=> b!546625 m!524057))

(declare-fun m!524059 () Bool)

(assert (=> b!546624 m!524059))

(declare-fun m!524061 () Bool)

(assert (=> b!546626 m!524061))

(check-sat (not start!49768) (not b!546624) (not b!546623) (not b!546625) (not b!546626))
