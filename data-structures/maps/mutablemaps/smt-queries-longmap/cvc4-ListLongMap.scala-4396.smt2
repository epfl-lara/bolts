; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60496 () Bool)

(assert start!60496)

(declare-fun res!445860 () Bool)

(declare-fun e!387051 () Bool)

(assert (=> start!60496 (=> (not res!445860) (not e!387051))))

(declare-datatypes ((array!39433 0))(
  ( (array!39434 (arr!18902 (Array (_ BitVec 32) (_ BitVec 64))) (size!19266 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39433)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60496 (= res!445860 (and (bvslt (size!19266 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19266 a!3626))))))

(assert (=> start!60496 e!387051))

(assert (=> start!60496 true))

(declare-fun array_inv!14676 (array!39433) Bool)

(assert (=> start!60496 (array_inv!14676 a!3626)))

(declare-fun b!679317 () Bool)

(declare-fun res!445857 () Bool)

(assert (=> b!679317 (=> (not res!445857) (not e!387051))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679317 (= res!445857 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679318 () Bool)

(declare-fun e!387054 () Bool)

(assert (=> b!679318 (= e!387054 true)))

(assert (=> b!679318 false))

(declare-datatypes ((Unit!23780 0))(
  ( (Unit!23781) )
))
(declare-fun lt!312873 () Unit!23780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39433 (_ BitVec 64) (_ BitVec 32)) Unit!23780)

(assert (=> b!679318 (= lt!312873 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(declare-fun b!679319 () Bool)

(declare-fun res!445852 () Bool)

(assert (=> b!679319 (=> (not res!445852) (not e!387051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679319 (= res!445852 (validKeyInArray!0 k!2843))))

(declare-fun b!679320 () Bool)

(declare-fun res!445861 () Bool)

(assert (=> b!679320 (=> (not res!445861) (not e!387051))))

(declare-datatypes ((List!12996 0))(
  ( (Nil!12993) (Cons!12992 (h!14037 (_ BitVec 64)) (t!19232 List!12996)) )
))
(declare-fun arrayNoDuplicates!0 (array!39433 (_ BitVec 32) List!12996) Bool)

(assert (=> b!679320 (= res!445861 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12993))))

(declare-fun b!679321 () Bool)

(declare-fun res!445856 () Bool)

(assert (=> b!679321 (=> (not res!445856) (not e!387051))))

(declare-fun e!387052 () Bool)

(assert (=> b!679321 (= res!445856 e!387052)))

(declare-fun res!445851 () Bool)

(assert (=> b!679321 (=> res!445851 e!387052)))

(declare-fun e!387055 () Bool)

(assert (=> b!679321 (= res!445851 e!387055)))

(declare-fun res!445862 () Bool)

(assert (=> b!679321 (=> (not res!445862) (not e!387055))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679321 (= res!445862 (bvsgt from!3004 i!1382))))

(declare-fun b!679322 () Bool)

(declare-fun res!445854 () Bool)

(assert (=> b!679322 (=> (not res!445854) (not e!387051))))

(assert (=> b!679322 (= res!445854 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19266 a!3626))))))

(declare-fun b!679323 () Bool)

(declare-fun res!445863 () Bool)

(assert (=> b!679323 (=> (not res!445863) (not e!387051))))

(assert (=> b!679323 (= res!445863 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19266 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679324 () Bool)

(assert (=> b!679324 (= e!387051 (not e!387054))))

(declare-fun res!445865 () Bool)

(assert (=> b!679324 (=> res!445865 e!387054)))

(assert (=> b!679324 (= res!445865 (not (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (=> b!679324 (arrayContainsKey!0 (array!39434 (store (arr!18902 a!3626) i!1382 k!2843) (size!19266 a!3626)) k!2843 from!3004)))

(declare-fun b!679325 () Bool)

(declare-fun res!445855 () Bool)

(assert (=> b!679325 (=> (not res!445855) (not e!387051))))

(declare-fun acc!681 () List!12996)

(declare-fun contains!3539 (List!12996 (_ BitVec 64)) Bool)

(assert (=> b!679325 (= res!445855 (not (contains!3539 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679326 () Bool)

(declare-fun res!445864 () Bool)

(assert (=> b!679326 (=> (not res!445864) (not e!387051))))

(assert (=> b!679326 (= res!445864 (not (contains!3539 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679327 () Bool)

(declare-fun e!387053 () Bool)

(assert (=> b!679327 (= e!387052 e!387053)))

(declare-fun res!445859 () Bool)

(assert (=> b!679327 (=> (not res!445859) (not e!387053))))

(assert (=> b!679327 (= res!445859 (bvsle from!3004 i!1382))))

(declare-fun b!679328 () Bool)

(declare-fun res!445853 () Bool)

(assert (=> b!679328 (=> (not res!445853) (not e!387051))))

(assert (=> b!679328 (= res!445853 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679329 () Bool)

(assert (=> b!679329 (= e!387055 (contains!3539 acc!681 k!2843))))

(declare-fun b!679330 () Bool)

(assert (=> b!679330 (= e!387053 (not (contains!3539 acc!681 k!2843)))))

(declare-fun b!679331 () Bool)

(declare-fun res!445858 () Bool)

(assert (=> b!679331 (=> (not res!445858) (not e!387051))))

(declare-fun noDuplicate!786 (List!12996) Bool)

(assert (=> b!679331 (= res!445858 (noDuplicate!786 acc!681))))

(assert (= (and start!60496 res!445860) b!679331))

(assert (= (and b!679331 res!445858) b!679326))

(assert (= (and b!679326 res!445864) b!679325))

(assert (= (and b!679325 res!445855) b!679321))

(assert (= (and b!679321 res!445862) b!679329))

(assert (= (and b!679321 (not res!445851)) b!679327))

(assert (= (and b!679327 res!445859) b!679330))

(assert (= (and b!679321 res!445856) b!679320))

(assert (= (and b!679320 res!445861) b!679328))

(assert (= (and b!679328 res!445853) b!679322))

(assert (= (and b!679322 res!445854) b!679319))

(assert (= (and b!679319 res!445852) b!679317))

(assert (= (and b!679317 res!445857) b!679323))

(assert (= (and b!679323 res!445863) b!679324))

(assert (= (and b!679324 (not res!445865)) b!679318))

(declare-fun m!644767 () Bool)

(assert (=> b!679326 m!644767))

(declare-fun m!644769 () Bool)

(assert (=> b!679325 m!644769))

(declare-fun m!644771 () Bool)

(assert (=> b!679329 m!644771))

(declare-fun m!644773 () Bool)

(assert (=> b!679331 m!644773))

(declare-fun m!644775 () Bool)

(assert (=> b!679317 m!644775))

(declare-fun m!644777 () Bool)

(assert (=> b!679318 m!644777))

(assert (=> b!679330 m!644771))

(declare-fun m!644779 () Bool)

(assert (=> start!60496 m!644779))

(declare-fun m!644781 () Bool)

(assert (=> b!679328 m!644781))

(declare-fun m!644783 () Bool)

(assert (=> b!679320 m!644783))

(declare-fun m!644785 () Bool)

(assert (=> b!679324 m!644785))

(declare-fun m!644787 () Bool)

(assert (=> b!679324 m!644787))

(declare-fun m!644789 () Bool)

(assert (=> b!679324 m!644789))

(declare-fun m!644791 () Bool)

(assert (=> b!679319 m!644791))

(push 1)

(assert (not start!60496))

(assert (not b!679320))

(assert (not b!679319))

(assert (not b!679328))

(assert (not b!679326))

(assert (not b!679317))

(assert (not b!679325))

(assert (not b!679324))

(assert (not b!679318))

(assert (not b!679331))

(assert (not b!679329))

(assert (not b!679330))

(check-sat)

