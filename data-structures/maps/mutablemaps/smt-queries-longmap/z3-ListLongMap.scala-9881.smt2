; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117046 () Bool)

(assert start!117046)

(declare-datatypes ((array!93606 0))(
  ( (array!93607 (arr!45200 (Array (_ BitVec 32) (_ BitVec 64))) (size!45751 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93606)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117046 (and (bvslt (size!45751 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45751 a!4197)) (bvslt to!360 #b00000000000000000000000000000000))))

(declare-fun array_inv!34145 (array!93606) Bool)

(assert (=> start!117046 (array_inv!34145 a!4197)))

(assert (=> start!117046 true))

(declare-fun bs!39621 () Bool)

(assert (= bs!39621 start!117046))

(declare-fun m!1262327 () Bool)

(assert (=> bs!39621 m!1262327))

(check-sat (not start!117046))
(check-sat)
