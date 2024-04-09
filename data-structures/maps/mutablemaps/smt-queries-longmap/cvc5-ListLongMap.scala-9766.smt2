; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115754 () Bool)

(assert start!115754)

(declare-fun b!1368277 () Bool)

(declare-fun e!775291 () Bool)

(assert (=> b!1368277 (= e!775291 false)))

(declare-datatypes ((array!92869 0))(
  ( (array!92870 (arr!44854 (Array (_ BitVec 32) (_ BitVec 64))) (size!45405 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92869)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!601988 () Bool)

(declare-datatypes ((List!32102 0))(
  ( (Nil!32099) (Cons!32098 (h!33307 (_ BitVec 64)) (t!46803 List!32102)) )
))
(declare-fun acc!866 () List!32102)

(declare-fun arrayNoDuplicates!0 (array!92869 (_ BitVec 32) List!32102) Bool)

(assert (=> b!1368277 (= lt!601988 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368278 () Bool)

(declare-fun res!911913 () Bool)

(declare-fun e!775289 () Bool)

(assert (=> b!1368278 (=> (not res!911913) (not e!775289))))

(declare-fun noDuplicate!2519 (List!32102) Bool)

(assert (=> b!1368278 (= res!911913 (noDuplicate!2519 acc!866))))

(declare-fun b!1368279 () Bool)

(declare-fun res!911909 () Bool)

(assert (=> b!1368279 (=> (not res!911909) (not e!775291))))

(assert (=> b!1368279 (= res!911909 (bvslt from!3239 (size!45405 a!3861)))))

(declare-fun b!1368280 () Bool)

(assert (=> b!1368280 (= e!775289 e!775291)))

(declare-fun res!911906 () Bool)

(assert (=> b!1368280 (=> (not res!911906) (not e!775291))))

(assert (=> b!1368280 (= res!911906 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45143 0))(
  ( (Unit!45144) )
))
(declare-fun lt!601987 () Unit!45143)

(declare-fun newAcc!98 () List!32102)

(declare-fun noDuplicateSubseq!218 (List!32102 List!32102) Unit!45143)

(assert (=> b!1368280 (= lt!601987 (noDuplicateSubseq!218 newAcc!98 acc!866))))

(declare-fun res!911908 () Bool)

(assert (=> start!115754 (=> (not res!911908) (not e!775289))))

(assert (=> start!115754 (= res!911908 (and (bvslt (size!45405 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45405 a!3861))))))

(assert (=> start!115754 e!775289))

(declare-fun array_inv!33799 (array!92869) Bool)

(assert (=> start!115754 (array_inv!33799 a!3861)))

(assert (=> start!115754 true))

(declare-fun b!1368281 () Bool)

(declare-fun res!911916 () Bool)

(assert (=> b!1368281 (=> (not res!911916) (not e!775289))))

(declare-fun contains!9640 (List!32102 (_ BitVec 64)) Bool)

(assert (=> b!1368281 (= res!911916 (not (contains!9640 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368282 () Bool)

(declare-fun res!911910 () Bool)

(assert (=> b!1368282 (=> (not res!911910) (not e!775289))))

(assert (=> b!1368282 (= res!911910 (not (contains!9640 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368283 () Bool)

(declare-fun res!911907 () Bool)

(assert (=> b!1368283 (=> (not res!911907) (not e!775289))))

(assert (=> b!1368283 (= res!911907 (not (contains!9640 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368284 () Bool)

(declare-fun res!911915 () Bool)

(assert (=> b!1368284 (=> (not res!911915) (not e!775291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368284 (= res!911915 (not (validKeyInArray!0 (select (arr!44854 a!3861) from!3239))))))

(declare-fun b!1368285 () Bool)

(declare-fun res!911911 () Bool)

(assert (=> b!1368285 (=> (not res!911911) (not e!775289))))

(declare-fun subseq!1031 (List!32102 List!32102) Bool)

(assert (=> b!1368285 (= res!911911 (subseq!1031 newAcc!98 acc!866))))

(declare-fun b!1368286 () Bool)

(declare-fun res!911914 () Bool)

(assert (=> b!1368286 (=> (not res!911914) (not e!775289))))

(assert (=> b!1368286 (= res!911914 (not (contains!9640 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368287 () Bool)

(declare-fun res!911912 () Bool)

(assert (=> b!1368287 (=> (not res!911912) (not e!775291))))

(assert (=> b!1368287 (= res!911912 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (= (and start!115754 res!911908) b!1368278))

(assert (= (and b!1368278 res!911913) b!1368283))

(assert (= (and b!1368283 res!911907) b!1368282))

(assert (= (and b!1368282 res!911910) b!1368281))

(assert (= (and b!1368281 res!911916) b!1368286))

(assert (= (and b!1368286 res!911914) b!1368285))

(assert (= (and b!1368285 res!911911) b!1368280))

(assert (= (and b!1368280 res!911906) b!1368279))

(assert (= (and b!1368279 res!911909) b!1368284))

(assert (= (and b!1368284 res!911915) b!1368287))

(assert (= (and b!1368287 res!911912) b!1368277))

(declare-fun m!1252303 () Bool)

(assert (=> b!1368282 m!1252303))

(declare-fun m!1252305 () Bool)

(assert (=> b!1368280 m!1252305))

(declare-fun m!1252307 () Bool)

(assert (=> b!1368280 m!1252307))

(declare-fun m!1252309 () Bool)

(assert (=> b!1368283 m!1252309))

(declare-fun m!1252311 () Bool)

(assert (=> b!1368281 m!1252311))

(declare-fun m!1252313 () Bool)

(assert (=> start!115754 m!1252313))

(declare-fun m!1252315 () Bool)

(assert (=> b!1368286 m!1252315))

(declare-fun m!1252317 () Bool)

(assert (=> b!1368285 m!1252317))

(declare-fun m!1252319 () Bool)

(assert (=> b!1368277 m!1252319))

(declare-fun m!1252321 () Bool)

(assert (=> b!1368284 m!1252321))

(assert (=> b!1368284 m!1252321))

(declare-fun m!1252323 () Bool)

(assert (=> b!1368284 m!1252323))

(declare-fun m!1252325 () Bool)

(assert (=> b!1368278 m!1252325))

(push 1)

