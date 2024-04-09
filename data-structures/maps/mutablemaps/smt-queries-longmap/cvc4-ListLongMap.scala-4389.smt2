; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60382 () Bool)

(assert start!60382)

(declare-fun b!678188 () Bool)

(declare-fun res!444774 () Bool)

(declare-fun e!386470 () Bool)

(assert (=> b!678188 (=> (not res!444774) (not e!386470))))

(declare-datatypes ((List!12975 0))(
  ( (Nil!12972) (Cons!12971 (h!14016 (_ BitVec 64)) (t!19211 List!12975)) )
))
(declare-fun acc!681 () List!12975)

(declare-fun noDuplicate!765 (List!12975) Bool)

(assert (=> b!678188 (= res!444774 (noDuplicate!765 acc!681))))

(declare-fun b!678190 () Bool)

(declare-fun e!386466 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3518 (List!12975 (_ BitVec 64)) Bool)

(assert (=> b!678190 (= e!386466 (not (contains!3518 acc!681 k!2843)))))

(declare-fun b!678191 () Bool)

(declare-datatypes ((array!39385 0))(
  ( (array!39386 (arr!18881 (Array (_ BitVec 32) (_ BitVec 64))) (size!19245 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39385)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678191 (= e!386470 (bvslt (bvsub (size!19245 a!3626) from!3004) #b00000000000000000000000000000000))))

(declare-fun b!678192 () Bool)

(declare-fun res!444782 () Bool)

(assert (=> b!678192 (=> (not res!444782) (not e!386470))))

(assert (=> b!678192 (= res!444782 (not (contains!3518 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678193 () Bool)

(declare-fun res!444778 () Bool)

(assert (=> b!678193 (=> (not res!444778) (not e!386470))))

(declare-fun arrayContainsKey!0 (array!39385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678193 (= res!444778 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678194 () Bool)

(declare-fun res!444776 () Bool)

(assert (=> b!678194 (=> (not res!444776) (not e!386470))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678194 (= res!444776 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19245 a!3626))))))

(declare-fun b!678195 () Bool)

(declare-fun res!444780 () Bool)

(assert (=> b!678195 (=> (not res!444780) (not e!386470))))

(declare-fun arrayNoDuplicates!0 (array!39385 (_ BitVec 32) List!12975) Bool)

(assert (=> b!678195 (= res!444780 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678196 () Bool)

(declare-fun res!444779 () Bool)

(assert (=> b!678196 (=> (not res!444779) (not e!386470))))

(assert (=> b!678196 (= res!444779 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12972))))

(declare-fun b!678197 () Bool)

(declare-fun res!444775 () Bool)

(assert (=> b!678197 (=> (not res!444775) (not e!386470))))

(declare-fun e!386467 () Bool)

(assert (=> b!678197 (= res!444775 e!386467)))

(declare-fun res!444772 () Bool)

(assert (=> b!678197 (=> res!444772 e!386467)))

(declare-fun e!386468 () Bool)

(assert (=> b!678197 (= res!444772 e!386468)))

(declare-fun res!444773 () Bool)

(assert (=> b!678197 (=> (not res!444773) (not e!386468))))

(assert (=> b!678197 (= res!444773 (bvsgt from!3004 i!1382))))

(declare-fun b!678198 () Bool)

(declare-fun res!444771 () Bool)

(assert (=> b!678198 (=> (not res!444771) (not e!386470))))

(assert (=> b!678198 (= res!444771 (not (contains!3518 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678189 () Bool)

(assert (=> b!678189 (= e!386468 (contains!3518 acc!681 k!2843))))

(declare-fun res!444770 () Bool)

(assert (=> start!60382 (=> (not res!444770) (not e!386470))))

(assert (=> start!60382 (= res!444770 (and (bvslt (size!19245 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19245 a!3626))))))

(assert (=> start!60382 e!386470))

(assert (=> start!60382 true))

(declare-fun array_inv!14655 (array!39385) Bool)

(assert (=> start!60382 (array_inv!14655 a!3626)))

(declare-fun b!678199 () Bool)

(declare-fun res!444777 () Bool)

(assert (=> b!678199 (=> (not res!444777) (not e!386470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678199 (= res!444777 (validKeyInArray!0 k!2843))))

(declare-fun b!678200 () Bool)

(assert (=> b!678200 (= e!386467 e!386466)))

(declare-fun res!444781 () Bool)

(assert (=> b!678200 (=> (not res!444781) (not e!386466))))

(assert (=> b!678200 (= res!444781 (bvsle from!3004 i!1382))))

(assert (= (and start!60382 res!444770) b!678188))

(assert (= (and b!678188 res!444774) b!678198))

(assert (= (and b!678198 res!444771) b!678192))

(assert (= (and b!678192 res!444782) b!678197))

(assert (= (and b!678197 res!444773) b!678189))

(assert (= (and b!678197 (not res!444772)) b!678200))

(assert (= (and b!678200 res!444781) b!678190))

(assert (= (and b!678197 res!444775) b!678196))

(assert (= (and b!678196 res!444779) b!678195))

(assert (= (and b!678195 res!444780) b!678194))

(assert (= (and b!678194 res!444776) b!678199))

(assert (= (and b!678199 res!444777) b!678193))

(assert (= (and b!678193 res!444778) b!678191))

(declare-fun m!644055 () Bool)

(assert (=> b!678190 m!644055))

(declare-fun m!644057 () Bool)

(assert (=> b!678193 m!644057))

(assert (=> b!678189 m!644055))

(declare-fun m!644059 () Bool)

(assert (=> b!678195 m!644059))

(declare-fun m!644061 () Bool)

(assert (=> start!60382 m!644061))

(declare-fun m!644063 () Bool)

(assert (=> b!678196 m!644063))

(declare-fun m!644065 () Bool)

(assert (=> b!678199 m!644065))

(declare-fun m!644067 () Bool)

(assert (=> b!678192 m!644067))

(declare-fun m!644069 () Bool)

(assert (=> b!678188 m!644069))

(declare-fun m!644071 () Bool)

(assert (=> b!678198 m!644071))

(push 1)

(assert (not b!678198))

(assert (not b!678196))

(assert (not b!678193))

(assert (not b!678189))

(assert (not start!60382))

(assert (not b!678190))

(assert (not b!678188))

(assert (not b!678195))

(assert (not b!678192))

(assert (not b!678199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

