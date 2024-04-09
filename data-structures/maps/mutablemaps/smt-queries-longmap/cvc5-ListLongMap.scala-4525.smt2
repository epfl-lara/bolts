; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62634 () Bool)

(assert start!62634)

(declare-fun b!706496 () Bool)

(declare-fun res!470483 () Bool)

(declare-fun e!397882 () Bool)

(assert (=> b!706496 (=> (not res!470483) (not e!397882))))

(declare-datatypes ((List!13381 0))(
  ( (Nil!13378) (Cons!13377 (h!14422 (_ BitVec 64)) (t!19671 List!13381)) )
))
(declare-fun newAcc!49 () List!13381)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13381)

(declare-fun -!333 (List!13381 (_ BitVec 64)) List!13381)

(assert (=> b!706496 (= res!470483 (= (-!333 newAcc!49 k!2824) acc!652))))

(declare-fun b!706497 () Bool)

(declare-fun res!470481 () Bool)

(assert (=> b!706497 (=> (not res!470481) (not e!397882))))

(declare-fun noDuplicate!1171 (List!13381) Bool)

(assert (=> b!706497 (= res!470481 (noDuplicate!1171 acc!652))))

(declare-fun res!470480 () Bool)

(assert (=> start!62634 (=> (not res!470480) (not e!397882))))

(declare-datatypes ((array!40269 0))(
  ( (array!40270 (arr!19287 (Array (_ BitVec 32) (_ BitVec 64))) (size!19670 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40269)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62634 (= res!470480 (and (bvslt (size!19670 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19670 a!3591))))))

(assert (=> start!62634 e!397882))

(assert (=> start!62634 true))

(declare-fun array_inv!15061 (array!40269) Bool)

(assert (=> start!62634 (array_inv!15061 a!3591)))

(declare-fun b!706498 () Bool)

(declare-fun res!470491 () Bool)

(assert (=> b!706498 (=> (not res!470491) (not e!397882))))

(declare-fun subseq!368 (List!13381 List!13381) Bool)

(assert (=> b!706498 (= res!470491 (subseq!368 acc!652 newAcc!49))))

(declare-fun b!706499 () Bool)

(declare-fun res!470489 () Bool)

(assert (=> b!706499 (=> (not res!470489) (not e!397882))))

(declare-fun arrayNoDuplicates!0 (array!40269 (_ BitVec 32) List!13381) Bool)

(assert (=> b!706499 (= res!470489 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706500 () Bool)

(declare-fun res!470488 () Bool)

(assert (=> b!706500 (=> (not res!470488) (not e!397882))))

(declare-fun contains!3924 (List!13381 (_ BitVec 64)) Bool)

(assert (=> b!706500 (= res!470488 (not (contains!3924 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706501 () Bool)

(declare-fun res!470487 () Bool)

(assert (=> b!706501 (=> (not res!470487) (not e!397882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706501 (= res!470487 (validKeyInArray!0 k!2824))))

(declare-fun b!706502 () Bool)

(declare-fun res!470492 () Bool)

(assert (=> b!706502 (=> (not res!470492) (not e!397882))))

(assert (=> b!706502 (= res!470492 (not (contains!3924 acc!652 k!2824)))))

(declare-fun b!706503 () Bool)

(declare-fun res!470484 () Bool)

(assert (=> b!706503 (=> (not res!470484) (not e!397882))))

(declare-fun arrayContainsKey!0 (array!40269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706503 (= res!470484 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706504 () Bool)

(declare-fun res!470485 () Bool)

(assert (=> b!706504 (=> (not res!470485) (not e!397882))))

(assert (=> b!706504 (= res!470485 (noDuplicate!1171 newAcc!49))))

(declare-fun b!706505 () Bool)

(declare-fun res!470486 () Bool)

(assert (=> b!706505 (=> (not res!470486) (not e!397882))))

(assert (=> b!706505 (= res!470486 (not (contains!3924 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706506 () Bool)

(declare-fun res!470490 () Bool)

(assert (=> b!706506 (=> (not res!470490) (not e!397882))))

(assert (=> b!706506 (= res!470490 (contains!3924 newAcc!49 k!2824))))

(declare-fun b!706507 () Bool)

(declare-fun res!470482 () Bool)

(assert (=> b!706507 (=> (not res!470482) (not e!397882))))

(assert (=> b!706507 (= res!470482 (not (contains!3924 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706508 () Bool)

(assert (=> b!706508 (= e!397882 false)))

(declare-fun lt!317904 () Bool)

(assert (=> b!706508 (= lt!317904 (contains!3924 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!62634 res!470480) b!706497))

(assert (= (and b!706497 res!470481) b!706504))

(assert (= (and b!706504 res!470485) b!706507))

(assert (= (and b!706507 res!470482) b!706500))

(assert (= (and b!706500 res!470488) b!706503))

(assert (= (and b!706503 res!470484) b!706502))

(assert (= (and b!706502 res!470492) b!706501))

(assert (= (and b!706501 res!470487) b!706499))

(assert (= (and b!706499 res!470489) b!706498))

(assert (= (and b!706498 res!470491) b!706506))

(assert (= (and b!706506 res!470490) b!706496))

(assert (= (and b!706496 res!470483) b!706505))

(assert (= (and b!706505 res!470486) b!706508))

(declare-fun m!664371 () Bool)

(assert (=> start!62634 m!664371))

(declare-fun m!664373 () Bool)

(assert (=> b!706504 m!664373))

(declare-fun m!664375 () Bool)

(assert (=> b!706498 m!664375))

(declare-fun m!664377 () Bool)

(assert (=> b!706497 m!664377))

(declare-fun m!664379 () Bool)

(assert (=> b!706508 m!664379))

(declare-fun m!664381 () Bool)

(assert (=> b!706506 m!664381))

(declare-fun m!664383 () Bool)

(assert (=> b!706502 m!664383))

(declare-fun m!664385 () Bool)

(assert (=> b!706505 m!664385))

(declare-fun m!664387 () Bool)

(assert (=> b!706499 m!664387))

(declare-fun m!664389 () Bool)

(assert (=> b!706507 m!664389))

(declare-fun m!664391 () Bool)

(assert (=> b!706496 m!664391))

(declare-fun m!664393 () Bool)

(assert (=> b!706500 m!664393))

(declare-fun m!664395 () Bool)

(assert (=> b!706501 m!664395))

(declare-fun m!664397 () Bool)

(assert (=> b!706503 m!664397))

(push 1)

(assert (not b!706508))

(assert (not b!706505))

(assert (not b!706498))

(assert (not b!706500))

(assert (not b!706502))

(assert (not b!706503))

(assert (not b!706507))

(assert (not b!706501))

(assert (not start!62634))

(assert (not b!706497))

(assert (not b!706504))

(assert (not b!706506))

(assert (not b!706496))

(assert (not b!706499))

(check-sat)

