; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49774 () Bool)

(assert start!49774)

(declare-fun res!340531 () Bool)

(declare-fun e!315916 () Bool)

(assert (=> start!49774 (=> (not res!340531) (not e!315916))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49774 (= res!340531 (validMask!0 mask!3119))))

(assert (=> start!49774 e!315916))

(assert (=> start!49774 true))

(declare-datatypes ((array!34466 0))(
  ( (array!34467 (arr!16555 (Array (_ BitVec 32) (_ BitVec 64))) (size!16919 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34466)

(declare-fun array_inv!12329 (array!34466) Bool)

(assert (=> start!49774 (array_inv!12329 a!3118)))

(declare-fun b!546667 () Bool)

(declare-fun res!340533 () Bool)

(assert (=> b!546667 (=> (not res!340533) (not e!315916))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546667 (= res!340533 (validKeyInArray!0 (select (arr!16555 a!3118) j!142)))))

(declare-fun b!546668 () Bool)

(declare-fun res!340532 () Bool)

(assert (=> b!546668 (=> (not res!340532) (not e!315916))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!546668 (= res!340532 (validKeyInArray!0 k0!1914))))

(declare-fun b!546669 () Bool)

(declare-fun res!340535 () Bool)

(assert (=> b!546669 (=> (not res!340535) (not e!315916))))

(declare-fun arrayContainsKey!0 (array!34466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546669 (= res!340535 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546670 () Bool)

(assert (=> b!546670 (= e!315916 false)))

(declare-datatypes ((SeekEntryResult!5011 0))(
  ( (MissingZero!5011 (index!22271 (_ BitVec 32))) (Found!5011 (index!22272 (_ BitVec 32))) (Intermediate!5011 (undefined!5823 Bool) (index!22273 (_ BitVec 32)) (x!51250 (_ BitVec 32))) (Undefined!5011) (MissingVacant!5011 (index!22274 (_ BitVec 32))) )
))
(declare-fun lt!249341 () SeekEntryResult!5011)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34466 (_ BitVec 32)) SeekEntryResult!5011)

(assert (=> b!546670 (= lt!249341 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546671 () Bool)

(declare-fun res!340534 () Bool)

(assert (=> b!546671 (=> (not res!340534) (not e!315916))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546671 (= res!340534 (and (= (size!16919 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16919 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16919 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!49774 res!340531) b!546671))

(assert (= (and b!546671 res!340534) b!546667))

(assert (= (and b!546667 res!340533) b!546668))

(assert (= (and b!546668 res!340532) b!546669))

(assert (= (and b!546669 res!340535) b!546670))

(declare-fun m!524091 () Bool)

(assert (=> b!546668 m!524091))

(declare-fun m!524093 () Bool)

(assert (=> b!546667 m!524093))

(assert (=> b!546667 m!524093))

(declare-fun m!524095 () Bool)

(assert (=> b!546667 m!524095))

(declare-fun m!524097 () Bool)

(assert (=> start!49774 m!524097))

(declare-fun m!524099 () Bool)

(assert (=> start!49774 m!524099))

(declare-fun m!524101 () Bool)

(assert (=> b!546670 m!524101))

(declare-fun m!524103 () Bool)

(assert (=> b!546669 m!524103))

(check-sat (not b!546668) (not b!546667) (not start!49774) (not b!546669) (not b!546670))
