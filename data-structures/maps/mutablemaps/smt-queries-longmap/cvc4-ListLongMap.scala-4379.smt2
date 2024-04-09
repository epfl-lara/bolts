; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60322 () Bool)

(assert start!60322)

(declare-fun b!676795 () Bool)

(declare-fun res!443404 () Bool)

(declare-fun e!385902 () Bool)

(assert (=> b!676795 (=> (not res!443404) (not e!385902))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!676795 (= res!443404 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676797 () Bool)

(declare-fun e!385896 () Bool)

(declare-datatypes ((List!12945 0))(
  ( (Nil!12942) (Cons!12941 (h!13986 (_ BitVec 64)) (t!19181 List!12945)) )
))
(declare-fun acc!681 () List!12945)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3488 (List!12945 (_ BitVec 64)) Bool)

(assert (=> b!676797 (= e!385896 (not (contains!3488 acc!681 k!2843)))))

(declare-fun b!676798 () Bool)

(declare-fun res!443408 () Bool)

(assert (=> b!676798 (=> (not res!443408) (not e!385902))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39325 0))(
  ( (array!39326 (arr!18851 (Array (_ BitVec 32) (_ BitVec 64))) (size!19215 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39325)

(assert (=> b!676798 (= res!443408 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19215 a!3626))))))

(declare-fun b!676799 () Bool)

(declare-fun res!443397 () Bool)

(assert (=> b!676799 (=> (not res!443397) (not e!385902))))

(declare-fun e!385897 () Bool)

(assert (=> b!676799 (= res!443397 e!385897)))

(declare-fun res!443409 () Bool)

(assert (=> b!676799 (=> res!443409 e!385897)))

(declare-fun e!385901 () Bool)

(assert (=> b!676799 (= res!443409 e!385901)))

(declare-fun res!443400 () Bool)

(assert (=> b!676799 (=> (not res!443400) (not e!385901))))

(assert (=> b!676799 (= res!443400 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676800 () Bool)

(declare-fun res!443411 () Bool)

(assert (=> b!676800 (=> (not res!443411) (not e!385902))))

(declare-fun arrayNoDuplicates!0 (array!39325 (_ BitVec 32) List!12945) Bool)

(assert (=> b!676800 (= res!443411 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12942))))

(declare-fun b!676801 () Bool)

(assert (=> b!676801 (= e!385902 false)))

(declare-fun lt!312744 () Bool)

(assert (=> b!676801 (= lt!312744 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676802 () Bool)

(declare-fun res!443403 () Bool)

(assert (=> b!676802 (=> (not res!443403) (not e!385902))))

(assert (=> b!676802 (= res!443403 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19215 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676803 () Bool)

(declare-fun e!385900 () Bool)

(assert (=> b!676803 (= e!385900 e!385896)))

(declare-fun res!443398 () Bool)

(assert (=> b!676803 (=> (not res!443398) (not e!385896))))

(assert (=> b!676803 (= res!443398 (bvsle from!3004 i!1382))))

(declare-fun b!676804 () Bool)

(declare-fun res!443401 () Bool)

(assert (=> b!676804 (=> (not res!443401) (not e!385902))))

(assert (=> b!676804 (= res!443401 (not (contains!3488 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676805 () Bool)

(declare-fun res!443405 () Bool)

(assert (=> b!676805 (=> (not res!443405) (not e!385902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676805 (= res!443405 (validKeyInArray!0 k!2843))))

(declare-fun b!676806 () Bool)

(declare-fun e!385899 () Bool)

(assert (=> b!676806 (= e!385899 (contains!3488 acc!681 k!2843))))

(declare-fun res!443412 () Bool)

(assert (=> start!60322 (=> (not res!443412) (not e!385902))))

(assert (=> start!60322 (= res!443412 (and (bvslt (size!19215 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19215 a!3626))))))

(assert (=> start!60322 e!385902))

(assert (=> start!60322 true))

(declare-fun array_inv!14625 (array!39325) Bool)

(assert (=> start!60322 (array_inv!14625 a!3626)))

(declare-fun b!676796 () Bool)

(declare-fun res!443396 () Bool)

(assert (=> b!676796 (=> (not res!443396) (not e!385902))))

(declare-fun arrayContainsKey!0 (array!39325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676796 (= res!443396 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676807 () Bool)

(declare-fun e!385898 () Bool)

(assert (=> b!676807 (= e!385898 (not (contains!3488 acc!681 k!2843)))))

(declare-fun b!676808 () Bool)

(declare-fun res!443410 () Bool)

(assert (=> b!676808 (=> (not res!443410) (not e!385902))))

(assert (=> b!676808 (= res!443410 e!385900)))

(declare-fun res!443414 () Bool)

(assert (=> b!676808 (=> res!443414 e!385900)))

(assert (=> b!676808 (= res!443414 e!385899)))

(declare-fun res!443402 () Bool)

(assert (=> b!676808 (=> (not res!443402) (not e!385899))))

(assert (=> b!676808 (= res!443402 (bvsgt from!3004 i!1382))))

(declare-fun b!676809 () Bool)

(assert (=> b!676809 (= e!385901 (contains!3488 acc!681 k!2843))))

(declare-fun b!676810 () Bool)

(declare-fun res!443395 () Bool)

(assert (=> b!676810 (=> (not res!443395) (not e!385902))))

(assert (=> b!676810 (= res!443395 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676811 () Bool)

(declare-fun res!443407 () Bool)

(assert (=> b!676811 (=> (not res!443407) (not e!385902))))

(declare-fun noDuplicate!735 (List!12945) Bool)

(assert (=> b!676811 (= res!443407 (noDuplicate!735 acc!681))))

(declare-fun b!676812 () Bool)

(declare-fun res!443413 () Bool)

(assert (=> b!676812 (=> (not res!443413) (not e!385902))))

(assert (=> b!676812 (= res!443413 (not (validKeyInArray!0 (select (arr!18851 a!3626) from!3004))))))

(declare-fun b!676813 () Bool)

(assert (=> b!676813 (= e!385897 e!385898)))

(declare-fun res!443406 () Bool)

(assert (=> b!676813 (=> (not res!443406) (not e!385898))))

(assert (=> b!676813 (= res!443406 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676814 () Bool)

(declare-fun res!443399 () Bool)

(assert (=> b!676814 (=> (not res!443399) (not e!385902))))

(assert (=> b!676814 (= res!443399 (not (contains!3488 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60322 res!443412) b!676811))

(assert (= (and b!676811 res!443407) b!676814))

(assert (= (and b!676814 res!443399) b!676804))

(assert (= (and b!676804 res!443401) b!676808))

(assert (= (and b!676808 res!443402) b!676806))

(assert (= (and b!676808 (not res!443414)) b!676803))

(assert (= (and b!676803 res!443398) b!676797))

(assert (= (and b!676808 res!443410) b!676800))

(assert (= (and b!676800 res!443411) b!676810))

(assert (= (and b!676810 res!443395) b!676798))

(assert (= (and b!676798 res!443408) b!676805))

(assert (= (and b!676805 res!443405) b!676796))

(assert (= (and b!676796 res!443396) b!676802))

(assert (= (and b!676802 res!443403) b!676812))

(assert (= (and b!676812 res!443413) b!676795))

(assert (= (and b!676795 res!443404) b!676799))

(assert (= (and b!676799 res!443400) b!676809))

(assert (= (and b!676799 (not res!443409)) b!676813))

(assert (= (and b!676813 res!443406) b!676807))

(assert (= (and b!676799 res!443397) b!676801))

(declare-fun m!643377 () Bool)

(assert (=> b!676811 m!643377))

(declare-fun m!643379 () Bool)

(assert (=> b!676807 m!643379))

(declare-fun m!643381 () Bool)

(assert (=> b!676810 m!643381))

(declare-fun m!643383 () Bool)

(assert (=> b!676800 m!643383))

(declare-fun m!643385 () Bool)

(assert (=> b!676796 m!643385))

(assert (=> b!676806 m!643379))

(assert (=> b!676797 m!643379))

(declare-fun m!643387 () Bool)

(assert (=> b!676812 m!643387))

(assert (=> b!676812 m!643387))

(declare-fun m!643389 () Bool)

(assert (=> b!676812 m!643389))

(declare-fun m!643391 () Bool)

(assert (=> b!676805 m!643391))

(declare-fun m!643393 () Bool)

(assert (=> b!676814 m!643393))

(assert (=> b!676809 m!643379))

(declare-fun m!643395 () Bool)

(assert (=> start!60322 m!643395))

(declare-fun m!643397 () Bool)

(assert (=> b!676801 m!643397))

(declare-fun m!643399 () Bool)

(assert (=> b!676804 m!643399))

(push 1)

(assert (not b!676800))

(assert (not b!676811))

(assert (not b!676814))

(assert (not b!676807))

(assert (not b!676796))

(assert (not b!676805))

(assert (not b!676806))

(assert (not b!676804))

(assert (not b!676797))

(assert (not b!676809))

(assert (not b!676801))

(assert (not b!676810))

(assert (not b!676812))

(assert (not start!60322))

(check-sat)

