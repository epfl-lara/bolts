; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117810 () Bool)

(assert start!117810)

(declare-fun res!922844 () Bool)

(declare-fun e!782869 () Bool)

(assert (=> start!117810 (=> (not res!922844) (not e!782869))))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94193 0))(
  ( (array!94194 (arr!45480 (Array (_ BitVec 32) (_ BitVec 64))) (size!46031 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94193)

(declare-fun from!2839 () (_ BitVec 32))

(assert (=> start!117810 (= res!922844 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46031 a!3464)) (bvslt (size!46031 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117810 e!782869))

(assert (=> start!117810 true))

(declare-fun array_inv!34425 (array!94193) Bool)

(assert (=> start!117810 (array_inv!34425 a!3464)))

(declare-fun b!1381071 () Bool)

(declare-fun res!922845 () Bool)

(assert (=> b!1381071 (=> (not res!922845) (not e!782869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381071 (= res!922845 (not (validKeyInArray!0 (select (arr!45480 a!3464) from!2839))))))

(declare-fun b!1381072 () Bool)

(assert (=> b!1381072 (= e!782869 (bvsge (bvsub (size!46031 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46031 a!3464) from!2839)))))

(assert (= (and start!117810 res!922844) b!1381071))

(assert (= (and b!1381071 res!922845) b!1381072))

(declare-fun m!1266357 () Bool)

(assert (=> start!117810 m!1266357))

(declare-fun m!1266359 () Bool)

(assert (=> b!1381071 m!1266359))

(assert (=> b!1381071 m!1266359))

(declare-fun m!1266361 () Bool)

(assert (=> b!1381071 m!1266361))

(push 1)

(assert (not start!117810))

(assert (not b!1381071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

