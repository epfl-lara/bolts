; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136848 () Bool)

(assert start!136848)

(declare-fun b!1578620 () Bool)

(declare-fun res!1078699 () Bool)

(declare-fun e!880554 () Bool)

(assert (=> b!1578620 (=> (not res!1078699) (not e!880554))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105768 0))(
  ( (array!105769 (arr!50987 (Array (_ BitVec 32) (_ BitVec 64))) (size!51538 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105768)

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578620 (= res!1078699 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578622 () Bool)

(declare-fun res!1078700 () Bool)

(assert (=> b!1578622 (=> (not res!1078700) (not e!880554))))

(assert (=> b!1578622 (= res!1078700 (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578623 () Bool)

(assert (=> b!1578623 (= e!880554 (bvsge (bvsub from!2937 #b00000000000000000000000000000001) from!2937))))

(declare-fun b!1578621 () Bool)

(declare-fun res!1078698 () Bool)

(assert (=> b!1578621 (=> (not res!1078698) (not e!880554))))

(assert (=> b!1578621 (= res!1078698 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51538 a!3559))))))

(declare-fun res!1078697 () Bool)

(assert (=> start!136848 (=> (not res!1078697) (not e!880554))))

(assert (=> start!136848 (= res!1078697 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51538 a!3559)) (bvslt (size!51538 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136848 e!880554))

(assert (=> start!136848 true))

(declare-fun array_inv!39632 (array!105768) Bool)

(assert (=> start!136848 (array_inv!39632 a!3559)))

(assert (= (and start!136848 res!1078697) b!1578620))

(assert (= (and b!1578620 res!1078699) b!1578621))

(assert (= (and b!1578621 res!1078698) b!1578622))

(assert (= (and b!1578622 res!1078700) b!1578623))

(declare-fun m!1450697 () Bool)

(assert (=> b!1578620 m!1450697))

(declare-fun m!1450699 () Bool)

(assert (=> b!1578622 m!1450699))

(declare-fun m!1450701 () Bool)

(assert (=> start!136848 m!1450701))

(check-sat (not b!1578620) (not b!1578622) (not start!136848))
(check-sat)
