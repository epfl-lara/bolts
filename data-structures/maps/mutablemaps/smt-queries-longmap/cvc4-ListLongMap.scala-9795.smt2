; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116334 () Bool)

(assert start!116334)

(declare-fun b!1372862 () Bool)

(declare-fun res!916256 () Bool)

(declare-fun e!777714 () Bool)

(assert (=> b!1372862 (=> (not res!916256) (not e!777714))))

(declare-datatypes ((List!32191 0))(
  ( (Nil!32188) (Cons!32187 (h!33396 (_ BitVec 64)) (t!46892 List!32191)) )
))
(declare-fun newAcc!98 () List!32191)

(declare-fun acc!866 () List!32191)

(declare-fun subseq!1120 (List!32191 List!32191) Bool)

(assert (=> b!1372862 (= res!916256 (subseq!1120 newAcc!98 acc!866))))

(declare-fun res!916252 () Bool)

(assert (=> start!116334 (=> (not res!916252) (not e!777714))))

(declare-datatypes ((array!93074 0))(
  ( (array!93075 (arr!44943 (Array (_ BitVec 32) (_ BitVec 64))) (size!45494 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93074)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116334 (= res!916252 (and (bvslt (size!45494 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45494 a!3861))))))

(assert (=> start!116334 e!777714))

(declare-fun array_inv!33888 (array!93074) Bool)

(assert (=> start!116334 (array_inv!33888 a!3861)))

(assert (=> start!116334 true))

(declare-fun b!1372863 () Bool)

(declare-fun res!916254 () Bool)

(assert (=> b!1372863 (=> (not res!916254) (not e!777714))))

(declare-fun contains!9729 (List!32191 (_ BitVec 64)) Bool)

(assert (=> b!1372863 (= res!916254 (not (contains!9729 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372864 () Bool)

(declare-fun res!916257 () Bool)

(assert (=> b!1372864 (=> (not res!916257) (not e!777714))))

(declare-fun noDuplicate!2608 (List!32191) Bool)

(assert (=> b!1372864 (= res!916257 (noDuplicate!2608 acc!866))))

(declare-fun b!1372865 () Bool)

(declare-fun res!916255 () Bool)

(assert (=> b!1372865 (=> (not res!916255) (not e!777714))))

(assert (=> b!1372865 (= res!916255 (not (contains!9729 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372866 () Bool)

(assert (=> b!1372866 (= e!777714 false)))

(declare-fun lt!602921 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93074 (_ BitVec 32) List!32191) Bool)

(assert (=> b!1372866 (= lt!602921 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45321 0))(
  ( (Unit!45322) )
))
(declare-fun lt!602920 () Unit!45321)

(declare-fun noDuplicateSubseq!307 (List!32191 List!32191) Unit!45321)

(assert (=> b!1372866 (= lt!602920 (noDuplicateSubseq!307 newAcc!98 acc!866))))

(declare-fun b!1372867 () Bool)

(declare-fun res!916251 () Bool)

(assert (=> b!1372867 (=> (not res!916251) (not e!777714))))

(assert (=> b!1372867 (= res!916251 (not (contains!9729 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372868 () Bool)

(declare-fun res!916253 () Bool)

(assert (=> b!1372868 (=> (not res!916253) (not e!777714))))

(assert (=> b!1372868 (= res!916253 (not (contains!9729 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116334 res!916252) b!1372864))

(assert (= (and b!1372864 res!916257) b!1372867))

(assert (= (and b!1372867 res!916251) b!1372863))

(assert (= (and b!1372863 res!916254) b!1372868))

(assert (= (and b!1372868 res!916253) b!1372865))

(assert (= (and b!1372865 res!916255) b!1372862))

(assert (= (and b!1372862 res!916256) b!1372866))

(declare-fun m!1256263 () Bool)

(assert (=> b!1372864 m!1256263))

(declare-fun m!1256265 () Bool)

(assert (=> b!1372862 m!1256265))

(declare-fun m!1256267 () Bool)

(assert (=> start!116334 m!1256267))

(declare-fun m!1256269 () Bool)

(assert (=> b!1372863 m!1256269))

(declare-fun m!1256271 () Bool)

(assert (=> b!1372865 m!1256271))

(declare-fun m!1256273 () Bool)

(assert (=> b!1372868 m!1256273))

(declare-fun m!1256275 () Bool)

(assert (=> b!1372867 m!1256275))

(declare-fun m!1256277 () Bool)

(assert (=> b!1372866 m!1256277))

(declare-fun m!1256279 () Bool)

(assert (=> b!1372866 m!1256279))

(push 1)

(assert (not b!1372868))

(assert (not b!1372863))

(assert (not b!1372864))

(assert (not b!1372865))

(assert (not b!1372862))

(assert (not start!116334))

(assert (not b!1372867))

(assert (not b!1372866))

(check-sat)

