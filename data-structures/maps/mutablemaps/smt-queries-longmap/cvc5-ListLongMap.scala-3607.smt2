; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49714 () Bool)

(assert start!49714)

(declare-fun b!546335 () Bool)

(declare-fun res!340201 () Bool)

(declare-fun e!315783 () Bool)

(assert (=> b!546335 (=> (not res!340201) (not e!315783))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34420 0))(
  ( (array!34421 (arr!16533 (Array (_ BitVec 32) (_ BitVec 64))) (size!16897 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34420)

(assert (=> b!546335 (= res!340201 (and (= (size!16897 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16897 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16897 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340202 () Bool)

(assert (=> start!49714 (=> (not res!340202) (not e!315783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49714 (= res!340202 (validMask!0 mask!3119))))

(assert (=> start!49714 e!315783))

(assert (=> start!49714 true))

(declare-fun array_inv!12307 (array!34420) Bool)

(assert (=> start!49714 (array_inv!12307 a!3118)))

(declare-fun b!546336 () Bool)

(declare-fun res!340200 () Bool)

(assert (=> b!546336 (=> (not res!340200) (not e!315783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546336 (= res!340200 (validKeyInArray!0 (select (arr!16533 a!3118) j!142)))))

(declare-fun b!546338 () Bool)

(assert (=> b!546338 (= e!315783 (and (bvslt #b00000000000000000000000000000000 (size!16897 a!3118)) (bvsge (size!16897 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!546337 () Bool)

(declare-fun res!340199 () Bool)

(assert (=> b!546337 (=> (not res!340199) (not e!315783))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!546337 (= res!340199 (validKeyInArray!0 k!1914))))

(assert (= (and start!49714 res!340202) b!546335))

(assert (= (and b!546335 res!340201) b!546336))

(assert (= (and b!546336 res!340200) b!546337))

(assert (= (and b!546337 res!340199) b!546338))

(declare-fun m!523801 () Bool)

(assert (=> start!49714 m!523801))

(declare-fun m!523803 () Bool)

(assert (=> start!49714 m!523803))

(declare-fun m!523805 () Bool)

(assert (=> b!546336 m!523805))

(assert (=> b!546336 m!523805))

(declare-fun m!523807 () Bool)

(assert (=> b!546336 m!523807))

(declare-fun m!523809 () Bool)

(assert (=> b!546337 m!523809))

(push 1)

(assert (not b!546337))

(assert (not b!546336))

(assert (not start!49714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

