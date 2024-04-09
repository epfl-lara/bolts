; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60350 () Bool)

(assert start!60350)

(declare-fun b!677636 () Bool)

(declare-fun res!444243 () Bool)

(declare-fun e!386217 () Bool)

(assert (=> b!677636 (=> (not res!444243) (not e!386217))))

(declare-datatypes ((List!12959 0))(
  ( (Nil!12956) (Cons!12955 (h!14000 (_ BitVec 64)) (t!19195 List!12959)) )
))
(declare-fun acc!681 () List!12959)

(declare-fun noDuplicate!749 (List!12959) Bool)

(assert (=> b!677636 (= res!444243 (noDuplicate!749 acc!681))))

(declare-fun b!677637 () Bool)

(declare-fun res!444247 () Bool)

(assert (=> b!677637 (=> (not res!444247) (not e!386217))))

(declare-datatypes ((array!39353 0))(
  ( (array!39354 (arr!18865 (Array (_ BitVec 32) (_ BitVec 64))) (size!19229 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39353)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677637 (= res!444247 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677638 () Bool)

(declare-fun e!386221 () Bool)

(declare-fun contains!3502 (List!12959 (_ BitVec 64)) Bool)

(assert (=> b!677638 (= e!386221 (contains!3502 acc!681 k0!2843))))

(declare-fun b!677639 () Bool)

(declare-fun e!386218 () Bool)

(assert (=> b!677639 (= e!386218 (not (contains!3502 acc!681 k0!2843)))))

(declare-fun b!677640 () Bool)

(declare-fun res!444245 () Bool)

(assert (=> b!677640 (=> (not res!444245) (not e!386217))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39353 (_ BitVec 32) List!12959) Bool)

(assert (=> b!677640 (= res!444245 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677641 () Bool)

(declare-fun res!444242 () Bool)

(assert (=> b!677641 (=> (not res!444242) (not e!386217))))

(assert (=> b!677641 (= res!444242 (not (contains!3502 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677642 () Bool)

(declare-fun res!444237 () Bool)

(assert (=> b!677642 (=> (not res!444237) (not e!386217))))

(assert (=> b!677642 (= res!444237 (not (contains!3502 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677643 () Bool)

(declare-fun res!444238 () Bool)

(assert (=> b!677643 (=> (not res!444238) (not e!386217))))

(assert (=> b!677643 (= res!444238 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12956))))

(declare-fun b!677644 () Bool)

(assert (=> b!677644 (= e!386217 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19229 a!3626)) (bvsgt from!3004 (size!19229 a!3626))))))

(declare-fun b!677645 () Bool)

(declare-fun res!444236 () Bool)

(assert (=> b!677645 (=> (not res!444236) (not e!386217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677645 (= res!444236 (validKeyInArray!0 k0!2843))))

(declare-fun b!677646 () Bool)

(declare-fun e!386219 () Bool)

(assert (=> b!677646 (= e!386219 e!386218)))

(declare-fun res!444241 () Bool)

(assert (=> b!677646 (=> (not res!444241) (not e!386218))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677646 (= res!444241 (bvsle from!3004 i!1382))))

(declare-fun res!444248 () Bool)

(assert (=> start!60350 (=> (not res!444248) (not e!386217))))

(assert (=> start!60350 (= res!444248 (and (bvslt (size!19229 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19229 a!3626))))))

(assert (=> start!60350 e!386217))

(assert (=> start!60350 true))

(declare-fun array_inv!14639 (array!39353) Bool)

(assert (=> start!60350 (array_inv!14639 a!3626)))

(declare-fun b!677647 () Bool)

(declare-fun res!444239 () Bool)

(assert (=> b!677647 (=> (not res!444239) (not e!386217))))

(assert (=> b!677647 (= res!444239 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19229 a!3626))))))

(declare-fun b!677648 () Bool)

(declare-fun res!444244 () Bool)

(assert (=> b!677648 (=> (not res!444244) (not e!386217))))

(assert (=> b!677648 (= res!444244 e!386219)))

(declare-fun res!444246 () Bool)

(assert (=> b!677648 (=> res!444246 e!386219)))

(assert (=> b!677648 (= res!444246 e!386221)))

(declare-fun res!444240 () Bool)

(assert (=> b!677648 (=> (not res!444240) (not e!386221))))

(assert (=> b!677648 (= res!444240 (bvsgt from!3004 i!1382))))

(assert (= (and start!60350 res!444248) b!677636))

(assert (= (and b!677636 res!444243) b!677642))

(assert (= (and b!677642 res!444237) b!677641))

(assert (= (and b!677641 res!444242) b!677648))

(assert (= (and b!677648 res!444240) b!677638))

(assert (= (and b!677648 (not res!444246)) b!677646))

(assert (= (and b!677646 res!444241) b!677639))

(assert (= (and b!677648 res!444244) b!677643))

(assert (= (and b!677643 res!444238) b!677640))

(assert (= (and b!677640 res!444245) b!677647))

(assert (= (and b!677647 res!444239) b!677645))

(assert (= (and b!677645 res!444236) b!677637))

(assert (= (and b!677637 res!444247) b!677644))

(declare-fun m!643779 () Bool)

(assert (=> b!677637 m!643779))

(declare-fun m!643781 () Bool)

(assert (=> b!677645 m!643781))

(declare-fun m!643783 () Bool)

(assert (=> b!677638 m!643783))

(declare-fun m!643785 () Bool)

(assert (=> b!677642 m!643785))

(declare-fun m!643787 () Bool)

(assert (=> start!60350 m!643787))

(declare-fun m!643789 () Bool)

(assert (=> b!677640 m!643789))

(declare-fun m!643791 () Bool)

(assert (=> b!677643 m!643791))

(declare-fun m!643793 () Bool)

(assert (=> b!677641 m!643793))

(declare-fun m!643795 () Bool)

(assert (=> b!677636 m!643795))

(assert (=> b!677639 m!643783))

(check-sat (not b!677645) (not b!677638) (not b!677641) (not b!677637) (not b!677639) (not b!677640) (not start!60350) (not b!677636) (not b!677642) (not b!677643))
(check-sat)
