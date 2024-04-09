; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117808 () Bool)

(assert start!117808)

(declare-fun res!922838 () Bool)

(declare-fun e!782863 () Bool)

(assert (=> start!117808 (=> (not res!922838) (not e!782863))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94191 0))(
  ( (array!94192 (arr!45479 (Array (_ BitVec 32) (_ BitVec 64))) (size!46030 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94191)

(assert (=> start!117808 (= res!922838 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46030 a!3464)) (bvslt (size!46030 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117808 e!782863))

(assert (=> start!117808 true))

(declare-fun array_inv!34424 (array!94191) Bool)

(assert (=> start!117808 (array_inv!34424 a!3464)))

(declare-fun b!1381065 () Bool)

(declare-fun res!922839 () Bool)

(assert (=> b!1381065 (=> (not res!922839) (not e!782863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381065 (= res!922839 (not (validKeyInArray!0 (select (arr!45479 a!3464) from!2839))))))

(declare-fun b!1381066 () Bool)

(assert (=> b!1381066 (= e!782863 (bvsge (bvsub (size!46030 a!3464) (bvadd #b00000000000000000000000000000001 from!2839)) (bvsub (size!46030 a!3464) from!2839)))))

(assert (= (and start!117808 res!922838) b!1381065))

(assert (= (and b!1381065 res!922839) b!1381066))

(declare-fun m!1266351 () Bool)

(assert (=> start!117808 m!1266351))

(declare-fun m!1266353 () Bool)

(assert (=> b!1381065 m!1266353))

(assert (=> b!1381065 m!1266353))

(declare-fun m!1266355 () Bool)

(assert (=> b!1381065 m!1266355))

(check-sat (not start!117808) (not b!1381065))
(check-sat)
