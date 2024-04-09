; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59926 () Bool)

(assert start!59926)

(declare-fun b!663243 () Bool)

(declare-fun res!431313 () Bool)

(declare-fun e!380563 () Bool)

(assert (=> b!663243 (=> (not res!431313) (not e!380563))))

(declare-fun e!380561 () Bool)

(assert (=> b!663243 (= res!431313 e!380561)))

(declare-fun res!431306 () Bool)

(assert (=> b!663243 (=> res!431306 e!380561)))

(declare-fun e!380566 () Bool)

(assert (=> b!663243 (= res!431306 e!380566)))

(declare-fun res!431309 () Bool)

(assert (=> b!663243 (=> (not res!431309) (not e!380566))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663243 (= res!431309 (bvsgt from!3004 i!1382))))

(declare-fun res!431315 () Bool)

(assert (=> start!59926 (=> (not res!431315) (not e!380563))))

(declare-datatypes ((array!38929 0))(
  ( (array!38930 (arr!18653 (Array (_ BitVec 32) (_ BitVec 64))) (size!19017 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38929)

(assert (=> start!59926 (= res!431315 (and (bvslt (size!19017 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19017 a!3626))))))

(assert (=> start!59926 e!380563))

(assert (=> start!59926 true))

(declare-fun array_inv!14427 (array!38929) Bool)

(assert (=> start!59926 (array_inv!14427 a!3626)))

(declare-fun b!663244 () Bool)

(declare-fun res!431310 () Bool)

(assert (=> b!663244 (=> (not res!431310) (not e!380563))))

(declare-datatypes ((List!12747 0))(
  ( (Nil!12744) (Cons!12743 (h!13788 (_ BitVec 64)) (t!18983 List!12747)) )
))
(declare-fun arrayNoDuplicates!0 (array!38929 (_ BitVec 32) List!12747) Bool)

(assert (=> b!663244 (= res!431310 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12744))))

(declare-fun b!663245 () Bool)

(declare-datatypes ((Unit!23060 0))(
  ( (Unit!23061) )
))
(declare-fun e!380564 () Unit!23060)

(declare-fun Unit!23062 () Unit!23060)

(assert (=> b!663245 (= e!380564 Unit!23062)))

(declare-fun lt!309233 () Unit!23060)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38929 (_ BitVec 64) (_ BitVec 32)) Unit!23060)

(assert (=> b!663245 (= lt!309233 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663245 false))

(declare-fun b!663246 () Bool)

(declare-fun e!380565 () Unit!23060)

(declare-fun Unit!23063 () Unit!23060)

(assert (=> b!663246 (= e!380565 Unit!23063)))

(declare-fun b!663247 () Bool)

(declare-fun res!431314 () Bool)

(assert (=> b!663247 (=> (not res!431314) (not e!380563))))

(declare-fun acc!681 () List!12747)

(declare-fun noDuplicate!537 (List!12747) Bool)

(assert (=> b!663247 (= res!431314 (noDuplicate!537 acc!681))))

(declare-fun b!663248 () Bool)

(declare-fun res!431311 () Bool)

(assert (=> b!663248 (=> (not res!431311) (not e!380563))))

(assert (=> b!663248 (= res!431311 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19017 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663249 () Bool)

(declare-fun Unit!23064 () Unit!23060)

(assert (=> b!663249 (= e!380564 Unit!23064)))

(declare-fun b!663250 () Bool)

(declare-fun contains!3290 (List!12747 (_ BitVec 64)) Bool)

(assert (=> b!663250 (= e!380566 (contains!3290 acc!681 k!2843))))

(declare-fun b!663251 () Bool)

(declare-fun lt!309234 () Unit!23060)

(assert (=> b!663251 (= e!380565 lt!309234)))

(declare-fun lt!309231 () Unit!23060)

(declare-fun lemmaListSubSeqRefl!0 (List!12747) Unit!23060)

(assert (=> b!663251 (= lt!309231 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!28 (List!12747 List!12747) Bool)

(assert (=> b!663251 (subseq!28 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38929 List!12747 List!12747 (_ BitVec 32)) Unit!23060)

(declare-fun $colon$colon!159 (List!12747 (_ BitVec 64)) List!12747)

(assert (=> b!663251 (= lt!309234 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!159 acc!681 (select (arr!18653 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663251 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663252 () Bool)

(declare-fun e!380562 () Bool)

(assert (=> b!663252 (= e!380561 e!380562)))

(declare-fun res!431317 () Bool)

(assert (=> b!663252 (=> (not res!431317) (not e!380562))))

(assert (=> b!663252 (= res!431317 (bvsle from!3004 i!1382))))

(declare-fun b!663253 () Bool)

(declare-fun res!431307 () Bool)

(assert (=> b!663253 (=> (not res!431307) (not e!380563))))

(assert (=> b!663253 (= res!431307 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19017 a!3626))))))

(declare-fun b!663254 () Bool)

(assert (=> b!663254 (= e!380562 (not (contains!3290 acc!681 k!2843)))))

(declare-fun b!663255 () Bool)

(declare-fun res!431316 () Bool)

(assert (=> b!663255 (=> (not res!431316) (not e!380563))))

(assert (=> b!663255 (= res!431316 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663256 () Bool)

(declare-fun res!431318 () Bool)

(assert (=> b!663256 (=> (not res!431318) (not e!380563))))

(assert (=> b!663256 (= res!431318 (not (contains!3290 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663257 () Bool)

(assert (=> b!663257 (= e!380563 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!309230 () Unit!23060)

(assert (=> b!663257 (= lt!309230 e!380565)))

(declare-fun c!76337 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663257 (= c!76337 (validKeyInArray!0 (select (arr!18653 a!3626) from!3004)))))

(declare-fun lt!309232 () Unit!23060)

(assert (=> b!663257 (= lt!309232 e!380564)))

(declare-fun c!76336 () Bool)

(declare-fun arrayContainsKey!0 (array!38929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663257 (= c!76336 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663257 (arrayContainsKey!0 (array!38930 (store (arr!18653 a!3626) i!1382 k!2843) (size!19017 a!3626)) k!2843 from!3004)))

(declare-fun b!663258 () Bool)

(declare-fun res!431308 () Bool)

(assert (=> b!663258 (=> (not res!431308) (not e!380563))))

(assert (=> b!663258 (= res!431308 (validKeyInArray!0 k!2843))))

(declare-fun b!663259 () Bool)

(declare-fun res!431305 () Bool)

(assert (=> b!663259 (=> (not res!431305) (not e!380563))))

(assert (=> b!663259 (= res!431305 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663260 () Bool)

(declare-fun res!431312 () Bool)

(assert (=> b!663260 (=> (not res!431312) (not e!380563))))

(assert (=> b!663260 (= res!431312 (not (contains!3290 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59926 res!431315) b!663247))

(assert (= (and b!663247 res!431314) b!663256))

(assert (= (and b!663256 res!431318) b!663260))

(assert (= (and b!663260 res!431312) b!663243))

(assert (= (and b!663243 res!431309) b!663250))

(assert (= (and b!663243 (not res!431306)) b!663252))

(assert (= (and b!663252 res!431317) b!663254))

(assert (= (and b!663243 res!431313) b!663244))

(assert (= (and b!663244 res!431310) b!663255))

(assert (= (and b!663255 res!431316) b!663253))

(assert (= (and b!663253 res!431307) b!663258))

(assert (= (and b!663258 res!431308) b!663259))

(assert (= (and b!663259 res!431305) b!663248))

(assert (= (and b!663248 res!431311) b!663257))

(assert (= (and b!663257 c!76336) b!663245))

(assert (= (and b!663257 (not c!76336)) b!663249))

(assert (= (and b!663257 c!76337) b!663251))

(assert (= (and b!663257 (not c!76337)) b!663246))

(declare-fun m!634883 () Bool)

(assert (=> b!663255 m!634883))

(declare-fun m!634885 () Bool)

(assert (=> b!663258 m!634885))

(declare-fun m!634887 () Bool)

(assert (=> b!663244 m!634887))

(declare-fun m!634889 () Bool)

(assert (=> b!663245 m!634889))

(declare-fun m!634891 () Bool)

(assert (=> b!663247 m!634891))

(declare-fun m!634893 () Bool)

(assert (=> start!59926 m!634893))

(declare-fun m!634895 () Bool)

(assert (=> b!663251 m!634895))

(declare-fun m!634897 () Bool)

(assert (=> b!663251 m!634897))

(declare-fun m!634899 () Bool)

(assert (=> b!663251 m!634899))

(declare-fun m!634901 () Bool)

(assert (=> b!663251 m!634901))

(assert (=> b!663251 m!634897))

(assert (=> b!663251 m!634899))

(declare-fun m!634903 () Bool)

(assert (=> b!663251 m!634903))

(declare-fun m!634905 () Bool)

(assert (=> b!663251 m!634905))

(declare-fun m!634907 () Bool)

(assert (=> b!663254 m!634907))

(declare-fun m!634909 () Bool)

(assert (=> b!663259 m!634909))

(declare-fun m!634911 () Bool)

(assert (=> b!663260 m!634911))

(assert (=> b!663250 m!634907))

(declare-fun m!634913 () Bool)

(assert (=> b!663256 m!634913))

(assert (=> b!663257 m!634897))

(declare-fun m!634915 () Bool)

(assert (=> b!663257 m!634915))

(declare-fun m!634917 () Bool)

(assert (=> b!663257 m!634917))

(assert (=> b!663257 m!634897))

(declare-fun m!634919 () Bool)

(assert (=> b!663257 m!634919))

(declare-fun m!634921 () Bool)

(assert (=> b!663257 m!634921))

(push 1)

