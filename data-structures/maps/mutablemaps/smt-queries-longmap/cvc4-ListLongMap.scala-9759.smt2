; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115716 () Bool)

(assert start!115716)

(declare-fun b!1367650 () Bool)

(declare-fun res!911282 () Bool)

(declare-fun e!775120 () Bool)

(assert (=> b!1367650 (=> (not res!911282) (not e!775120))))

(declare-datatypes ((List!32083 0))(
  ( (Nil!32080) (Cons!32079 (h!33288 (_ BitVec 64)) (t!46784 List!32083)) )
))
(declare-fun newAcc!98 () List!32083)

(declare-fun contains!9621 (List!32083 (_ BitVec 64)) Bool)

(assert (=> b!1367650 (= res!911282 (not (contains!9621 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367651 () Bool)

(declare-fun res!911279 () Bool)

(declare-fun e!775119 () Bool)

(assert (=> b!1367651 (=> (not res!911279) (not e!775119))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92831 0))(
  ( (array!92832 (arr!44835 (Array (_ BitVec 32) (_ BitVec 64))) (size!45386 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92831)

(assert (=> b!1367651 (= res!911279 (bvslt from!3239 (size!45386 a!3861)))))

(declare-fun b!1367652 () Bool)

(declare-fun res!911286 () Bool)

(assert (=> b!1367652 (=> (not res!911286) (not e!775120))))

(declare-fun acc!866 () List!32083)

(assert (=> b!1367652 (= res!911286 (not (contains!9621 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367653 () Bool)

(assert (=> b!1367653 (= e!775119 false)))

(declare-fun lt!601873 () Bool)

(declare-fun noDuplicate!2500 (List!32083) Bool)

(assert (=> b!1367653 (= lt!601873 (noDuplicate!2500 newAcc!98))))

(declare-fun b!1367654 () Bool)

(declare-fun res!911289 () Bool)

(assert (=> b!1367654 (=> (not res!911289) (not e!775119))))

(assert (=> b!1367654 (= res!911289 (contains!9621 acc!866 (select (arr!44835 a!3861) from!3239)))))

(declare-fun b!1367655 () Bool)

(assert (=> b!1367655 (= e!775120 e!775119)))

(declare-fun res!911287 () Bool)

(assert (=> b!1367655 (=> (not res!911287) (not e!775119))))

(declare-fun arrayNoDuplicates!0 (array!92831 (_ BitVec 32) List!32083) Bool)

(assert (=> b!1367655 (= res!911287 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45105 0))(
  ( (Unit!45106) )
))
(declare-fun lt!601874 () Unit!45105)

(declare-fun noDuplicateSubseq!199 (List!32083 List!32083) Unit!45105)

(assert (=> b!1367655 (= lt!601874 (noDuplicateSubseq!199 newAcc!98 acc!866))))

(declare-fun b!1367656 () Bool)

(declare-fun res!911281 () Bool)

(assert (=> b!1367656 (=> (not res!911281) (not e!775119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367656 (= res!911281 (validKeyInArray!0 (select (arr!44835 a!3861) from!3239)))))

(declare-fun b!1367657 () Bool)

(declare-fun res!911285 () Bool)

(assert (=> b!1367657 (=> (not res!911285) (not e!775120))))

(assert (=> b!1367657 (= res!911285 (not (contains!9621 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367658 () Bool)

(declare-fun res!911288 () Bool)

(assert (=> b!1367658 (=> (not res!911288) (not e!775120))))

(assert (=> b!1367658 (= res!911288 (not (contains!9621 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367659 () Bool)

(declare-fun res!911284 () Bool)

(assert (=> b!1367659 (=> (not res!911284) (not e!775120))))

(assert (=> b!1367659 (= res!911284 (noDuplicate!2500 acc!866))))

(declare-fun b!1367660 () Bool)

(declare-fun res!911280 () Bool)

(assert (=> b!1367660 (=> (not res!911280) (not e!775120))))

(declare-fun subseq!1012 (List!32083 List!32083) Bool)

(assert (=> b!1367660 (= res!911280 (subseq!1012 newAcc!98 acc!866))))

(declare-fun res!911283 () Bool)

(assert (=> start!115716 (=> (not res!911283) (not e!775120))))

(assert (=> start!115716 (= res!911283 (and (bvslt (size!45386 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45386 a!3861))))))

(assert (=> start!115716 e!775120))

(declare-fun array_inv!33780 (array!92831) Bool)

(assert (=> start!115716 (array_inv!33780 a!3861)))

(assert (=> start!115716 true))

(assert (= (and start!115716 res!911283) b!1367659))

(assert (= (and b!1367659 res!911284) b!1367657))

(assert (= (and b!1367657 res!911285) b!1367652))

(assert (= (and b!1367652 res!911286) b!1367650))

(assert (= (and b!1367650 res!911282) b!1367658))

(assert (= (and b!1367658 res!911288) b!1367660))

(assert (= (and b!1367660 res!911280) b!1367655))

(assert (= (and b!1367655 res!911287) b!1367651))

(assert (= (and b!1367651 res!911279) b!1367656))

(assert (= (and b!1367656 res!911281) b!1367654))

(assert (= (and b!1367654 res!911289) b!1367653))

(declare-fun m!1251845 () Bool)

(assert (=> b!1367650 m!1251845))

(declare-fun m!1251847 () Bool)

(assert (=> b!1367653 m!1251847))

(declare-fun m!1251849 () Bool)

(assert (=> b!1367658 m!1251849))

(declare-fun m!1251851 () Bool)

(assert (=> start!115716 m!1251851))

(declare-fun m!1251853 () Bool)

(assert (=> b!1367660 m!1251853))

(declare-fun m!1251855 () Bool)

(assert (=> b!1367654 m!1251855))

(assert (=> b!1367654 m!1251855))

(declare-fun m!1251857 () Bool)

(assert (=> b!1367654 m!1251857))

(declare-fun m!1251859 () Bool)

(assert (=> b!1367657 m!1251859))

(assert (=> b!1367656 m!1251855))

(assert (=> b!1367656 m!1251855))

(declare-fun m!1251861 () Bool)

(assert (=> b!1367656 m!1251861))

(declare-fun m!1251863 () Bool)

(assert (=> b!1367659 m!1251863))

(declare-fun m!1251865 () Bool)

(assert (=> b!1367655 m!1251865))

(declare-fun m!1251867 () Bool)

(assert (=> b!1367655 m!1251867))

(declare-fun m!1251869 () Bool)

(assert (=> b!1367652 m!1251869))

(push 1)

(assert (not b!1367659))

