; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49712 () Bool)

(assert start!49712)

(declare-fun res!340187 () Bool)

(declare-fun e!315778 () Bool)

(assert (=> start!49712 (=> (not res!340187) (not e!315778))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49712 (= res!340187 (validMask!0 mask!3119))))

(assert (=> start!49712 e!315778))

(assert (=> start!49712 true))

(declare-datatypes ((array!34418 0))(
  ( (array!34419 (arr!16532 (Array (_ BitVec 32) (_ BitVec 64))) (size!16896 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34418)

(declare-fun array_inv!12306 (array!34418) Bool)

(assert (=> start!49712 (array_inv!12306 a!3118)))

(declare-fun b!546326 () Bool)

(assert (=> b!546326 (= e!315778 (bvsge #b00000000000000000000000000000000 (size!16896 a!3118)))))

(declare-fun b!546323 () Bool)

(declare-fun res!340189 () Bool)

(assert (=> b!546323 (=> (not res!340189) (not e!315778))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546323 (= res!340189 (and (= (size!16896 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16896 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16896 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546324 () Bool)

(declare-fun res!340188 () Bool)

(assert (=> b!546324 (=> (not res!340188) (not e!315778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546324 (= res!340188 (validKeyInArray!0 (select (arr!16532 a!3118) j!142)))))

(declare-fun b!546325 () Bool)

(declare-fun res!340190 () Bool)

(assert (=> b!546325 (=> (not res!340190) (not e!315778))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!546325 (= res!340190 (validKeyInArray!0 k!1914))))

(assert (= (and start!49712 res!340187) b!546323))

(assert (= (and b!546323 res!340189) b!546324))

(assert (= (and b!546324 res!340188) b!546325))

(assert (= (and b!546325 res!340190) b!546326))

(declare-fun m!523791 () Bool)

(assert (=> start!49712 m!523791))

(declare-fun m!523793 () Bool)

(assert (=> start!49712 m!523793))

(declare-fun m!523795 () Bool)

(assert (=> b!546324 m!523795))

(assert (=> b!546324 m!523795))

(declare-fun m!523797 () Bool)

(assert (=> b!546324 m!523797))

(declare-fun m!523799 () Bool)

(assert (=> b!546325 m!523799))

(push 1)

(assert (not b!546324))

(assert (not start!49712))

(assert (not b!546325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

