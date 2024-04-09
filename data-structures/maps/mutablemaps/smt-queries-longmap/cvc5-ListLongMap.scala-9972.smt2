; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117776 () Bool)

(assert start!117776)

(declare-fun res!922796 () Bool)

(declare-fun e!782803 () Bool)

(assert (=> start!117776 (=> (not res!922796) (not e!782803))))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94174 0))(
  ( (array!94175 (arr!45472 (Array (_ BitVec 32) (_ BitVec 64))) (size!46023 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94174)

(declare-fun from!2839 () (_ BitVec 32))

(assert (=> start!117776 (= res!922796 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46023 a!3464)) (bvslt (size!46023 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117776 e!782803))

(assert (=> start!117776 true))

(declare-fun array_inv!34417 (array!94174) Bool)

(assert (=> start!117776 (array_inv!34417 a!3464)))

(declare-fun b!1380987 () Bool)

(declare-fun res!922797 () Bool)

(assert (=> b!1380987 (=> (not res!922797) (not e!782803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380987 (= res!922797 (validKeyInArray!0 (select (arr!45472 a!3464) from!2839)))))

(declare-fun b!1380988 () Bool)

(assert (=> b!1380988 (= e!782803 (bvsge (bvsub (size!46023 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46023 a!3464) from!2839)))))

(assert (= (and start!117776 res!922796) b!1380987))

(assert (= (and b!1380987 res!922797) b!1380988))

(declare-fun m!1266285 () Bool)

(assert (=> start!117776 m!1266285))

(declare-fun m!1266287 () Bool)

(assert (=> b!1380987 m!1266287))

(assert (=> b!1380987 m!1266287))

(declare-fun m!1266289 () Bool)

(assert (=> b!1380987 m!1266289))

(push 1)

(assert (not start!117776))

(assert (not b!1380987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

