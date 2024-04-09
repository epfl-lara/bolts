; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136812 () Bool)

(assert start!136812)

(declare-fun res!1078574 () Bool)

(declare-fun e!880458 () Bool)

(assert (=> start!136812 (=> (not res!1078574) (not e!880458))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105741 0))(
  ( (array!105742 (arr!50975 (Array (_ BitVec 32) (_ BitVec 64))) (size!51526 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105741)

(assert (=> start!136812 (= res!1078574 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51526 a!3559)) (bvslt (size!51526 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136812 e!880458))

(assert (=> start!136812 true))

(declare-fun array_inv!39620 (array!105741) Bool)

(assert (=> start!136812 (array_inv!39620 a!3559)))

(declare-fun b!1578499 () Bool)

(declare-fun res!1078575 () Bool)

(assert (=> b!1578499 (=> (not res!1078575) (not e!880458))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578499 (= res!1078575 (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578500 () Bool)

(assert (=> b!1578500 (= e!880458 (not true))))

(assert (=> b!1578500 (arrayContainsKey!0 a!3559 k0!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52128 0))(
  ( (Unit!52129) )
))
(declare-fun lt!676240 () Unit!52128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105741 (_ BitVec 64) (_ BitVec 32)) Unit!52128)

(assert (=> b!1578500 (= lt!676240 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578497 () Bool)

(declare-fun res!1078576 () Bool)

(assert (=> b!1578497 (=> (not res!1078576) (not e!880458))))

(assert (=> b!1578497 (= res!1078576 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578498 () Bool)

(declare-fun res!1078577 () Bool)

(assert (=> b!1578498 (=> (not res!1078577) (not e!880458))))

(assert (=> b!1578498 (= res!1078577 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51526 a!3559))))))

(assert (= (and start!136812 res!1078574) b!1578497))

(assert (= (and b!1578497 res!1078576) b!1578498))

(assert (= (and b!1578498 res!1078577) b!1578499))

(assert (= (and b!1578499 res!1078575) b!1578500))

(declare-fun m!1450605 () Bool)

(assert (=> start!136812 m!1450605))

(declare-fun m!1450607 () Bool)

(assert (=> b!1578499 m!1450607))

(declare-fun m!1450609 () Bool)

(assert (=> b!1578500 m!1450609))

(declare-fun m!1450611 () Bool)

(assert (=> b!1578500 m!1450611))

(declare-fun m!1450613 () Bool)

(assert (=> b!1578497 m!1450613))

(check-sat (not b!1578497) (not b!1578499) (not start!136812) (not b!1578500))
