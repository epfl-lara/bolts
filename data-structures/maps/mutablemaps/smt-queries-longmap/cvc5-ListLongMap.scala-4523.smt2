; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62622 () Bool)

(assert start!62622)

(declare-fun res!470242 () Bool)

(declare-fun e!397846 () Bool)

(assert (=> start!62622 (=> (not res!470242) (not e!397846))))

(declare-datatypes ((array!40257 0))(
  ( (array!40258 (arr!19281 (Array (_ BitVec 32) (_ BitVec 64))) (size!19664 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40257)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62622 (= res!470242 (and (bvslt (size!19664 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19664 a!3591))))))

(assert (=> start!62622 e!397846))

(assert (=> start!62622 true))

(declare-fun array_inv!15055 (array!40257) Bool)

(assert (=> start!62622 (array_inv!15055 a!3591)))

(declare-fun b!706253 () Bool)

(assert (=> b!706253 (= e!397846 false)))

(declare-fun lt!317895 () Bool)

(declare-datatypes ((List!13375 0))(
  ( (Nil!13372) (Cons!13371 (h!14416 (_ BitVec 64)) (t!19665 List!13375)) )
))
(declare-fun newAcc!49 () List!13375)

(declare-fun contains!3918 (List!13375 (_ BitVec 64)) Bool)

(assert (=> b!706253 (= lt!317895 (contains!3918 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706254 () Bool)

(declare-fun res!470247 () Bool)

(assert (=> b!706254 (=> (not res!470247) (not e!397846))))

(declare-fun acc!652 () List!13375)

(declare-fun arrayNoDuplicates!0 (array!40257 (_ BitVec 32) List!13375) Bool)

(assert (=> b!706254 (= res!470247 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706255 () Bool)

(declare-fun res!470249 () Bool)

(assert (=> b!706255 (=> (not res!470249) (not e!397846))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706255 (= res!470249 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706256 () Bool)

(declare-fun res!470237 () Bool)

(assert (=> b!706256 (=> (not res!470237) (not e!397846))))

(assert (=> b!706256 (= res!470237 (not (contains!3918 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706257 () Bool)

(declare-fun res!470240 () Bool)

(assert (=> b!706257 (=> (not res!470240) (not e!397846))))

(declare-fun subseq!362 (List!13375 List!13375) Bool)

(assert (=> b!706257 (= res!470240 (subseq!362 acc!652 newAcc!49))))

(declare-fun b!706258 () Bool)

(declare-fun res!470238 () Bool)

(assert (=> b!706258 (=> (not res!470238) (not e!397846))))

(declare-fun -!327 (List!13375 (_ BitVec 64)) List!13375)

(assert (=> b!706258 (= res!470238 (= (-!327 newAcc!49 k!2824) acc!652))))

(declare-fun b!706259 () Bool)

(declare-fun res!470245 () Bool)

(assert (=> b!706259 (=> (not res!470245) (not e!397846))))

(declare-fun noDuplicate!1165 (List!13375) Bool)

(assert (=> b!706259 (= res!470245 (noDuplicate!1165 newAcc!49))))

(declare-fun b!706260 () Bool)

(declare-fun res!470244 () Bool)

(assert (=> b!706260 (=> (not res!470244) (not e!397846))))

(assert (=> b!706260 (= res!470244 (contains!3918 newAcc!49 k!2824))))

(declare-fun b!706261 () Bool)

(declare-fun res!470248 () Bool)

(assert (=> b!706261 (=> (not res!470248) (not e!397846))))

(assert (=> b!706261 (= res!470248 (not (contains!3918 acc!652 k!2824)))))

(declare-fun b!706262 () Bool)

(declare-fun res!470239 () Bool)

(assert (=> b!706262 (=> (not res!470239) (not e!397846))))

(assert (=> b!706262 (= res!470239 (not (contains!3918 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706263 () Bool)

(declare-fun res!470246 () Bool)

(assert (=> b!706263 (=> (not res!470246) (not e!397846))))

(assert (=> b!706263 (= res!470246 (noDuplicate!1165 acc!652))))

(declare-fun b!706264 () Bool)

(declare-fun res!470241 () Bool)

(assert (=> b!706264 (=> (not res!470241) (not e!397846))))

(assert (=> b!706264 (= res!470241 (not (contains!3918 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706265 () Bool)

(declare-fun res!470243 () Bool)

(assert (=> b!706265 (=> (not res!470243) (not e!397846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706265 (= res!470243 (validKeyInArray!0 k!2824))))

(assert (= (and start!62622 res!470242) b!706263))

(assert (= (and b!706263 res!470246) b!706259))

(assert (= (and b!706259 res!470245) b!706256))

(assert (= (and b!706256 res!470237) b!706262))

(assert (= (and b!706262 res!470239) b!706255))

(assert (= (and b!706255 res!470249) b!706261))

(assert (= (and b!706261 res!470248) b!706265))

(assert (= (and b!706265 res!470243) b!706254))

(assert (= (and b!706254 res!470247) b!706257))

(assert (= (and b!706257 res!470240) b!706260))

(assert (= (and b!706260 res!470244) b!706258))

(assert (= (and b!706258 res!470238) b!706264))

(assert (= (and b!706264 res!470241) b!706253))

(declare-fun m!664203 () Bool)

(assert (=> b!706255 m!664203))

(declare-fun m!664205 () Bool)

(assert (=> b!706265 m!664205))

(declare-fun m!664207 () Bool)

(assert (=> b!706254 m!664207))

(declare-fun m!664209 () Bool)

(assert (=> b!706258 m!664209))

(declare-fun m!664211 () Bool)

(assert (=> start!62622 m!664211))

(declare-fun m!664213 () Bool)

(assert (=> b!706260 m!664213))

(declare-fun m!664215 () Bool)

(assert (=> b!706253 m!664215))

(declare-fun m!664217 () Bool)

(assert (=> b!706264 m!664217))

(declare-fun m!664219 () Bool)

(assert (=> b!706259 m!664219))

(declare-fun m!664221 () Bool)

(assert (=> b!706256 m!664221))

(declare-fun m!664223 () Bool)

(assert (=> b!706257 m!664223))

(declare-fun m!664225 () Bool)

(assert (=> b!706262 m!664225))

(declare-fun m!664227 () Bool)

(assert (=> b!706263 m!664227))

(declare-fun m!664229 () Bool)

(assert (=> b!706261 m!664229))

(push 1)

(assert (not b!706256))

(assert (not b!706260))

(assert (not start!62622))

(assert (not b!706254))

(assert (not b!706253))

(assert (not b!706261))

(assert (not b!706264))

(assert (not b!706255))

(assert (not b!706257))

(assert (not b!706258))

(assert (not b!706265))

(assert (not b!706259))

(assert (not b!706262))

(assert (not b!706263))

(check-sat)

