; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49738 () Bool)

(assert start!49738)

(declare-fun b!546388 () Bool)

(declare-fun res!340255 () Bool)

(declare-fun e!315808 () Bool)

(assert (=> b!546388 (=> (not res!340255) (not e!315808))))

(declare-datatypes ((array!34430 0))(
  ( (array!34431 (arr!16537 (Array (_ BitVec 32) (_ BitVec 64))) (size!16901 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34430)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546388 (= res!340255 (validKeyInArray!0 (select (arr!16537 a!3118) j!142)))))

(declare-fun res!340252 () Bool)

(assert (=> start!49738 (=> (not res!340252) (not e!315808))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49738 (= res!340252 (validMask!0 mask!3119))))

(assert (=> start!49738 e!315808))

(assert (=> start!49738 true))

(declare-fun array_inv!12311 (array!34430) Bool)

(assert (=> start!49738 (array_inv!12311 a!3118)))

(declare-fun b!546389 () Bool)

(assert (=> b!546389 (= e!315808 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!546390 () Bool)

(declare-fun res!340256 () Bool)

(assert (=> b!546390 (=> (not res!340256) (not e!315808))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!546390 (= res!340256 (validKeyInArray!0 k0!1914))))

(declare-fun b!546391 () Bool)

(declare-fun res!340253 () Bool)

(assert (=> b!546391 (=> (not res!340253) (not e!315808))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546391 (= res!340253 (and (= (size!16901 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16901 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16901 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546392 () Bool)

(declare-fun res!340254 () Bool)

(assert (=> b!546392 (=> (not res!340254) (not e!315808))))

(declare-fun arrayContainsKey!0 (array!34430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546392 (= res!340254 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!49738 res!340252) b!546391))

(assert (= (and b!546391 res!340253) b!546388))

(assert (= (and b!546388 res!340255) b!546390))

(assert (= (and b!546390 res!340256) b!546392))

(assert (= (and b!546392 res!340254) b!546389))

(declare-fun m!523843 () Bool)

(assert (=> b!546388 m!523843))

(assert (=> b!546388 m!523843))

(declare-fun m!523845 () Bool)

(assert (=> b!546388 m!523845))

(declare-fun m!523847 () Bool)

(assert (=> start!49738 m!523847))

(declare-fun m!523849 () Bool)

(assert (=> start!49738 m!523849))

(declare-fun m!523851 () Bool)

(assert (=> b!546390 m!523851))

(declare-fun m!523853 () Bool)

(assert (=> b!546392 m!523853))

(check-sat (not start!49738) (not b!546388) (not b!546392) (not b!546390))
(check-sat)
