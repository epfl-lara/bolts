; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116976 () Bool)

(assert start!116976)

(declare-datatypes ((array!93563 0))(
  ( (array!93564 (arr!45180 (Array (_ BitVec 32) (_ BitVec 64))) (size!45731 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93563)

(declare-fun from!3579 () (_ BitVec 32))

(declare-fun to!375 () (_ BitVec 32))

(assert (=> start!116976 (and (bvslt (size!45731 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45731 a!4212)) (bvslt to!375 #b00000000000000000000000000000000))))

(declare-fun array_inv!34125 (array!93563) Bool)

(assert (=> start!116976 (array_inv!34125 a!4212)))

(assert (=> start!116976 true))

(declare-fun bs!39592 () Bool)

(assert (= bs!39592 start!116976))

(declare-fun m!1262017 () Bool)

(assert (=> bs!39592 m!1262017))

(push 1)

(assert (not start!116976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

