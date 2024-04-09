; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60318 () Bool)

(assert start!60318)

(declare-fun res!443289 () Bool)

(declare-fun e!385855 () Bool)

(assert (=> start!60318 (=> (not res!443289) (not e!385855))))

(declare-datatypes ((array!39321 0))(
  ( (array!39322 (arr!18849 (Array (_ BitVec 32) (_ BitVec 64))) (size!19213 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39321)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60318 (= res!443289 (and (bvslt (size!19213 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19213 a!3626))))))

(assert (=> start!60318 e!385855))

(assert (=> start!60318 true))

(declare-fun array_inv!14623 (array!39321) Bool)

(assert (=> start!60318 (array_inv!14623 a!3626)))

(declare-fun b!676675 () Bool)

(declare-fun res!443278 () Bool)

(assert (=> b!676675 (=> (not res!443278) (not e!385855))))

(declare-fun e!385853 () Bool)

(assert (=> b!676675 (= res!443278 e!385853)))

(declare-fun res!443277 () Bool)

(assert (=> b!676675 (=> res!443277 e!385853)))

(declare-fun e!385854 () Bool)

(assert (=> b!676675 (= res!443277 e!385854)))

(declare-fun res!443291 () Bool)

(assert (=> b!676675 (=> (not res!443291) (not e!385854))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676675 (= res!443291 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676676 () Bool)

(declare-fun res!443288 () Bool)

(assert (=> b!676676 (=> (not res!443288) (not e!385855))))

(declare-datatypes ((List!12943 0))(
  ( (Nil!12940) (Cons!12939 (h!13984 (_ BitVec 64)) (t!19179 List!12943)) )
))
(declare-fun acc!681 () List!12943)

(declare-fun arrayNoDuplicates!0 (array!39321 (_ BitVec 32) List!12943) Bool)

(assert (=> b!676676 (= res!443288 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676677 () Bool)

(declare-fun e!385849 () Bool)

(assert (=> b!676677 (= e!385853 e!385849)))

(declare-fun res!443275 () Bool)

(assert (=> b!676677 (=> (not res!443275) (not e!385849))))

(assert (=> b!676677 (= res!443275 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676678 () Bool)

(declare-fun res!443284 () Bool)

(assert (=> b!676678 (=> (not res!443284) (not e!385855))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676678 (= res!443284 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676679 () Bool)

(declare-fun res!443279 () Bool)

(assert (=> b!676679 (=> (not res!443279) (not e!385855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676679 (= res!443279 (not (validKeyInArray!0 (select (arr!18849 a!3626) from!3004))))))

(declare-fun b!676680 () Bool)

(declare-fun res!443281 () Bool)

(assert (=> b!676680 (=> (not res!443281) (not e!385855))))

(declare-fun noDuplicate!733 (List!12943) Bool)

(assert (=> b!676680 (= res!443281 (noDuplicate!733 acc!681))))

(declare-fun b!676681 () Bool)

(declare-fun res!443293 () Bool)

(assert (=> b!676681 (=> (not res!443293) (not e!385855))))

(assert (=> b!676681 (= res!443293 (validKeyInArray!0 k!2843))))

(declare-fun b!676682 () Bool)

(declare-fun contains!3486 (List!12943 (_ BitVec 64)) Bool)

(assert (=> b!676682 (= e!385854 (contains!3486 acc!681 k!2843))))

(declare-fun b!676683 () Bool)

(assert (=> b!676683 (= e!385855 false)))

(declare-fun lt!312738 () Bool)

(assert (=> b!676683 (= lt!312738 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676684 () Bool)

(declare-fun e!385851 () Bool)

(assert (=> b!676684 (= e!385851 (not (contains!3486 acc!681 k!2843)))))

(declare-fun b!676685 () Bool)

(declare-fun res!443285 () Bool)

(assert (=> b!676685 (=> (not res!443285) (not e!385855))))

(assert (=> b!676685 (= res!443285 (not (contains!3486 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676686 () Bool)

(declare-fun res!443283 () Bool)

(assert (=> b!676686 (=> (not res!443283) (not e!385855))))

(assert (=> b!676686 (= res!443283 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12940))))

(declare-fun b!676687 () Bool)

(declare-fun res!443280 () Bool)

(assert (=> b!676687 (=> (not res!443280) (not e!385855))))

(assert (=> b!676687 (= res!443280 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19213 a!3626))))))

(declare-fun b!676688 () Bool)

(declare-fun e!385852 () Bool)

(assert (=> b!676688 (= e!385852 e!385851)))

(declare-fun res!443282 () Bool)

(assert (=> b!676688 (=> (not res!443282) (not e!385851))))

(assert (=> b!676688 (= res!443282 (bvsle from!3004 i!1382))))

(declare-fun b!676689 () Bool)

(assert (=> b!676689 (= e!385849 (not (contains!3486 acc!681 k!2843)))))

(declare-fun b!676690 () Bool)

(declare-fun e!385848 () Bool)

(assert (=> b!676690 (= e!385848 (contains!3486 acc!681 k!2843))))

(declare-fun b!676691 () Bool)

(declare-fun res!443276 () Bool)

(assert (=> b!676691 (=> (not res!443276) (not e!385855))))

(assert (=> b!676691 (= res!443276 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676692 () Bool)

(declare-fun res!443290 () Bool)

(assert (=> b!676692 (=> (not res!443290) (not e!385855))))

(assert (=> b!676692 (= res!443290 e!385852)))

(declare-fun res!443294 () Bool)

(assert (=> b!676692 (=> res!443294 e!385852)))

(assert (=> b!676692 (= res!443294 e!385848)))

(declare-fun res!443286 () Bool)

(assert (=> b!676692 (=> (not res!443286) (not e!385848))))

(assert (=> b!676692 (= res!443286 (bvsgt from!3004 i!1382))))

(declare-fun b!676693 () Bool)

(declare-fun res!443287 () Bool)

(assert (=> b!676693 (=> (not res!443287) (not e!385855))))

(assert (=> b!676693 (= res!443287 (not (contains!3486 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676694 () Bool)

(declare-fun res!443292 () Bool)

(assert (=> b!676694 (=> (not res!443292) (not e!385855))))

(assert (=> b!676694 (= res!443292 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19213 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60318 res!443289) b!676680))

(assert (= (and b!676680 res!443281) b!676693))

(assert (= (and b!676693 res!443287) b!676685))

(assert (= (and b!676685 res!443285) b!676692))

(assert (= (and b!676692 res!443286) b!676690))

(assert (= (and b!676692 (not res!443294)) b!676688))

(assert (= (and b!676688 res!443282) b!676684))

(assert (= (and b!676692 res!443290) b!676686))

(assert (= (and b!676686 res!443283) b!676676))

(assert (= (and b!676676 res!443288) b!676687))

(assert (= (and b!676687 res!443280) b!676681))

(assert (= (and b!676681 res!443293) b!676678))

(assert (= (and b!676678 res!443284) b!676694))

(assert (= (and b!676694 res!443292) b!676679))

(assert (= (and b!676679 res!443279) b!676691))

(assert (= (and b!676691 res!443276) b!676675))

(assert (= (and b!676675 res!443291) b!676682))

(assert (= (and b!676675 (not res!443277)) b!676677))

(assert (= (and b!676677 res!443275) b!676689))

(assert (= (and b!676675 res!443278) b!676683))

(declare-fun m!643329 () Bool)

(assert (=> b!676678 m!643329))

(declare-fun m!643331 () Bool)

(assert (=> b!676684 m!643331))

(assert (=> b!676690 m!643331))

(declare-fun m!643333 () Bool)

(assert (=> start!60318 m!643333))

(declare-fun m!643335 () Bool)

(assert (=> b!676683 m!643335))

(declare-fun m!643337 () Bool)

(assert (=> b!676676 m!643337))

(declare-fun m!643339 () Bool)

(assert (=> b!676685 m!643339))

(declare-fun m!643341 () Bool)

(assert (=> b!676693 m!643341))

(declare-fun m!643343 () Bool)

(assert (=> b!676681 m!643343))

(declare-fun m!643345 () Bool)

(assert (=> b!676686 m!643345))

(declare-fun m!643347 () Bool)

(assert (=> b!676680 m!643347))

(assert (=> b!676689 m!643331))

(assert (=> b!676682 m!643331))

(declare-fun m!643349 () Bool)

(assert (=> b!676679 m!643349))

(assert (=> b!676679 m!643349))

(declare-fun m!643351 () Bool)

(assert (=> b!676679 m!643351))

(push 1)

(assert (not b!676679))

(assert (not b!676690))

(assert (not b!676676))

(assert (not b!676681))

(assert (not b!676682))

(assert (not b!676678))

(assert (not b!676686))

(assert (not start!60318))

(assert (not b!676680))

(assert (not b!676685))

(assert (not b!676693))

(assert (not b!676684))

(assert (not b!676689))

(assert (not b!676683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

