; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116974 () Bool)

(assert start!116974)

(declare-datatypes ((array!93561 0))(
  ( (array!93562 (arr!45179 (Array (_ BitVec 32) (_ BitVec 64))) (size!45730 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93561)

(declare-fun from!3579 () (_ BitVec 32))

(declare-fun to!375 () (_ BitVec 32))

(assert (=> start!116974 (and (bvslt (size!45730 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45730 a!4212)) (bvslt to!375 #b00000000000000000000000000000000))))

(declare-fun array_inv!34124 (array!93561) Bool)

(assert (=> start!116974 (array_inv!34124 a!4212)))

(assert (=> start!116974 true))

(declare-fun bs!39591 () Bool)

(assert (= bs!39591 start!116974))

(declare-fun m!1262015 () Bool)

(assert (=> bs!39591 m!1262015))

(check-sat (not start!116974))
(check-sat)
