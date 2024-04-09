; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117748 () Bool)

(assert start!117748)

(declare-fun res!922766 () Bool)

(declare-fun e!782746 () Bool)

(assert (=> start!117748 (=> (not res!922766) (not e!782746))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94146 0))(
  ( (array!94147 (arr!45458 (Array (_ BitVec 32) (_ BitVec 64))) (size!46009 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94146)

(assert (=> start!117748 (= res!922766 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46009 a!3464)) (bvslt (size!46009 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117748 e!782746))

(assert (=> start!117748 true))

(declare-fun array_inv!34403 (array!94146) Bool)

(assert (=> start!117748 (array_inv!34403 a!3464)))

(declare-fun b!1380957 () Bool)

(declare-fun res!922767 () Bool)

(assert (=> b!1380957 (=> (not res!922767) (not e!782746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380957 (= res!922767 (validKeyInArray!0 (select (arr!45458 a!3464) from!2839)))))

(declare-fun b!1380958 () Bool)

(assert (=> b!1380958 (= e!782746 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117748 res!922766) b!1380957))

(assert (= (and b!1380957 res!922767) b!1380958))

(declare-fun m!1266237 () Bool)

(assert (=> start!117748 m!1266237))

(declare-fun m!1266239 () Bool)

(assert (=> b!1380957 m!1266239))

(assert (=> b!1380957 m!1266239))

(declare-fun m!1266241 () Bool)

(assert (=> b!1380957 m!1266241))

(check-sat (not start!117748) (not b!1380957))
(check-sat)
