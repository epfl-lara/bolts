; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60286 () Bool)

(assert start!60286)

(declare-fun b!675715 () Bool)

(declare-fun res!442325 () Bool)

(declare-fun e!385466 () Bool)

(assert (=> b!675715 (=> (not res!442325) (not e!385466))))

(declare-datatypes ((array!39289 0))(
  ( (array!39290 (arr!18833 (Array (_ BitVec 32) (_ BitVec 64))) (size!19197 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39289)

(declare-datatypes ((List!12927 0))(
  ( (Nil!12924) (Cons!12923 (h!13968 (_ BitVec 64)) (t!19163 List!12927)) )
))
(declare-fun arrayNoDuplicates!0 (array!39289 (_ BitVec 32) List!12927) Bool)

(assert (=> b!675715 (= res!442325 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12924))))

(declare-fun b!675716 () Bool)

(declare-fun res!442321 () Bool)

(assert (=> b!675716 (=> (not res!442321) (not e!385466))))

(declare-fun acc!681 () List!12927)

(declare-fun noDuplicate!717 (List!12927) Bool)

(assert (=> b!675716 (= res!442321 (noDuplicate!717 acc!681))))

(declare-fun b!675717 () Bool)

(declare-fun res!442323 () Bool)

(assert (=> b!675717 (=> (not res!442323) (not e!385466))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675717 (= res!442323 (validKeyInArray!0 k!2843))))

(declare-fun b!675718 () Bool)

(declare-fun res!442320 () Bool)

(assert (=> b!675718 (=> (not res!442320) (not e!385466))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675718 (= res!442320 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675719 () Bool)

(declare-fun e!385464 () Bool)

(declare-fun contains!3470 (List!12927 (_ BitVec 64)) Bool)

(assert (=> b!675719 (= e!385464 (contains!3470 acc!681 k!2843))))

(declare-fun b!675720 () Bool)

(assert (=> b!675720 (= e!385466 false)))

(declare-fun lt!312690 () Bool)

(assert (=> b!675720 (= lt!312690 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun res!442328 () Bool)

(assert (=> start!60286 (=> (not res!442328) (not e!385466))))

(assert (=> start!60286 (= res!442328 (and (bvslt (size!19197 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19197 a!3626))))))

(assert (=> start!60286 e!385466))

(assert (=> start!60286 true))

(declare-fun array_inv!14607 (array!39289) Bool)

(assert (=> start!60286 (array_inv!14607 a!3626)))

(declare-fun b!675721 () Bool)

(declare-fun res!442331 () Bool)

(assert (=> b!675721 (=> (not res!442331) (not e!385466))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675721 (= res!442331 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19197 a!3626))))))

(declare-fun b!675722 () Bool)

(declare-fun res!442322 () Bool)

(assert (=> b!675722 (=> (not res!442322) (not e!385466))))

(declare-fun e!385467 () Bool)

(assert (=> b!675722 (= res!442322 e!385467)))

(declare-fun res!442327 () Bool)

(assert (=> b!675722 (=> res!442327 e!385467)))

(declare-fun e!385465 () Bool)

(assert (=> b!675722 (= res!442327 e!385465)))

(declare-fun res!442330 () Bool)

(assert (=> b!675722 (=> (not res!442330) (not e!385465))))

(assert (=> b!675722 (= res!442330 (bvsgt from!3004 i!1382))))

(declare-fun b!675723 () Bool)

(declare-fun e!385468 () Bool)

(assert (=> b!675723 (= e!385467 e!385468)))

(declare-fun res!442329 () Bool)

(assert (=> b!675723 (=> (not res!442329) (not e!385468))))

(assert (=> b!675723 (= res!442329 (bvsle from!3004 i!1382))))

(declare-fun b!675724 () Bool)

(declare-fun res!442316 () Bool)

(assert (=> b!675724 (=> (not res!442316) (not e!385466))))

(assert (=> b!675724 (= res!442316 (not (validKeyInArray!0 (select (arr!18833 a!3626) from!3004))))))

(declare-fun b!675725 () Bool)

(assert (=> b!675725 (= e!385468 (not (contains!3470 acc!681 k!2843)))))

(declare-fun b!675726 () Bool)

(declare-fun e!385471 () Bool)

(assert (=> b!675726 (= e!385471 (not (contains!3470 acc!681 k!2843)))))

(declare-fun b!675727 () Bool)

(declare-fun res!442334 () Bool)

(assert (=> b!675727 (=> (not res!442334) (not e!385466))))

(assert (=> b!675727 (= res!442334 (not (contains!3470 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675728 () Bool)

(declare-fun res!442332 () Bool)

(assert (=> b!675728 (=> (not res!442332) (not e!385466))))

(assert (=> b!675728 (= res!442332 (not (contains!3470 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675729 () Bool)

(declare-fun e!385470 () Bool)

(assert (=> b!675729 (= e!385470 e!385471)))

(declare-fun res!442317 () Bool)

(assert (=> b!675729 (=> (not res!442317) (not e!385471))))

(assert (=> b!675729 (= res!442317 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675730 () Bool)

(declare-fun res!442324 () Bool)

(assert (=> b!675730 (=> (not res!442324) (not e!385466))))

(assert (=> b!675730 (= res!442324 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675731 () Bool)

(declare-fun res!442315 () Bool)

(assert (=> b!675731 (=> (not res!442315) (not e!385466))))

(assert (=> b!675731 (= res!442315 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19197 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675732 () Bool)

(declare-fun res!442333 () Bool)

(assert (=> b!675732 (=> (not res!442333) (not e!385466))))

(assert (=> b!675732 (= res!442333 e!385470)))

(declare-fun res!442319 () Bool)

(assert (=> b!675732 (=> res!442319 e!385470)))

(assert (=> b!675732 (= res!442319 e!385464)))

(declare-fun res!442318 () Bool)

(assert (=> b!675732 (=> (not res!442318) (not e!385464))))

(assert (=> b!675732 (= res!442318 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675733 () Bool)

(assert (=> b!675733 (= e!385465 (contains!3470 acc!681 k!2843))))

(declare-fun b!675734 () Bool)

(declare-fun res!442326 () Bool)

(assert (=> b!675734 (=> (not res!442326) (not e!385466))))

(declare-fun arrayContainsKey!0 (array!39289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675734 (= res!442326 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60286 res!442328) b!675716))

(assert (= (and b!675716 res!442321) b!675727))

(assert (= (and b!675727 res!442334) b!675728))

(assert (= (and b!675728 res!442332) b!675722))

(assert (= (and b!675722 res!442330) b!675733))

(assert (= (and b!675722 (not res!442327)) b!675723))

(assert (= (and b!675723 res!442329) b!675725))

(assert (= (and b!675722 res!442322) b!675715))

(assert (= (and b!675715 res!442325) b!675718))

(assert (= (and b!675718 res!442320) b!675721))

(assert (= (and b!675721 res!442331) b!675717))

(assert (= (and b!675717 res!442323) b!675734))

(assert (= (and b!675734 res!442326) b!675731))

(assert (= (and b!675731 res!442315) b!675724))

(assert (= (and b!675724 res!442316) b!675730))

(assert (= (and b!675730 res!442324) b!675732))

(assert (= (and b!675732 res!442318) b!675719))

(assert (= (and b!675732 (not res!442319)) b!675729))

(assert (= (and b!675729 res!442317) b!675726))

(assert (= (and b!675732 res!442333) b!675720))

(declare-fun m!642945 () Bool)

(assert (=> b!675724 m!642945))

(assert (=> b!675724 m!642945))

(declare-fun m!642947 () Bool)

(assert (=> b!675724 m!642947))

(declare-fun m!642949 () Bool)

(assert (=> b!675733 m!642949))

(declare-fun m!642951 () Bool)

(assert (=> b!675716 m!642951))

(assert (=> b!675719 m!642949))

(declare-fun m!642953 () Bool)

(assert (=> b!675727 m!642953))

(assert (=> b!675725 m!642949))

(declare-fun m!642955 () Bool)

(assert (=> b!675728 m!642955))

(declare-fun m!642957 () Bool)

(assert (=> b!675720 m!642957))

(declare-fun m!642959 () Bool)

(assert (=> b!675717 m!642959))

(declare-fun m!642961 () Bool)

(assert (=> b!675715 m!642961))

(assert (=> b!675726 m!642949))

(declare-fun m!642963 () Bool)

(assert (=> start!60286 m!642963))

(declare-fun m!642965 () Bool)

(assert (=> b!675718 m!642965))

(declare-fun m!642967 () Bool)

(assert (=> b!675734 m!642967))

(push 1)

(assert (not b!675718))

(assert (not b!675726))

(assert (not b!675734))

(assert (not b!675724))

(assert (not b!675727))

(assert (not b!675716))

(assert (not b!675728))

(assert (not b!675715))

(assert (not b!675725))

(assert (not b!675717))

(assert (not b!675720))

(assert (not b!675719))

(assert (not b!675733))

(assert (not start!60286))

(check-sat)

