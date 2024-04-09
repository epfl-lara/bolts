; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49760 () Bool)

(assert start!49760)

(declare-fun b!546562 () Bool)

(declare-fun res!340427 () Bool)

(declare-fun e!315873 () Bool)

(assert (=> b!546562 (=> (not res!340427) (not e!315873))))

(declare-datatypes ((array!34452 0))(
  ( (array!34453 (arr!16548 (Array (_ BitVec 32) (_ BitVec 64))) (size!16912 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34452)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546562 (= res!340427 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546563 () Bool)

(declare-fun res!340428 () Bool)

(assert (=> b!546563 (=> (not res!340428) (not e!315873))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546563 (= res!340428 (validKeyInArray!0 (select (arr!16548 a!3118) j!142)))))

(declare-fun b!546564 () Bool)

(declare-fun res!340426 () Bool)

(assert (=> b!546564 (=> (not res!340426) (not e!315873))))

(assert (=> b!546564 (= res!340426 (validKeyInArray!0 k!1914))))

(declare-fun b!546565 () Bool)

(assert (=> b!546565 (= e!315873 false)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5004 0))(
  ( (MissingZero!5004 (index!22243 (_ BitVec 32))) (Found!5004 (index!22244 (_ BitVec 32))) (Intermediate!5004 (undefined!5816 Bool) (index!22245 (_ BitVec 32)) (x!51227 (_ BitVec 32))) (Undefined!5004) (MissingVacant!5004 (index!22246 (_ BitVec 32))) )
))
(declare-fun lt!249320 () SeekEntryResult!5004)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34452 (_ BitVec 32)) SeekEntryResult!5004)

(assert (=> b!546565 (= lt!249320 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!340430 () Bool)

(assert (=> start!49760 (=> (not res!340430) (not e!315873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49760 (= res!340430 (validMask!0 mask!3119))))

(assert (=> start!49760 e!315873))

(assert (=> start!49760 true))

(declare-fun array_inv!12322 (array!34452) Bool)

(assert (=> start!49760 (array_inv!12322 a!3118)))

(declare-fun b!546566 () Bool)

(declare-fun res!340429 () Bool)

(assert (=> b!546566 (=> (not res!340429) (not e!315873))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546566 (= res!340429 (and (= (size!16912 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16912 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16912 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!49760 res!340430) b!546566))

(assert (= (and b!546566 res!340429) b!546563))

(assert (= (and b!546563 res!340428) b!546564))

(assert (= (and b!546564 res!340426) b!546562))

(assert (= (and b!546562 res!340427) b!546565))

(declare-fun m!523993 () Bool)

(assert (=> b!546565 m!523993))

(declare-fun m!523995 () Bool)

(assert (=> b!546562 m!523995))

(declare-fun m!523997 () Bool)

(assert (=> b!546563 m!523997))

(assert (=> b!546563 m!523997))

(declare-fun m!523999 () Bool)

(assert (=> b!546563 m!523999))

(declare-fun m!524001 () Bool)

(assert (=> start!49760 m!524001))

(declare-fun m!524003 () Bool)

(assert (=> start!49760 m!524003))

(declare-fun m!524005 () Bool)

(assert (=> b!546564 m!524005))

(push 1)

(assert (not start!49760))

(assert (not b!546564))

(assert (not b!546565))

(assert (not b!546563))

(assert (not b!546562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

