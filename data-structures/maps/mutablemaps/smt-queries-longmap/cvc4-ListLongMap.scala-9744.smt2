; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115488 () Bool)

(assert start!115488)

(declare-fun b!1365276 () Bool)

(declare-fun res!908975 () Bool)

(declare-fun e!774169 () Bool)

(assert (=> b!1365276 (=> (not res!908975) (not e!774169))))

(declare-datatypes ((List!32038 0))(
  ( (Nil!32035) (Cons!32034 (h!33243 (_ BitVec 64)) (t!46739 List!32038)) )
))
(declare-fun acc!866 () List!32038)

(declare-fun noDuplicate!2455 (List!32038) Bool)

(assert (=> b!1365276 (= res!908975 (noDuplicate!2455 acc!866))))

(declare-fun b!1365277 () Bool)

(declare-fun res!908984 () Bool)

(assert (=> b!1365277 (=> (not res!908984) (not e!774169))))

(declare-fun contains!9576 (List!32038 (_ BitVec 64)) Bool)

(assert (=> b!1365277 (= res!908984 (not (contains!9576 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365278 () Bool)

(declare-fun res!908978 () Bool)

(declare-fun e!774172 () Bool)

(assert (=> b!1365278 (=> (not res!908978) (not e!774172))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92732 0))(
  ( (array!92733 (arr!44790 (Array (_ BitVec 32) (_ BitVec 64))) (size!45341 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92732)

(assert (=> b!1365278 (= res!908978 (bvslt from!3239 (size!45341 a!3861)))))

(declare-fun b!1365279 () Bool)

(declare-fun res!908982 () Bool)

(assert (=> b!1365279 (=> (not res!908982) (not e!774172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365279 (= res!908982 (validKeyInArray!0 (select (arr!44790 a!3861) from!3239)))))

(declare-fun b!1365280 () Bool)

(declare-fun res!908973 () Bool)

(assert (=> b!1365280 (=> (not res!908973) (not e!774172))))

(assert (=> b!1365280 (= res!908973 (not (contains!9576 acc!866 (select (arr!44790 a!3861) from!3239))))))

(declare-fun b!1365281 () Bool)

(declare-fun res!908987 () Bool)

(declare-fun e!774171 () Bool)

(assert (=> b!1365281 (=> (not res!908987) (not e!774171))))

(declare-fun lt!601201 () List!32038)

(assert (=> b!1365281 (= res!908987 (not (contains!9576 lt!601201 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365282 () Bool)

(assert (=> b!1365282 (= e!774169 e!774172)))

(declare-fun res!908974 () Bool)

(assert (=> b!1365282 (=> (not res!908974) (not e!774172))))

(declare-fun arrayNoDuplicates!0 (array!92732 (_ BitVec 32) List!32038) Bool)

(assert (=> b!1365282 (= res!908974 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45015 0))(
  ( (Unit!45016) )
))
(declare-fun lt!601204 () Unit!45015)

(declare-fun newAcc!98 () List!32038)

(declare-fun noDuplicateSubseq!154 (List!32038 List!32038) Unit!45015)

(assert (=> b!1365282 (= lt!601204 (noDuplicateSubseq!154 newAcc!98 acc!866))))

(declare-fun res!908981 () Bool)

(assert (=> start!115488 (=> (not res!908981) (not e!774169))))

(assert (=> start!115488 (= res!908981 (and (bvslt (size!45341 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45341 a!3861))))))

(assert (=> start!115488 e!774169))

(declare-fun array_inv!33735 (array!92732) Bool)

(assert (=> start!115488 (array_inv!33735 a!3861)))

(assert (=> start!115488 true))

(declare-fun b!1365283 () Bool)

(declare-fun res!908979 () Bool)

(assert (=> b!1365283 (=> (not res!908979) (not e!774169))))

(declare-fun subseq!967 (List!32038 List!32038) Bool)

(assert (=> b!1365283 (= res!908979 (subseq!967 newAcc!98 acc!866))))

(declare-fun b!1365284 () Bool)

(declare-fun res!908986 () Bool)

(assert (=> b!1365284 (=> (not res!908986) (not e!774171))))

(assert (=> b!1365284 (= res!908986 (not (contains!9576 lt!601201 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365285 () Bool)

(declare-fun res!908971 () Bool)

(assert (=> b!1365285 (=> (not res!908971) (not e!774169))))

(assert (=> b!1365285 (= res!908971 (not (contains!9576 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365286 () Bool)

(declare-fun res!908972 () Bool)

(assert (=> b!1365286 (=> (not res!908972) (not e!774171))))

(declare-fun lt!601203 () List!32038)

(assert (=> b!1365286 (= res!908972 (not (contains!9576 lt!601203 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365287 () Bool)

(declare-fun res!908976 () Bool)

(assert (=> b!1365287 (=> (not res!908976) (not e!774171))))

(assert (=> b!1365287 (= res!908976 (not (contains!9576 lt!601203 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365288 () Bool)

(declare-fun res!908988 () Bool)

(assert (=> b!1365288 (=> (not res!908988) (not e!774169))))

(assert (=> b!1365288 (= res!908988 (not (contains!9576 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365289 () Bool)

(declare-fun res!908983 () Bool)

(assert (=> b!1365289 (=> (not res!908983) (not e!774171))))

(assert (=> b!1365289 (= res!908983 (subseq!967 lt!601201 lt!601203))))

(declare-fun b!1365290 () Bool)

(assert (=> b!1365290 (= e!774172 e!774171)))

(declare-fun res!908985 () Bool)

(assert (=> b!1365290 (=> (not res!908985) (not e!774171))))

(assert (=> b!1365290 (= res!908985 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365290 (= lt!601201 (Cons!32034 (select (arr!44790 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365290 (= lt!601203 (Cons!32034 (select (arr!44790 a!3861) from!3239) acc!866))))

(declare-fun b!1365291 () Bool)

(declare-fun res!908977 () Bool)

(assert (=> b!1365291 (=> (not res!908977) (not e!774169))))

(assert (=> b!1365291 (= res!908977 (not (contains!9576 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365292 () Bool)

(assert (=> b!1365292 (= e!774171 false)))

(declare-fun lt!601202 () Bool)

(assert (=> b!1365292 (= lt!601202 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601203))))

(declare-fun lt!601205 () Unit!45015)

(assert (=> b!1365292 (= lt!601205 (noDuplicateSubseq!154 lt!601201 lt!601203))))

(declare-fun b!1365293 () Bool)

(declare-fun res!908980 () Bool)

(assert (=> b!1365293 (=> (not res!908980) (not e!774171))))

(assert (=> b!1365293 (= res!908980 (noDuplicate!2455 lt!601203))))

(assert (= (and start!115488 res!908981) b!1365276))

(assert (= (and b!1365276 res!908975) b!1365285))

(assert (= (and b!1365285 res!908971) b!1365277))

(assert (= (and b!1365277 res!908984) b!1365288))

(assert (= (and b!1365288 res!908988) b!1365291))

(assert (= (and b!1365291 res!908977) b!1365283))

(assert (= (and b!1365283 res!908979) b!1365282))

(assert (= (and b!1365282 res!908974) b!1365278))

(assert (= (and b!1365278 res!908978) b!1365279))

(assert (= (and b!1365279 res!908982) b!1365280))

(assert (= (and b!1365280 res!908973) b!1365290))

(assert (= (and b!1365290 res!908985) b!1365293))

(assert (= (and b!1365293 res!908980) b!1365287))

(assert (= (and b!1365287 res!908976) b!1365286))

(assert (= (and b!1365286 res!908972) b!1365281))

(assert (= (and b!1365281 res!908987) b!1365284))

(assert (= (and b!1365284 res!908986) b!1365289))

(assert (= (and b!1365289 res!908983) b!1365292))

(declare-fun m!1249881 () Bool)

(assert (=> b!1365283 m!1249881))

(declare-fun m!1249883 () Bool)

(assert (=> b!1365282 m!1249883))

(declare-fun m!1249885 () Bool)

(assert (=> b!1365282 m!1249885))

(declare-fun m!1249887 () Bool)

(assert (=> b!1365284 m!1249887))

(declare-fun m!1249889 () Bool)

(assert (=> b!1365280 m!1249889))

(assert (=> b!1365280 m!1249889))

(declare-fun m!1249891 () Bool)

(assert (=> b!1365280 m!1249891))

(declare-fun m!1249893 () Bool)

(assert (=> b!1365285 m!1249893))

(declare-fun m!1249895 () Bool)

(assert (=> b!1365292 m!1249895))

(declare-fun m!1249897 () Bool)

(assert (=> b!1365292 m!1249897))

(declare-fun m!1249899 () Bool)

(assert (=> b!1365293 m!1249899))

(declare-fun m!1249901 () Bool)

(assert (=> b!1365287 m!1249901))

(assert (=> b!1365290 m!1249889))

(declare-fun m!1249903 () Bool)

(assert (=> b!1365289 m!1249903))

(declare-fun m!1249905 () Bool)

(assert (=> b!1365291 m!1249905))

(declare-fun m!1249907 () Bool)

(assert (=> b!1365277 m!1249907))

(declare-fun m!1249909 () Bool)

(assert (=> b!1365286 m!1249909))

(declare-fun m!1249911 () Bool)

(assert (=> b!1365288 m!1249911))

(declare-fun m!1249913 () Bool)

(assert (=> b!1365276 m!1249913))

(declare-fun m!1249915 () Bool)

(assert (=> b!1365281 m!1249915))

(assert (=> b!1365279 m!1249889))

(assert (=> b!1365279 m!1249889))

(declare-fun m!1249917 () Bool)

(assert (=> b!1365279 m!1249917))

(declare-fun m!1249919 () Bool)

(assert (=> start!115488 m!1249919))

(push 1)

