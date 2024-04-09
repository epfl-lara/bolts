; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117746 () Bool)

(assert start!117746)

(declare-fun res!922760 () Bool)

(declare-fun e!782740 () Bool)

(assert (=> start!117746 (=> (not res!922760) (not e!782740))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94144 0))(
  ( (array!94145 (arr!45457 (Array (_ BitVec 32) (_ BitVec 64))) (size!46008 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94144)

(assert (=> start!117746 (= res!922760 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46008 a!3464)) (bvslt (size!46008 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117746 e!782740))

(assert (=> start!117746 true))

(declare-fun array_inv!34402 (array!94144) Bool)

(assert (=> start!117746 (array_inv!34402 a!3464)))

(declare-fun b!1380951 () Bool)

(declare-fun res!922761 () Bool)

(assert (=> b!1380951 (=> (not res!922761) (not e!782740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380951 (= res!922761 (validKeyInArray!0 (select (arr!45457 a!3464) from!2839)))))

(declare-fun b!1380952 () Bool)

(assert (=> b!1380952 (= e!782740 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117746 res!922760) b!1380951))

(assert (= (and b!1380951 res!922761) b!1380952))

(declare-fun m!1266231 () Bool)

(assert (=> start!117746 m!1266231))

(declare-fun m!1266233 () Bool)

(assert (=> b!1380951 m!1266233))

(assert (=> b!1380951 m!1266233))

(declare-fun m!1266235 () Bool)

(assert (=> b!1380951 m!1266235))

(push 1)

(assert (not start!117746))

(assert (not b!1380951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

