; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49740 () Bool)

(assert start!49740)

(declare-fun b!546403 () Bool)

(declare-fun e!315813 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!546403 (= e!315813 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!546404 () Bool)

(declare-fun res!340267 () Bool)

(assert (=> b!546404 (=> (not res!340267) (not e!315813))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546404 (= res!340267 (validKeyInArray!0 k!1914))))

(declare-fun res!340271 () Bool)

(assert (=> start!49740 (=> (not res!340271) (not e!315813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49740 (= res!340271 (validMask!0 mask!3119))))

(assert (=> start!49740 e!315813))

(assert (=> start!49740 true))

(declare-datatypes ((array!34432 0))(
  ( (array!34433 (arr!16538 (Array (_ BitVec 32) (_ BitVec 64))) (size!16902 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34432)

(declare-fun array_inv!12312 (array!34432) Bool)

(assert (=> start!49740 (array_inv!12312 a!3118)))

(declare-fun b!546405 () Bool)

(declare-fun res!340268 () Bool)

(assert (=> b!546405 (=> (not res!340268) (not e!315813))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546405 (= res!340268 (validKeyInArray!0 (select (arr!16538 a!3118) j!142)))))

(declare-fun b!546406 () Bool)

(declare-fun res!340269 () Bool)

(assert (=> b!546406 (=> (not res!340269) (not e!315813))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546406 (= res!340269 (and (= (size!16902 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16902 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16902 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546407 () Bool)

(declare-fun res!340270 () Bool)

(assert (=> b!546407 (=> (not res!340270) (not e!315813))))

(declare-fun arrayContainsKey!0 (array!34432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546407 (= res!340270 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!49740 res!340271) b!546406))

(assert (= (and b!546406 res!340269) b!546405))

(assert (= (and b!546405 res!340268) b!546404))

(assert (= (and b!546404 res!340267) b!546407))

(assert (= (and b!546407 res!340270) b!546403))

(declare-fun m!523855 () Bool)

(assert (=> b!546404 m!523855))

(declare-fun m!523857 () Bool)

(assert (=> start!49740 m!523857))

(declare-fun m!523859 () Bool)

(assert (=> start!49740 m!523859))

(declare-fun m!523861 () Bool)

(assert (=> b!546405 m!523861))

(assert (=> b!546405 m!523861))

(declare-fun m!523863 () Bool)

(assert (=> b!546405 m!523863))

(declare-fun m!523865 () Bool)

(assert (=> b!546407 m!523865))

(push 1)

(assert (not b!546407))

(assert (not start!49740))

(assert (not b!546404))

(assert (not b!546405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

