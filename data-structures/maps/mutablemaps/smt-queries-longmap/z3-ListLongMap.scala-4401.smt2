; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60524 () Bool)

(assert start!60524)

(declare-fun b!680020 () Bool)

(declare-fun res!446480 () Bool)

(declare-fun e!387339 () Bool)

(assert (=> b!680020 (=> (not res!446480) (not e!387339))))

(declare-datatypes ((List!13010 0))(
  ( (Nil!13007) (Cons!13006 (h!14051 (_ BitVec 64)) (t!19246 List!13010)) )
))
(declare-fun acc!681 () List!13010)

(declare-fun contains!3553 (List!13010 (_ BitVec 64)) Bool)

(assert (=> b!680020 (= res!446480 (not (contains!3553 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680021 () Bool)

(declare-fun e!387338 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!680021 (= e!387338 (not (contains!3553 acc!681 k0!2843)))))

(declare-fun b!680022 () Bool)

(declare-fun res!446474 () Bool)

(assert (=> b!680022 (=> (not res!446474) (not e!387339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680022 (= res!446474 (validKeyInArray!0 k0!2843))))

(declare-fun b!680023 () Bool)

(declare-fun res!446486 () Bool)

(assert (=> b!680023 (=> (not res!446486) (not e!387339))))

(declare-fun noDuplicate!800 (List!13010) Bool)

(assert (=> b!680023 (= res!446486 (noDuplicate!800 acc!681))))

(declare-fun b!680024 () Bool)

(declare-fun res!446477 () Bool)

(assert (=> b!680024 (=> (not res!446477) (not e!387339))))

(assert (=> b!680024 (= res!446477 (not (contains!3553 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680025 () Bool)

(declare-fun res!446482 () Bool)

(assert (=> b!680025 (=> (not res!446482) (not e!387339))))

(declare-fun e!387334 () Bool)

(assert (=> b!680025 (= res!446482 e!387334)))

(declare-fun res!446476 () Bool)

(assert (=> b!680025 (=> res!446476 e!387334)))

(declare-fun e!387340 () Bool)

(assert (=> b!680025 (= res!446476 e!387340)))

(declare-fun res!446484 () Bool)

(assert (=> b!680025 (=> (not res!446484) (not e!387340))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680025 (= res!446484 (bvsgt from!3004 i!1382))))

(declare-fun b!680026 () Bool)

(declare-fun res!446485 () Bool)

(assert (=> b!680026 (=> (not res!446485) (not e!387339))))

(declare-datatypes ((array!39461 0))(
  ( (array!39462 (arr!18916 (Array (_ BitVec 32) (_ BitVec 64))) (size!19280 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39461)

(assert (=> b!680026 (= res!446485 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19280 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680027 () Bool)

(declare-datatypes ((Unit!23834 0))(
  ( (Unit!23835) )
))
(declare-fun e!387337 () Unit!23834)

(declare-fun Unit!23836 () Unit!23834)

(assert (=> b!680027 (= e!387337 Unit!23836)))

(declare-fun lt!312989 () Unit!23834)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39461 (_ BitVec 64) (_ BitVec 32)) Unit!23834)

(assert (=> b!680027 (= lt!312989 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!680027 false))

(declare-fun b!680028 () Bool)

(assert (=> b!680028 (= e!387340 (contains!3553 acc!681 k0!2843))))

(declare-fun b!680029 () Bool)

(declare-fun res!446475 () Bool)

(assert (=> b!680029 (=> (not res!446475) (not e!387339))))

(assert (=> b!680029 (= res!446475 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19280 a!3626))))))

(declare-fun b!680030 () Bool)

(declare-fun res!446472 () Bool)

(assert (=> b!680030 (=> (not res!446472) (not e!387339))))

(declare-fun arrayNoDuplicates!0 (array!39461 (_ BitVec 32) List!13010) Bool)

(assert (=> b!680030 (= res!446472 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13007))))

(declare-fun b!680031 () Bool)

(assert (=> b!680031 (= e!387334 e!387338)))

(declare-fun res!446478 () Bool)

(assert (=> b!680031 (=> (not res!446478) (not e!387338))))

(assert (=> b!680031 (= res!446478 (bvsle from!3004 i!1382))))

(declare-fun b!680032 () Bool)

(declare-fun e!387335 () Bool)

(assert (=> b!680032 (= e!387339 (not e!387335))))

(declare-fun res!446481 () Bool)

(assert (=> b!680032 (=> res!446481 e!387335)))

(assert (=> b!680032 (= res!446481 (not (validKeyInArray!0 (select (arr!18916 a!3626) from!3004))))))

(declare-fun lt!312988 () Unit!23834)

(assert (=> b!680032 (= lt!312988 e!387337)))

(declare-fun c!77141 () Bool)

(declare-fun arrayContainsKey!0 (array!39461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680032 (= c!77141 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680032 (arrayContainsKey!0 (array!39462 (store (arr!18916 a!3626) i!1382 k0!2843) (size!19280 a!3626)) k0!2843 from!3004)))

(declare-fun b!680033 () Bool)

(declare-fun res!446483 () Bool)

(assert (=> b!680033 (=> (not res!446483) (not e!387339))))

(assert (=> b!680033 (= res!446483 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680034 () Bool)

(assert (=> b!680034 (= e!387335 true)))

(declare-fun subseq!138 (List!13010 List!13010) Bool)

(assert (=> b!680034 (subseq!138 acc!681 acc!681)))

(declare-fun lt!312990 () Unit!23834)

(declare-fun lemmaListSubSeqRefl!0 (List!13010) Unit!23834)

(assert (=> b!680034 (= lt!312990 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun res!446479 () Bool)

(assert (=> start!60524 (=> (not res!446479) (not e!387339))))

(assert (=> start!60524 (= res!446479 (and (bvslt (size!19280 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19280 a!3626))))))

(assert (=> start!60524 e!387339))

(assert (=> start!60524 true))

(declare-fun array_inv!14690 (array!39461) Bool)

(assert (=> start!60524 (array_inv!14690 a!3626)))

(declare-fun b!680035 () Bool)

(declare-fun Unit!23837 () Unit!23834)

(assert (=> b!680035 (= e!387337 Unit!23837)))

(declare-fun b!680036 () Bool)

(declare-fun res!446473 () Bool)

(assert (=> b!680036 (=> (not res!446473) (not e!387339))))

(assert (=> b!680036 (= res!446473 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60524 res!446479) b!680023))

(assert (= (and b!680023 res!446486) b!680024))

(assert (= (and b!680024 res!446477) b!680020))

(assert (= (and b!680020 res!446480) b!680025))

(assert (= (and b!680025 res!446484) b!680028))

(assert (= (and b!680025 (not res!446476)) b!680031))

(assert (= (and b!680031 res!446478) b!680021))

(assert (= (and b!680025 res!446482) b!680030))

(assert (= (and b!680030 res!446472) b!680036))

(assert (= (and b!680036 res!446473) b!680029))

(assert (= (and b!680029 res!446475) b!680022))

(assert (= (and b!680022 res!446474) b!680033))

(assert (= (and b!680033 res!446483) b!680026))

(assert (= (and b!680026 res!446485) b!680032))

(assert (= (and b!680032 c!77141) b!680027))

(assert (= (and b!680032 (not c!77141)) b!680035))

(assert (= (and b!680032 (not res!446481)) b!680034))

(declare-fun m!645211 () Bool)

(assert (=> b!680030 m!645211))

(declare-fun m!645213 () Bool)

(assert (=> b!680032 m!645213))

(declare-fun m!645215 () Bool)

(assert (=> b!680032 m!645215))

(declare-fun m!645217 () Bool)

(assert (=> b!680032 m!645217))

(assert (=> b!680032 m!645213))

(declare-fun m!645219 () Bool)

(assert (=> b!680032 m!645219))

(declare-fun m!645221 () Bool)

(assert (=> b!680032 m!645221))

(declare-fun m!645223 () Bool)

(assert (=> b!680027 m!645223))

(declare-fun m!645225 () Bool)

(assert (=> b!680034 m!645225))

(declare-fun m!645227 () Bool)

(assert (=> b!680034 m!645227))

(declare-fun m!645229 () Bool)

(assert (=> start!60524 m!645229))

(declare-fun m!645231 () Bool)

(assert (=> b!680023 m!645231))

(declare-fun m!645233 () Bool)

(assert (=> b!680036 m!645233))

(declare-fun m!645235 () Bool)

(assert (=> b!680028 m!645235))

(declare-fun m!645237 () Bool)

(assert (=> b!680024 m!645237))

(declare-fun m!645239 () Bool)

(assert (=> b!680033 m!645239))

(assert (=> b!680021 m!645235))

(declare-fun m!645241 () Bool)

(assert (=> b!680022 m!645241))

(declare-fun m!645243 () Bool)

(assert (=> b!680020 m!645243))

(check-sat (not b!680027) (not b!680030) (not b!680036) (not start!60524) (not b!680024) (not b!680028) (not b!680020) (not b!680021) (not b!680023) (not b!680032) (not b!680034) (not b!680033) (not b!680022))
