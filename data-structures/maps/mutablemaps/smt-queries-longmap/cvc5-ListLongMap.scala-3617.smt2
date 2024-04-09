; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49790 () Bool)

(assert start!49790)

(declare-fun b!546791 () Bool)

(declare-fun res!340661 () Bool)

(declare-fun e!315967 () Bool)

(assert (=> b!546791 (=> (not res!340661) (not e!315967))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34482 0))(
  ( (array!34483 (arr!16563 (Array (_ BitVec 32) (_ BitVec 64))) (size!16927 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34482)

(assert (=> b!546791 (= res!340661 (and (= (size!16927 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16927 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16927 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546792 () Bool)

(declare-fun e!315966 () Bool)

(assert (=> b!546792 (= e!315966 (bvsgt #b00000000000000000000000000000000 (size!16927 a!3118)))))

(declare-fun b!546793 () Bool)

(declare-fun res!340660 () Bool)

(assert (=> b!546793 (=> (not res!340660) (not e!315967))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546793 (= res!340660 (validKeyInArray!0 k!1914))))

(declare-fun b!546794 () Bool)

(declare-fun res!340655 () Bool)

(assert (=> b!546794 (=> (not res!340655) (not e!315967))))

(declare-fun arrayContainsKey!0 (array!34482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546794 (= res!340655 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340659 () Bool)

(assert (=> start!49790 (=> (not res!340659) (not e!315967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49790 (= res!340659 (validMask!0 mask!3119))))

(assert (=> start!49790 e!315967))

(assert (=> start!49790 true))

(declare-fun array_inv!12337 (array!34482) Bool)

(assert (=> start!49790 (array_inv!12337 a!3118)))

(declare-fun b!546795 () Bool)

(assert (=> b!546795 (= e!315967 e!315966)))

(declare-fun res!340657 () Bool)

(assert (=> b!546795 (=> (not res!340657) (not e!315966))))

(declare-datatypes ((SeekEntryResult!5019 0))(
  ( (MissingZero!5019 (index!22303 (_ BitVec 32))) (Found!5019 (index!22304 (_ BitVec 32))) (Intermediate!5019 (undefined!5831 Bool) (index!22305 (_ BitVec 32)) (x!51282 (_ BitVec 32))) (Undefined!5019) (MissingVacant!5019 (index!22306 (_ BitVec 32))) )
))
(declare-fun lt!249365 () SeekEntryResult!5019)

(assert (=> b!546795 (= res!340657 (or (= lt!249365 (MissingZero!5019 i!1132)) (= lt!249365 (MissingVacant!5019 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34482 (_ BitVec 32)) SeekEntryResult!5019)

(assert (=> b!546795 (= lt!249365 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!546796 () Bool)

(declare-fun res!340658 () Bool)

(assert (=> b!546796 (=> (not res!340658) (not e!315966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34482 (_ BitVec 32)) Bool)

(assert (=> b!546796 (= res!340658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!546797 () Bool)

(declare-fun res!340656 () Bool)

(assert (=> b!546797 (=> (not res!340656) (not e!315967))))

(assert (=> b!546797 (= res!340656 (validKeyInArray!0 (select (arr!16563 a!3118) j!142)))))

(assert (= (and start!49790 res!340659) b!546791))

(assert (= (and b!546791 res!340661) b!546797))

(assert (= (and b!546797 res!340656) b!546793))

(assert (= (and b!546793 res!340660) b!546794))

(assert (= (and b!546794 res!340655) b!546795))

(assert (= (and b!546795 res!340657) b!546796))

(assert (= (and b!546796 res!340658) b!546792))

(declare-fun m!524203 () Bool)

(assert (=> b!546793 m!524203))

(declare-fun m!524205 () Bool)

(assert (=> b!546797 m!524205))

(assert (=> b!546797 m!524205))

(declare-fun m!524207 () Bool)

(assert (=> b!546797 m!524207))

(declare-fun m!524209 () Bool)

(assert (=> b!546796 m!524209))

(declare-fun m!524211 () Bool)

(assert (=> start!49790 m!524211))

(declare-fun m!524213 () Bool)

(assert (=> start!49790 m!524213))

(declare-fun m!524215 () Bool)

(assert (=> b!546794 m!524215))

(declare-fun m!524217 () Bool)

(assert (=> b!546795 m!524217))

(push 1)

