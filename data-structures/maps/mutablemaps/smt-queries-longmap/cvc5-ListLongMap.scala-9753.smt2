; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115586 () Bool)

(assert start!115586)

(declare-fun b!1366678 () Bool)

(declare-fun res!910351 () Bool)

(declare-fun e!774630 () Bool)

(assert (=> b!1366678 (=> (not res!910351) (not e!774630))))

(declare-datatypes ((List!32063 0))(
  ( (Nil!32060) (Cons!32059 (h!33268 (_ BitVec 64)) (t!46764 List!32063)) )
))
(declare-fun newAcc!98 () List!32063)

(declare-fun contains!9601 (List!32063 (_ BitVec 64)) Bool)

(assert (=> b!1366678 (= res!910351 (not (contains!9601 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910352 () Bool)

(assert (=> start!115586 (=> (not res!910352) (not e!774630))))

(declare-datatypes ((array!92785 0))(
  ( (array!92786 (arr!44815 (Array (_ BitVec 32) (_ BitVec 64))) (size!45366 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92785)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115586 (= res!910352 (and (bvslt (size!45366 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45366 a!3861))))))

(assert (=> start!115586 e!774630))

(declare-fun array_inv!33760 (array!92785) Bool)

(assert (=> start!115586 (array_inv!33760 a!3861)))

(assert (=> start!115586 true))

(declare-fun b!1366679 () Bool)

(declare-fun res!910354 () Bool)

(assert (=> b!1366679 (=> (not res!910354) (not e!774630))))

(declare-fun acc!866 () List!32063)

(declare-fun noDuplicate!2480 (List!32063) Bool)

(assert (=> b!1366679 (= res!910354 (noDuplicate!2480 acc!866))))

(declare-fun b!1366680 () Bool)

(declare-fun e!774629 () Bool)

(assert (=> b!1366680 (= e!774629 (not true))))

(declare-datatypes ((Unit!45065 0))(
  ( (Unit!45066) )
))
(declare-fun lt!601609 () Unit!45065)

(declare-fun lt!601607 () List!32063)

(declare-fun lt!601606 () List!32063)

(declare-fun noDuplicateSubseq!179 (List!32063 List!32063) Unit!45065)

(assert (=> b!1366680 (= lt!601609 (noDuplicateSubseq!179 lt!601607 lt!601606))))

(declare-fun arrayNoDuplicates!0 (array!92785 (_ BitVec 32) List!32063) Bool)

(assert (=> b!1366680 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601607)))

(declare-fun lt!601608 () Unit!45065)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92785 List!32063 List!32063 (_ BitVec 32)) Unit!45065)

(assert (=> b!1366680 (= lt!601608 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601606 lt!601607 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366680 (= lt!601607 (Cons!32059 (select (arr!44815 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366680 (= lt!601606 (Cons!32059 (select (arr!44815 a!3861) from!3239) acc!866))))

(declare-fun b!1366681 () Bool)

(declare-fun res!910356 () Bool)

(assert (=> b!1366681 (=> (not res!910356) (not e!774629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366681 (= res!910356 (validKeyInArray!0 (select (arr!44815 a!3861) from!3239)))))

(declare-fun b!1366682 () Bool)

(declare-fun res!910350 () Bool)

(assert (=> b!1366682 (=> (not res!910350) (not e!774630))))

(assert (=> b!1366682 (= res!910350 (not (contains!9601 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366683 () Bool)

(declare-fun res!910358 () Bool)

(assert (=> b!1366683 (=> (not res!910358) (not e!774630))))

(assert (=> b!1366683 (= res!910358 (not (contains!9601 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366684 () Bool)

(declare-fun res!910359 () Bool)

(assert (=> b!1366684 (=> (not res!910359) (not e!774629))))

(assert (=> b!1366684 (= res!910359 (not (contains!9601 acc!866 (select (arr!44815 a!3861) from!3239))))))

(declare-fun b!1366685 () Bool)

(declare-fun res!910349 () Bool)

(assert (=> b!1366685 (=> (not res!910349) (not e!774630))))

(assert (=> b!1366685 (= res!910349 (not (contains!9601 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366686 () Bool)

(declare-fun res!910353 () Bool)

(assert (=> b!1366686 (=> (not res!910353) (not e!774630))))

(declare-fun subseq!992 (List!32063 List!32063) Bool)

(assert (=> b!1366686 (= res!910353 (subseq!992 newAcc!98 acc!866))))

(declare-fun b!1366687 () Bool)

(declare-fun res!910355 () Bool)

(assert (=> b!1366687 (=> (not res!910355) (not e!774629))))

(assert (=> b!1366687 (= res!910355 (bvslt from!3239 (size!45366 a!3861)))))

(declare-fun b!1366688 () Bool)

(assert (=> b!1366688 (= e!774630 e!774629)))

(declare-fun res!910357 () Bool)

(assert (=> b!1366688 (=> (not res!910357) (not e!774629))))

(assert (=> b!1366688 (= res!910357 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601610 () Unit!45065)

(assert (=> b!1366688 (= lt!601610 (noDuplicateSubseq!179 newAcc!98 acc!866))))

(assert (= (and start!115586 res!910352) b!1366679))

(assert (= (and b!1366679 res!910354) b!1366685))

(assert (= (and b!1366685 res!910349) b!1366682))

(assert (= (and b!1366682 res!910350) b!1366683))

(assert (= (and b!1366683 res!910358) b!1366678))

(assert (= (and b!1366678 res!910351) b!1366686))

(assert (= (and b!1366686 res!910353) b!1366688))

(assert (= (and b!1366688 res!910357) b!1366687))

(assert (= (and b!1366687 res!910355) b!1366681))

(assert (= (and b!1366681 res!910356) b!1366684))

(assert (= (and b!1366684 res!910359) b!1366680))

(declare-fun m!1250995 () Bool)

(assert (=> b!1366681 m!1250995))

(assert (=> b!1366681 m!1250995))

(declare-fun m!1250997 () Bool)

(assert (=> b!1366681 m!1250997))

(declare-fun m!1250999 () Bool)

(assert (=> b!1366683 m!1250999))

(declare-fun m!1251001 () Bool)

(assert (=> b!1366678 m!1251001))

(declare-fun m!1251003 () Bool)

(assert (=> b!1366688 m!1251003))

(declare-fun m!1251005 () Bool)

(assert (=> b!1366688 m!1251005))

(assert (=> b!1366684 m!1250995))

(assert (=> b!1366684 m!1250995))

(declare-fun m!1251007 () Bool)

(assert (=> b!1366684 m!1251007))

(declare-fun m!1251009 () Bool)

(assert (=> start!115586 m!1251009))

(declare-fun m!1251011 () Bool)

(assert (=> b!1366682 m!1251011))

(declare-fun m!1251013 () Bool)

(assert (=> b!1366679 m!1251013))

(declare-fun m!1251015 () Bool)

(assert (=> b!1366680 m!1251015))

(declare-fun m!1251017 () Bool)

(assert (=> b!1366680 m!1251017))

(declare-fun m!1251019 () Bool)

(assert (=> b!1366680 m!1251019))

(assert (=> b!1366680 m!1250995))

(declare-fun m!1251021 () Bool)

(assert (=> b!1366686 m!1251021))

(declare-fun m!1251023 () Bool)

(assert (=> b!1366685 m!1251023))

(push 1)

