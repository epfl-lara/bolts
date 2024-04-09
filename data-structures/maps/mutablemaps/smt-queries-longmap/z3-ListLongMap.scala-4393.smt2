; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60440 () Bool)

(assert start!60440)

(declare-fun b!678736 () Bool)

(declare-fun e!386755 () Bool)

(declare-datatypes ((List!12986 0))(
  ( (Nil!12983) (Cons!12982 (h!14027 (_ BitVec 64)) (t!19222 List!12986)) )
))
(declare-fun acc!681 () List!12986)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3529 (List!12986 (_ BitVec 64)) Bool)

(assert (=> b!678736 (= e!386755 (contains!3529 acc!681 k0!2843))))

(declare-fun b!678737 () Bool)

(declare-fun res!445306 () Bool)

(declare-fun e!386752 () Bool)

(assert (=> b!678737 (=> (not res!445306) (not e!386752))))

(declare-datatypes ((array!39410 0))(
  ( (array!39411 (arr!18892 (Array (_ BitVec 32) (_ BitVec 64))) (size!19256 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39410)

(declare-fun arrayContainsKey!0 (array!39410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678737 (= res!445306 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678738 () Bool)

(declare-fun res!445299 () Bool)

(assert (=> b!678738 (=> (not res!445299) (not e!386752))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39410 (_ BitVec 32) List!12986) Bool)

(assert (=> b!678738 (= res!445299 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678739 () Bool)

(declare-fun res!445307 () Bool)

(assert (=> b!678739 (=> (not res!445307) (not e!386752))))

(assert (=> b!678739 (= res!445307 (not (contains!3529 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678740 () Bool)

(declare-fun res!445304 () Bool)

(assert (=> b!678740 (=> (not res!445304) (not e!386752))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678740 (= res!445304 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19256 a!3626))))))

(declare-fun b!678741 () Bool)

(declare-fun res!445303 () Bool)

(assert (=> b!678741 (=> (not res!445303) (not e!386752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678741 (= res!445303 (validKeyInArray!0 k0!2843))))

(declare-fun b!678742 () Bool)

(declare-fun res!445300 () Bool)

(assert (=> b!678742 (=> (not res!445300) (not e!386752))))

(declare-fun noDuplicate!776 (List!12986) Bool)

(assert (=> b!678742 (= res!445300 (noDuplicate!776 acc!681))))

(declare-fun b!678743 () Bool)

(assert (=> b!678743 (= e!386752 (not true))))

(assert (=> b!678743 (arrayContainsKey!0 (array!39411 (store (arr!18892 a!3626) i!1382 k0!2843) (size!19256 a!3626)) k0!2843 from!3004)))

(declare-fun b!678744 () Bool)

(declare-fun res!445298 () Bool)

(assert (=> b!678744 (=> (not res!445298) (not e!386752))))

(assert (=> b!678744 (= res!445298 (not (contains!3529 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678745 () Bool)

(declare-fun res!445301 () Bool)

(assert (=> b!678745 (=> (not res!445301) (not e!386752))))

(assert (=> b!678745 (= res!445301 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19256 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!445294 () Bool)

(assert (=> start!60440 (=> (not res!445294) (not e!386752))))

(assert (=> start!60440 (= res!445294 (and (bvslt (size!19256 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19256 a!3626))))))

(assert (=> start!60440 e!386752))

(assert (=> start!60440 true))

(declare-fun array_inv!14666 (array!39410) Bool)

(assert (=> start!60440 (array_inv!14666 a!3626)))

(declare-fun b!678746 () Bool)

(declare-fun e!386754 () Bool)

(declare-fun e!386751 () Bool)

(assert (=> b!678746 (= e!386754 e!386751)))

(declare-fun res!445305 () Bool)

(assert (=> b!678746 (=> (not res!445305) (not e!386751))))

(assert (=> b!678746 (= res!445305 (bvsle from!3004 i!1382))))

(declare-fun b!678747 () Bool)

(declare-fun res!445297 () Bool)

(assert (=> b!678747 (=> (not res!445297) (not e!386752))))

(assert (=> b!678747 (= res!445297 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12983))))

(declare-fun b!678748 () Bool)

(assert (=> b!678748 (= e!386751 (not (contains!3529 acc!681 k0!2843)))))

(declare-fun b!678749 () Bool)

(declare-fun res!445296 () Bool)

(assert (=> b!678749 (=> (not res!445296) (not e!386752))))

(assert (=> b!678749 (= res!445296 e!386754)))

(declare-fun res!445295 () Bool)

(assert (=> b!678749 (=> res!445295 e!386754)))

(assert (=> b!678749 (= res!445295 e!386755)))

(declare-fun res!445302 () Bool)

(assert (=> b!678749 (=> (not res!445302) (not e!386755))))

(assert (=> b!678749 (= res!445302 (bvsgt from!3004 i!1382))))

(assert (= (and start!60440 res!445294) b!678742))

(assert (= (and b!678742 res!445300) b!678744))

(assert (= (and b!678744 res!445298) b!678739))

(assert (= (and b!678739 res!445307) b!678749))

(assert (= (and b!678749 res!445302) b!678736))

(assert (= (and b!678749 (not res!445295)) b!678746))

(assert (= (and b!678746 res!445305) b!678748))

(assert (= (and b!678749 res!445296) b!678747))

(assert (= (and b!678747 res!445297) b!678738))

(assert (= (and b!678738 res!445299) b!678740))

(assert (= (and b!678740 res!445304) b!678741))

(assert (= (and b!678741 res!445303) b!678737))

(assert (= (and b!678737 res!445306) b!678745))

(assert (= (and b!678745 res!445301) b!678743))

(declare-fun m!644389 () Bool)

(assert (=> b!678747 m!644389))

(declare-fun m!644391 () Bool)

(assert (=> b!678739 m!644391))

(declare-fun m!644393 () Bool)

(assert (=> b!678744 m!644393))

(declare-fun m!644395 () Bool)

(assert (=> b!678736 m!644395))

(declare-fun m!644397 () Bool)

(assert (=> b!678742 m!644397))

(declare-fun m!644399 () Bool)

(assert (=> start!60440 m!644399))

(declare-fun m!644401 () Bool)

(assert (=> b!678743 m!644401))

(declare-fun m!644403 () Bool)

(assert (=> b!678743 m!644403))

(assert (=> b!678748 m!644395))

(declare-fun m!644405 () Bool)

(assert (=> b!678737 m!644405))

(declare-fun m!644407 () Bool)

(assert (=> b!678738 m!644407))

(declare-fun m!644409 () Bool)

(assert (=> b!678741 m!644409))

(check-sat (not b!678739) (not b!678747) (not b!678742) (not b!678736) (not b!678738) (not b!678743) (not b!678748) (not b!678744) (not b!678741) (not start!60440) (not b!678737))
