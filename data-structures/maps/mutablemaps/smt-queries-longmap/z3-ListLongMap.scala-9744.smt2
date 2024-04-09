; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115486 () Bool)

(assert start!115486)

(declare-fun b!1365222 () Bool)

(declare-fun res!908925 () Bool)

(declare-fun e!774157 () Bool)

(assert (=> b!1365222 (=> (not res!908925) (not e!774157))))

(declare-datatypes ((List!32037 0))(
  ( (Nil!32034) (Cons!32033 (h!33242 (_ BitVec 64)) (t!46738 List!32037)) )
))
(declare-fun lt!601189 () List!32037)

(declare-fun contains!9575 (List!32037 (_ BitVec 64)) Bool)

(assert (=> b!1365222 (= res!908925 (not (contains!9575 lt!601189 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365223 () Bool)

(declare-fun res!908919 () Bool)

(declare-fun e!774160 () Bool)

(assert (=> b!1365223 (=> (not res!908919) (not e!774160))))

(declare-fun acc!866 () List!32037)

(assert (=> b!1365223 (= res!908919 (not (contains!9575 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365225 () Bool)

(declare-fun res!908923 () Bool)

(assert (=> b!1365225 (=> (not res!908923) (not e!774160))))

(declare-fun newAcc!98 () List!32037)

(declare-fun subseq!966 (List!32037 List!32037) Bool)

(assert (=> b!1365225 (= res!908923 (subseq!966 newAcc!98 acc!866))))

(declare-fun b!1365226 () Bool)

(declare-fun res!908927 () Bool)

(assert (=> b!1365226 (=> (not res!908927) (not e!774157))))

(declare-fun lt!601187 () List!32037)

(assert (=> b!1365226 (= res!908927 (not (contains!9575 lt!601187 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365227 () Bool)

(declare-fun e!774158 () Bool)

(assert (=> b!1365227 (= e!774158 e!774157)))

(declare-fun res!908932 () Bool)

(assert (=> b!1365227 (=> (not res!908932) (not e!774157))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1365227 (= res!908932 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-datatypes ((array!92730 0))(
  ( (array!92731 (arr!44789 (Array (_ BitVec 32) (_ BitVec 64))) (size!45340 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92730)

(assert (=> b!1365227 (= lt!601189 (Cons!32033 (select (arr!44789 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365227 (= lt!601187 (Cons!32033 (select (arr!44789 a!3861) from!3239) acc!866))))

(declare-fun b!1365228 () Bool)

(declare-fun res!908931 () Bool)

(assert (=> b!1365228 (=> (not res!908931) (not e!774157))))

(assert (=> b!1365228 (= res!908931 (not (contains!9575 lt!601189 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365229 () Bool)

(declare-fun res!908933 () Bool)

(assert (=> b!1365229 (=> (not res!908933) (not e!774157))))

(assert (=> b!1365229 (= res!908933 (not (contains!9575 lt!601187 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365230 () Bool)

(assert (=> b!1365230 (= e!774157 false)))

(declare-fun lt!601188 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92730 (_ BitVec 32) List!32037) Bool)

(assert (=> b!1365230 (= lt!601188 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601187))))

(declare-datatypes ((Unit!45013 0))(
  ( (Unit!45014) )
))
(declare-fun lt!601190 () Unit!45013)

(declare-fun noDuplicateSubseq!153 (List!32037 List!32037) Unit!45013)

(assert (=> b!1365230 (= lt!601190 (noDuplicateSubseq!153 lt!601189 lt!601187))))

(declare-fun b!1365231 () Bool)

(declare-fun res!908928 () Bool)

(assert (=> b!1365231 (=> (not res!908928) (not e!774160))))

(assert (=> b!1365231 (= res!908928 (not (contains!9575 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365232 () Bool)

(assert (=> b!1365232 (= e!774160 e!774158)))

(declare-fun res!908930 () Bool)

(assert (=> b!1365232 (=> (not res!908930) (not e!774158))))

(assert (=> b!1365232 (= res!908930 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601186 () Unit!45013)

(assert (=> b!1365232 (= lt!601186 (noDuplicateSubseq!153 newAcc!98 acc!866))))

(declare-fun b!1365233 () Bool)

(declare-fun res!908920 () Bool)

(assert (=> b!1365233 (=> (not res!908920) (not e!774158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365233 (= res!908920 (validKeyInArray!0 (select (arr!44789 a!3861) from!3239)))))

(declare-fun b!1365234 () Bool)

(declare-fun res!908922 () Bool)

(assert (=> b!1365234 (=> (not res!908922) (not e!774158))))

(assert (=> b!1365234 (= res!908922 (bvslt from!3239 (size!45340 a!3861)))))

(declare-fun b!1365235 () Bool)

(declare-fun res!908924 () Bool)

(assert (=> b!1365235 (=> (not res!908924) (not e!774160))))

(declare-fun noDuplicate!2454 (List!32037) Bool)

(assert (=> b!1365235 (= res!908924 (noDuplicate!2454 acc!866))))

(declare-fun b!1365236 () Bool)

(declare-fun res!908921 () Bool)

(assert (=> b!1365236 (=> (not res!908921) (not e!774160))))

(assert (=> b!1365236 (= res!908921 (not (contains!9575 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365237 () Bool)

(declare-fun res!908917 () Bool)

(assert (=> b!1365237 (=> (not res!908917) (not e!774158))))

(assert (=> b!1365237 (= res!908917 (not (contains!9575 acc!866 (select (arr!44789 a!3861) from!3239))))))

(declare-fun b!1365224 () Bool)

(declare-fun res!908929 () Bool)

(assert (=> b!1365224 (=> (not res!908929) (not e!774157))))

(assert (=> b!1365224 (= res!908929 (noDuplicate!2454 lt!601187))))

(declare-fun res!908926 () Bool)

(assert (=> start!115486 (=> (not res!908926) (not e!774160))))

(assert (=> start!115486 (= res!908926 (and (bvslt (size!45340 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45340 a!3861))))))

(assert (=> start!115486 e!774160))

(declare-fun array_inv!33734 (array!92730) Bool)

(assert (=> start!115486 (array_inv!33734 a!3861)))

(assert (=> start!115486 true))

(declare-fun b!1365238 () Bool)

(declare-fun res!908918 () Bool)

(assert (=> b!1365238 (=> (not res!908918) (not e!774157))))

(assert (=> b!1365238 (= res!908918 (subseq!966 lt!601189 lt!601187))))

(declare-fun b!1365239 () Bool)

(declare-fun res!908934 () Bool)

(assert (=> b!1365239 (=> (not res!908934) (not e!774160))))

(assert (=> b!1365239 (= res!908934 (not (contains!9575 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115486 res!908926) b!1365235))

(assert (= (and b!1365235 res!908924) b!1365223))

(assert (= (and b!1365223 res!908919) b!1365236))

(assert (= (and b!1365236 res!908921) b!1365231))

(assert (= (and b!1365231 res!908928) b!1365239))

(assert (= (and b!1365239 res!908934) b!1365225))

(assert (= (and b!1365225 res!908923) b!1365232))

(assert (= (and b!1365232 res!908930) b!1365234))

(assert (= (and b!1365234 res!908922) b!1365233))

(assert (= (and b!1365233 res!908920) b!1365237))

(assert (= (and b!1365237 res!908917) b!1365227))

(assert (= (and b!1365227 res!908932) b!1365224))

(assert (= (and b!1365224 res!908929) b!1365226))

(assert (= (and b!1365226 res!908927) b!1365229))

(assert (= (and b!1365229 res!908933) b!1365222))

(assert (= (and b!1365222 res!908925) b!1365228))

(assert (= (and b!1365228 res!908931) b!1365238))

(assert (= (and b!1365238 res!908918) b!1365230))

(declare-fun m!1249841 () Bool)

(assert (=> b!1365229 m!1249841))

(declare-fun m!1249843 () Bool)

(assert (=> start!115486 m!1249843))

(declare-fun m!1249845 () Bool)

(assert (=> b!1365228 m!1249845))

(declare-fun m!1249847 () Bool)

(assert (=> b!1365230 m!1249847))

(declare-fun m!1249849 () Bool)

(assert (=> b!1365230 m!1249849))

(declare-fun m!1249851 () Bool)

(assert (=> b!1365236 m!1249851))

(declare-fun m!1249853 () Bool)

(assert (=> b!1365226 m!1249853))

(declare-fun m!1249855 () Bool)

(assert (=> b!1365235 m!1249855))

(declare-fun m!1249857 () Bool)

(assert (=> b!1365232 m!1249857))

(declare-fun m!1249859 () Bool)

(assert (=> b!1365232 m!1249859))

(declare-fun m!1249861 () Bool)

(assert (=> b!1365233 m!1249861))

(assert (=> b!1365233 m!1249861))

(declare-fun m!1249863 () Bool)

(assert (=> b!1365233 m!1249863))

(declare-fun m!1249865 () Bool)

(assert (=> b!1365222 m!1249865))

(declare-fun m!1249867 () Bool)

(assert (=> b!1365239 m!1249867))

(assert (=> b!1365237 m!1249861))

(assert (=> b!1365237 m!1249861))

(declare-fun m!1249869 () Bool)

(assert (=> b!1365237 m!1249869))

(assert (=> b!1365227 m!1249861))

(declare-fun m!1249871 () Bool)

(assert (=> b!1365231 m!1249871))

(declare-fun m!1249873 () Bool)

(assert (=> b!1365225 m!1249873))

(declare-fun m!1249875 () Bool)

(assert (=> b!1365223 m!1249875))

(declare-fun m!1249877 () Bool)

(assert (=> b!1365238 m!1249877))

(declare-fun m!1249879 () Bool)

(assert (=> b!1365224 m!1249879))

(check-sat (not b!1365237) (not b!1365224) (not b!1365239) (not b!1365226) (not b!1365230) (not b!1365222) (not b!1365229) (not b!1365232) (not b!1365236) (not b!1365225) (not b!1365223) (not b!1365238) (not b!1365231) (not b!1365233) (not start!115486) (not b!1365235) (not b!1365228))
(check-sat)
