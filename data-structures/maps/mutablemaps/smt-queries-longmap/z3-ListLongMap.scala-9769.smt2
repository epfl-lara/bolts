; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115774 () Bool)

(assert start!115774)

(declare-fun b!1368621 () Bool)

(declare-fun res!912254 () Bool)

(declare-fun e!775380 () Bool)

(assert (=> b!1368621 (=> (not res!912254) (not e!775380))))

(declare-datatypes ((List!32112 0))(
  ( (Nil!32109) (Cons!32108 (h!33317 (_ BitVec 64)) (t!46813 List!32112)) )
))
(declare-fun acc!866 () List!32112)

(declare-fun contains!9650 (List!32112 (_ BitVec 64)) Bool)

(assert (=> b!1368621 (= res!912254 (not (contains!9650 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368622 () Bool)

(declare-fun res!912251 () Bool)

(assert (=> b!1368622 (=> (not res!912251) (not e!775380))))

(declare-fun noDuplicate!2529 (List!32112) Bool)

(assert (=> b!1368622 (= res!912251 (noDuplicate!2529 acc!866))))

(declare-fun res!912255 () Bool)

(assert (=> start!115774 (=> (not res!912255) (not e!775380))))

(declare-datatypes ((array!92889 0))(
  ( (array!92890 (arr!44864 (Array (_ BitVec 32) (_ BitVec 64))) (size!45415 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92889)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115774 (= res!912255 (and (bvslt (size!45415 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45415 a!3861))))))

(assert (=> start!115774 e!775380))

(declare-fun array_inv!33809 (array!92889) Bool)

(assert (=> start!115774 (array_inv!33809 a!3861)))

(assert (=> start!115774 true))

(declare-fun b!1368623 () Bool)

(declare-fun res!912250 () Bool)

(declare-fun e!775381 () Bool)

(assert (=> b!1368623 (=> (not res!912250) (not e!775381))))

(assert (=> b!1368623 (= res!912250 (bvslt from!3239 (size!45415 a!3861)))))

(declare-fun b!1368624 () Bool)

(assert (=> b!1368624 (= e!775380 e!775381)))

(declare-fun res!912257 () Bool)

(assert (=> b!1368624 (=> (not res!912257) (not e!775381))))

(declare-fun arrayNoDuplicates!0 (array!92889 (_ BitVec 32) List!32112) Bool)

(assert (=> b!1368624 (= res!912257 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45163 0))(
  ( (Unit!45164) )
))
(declare-fun lt!602048 () Unit!45163)

(declare-fun newAcc!98 () List!32112)

(declare-fun noDuplicateSubseq!228 (List!32112 List!32112) Unit!45163)

(assert (=> b!1368624 (= lt!602048 (noDuplicateSubseq!228 newAcc!98 acc!866))))

(declare-fun b!1368625 () Bool)

(declare-fun res!912256 () Bool)

(assert (=> b!1368625 (=> (not res!912256) (not e!775381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368625 (= res!912256 (not (validKeyInArray!0 (select (arr!44864 a!3861) from!3239))))))

(declare-fun b!1368626 () Bool)

(declare-fun res!912253 () Bool)

(assert (=> b!1368626 (=> (not res!912253) (not e!775380))))

(declare-fun subseq!1041 (List!32112 List!32112) Bool)

(assert (=> b!1368626 (= res!912253 (subseq!1041 newAcc!98 acc!866))))

(declare-fun b!1368627 () Bool)

(declare-fun res!912261 () Bool)

(assert (=> b!1368627 (=> (not res!912261) (not e!775380))))

(assert (=> b!1368627 (= res!912261 (not (contains!9650 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368628 () Bool)

(assert (=> b!1368628 (= e!775381 (not true))))

(assert (=> b!1368628 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602047 () Unit!45163)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92889 List!32112 List!32112 (_ BitVec 32)) Unit!45163)

(assert (=> b!1368628 (= lt!602047 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368629 () Bool)

(declare-fun res!912260 () Bool)

(assert (=> b!1368629 (=> (not res!912260) (not e!775381))))

(assert (=> b!1368629 (= res!912260 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368630 () Bool)

(declare-fun res!912252 () Bool)

(assert (=> b!1368630 (=> (not res!912252) (not e!775380))))

(assert (=> b!1368630 (= res!912252 (not (contains!9650 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368631 () Bool)

(declare-fun res!912259 () Bool)

(assert (=> b!1368631 (=> (not res!912259) (not e!775380))))

(assert (=> b!1368631 (= res!912259 (not (contains!9650 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368632 () Bool)

(declare-fun res!912258 () Bool)

(assert (=> b!1368632 (=> (not res!912258) (not e!775381))))

(assert (=> b!1368632 (= res!912258 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(assert (= (and start!115774 res!912255) b!1368622))

(assert (= (and b!1368622 res!912251) b!1368621))

(assert (= (and b!1368621 res!912254) b!1368630))

(assert (= (and b!1368630 res!912252) b!1368631))

(assert (= (and b!1368631 res!912259) b!1368627))

(assert (= (and b!1368627 res!912261) b!1368626))

(assert (= (and b!1368626 res!912253) b!1368624))

(assert (= (and b!1368624 res!912257) b!1368623))

(assert (= (and b!1368623 res!912250) b!1368625))

(assert (= (and b!1368625 res!912256) b!1368629))

(assert (= (and b!1368629 res!912260) b!1368632))

(assert (= (and b!1368632 res!912258) b!1368628))

(declare-fun m!1252559 () Bool)

(assert (=> b!1368627 m!1252559))

(declare-fun m!1252561 () Bool)

(assert (=> b!1368621 m!1252561))

(declare-fun m!1252563 () Bool)

(assert (=> b!1368625 m!1252563))

(assert (=> b!1368625 m!1252563))

(declare-fun m!1252565 () Bool)

(assert (=> b!1368625 m!1252565))

(declare-fun m!1252567 () Bool)

(assert (=> b!1368628 m!1252567))

(declare-fun m!1252569 () Bool)

(assert (=> b!1368628 m!1252569))

(declare-fun m!1252571 () Bool)

(assert (=> b!1368626 m!1252571))

(declare-fun m!1252573 () Bool)

(assert (=> b!1368630 m!1252573))

(declare-fun m!1252575 () Bool)

(assert (=> start!115774 m!1252575))

(declare-fun m!1252577 () Bool)

(assert (=> b!1368624 m!1252577))

(declare-fun m!1252579 () Bool)

(assert (=> b!1368624 m!1252579))

(declare-fun m!1252581 () Bool)

(assert (=> b!1368622 m!1252581))

(declare-fun m!1252583 () Bool)

(assert (=> b!1368632 m!1252583))

(declare-fun m!1252585 () Bool)

(assert (=> b!1368631 m!1252585))

(check-sat (not b!1368630) (not b!1368621) (not b!1368624) (not b!1368627) (not b!1368632) (not b!1368631) (not start!115774) (not b!1368625) (not b!1368622) (not b!1368626) (not b!1368628))
(check-sat)
