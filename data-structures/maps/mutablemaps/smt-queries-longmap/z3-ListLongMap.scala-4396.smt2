; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60494 () Bool)

(assert start!60494)

(declare-fun b!679272 () Bool)

(declare-fun res!445812 () Bool)

(declare-fun e!387037 () Bool)

(assert (=> b!679272 (=> (not res!445812) (not e!387037))))

(declare-datatypes ((List!12995 0))(
  ( (Nil!12992) (Cons!12991 (h!14036 (_ BitVec 64)) (t!19231 List!12995)) )
))
(declare-fun acc!681 () List!12995)

(declare-fun contains!3538 (List!12995 (_ BitVec 64)) Bool)

(assert (=> b!679272 (= res!445812 (not (contains!3538 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679273 () Bool)

(declare-fun e!387032 () Bool)

(declare-fun e!387035 () Bool)

(assert (=> b!679273 (= e!387032 e!387035)))

(declare-fun res!445808 () Bool)

(assert (=> b!679273 (=> (not res!445808) (not e!387035))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679273 (= res!445808 (bvsle from!3004 i!1382))))

(declare-fun res!445807 () Bool)

(assert (=> start!60494 (=> (not res!445807) (not e!387037))))

(declare-datatypes ((array!39431 0))(
  ( (array!39432 (arr!18901 (Array (_ BitVec 32) (_ BitVec 64))) (size!19265 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39431)

(assert (=> start!60494 (= res!445807 (and (bvslt (size!19265 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19265 a!3626))))))

(assert (=> start!60494 e!387037))

(assert (=> start!60494 true))

(declare-fun array_inv!14675 (array!39431) Bool)

(assert (=> start!60494 (array_inv!14675 a!3626)))

(declare-fun b!679274 () Bool)

(declare-fun res!445806 () Bool)

(assert (=> b!679274 (=> (not res!445806) (not e!387037))))

(declare-fun arrayNoDuplicates!0 (array!39431 (_ BitVec 32) List!12995) Bool)

(assert (=> b!679274 (= res!445806 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679275 () Bool)

(declare-fun res!445811 () Bool)

(assert (=> b!679275 (=> (not res!445811) (not e!387037))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679275 (= res!445811 (validKeyInArray!0 k0!2843))))

(declare-fun b!679276 () Bool)

(declare-fun e!387033 () Bool)

(assert (=> b!679276 (= e!387033 (contains!3538 acc!681 k0!2843))))

(declare-fun b!679277 () Bool)

(declare-fun res!445813 () Bool)

(assert (=> b!679277 (=> (not res!445813) (not e!387037))))

(assert (=> b!679277 (= res!445813 (not (contains!3538 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679278 () Bool)

(assert (=> b!679278 (= e!387035 (not (contains!3538 acc!681 k0!2843)))))

(declare-fun b!679279 () Bool)

(declare-fun res!445820 () Bool)

(assert (=> b!679279 (=> (not res!445820) (not e!387037))))

(declare-fun arrayContainsKey!0 (array!39431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679279 (= res!445820 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679280 () Bool)

(declare-fun res!445814 () Bool)

(assert (=> b!679280 (=> (not res!445814) (not e!387037))))

(declare-fun noDuplicate!785 (List!12995) Bool)

(assert (=> b!679280 (= res!445814 (noDuplicate!785 acc!681))))

(declare-fun b!679281 () Bool)

(declare-fun res!445815 () Bool)

(assert (=> b!679281 (=> (not res!445815) (not e!387037))))

(assert (=> b!679281 (= res!445815 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19265 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679282 () Bool)

(declare-fun res!445816 () Bool)

(assert (=> b!679282 (=> (not res!445816) (not e!387037))))

(assert (=> b!679282 (= res!445816 e!387032)))

(declare-fun res!445810 () Bool)

(assert (=> b!679282 (=> res!445810 e!387032)))

(assert (=> b!679282 (= res!445810 e!387033)))

(declare-fun res!445818 () Bool)

(assert (=> b!679282 (=> (not res!445818) (not e!387033))))

(assert (=> b!679282 (= res!445818 (bvsgt from!3004 i!1382))))

(declare-fun b!679283 () Bool)

(declare-fun res!445817 () Bool)

(assert (=> b!679283 (=> (not res!445817) (not e!387037))))

(assert (=> b!679283 (= res!445817 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19265 a!3626))))))

(declare-fun b!679284 () Bool)

(declare-fun e!387036 () Bool)

(assert (=> b!679284 (= e!387036 true)))

(assert (=> b!679284 false))

(declare-datatypes ((Unit!23778 0))(
  ( (Unit!23779) )
))
(declare-fun lt!312870 () Unit!23778)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39431 (_ BitVec 64) (_ BitVec 32)) Unit!23778)

(assert (=> b!679284 (= lt!312870 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(declare-fun b!679285 () Bool)

(declare-fun res!445819 () Bool)

(assert (=> b!679285 (=> (not res!445819) (not e!387037))))

(assert (=> b!679285 (= res!445819 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12992))))

(declare-fun b!679286 () Bool)

(assert (=> b!679286 (= e!387037 (not e!387036))))

(declare-fun res!445809 () Bool)

(assert (=> b!679286 (=> res!445809 e!387036)))

(assert (=> b!679286 (= res!445809 (not (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (=> b!679286 (arrayContainsKey!0 (array!39432 (store (arr!18901 a!3626) i!1382 k0!2843) (size!19265 a!3626)) k0!2843 from!3004)))

(assert (= (and start!60494 res!445807) b!679280))

(assert (= (and b!679280 res!445814) b!679277))

(assert (= (and b!679277 res!445813) b!679272))

(assert (= (and b!679272 res!445812) b!679282))

(assert (= (and b!679282 res!445818) b!679276))

(assert (= (and b!679282 (not res!445810)) b!679273))

(assert (= (and b!679273 res!445808) b!679278))

(assert (= (and b!679282 res!445816) b!679285))

(assert (= (and b!679285 res!445819) b!679274))

(assert (= (and b!679274 res!445806) b!679283))

(assert (= (and b!679283 res!445817) b!679275))

(assert (= (and b!679275 res!445811) b!679279))

(assert (= (and b!679279 res!445820) b!679281))

(assert (= (and b!679281 res!445815) b!679286))

(assert (= (and b!679286 (not res!445809)) b!679284))

(declare-fun m!644741 () Bool)

(assert (=> b!679278 m!644741))

(declare-fun m!644743 () Bool)

(assert (=> b!679280 m!644743))

(declare-fun m!644745 () Bool)

(assert (=> b!679274 m!644745))

(declare-fun m!644747 () Bool)

(assert (=> b!679275 m!644747))

(declare-fun m!644749 () Bool)

(assert (=> b!679284 m!644749))

(assert (=> b!679276 m!644741))

(declare-fun m!644751 () Bool)

(assert (=> b!679277 m!644751))

(declare-fun m!644753 () Bool)

(assert (=> b!679272 m!644753))

(declare-fun m!644755 () Bool)

(assert (=> b!679279 m!644755))

(declare-fun m!644757 () Bool)

(assert (=> b!679286 m!644757))

(declare-fun m!644759 () Bool)

(assert (=> b!679286 m!644759))

(declare-fun m!644761 () Bool)

(assert (=> b!679286 m!644761))

(declare-fun m!644763 () Bool)

(assert (=> b!679285 m!644763))

(declare-fun m!644765 () Bool)

(assert (=> start!60494 m!644765))

(check-sat (not b!679284) (not b!679275) (not b!679285) (not b!679277) (not b!679274) (not b!679278) (not b!679279) (not b!679286) (not b!679280) (not b!679276) (not b!679272) (not start!60494))
