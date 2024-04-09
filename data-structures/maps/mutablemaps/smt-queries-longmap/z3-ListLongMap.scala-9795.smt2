; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116332 () Bool)

(assert start!116332)

(declare-fun b!1372841 () Bool)

(declare-fun res!916235 () Bool)

(declare-fun e!777708 () Bool)

(assert (=> b!1372841 (=> (not res!916235) (not e!777708))))

(declare-datatypes ((List!32190 0))(
  ( (Nil!32187) (Cons!32186 (h!33395 (_ BitVec 64)) (t!46891 List!32190)) )
))
(declare-fun acc!866 () List!32190)

(declare-fun contains!9728 (List!32190 (_ BitVec 64)) Bool)

(assert (=> b!1372841 (= res!916235 (not (contains!9728 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372842 () Bool)

(declare-fun res!916231 () Bool)

(assert (=> b!1372842 (=> (not res!916231) (not e!777708))))

(declare-fun newAcc!98 () List!32190)

(assert (=> b!1372842 (= res!916231 (not (contains!9728 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372843 () Bool)

(declare-fun res!916233 () Bool)

(assert (=> b!1372843 (=> (not res!916233) (not e!777708))))

(declare-fun noDuplicate!2607 (List!32190) Bool)

(assert (=> b!1372843 (= res!916233 (noDuplicate!2607 acc!866))))

(declare-fun b!1372844 () Bool)

(declare-fun res!916230 () Bool)

(assert (=> b!1372844 (=> (not res!916230) (not e!777708))))

(assert (=> b!1372844 (= res!916230 (not (contains!9728 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372845 () Bool)

(declare-fun res!916232 () Bool)

(assert (=> b!1372845 (=> (not res!916232) (not e!777708))))

(assert (=> b!1372845 (= res!916232 (not (contains!9728 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372846 () Bool)

(declare-fun res!916236 () Bool)

(assert (=> b!1372846 (=> (not res!916236) (not e!777708))))

(declare-fun subseq!1119 (List!32190 List!32190) Bool)

(assert (=> b!1372846 (= res!916236 (subseq!1119 newAcc!98 acc!866))))

(declare-fun b!1372847 () Bool)

(assert (=> b!1372847 (= e!777708 false)))

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602915 () Bool)

(declare-datatypes ((array!93072 0))(
  ( (array!93073 (arr!44942 (Array (_ BitVec 32) (_ BitVec 64))) (size!45493 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93072)

(declare-fun arrayNoDuplicates!0 (array!93072 (_ BitVec 32) List!32190) Bool)

(assert (=> b!1372847 (= lt!602915 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45319 0))(
  ( (Unit!45320) )
))
(declare-fun lt!602914 () Unit!45319)

(declare-fun noDuplicateSubseq!306 (List!32190 List!32190) Unit!45319)

(assert (=> b!1372847 (= lt!602914 (noDuplicateSubseq!306 newAcc!98 acc!866))))

(declare-fun res!916234 () Bool)

(assert (=> start!116332 (=> (not res!916234) (not e!777708))))

(assert (=> start!116332 (= res!916234 (and (bvslt (size!45493 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45493 a!3861))))))

(assert (=> start!116332 e!777708))

(declare-fun array_inv!33887 (array!93072) Bool)

(assert (=> start!116332 (array_inv!33887 a!3861)))

(assert (=> start!116332 true))

(assert (= (and start!116332 res!916234) b!1372843))

(assert (= (and b!1372843 res!916233) b!1372844))

(assert (= (and b!1372844 res!916230) b!1372841))

(assert (= (and b!1372841 res!916235) b!1372842))

(assert (= (and b!1372842 res!916231) b!1372845))

(assert (= (and b!1372845 res!916232) b!1372846))

(assert (= (and b!1372846 res!916236) b!1372847))

(declare-fun m!1256245 () Bool)

(assert (=> b!1372847 m!1256245))

(declare-fun m!1256247 () Bool)

(assert (=> b!1372847 m!1256247))

(declare-fun m!1256249 () Bool)

(assert (=> b!1372845 m!1256249))

(declare-fun m!1256251 () Bool)

(assert (=> start!116332 m!1256251))

(declare-fun m!1256253 () Bool)

(assert (=> b!1372846 m!1256253))

(declare-fun m!1256255 () Bool)

(assert (=> b!1372844 m!1256255))

(declare-fun m!1256257 () Bool)

(assert (=> b!1372843 m!1256257))

(declare-fun m!1256259 () Bool)

(assert (=> b!1372842 m!1256259))

(declare-fun m!1256261 () Bool)

(assert (=> b!1372841 m!1256261))

(check-sat (not b!1372847) (not b!1372846) (not b!1372844) (not b!1372841) (not b!1372845) (not b!1372843) (not b!1372842) (not start!116332))
(check-sat)
