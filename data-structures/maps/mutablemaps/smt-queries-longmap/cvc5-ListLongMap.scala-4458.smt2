; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62058 () Bool)

(assert start!62058)

(declare-fun b!694242 () Bool)

(declare-fun res!458478 () Bool)

(declare-fun e!394923 () Bool)

(assert (=> b!694242 (=> (not res!458478) (not e!394923))))

(declare-datatypes ((List!13180 0))(
  ( (Nil!13177) (Cons!13176 (h!14221 (_ BitVec 64)) (t!19467 List!13180)) )
))
(declare-fun acc!681 () List!13180)

(declare-fun contains!3723 (List!13180 (_ BitVec 64)) Bool)

(assert (=> b!694242 (= res!458478 (not (contains!3723 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694243 () Bool)

(declare-fun res!458475 () Bool)

(declare-fun e!394931 () Bool)

(assert (=> b!694243 (=> (not res!458475) (not e!394931))))

(declare-fun lt!316846 () List!13180)

(assert (=> b!694243 (= res!458475 (not (contains!3723 lt!316846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694244 () Bool)

(declare-fun res!458458 () Bool)

(assert (=> b!694244 (=> (not res!458458) (not e!394923))))

(declare-fun noDuplicate!970 (List!13180) Bool)

(assert (=> b!694244 (= res!458458 (noDuplicate!970 acc!681))))

(declare-fun b!694245 () Bool)

(declare-fun e!394933 () Bool)

(assert (=> b!694245 (= e!394933 e!394931)))

(declare-fun res!458464 () Bool)

(assert (=> b!694245 (=> (not res!458464) (not e!394931))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!694245 (= res!458464 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39855 0))(
  ( (array!39856 (arr!19086 (Array (_ BitVec 32) (_ BitVec 64))) (size!19469 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39855)

(declare-fun $colon$colon!433 (List!13180 (_ BitVec 64)) List!13180)

(assert (=> b!694245 (= lt!316846 ($colon$colon!433 acc!681 (select (arr!19086 a!3626) from!3004)))))

(declare-fun b!694246 () Bool)

(declare-fun res!458470 () Bool)

(assert (=> b!694246 (=> (not res!458470) (not e!394923))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694246 (= res!458470 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19469 a!3626))))))

(declare-fun b!694247 () Bool)

(declare-fun res!458463 () Bool)

(assert (=> b!694247 (=> (not res!458463) (not e!394923))))

(declare-fun e!394924 () Bool)

(assert (=> b!694247 (= res!458463 e!394924)))

(declare-fun res!458473 () Bool)

(assert (=> b!694247 (=> res!458473 e!394924)))

(declare-fun e!394932 () Bool)

(assert (=> b!694247 (= res!458473 e!394932)))

(declare-fun res!458467 () Bool)

(assert (=> b!694247 (=> (not res!458467) (not e!394932))))

(assert (=> b!694247 (= res!458467 (bvsgt from!3004 i!1382))))

(declare-fun b!694248 () Bool)

(declare-fun res!458477 () Bool)

(assert (=> b!694248 (=> (not res!458477) (not e!394923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694248 (= res!458477 (validKeyInArray!0 (select (arr!19086 a!3626) from!3004)))))

(declare-fun b!694249 () Bool)

(declare-fun e!394925 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!694249 (= e!394925 (not (contains!3723 lt!316846 k!2843)))))

(declare-fun b!694250 () Bool)

(declare-fun res!458462 () Bool)

(assert (=> b!694250 (=> (not res!458462) (not e!394923))))

(declare-fun arrayContainsKey!0 (array!39855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694250 (= res!458462 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694251 () Bool)

(assert (=> b!694251 (= e!394923 e!394933)))

(declare-fun res!458472 () Bool)

(assert (=> b!694251 (=> (not res!458472) (not e!394933))))

(assert (=> b!694251 (= res!458472 (not (= (select (arr!19086 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!24514 0))(
  ( (Unit!24515) )
))
(declare-fun lt!316847 () Unit!24514)

(declare-fun e!394927 () Unit!24514)

(assert (=> b!694251 (= lt!316847 e!394927)))

(declare-fun c!78260 () Bool)

(assert (=> b!694251 (= c!78260 (= (select (arr!19086 a!3626) from!3004) k!2843))))

(declare-fun b!694252 () Bool)

(assert (=> b!694252 (= e!394932 (contains!3723 acc!681 k!2843))))

(declare-fun b!694253 () Bool)

(declare-fun res!458465 () Bool)

(assert (=> b!694253 (=> (not res!458465) (not e!394931))))

(assert (=> b!694253 (= res!458465 (noDuplicate!970 lt!316846))))

(declare-fun b!694254 () Bool)

(declare-fun e!394928 () Bool)

(assert (=> b!694254 (= e!394924 e!394928)))

(declare-fun res!458461 () Bool)

(assert (=> b!694254 (=> (not res!458461) (not e!394928))))

(assert (=> b!694254 (= res!458461 (bvsle from!3004 i!1382))))

(declare-fun b!694255 () Bool)

(declare-fun res!458474 () Bool)

(assert (=> b!694255 (=> (not res!458474) (not e!394931))))

(assert (=> b!694255 (= res!458474 (not (contains!3723 lt!316846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694256 () Bool)

(declare-fun res!458480 () Bool)

(assert (=> b!694256 (=> (not res!458480) (not e!394931))))

(declare-fun e!394926 () Bool)

(assert (=> b!694256 (= res!458480 e!394926)))

(declare-fun res!458471 () Bool)

(assert (=> b!694256 (=> res!458471 e!394926)))

(declare-fun e!394930 () Bool)

(assert (=> b!694256 (= res!458471 e!394930)))

(declare-fun res!458469 () Bool)

(assert (=> b!694256 (=> (not res!458469) (not e!394930))))

(assert (=> b!694256 (= res!458469 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694258 () Bool)

(declare-fun Unit!24516 () Unit!24514)

(assert (=> b!694258 (= e!394927 Unit!24516)))

(assert (=> b!694258 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316848 () Unit!24514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39855 (_ BitVec 64) (_ BitVec 32)) Unit!24514)

(assert (=> b!694258 (= lt!316848 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694258 false))

(declare-fun b!694259 () Bool)

(declare-fun res!458466 () Bool)

(assert (=> b!694259 (=> (not res!458466) (not e!394931))))

(declare-fun arrayNoDuplicates!0 (array!39855 (_ BitVec 32) List!13180) Bool)

(assert (=> b!694259 (= res!458466 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316846))))

(declare-fun b!694260 () Bool)

(assert (=> b!694260 (= e!394931 (bvsge (bvsub (size!19469 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19469 a!3626) from!3004)))))

(declare-fun b!694261 () Bool)

(declare-fun res!458460 () Bool)

(assert (=> b!694261 (=> (not res!458460) (not e!394923))))

(assert (=> b!694261 (= res!458460 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13177))))

(declare-fun b!694262 () Bool)

(declare-fun res!458457 () Bool)

(assert (=> b!694262 (=> (not res!458457) (not e!394923))))

(assert (=> b!694262 (= res!458457 (not (contains!3723 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694263 () Bool)

(declare-fun res!458459 () Bool)

(assert (=> b!694263 (=> (not res!458459) (not e!394923))))

(assert (=> b!694263 (= res!458459 (validKeyInArray!0 k!2843))))

(declare-fun b!694264 () Bool)

(assert (=> b!694264 (= e!394926 e!394925)))

(declare-fun res!458456 () Bool)

(assert (=> b!694264 (=> (not res!458456) (not e!394925))))

(assert (=> b!694264 (= res!458456 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!458479 () Bool)

(assert (=> start!62058 (=> (not res!458479) (not e!394923))))

(assert (=> start!62058 (= res!458479 (and (bvslt (size!19469 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19469 a!3626))))))

(assert (=> start!62058 e!394923))

(assert (=> start!62058 true))

(declare-fun array_inv!14860 (array!39855) Bool)

(assert (=> start!62058 (array_inv!14860 a!3626)))

(declare-fun b!694257 () Bool)

(assert (=> b!694257 (= e!394930 (contains!3723 lt!316846 k!2843))))

(declare-fun b!694265 () Bool)

(declare-fun res!458468 () Bool)

(assert (=> b!694265 (=> (not res!458468) (not e!394923))))

(assert (=> b!694265 (= res!458468 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19469 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694266 () Bool)

(assert (=> b!694266 (= e!394928 (not (contains!3723 acc!681 k!2843)))))

(declare-fun b!694267 () Bool)

(declare-fun res!458476 () Bool)

(assert (=> b!694267 (=> (not res!458476) (not e!394923))))

(assert (=> b!694267 (= res!458476 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694268 () Bool)

(declare-fun Unit!24517 () Unit!24514)

(assert (=> b!694268 (= e!394927 Unit!24517)))

(assert (= (and start!62058 res!458479) b!694244))

(assert (= (and b!694244 res!458458) b!694262))

(assert (= (and b!694262 res!458457) b!694242))

(assert (= (and b!694242 res!458478) b!694247))

(assert (= (and b!694247 res!458467) b!694252))

(assert (= (and b!694247 (not res!458473)) b!694254))

(assert (= (and b!694254 res!458461) b!694266))

(assert (= (and b!694247 res!458463) b!694261))

(assert (= (and b!694261 res!458460) b!694267))

(assert (= (and b!694267 res!458476) b!694246))

(assert (= (and b!694246 res!458470) b!694263))

(assert (= (and b!694263 res!458459) b!694250))

(assert (= (and b!694250 res!458462) b!694265))

(assert (= (and b!694265 res!458468) b!694248))

(assert (= (and b!694248 res!458477) b!694251))

(assert (= (and b!694251 c!78260) b!694258))

(assert (= (and b!694251 (not c!78260)) b!694268))

(assert (= (and b!694251 res!458472) b!694245))

(assert (= (and b!694245 res!458464) b!694253))

(assert (= (and b!694253 res!458465) b!694243))

(assert (= (and b!694243 res!458475) b!694255))

(assert (= (and b!694255 res!458474) b!694256))

(assert (= (and b!694256 res!458469) b!694257))

(assert (= (and b!694256 (not res!458471)) b!694264))

(assert (= (and b!694264 res!458456) b!694249))

(assert (= (and b!694256 res!458480) b!694259))

(assert (= (and b!694259 res!458466) b!694260))

(declare-fun m!656133 () Bool)

(assert (=> b!694249 m!656133))

(declare-fun m!656135 () Bool)

(assert (=> b!694253 m!656135))

(declare-fun m!656137 () Bool)

(assert (=> b!694263 m!656137))

(assert (=> b!694257 m!656133))

(declare-fun m!656139 () Bool)

(assert (=> b!694250 m!656139))

(declare-fun m!656141 () Bool)

(assert (=> b!694258 m!656141))

(declare-fun m!656143 () Bool)

(assert (=> b!694258 m!656143))

(declare-fun m!656145 () Bool)

(assert (=> b!694244 m!656145))

(declare-fun m!656147 () Bool)

(assert (=> start!62058 m!656147))

(declare-fun m!656149 () Bool)

(assert (=> b!694267 m!656149))

(declare-fun m!656151 () Bool)

(assert (=> b!694242 m!656151))

(declare-fun m!656153 () Bool)

(assert (=> b!694261 m!656153))

(declare-fun m!656155 () Bool)

(assert (=> b!694243 m!656155))

(declare-fun m!656157 () Bool)

(assert (=> b!694262 m!656157))

(declare-fun m!656159 () Bool)

(assert (=> b!694248 m!656159))

(assert (=> b!694248 m!656159))

(declare-fun m!656161 () Bool)

(assert (=> b!694248 m!656161))

(declare-fun m!656163 () Bool)

(assert (=> b!694252 m!656163))

(declare-fun m!656165 () Bool)

(assert (=> b!694259 m!656165))

(assert (=> b!694245 m!656159))

(assert (=> b!694245 m!656159))

(declare-fun m!656167 () Bool)

(assert (=> b!694245 m!656167))

(assert (=> b!694251 m!656159))

(declare-fun m!656169 () Bool)

(assert (=> b!694255 m!656169))

(assert (=> b!694266 m!656163))

(push 1)

(assert (not b!694248))

(assert (not b!694263))

(assert (not start!62058))

(assert (not b!694259))

(assert (not b!694261))

(assert (not b!694258))

(assert (not b!694244))

(assert (not b!694267))

(assert (not b!694242))

(assert (not b!694262))

(assert (not b!694253))

(assert (not b!694243))

(assert (not b!694266))

(assert (not b!694250))

(assert (not b!694257))

(assert (not b!694252))

(assert (not b!694245))

(assert (not b!694249))

(assert (not b!694255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

