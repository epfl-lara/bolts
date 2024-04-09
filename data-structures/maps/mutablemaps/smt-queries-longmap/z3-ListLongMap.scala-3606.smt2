; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49710 () Bool)

(assert start!49710)

(declare-fun b!546313 () Bool)

(declare-fun res!340178 () Bool)

(declare-fun e!315772 () Bool)

(assert (=> b!546313 (=> (not res!340178) (not e!315772))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546313 (= res!340178 (validKeyInArray!0 k0!1914))))

(declare-fun b!546314 () Bool)

(declare-datatypes ((array!34416 0))(
  ( (array!34417 (arr!16531 (Array (_ BitVec 32) (_ BitVec 64))) (size!16895 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34416)

(assert (=> b!546314 (= e!315772 (bvsge #b00000000000000000000000000000000 (size!16895 a!3118)))))

(declare-fun b!546312 () Bool)

(declare-fun res!340176 () Bool)

(assert (=> b!546312 (=> (not res!340176) (not e!315772))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546312 (= res!340176 (validKeyInArray!0 (select (arr!16531 a!3118) j!142)))))

(declare-fun res!340175 () Bool)

(assert (=> start!49710 (=> (not res!340175) (not e!315772))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49710 (= res!340175 (validMask!0 mask!3119))))

(assert (=> start!49710 e!315772))

(assert (=> start!49710 true))

(declare-fun array_inv!12305 (array!34416) Bool)

(assert (=> start!49710 (array_inv!12305 a!3118)))

(declare-fun b!546311 () Bool)

(declare-fun res!340177 () Bool)

(assert (=> b!546311 (=> (not res!340177) (not e!315772))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546311 (= res!340177 (and (= (size!16895 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16895 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16895 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!49710 res!340175) b!546311))

(assert (= (and b!546311 res!340177) b!546312))

(assert (= (and b!546312 res!340176) b!546313))

(assert (= (and b!546313 res!340178) b!546314))

(declare-fun m!523781 () Bool)

(assert (=> b!546313 m!523781))

(declare-fun m!523783 () Bool)

(assert (=> b!546312 m!523783))

(assert (=> b!546312 m!523783))

(declare-fun m!523785 () Bool)

(assert (=> b!546312 m!523785))

(declare-fun m!523787 () Bool)

(assert (=> start!49710 m!523787))

(declare-fun m!523789 () Bool)

(assert (=> start!49710 m!523789))

(check-sat (not start!49710) (not b!546313) (not b!546312))
(check-sat)
