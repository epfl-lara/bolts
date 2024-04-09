; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117778 () Bool)

(assert start!117778)

(declare-fun res!922802 () Bool)

(declare-fun e!782809 () Bool)

(assert (=> start!117778 (=> (not res!922802) (not e!782809))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-datatypes ((array!94176 0))(
  ( (array!94177 (arr!45473 (Array (_ BitVec 32) (_ BitVec 64))) (size!46024 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94176)

(declare-fun to!94 () (_ BitVec 32))

(assert (=> start!117778 (= res!922802 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46024 a!3464)) (bvslt (size!46024 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117778 e!782809))

(assert (=> start!117778 true))

(declare-fun array_inv!34418 (array!94176) Bool)

(assert (=> start!117778 (array_inv!34418 a!3464)))

(declare-fun b!1380993 () Bool)

(declare-fun res!922803 () Bool)

(assert (=> b!1380993 (=> (not res!922803) (not e!782809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380993 (= res!922803 (validKeyInArray!0 (select (arr!45473 a!3464) from!2839)))))

(declare-fun b!1380994 () Bool)

(assert (=> b!1380994 (= e!782809 (bvsge (bvsub (size!46024 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46024 a!3464) from!2839)))))

(assert (= (and start!117778 res!922802) b!1380993))

(assert (= (and b!1380993 res!922803) b!1380994))

(declare-fun m!1266291 () Bool)

(assert (=> start!117778 m!1266291))

(declare-fun m!1266293 () Bool)

(assert (=> b!1380993 m!1266293))

(assert (=> b!1380993 m!1266293))

(declare-fun m!1266295 () Bool)

(assert (=> b!1380993 m!1266295))

(check-sat (not start!117778) (not b!1380993))
(check-sat)
