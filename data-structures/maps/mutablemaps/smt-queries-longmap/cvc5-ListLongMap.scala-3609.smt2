; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49742 () Bool)

(assert start!49742)

(declare-fun b!546418 () Bool)

(declare-fun res!340286 () Bool)

(declare-fun e!315819 () Bool)

(assert (=> b!546418 (=> (not res!340286) (not e!315819))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546418 (= res!340286 (validKeyInArray!0 k!1914))))

(declare-fun b!546419 () Bool)

(declare-fun res!340285 () Bool)

(assert (=> b!546419 (=> (not res!340285) (not e!315819))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34434 0))(
  ( (array!34435 (arr!16539 (Array (_ BitVec 32) (_ BitVec 64))) (size!16903 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34434)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546419 (= res!340285 (and (= (size!16903 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16903 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16903 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546420 () Bool)

(declare-fun res!340282 () Bool)

(assert (=> b!546420 (=> (not res!340282) (not e!315819))))

(declare-fun arrayContainsKey!0 (array!34434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546420 (= res!340282 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340283 () Bool)

(assert (=> start!49742 (=> (not res!340283) (not e!315819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49742 (= res!340283 (validMask!0 mask!3119))))

(assert (=> start!49742 e!315819))

(assert (=> start!49742 true))

(declare-fun array_inv!12313 (array!34434) Bool)

(assert (=> start!49742 (array_inv!12313 a!3118)))

(declare-fun b!546421 () Bool)

(assert (=> b!546421 (= e!315819 false)))

(declare-datatypes ((SeekEntryResult!4995 0))(
  ( (MissingZero!4995 (index!22207 (_ BitVec 32))) (Found!4995 (index!22208 (_ BitVec 32))) (Intermediate!4995 (undefined!5807 Bool) (index!22209 (_ BitVec 32)) (x!51194 (_ BitVec 32))) (Undefined!4995) (MissingVacant!4995 (index!22210 (_ BitVec 32))) )
))
(declare-fun lt!249302 () SeekEntryResult!4995)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34434 (_ BitVec 32)) SeekEntryResult!4995)

(assert (=> b!546421 (= lt!249302 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546422 () Bool)

(declare-fun res!340284 () Bool)

(assert (=> b!546422 (=> (not res!340284) (not e!315819))))

(assert (=> b!546422 (= res!340284 (validKeyInArray!0 (select (arr!16539 a!3118) j!142)))))

(assert (= (and start!49742 res!340283) b!546419))

(assert (= (and b!546419 res!340285) b!546422))

(assert (= (and b!546422 res!340284) b!546418))

(assert (= (and b!546418 res!340286) b!546420))

(assert (= (and b!546420 res!340282) b!546421))

(declare-fun m!523867 () Bool)

(assert (=> b!546418 m!523867))

(declare-fun m!523869 () Bool)

(assert (=> b!546422 m!523869))

(assert (=> b!546422 m!523869))

(declare-fun m!523871 () Bool)

(assert (=> b!546422 m!523871))

(declare-fun m!523873 () Bool)

(assert (=> start!49742 m!523873))

(declare-fun m!523875 () Bool)

(assert (=> start!49742 m!523875))

(declare-fun m!523877 () Bool)

(assert (=> b!546420 m!523877))

(declare-fun m!523879 () Bool)

(assert (=> b!546421 m!523879))

(push 1)

(assert (not b!546418))

(assert (not b!546422))

(assert (not start!49742))

(assert (not b!546421))

(assert (not b!546420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

