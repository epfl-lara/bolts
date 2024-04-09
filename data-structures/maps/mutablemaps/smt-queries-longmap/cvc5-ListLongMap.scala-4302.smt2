; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59856 () Bool)

(assert start!59856)

(declare-fun b!661165 () Bool)

(declare-fun res!429409 () Bool)

(declare-fun e!379807 () Bool)

(assert (=> b!661165 (=> (not res!429409) (not e!379807))))

(declare-datatypes ((array!38859 0))(
  ( (array!38860 (arr!18618 (Array (_ BitVec 32) (_ BitVec 64))) (size!18982 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38859)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661165 (= res!429409 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661166 () Bool)

(declare-fun res!429406 () Bool)

(assert (=> b!661166 (=> (not res!429406) (not e!379807))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661166 (= res!429406 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18982 a!3626))))))

(declare-fun b!661167 () Bool)

(declare-fun res!429411 () Bool)

(assert (=> b!661167 (=> (not res!429411) (not e!379807))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12712 0))(
  ( (Nil!12709) (Cons!12708 (h!13753 (_ BitVec 64)) (t!18948 List!12712)) )
))
(declare-fun acc!681 () List!12712)

(declare-fun arrayNoDuplicates!0 (array!38859 (_ BitVec 32) List!12712) Bool)

(assert (=> b!661167 (= res!429411 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661168 () Bool)

(declare-fun res!429404 () Bool)

(assert (=> b!661168 (=> (not res!429404) (not e!379807))))

(assert (=> b!661168 (= res!429404 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12709))))

(declare-fun b!661170 () Bool)

(declare-fun res!429413 () Bool)

(assert (=> b!661170 (=> (not res!429413) (not e!379807))))

(declare-fun contains!3255 (List!12712 (_ BitVec 64)) Bool)

(assert (=> b!661170 (= res!429413 (not (contains!3255 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661171 () Bool)

(declare-fun e!379806 () Bool)

(assert (=> b!661171 (= e!379806 (not (contains!3255 acc!681 k!2843)))))

(declare-fun b!661172 () Bool)

(declare-fun res!429412 () Bool)

(assert (=> b!661172 (=> (not res!429412) (not e!379807))))

(declare-fun e!379803 () Bool)

(assert (=> b!661172 (= res!429412 e!379803)))

(declare-fun res!429405 () Bool)

(assert (=> b!661172 (=> res!429405 e!379803)))

(declare-fun e!379805 () Bool)

(assert (=> b!661172 (= res!429405 e!379805)))

(declare-fun res!429414 () Bool)

(assert (=> b!661172 (=> (not res!429414) (not e!379805))))

(assert (=> b!661172 (= res!429414 (bvsgt from!3004 i!1382))))

(declare-fun b!661173 () Bool)

(declare-fun res!429407 () Bool)

(assert (=> b!661173 (=> (not res!429407) (not e!379807))))

(assert (=> b!661173 (= res!429407 (not (contains!3255 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661174 () Bool)

(declare-fun res!429403 () Bool)

(assert (=> b!661174 (=> (not res!429403) (not e!379807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661174 (= res!429403 (validKeyInArray!0 k!2843))))

(declare-fun b!661175 () Bool)

(assert (=> b!661175 (= e!379803 e!379806)))

(declare-fun res!429415 () Bool)

(assert (=> b!661175 (=> (not res!429415) (not e!379806))))

(assert (=> b!661175 (= res!429415 (bvsle from!3004 i!1382))))

(declare-fun b!661176 () Bool)

(assert (=> b!661176 (= e!379805 (contains!3255 acc!681 k!2843))))

(declare-fun res!429416 () Bool)

(assert (=> start!59856 (=> (not res!429416) (not e!379807))))

(assert (=> start!59856 (= res!429416 (and (bvslt (size!18982 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18982 a!3626))))))

(assert (=> start!59856 e!379807))

(assert (=> start!59856 true))

(declare-fun array_inv!14392 (array!38859) Bool)

(assert (=> start!59856 (array_inv!14392 a!3626)))

(declare-fun b!661169 () Bool)

(declare-fun res!429410 () Bool)

(assert (=> b!661169 (=> (not res!429410) (not e!379807))))

(declare-fun noDuplicate!502 (List!12712) Bool)

(assert (=> b!661169 (= res!429410 (noDuplicate!502 acc!681))))

(declare-fun b!661177 () Bool)

(assert (=> b!661177 (= e!379807 (not true))))

(assert (=> b!661177 (arrayContainsKey!0 (array!38860 (store (arr!18618 a!3626) i!1382 k!2843) (size!18982 a!3626)) k!2843 from!3004)))

(declare-fun b!661178 () Bool)

(declare-fun res!429408 () Bool)

(assert (=> b!661178 (=> (not res!429408) (not e!379807))))

(assert (=> b!661178 (= res!429408 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18982 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!59856 res!429416) b!661169))

(assert (= (and b!661169 res!429410) b!661170))

(assert (= (and b!661170 res!429413) b!661173))

(assert (= (and b!661173 res!429407) b!661172))

(assert (= (and b!661172 res!429414) b!661176))

(assert (= (and b!661172 (not res!429405)) b!661175))

(assert (= (and b!661175 res!429415) b!661171))

(assert (= (and b!661172 res!429412) b!661168))

(assert (= (and b!661168 res!429404) b!661167))

(assert (= (and b!661167 res!429411) b!661166))

(assert (= (and b!661166 res!429406) b!661174))

(assert (= (and b!661174 res!429403) b!661165))

(assert (= (and b!661165 res!429409) b!661178))

(assert (= (and b!661178 res!429408) b!661177))

(declare-fun m!633453 () Bool)

(assert (=> b!661174 m!633453))

(declare-fun m!633455 () Bool)

(assert (=> b!661167 m!633455))

(declare-fun m!633457 () Bool)

(assert (=> b!661170 m!633457))

(declare-fun m!633459 () Bool)

(assert (=> b!661168 m!633459))

(declare-fun m!633461 () Bool)

(assert (=> b!661176 m!633461))

(declare-fun m!633463 () Bool)

(assert (=> start!59856 m!633463))

(declare-fun m!633465 () Bool)

(assert (=> b!661169 m!633465))

(declare-fun m!633467 () Bool)

(assert (=> b!661165 m!633467))

(declare-fun m!633469 () Bool)

(assert (=> b!661173 m!633469))

(assert (=> b!661171 m!633461))

(declare-fun m!633471 () Bool)

(assert (=> b!661177 m!633471))

(declare-fun m!633473 () Bool)

(assert (=> b!661177 m!633473))

(push 1)

(assert (not b!661168))

(assert (not b!661165))

(assert (not start!59856))

(assert (not b!661171))

(assert (not b!661170))

(assert (not b!661173))

(assert (not b!661174))

(assert (not b!661169))

(assert (not b!661176))

(assert (not b!661167))

(assert (not b!661177))

(check-sat)

