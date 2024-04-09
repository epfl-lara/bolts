; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62508 () Bool)

(assert start!62508)

(declare-fun b!703275 () Bool)

(declare-fun e!397504 () Bool)

(assert (=> b!703275 (= e!397504 false)))

(declare-fun lt!317733 () Bool)

(declare-datatypes ((array!40143 0))(
  ( (array!40144 (arr!19224 (Array (_ BitVec 32) (_ BitVec 64))) (size!19607 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40143)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13318 0))(
  ( (Nil!13315) (Cons!13314 (h!14359 (_ BitVec 64)) (t!19608 List!13318)) )
))
(declare-fun acc!652 () List!13318)

(declare-fun arrayNoDuplicates!0 (array!40143 (_ BitVec 32) List!13318) Bool)

(assert (=> b!703275 (= lt!317733 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703276 () Bool)

(declare-fun res!467268 () Bool)

(assert (=> b!703276 (=> (not res!467268) (not e!397504))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703276 (= res!467268 (validKeyInArray!0 k!2824))))

(declare-fun res!467273 () Bool)

(assert (=> start!62508 (=> (not res!467273) (not e!397504))))

(assert (=> start!62508 (= res!467273 (and (bvslt (size!19607 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19607 a!3591))))))

(assert (=> start!62508 e!397504))

(assert (=> start!62508 true))

(declare-fun array_inv!14998 (array!40143) Bool)

(assert (=> start!62508 (array_inv!14998 a!3591)))

(declare-fun b!703277 () Bool)

(declare-fun res!467265 () Bool)

(assert (=> b!703277 (=> (not res!467265) (not e!397504))))

(declare-fun contains!3861 (List!13318 (_ BitVec 64)) Bool)

(assert (=> b!703277 (= res!467265 (not (contains!3861 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703278 () Bool)

(declare-fun res!467269 () Bool)

(assert (=> b!703278 (=> (not res!467269) (not e!397504))))

(declare-fun arrayContainsKey!0 (array!40143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703278 (= res!467269 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703279 () Bool)

(declare-fun res!467276 () Bool)

(assert (=> b!703279 (=> (not res!467276) (not e!397504))))

(declare-fun newAcc!49 () List!13318)

(assert (=> b!703279 (= res!467276 (not (contains!3861 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703280 () Bool)

(declare-fun res!467270 () Bool)

(assert (=> b!703280 (=> (not res!467270) (not e!397504))))

(assert (=> b!703280 (= res!467270 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703281 () Bool)

(declare-fun res!467272 () Bool)

(assert (=> b!703281 (=> (not res!467272) (not e!397504))))

(assert (=> b!703281 (= res!467272 (contains!3861 newAcc!49 k!2824))))

(declare-fun b!703282 () Bool)

(declare-fun res!467262 () Bool)

(assert (=> b!703282 (=> (not res!467262) (not e!397504))))

(assert (=> b!703282 (= res!467262 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703283 () Bool)

(declare-fun res!467266 () Bool)

(assert (=> b!703283 (=> (not res!467266) (not e!397504))))

(assert (=> b!703283 (= res!467266 (not (contains!3861 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703284 () Bool)

(declare-fun res!467259 () Bool)

(assert (=> b!703284 (=> (not res!467259) (not e!397504))))

(assert (=> b!703284 (= res!467259 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19607 a!3591)))))

(declare-fun b!703285 () Bool)

(declare-fun res!467267 () Bool)

(assert (=> b!703285 (=> (not res!467267) (not e!397504))))

(assert (=> b!703285 (= res!467267 (not (validKeyInArray!0 (select (arr!19224 a!3591) from!2969))))))

(declare-fun b!703286 () Bool)

(declare-fun res!467263 () Bool)

(assert (=> b!703286 (=> (not res!467263) (not e!397504))))

(assert (=> b!703286 (= res!467263 (not (contains!3861 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703287 () Bool)

(declare-fun res!467261 () Bool)

(assert (=> b!703287 (=> (not res!467261) (not e!397504))))

(declare-fun -!270 (List!13318 (_ BitVec 64)) List!13318)

(assert (=> b!703287 (= res!467261 (= (-!270 newAcc!49 k!2824) acc!652))))

(declare-fun b!703288 () Bool)

(declare-fun res!467260 () Bool)

(assert (=> b!703288 (=> (not res!467260) (not e!397504))))

(declare-fun noDuplicate!1108 (List!13318) Bool)

(assert (=> b!703288 (= res!467260 (noDuplicate!1108 newAcc!49))))

(declare-fun b!703289 () Bool)

(declare-fun res!467264 () Bool)

(assert (=> b!703289 (=> (not res!467264) (not e!397504))))

(declare-fun subseq!305 (List!13318 List!13318) Bool)

(assert (=> b!703289 (= res!467264 (subseq!305 acc!652 newAcc!49))))

(declare-fun b!703290 () Bool)

(declare-fun res!467271 () Bool)

(assert (=> b!703290 (=> (not res!467271) (not e!397504))))

(assert (=> b!703290 (= res!467271 (noDuplicate!1108 acc!652))))

(declare-fun b!703291 () Bool)

(declare-fun res!467274 () Bool)

(assert (=> b!703291 (=> (not res!467274) (not e!397504))))

(assert (=> b!703291 (= res!467274 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703292 () Bool)

(declare-fun res!467275 () Bool)

(assert (=> b!703292 (=> (not res!467275) (not e!397504))))

(assert (=> b!703292 (= res!467275 (not (contains!3861 acc!652 k!2824)))))

(assert (= (and start!62508 res!467273) b!703290))

(assert (= (and b!703290 res!467271) b!703288))

(assert (= (and b!703288 res!467260) b!703286))

(assert (= (and b!703286 res!467263) b!703277))

(assert (= (and b!703277 res!467265) b!703280))

(assert (= (and b!703280 res!467270) b!703292))

(assert (= (and b!703292 res!467275) b!703276))

(assert (= (and b!703276 res!467268) b!703291))

(assert (= (and b!703291 res!467274) b!703289))

(assert (= (and b!703289 res!467264) b!703281))

(assert (= (and b!703281 res!467272) b!703287))

(assert (= (and b!703287 res!467261) b!703283))

(assert (= (and b!703283 res!467266) b!703279))

(assert (= (and b!703279 res!467276) b!703284))

(assert (= (and b!703284 res!467259) b!703285))

(assert (= (and b!703285 res!467267) b!703282))

(assert (= (and b!703282 res!467262) b!703278))

(assert (= (and b!703278 res!467269) b!703275))

(declare-fun m!662175 () Bool)

(assert (=> b!703291 m!662175))

(declare-fun m!662177 () Bool)

(assert (=> b!703280 m!662177))

(declare-fun m!662179 () Bool)

(assert (=> b!703289 m!662179))

(declare-fun m!662181 () Bool)

(assert (=> b!703285 m!662181))

(assert (=> b!703285 m!662181))

(declare-fun m!662183 () Bool)

(assert (=> b!703285 m!662183))

(declare-fun m!662185 () Bool)

(assert (=> b!703283 m!662185))

(declare-fun m!662187 () Bool)

(assert (=> b!703276 m!662187))

(declare-fun m!662189 () Bool)

(assert (=> b!703281 m!662189))

(declare-fun m!662191 () Bool)

(assert (=> b!703275 m!662191))

(declare-fun m!662193 () Bool)

(assert (=> b!703290 m!662193))

(declare-fun m!662195 () Bool)

(assert (=> b!703279 m!662195))

(declare-fun m!662197 () Bool)

(assert (=> b!703287 m!662197))

(declare-fun m!662199 () Bool)

(assert (=> b!703288 m!662199))

(declare-fun m!662201 () Bool)

(assert (=> b!703292 m!662201))

(declare-fun m!662203 () Bool)

(assert (=> start!62508 m!662203))

(declare-fun m!662205 () Bool)

(assert (=> b!703277 m!662205))

(declare-fun m!662207 () Bool)

(assert (=> b!703278 m!662207))

(declare-fun m!662209 () Bool)

(assert (=> b!703286 m!662209))

(push 1)

(assert (not b!703283))

(assert (not b!703275))

(assert (not b!703278))

(assert (not b!703291))

(assert (not b!703289))

(assert (not b!703292))

(assert (not b!703290))

(assert (not b!703286))

(assert (not b!703276))

(assert (not b!703277))

(assert (not b!703280))

(assert (not start!62508))

(assert (not b!703287))

(assert (not b!703279))

(assert (not b!703285))

(assert (not b!703288))

(assert (not b!703281))

(check-sat)

