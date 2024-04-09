; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115510 () Bool)

(assert start!115510)

(declare-fun b!1365870 () Bool)

(declare-fun res!909581 () Bool)

(declare-fun e!774304 () Bool)

(assert (=> b!1365870 (=> (not res!909581) (not e!774304))))

(declare-datatypes ((List!32049 0))(
  ( (Nil!32046) (Cons!32045 (h!33254 (_ BitVec 64)) (t!46750 List!32049)) )
))
(declare-fun acc!866 () List!32049)

(declare-fun noDuplicate!2466 (List!32049) Bool)

(assert (=> b!1365870 (= res!909581 (noDuplicate!2466 acc!866))))

(declare-fun b!1365871 () Bool)

(declare-fun res!909582 () Bool)

(declare-fun e!774301 () Bool)

(assert (=> b!1365871 (=> (not res!909582) (not e!774301))))

(declare-fun lt!601369 () List!32049)

(declare-fun lt!601368 () List!32049)

(declare-fun subseq!978 (List!32049 List!32049) Bool)

(assert (=> b!1365871 (= res!909582 (subseq!978 lt!601369 lt!601368))))

(declare-fun b!1365872 () Bool)

(declare-fun res!909565 () Bool)

(assert (=> b!1365872 (=> (not res!909565) (not e!774301))))

(declare-fun contains!9587 (List!32049 (_ BitVec 64)) Bool)

(assert (=> b!1365872 (= res!909565 (not (contains!9587 lt!601368 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909577 () Bool)

(assert (=> start!115510 (=> (not res!909577) (not e!774304))))

(declare-datatypes ((array!92754 0))(
  ( (array!92755 (arr!44801 (Array (_ BitVec 32) (_ BitVec 64))) (size!45352 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92754)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115510 (= res!909577 (and (bvslt (size!45352 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45352 a!3861))))))

(assert (=> start!115510 e!774304))

(declare-fun array_inv!33746 (array!92754) Bool)

(assert (=> start!115510 (array_inv!33746 a!3861)))

(assert (=> start!115510 true))

(declare-fun b!1365873 () Bool)

(declare-fun res!909568 () Bool)

(assert (=> b!1365873 (=> (not res!909568) (not e!774301))))

(assert (=> b!1365873 (= res!909568 (not (contains!9587 lt!601368 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365874 () Bool)

(declare-fun res!909573 () Bool)

(assert (=> b!1365874 (=> (not res!909573) (not e!774301))))

(assert (=> b!1365874 (= res!909573 (noDuplicate!2466 lt!601368))))

(declare-fun b!1365875 () Bool)

(declare-fun res!909579 () Bool)

(declare-fun e!774302 () Bool)

(assert (=> b!1365875 (=> (not res!909579) (not e!774302))))

(assert (=> b!1365875 (= res!909579 (bvslt from!3239 (size!45352 a!3861)))))

(declare-fun b!1365876 () Bool)

(declare-fun res!909566 () Bool)

(assert (=> b!1365876 (=> (not res!909566) (not e!774304))))

(assert (=> b!1365876 (= res!909566 (not (contains!9587 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365877 () Bool)

(declare-fun res!909569 () Bool)

(assert (=> b!1365877 (=> (not res!909569) (not e!774302))))

(assert (=> b!1365877 (= res!909569 (not (contains!9587 acc!866 (select (arr!44801 a!3861) from!3239))))))

(declare-fun b!1365878 () Bool)

(declare-fun res!909578 () Bool)

(assert (=> b!1365878 (=> (not res!909578) (not e!774304))))

(declare-fun newAcc!98 () List!32049)

(assert (=> b!1365878 (= res!909578 (not (contains!9587 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365879 () Bool)

(declare-fun res!909567 () Bool)

(assert (=> b!1365879 (=> (not res!909567) (not e!774304))))

(assert (=> b!1365879 (= res!909567 (subseq!978 newAcc!98 acc!866))))

(declare-fun b!1365880 () Bool)

(declare-fun res!909572 () Bool)

(assert (=> b!1365880 (=> (not res!909572) (not e!774301))))

(assert (=> b!1365880 (= res!909572 (not (contains!9587 lt!601369 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365881 () Bool)

(declare-fun res!909574 () Bool)

(assert (=> b!1365881 (=> (not res!909574) (not e!774301))))

(assert (=> b!1365881 (= res!909574 (not (contains!9587 lt!601369 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365882 () Bool)

(declare-fun res!909576 () Bool)

(assert (=> b!1365882 (=> (not res!909576) (not e!774304))))

(assert (=> b!1365882 (= res!909576 (not (contains!9587 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365883 () Bool)

(assert (=> b!1365883 (= e!774304 e!774302)))

(declare-fun res!909580 () Bool)

(assert (=> b!1365883 (=> (not res!909580) (not e!774302))))

(declare-fun arrayNoDuplicates!0 (array!92754 (_ BitVec 32) List!32049) Bool)

(assert (=> b!1365883 (= res!909580 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45037 0))(
  ( (Unit!45038) )
))
(declare-fun lt!601370 () Unit!45037)

(declare-fun noDuplicateSubseq!165 (List!32049 List!32049) Unit!45037)

(assert (=> b!1365883 (= lt!601370 (noDuplicateSubseq!165 newAcc!98 acc!866))))

(declare-fun b!1365884 () Bool)

(declare-fun res!909571 () Bool)

(assert (=> b!1365884 (=> (not res!909571) (not e!774304))))

(assert (=> b!1365884 (= res!909571 (not (contains!9587 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365885 () Bool)

(declare-fun res!909570 () Bool)

(assert (=> b!1365885 (=> (not res!909570) (not e!774302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365885 (= res!909570 (validKeyInArray!0 (select (arr!44801 a!3861) from!3239)))))

(declare-fun b!1365886 () Bool)

(assert (=> b!1365886 (= e!774301 false)))

(declare-fun lt!601366 () Bool)

(assert (=> b!1365886 (= lt!601366 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601368))))

(declare-fun lt!601367 () Unit!45037)

(assert (=> b!1365886 (= lt!601367 (noDuplicateSubseq!165 lt!601369 lt!601368))))

(declare-fun b!1365887 () Bool)

(assert (=> b!1365887 (= e!774302 e!774301)))

(declare-fun res!909575 () Bool)

(assert (=> b!1365887 (=> (not res!909575) (not e!774301))))

(assert (=> b!1365887 (= res!909575 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365887 (= lt!601369 (Cons!32045 (select (arr!44801 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365887 (= lt!601368 (Cons!32045 (select (arr!44801 a!3861) from!3239) acc!866))))

(assert (= (and start!115510 res!909577) b!1365870))

(assert (= (and b!1365870 res!909581) b!1365882))

(assert (= (and b!1365882 res!909576) b!1365876))

(assert (= (and b!1365876 res!909566) b!1365884))

(assert (= (and b!1365884 res!909571) b!1365878))

(assert (= (and b!1365878 res!909578) b!1365879))

(assert (= (and b!1365879 res!909567) b!1365883))

(assert (= (and b!1365883 res!909580) b!1365875))

(assert (= (and b!1365875 res!909579) b!1365885))

(assert (= (and b!1365885 res!909570) b!1365877))

(assert (= (and b!1365877 res!909569) b!1365887))

(assert (= (and b!1365887 res!909575) b!1365874))

(assert (= (and b!1365874 res!909573) b!1365872))

(assert (= (and b!1365872 res!909565) b!1365873))

(assert (= (and b!1365873 res!909568) b!1365881))

(assert (= (and b!1365881 res!909574) b!1365880))

(assert (= (and b!1365880 res!909572) b!1365871))

(assert (= (and b!1365871 res!909582) b!1365886))

(declare-fun m!1250321 () Bool)

(assert (=> b!1365880 m!1250321))

(declare-fun m!1250323 () Bool)

(assert (=> b!1365887 m!1250323))

(declare-fun m!1250325 () Bool)

(assert (=> b!1365881 m!1250325))

(declare-fun m!1250327 () Bool)

(assert (=> b!1365886 m!1250327))

(declare-fun m!1250329 () Bool)

(assert (=> b!1365886 m!1250329))

(assert (=> b!1365877 m!1250323))

(assert (=> b!1365877 m!1250323))

(declare-fun m!1250331 () Bool)

(assert (=> b!1365877 m!1250331))

(declare-fun m!1250333 () Bool)

(assert (=> b!1365879 m!1250333))

(declare-fun m!1250335 () Bool)

(assert (=> b!1365882 m!1250335))

(assert (=> b!1365885 m!1250323))

(assert (=> b!1365885 m!1250323))

(declare-fun m!1250337 () Bool)

(assert (=> b!1365885 m!1250337))

(declare-fun m!1250339 () Bool)

(assert (=> b!1365871 m!1250339))

(declare-fun m!1250341 () Bool)

(assert (=> b!1365872 m!1250341))

(declare-fun m!1250343 () Bool)

(assert (=> b!1365870 m!1250343))

(declare-fun m!1250345 () Bool)

(assert (=> b!1365874 m!1250345))

(declare-fun m!1250347 () Bool)

(assert (=> start!115510 m!1250347))

(declare-fun m!1250349 () Bool)

(assert (=> b!1365883 m!1250349))

(declare-fun m!1250351 () Bool)

(assert (=> b!1365883 m!1250351))

(declare-fun m!1250353 () Bool)

(assert (=> b!1365873 m!1250353))

(declare-fun m!1250355 () Bool)

(assert (=> b!1365878 m!1250355))

(declare-fun m!1250357 () Bool)

(assert (=> b!1365884 m!1250357))

(declare-fun m!1250359 () Bool)

(assert (=> b!1365876 m!1250359))

(check-sat (not b!1365885) (not b!1365879) (not b!1365880) (not b!1365871) (not b!1365877) (not start!115510) (not b!1365878) (not b!1365872) (not b!1365874) (not b!1365873) (not b!1365883) (not b!1365884) (not b!1365881) (not b!1365876) (not b!1365882) (not b!1365886) (not b!1365870))
(check-sat)
