; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117654 () Bool)

(assert start!117654)

(declare-datatypes ((array!94088 0))(
  ( (array!94089 (arr!45432 (Array (_ BitVec 32) (_ BitVec 64))) (size!45983 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94088)

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117654 (and (bvslt (size!45983 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45983 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000))))

(declare-fun array_inv!34377 (array!94088) Bool)

(assert (=> start!117654 (array_inv!34377 a!3931)))

(assert (=> start!117654 true))

(declare-fun bs!39898 () Bool)

(assert (= bs!39898 start!117654))

(declare-fun m!1265983 () Bool)

(assert (=> bs!39898 m!1265983))

(push 1)

(assert (not start!117654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

