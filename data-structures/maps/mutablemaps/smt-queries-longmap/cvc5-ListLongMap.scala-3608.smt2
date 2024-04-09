; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49736 () Bool)

(assert start!49736)

(declare-fun b!546373 () Bool)

(declare-fun res!340241 () Bool)

(declare-fun e!315801 () Bool)

(assert (=> b!546373 (=> (not res!340241) (not e!315801))))

(declare-datatypes ((array!34428 0))(
  ( (array!34429 (arr!16536 (Array (_ BitVec 32) (_ BitVec 64))) (size!16900 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34428)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546373 (= res!340241 (validKeyInArray!0 (select (arr!16536 a!3118) j!142)))))

(declare-fun b!546374 () Bool)

(declare-fun res!340239 () Bool)

(assert (=> b!546374 (=> (not res!340239) (not e!315801))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!546374 (= res!340239 (validKeyInArray!0 k!1914))))

(declare-fun b!546375 () Bool)

(declare-fun res!340237 () Bool)

(assert (=> b!546375 (=> (not res!340237) (not e!315801))))

(declare-fun arrayContainsKey!0 (array!34428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546375 (= res!340237 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340238 () Bool)

(assert (=> start!49736 (=> (not res!340238) (not e!315801))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49736 (= res!340238 (validMask!0 mask!3119))))

(assert (=> start!49736 e!315801))

(assert (=> start!49736 true))

(declare-fun array_inv!12310 (array!34428) Bool)

(assert (=> start!49736 (array_inv!12310 a!3118)))

(declare-fun b!546376 () Bool)

(declare-fun res!340240 () Bool)

(assert (=> b!546376 (=> (not res!340240) (not e!315801))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546376 (= res!340240 (and (= (size!16900 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16900 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16900 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546377 () Bool)

(assert (=> b!546377 (= e!315801 (bvslt mask!3119 #b00000000000000000000000000000000))))

(assert (= (and start!49736 res!340238) b!546376))

(assert (= (and b!546376 res!340240) b!546373))

(assert (= (and b!546373 res!340241) b!546374))

(assert (= (and b!546374 res!340239) b!546375))

(assert (= (and b!546375 res!340237) b!546377))

(declare-fun m!523831 () Bool)

(assert (=> b!546373 m!523831))

(assert (=> b!546373 m!523831))

(declare-fun m!523833 () Bool)

(assert (=> b!546373 m!523833))

(declare-fun m!523835 () Bool)

(assert (=> b!546374 m!523835))

(declare-fun m!523837 () Bool)

(assert (=> b!546375 m!523837))

(declare-fun m!523839 () Bool)

(assert (=> start!49736 m!523839))

(declare-fun m!523841 () Bool)

(assert (=> start!49736 m!523841))

(push 1)

(assert (not b!546374))

(assert (not b!546375))

(assert (not start!49736))

(assert (not b!546373))

(check-sat)

