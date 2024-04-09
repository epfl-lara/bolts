; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60354 () Bool)

(assert start!60354)

(declare-fun b!677706 () Bool)

(declare-fun res!444309 () Bool)

(declare-fun e!386247 () Bool)

(assert (=> b!677706 (=> (not res!444309) (not e!386247))))

(declare-datatypes ((array!39357 0))(
  ( (array!39358 (arr!18867 (Array (_ BitVec 32) (_ BitVec 64))) (size!19231 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39357)

(declare-datatypes ((List!12961 0))(
  ( (Nil!12958) (Cons!12957 (h!14002 (_ BitVec 64)) (t!19197 List!12961)) )
))
(declare-fun arrayNoDuplicates!0 (array!39357 (_ BitVec 32) List!12961) Bool)

(assert (=> b!677706 (= res!444309 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12958))))

(declare-fun b!677707 () Bool)

(declare-fun res!444312 () Bool)

(assert (=> b!677707 (=> (not res!444312) (not e!386247))))

(declare-fun e!386251 () Bool)

(assert (=> b!677707 (= res!444312 e!386251)))

(declare-fun res!444306 () Bool)

(assert (=> b!677707 (=> res!444306 e!386251)))

(declare-fun e!386248 () Bool)

(assert (=> b!677707 (= res!444306 e!386248)))

(declare-fun res!444311 () Bool)

(assert (=> b!677707 (=> (not res!444311) (not e!386248))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677707 (= res!444311 (bvsgt from!3004 i!1382))))

(declare-fun b!677708 () Bool)

(declare-fun res!444314 () Bool)

(assert (=> b!677708 (=> (not res!444314) (not e!386247))))

(declare-fun acc!681 () List!12961)

(declare-fun contains!3504 (List!12961 (_ BitVec 64)) Bool)

(assert (=> b!677708 (= res!444314 (not (contains!3504 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677709 () Bool)

(declare-fun e!386249 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!677709 (= e!386249 (not (contains!3504 acc!681 k!2843)))))

(declare-fun b!677710 () Bool)

(declare-fun res!444310 () Bool)

(assert (=> b!677710 (=> (not res!444310) (not e!386247))))

(declare-fun noDuplicate!751 (List!12961) Bool)

(assert (=> b!677710 (= res!444310 (noDuplicate!751 acc!681))))

(declare-fun res!444313 () Bool)

(assert (=> start!60354 (=> (not res!444313) (not e!386247))))

(assert (=> start!60354 (= res!444313 (and (bvslt (size!19231 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19231 a!3626))))))

(assert (=> start!60354 e!386247))

(assert (=> start!60354 true))

(declare-fun array_inv!14641 (array!39357) Bool)

(assert (=> start!60354 (array_inv!14641 a!3626)))

(declare-fun b!677711 () Bool)

(assert (=> b!677711 (= e!386247 false)))

(declare-fun lt!312783 () Bool)

(assert (=> b!677711 (= lt!312783 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677712 () Bool)

(assert (=> b!677712 (= e!386251 e!386249)))

(declare-fun res!444308 () Bool)

(assert (=> b!677712 (=> (not res!444308) (not e!386249))))

(assert (=> b!677712 (= res!444308 (bvsle from!3004 i!1382))))

(declare-fun b!677713 () Bool)

(declare-fun res!444307 () Bool)

(assert (=> b!677713 (=> (not res!444307) (not e!386247))))

(assert (=> b!677713 (= res!444307 (not (contains!3504 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677714 () Bool)

(assert (=> b!677714 (= e!386248 (contains!3504 acc!681 k!2843))))

(assert (= (and start!60354 res!444313) b!677710))

(assert (= (and b!677710 res!444310) b!677713))

(assert (= (and b!677713 res!444307) b!677708))

(assert (= (and b!677708 res!444314) b!677707))

(assert (= (and b!677707 res!444311) b!677714))

(assert (= (and b!677707 (not res!444306)) b!677712))

(assert (= (and b!677712 res!444308) b!677709))

(assert (= (and b!677707 res!444312) b!677706))

(assert (= (and b!677706 res!444309) b!677711))

(declare-fun m!643815 () Bool)

(assert (=> b!677710 m!643815))

(declare-fun m!643817 () Bool)

(assert (=> b!677706 m!643817))

(declare-fun m!643819 () Bool)

(assert (=> b!677713 m!643819))

(declare-fun m!643821 () Bool)

(assert (=> b!677714 m!643821))

(declare-fun m!643823 () Bool)

(assert (=> b!677708 m!643823))

(declare-fun m!643825 () Bool)

(assert (=> start!60354 m!643825))

(assert (=> b!677709 m!643821))

(declare-fun m!643827 () Bool)

(assert (=> b!677711 m!643827))

(push 1)

(assert (not b!677714))

(assert (not b!677710))

(assert (not b!677709))

(assert (not b!677706))

(assert (not start!60354))

(assert (not b!677713))

(assert (not b!677711))

(assert (not b!677708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

