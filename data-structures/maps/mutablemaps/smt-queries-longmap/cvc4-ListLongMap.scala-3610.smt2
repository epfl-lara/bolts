; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49752 () Bool)

(assert start!49752)

(declare-fun b!546501 () Bool)

(declare-fun res!340369 () Bool)

(declare-fun e!315849 () Bool)

(assert (=> b!546501 (=> (not res!340369) (not e!315849))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34444 0))(
  ( (array!34445 (arr!16544 (Array (_ BitVec 32) (_ BitVec 64))) (size!16908 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34444)

(declare-datatypes ((SeekEntryResult!5000 0))(
  ( (MissingZero!5000 (index!22227 (_ BitVec 32))) (Found!5000 (index!22228 (_ BitVec 32))) (Intermediate!5000 (undefined!5812 Bool) (index!22229 (_ BitVec 32)) (x!51207 (_ BitVec 32))) (Undefined!5000) (MissingVacant!5000 (index!22230 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34444 (_ BitVec 32)) SeekEntryResult!5000)

(assert (=> b!546501 (= res!340369 (not (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) (MissingZero!5000 i!1132))))))

(declare-fun b!546502 () Bool)

(declare-fun res!340367 () Bool)

(assert (=> b!546502 (=> (not res!340367) (not e!315849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546502 (= res!340367 (validKeyInArray!0 k!1914))))

(declare-fun b!546503 () Bool)

(declare-fun res!340365 () Bool)

(assert (=> b!546503 (=> (not res!340365) (not e!315849))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546503 (= res!340365 (and (= (size!16908 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16908 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16908 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546504 () Bool)

(declare-fun res!340368 () Bool)

(assert (=> b!546504 (=> (not res!340368) (not e!315849))))

(assert (=> b!546504 (= res!340368 (validKeyInArray!0 (select (arr!16544 a!3118) j!142)))))

(declare-fun b!546505 () Bool)

(assert (=> b!546505 (= e!315849 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun res!340366 () Bool)

(assert (=> start!49752 (=> (not res!340366) (not e!315849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49752 (= res!340366 (validMask!0 mask!3119))))

(assert (=> start!49752 e!315849))

(assert (=> start!49752 true))

(declare-fun array_inv!12318 (array!34444) Bool)

(assert (=> start!49752 (array_inv!12318 a!3118)))

(declare-fun b!546506 () Bool)

(declare-fun res!340370 () Bool)

(assert (=> b!546506 (=> (not res!340370) (not e!315849))))

(declare-fun arrayContainsKey!0 (array!34444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546506 (= res!340370 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!49752 res!340366) b!546503))

(assert (= (and b!546503 res!340365) b!546504))

(assert (= (and b!546504 res!340368) b!546502))

(assert (= (and b!546502 res!340367) b!546506))

(assert (= (and b!546506 res!340370) b!546501))

(assert (= (and b!546501 res!340369) b!546505))

(declare-fun m!523937 () Bool)

(assert (=> b!546502 m!523937))

(declare-fun m!523939 () Bool)

(assert (=> b!546506 m!523939))

(declare-fun m!523941 () Bool)

(assert (=> start!49752 m!523941))

(declare-fun m!523943 () Bool)

(assert (=> start!49752 m!523943))

(declare-fun m!523945 () Bool)

(assert (=> b!546504 m!523945))

(assert (=> b!546504 m!523945))

(declare-fun m!523947 () Bool)

(assert (=> b!546504 m!523947))

(declare-fun m!523949 () Bool)

(assert (=> b!546501 m!523949))

(push 1)

(assert (not start!49752))

(assert (not b!546501))

(assert (not b!546506))

(assert (not b!546502))

(assert (not b!546504))

(check-sat)

