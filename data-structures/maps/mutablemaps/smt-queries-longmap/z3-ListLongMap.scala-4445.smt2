; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61790 () Bool)

(assert start!61790)

(declare-fun b!691156 () Bool)

(declare-fun e!393368 () Bool)

(declare-datatypes ((List!13142 0))(
  ( (Nil!13139) (Cons!13138 (h!14183 (_ BitVec 64)) (t!19417 List!13142)) )
))
(declare-fun acc!681 () List!13142)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3685 (List!13142 (_ BitVec 64)) Bool)

(assert (=> b!691156 (= e!393368 (not (contains!3685 acc!681 k0!2843)))))

(declare-fun b!691157 () Bool)

(declare-fun e!393370 () Bool)

(assert (=> b!691157 (= e!393370 false)))

(declare-datatypes ((Unit!24362 0))(
  ( (Unit!24363) )
))
(declare-fun lt!316398 () Unit!24362)

(declare-fun e!393372 () Unit!24362)

(assert (=> b!691157 (= lt!316398 e!393372)))

(declare-fun c!78095 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39767 0))(
  ( (array!39768 (arr!19048 (Array (_ BitVec 32) (_ BitVec 64))) (size!19431 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39767)

(assert (=> b!691157 (= c!78095 (= (select (arr!19048 a!3626) from!3004) k0!2843))))

(declare-fun b!691158 () Bool)

(declare-fun res!455708 () Bool)

(assert (=> b!691158 (=> (not res!455708) (not e!393370))))

(declare-fun arrayNoDuplicates!0 (array!39767 (_ BitVec 32) List!13142) Bool)

(assert (=> b!691158 (= res!455708 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13139))))

(declare-fun res!455706 () Bool)

(assert (=> start!61790 (=> (not res!455706) (not e!393370))))

(assert (=> start!61790 (= res!455706 (and (bvslt (size!19431 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19431 a!3626))))))

(assert (=> start!61790 e!393370))

(assert (=> start!61790 true))

(declare-fun array_inv!14822 (array!39767) Bool)

(assert (=> start!61790 (array_inv!14822 a!3626)))

(declare-fun b!691159 () Bool)

(declare-fun Unit!24364 () Unit!24362)

(assert (=> b!691159 (= e!393372 Unit!24364)))

(declare-fun b!691160 () Bool)

(declare-fun res!455702 () Bool)

(assert (=> b!691160 (=> (not res!455702) (not e!393370))))

(declare-fun arrayContainsKey!0 (array!39767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691160 (= res!455702 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691161 () Bool)

(declare-fun res!455714 () Bool)

(assert (=> b!691161 (=> (not res!455714) (not e!393370))))

(declare-fun noDuplicate!932 (List!13142) Bool)

(assert (=> b!691161 (= res!455714 (noDuplicate!932 acc!681))))

(declare-fun b!691162 () Bool)

(declare-fun res!455703 () Bool)

(assert (=> b!691162 (=> (not res!455703) (not e!393370))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691162 (= res!455703 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19431 a!3626))))))

(declare-fun b!691163 () Bool)

(declare-fun res!455709 () Bool)

(assert (=> b!691163 (=> (not res!455709) (not e!393370))))

(assert (=> b!691163 (= res!455709 (not (contains!3685 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691164 () Bool)

(declare-fun res!455700 () Bool)

(assert (=> b!691164 (=> (not res!455700) (not e!393370))))

(declare-fun e!393373 () Bool)

(assert (=> b!691164 (= res!455700 e!393373)))

(declare-fun res!455710 () Bool)

(assert (=> b!691164 (=> res!455710 e!393373)))

(declare-fun e!393371 () Bool)

(assert (=> b!691164 (= res!455710 e!393371)))

(declare-fun res!455704 () Bool)

(assert (=> b!691164 (=> (not res!455704) (not e!393371))))

(assert (=> b!691164 (= res!455704 (bvsgt from!3004 i!1382))))

(declare-fun b!691165 () Bool)

(declare-fun res!455701 () Bool)

(assert (=> b!691165 (=> (not res!455701) (not e!393370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691165 (= res!455701 (validKeyInArray!0 (select (arr!19048 a!3626) from!3004)))))

(declare-fun b!691166 () Bool)

(assert (=> b!691166 (= e!393371 (contains!3685 acc!681 k0!2843))))

(declare-fun b!691167 () Bool)

(declare-fun res!455711 () Bool)

(assert (=> b!691167 (=> (not res!455711) (not e!393370))))

(assert (=> b!691167 (= res!455711 (validKeyInArray!0 k0!2843))))

(declare-fun b!691168 () Bool)

(assert (=> b!691168 (= e!393373 e!393368)))

(declare-fun res!455712 () Bool)

(assert (=> b!691168 (=> (not res!455712) (not e!393368))))

(assert (=> b!691168 (= res!455712 (bvsle from!3004 i!1382))))

(declare-fun b!691169 () Bool)

(declare-fun res!455707 () Bool)

(assert (=> b!691169 (=> (not res!455707) (not e!393370))))

(assert (=> b!691169 (= res!455707 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19431 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691170 () Bool)

(declare-fun res!455705 () Bool)

(assert (=> b!691170 (=> (not res!455705) (not e!393370))))

(assert (=> b!691170 (= res!455705 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691171 () Bool)

(declare-fun res!455713 () Bool)

(assert (=> b!691171 (=> (not res!455713) (not e!393370))))

(assert (=> b!691171 (= res!455713 (not (contains!3685 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691172 () Bool)

(declare-fun Unit!24365 () Unit!24362)

(assert (=> b!691172 (= e!393372 Unit!24365)))

(assert (=> b!691172 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316397 () Unit!24362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39767 (_ BitVec 64) (_ BitVec 32)) Unit!24362)

(assert (=> b!691172 (= lt!316397 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!691172 false))

(assert (= (and start!61790 res!455706) b!691161))

(assert (= (and b!691161 res!455714) b!691163))

(assert (= (and b!691163 res!455709) b!691171))

(assert (= (and b!691171 res!455713) b!691164))

(assert (= (and b!691164 res!455704) b!691166))

(assert (= (and b!691164 (not res!455710)) b!691168))

(assert (= (and b!691168 res!455712) b!691156))

(assert (= (and b!691164 res!455700) b!691158))

(assert (= (and b!691158 res!455708) b!691170))

(assert (= (and b!691170 res!455705) b!691162))

(assert (= (and b!691162 res!455703) b!691167))

(assert (= (and b!691167 res!455711) b!691160))

(assert (= (and b!691160 res!455702) b!691169))

(assert (= (and b!691169 res!455707) b!691165))

(assert (= (and b!691165 res!455701) b!691157))

(assert (= (and b!691157 c!78095) b!691172))

(assert (= (and b!691157 (not c!78095)) b!691159))

(declare-fun m!654287 () Bool)

(assert (=> b!691156 m!654287))

(declare-fun m!654289 () Bool)

(assert (=> b!691158 m!654289))

(declare-fun m!654291 () Bool)

(assert (=> start!61790 m!654291))

(assert (=> b!691166 m!654287))

(declare-fun m!654293 () Bool)

(assert (=> b!691172 m!654293))

(declare-fun m!654295 () Bool)

(assert (=> b!691172 m!654295))

(declare-fun m!654297 () Bool)

(assert (=> b!691163 m!654297))

(declare-fun m!654299 () Bool)

(assert (=> b!691160 m!654299))

(declare-fun m!654301 () Bool)

(assert (=> b!691167 m!654301))

(declare-fun m!654303 () Bool)

(assert (=> b!691170 m!654303))

(declare-fun m!654305 () Bool)

(assert (=> b!691165 m!654305))

(assert (=> b!691165 m!654305))

(declare-fun m!654307 () Bool)

(assert (=> b!691165 m!654307))

(assert (=> b!691157 m!654305))

(declare-fun m!654309 () Bool)

(assert (=> b!691171 m!654309))

(declare-fun m!654311 () Bool)

(assert (=> b!691161 m!654311))

(check-sat (not b!691156) (not b!691166) (not b!691161) (not b!691172) (not b!691171) (not b!691163) (not b!691165) (not b!691160) (not start!61790) (not b!691167) (not b!691158) (not b!691170))
