; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49794 () Bool)

(assert start!49794)

(declare-fun b!546833 () Bool)

(declare-fun res!340703 () Bool)

(declare-fun e!315984 () Bool)

(assert (=> b!546833 (=> (not res!340703) (not e!315984))))

(declare-datatypes ((array!34486 0))(
  ( (array!34487 (arr!16565 (Array (_ BitVec 32) (_ BitVec 64))) (size!16929 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34486)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34486 (_ BitVec 32)) Bool)

(assert (=> b!546833 (= res!340703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!546834 () Bool)

(assert (=> b!546834 (= e!315984 (bvsgt #b00000000000000000000000000000000 (size!16929 a!3118)))))

(declare-fun b!546835 () Bool)

(declare-fun res!340697 () Bool)

(declare-fun e!315985 () Bool)

(assert (=> b!546835 (=> (not res!340697) (not e!315985))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546835 (= res!340697 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546836 () Bool)

(declare-fun res!340699 () Bool)

(assert (=> b!546836 (=> (not res!340699) (not e!315985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546836 (= res!340699 (validKeyInArray!0 k!1914))))

(declare-fun b!546838 () Bool)

(declare-fun res!340702 () Bool)

(assert (=> b!546838 (=> (not res!340702) (not e!315985))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546838 (= res!340702 (validKeyInArray!0 (select (arr!16565 a!3118) j!142)))))

(declare-fun b!546839 () Bool)

(declare-fun res!340700 () Bool)

(assert (=> b!546839 (=> (not res!340700) (not e!315985))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546839 (= res!340700 (and (= (size!16929 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16929 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16929 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340701 () Bool)

(assert (=> start!49794 (=> (not res!340701) (not e!315985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49794 (= res!340701 (validMask!0 mask!3119))))

(assert (=> start!49794 e!315985))

(assert (=> start!49794 true))

(declare-fun array_inv!12339 (array!34486) Bool)

(assert (=> start!49794 (array_inv!12339 a!3118)))

(declare-fun b!546837 () Bool)

(assert (=> b!546837 (= e!315985 e!315984)))

(declare-fun res!340698 () Bool)

(assert (=> b!546837 (=> (not res!340698) (not e!315984))))

(declare-datatypes ((SeekEntryResult!5021 0))(
  ( (MissingZero!5021 (index!22311 (_ BitVec 32))) (Found!5021 (index!22312 (_ BitVec 32))) (Intermediate!5021 (undefined!5833 Bool) (index!22313 (_ BitVec 32)) (x!51284 (_ BitVec 32))) (Undefined!5021) (MissingVacant!5021 (index!22314 (_ BitVec 32))) )
))
(declare-fun lt!249371 () SeekEntryResult!5021)

(assert (=> b!546837 (= res!340698 (or (= lt!249371 (MissingZero!5021 i!1132)) (= lt!249371 (MissingVacant!5021 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34486 (_ BitVec 32)) SeekEntryResult!5021)

(assert (=> b!546837 (= lt!249371 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!49794 res!340701) b!546839))

(assert (= (and b!546839 res!340700) b!546838))

(assert (= (and b!546838 res!340702) b!546836))

(assert (= (and b!546836 res!340699) b!546835))

(assert (= (and b!546835 res!340697) b!546837))

(assert (= (and b!546837 res!340698) b!546833))

(assert (= (and b!546833 res!340703) b!546834))

(declare-fun m!524235 () Bool)

(assert (=> b!546835 m!524235))

(declare-fun m!524237 () Bool)

(assert (=> start!49794 m!524237))

(declare-fun m!524239 () Bool)

(assert (=> start!49794 m!524239))

(declare-fun m!524241 () Bool)

(assert (=> b!546837 m!524241))

(declare-fun m!524243 () Bool)

(assert (=> b!546836 m!524243))

(declare-fun m!524245 () Bool)

(assert (=> b!546833 m!524245))

(declare-fun m!524247 () Bool)

(assert (=> b!546838 m!524247))

(assert (=> b!546838 m!524247))

(declare-fun m!524249 () Bool)

(assert (=> b!546838 m!524249))

(push 1)

(assert (not b!546838))

