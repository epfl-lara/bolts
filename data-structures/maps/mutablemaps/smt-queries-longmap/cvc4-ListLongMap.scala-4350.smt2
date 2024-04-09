; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60148 () Bool)

(assert start!60148)

(declare-fun b!670841 () Bool)

(declare-fun res!437712 () Bool)

(declare-fun e!383489 () Bool)

(assert (=> b!670841 (=> (not res!437712) (not e!383489))))

(declare-datatypes ((array!39151 0))(
  ( (array!39152 (arr!18764 (Array (_ BitVec 32) (_ BitVec 64))) (size!19128 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39151)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12858 0))(
  ( (Nil!12855) (Cons!12854 (h!13899 (_ BitVec 64)) (t!19094 List!12858)) )
))
(declare-fun acc!681 () List!12858)

(declare-fun arrayNoDuplicates!0 (array!39151 (_ BitVec 32) List!12858) Bool)

(assert (=> b!670841 (= res!437712 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!437719 () Bool)

(assert (=> start!60148 (=> (not res!437719) (not e!383489))))

(assert (=> start!60148 (= res!437719 (and (bvslt (size!19128 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19128 a!3626))))))

(assert (=> start!60148 e!383489))

(assert (=> start!60148 true))

(declare-fun array_inv!14538 (array!39151) Bool)

(assert (=> start!60148 (array_inv!14538 a!3626)))

(declare-fun b!670842 () Bool)

(declare-fun e!383490 () Bool)

(declare-fun e!383491 () Bool)

(assert (=> b!670842 (= e!383490 e!383491)))

(declare-fun res!437726 () Bool)

(assert (=> b!670842 (=> (not res!437726) (not e!383491))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670842 (= res!437726 (bvsle from!3004 i!1382))))

(declare-fun b!670843 () Bool)

(declare-fun res!437714 () Bool)

(assert (=> b!670843 (=> (not res!437714) (not e!383489))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670843 (= res!437714 (validKeyInArray!0 k!2843))))

(declare-fun b!670844 () Bool)

(declare-fun contains!3401 (List!12858 (_ BitVec 64)) Bool)

(assert (=> b!670844 (= e!383491 (not (contains!3401 acc!681 k!2843)))))

(declare-fun b!670845 () Bool)

(declare-fun res!437716 () Bool)

(assert (=> b!670845 (=> (not res!437716) (not e!383489))))

(declare-fun noDuplicate!648 (List!12858) Bool)

(assert (=> b!670845 (= res!437716 (noDuplicate!648 acc!681))))

(declare-fun b!670846 () Bool)

(declare-fun res!437717 () Bool)

(assert (=> b!670846 (=> (not res!437717) (not e!383489))))

(assert (=> b!670846 (= res!437717 e!383490)))

(declare-fun res!437715 () Bool)

(assert (=> b!670846 (=> res!437715 e!383490)))

(declare-fun e!383488 () Bool)

(assert (=> b!670846 (= res!437715 e!383488)))

(declare-fun res!437718 () Bool)

(assert (=> b!670846 (=> (not res!437718) (not e!383488))))

(assert (=> b!670846 (= res!437718 (bvsgt from!3004 i!1382))))

(declare-fun b!670847 () Bool)

(declare-fun res!437722 () Bool)

(assert (=> b!670847 (=> (not res!437722) (not e!383489))))

(assert (=> b!670847 (= res!437722 (= (select (arr!18764 a!3626) from!3004) k!2843))))

(declare-fun b!670848 () Bool)

(declare-fun res!437711 () Bool)

(assert (=> b!670848 (=> (not res!437711) (not e!383489))))

(assert (=> b!670848 (= res!437711 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12855))))

(declare-fun b!670849 () Bool)

(assert (=> b!670849 (= e!383488 (contains!3401 acc!681 k!2843))))

(declare-fun b!670850 () Bool)

(declare-fun res!437725 () Bool)

(assert (=> b!670850 (=> (not res!437725) (not e!383489))))

(assert (=> b!670850 (= res!437725 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19128 a!3626))))))

(declare-fun b!670851 () Bool)

(declare-fun res!437720 () Bool)

(assert (=> b!670851 (=> (not res!437720) (not e!383489))))

(assert (=> b!670851 (= res!437720 (validKeyInArray!0 (select (arr!18764 a!3626) from!3004)))))

(declare-fun b!670852 () Bool)

(assert (=> b!670852 (= e!383489 (not true))))

(declare-fun arrayContainsKey!0 (array!39151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670852 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!670853 () Bool)

(declare-fun res!437724 () Bool)

(assert (=> b!670853 (=> (not res!437724) (not e!383489))))

(assert (=> b!670853 (= res!437724 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19128 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!670854 () Bool)

(declare-fun res!437723 () Bool)

(assert (=> b!670854 (=> (not res!437723) (not e!383489))))

(assert (=> b!670854 (= res!437723 (not (contains!3401 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670855 () Bool)

(declare-fun res!437713 () Bool)

(assert (=> b!670855 (=> (not res!437713) (not e!383489))))

(assert (=> b!670855 (= res!437713 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670856 () Bool)

(declare-fun res!437721 () Bool)

(assert (=> b!670856 (=> (not res!437721) (not e!383489))))

(assert (=> b!670856 (= res!437721 (not (contains!3401 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60148 res!437719) b!670845))

(assert (= (and b!670845 res!437716) b!670854))

(assert (= (and b!670854 res!437723) b!670856))

(assert (= (and b!670856 res!437721) b!670846))

(assert (= (and b!670846 res!437718) b!670849))

(assert (= (and b!670846 (not res!437715)) b!670842))

(assert (= (and b!670842 res!437726) b!670844))

(assert (= (and b!670846 res!437717) b!670848))

(assert (= (and b!670848 res!437711) b!670841))

(assert (= (and b!670841 res!437712) b!670850))

(assert (= (and b!670850 res!437725) b!670843))

(assert (= (and b!670843 res!437714) b!670855))

(assert (= (and b!670855 res!437713) b!670853))

(assert (= (and b!670853 res!437724) b!670851))

(assert (= (and b!670851 res!437720) b!670847))

(assert (= (and b!670847 res!437722) b!670852))

(declare-fun m!640587 () Bool)

(assert (=> b!670847 m!640587))

(declare-fun m!640589 () Bool)

(assert (=> b!670843 m!640589))

(assert (=> b!670851 m!640587))

(assert (=> b!670851 m!640587))

(declare-fun m!640591 () Bool)

(assert (=> b!670851 m!640591))

(declare-fun m!640593 () Bool)

(assert (=> start!60148 m!640593))

(declare-fun m!640595 () Bool)

(assert (=> b!670844 m!640595))

(declare-fun m!640597 () Bool)

(assert (=> b!670854 m!640597))

(declare-fun m!640599 () Bool)

(assert (=> b!670855 m!640599))

(declare-fun m!640601 () Bool)

(assert (=> b!670841 m!640601))

(declare-fun m!640603 () Bool)

(assert (=> b!670845 m!640603))

(assert (=> b!670849 m!640595))

(declare-fun m!640605 () Bool)

(assert (=> b!670852 m!640605))

(declare-fun m!640607 () Bool)

(assert (=> b!670848 m!640607))

(declare-fun m!640609 () Bool)

(assert (=> b!670856 m!640609))

(push 1)

(assert (not b!670855))

(assert (not b!670856))

(assert (not b!670851))

(assert (not b!670849))

(assert (not b!670845))

(assert (not b!670843))

(assert (not b!670844))

(assert (not b!670841))

(assert (not start!60148))

(assert (not b!670852))

(assert (not b!670854))

(assert (not b!670848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

