; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62628 () Bool)

(assert start!62628)

(declare-fun b!706372 () Bool)

(declare-fun res!470367 () Bool)

(declare-fun e!397863 () Bool)

(assert (=> b!706372 (=> (not res!470367) (not e!397863))))

(declare-datatypes ((List!13378 0))(
  ( (Nil!13375) (Cons!13374 (h!14419 (_ BitVec 64)) (t!19668 List!13378)) )
))
(declare-fun acc!652 () List!13378)

(declare-fun contains!3921 (List!13378 (_ BitVec 64)) Bool)

(assert (=> b!706372 (= res!470367 (not (contains!3921 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706373 () Bool)

(declare-fun res!470362 () Bool)

(assert (=> b!706373 (=> (not res!470362) (not e!397863))))

(declare-fun newAcc!49 () List!13378)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!330 (List!13378 (_ BitVec 64)) List!13378)

(assert (=> b!706373 (= res!470362 (= (-!330 newAcc!49 k!2824) acc!652))))

(declare-fun b!706374 () Bool)

(declare-fun res!470363 () Bool)

(assert (=> b!706374 (=> (not res!470363) (not e!397863))))

(declare-datatypes ((array!40263 0))(
  ( (array!40264 (arr!19284 (Array (_ BitVec 32) (_ BitVec 64))) (size!19667 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40263)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706374 (= res!470363 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706375 () Bool)

(declare-fun res!470364 () Bool)

(assert (=> b!706375 (=> (not res!470364) (not e!397863))))

(declare-fun noDuplicate!1168 (List!13378) Bool)

(assert (=> b!706375 (= res!470364 (noDuplicate!1168 newAcc!49))))

(declare-fun b!706376 () Bool)

(declare-fun res!470358 () Bool)

(assert (=> b!706376 (=> (not res!470358) (not e!397863))))

(assert (=> b!706376 (= res!470358 (not (contains!3921 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706377 () Bool)

(declare-fun res!470361 () Bool)

(assert (=> b!706377 (=> (not res!470361) (not e!397863))))

(assert (=> b!706377 (= res!470361 (noDuplicate!1168 acc!652))))

(declare-fun b!706378 () Bool)

(declare-fun res!470360 () Bool)

(assert (=> b!706378 (=> (not res!470360) (not e!397863))))

(declare-fun arrayNoDuplicates!0 (array!40263 (_ BitVec 32) List!13378) Bool)

(assert (=> b!706378 (= res!470360 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!470357 () Bool)

(assert (=> start!62628 (=> (not res!470357) (not e!397863))))

(assert (=> start!62628 (= res!470357 (and (bvslt (size!19667 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19667 a!3591))))))

(assert (=> start!62628 e!397863))

(assert (=> start!62628 true))

(declare-fun array_inv!15058 (array!40263) Bool)

(assert (=> start!62628 (array_inv!15058 a!3591)))

(declare-fun b!706379 () Bool)

(declare-fun res!470368 () Bool)

(assert (=> b!706379 (=> (not res!470368) (not e!397863))))

(declare-fun subseq!365 (List!13378 List!13378) Bool)

(assert (=> b!706379 (= res!470368 (subseq!365 acc!652 newAcc!49))))

(declare-fun b!706380 () Bool)

(assert (=> b!706380 (= e!397863 (bvslt (bvsub (size!19667 a!3591) from!2969) #b00000000000000000000000000000000))))

(declare-fun b!706381 () Bool)

(declare-fun res!470366 () Bool)

(assert (=> b!706381 (=> (not res!470366) (not e!397863))))

(assert (=> b!706381 (= res!470366 (not (contains!3921 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706382 () Bool)

(declare-fun res!470369 () Bool)

(assert (=> b!706382 (=> (not res!470369) (not e!397863))))

(assert (=> b!706382 (= res!470369 (contains!3921 newAcc!49 k!2824))))

(declare-fun b!706383 () Bool)

(declare-fun res!470365 () Bool)

(assert (=> b!706383 (=> (not res!470365) (not e!397863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706383 (= res!470365 (validKeyInArray!0 k!2824))))

(declare-fun b!706384 () Bool)

(declare-fun res!470359 () Bool)

(assert (=> b!706384 (=> (not res!470359) (not e!397863))))

(assert (=> b!706384 (= res!470359 (not (contains!3921 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706385 () Bool)

(declare-fun res!470356 () Bool)

(assert (=> b!706385 (=> (not res!470356) (not e!397863))))

(assert (=> b!706385 (= res!470356 (not (contains!3921 acc!652 k!2824)))))

(assert (= (and start!62628 res!470357) b!706377))

(assert (= (and b!706377 res!470361) b!706375))

(assert (= (and b!706375 res!470364) b!706372))

(assert (= (and b!706372 res!470367) b!706381))

(assert (= (and b!706381 res!470366) b!706374))

(assert (= (and b!706374 res!470363) b!706385))

(assert (= (and b!706385 res!470356) b!706383))

(assert (= (and b!706383 res!470365) b!706378))

(assert (= (and b!706378 res!470360) b!706379))

(assert (= (and b!706379 res!470368) b!706382))

(assert (= (and b!706382 res!470369) b!706373))

(assert (= (and b!706373 res!470362) b!706384))

(assert (= (and b!706384 res!470359) b!706376))

(assert (= (and b!706376 res!470358) b!706380))

(declare-fun m!664287 () Bool)

(assert (=> b!706373 m!664287))

(declare-fun m!664289 () Bool)

(assert (=> b!706379 m!664289))

(declare-fun m!664291 () Bool)

(assert (=> b!706382 m!664291))

(declare-fun m!664293 () Bool)

(assert (=> b!706378 m!664293))

(declare-fun m!664295 () Bool)

(assert (=> start!62628 m!664295))

(declare-fun m!664297 () Bool)

(assert (=> b!706381 m!664297))

(declare-fun m!664299 () Bool)

(assert (=> b!706372 m!664299))

(declare-fun m!664301 () Bool)

(assert (=> b!706374 m!664301))

(declare-fun m!664303 () Bool)

(assert (=> b!706385 m!664303))

(declare-fun m!664305 () Bool)

(assert (=> b!706384 m!664305))

(declare-fun m!664307 () Bool)

(assert (=> b!706383 m!664307))

(declare-fun m!664309 () Bool)

(assert (=> b!706376 m!664309))

(declare-fun m!664311 () Bool)

(assert (=> b!706375 m!664311))

(declare-fun m!664313 () Bool)

(assert (=> b!706377 m!664313))

(push 1)

(assert (not b!706373))

(assert (not b!706382))

(assert (not start!62628))

(assert (not b!706376))

(assert (not b!706374))

(assert (not b!706377))

(assert (not b!706378))

(assert (not b!706385))

(assert (not b!706375))

(assert (not b!706383))

(assert (not b!706372))

(assert (not b!706381))

(assert (not b!706384))

(assert (not b!706379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

