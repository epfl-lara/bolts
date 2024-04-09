; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115728 () Bool)

(assert start!115728)

(declare-fun b!1367848 () Bool)

(declare-fun res!911482 () Bool)

(declare-fun e!775172 () Bool)

(assert (=> b!1367848 (=> (not res!911482) (not e!775172))))

(declare-datatypes ((List!32089 0))(
  ( (Nil!32086) (Cons!32085 (h!33294 (_ BitVec 64)) (t!46790 List!32089)) )
))
(declare-fun acc!866 () List!32089)

(declare-fun contains!9627 (List!32089 (_ BitVec 64)) Bool)

(assert (=> b!1367848 (= res!911482 (not (contains!9627 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367849 () Bool)

(declare-fun res!911483 () Bool)

(assert (=> b!1367849 (=> (not res!911483) (not e!775172))))

(declare-fun newAcc!98 () List!32089)

(declare-fun subseq!1018 (List!32089 List!32089) Bool)

(assert (=> b!1367849 (= res!911483 (subseq!1018 newAcc!98 acc!866))))

(declare-fun b!1367851 () Bool)

(declare-fun res!911484 () Bool)

(declare-fun e!775174 () Bool)

(assert (=> b!1367851 (=> (not res!911484) (not e!775174))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1367851 (= res!911484 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367852 () Bool)

(declare-fun res!911478 () Bool)

(assert (=> b!1367852 (=> (not res!911478) (not e!775172))))

(assert (=> b!1367852 (= res!911478 (not (contains!9627 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367853 () Bool)

(assert (=> b!1367853 (= e!775174 false)))

(declare-datatypes ((array!92843 0))(
  ( (array!92844 (arr!44841 (Array (_ BitVec 32) (_ BitVec 64))) (size!45392 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92843)

(declare-fun lt!601909 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92843 (_ BitVec 32) List!32089) Bool)

(assert (=> b!1367853 (= lt!601909 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367854 () Bool)

(declare-fun res!911479 () Bool)

(assert (=> b!1367854 (=> (not res!911479) (not e!775172))))

(declare-fun noDuplicate!2506 (List!32089) Bool)

(assert (=> b!1367854 (= res!911479 (noDuplicate!2506 acc!866))))

(declare-fun b!1367855 () Bool)

(declare-fun res!911487 () Bool)

(assert (=> b!1367855 (=> (not res!911487) (not e!775174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367855 (= res!911487 (not (validKeyInArray!0 (select (arr!44841 a!3861) from!3239))))))

(declare-fun b!1367856 () Bool)

(assert (=> b!1367856 (= e!775172 e!775174)))

(declare-fun res!911485 () Bool)

(assert (=> b!1367856 (=> (not res!911485) (not e!775174))))

(assert (=> b!1367856 (= res!911485 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45117 0))(
  ( (Unit!45118) )
))
(declare-fun lt!601910 () Unit!45117)

(declare-fun noDuplicateSubseq!205 (List!32089 List!32089) Unit!45117)

(assert (=> b!1367856 (= lt!601910 (noDuplicateSubseq!205 newAcc!98 acc!866))))

(declare-fun b!1367850 () Bool)

(declare-fun res!911486 () Bool)

(assert (=> b!1367850 (=> (not res!911486) (not e!775174))))

(assert (=> b!1367850 (= res!911486 (bvslt from!3239 (size!45392 a!3861)))))

(declare-fun res!911481 () Bool)

(assert (=> start!115728 (=> (not res!911481) (not e!775172))))

(assert (=> start!115728 (= res!911481 (and (bvslt (size!45392 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45392 a!3861))))))

(assert (=> start!115728 e!775172))

(declare-fun array_inv!33786 (array!92843) Bool)

(assert (=> start!115728 (array_inv!33786 a!3861)))

(assert (=> start!115728 true))

(declare-fun b!1367857 () Bool)

(declare-fun res!911477 () Bool)

(assert (=> b!1367857 (=> (not res!911477) (not e!775172))))

(assert (=> b!1367857 (= res!911477 (not (contains!9627 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367858 () Bool)

(declare-fun res!911480 () Bool)

(assert (=> b!1367858 (=> (not res!911480) (not e!775172))))

(assert (=> b!1367858 (= res!911480 (not (contains!9627 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115728 res!911481) b!1367854))

(assert (= (and b!1367854 res!911479) b!1367848))

(assert (= (and b!1367848 res!911482) b!1367857))

(assert (= (and b!1367857 res!911477) b!1367858))

(assert (= (and b!1367858 res!911480) b!1367852))

(assert (= (and b!1367852 res!911478) b!1367849))

(assert (= (and b!1367849 res!911483) b!1367856))

(assert (= (and b!1367856 res!911485) b!1367850))

(assert (= (and b!1367850 res!911486) b!1367855))

(assert (= (and b!1367855 res!911487) b!1367851))

(assert (= (and b!1367851 res!911484) b!1367853))

(declare-fun m!1251991 () Bool)

(assert (=> b!1367854 m!1251991))

(declare-fun m!1251993 () Bool)

(assert (=> b!1367856 m!1251993))

(declare-fun m!1251995 () Bool)

(assert (=> b!1367856 m!1251995))

(declare-fun m!1251997 () Bool)

(assert (=> b!1367849 m!1251997))

(declare-fun m!1251999 () Bool)

(assert (=> start!115728 m!1251999))

(declare-fun m!1252001 () Bool)

(assert (=> b!1367852 m!1252001))

(declare-fun m!1252003 () Bool)

(assert (=> b!1367858 m!1252003))

(declare-fun m!1252005 () Bool)

(assert (=> b!1367853 m!1252005))

(declare-fun m!1252007 () Bool)

(assert (=> b!1367857 m!1252007))

(declare-fun m!1252009 () Bool)

(assert (=> b!1367855 m!1252009))

(assert (=> b!1367855 m!1252009))

(declare-fun m!1252011 () Bool)

(assert (=> b!1367855 m!1252011))

(declare-fun m!1252013 () Bool)

(assert (=> b!1367848 m!1252013))

(push 1)

(assert (not b!1367856))

