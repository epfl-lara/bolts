; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60270 () Bool)

(assert start!60270)

(declare-fun b!675235 () Bool)

(declare-fun res!441844 () Bool)

(declare-fun e!385273 () Bool)

(assert (=> b!675235 (=> (not res!441844) (not e!385273))))

(declare-datatypes ((array!39273 0))(
  ( (array!39274 (arr!18825 (Array (_ BitVec 32) (_ BitVec 64))) (size!19189 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39273)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675235 (= res!441844 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675236 () Bool)

(declare-fun res!441842 () Bool)

(assert (=> b!675236 (=> (not res!441842) (not e!385273))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12919 0))(
  ( (Nil!12916) (Cons!12915 (h!13960 (_ BitVec 64)) (t!19155 List!12919)) )
))
(declare-fun acc!681 () List!12919)

(declare-fun arrayNoDuplicates!0 (array!39273 (_ BitVec 32) List!12919) Bool)

(assert (=> b!675236 (= res!441842 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675237 () Bool)

(declare-fun res!441847 () Bool)

(assert (=> b!675237 (=> (not res!441847) (not e!385273))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675237 (= res!441847 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19189 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675238 () Bool)

(declare-fun res!441839 () Bool)

(assert (=> b!675238 (=> (not res!441839) (not e!385273))))

(declare-fun contains!3462 (List!12919 (_ BitVec 64)) Bool)

(assert (=> b!675238 (= res!441839 (not (contains!3462 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675239 () Bool)

(declare-fun res!441835 () Bool)

(assert (=> b!675239 (=> (not res!441835) (not e!385273))))

(assert (=> b!675239 (= res!441835 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675240 () Bool)

(declare-fun res!441837 () Bool)

(assert (=> b!675240 (=> (not res!441837) (not e!385273))))

(assert (=> b!675240 (= res!441837 (not (contains!3462 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675241 () Bool)

(declare-fun res!441848 () Bool)

(assert (=> b!675241 (=> (not res!441848) (not e!385273))))

(declare-fun e!385276 () Bool)

(assert (=> b!675241 (= res!441848 e!385276)))

(declare-fun res!441840 () Bool)

(assert (=> b!675241 (=> res!441840 e!385276)))

(declare-fun e!385275 () Bool)

(assert (=> b!675241 (= res!441840 e!385275)))

(declare-fun res!441838 () Bool)

(assert (=> b!675241 (=> (not res!441838) (not e!385275))))

(assert (=> b!675241 (= res!441838 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675242 () Bool)

(declare-fun e!385272 () Bool)

(assert (=> b!675242 (= e!385276 e!385272)))

(declare-fun res!441851 () Bool)

(assert (=> b!675242 (=> (not res!441851) (not e!385272))))

(assert (=> b!675242 (= res!441851 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675243 () Bool)

(declare-fun res!441849 () Bool)

(assert (=> b!675243 (=> (not res!441849) (not e!385273))))

(declare-fun e!385279 () Bool)

(assert (=> b!675243 (= res!441849 e!385279)))

(declare-fun res!441850 () Bool)

(assert (=> b!675243 (=> res!441850 e!385279)))

(declare-fun e!385274 () Bool)

(assert (=> b!675243 (= res!441850 e!385274)))

(declare-fun res!441836 () Bool)

(assert (=> b!675243 (=> (not res!441836) (not e!385274))))

(assert (=> b!675243 (= res!441836 (bvsgt from!3004 i!1382))))

(declare-fun b!675244 () Bool)

(declare-fun e!385277 () Bool)

(assert (=> b!675244 (= e!385279 e!385277)))

(declare-fun res!441854 () Bool)

(assert (=> b!675244 (=> (not res!441854) (not e!385277))))

(assert (=> b!675244 (= res!441854 (bvsle from!3004 i!1382))))

(declare-fun b!675245 () Bool)

(assert (=> b!675245 (= e!385272 (not (contains!3462 acc!681 k!2843)))))

(declare-fun b!675246 () Bool)

(assert (=> b!675246 (= e!385275 (contains!3462 acc!681 k!2843))))

(declare-fun b!675247 () Bool)

(declare-fun res!441843 () Bool)

(assert (=> b!675247 (=> (not res!441843) (not e!385273))))

(declare-fun noDuplicate!709 (List!12919) Bool)

(assert (=> b!675247 (= res!441843 (noDuplicate!709 acc!681))))

(declare-fun b!675248 () Bool)

(declare-fun res!441853 () Bool)

(assert (=> b!675248 (=> (not res!441853) (not e!385273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675248 (= res!441853 (validKeyInArray!0 k!2843))))

(declare-fun b!675249 () Bool)

(declare-fun res!441845 () Bool)

(assert (=> b!675249 (=> (not res!441845) (not e!385273))))

(assert (=> b!675249 (= res!441845 (not (validKeyInArray!0 (select (arr!18825 a!3626) from!3004))))))

(declare-fun b!675250 () Bool)

(declare-fun res!441841 () Bool)

(assert (=> b!675250 (=> (not res!441841) (not e!385273))))

(assert (=> b!675250 (= res!441841 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19189 a!3626))))))

(declare-fun res!441852 () Bool)

(assert (=> start!60270 (=> (not res!441852) (not e!385273))))

(assert (=> start!60270 (= res!441852 (and (bvslt (size!19189 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19189 a!3626))))))

(assert (=> start!60270 e!385273))

(assert (=> start!60270 true))

(declare-fun array_inv!14599 (array!39273) Bool)

(assert (=> start!60270 (array_inv!14599 a!3626)))

(declare-fun b!675251 () Bool)

(declare-fun res!441846 () Bool)

(assert (=> b!675251 (=> (not res!441846) (not e!385273))))

(assert (=> b!675251 (= res!441846 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12916))))

(declare-fun b!675252 () Bool)

(assert (=> b!675252 (= e!385274 (contains!3462 acc!681 k!2843))))

(declare-fun b!675253 () Bool)

(assert (=> b!675253 (= e!385273 false)))

(declare-fun lt!312666 () Bool)

(assert (=> b!675253 (= lt!312666 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675254 () Bool)

(assert (=> b!675254 (= e!385277 (not (contains!3462 acc!681 k!2843)))))

(assert (= (and start!60270 res!441852) b!675247))

(assert (= (and b!675247 res!441843) b!675238))

(assert (= (and b!675238 res!441839) b!675240))

(assert (= (and b!675240 res!441837) b!675243))

(assert (= (and b!675243 res!441836) b!675252))

(assert (= (and b!675243 (not res!441850)) b!675244))

(assert (= (and b!675244 res!441854) b!675254))

(assert (= (and b!675243 res!441849) b!675251))

(assert (= (and b!675251 res!441846) b!675236))

(assert (= (and b!675236 res!441842) b!675250))

(assert (= (and b!675250 res!441841) b!675248))

(assert (= (and b!675248 res!441853) b!675235))

(assert (= (and b!675235 res!441844) b!675237))

(assert (= (and b!675237 res!441847) b!675249))

(assert (= (and b!675249 res!441845) b!675239))

(assert (= (and b!675239 res!441835) b!675241))

(assert (= (and b!675241 res!441838) b!675246))

(assert (= (and b!675241 (not res!441840)) b!675242))

(assert (= (and b!675242 res!441851) b!675245))

(assert (= (and b!675241 res!441848) b!675253))

(declare-fun m!642753 () Bool)

(assert (=> b!675249 m!642753))

(assert (=> b!675249 m!642753))

(declare-fun m!642755 () Bool)

(assert (=> b!675249 m!642755))

(declare-fun m!642757 () Bool)

(assert (=> b!675246 m!642757))

(declare-fun m!642759 () Bool)

(assert (=> b!675247 m!642759))

(declare-fun m!642761 () Bool)

(assert (=> b!675253 m!642761))

(declare-fun m!642763 () Bool)

(assert (=> b!675248 m!642763))

(assert (=> b!675252 m!642757))

(declare-fun m!642765 () Bool)

(assert (=> b!675236 m!642765))

(declare-fun m!642767 () Bool)

(assert (=> b!675240 m!642767))

(declare-fun m!642769 () Bool)

(assert (=> b!675235 m!642769))

(declare-fun m!642771 () Bool)

(assert (=> b!675251 m!642771))

(declare-fun m!642773 () Bool)

(assert (=> b!675238 m!642773))

(assert (=> b!675254 m!642757))

(assert (=> b!675245 m!642757))

(declare-fun m!642775 () Bool)

(assert (=> start!60270 m!642775))

(push 1)

(assert (not b!675251))

(assert (not b!675236))

(assert (not b!675238))

(assert (not start!60270))

(assert (not b!675246))

(assert (not b!675245))

(assert (not b!675252))

(assert (not b!675254))

(assert (not b!675249))

(assert (not b!675247))

(assert (not b!675253))

(assert (not b!675240))

(assert (not b!675235))

(assert (not b!675248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

