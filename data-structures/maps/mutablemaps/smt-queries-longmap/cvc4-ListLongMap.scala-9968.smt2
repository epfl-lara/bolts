; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117756 () Bool)

(assert start!117756)

(declare-fun res!922790 () Bool)

(declare-fun e!782770 () Bool)

(assert (=> start!117756 (=> (not res!922790) (not e!782770))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94154 0))(
  ( (array!94155 (arr!45462 (Array (_ BitVec 32) (_ BitVec 64))) (size!46013 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94154)

(assert (=> start!117756 (= res!922790 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46013 a!3464)) (bvslt (size!46013 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117756 e!782770))

(assert (=> start!117756 true))

(declare-fun array_inv!34407 (array!94154) Bool)

(assert (=> start!117756 (array_inv!34407 a!3464)))

(declare-fun b!1380981 () Bool)

(declare-fun res!922791 () Bool)

(assert (=> b!1380981 (=> (not res!922791) (not e!782770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380981 (= res!922791 (not (validKeyInArray!0 (select (arr!45462 a!3464) from!2839))))))

(declare-fun b!1380982 () Bool)

(assert (=> b!1380982 (= e!782770 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117756 res!922790) b!1380981))

(assert (= (and b!1380981 res!922791) b!1380982))

(declare-fun m!1266261 () Bool)

(assert (=> start!117756 m!1266261))

(declare-fun m!1266263 () Bool)

(assert (=> b!1380981 m!1266263))

(assert (=> b!1380981 m!1266263))

(declare-fun m!1266265 () Bool)

(assert (=> b!1380981 m!1266265))

(push 1)

(assert (not start!117756))

(assert (not b!1380981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

