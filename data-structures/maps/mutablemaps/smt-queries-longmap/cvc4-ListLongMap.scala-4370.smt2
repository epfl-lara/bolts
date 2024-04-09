; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60268 () Bool)

(assert start!60268)

(declare-fun b!675175 () Bool)

(declare-fun e!385251 () Bool)

(declare-fun e!385252 () Bool)

(assert (=> b!675175 (= e!385251 e!385252)))

(declare-fun res!441785 () Bool)

(assert (=> b!675175 (=> (not res!441785) (not e!385252))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675175 (= res!441785 (bvsle from!3004 i!1382))))

(declare-fun b!675176 () Bool)

(declare-fun res!441789 () Bool)

(declare-fun e!385248 () Bool)

(assert (=> b!675176 (=> (not res!441789) (not e!385248))))

(declare-datatypes ((array!39271 0))(
  ( (array!39272 (arr!18824 (Array (_ BitVec 32) (_ BitVec 64))) (size!19188 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39271)

(assert (=> b!675176 (= res!441789 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19188 a!3626))))))

(declare-fun b!675177 () Bool)

(declare-fun res!441790 () Bool)

(assert (=> b!675177 (=> (not res!441790) (not e!385248))))

(declare-datatypes ((List!12918 0))(
  ( (Nil!12915) (Cons!12914 (h!13959 (_ BitVec 64)) (t!19154 List!12918)) )
))
(declare-fun acc!681 () List!12918)

(declare-fun arrayNoDuplicates!0 (array!39271 (_ BitVec 32) List!12918) Bool)

(assert (=> b!675177 (= res!441790 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675178 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3461 (List!12918 (_ BitVec 64)) Bool)

(assert (=> b!675178 (= e!385252 (not (contains!3461 acc!681 k!2843)))))

(declare-fun b!675179 () Bool)

(declare-fun res!441776 () Bool)

(assert (=> b!675179 (=> (not res!441776) (not e!385248))))

(assert (=> b!675179 (= res!441776 e!385251)))

(declare-fun res!441781 () Bool)

(assert (=> b!675179 (=> res!441781 e!385251)))

(declare-fun e!385254 () Bool)

(assert (=> b!675179 (= res!441781 e!385254)))

(declare-fun res!441794 () Bool)

(assert (=> b!675179 (=> (not res!441794) (not e!385254))))

(assert (=> b!675179 (= res!441794 (bvsgt from!3004 i!1382))))

(declare-fun b!675180 () Bool)

(declare-fun res!441792 () Bool)

(assert (=> b!675180 (=> (not res!441792) (not e!385248))))

(declare-fun arrayContainsKey!0 (array!39271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675180 (= res!441792 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675181 () Bool)

(declare-fun e!385249 () Bool)

(assert (=> b!675181 (= e!385249 (contains!3461 acc!681 k!2843))))

(declare-fun b!675182 () Bool)

(assert (=> b!675182 (= e!385248 false)))

(declare-fun lt!312663 () Bool)

(assert (=> b!675182 (= lt!312663 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675183 () Bool)

(declare-fun res!441777 () Bool)

(assert (=> b!675183 (=> (not res!441777) (not e!385248))))

(assert (=> b!675183 (= res!441777 (not (contains!3461 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675184 () Bool)

(declare-fun res!441778 () Bool)

(assert (=> b!675184 (=> (not res!441778) (not e!385248))))

(assert (=> b!675184 (= res!441778 (not (contains!3461 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675185 () Bool)

(declare-fun res!441779 () Bool)

(assert (=> b!675185 (=> (not res!441779) (not e!385248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675185 (= res!441779 (validKeyInArray!0 k!2843))))

(declare-fun res!441786 () Bool)

(assert (=> start!60268 (=> (not res!441786) (not e!385248))))

(assert (=> start!60268 (= res!441786 (and (bvslt (size!19188 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19188 a!3626))))))

(assert (=> start!60268 e!385248))

(assert (=> start!60268 true))

(declare-fun array_inv!14598 (array!39271) Bool)

(assert (=> start!60268 (array_inv!14598 a!3626)))

(declare-fun b!675186 () Bool)

(declare-fun res!441791 () Bool)

(assert (=> b!675186 (=> (not res!441791) (not e!385248))))

(assert (=> b!675186 (= res!441791 (not (validKeyInArray!0 (select (arr!18824 a!3626) from!3004))))))

(declare-fun b!675187 () Bool)

(declare-fun e!385255 () Bool)

(assert (=> b!675187 (= e!385255 (not (contains!3461 acc!681 k!2843)))))

(declare-fun b!675188 () Bool)

(declare-fun res!441784 () Bool)

(assert (=> b!675188 (=> (not res!441784) (not e!385248))))

(declare-fun e!385250 () Bool)

(assert (=> b!675188 (= res!441784 e!385250)))

(declare-fun res!441775 () Bool)

(assert (=> b!675188 (=> res!441775 e!385250)))

(assert (=> b!675188 (= res!441775 e!385249)))

(declare-fun res!441783 () Bool)

(assert (=> b!675188 (=> (not res!441783) (not e!385249))))

(assert (=> b!675188 (= res!441783 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675189 () Bool)

(declare-fun res!441793 () Bool)

(assert (=> b!675189 (=> (not res!441793) (not e!385248))))

(assert (=> b!675189 (= res!441793 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675190 () Bool)

(declare-fun res!441780 () Bool)

(assert (=> b!675190 (=> (not res!441780) (not e!385248))))

(assert (=> b!675190 (= res!441780 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12915))))

(declare-fun b!675191 () Bool)

(assert (=> b!675191 (= e!385254 (contains!3461 acc!681 k!2843))))

(declare-fun b!675192 () Bool)

(assert (=> b!675192 (= e!385250 e!385255)))

(declare-fun res!441788 () Bool)

(assert (=> b!675192 (=> (not res!441788) (not e!385255))))

(assert (=> b!675192 (= res!441788 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675193 () Bool)

(declare-fun res!441787 () Bool)

(assert (=> b!675193 (=> (not res!441787) (not e!385248))))

(assert (=> b!675193 (= res!441787 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19188 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675194 () Bool)

(declare-fun res!441782 () Bool)

(assert (=> b!675194 (=> (not res!441782) (not e!385248))))

(declare-fun noDuplicate!708 (List!12918) Bool)

(assert (=> b!675194 (= res!441782 (noDuplicate!708 acc!681))))

(assert (= (and start!60268 res!441786) b!675194))

(assert (= (and b!675194 res!441782) b!675183))

(assert (= (and b!675183 res!441777) b!675184))

(assert (= (and b!675184 res!441778) b!675179))

(assert (= (and b!675179 res!441794) b!675191))

(assert (= (and b!675179 (not res!441781)) b!675175))

(assert (= (and b!675175 res!441785) b!675178))

(assert (= (and b!675179 res!441776) b!675190))

(assert (= (and b!675190 res!441780) b!675177))

(assert (= (and b!675177 res!441790) b!675176))

(assert (= (and b!675176 res!441789) b!675185))

(assert (= (and b!675185 res!441779) b!675180))

(assert (= (and b!675180 res!441792) b!675193))

(assert (= (and b!675193 res!441787) b!675186))

(assert (= (and b!675186 res!441791) b!675189))

(assert (= (and b!675189 res!441793) b!675188))

(assert (= (and b!675188 res!441783) b!675181))

(assert (= (and b!675188 (not res!441775)) b!675192))

(assert (= (and b!675192 res!441788) b!675187))

(assert (= (and b!675188 res!441784) b!675182))

(declare-fun m!642729 () Bool)

(assert (=> b!675180 m!642729))

(declare-fun m!642731 () Bool)

(assert (=> b!675181 m!642731))

(declare-fun m!642733 () Bool)

(assert (=> b!675194 m!642733))

(assert (=> b!675178 m!642731))

(declare-fun m!642735 () Bool)

(assert (=> b!675182 m!642735))

(declare-fun m!642737 () Bool)

(assert (=> b!675183 m!642737))

(declare-fun m!642739 () Bool)

(assert (=> b!675184 m!642739))

(declare-fun m!642741 () Bool)

(assert (=> b!675190 m!642741))

(declare-fun m!642743 () Bool)

(assert (=> b!675185 m!642743))

(declare-fun m!642745 () Bool)

(assert (=> start!60268 m!642745))

(declare-fun m!642747 () Bool)

(assert (=> b!675177 m!642747))

(assert (=> b!675187 m!642731))

(assert (=> b!675191 m!642731))

(declare-fun m!642749 () Bool)

(assert (=> b!675186 m!642749))

(assert (=> b!675186 m!642749))

(declare-fun m!642751 () Bool)

(assert (=> b!675186 m!642751))

(push 1)

(assert (not b!675184))

(assert (not b!675182))

(assert (not b!675177))

(assert (not b!675180))

(assert (not b!675178))

(assert (not b!675190))

(assert (not b!675191))

(assert (not b!675185))

(assert (not start!60268))

(assert (not b!675183))

(assert (not b!675186))

