; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62518 () Bool)

(assert start!62518)

(declare-fun b!703545 () Bool)

(declare-fun res!467532 () Bool)

(declare-fun e!397533 () Bool)

(assert (=> b!703545 (=> (not res!467532) (not e!397533))))

(declare-datatypes ((List!13323 0))(
  ( (Nil!13320) (Cons!13319 (h!14364 (_ BitVec 64)) (t!19613 List!13323)) )
))
(declare-fun newAcc!49 () List!13323)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13323)

(declare-fun -!275 (List!13323 (_ BitVec 64)) List!13323)

(assert (=> b!703545 (= res!467532 (= (-!275 newAcc!49 k!2824) acc!652))))

(declare-fun b!703546 () Bool)

(declare-fun res!467542 () Bool)

(assert (=> b!703546 (=> (not res!467542) (not e!397533))))

(declare-fun contains!3866 (List!13323 (_ BitVec 64)) Bool)

(assert (=> b!703546 (= res!467542 (not (contains!3866 acc!652 k!2824)))))

(declare-fun b!703547 () Bool)

(declare-fun res!467533 () Bool)

(assert (=> b!703547 (=> (not res!467533) (not e!397533))))

(declare-datatypes ((array!40153 0))(
  ( (array!40154 (arr!19229 (Array (_ BitVec 32) (_ BitVec 64))) (size!19612 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40153)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40153 (_ BitVec 32) List!13323) Bool)

(assert (=> b!703547 (= res!467533 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703548 () Bool)

(declare-fun res!467537 () Bool)

(assert (=> b!703548 (=> (not res!467537) (not e!397533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703548 (= res!467537 (not (validKeyInArray!0 (select (arr!19229 a!3591) from!2969))))))

(declare-fun b!703549 () Bool)

(declare-fun res!467538 () Bool)

(assert (=> b!703549 (=> (not res!467538) (not e!397533))))

(declare-fun arrayContainsKey!0 (array!40153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703549 (= res!467538 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703550 () Bool)

(assert (=> b!703550 (= e!397533 false)))

(declare-fun lt!317748 () Bool)

(assert (=> b!703550 (= lt!317748 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703551 () Bool)

(declare-fun res!467543 () Bool)

(assert (=> b!703551 (=> (not res!467543) (not e!397533))))

(assert (=> b!703551 (= res!467543 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19612 a!3591)))))

(declare-fun b!703552 () Bool)

(declare-fun res!467541 () Bool)

(assert (=> b!703552 (=> (not res!467541) (not e!397533))))

(declare-fun noDuplicate!1113 (List!13323) Bool)

(assert (=> b!703552 (= res!467541 (noDuplicate!1113 acc!652))))

(declare-fun res!467539 () Bool)

(assert (=> start!62518 (=> (not res!467539) (not e!397533))))

(assert (=> start!62518 (= res!467539 (and (bvslt (size!19612 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19612 a!3591))))))

(assert (=> start!62518 e!397533))

(assert (=> start!62518 true))

(declare-fun array_inv!15003 (array!40153) Bool)

(assert (=> start!62518 (array_inv!15003 a!3591)))

(declare-fun b!703553 () Bool)

(declare-fun res!467535 () Bool)

(assert (=> b!703553 (=> (not res!467535) (not e!397533))))

(assert (=> b!703553 (= res!467535 (not (contains!3866 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703554 () Bool)

(declare-fun res!467546 () Bool)

(assert (=> b!703554 (=> (not res!467546) (not e!397533))))

(assert (=> b!703554 (= res!467546 (not (contains!3866 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703555 () Bool)

(declare-fun res!467545 () Bool)

(assert (=> b!703555 (=> (not res!467545) (not e!397533))))

(assert (=> b!703555 (= res!467545 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703556 () Bool)

(declare-fun res!467534 () Bool)

(assert (=> b!703556 (=> (not res!467534) (not e!397533))))

(assert (=> b!703556 (= res!467534 (contains!3866 newAcc!49 k!2824))))

(declare-fun b!703557 () Bool)

(declare-fun res!467529 () Bool)

(assert (=> b!703557 (=> (not res!467529) (not e!397533))))

(assert (=> b!703557 (= res!467529 (validKeyInArray!0 k!2824))))

(declare-fun b!703558 () Bool)

(declare-fun res!467540 () Bool)

(assert (=> b!703558 (=> (not res!467540) (not e!397533))))

(assert (=> b!703558 (= res!467540 (not (contains!3866 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703559 () Bool)

(declare-fun res!467530 () Bool)

(assert (=> b!703559 (=> (not res!467530) (not e!397533))))

(assert (=> b!703559 (= res!467530 (not (contains!3866 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703560 () Bool)

(declare-fun res!467544 () Bool)

(assert (=> b!703560 (=> (not res!467544) (not e!397533))))

(assert (=> b!703560 (= res!467544 (noDuplicate!1113 newAcc!49))))

(declare-fun b!703561 () Bool)

(declare-fun res!467536 () Bool)

(assert (=> b!703561 (=> (not res!467536) (not e!397533))))

(assert (=> b!703561 (= res!467536 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703562 () Bool)

(declare-fun res!467531 () Bool)

(assert (=> b!703562 (=> (not res!467531) (not e!397533))))

(declare-fun subseq!310 (List!13323 List!13323) Bool)

(assert (=> b!703562 (= res!467531 (subseq!310 acc!652 newAcc!49))))

(assert (= (and start!62518 res!467539) b!703552))

(assert (= (and b!703552 res!467541) b!703560))

(assert (= (and b!703560 res!467544) b!703558))

(assert (= (and b!703558 res!467540) b!703559))

(assert (= (and b!703559 res!467530) b!703555))

(assert (= (and b!703555 res!467545) b!703546))

(assert (= (and b!703546 res!467542) b!703557))

(assert (= (and b!703557 res!467529) b!703547))

(assert (= (and b!703547 res!467533) b!703562))

(assert (= (and b!703562 res!467531) b!703556))

(assert (= (and b!703556 res!467534) b!703545))

(assert (= (and b!703545 res!467532) b!703554))

(assert (= (and b!703554 res!467546) b!703553))

(assert (= (and b!703553 res!467535) b!703551))

(assert (= (and b!703551 res!467543) b!703548))

(assert (= (and b!703548 res!467537) b!703561))

(assert (= (and b!703561 res!467536) b!703549))

(assert (= (and b!703549 res!467538) b!703550))

(declare-fun m!662355 () Bool)

(assert (=> b!703550 m!662355))

(declare-fun m!662357 () Bool)

(assert (=> b!703547 m!662357))

(declare-fun m!662359 () Bool)

(assert (=> b!703546 m!662359))

(declare-fun m!662361 () Bool)

(assert (=> b!703552 m!662361))

(declare-fun m!662363 () Bool)

(assert (=> b!703557 m!662363))

(declare-fun m!662365 () Bool)

(assert (=> b!703545 m!662365))

(declare-fun m!662367 () Bool)

(assert (=> b!703554 m!662367))

(declare-fun m!662369 () Bool)

(assert (=> b!703549 m!662369))

(declare-fun m!662371 () Bool)

(assert (=> start!62518 m!662371))

(declare-fun m!662373 () Bool)

(assert (=> b!703553 m!662373))

(declare-fun m!662375 () Bool)

(assert (=> b!703556 m!662375))

(declare-fun m!662377 () Bool)

(assert (=> b!703559 m!662377))

(declare-fun m!662379 () Bool)

(assert (=> b!703558 m!662379))

(declare-fun m!662381 () Bool)

(assert (=> b!703562 m!662381))

(declare-fun m!662383 () Bool)

(assert (=> b!703555 m!662383))

(declare-fun m!662385 () Bool)

(assert (=> b!703548 m!662385))

(assert (=> b!703548 m!662385))

(declare-fun m!662387 () Bool)

(assert (=> b!703548 m!662387))

(declare-fun m!662389 () Bool)

(assert (=> b!703560 m!662389))

(push 1)

(assert (not b!703552))

(assert (not b!703553))

(assert (not b!703546))

(assert (not b!703547))

(assert (not b!703555))

(assert (not b!703558))

(assert (not b!703554))

(assert (not b!703562))

(assert (not b!703559))

(assert (not start!62518))

(assert (not b!703560))

(assert (not b!703545))

(assert (not b!703549))

(assert (not b!703556))

(assert (not b!703557))

(assert (not b!703550))

(assert (not b!703548))

(check-sat)

