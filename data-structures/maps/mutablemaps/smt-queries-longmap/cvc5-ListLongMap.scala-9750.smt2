; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115520 () Bool)

(assert start!115520)

(declare-fun b!1366140 () Bool)

(declare-fun e!774364 () Bool)

(declare-fun e!774361 () Bool)

(assert (=> b!1366140 (= e!774364 e!774361)))

(declare-fun res!909850 () Bool)

(assert (=> b!1366140 (=> (not res!909850) (not e!774361))))

(declare-datatypes ((array!92764 0))(
  ( (array!92765 (arr!44806 (Array (_ BitVec 32) (_ BitVec 64))) (size!45357 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92764)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32054 0))(
  ( (Nil!32051) (Cons!32050 (h!33259 (_ BitVec 64)) (t!46755 List!32054)) )
))
(declare-fun acc!866 () List!32054)

(declare-fun arrayNoDuplicates!0 (array!92764 (_ BitVec 32) List!32054) Bool)

(assert (=> b!1366140 (= res!909850 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45047 0))(
  ( (Unit!45048) )
))
(declare-fun lt!601445 () Unit!45047)

(declare-fun newAcc!98 () List!32054)

(declare-fun noDuplicateSubseq!170 (List!32054 List!32054) Unit!45047)

(assert (=> b!1366140 (= lt!601445 (noDuplicateSubseq!170 newAcc!98 acc!866))))

(declare-fun b!1366141 () Bool)

(declare-fun res!909842 () Bool)

(assert (=> b!1366141 (=> (not res!909842) (not e!774361))))

(declare-fun contains!9592 (List!32054 (_ BitVec 64)) Bool)

(assert (=> b!1366141 (= res!909842 (not (contains!9592 acc!866 (select (arr!44806 a!3861) from!3239))))))

(declare-fun b!1366142 () Bool)

(declare-fun res!909852 () Bool)

(assert (=> b!1366142 (=> (not res!909852) (not e!774364))))

(assert (=> b!1366142 (= res!909852 (not (contains!9592 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366143 () Bool)

(declare-fun res!909836 () Bool)

(assert (=> b!1366143 (=> (not res!909836) (not e!774364))))

(assert (=> b!1366143 (= res!909836 (not (contains!9592 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366144 () Bool)

(declare-fun res!909845 () Bool)

(assert (=> b!1366144 (=> (not res!909845) (not e!774364))))

(assert (=> b!1366144 (= res!909845 (not (contains!9592 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366145 () Bool)

(declare-fun e!774362 () Bool)

(assert (=> b!1366145 (= e!774361 e!774362)))

(declare-fun res!909846 () Bool)

(assert (=> b!1366145 (=> (not res!909846) (not e!774362))))

(assert (=> b!1366145 (= res!909846 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun lt!601442 () List!32054)

(assert (=> b!1366145 (= lt!601442 (Cons!32050 (select (arr!44806 a!3861) from!3239) newAcc!98))))

(declare-fun lt!601444 () List!32054)

(assert (=> b!1366145 (= lt!601444 (Cons!32050 (select (arr!44806 a!3861) from!3239) acc!866))))

(declare-fun b!1366146 () Bool)

(declare-fun res!909843 () Bool)

(assert (=> b!1366146 (=> (not res!909843) (not e!774362))))

(assert (=> b!1366146 (= res!909843 (not (contains!9592 lt!601444 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366147 () Bool)

(declare-fun res!909851 () Bool)

(assert (=> b!1366147 (=> (not res!909851) (not e!774362))))

(declare-fun subseq!983 (List!32054 List!32054) Bool)

(assert (=> b!1366147 (= res!909851 (subseq!983 lt!601442 lt!601444))))

(declare-fun b!1366148 () Bool)

(declare-fun res!909835 () Bool)

(assert (=> b!1366148 (=> (not res!909835) (not e!774362))))

(declare-fun noDuplicate!2471 (List!32054) Bool)

(assert (=> b!1366148 (= res!909835 (noDuplicate!2471 lt!601444))))

(declare-fun b!1366149 () Bool)

(declare-fun res!909841 () Bool)

(assert (=> b!1366149 (=> (not res!909841) (not e!774362))))

(assert (=> b!1366149 (= res!909841 (not (contains!9592 lt!601442 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366150 () Bool)

(declare-fun res!909849 () Bool)

(assert (=> b!1366150 (=> (not res!909849) (not e!774364))))

(assert (=> b!1366150 (= res!909849 (not (contains!9592 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366151 () Bool)

(declare-fun res!909838 () Bool)

(assert (=> b!1366151 (=> (not res!909838) (not e!774362))))

(assert (=> b!1366151 (= res!909838 (not (contains!9592 lt!601444 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909840 () Bool)

(assert (=> start!115520 (=> (not res!909840) (not e!774364))))

(assert (=> start!115520 (= res!909840 (and (bvslt (size!45357 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45357 a!3861))))))

(assert (=> start!115520 e!774364))

(declare-fun array_inv!33751 (array!92764) Bool)

(assert (=> start!115520 (array_inv!33751 a!3861)))

(assert (=> start!115520 true))

(declare-fun b!1366152 () Bool)

(declare-fun res!909848 () Bool)

(assert (=> b!1366152 (=> (not res!909848) (not e!774362))))

(assert (=> b!1366152 (= res!909848 (not (contains!9592 lt!601442 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366153 () Bool)

(declare-fun res!909839 () Bool)

(assert (=> b!1366153 (=> (not res!909839) (not e!774364))))

(assert (=> b!1366153 (= res!909839 (subseq!983 newAcc!98 acc!866))))

(declare-fun b!1366154 () Bool)

(declare-fun res!909844 () Bool)

(assert (=> b!1366154 (=> (not res!909844) (not e!774361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366154 (= res!909844 (validKeyInArray!0 (select (arr!44806 a!3861) from!3239)))))

(declare-fun b!1366155 () Bool)

(assert (=> b!1366155 (= e!774362 false)))

(declare-fun lt!601441 () Bool)

(assert (=> b!1366155 (= lt!601441 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601444))))

(declare-fun lt!601443 () Unit!45047)

(assert (=> b!1366155 (= lt!601443 (noDuplicateSubseq!170 lt!601442 lt!601444))))

(declare-fun b!1366156 () Bool)

(declare-fun res!909837 () Bool)

(assert (=> b!1366156 (=> (not res!909837) (not e!774361))))

(assert (=> b!1366156 (= res!909837 (bvslt from!3239 (size!45357 a!3861)))))

(declare-fun b!1366157 () Bool)

(declare-fun res!909847 () Bool)

(assert (=> b!1366157 (=> (not res!909847) (not e!774364))))

(assert (=> b!1366157 (= res!909847 (noDuplicate!2471 acc!866))))

(assert (= (and start!115520 res!909840) b!1366157))

(assert (= (and b!1366157 res!909847) b!1366150))

(assert (= (and b!1366150 res!909849) b!1366143))

(assert (= (and b!1366143 res!909836) b!1366144))

(assert (= (and b!1366144 res!909845) b!1366142))

(assert (= (and b!1366142 res!909852) b!1366153))

(assert (= (and b!1366153 res!909839) b!1366140))

(assert (= (and b!1366140 res!909850) b!1366156))

(assert (= (and b!1366156 res!909837) b!1366154))

(assert (= (and b!1366154 res!909844) b!1366141))

(assert (= (and b!1366141 res!909842) b!1366145))

(assert (= (and b!1366145 res!909846) b!1366148))

(assert (= (and b!1366148 res!909835) b!1366151))

(assert (= (and b!1366151 res!909838) b!1366146))

(assert (= (and b!1366146 res!909843) b!1366152))

(assert (= (and b!1366152 res!909848) b!1366149))

(assert (= (and b!1366149 res!909841) b!1366147))

(assert (= (and b!1366147 res!909851) b!1366155))

(declare-fun m!1250521 () Bool)

(assert (=> b!1366144 m!1250521))

(declare-fun m!1250523 () Bool)

(assert (=> b!1366152 m!1250523))

(declare-fun m!1250525 () Bool)

(assert (=> b!1366148 m!1250525))

(declare-fun m!1250527 () Bool)

(assert (=> b!1366157 m!1250527))

(declare-fun m!1250529 () Bool)

(assert (=> b!1366147 m!1250529))

(declare-fun m!1250531 () Bool)

(assert (=> b!1366146 m!1250531))

(declare-fun m!1250533 () Bool)

(assert (=> b!1366141 m!1250533))

(assert (=> b!1366141 m!1250533))

(declare-fun m!1250535 () Bool)

(assert (=> b!1366141 m!1250535))

(declare-fun m!1250537 () Bool)

(assert (=> b!1366153 m!1250537))

(assert (=> b!1366154 m!1250533))

(assert (=> b!1366154 m!1250533))

(declare-fun m!1250539 () Bool)

(assert (=> b!1366154 m!1250539))

(declare-fun m!1250541 () Bool)

(assert (=> b!1366140 m!1250541))

(declare-fun m!1250543 () Bool)

(assert (=> b!1366140 m!1250543))

(declare-fun m!1250545 () Bool)

(assert (=> b!1366151 m!1250545))

(declare-fun m!1250547 () Bool)

(assert (=> b!1366150 m!1250547))

(declare-fun m!1250549 () Bool)

(assert (=> b!1366149 m!1250549))

(declare-fun m!1250551 () Bool)

(assert (=> b!1366155 m!1250551))

(declare-fun m!1250553 () Bool)

(assert (=> b!1366155 m!1250553))

(assert (=> b!1366145 m!1250533))

(declare-fun m!1250555 () Bool)

(assert (=> b!1366142 m!1250555))

(declare-fun m!1250557 () Bool)

(assert (=> start!115520 m!1250557))

(declare-fun m!1250559 () Bool)

(assert (=> b!1366143 m!1250559))

(push 1)

