; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113926 () Bool)

(assert start!113926)

(declare-fun b!1350475 () Bool)

(declare-fun res!896052 () Bool)

(declare-fun e!768295 () Bool)

(assert (=> b!1350475 (=> (not res!896052) (not e!768295))))

(declare-datatypes ((List!31680 0))(
  ( (Nil!31677) (Cons!31676 (h!32885 (_ BitVec 64)) (t!46345 List!31680)) )
))
(declare-fun acc!759 () List!31680)

(declare-fun contains!9245 (List!31680 (_ BitVec 64)) Bool)

(assert (=> b!1350475 (= res!896052 (not (contains!9245 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350476 () Bool)

(assert (=> b!1350476 (= e!768295 false)))

(declare-fun lt!596930 () Bool)

(declare-datatypes ((array!92031 0))(
  ( (array!92032 (arr!44459 (Array (_ BitVec 32) (_ BitVec 64))) (size!45010 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92031)

(declare-fun arrayNoDuplicates!0 (array!92031 (_ BitVec 32) List!31680) Bool)

(assert (=> b!1350476 (= lt!596930 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31677))))

(declare-fun b!1350474 () Bool)

(declare-fun res!896054 () Bool)

(assert (=> b!1350474 (=> (not res!896054) (not e!768295))))

(assert (=> b!1350474 (= res!896054 (not (contains!9245 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350473 () Bool)

(declare-fun res!896053 () Bool)

(assert (=> b!1350473 (=> (not res!896053) (not e!768295))))

(declare-fun noDuplicate!2124 (List!31680) Bool)

(assert (=> b!1350473 (= res!896053 (noDuplicate!2124 acc!759))))

(declare-fun res!896055 () Bool)

(assert (=> start!113926 (=> (not res!896055) (not e!768295))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113926 (= res!896055 (and (bvslt (size!45010 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45010 a!3742))))))

(assert (=> start!113926 e!768295))

(declare-fun array_inv!33404 (array!92031) Bool)

(assert (=> start!113926 (array_inv!33404 a!3742)))

(assert (=> start!113926 true))

(assert (= (and start!113926 res!896055) b!1350473))

(assert (= (and b!1350473 res!896053) b!1350474))

(assert (= (and b!1350474 res!896054) b!1350475))

(assert (= (and b!1350475 res!896052) b!1350476))

(declare-fun m!1237727 () Bool)

(assert (=> b!1350475 m!1237727))

(declare-fun m!1237729 () Bool)

(assert (=> start!113926 m!1237729))

(declare-fun m!1237731 () Bool)

(assert (=> b!1350473 m!1237731))

(declare-fun m!1237733 () Bool)

(assert (=> b!1350474 m!1237733))

(declare-fun m!1237735 () Bool)

(assert (=> b!1350476 m!1237735))

(check-sat (not start!113926) (not b!1350473) (not b!1350476) (not b!1350475) (not b!1350474))
(check-sat)
