; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117316 () Bool)

(assert start!117316)

(declare-fun res!922095 () Bool)

(declare-fun e!781531 () Bool)

(assert (=> start!117316 (=> (not res!922095) (not e!781531))))

(declare-datatypes ((array!93828 0))(
  ( (array!93829 (arr!45308 (Array (_ BitVec 32) (_ BitVec 64))) (size!45859 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93828)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(declare-fun from!3388 () (_ BitVec 32))

(assert (=> start!117316 (= res!922095 (and (bvslt (size!45859 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45859 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117316 e!781531))

(declare-fun array_inv!34253 (array!93828) Bool)

(assert (=> start!117316 (array_inv!34253 a!4010)))

(assert (=> start!117316 true))

(declare-fun b!1379548 () Bool)

(assert (=> b!1379548 (= e!781531 false)))

(declare-fun lt!607624 () Bool)

(declare-fun isPivot!0 (array!93828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379548 (= lt!607624 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and start!117316 res!922095) b!1379548))

(declare-fun m!1264777 () Bool)

(assert (=> start!117316 m!1264777))

(declare-fun m!1264779 () Bool)

(assert (=> b!1379548 m!1264779))

(check-sat (not b!1379548) (not start!117316))
