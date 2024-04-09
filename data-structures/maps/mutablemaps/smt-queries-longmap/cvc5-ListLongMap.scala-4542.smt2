; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63286 () Bool)

(assert start!63286)

(declare-fun b!712252 () Bool)

(declare-fun e!400775 () Bool)

(declare-datatypes ((array!40401 0))(
  ( (array!40402 (arr!19338 (Array (_ BitVec 32) (_ BitVec 64))) (size!19747 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40401)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!712252 (= e!400775 (bvsge (bvsub (size!19747 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19747 a!3591) from!2969)))))

(declare-fun b!712253 () Bool)

(declare-fun res!475601 () Bool)

(declare-fun e!400776 () Bool)

(assert (=> b!712253 (=> (not res!475601) (not e!400776))))

(assert (=> b!712253 (= res!475601 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19747 a!3591)))))

(declare-fun b!712254 () Bool)

(declare-fun res!475607 () Bool)

(assert (=> b!712254 (=> (not res!475607) (not e!400776))))

(declare-datatypes ((List!13432 0))(
  ( (Nil!13429) (Cons!13428 (h!14473 (_ BitVec 64)) (t!19752 List!13432)) )
))
(declare-fun newAcc!49 () List!13432)

(declare-fun contains!3975 (List!13432 (_ BitVec 64)) Bool)

(assert (=> b!712254 (= res!475607 (not (contains!3975 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712255 () Bool)

(declare-fun res!475600 () Bool)

(assert (=> b!712255 (=> (not res!475600) (not e!400776))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13432)

(declare-fun -!384 (List!13432 (_ BitVec 64)) List!13432)

(assert (=> b!712255 (= res!475600 (= (-!384 newAcc!49 k!2824) acc!652))))

(declare-fun b!712256 () Bool)

(declare-fun res!475595 () Bool)

(assert (=> b!712256 (=> (not res!475595) (not e!400775))))

(declare-fun lt!318530 () List!13432)

(declare-fun lt!318529 () List!13432)

(declare-fun subseq!419 (List!13432 List!13432) Bool)

(assert (=> b!712256 (= res!475595 (subseq!419 lt!318530 lt!318529))))

(declare-fun b!712257 () Bool)

(declare-fun res!475610 () Bool)

(assert (=> b!712257 (=> (not res!475610) (not e!400776))))

(assert (=> b!712257 (= res!475610 (not (contains!3975 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712258 () Bool)

(declare-fun res!475602 () Bool)

(assert (=> b!712258 (=> (not res!475602) (not e!400776))))

(assert (=> b!712258 (= res!475602 (not (contains!3975 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712259 () Bool)

(declare-fun res!475597 () Bool)

(assert (=> b!712259 (=> (not res!475597) (not e!400775))))

(assert (=> b!712259 (= res!475597 (not (contains!3975 lt!318530 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712260 () Bool)

(declare-fun res!475598 () Bool)

(assert (=> b!712260 (=> (not res!475598) (not e!400775))))

(declare-fun arrayNoDuplicates!0 (array!40401 (_ BitVec 32) List!13432) Bool)

(assert (=> b!712260 (= res!475598 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318530))))

(declare-fun b!712261 () Bool)

(declare-fun res!475604 () Bool)

(assert (=> b!712261 (=> (not res!475604) (not e!400776))))

(assert (=> b!712261 (= res!475604 (not (contains!3975 acc!652 k!2824)))))

(declare-fun b!712262 () Bool)

(declare-fun res!475603 () Bool)

(assert (=> b!712262 (=> (not res!475603) (not e!400775))))

(assert (=> b!712262 (= res!475603 (not (contains!3975 lt!318530 k!2824)))))

(declare-fun b!712263 () Bool)

(declare-fun res!475605 () Bool)

(assert (=> b!712263 (=> (not res!475605) (not e!400775))))

(declare-fun noDuplicate!1222 (List!13432) Bool)

(assert (=> b!712263 (= res!475605 (noDuplicate!1222 lt!318530))))

(declare-fun b!712264 () Bool)

(declare-fun res!475613 () Bool)

(assert (=> b!712264 (=> (not res!475613) (not e!400776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712264 (= res!475613 (validKeyInArray!0 (select (arr!19338 a!3591) from!2969)))))

(declare-fun b!712265 () Bool)

(declare-fun res!475599 () Bool)

(assert (=> b!712265 (=> (not res!475599) (not e!400776))))

(assert (=> b!712265 (= res!475599 (not (contains!3975 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712266 () Bool)

(declare-fun res!475587 () Bool)

(assert (=> b!712266 (=> (not res!475587) (not e!400775))))

(assert (=> b!712266 (= res!475587 (not (contains!3975 lt!318529 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712267 () Bool)

(declare-fun res!475588 () Bool)

(assert (=> b!712267 (=> (not res!475588) (not e!400776))))

(assert (=> b!712267 (= res!475588 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712268 () Bool)

(declare-fun res!475590 () Bool)

(assert (=> b!712268 (=> (not res!475590) (not e!400775))))

(declare-fun arrayContainsKey!0 (array!40401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712268 (= res!475590 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712269 () Bool)

(declare-fun res!475591 () Bool)

(assert (=> b!712269 (=> (not res!475591) (not e!400776))))

(assert (=> b!712269 (= res!475591 (contains!3975 newAcc!49 k!2824))))

(declare-fun b!712270 () Bool)

(assert (=> b!712270 (= e!400776 e!400775)))

(declare-fun res!475612 () Bool)

(assert (=> b!712270 (=> (not res!475612) (not e!400775))))

(assert (=> b!712270 (= res!475612 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!529 (List!13432 (_ BitVec 64)) List!13432)

(assert (=> b!712270 (= lt!318529 ($colon$colon!529 newAcc!49 (select (arr!19338 a!3591) from!2969)))))

(assert (=> b!712270 (= lt!318530 ($colon$colon!529 acc!652 (select (arr!19338 a!3591) from!2969)))))

(declare-fun b!712271 () Bool)

(declare-fun res!475596 () Bool)

(assert (=> b!712271 (=> (not res!475596) (not e!400776))))

(assert (=> b!712271 (= res!475596 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!712272 () Bool)

(declare-fun res!475611 () Bool)

(assert (=> b!712272 (=> (not res!475611) (not e!400775))))

(assert (=> b!712272 (= res!475611 (= (-!384 lt!318529 k!2824) lt!318530))))

(declare-fun res!475594 () Bool)

(assert (=> start!63286 (=> (not res!475594) (not e!400776))))

(assert (=> start!63286 (= res!475594 (and (bvslt (size!19747 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19747 a!3591))))))

(assert (=> start!63286 e!400776))

(assert (=> start!63286 true))

(declare-fun array_inv!15112 (array!40401) Bool)

(assert (=> start!63286 (array_inv!15112 a!3591)))

(declare-fun b!712273 () Bool)

(declare-fun res!475586 () Bool)

(assert (=> b!712273 (=> (not res!475586) (not e!400776))))

(assert (=> b!712273 (= res!475586 (validKeyInArray!0 k!2824))))

(declare-fun b!712274 () Bool)

(declare-fun res!475592 () Bool)

(assert (=> b!712274 (=> (not res!475592) (not e!400775))))

(assert (=> b!712274 (= res!475592 (contains!3975 lt!318529 k!2824))))

(declare-fun b!712275 () Bool)

(declare-fun res!475593 () Bool)

(assert (=> b!712275 (=> (not res!475593) (not e!400775))))

(assert (=> b!712275 (= res!475593 (not (contains!3975 lt!318530 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712276 () Bool)

(declare-fun res!475606 () Bool)

(assert (=> b!712276 (=> (not res!475606) (not e!400776))))

(assert (=> b!712276 (= res!475606 (subseq!419 acc!652 newAcc!49))))

(declare-fun b!712277 () Bool)

(declare-fun res!475608 () Bool)

(assert (=> b!712277 (=> (not res!475608) (not e!400776))))

(assert (=> b!712277 (= res!475608 (noDuplicate!1222 newAcc!49))))

(declare-fun b!712278 () Bool)

(declare-fun res!475609 () Bool)

(assert (=> b!712278 (=> (not res!475609) (not e!400775))))

(assert (=> b!712278 (= res!475609 (not (contains!3975 lt!318529 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712279 () Bool)

(declare-fun res!475614 () Bool)

(assert (=> b!712279 (=> (not res!475614) (not e!400775))))

(assert (=> b!712279 (= res!475614 (noDuplicate!1222 lt!318529))))

(declare-fun b!712280 () Bool)

(declare-fun res!475589 () Bool)

(assert (=> b!712280 (=> (not res!475589) (not e!400776))))

(assert (=> b!712280 (= res!475589 (noDuplicate!1222 acc!652))))

(assert (= (and start!63286 res!475594) b!712280))

(assert (= (and b!712280 res!475589) b!712277))

(assert (= (and b!712277 res!475608) b!712265))

(assert (= (and b!712265 res!475599) b!712257))

(assert (= (and b!712257 res!475610) b!712271))

(assert (= (and b!712271 res!475596) b!712261))

(assert (= (and b!712261 res!475604) b!712273))

(assert (= (and b!712273 res!475586) b!712267))

(assert (= (and b!712267 res!475588) b!712276))

(assert (= (and b!712276 res!475606) b!712269))

(assert (= (and b!712269 res!475591) b!712255))

(assert (= (and b!712255 res!475600) b!712258))

(assert (= (and b!712258 res!475602) b!712254))

(assert (= (and b!712254 res!475607) b!712253))

(assert (= (and b!712253 res!475601) b!712264))

(assert (= (and b!712264 res!475613) b!712270))

(assert (= (and b!712270 res!475612) b!712263))

(assert (= (and b!712263 res!475605) b!712279))

(assert (= (and b!712279 res!475614) b!712275))

(assert (= (and b!712275 res!475593) b!712259))

(assert (= (and b!712259 res!475597) b!712268))

(assert (= (and b!712268 res!475590) b!712262))

(assert (= (and b!712262 res!475603) b!712260))

(assert (= (and b!712260 res!475598) b!712256))

(assert (= (and b!712256 res!475595) b!712274))

(assert (= (and b!712274 res!475592) b!712272))

(assert (= (and b!712272 res!475611) b!712278))

(assert (= (and b!712278 res!475609) b!712266))

(assert (= (and b!712266 res!475587) b!712252))

(declare-fun m!669279 () Bool)

(assert (=> b!712272 m!669279))

(declare-fun m!669281 () Bool)

(assert (=> b!712266 m!669281))

(declare-fun m!669283 () Bool)

(assert (=> b!712279 m!669283))

(declare-fun m!669285 () Bool)

(assert (=> b!712264 m!669285))

(assert (=> b!712264 m!669285))

(declare-fun m!669287 () Bool)

(assert (=> b!712264 m!669287))

(declare-fun m!669289 () Bool)

(assert (=> b!712260 m!669289))

(declare-fun m!669291 () Bool)

(assert (=> b!712277 m!669291))

(declare-fun m!669293 () Bool)

(assert (=> b!712278 m!669293))

(declare-fun m!669295 () Bool)

(assert (=> b!712263 m!669295))

(declare-fun m!669297 () Bool)

(assert (=> start!63286 m!669297))

(declare-fun m!669299 () Bool)

(assert (=> b!712256 m!669299))

(declare-fun m!669301 () Bool)

(assert (=> b!712274 m!669301))

(declare-fun m!669303 () Bool)

(assert (=> b!712259 m!669303))

(assert (=> b!712270 m!669285))

(assert (=> b!712270 m!669285))

(declare-fun m!669305 () Bool)

(assert (=> b!712270 m!669305))

(assert (=> b!712270 m!669285))

(declare-fun m!669307 () Bool)

(assert (=> b!712270 m!669307))

(declare-fun m!669309 () Bool)

(assert (=> b!712254 m!669309))

(declare-fun m!669311 () Bool)

(assert (=> b!712265 m!669311))

(declare-fun m!669313 () Bool)

(assert (=> b!712267 m!669313))

(declare-fun m!669315 () Bool)

(assert (=> b!712268 m!669315))

(declare-fun m!669317 () Bool)

(assert (=> b!712261 m!669317))

(declare-fun m!669319 () Bool)

(assert (=> b!712269 m!669319))

(declare-fun m!669321 () Bool)

(assert (=> b!712271 m!669321))

(declare-fun m!669323 () Bool)

(assert (=> b!712273 m!669323))

(declare-fun m!669325 () Bool)

(assert (=> b!712262 m!669325))

(declare-fun m!669327 () Bool)

(assert (=> b!712280 m!669327))

(declare-fun m!669329 () Bool)

(assert (=> b!712257 m!669329))

(declare-fun m!669331 () Bool)

(assert (=> b!712275 m!669331))

(declare-fun m!669333 () Bool)

(assert (=> b!712276 m!669333))

(declare-fun m!669335 () Bool)

(assert (=> b!712258 m!669335))

(declare-fun m!669337 () Bool)

(assert (=> b!712255 m!669337))

(push 1)

(assert (not b!712255))

(assert (not b!712259))

(assert (not b!712272))

(assert (not b!712271))

(assert (not b!712267))

(assert (not b!712260))

(assert (not b!712277))

(assert (not start!63286))

(assert (not b!712265))

(assert (not b!712264))

(assert (not b!712270))

(assert (not b!712276))

(assert (not b!712263))

(assert (not b!712269))

(assert (not b!712280))

(assert (not b!712256))

(assert (not b!712254))

(assert (not b!712258))

(assert (not b!712274))

(assert (not b!712266))

(assert (not b!712278))

(assert (not b!712262))

(assert (not b!712261))

(assert (not b!712279))

(assert (not b!712257))

(assert (not b!712275))

(assert (not b!712268))

(assert (not b!712273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

