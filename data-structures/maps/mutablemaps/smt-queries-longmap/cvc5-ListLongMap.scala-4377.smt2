; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60306 () Bool)

(assert start!60306)

(declare-fun b!676315 () Bool)

(declare-fun res!442915 () Bool)

(declare-fun e!385706 () Bool)

(assert (=> b!676315 (=> (not res!442915) (not e!385706))))

(declare-datatypes ((array!39309 0))(
  ( (array!39310 (arr!18843 (Array (_ BitVec 32) (_ BitVec 64))) (size!19207 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39309)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676315 (= res!442915 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676316 () Bool)

(declare-fun res!442917 () Bool)

(assert (=> b!676316 (=> (not res!442917) (not e!385706))))

(declare-fun e!385709 () Bool)

(assert (=> b!676316 (= res!442917 e!385709)))

(declare-fun res!442924 () Bool)

(assert (=> b!676316 (=> res!442924 e!385709)))

(declare-fun e!385705 () Bool)

(assert (=> b!676316 (= res!442924 e!385705)))

(declare-fun res!442933 () Bool)

(assert (=> b!676316 (=> (not res!442933) (not e!385705))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676316 (= res!442933 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676318 () Bool)

(declare-fun res!442921 () Bool)

(assert (=> b!676318 (=> (not res!442921) (not e!385706))))

(declare-datatypes ((List!12937 0))(
  ( (Nil!12934) (Cons!12933 (h!13978 (_ BitVec 64)) (t!19173 List!12937)) )
))
(declare-fun acc!681 () List!12937)

(declare-fun arrayNoDuplicates!0 (array!39309 (_ BitVec 32) List!12937) Bool)

(assert (=> b!676318 (= res!442921 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676319 () Bool)

(declare-fun res!442920 () Bool)

(assert (=> b!676319 (=> (not res!442920) (not e!385706))))

(assert (=> b!676319 (= res!442920 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19207 a!3626))))))

(declare-fun b!676320 () Bool)

(declare-fun res!442932 () Bool)

(assert (=> b!676320 (=> (not res!442932) (not e!385706))))

(assert (=> b!676320 (= res!442932 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19207 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676321 () Bool)

(declare-fun e!385707 () Bool)

(assert (=> b!676321 (= e!385709 e!385707)))

(declare-fun res!442918 () Bool)

(assert (=> b!676321 (=> (not res!442918) (not e!385707))))

(assert (=> b!676321 (= res!442918 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676322 () Bool)

(declare-fun res!442916 () Bool)

(assert (=> b!676322 (=> (not res!442916) (not e!385706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676322 (= res!442916 (not (validKeyInArray!0 (select (arr!18843 a!3626) from!3004))))))

(declare-fun b!676323 () Bool)

(declare-fun res!442926 () Bool)

(assert (=> b!676323 (=> (not res!442926) (not e!385706))))

(declare-fun contains!3480 (List!12937 (_ BitVec 64)) Bool)

(assert (=> b!676323 (= res!442926 (not (contains!3480 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676324 () Bool)

(declare-fun e!385711 () Bool)

(assert (=> b!676324 (= e!385711 (contains!3480 acc!681 k!2843))))

(declare-fun b!676325 () Bool)

(declare-fun res!442931 () Bool)

(assert (=> b!676325 (=> (not res!442931) (not e!385706))))

(assert (=> b!676325 (= res!442931 (validKeyInArray!0 k!2843))))

(declare-fun b!676326 () Bool)

(assert (=> b!676326 (= e!385706 false)))

(declare-fun lt!312720 () Bool)

(assert (=> b!676326 (= lt!312720 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun res!442927 () Bool)

(assert (=> start!60306 (=> (not res!442927) (not e!385706))))

(assert (=> start!60306 (= res!442927 (and (bvslt (size!19207 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19207 a!3626))))))

(assert (=> start!60306 e!385706))

(assert (=> start!60306 true))

(declare-fun array_inv!14617 (array!39309) Bool)

(assert (=> start!60306 (array_inv!14617 a!3626)))

(declare-fun b!676317 () Bool)

(declare-fun res!442934 () Bool)

(assert (=> b!676317 (=> (not res!442934) (not e!385706))))

(assert (=> b!676317 (= res!442934 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12934))))

(declare-fun b!676327 () Bool)

(declare-fun e!385710 () Bool)

(declare-fun e!385708 () Bool)

(assert (=> b!676327 (= e!385710 e!385708)))

(declare-fun res!442928 () Bool)

(assert (=> b!676327 (=> (not res!442928) (not e!385708))))

(assert (=> b!676327 (= res!442928 (bvsle from!3004 i!1382))))

(declare-fun b!676328 () Bool)

(declare-fun res!442925 () Bool)

(assert (=> b!676328 (=> (not res!442925) (not e!385706))))

(assert (=> b!676328 (= res!442925 e!385710)))

(declare-fun res!442929 () Bool)

(assert (=> b!676328 (=> res!442929 e!385710)))

(assert (=> b!676328 (= res!442929 e!385711)))

(declare-fun res!442930 () Bool)

(assert (=> b!676328 (=> (not res!442930) (not e!385711))))

(assert (=> b!676328 (= res!442930 (bvsgt from!3004 i!1382))))

(declare-fun b!676329 () Bool)

(assert (=> b!676329 (= e!385705 (contains!3480 acc!681 k!2843))))

(declare-fun b!676330 () Bool)

(assert (=> b!676330 (= e!385707 (not (contains!3480 acc!681 k!2843)))))

(declare-fun b!676331 () Bool)

(declare-fun res!442922 () Bool)

(assert (=> b!676331 (=> (not res!442922) (not e!385706))))

(assert (=> b!676331 (= res!442922 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676332 () Bool)

(declare-fun res!442919 () Bool)

(assert (=> b!676332 (=> (not res!442919) (not e!385706))))

(assert (=> b!676332 (= res!442919 (not (contains!3480 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676333 () Bool)

(assert (=> b!676333 (= e!385708 (not (contains!3480 acc!681 k!2843)))))

(declare-fun b!676334 () Bool)

(declare-fun res!442923 () Bool)

(assert (=> b!676334 (=> (not res!442923) (not e!385706))))

(declare-fun noDuplicate!727 (List!12937) Bool)

(assert (=> b!676334 (= res!442923 (noDuplicate!727 acc!681))))

(assert (= (and start!60306 res!442927) b!676334))

(assert (= (and b!676334 res!442923) b!676332))

(assert (= (and b!676332 res!442919) b!676323))

(assert (= (and b!676323 res!442926) b!676328))

(assert (= (and b!676328 res!442930) b!676324))

(assert (= (and b!676328 (not res!442929)) b!676327))

(assert (= (and b!676327 res!442928) b!676333))

(assert (= (and b!676328 res!442925) b!676317))

(assert (= (and b!676317 res!442934) b!676318))

(assert (= (and b!676318 res!442921) b!676319))

(assert (= (and b!676319 res!442920) b!676325))

(assert (= (and b!676325 res!442931) b!676315))

(assert (= (and b!676315 res!442915) b!676320))

(assert (= (and b!676320 res!442932) b!676322))

(assert (= (and b!676322 res!442916) b!676331))

(assert (= (and b!676331 res!442922) b!676316))

(assert (= (and b!676316 res!442933) b!676329))

(assert (= (and b!676316 (not res!442924)) b!676321))

(assert (= (and b!676321 res!442918) b!676330))

(assert (= (and b!676316 res!442917) b!676326))

(declare-fun m!643185 () Bool)

(assert (=> b!676315 m!643185))

(declare-fun m!643187 () Bool)

(assert (=> b!676333 m!643187))

(declare-fun m!643189 () Bool)

(assert (=> b!676322 m!643189))

(assert (=> b!676322 m!643189))

(declare-fun m!643191 () Bool)

(assert (=> b!676322 m!643191))

(declare-fun m!643193 () Bool)

(assert (=> b!676332 m!643193))

(declare-fun m!643195 () Bool)

(assert (=> b!676326 m!643195))

(declare-fun m!643197 () Bool)

(assert (=> b!676323 m!643197))

(declare-fun m!643199 () Bool)

(assert (=> b!676317 m!643199))

(assert (=> b!676324 m!643187))

(declare-fun m!643201 () Bool)

(assert (=> b!676334 m!643201))

(declare-fun m!643203 () Bool)

(assert (=> b!676318 m!643203))

(assert (=> b!676330 m!643187))

(declare-fun m!643205 () Bool)

(assert (=> start!60306 m!643205))

(assert (=> b!676329 m!643187))

(declare-fun m!643207 () Bool)

(assert (=> b!676325 m!643207))

(push 1)

(assert (not b!676325))

(assert (not b!676323))

(assert (not b!676318))

(assert (not b!676329))

(assert (not b!676333))

(assert (not b!676324))

(assert (not start!60306))

(assert (not b!676326))

(assert (not b!676315))

(assert (not b!676332))

(assert (not b!676334))

(assert (not b!676322))

(assert (not b!676330))

(assert (not b!676317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

