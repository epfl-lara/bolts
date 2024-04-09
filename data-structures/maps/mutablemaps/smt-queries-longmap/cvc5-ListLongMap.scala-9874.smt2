; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116972 () Bool)

(assert start!116972)

(declare-datatypes ((array!93559 0))(
  ( (array!93560 (arr!45178 (Array (_ BitVec 32) (_ BitVec 64))) (size!45729 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93559)

(declare-fun from!3579 () (_ BitVec 32))

(declare-fun to!375 () (_ BitVec 32))

(assert (=> start!116972 (and (bvslt (size!45729 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45729 a!4212)) (bvslt to!375 #b00000000000000000000000000000000))))

(declare-fun array_inv!34123 (array!93559) Bool)

(assert (=> start!116972 (array_inv!34123 a!4212)))

(assert (=> start!116972 true))

(declare-fun bs!39590 () Bool)

(assert (= bs!39590 start!116972))

(declare-fun m!1262013 () Bool)

(assert (=> bs!39590 m!1262013))

(push 1)

(assert (not start!116972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

