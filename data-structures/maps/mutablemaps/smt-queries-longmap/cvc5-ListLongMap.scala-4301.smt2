; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59850 () Bool)

(assert start!59850)

(declare-fun b!661039 () Bool)

(declare-fun res!429282 () Bool)

(declare-fun e!379761 () Bool)

(assert (=> b!661039 (=> (not res!429282) (not e!379761))))

(declare-fun e!379758 () Bool)

(assert (=> b!661039 (= res!429282 e!379758)))

(declare-fun res!429285 () Bool)

(assert (=> b!661039 (=> res!429285 e!379758)))

(declare-fun e!379759 () Bool)

(assert (=> b!661039 (= res!429285 e!379759)))

(declare-fun res!429280 () Bool)

(assert (=> b!661039 (=> (not res!429280) (not e!379759))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661039 (= res!429280 (bvsgt from!3004 i!1382))))

(declare-fun b!661040 () Bool)

(declare-fun e!379760 () Bool)

(assert (=> b!661040 (= e!379758 e!379760)))

(declare-fun res!429287 () Bool)

(assert (=> b!661040 (=> (not res!429287) (not e!379760))))

(assert (=> b!661040 (= res!429287 (bvsle from!3004 i!1382))))

(declare-fun b!661041 () Bool)

(declare-fun res!429279 () Bool)

(assert (=> b!661041 (=> (not res!429279) (not e!379761))))

(declare-datatypes ((array!38853 0))(
  ( (array!38854 (arr!18615 (Array (_ BitVec 32) (_ BitVec 64))) (size!18979 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38853)

(assert (=> b!661041 (= res!429279 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18979 a!3626))))))

(declare-fun res!429288 () Bool)

(assert (=> start!59850 (=> (not res!429288) (not e!379761))))

(assert (=> start!59850 (= res!429288 (and (bvslt (size!18979 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18979 a!3626))))))

(assert (=> start!59850 e!379761))

(assert (=> start!59850 true))

(declare-fun array_inv!14389 (array!38853) Bool)

(assert (=> start!59850 (array_inv!14389 a!3626)))

(declare-fun b!661042 () Bool)

(declare-fun res!429289 () Bool)

(assert (=> b!661042 (=> (not res!429289) (not e!379761))))

(declare-datatypes ((List!12709 0))(
  ( (Nil!12706) (Cons!12705 (h!13750 (_ BitVec 64)) (t!18945 List!12709)) )
))
(declare-fun acc!681 () List!12709)

(declare-fun arrayNoDuplicates!0 (array!38853 (_ BitVec 32) List!12709) Bool)

(assert (=> b!661042 (= res!429289 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661043 () Bool)

(declare-fun res!429277 () Bool)

(assert (=> b!661043 (=> (not res!429277) (not e!379761))))

(declare-fun contains!3252 (List!12709 (_ BitVec 64)) Bool)

(assert (=> b!661043 (= res!429277 (not (contains!3252 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661044 () Bool)

(assert (=> b!661044 (= e!379761 (not true))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661044 (arrayContainsKey!0 (array!38854 (store (arr!18615 a!3626) i!1382 k!2843) (size!18979 a!3626)) k!2843 from!3004)))

(declare-fun b!661045 () Bool)

(declare-fun res!429290 () Bool)

(assert (=> b!661045 (=> (not res!429290) (not e!379761))))

(declare-fun noDuplicate!499 (List!12709) Bool)

(assert (=> b!661045 (= res!429290 (noDuplicate!499 acc!681))))

(declare-fun b!661046 () Bool)

(declare-fun res!429281 () Bool)

(assert (=> b!661046 (=> (not res!429281) (not e!379761))))

(assert (=> b!661046 (= res!429281 (not (contains!3252 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661047 () Bool)

(declare-fun res!429283 () Bool)

(assert (=> b!661047 (=> (not res!429283) (not e!379761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661047 (= res!429283 (validKeyInArray!0 k!2843))))

(declare-fun b!661048 () Bool)

(declare-fun res!429284 () Bool)

(assert (=> b!661048 (=> (not res!429284) (not e!379761))))

(assert (=> b!661048 (= res!429284 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12706))))

(declare-fun b!661049 () Bool)

(declare-fun res!429278 () Bool)

(assert (=> b!661049 (=> (not res!429278) (not e!379761))))

(assert (=> b!661049 (= res!429278 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18979 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661050 () Bool)

(declare-fun res!429286 () Bool)

(assert (=> b!661050 (=> (not res!429286) (not e!379761))))

(assert (=> b!661050 (= res!429286 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661051 () Bool)

(assert (=> b!661051 (= e!379760 (not (contains!3252 acc!681 k!2843)))))

(declare-fun b!661052 () Bool)

(assert (=> b!661052 (= e!379759 (contains!3252 acc!681 k!2843))))

(assert (= (and start!59850 res!429288) b!661045))

(assert (= (and b!661045 res!429290) b!661046))

(assert (= (and b!661046 res!429281) b!661043))

(assert (= (and b!661043 res!429277) b!661039))

(assert (= (and b!661039 res!429280) b!661052))

(assert (= (and b!661039 (not res!429285)) b!661040))

(assert (= (and b!661040 res!429287) b!661051))

(assert (= (and b!661039 res!429282) b!661048))

(assert (= (and b!661048 res!429284) b!661042))

(assert (= (and b!661042 res!429289) b!661041))

(assert (= (and b!661041 res!429279) b!661047))

(assert (= (and b!661047 res!429283) b!661050))

(assert (= (and b!661050 res!429286) b!661049))

(assert (= (and b!661049 res!429278) b!661044))

(declare-fun m!633387 () Bool)

(assert (=> b!661042 m!633387))

(declare-fun m!633389 () Bool)

(assert (=> b!661046 m!633389))

(declare-fun m!633391 () Bool)

(assert (=> b!661050 m!633391))

(declare-fun m!633393 () Bool)

(assert (=> b!661051 m!633393))

(declare-fun m!633395 () Bool)

(assert (=> start!59850 m!633395))

(declare-fun m!633397 () Bool)

(assert (=> b!661045 m!633397))

(declare-fun m!633399 () Bool)

(assert (=> b!661043 m!633399))

(declare-fun m!633401 () Bool)

(assert (=> b!661047 m!633401))

(assert (=> b!661052 m!633393))

(declare-fun m!633403 () Bool)

(assert (=> b!661048 m!633403))

(declare-fun m!633405 () Bool)

(assert (=> b!661044 m!633405))

(declare-fun m!633407 () Bool)

(assert (=> b!661044 m!633407))

(push 1)

(assert (not b!661050))

(assert (not start!59850))

(assert (not b!661048))

(assert (not b!661042))

(assert (not b!661043))

(assert (not b!661046))

(assert (not b!661045))

(assert (not b!661051))

(assert (not b!661052))

(assert (not b!661044))

(assert (not b!661047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

