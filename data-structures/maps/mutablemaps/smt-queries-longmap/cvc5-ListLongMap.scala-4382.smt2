; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60336 () Bool)

(assert start!60336)

(declare-fun b!677235 () Bool)

(declare-fun res!443848 () Bool)

(declare-fun e!386068 () Bool)

(assert (=> b!677235 (=> (not res!443848) (not e!386068))))

(declare-datatypes ((array!39339 0))(
  ( (array!39340 (arr!18858 (Array (_ BitVec 32) (_ BitVec 64))) (size!19222 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39339)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12952 0))(
  ( (Nil!12949) (Cons!12948 (h!13993 (_ BitVec 64)) (t!19188 List!12952)) )
))
(declare-fun acc!681 () List!12952)

(declare-fun arrayNoDuplicates!0 (array!39339 (_ BitVec 32) List!12952) Bool)

(assert (=> b!677235 (= res!443848 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677236 () Bool)

(declare-fun e!386066 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3495 (List!12952 (_ BitVec 64)) Bool)

(assert (=> b!677236 (= e!386066 (contains!3495 acc!681 k!2843))))

(declare-fun b!677237 () Bool)

(declare-fun e!386067 () Bool)

(assert (=> b!677237 (= e!386067 (not (contains!3495 acc!681 k!2843)))))

(declare-fun b!677238 () Bool)

(declare-fun res!443841 () Bool)

(assert (=> b!677238 (=> (not res!443841) (not e!386068))))

(declare-fun e!386071 () Bool)

(assert (=> b!677238 (= res!443841 e!386071)))

(declare-fun res!443852 () Bool)

(assert (=> b!677238 (=> res!443852 e!386071)))

(declare-fun e!386065 () Bool)

(assert (=> b!677238 (= res!443852 e!386065)))

(declare-fun res!443854 () Bool)

(assert (=> b!677238 (=> (not res!443854) (not e!386065))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677238 (= res!443854 (bvsgt from!3004 i!1382))))

(declare-fun b!677239 () Bool)

(declare-fun e!386064 () Bool)

(assert (=> b!677239 (= e!386071 e!386064)))

(declare-fun res!443845 () Bool)

(assert (=> b!677239 (=> (not res!443845) (not e!386064))))

(assert (=> b!677239 (= res!443845 (bvsle from!3004 i!1382))))

(declare-fun b!677240 () Bool)

(declare-fun res!443836 () Bool)

(assert (=> b!677240 (=> (not res!443836) (not e!386068))))

(assert (=> b!677240 (= res!443836 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677241 () Bool)

(declare-fun res!443851 () Bool)

(assert (=> b!677241 (=> (not res!443851) (not e!386068))))

(assert (=> b!677241 (= res!443851 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677242 () Bool)

(declare-fun res!443842 () Bool)

(assert (=> b!677242 (=> (not res!443842) (not e!386068))))

(declare-fun e!386069 () Bool)

(assert (=> b!677242 (= res!443842 e!386069)))

(declare-fun res!443849 () Bool)

(assert (=> b!677242 (=> res!443849 e!386069)))

(assert (=> b!677242 (= res!443849 e!386066)))

(declare-fun res!443850 () Bool)

(assert (=> b!677242 (=> (not res!443850) (not e!386066))))

(assert (=> b!677242 (= res!443850 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677243 () Bool)

(assert (=> b!677243 (= e!386069 e!386067)))

(declare-fun res!443835 () Bool)

(assert (=> b!677243 (=> (not res!443835) (not e!386067))))

(assert (=> b!677243 (= res!443835 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677244 () Bool)

(declare-fun res!443853 () Bool)

(assert (=> b!677244 (=> (not res!443853) (not e!386068))))

(assert (=> b!677244 (= res!443853 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12949))))

(declare-fun b!677246 () Bool)

(declare-fun res!443855 () Bool)

(assert (=> b!677246 (=> (not res!443855) (not e!386068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677246 (= res!443855 (not (validKeyInArray!0 (select (arr!18858 a!3626) from!3004))))))

(declare-fun b!677247 () Bool)

(declare-fun res!443844 () Bool)

(assert (=> b!677247 (=> (not res!443844) (not e!386068))))

(assert (=> b!677247 (= res!443844 (not (contains!3495 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677248 () Bool)

(assert (=> b!677248 (= e!386064 (not (contains!3495 acc!681 k!2843)))))

(declare-fun b!677249 () Bool)

(declare-fun res!443847 () Bool)

(assert (=> b!677249 (=> (not res!443847) (not e!386068))))

(assert (=> b!677249 (= res!443847 (not (contains!3495 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677250 () Bool)

(declare-fun res!443843 () Bool)

(assert (=> b!677250 (=> (not res!443843) (not e!386068))))

(assert (=> b!677250 (= res!443843 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19222 a!3626))))))

(declare-fun b!677251 () Bool)

(declare-fun res!443838 () Bool)

(assert (=> b!677251 (=> (not res!443838) (not e!386068))))

(assert (=> b!677251 (= res!443838 (validKeyInArray!0 k!2843))))

(declare-fun b!677245 () Bool)

(declare-fun res!443839 () Bool)

(assert (=> b!677245 (=> (not res!443839) (not e!386068))))

(declare-fun arrayContainsKey!0 (array!39339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677245 (= res!443839 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!443840 () Bool)

(assert (=> start!60336 (=> (not res!443840) (not e!386068))))

(assert (=> start!60336 (= res!443840 (and (bvslt (size!19222 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19222 a!3626))))))

(assert (=> start!60336 e!386068))

(assert (=> start!60336 true))

(declare-fun array_inv!14632 (array!39339) Bool)

(assert (=> start!60336 (array_inv!14632 a!3626)))

(declare-fun b!677252 () Bool)

(declare-fun res!443846 () Bool)

(assert (=> b!677252 (=> (not res!443846) (not e!386068))))

(assert (=> b!677252 (= res!443846 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19222 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677253 () Bool)

(declare-fun res!443837 () Bool)

(assert (=> b!677253 (=> (not res!443837) (not e!386068))))

(declare-fun noDuplicate!742 (List!12952) Bool)

(assert (=> b!677253 (= res!443837 (noDuplicate!742 acc!681))))

(declare-fun b!677254 () Bool)

(assert (=> b!677254 (= e!386065 (contains!3495 acc!681 k!2843))))

(declare-fun b!677255 () Bool)

(assert (=> b!677255 (= e!386068 (not true))))

(assert (=> b!677255 (arrayNoDuplicates!0 (array!39340 (store (arr!18858 a!3626) i!1382 k!2843) (size!19222 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23752 0))(
  ( (Unit!23753) )
))
(declare-fun lt!312765 () Unit!23752)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39339 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12952) Unit!23752)

(assert (=> b!677255 (= lt!312765 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and start!60336 res!443840) b!677253))

(assert (= (and b!677253 res!443837) b!677249))

(assert (= (and b!677249 res!443847) b!677247))

(assert (= (and b!677247 res!443844) b!677238))

(assert (= (and b!677238 res!443854) b!677254))

(assert (= (and b!677238 (not res!443852)) b!677239))

(assert (= (and b!677239 res!443845) b!677248))

(assert (= (and b!677238 res!443841) b!677244))

(assert (= (and b!677244 res!443853) b!677235))

(assert (= (and b!677235 res!443848) b!677250))

(assert (= (and b!677250 res!443843) b!677251))

(assert (= (and b!677251 res!443838) b!677245))

(assert (= (and b!677245 res!443839) b!677252))

(assert (= (and b!677252 res!443846) b!677246))

(assert (= (and b!677246 res!443855) b!677241))

(assert (= (and b!677241 res!443851) b!677242))

(assert (= (and b!677242 res!443850) b!677236))

(assert (= (and b!677242 (not res!443849)) b!677243))

(assert (= (and b!677243 res!443835) b!677237))

(assert (= (and b!677242 res!443842) b!677240))

(assert (= (and b!677240 res!443836) b!677255))

(declare-fun m!643581 () Bool)

(assert (=> b!677245 m!643581))

(declare-fun m!643583 () Bool)

(assert (=> b!677240 m!643583))

(declare-fun m!643585 () Bool)

(assert (=> start!60336 m!643585))

(declare-fun m!643587 () Bool)

(assert (=> b!677254 m!643587))

(declare-fun m!643589 () Bool)

(assert (=> b!677247 m!643589))

(declare-fun m!643591 () Bool)

(assert (=> b!677253 m!643591))

(declare-fun m!643593 () Bool)

(assert (=> b!677244 m!643593))

(declare-fun m!643595 () Bool)

(assert (=> b!677255 m!643595))

(declare-fun m!643597 () Bool)

(assert (=> b!677255 m!643597))

(declare-fun m!643599 () Bool)

(assert (=> b!677255 m!643599))

(assert (=> b!677237 m!643587))

(assert (=> b!677236 m!643587))

(declare-fun m!643601 () Bool)

(assert (=> b!677246 m!643601))

(assert (=> b!677246 m!643601))

(declare-fun m!643603 () Bool)

(assert (=> b!677246 m!643603))

(declare-fun m!643605 () Bool)

(assert (=> b!677235 m!643605))

(assert (=> b!677248 m!643587))

(declare-fun m!643607 () Bool)

(assert (=> b!677249 m!643607))

(declare-fun m!643609 () Bool)

(assert (=> b!677251 m!643609))

(push 1)

(assert (not b!677244))

(assert (not b!677246))

(assert (not b!677255))

(assert (not b!677240))

(assert (not b!677253))

(assert (not b!677245))

(assert (not b!677249))

(assert (not b!677235))

(assert (not b!677247))

(assert (not b!677251))

(assert (not b!677236))

(assert (not b!677254))

(assert (not start!60336))

(assert (not b!677248))

(assert (not b!677237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

