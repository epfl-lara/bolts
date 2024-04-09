; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117806 () Bool)

(assert start!117806)

(declare-fun res!922832 () Bool)

(declare-fun e!782857 () Bool)

(assert (=> start!117806 (=> (not res!922832) (not e!782857))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94189 0))(
  ( (array!94190 (arr!45478 (Array (_ BitVec 32) (_ BitVec 64))) (size!46029 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94189)

(assert (=> start!117806 (= res!922832 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46029 a!3464)) (bvslt (size!46029 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117806 e!782857))

(assert (=> start!117806 true))

(declare-fun array_inv!34423 (array!94189) Bool)

(assert (=> start!117806 (array_inv!34423 a!3464)))

(declare-fun b!1381059 () Bool)

(declare-fun res!922833 () Bool)

(assert (=> b!1381059 (=> (not res!922833) (not e!782857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381059 (= res!922833 (not (validKeyInArray!0 (select (arr!45478 a!3464) from!2839))))))

(declare-fun b!1381060 () Bool)

(assert (=> b!1381060 (= e!782857 (bvsge (bvsub (size!46029 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46029 a!3464) from!2839)))))

(assert (= (and start!117806 res!922832) b!1381059))

(assert (= (and b!1381059 res!922833) b!1381060))

(declare-fun m!1266345 () Bool)

(assert (=> start!117806 m!1266345))

(declare-fun m!1266347 () Bool)

(assert (=> b!1381059 m!1266347))

(assert (=> b!1381059 m!1266347))

(declare-fun m!1266349 () Bool)

(assert (=> b!1381059 m!1266349))

(push 1)

(assert (not start!117806))

(assert (not b!1381059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

