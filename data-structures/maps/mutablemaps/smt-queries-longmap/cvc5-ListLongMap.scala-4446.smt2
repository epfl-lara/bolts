; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61794 () Bool)

(assert start!61794)

(declare-fun b!691258 () Bool)

(declare-datatypes ((Unit!24370 0))(
  ( (Unit!24371) )
))
(declare-fun e!393405 () Unit!24370)

(declare-fun Unit!24372 () Unit!24370)

(assert (=> b!691258 (= e!393405 Unit!24372)))

(declare-fun b!691259 () Bool)

(declare-fun res!455790 () Bool)

(declare-fun e!393404 () Bool)

(assert (=> b!691259 (=> (not res!455790) (not e!393404))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39771 0))(
  ( (array!39772 (arr!19050 (Array (_ BitVec 32) (_ BitVec 64))) (size!19433 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39771)

(assert (=> b!691259 (= res!455790 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19433 a!3626))))))

(declare-fun b!691261 () Bool)

(declare-fun res!455802 () Bool)

(assert (=> b!691261 (=> (not res!455802) (not e!393404))))

(declare-fun e!393408 () Bool)

(assert (=> b!691261 (= res!455802 e!393408)))

(declare-fun res!455804 () Bool)

(assert (=> b!691261 (=> res!455804 e!393408)))

(declare-fun e!393406 () Bool)

(assert (=> b!691261 (= res!455804 e!393406)))

(declare-fun res!455796 () Bool)

(assert (=> b!691261 (=> (not res!455796) (not e!393406))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691261 (= res!455796 (bvsgt from!3004 i!1382))))

(declare-fun b!691262 () Bool)

(declare-fun res!455799 () Bool)

(assert (=> b!691262 (=> (not res!455799) (not e!393404))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691262 (= res!455799 (validKeyInArray!0 k!2843))))

(declare-fun b!691263 () Bool)

(declare-fun res!455795 () Bool)

(assert (=> b!691263 (=> (not res!455795) (not e!393404))))

(declare-datatypes ((List!13144 0))(
  ( (Nil!13141) (Cons!13140 (h!14185 (_ BitVec 64)) (t!19419 List!13144)) )
))
(declare-fun acc!681 () List!13144)

(declare-fun contains!3687 (List!13144 (_ BitVec 64)) Bool)

(assert (=> b!691263 (= res!455795 (not (contains!3687 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691264 () Bool)

(declare-fun res!455797 () Bool)

(assert (=> b!691264 (=> (not res!455797) (not e!393404))))

(declare-fun arrayNoDuplicates!0 (array!39771 (_ BitVec 32) List!13144) Bool)

(assert (=> b!691264 (= res!455797 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691265 () Bool)

(declare-fun Unit!24373 () Unit!24370)

(assert (=> b!691265 (= e!393405 Unit!24373)))

(declare-fun arrayContainsKey!0 (array!39771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691265 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316409 () Unit!24370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39771 (_ BitVec 64) (_ BitVec 32)) Unit!24370)

(assert (=> b!691265 (= lt!316409 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691265 false))

(declare-fun b!691260 () Bool)

(declare-fun e!393409 () Bool)

(assert (=> b!691260 (= e!393408 e!393409)))

(declare-fun res!455800 () Bool)

(assert (=> b!691260 (=> (not res!455800) (not e!393409))))

(assert (=> b!691260 (= res!455800 (bvsle from!3004 i!1382))))

(declare-fun res!455801 () Bool)

(assert (=> start!61794 (=> (not res!455801) (not e!393404))))

(assert (=> start!61794 (= res!455801 (and (bvslt (size!19433 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19433 a!3626))))))

(assert (=> start!61794 e!393404))

(assert (=> start!61794 true))

(declare-fun array_inv!14824 (array!39771) Bool)

(assert (=> start!61794 (array_inv!14824 a!3626)))

(declare-fun b!691266 () Bool)

(declare-fun res!455803 () Bool)

(assert (=> b!691266 (=> (not res!455803) (not e!393404))))

(assert (=> b!691266 (= res!455803 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691267 () Bool)

(declare-fun res!455794 () Bool)

(assert (=> b!691267 (=> (not res!455794) (not e!393404))))

(assert (=> b!691267 (= res!455794 (validKeyInArray!0 (select (arr!19050 a!3626) from!3004)))))

(declare-fun b!691268 () Bool)

(declare-fun res!455798 () Bool)

(assert (=> b!691268 (=> (not res!455798) (not e!393404))))

(assert (=> b!691268 (= res!455798 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13141))))

(declare-fun b!691269 () Bool)

(declare-fun res!455791 () Bool)

(assert (=> b!691269 (=> (not res!455791) (not e!393404))))

(assert (=> b!691269 (= res!455791 (not (contains!3687 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691270 () Bool)

(assert (=> b!691270 (= e!393406 (contains!3687 acc!681 k!2843))))

(declare-fun b!691271 () Bool)

(declare-fun res!455793 () Bool)

(assert (=> b!691271 (=> (not res!455793) (not e!393404))))

(assert (=> b!691271 (= res!455793 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19433 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691272 () Bool)

(declare-fun res!455792 () Bool)

(assert (=> b!691272 (=> (not res!455792) (not e!393404))))

(declare-fun noDuplicate!934 (List!13144) Bool)

(assert (=> b!691272 (= res!455792 (noDuplicate!934 acc!681))))

(declare-fun b!691273 () Bool)

(assert (=> b!691273 (= e!393404 false)))

(declare-fun lt!316410 () Unit!24370)

(assert (=> b!691273 (= lt!316410 e!393405)))

(declare-fun c!78101 () Bool)

(assert (=> b!691273 (= c!78101 (= (select (arr!19050 a!3626) from!3004) k!2843))))

(declare-fun b!691274 () Bool)

(assert (=> b!691274 (= e!393409 (not (contains!3687 acc!681 k!2843)))))

(assert (= (and start!61794 res!455801) b!691272))

(assert (= (and b!691272 res!455792) b!691263))

(assert (= (and b!691263 res!455795) b!691269))

(assert (= (and b!691269 res!455791) b!691261))

(assert (= (and b!691261 res!455796) b!691270))

(assert (= (and b!691261 (not res!455804)) b!691260))

(assert (= (and b!691260 res!455800) b!691274))

(assert (= (and b!691261 res!455802) b!691268))

(assert (= (and b!691268 res!455798) b!691264))

(assert (= (and b!691264 res!455797) b!691259))

(assert (= (and b!691259 res!455790) b!691262))

(assert (= (and b!691262 res!455799) b!691266))

(assert (= (and b!691266 res!455803) b!691271))

(assert (= (and b!691271 res!455793) b!691267))

(assert (= (and b!691267 res!455794) b!691273))

(assert (= (and b!691273 c!78101) b!691265))

(assert (= (and b!691273 (not c!78101)) b!691258))

(declare-fun m!654339 () Bool)

(assert (=> b!691267 m!654339))

(assert (=> b!691267 m!654339))

(declare-fun m!654341 () Bool)

(assert (=> b!691267 m!654341))

(declare-fun m!654343 () Bool)

(assert (=> b!691262 m!654343))

(declare-fun m!654345 () Bool)

(assert (=> b!691270 m!654345))

(declare-fun m!654347 () Bool)

(assert (=> b!691263 m!654347))

(declare-fun m!654349 () Bool)

(assert (=> b!691272 m!654349))

(assert (=> b!691273 m!654339))

(assert (=> b!691274 m!654345))

(declare-fun m!654351 () Bool)

(assert (=> b!691269 m!654351))

(declare-fun m!654353 () Bool)

(assert (=> b!691266 m!654353))

(declare-fun m!654355 () Bool)

(assert (=> start!61794 m!654355))

(declare-fun m!654357 () Bool)

(assert (=> b!691264 m!654357))

(declare-fun m!654359 () Bool)

(assert (=> b!691265 m!654359))

(declare-fun m!654361 () Bool)

(assert (=> b!691265 m!654361))

(declare-fun m!654363 () Bool)

(assert (=> b!691268 m!654363))

(push 1)

(assert (not b!691266))

(assert (not b!691272))

(assert (not b!691267))

(assert (not b!691270))

(assert (not b!691264))

(assert (not b!691269))

(assert (not b!691262))

(assert (not b!691268))

(assert (not b!691274))

(assert (not b!691263))

(assert (not b!691265))

(assert (not start!61794))

(check-sat)

(pop 1)

