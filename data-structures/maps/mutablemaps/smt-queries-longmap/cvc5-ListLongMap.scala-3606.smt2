; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49708 () Bool)

(assert start!49708)

(declare-fun b!546300 () Bool)

(declare-fun res!340164 () Bool)

(declare-fun e!315766 () Bool)

(assert (=> b!546300 (=> (not res!340164) (not e!315766))))

(declare-datatypes ((array!34414 0))(
  ( (array!34415 (arr!16530 (Array (_ BitVec 32) (_ BitVec 64))) (size!16894 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34414)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546300 (= res!340164 (validKeyInArray!0 (select (arr!16530 a!3118) j!142)))))

(declare-fun b!546299 () Bool)

(declare-fun res!340165 () Bool)

(assert (=> b!546299 (=> (not res!340165) (not e!315766))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546299 (= res!340165 (and (= (size!16894 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16894 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16894 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546302 () Bool)

(assert (=> b!546302 (= e!315766 (bvsge #b00000000000000000000000000000000 (size!16894 a!3118)))))

(declare-fun res!340163 () Bool)

(assert (=> start!49708 (=> (not res!340163) (not e!315766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49708 (= res!340163 (validMask!0 mask!3119))))

(assert (=> start!49708 e!315766))

(assert (=> start!49708 true))

(declare-fun array_inv!12304 (array!34414) Bool)

(assert (=> start!49708 (array_inv!12304 a!3118)))

(declare-fun b!546301 () Bool)

(declare-fun res!340166 () Bool)

(assert (=> b!546301 (=> (not res!340166) (not e!315766))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!546301 (= res!340166 (validKeyInArray!0 k!1914))))

(assert (= (and start!49708 res!340163) b!546299))

(assert (= (and b!546299 res!340165) b!546300))

(assert (= (and b!546300 res!340164) b!546301))

(assert (= (and b!546301 res!340166) b!546302))

(declare-fun m!523771 () Bool)

(assert (=> b!546300 m!523771))

(assert (=> b!546300 m!523771))

(declare-fun m!523773 () Bool)

(assert (=> b!546300 m!523773))

(declare-fun m!523775 () Bool)

(assert (=> start!49708 m!523775))

(declare-fun m!523777 () Bool)

(assert (=> start!49708 m!523777))

(declare-fun m!523779 () Bool)

(assert (=> b!546301 m!523779))

(push 1)

(assert (not b!546301))

(assert (not b!546300))

(assert (not start!49708))

(check-sat)

(pop 1)

