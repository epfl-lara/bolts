; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62638 () Bool)

(assert start!62638)

(declare-fun b!706574 () Bool)

(declare-fun res!470565 () Bool)

(declare-fun e!397894 () Bool)

(assert (=> b!706574 (=> (not res!470565) (not e!397894))))

(declare-datatypes ((List!13383 0))(
  ( (Nil!13380) (Cons!13379 (h!14424 (_ BitVec 64)) (t!19673 List!13383)) )
))
(declare-fun newAcc!49 () List!13383)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3926 (List!13383 (_ BitVec 64)) Bool)

(assert (=> b!706574 (= res!470565 (contains!3926 newAcc!49 k!2824))))

(declare-fun b!706575 () Bool)

(declare-fun res!470564 () Bool)

(assert (=> b!706575 (=> (not res!470564) (not e!397894))))

(declare-fun acc!652 () List!13383)

(assert (=> b!706575 (= res!470564 (not (contains!3926 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706576 () Bool)

(declare-fun res!470559 () Bool)

(assert (=> b!706576 (=> (not res!470559) (not e!397894))))

(declare-fun noDuplicate!1173 (List!13383) Bool)

(assert (=> b!706576 (= res!470559 (noDuplicate!1173 newAcc!49))))

(declare-fun b!706577 () Bool)

(declare-fun res!470566 () Bool)

(assert (=> b!706577 (=> (not res!470566) (not e!397894))))

(declare-datatypes ((array!40273 0))(
  ( (array!40274 (arr!19289 (Array (_ BitVec 32) (_ BitVec 64))) (size!19672 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40273)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706577 (= res!470566 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706578 () Bool)

(declare-fun res!470563 () Bool)

(assert (=> b!706578 (=> (not res!470563) (not e!397894))))

(assert (=> b!706578 (= res!470563 (not (contains!3926 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706579 () Bool)

(declare-fun res!470570 () Bool)

(assert (=> b!706579 (=> (not res!470570) (not e!397894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706579 (= res!470570 (validKeyInArray!0 k!2824))))

(declare-fun b!706580 () Bool)

(declare-fun res!470561 () Bool)

(assert (=> b!706580 (=> (not res!470561) (not e!397894))))

(declare-fun -!335 (List!13383 (_ BitVec 64)) List!13383)

(assert (=> b!706580 (= res!470561 (= (-!335 newAcc!49 k!2824) acc!652))))

(declare-fun b!706581 () Bool)

(assert (=> b!706581 (= e!397894 false)))

(declare-fun lt!317910 () Bool)

(assert (=> b!706581 (= lt!317910 (contains!3926 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!470569 () Bool)

(assert (=> start!62638 (=> (not res!470569) (not e!397894))))

(assert (=> start!62638 (= res!470569 (and (bvslt (size!19672 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19672 a!3591))))))

(assert (=> start!62638 e!397894))

(assert (=> start!62638 true))

(declare-fun array_inv!15063 (array!40273) Bool)

(assert (=> start!62638 (array_inv!15063 a!3591)))

(declare-fun b!706582 () Bool)

(declare-fun res!470567 () Bool)

(assert (=> b!706582 (=> (not res!470567) (not e!397894))))

(assert (=> b!706582 (= res!470567 (not (contains!3926 acc!652 k!2824)))))

(declare-fun b!706583 () Bool)

(declare-fun res!470568 () Bool)

(assert (=> b!706583 (=> (not res!470568) (not e!397894))))

(declare-fun arrayNoDuplicates!0 (array!40273 (_ BitVec 32) List!13383) Bool)

(assert (=> b!706583 (= res!470568 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706584 () Bool)

(declare-fun res!470560 () Bool)

(assert (=> b!706584 (=> (not res!470560) (not e!397894))))

(assert (=> b!706584 (= res!470560 (noDuplicate!1173 acc!652))))

(declare-fun b!706585 () Bool)

(declare-fun res!470562 () Bool)

(assert (=> b!706585 (=> (not res!470562) (not e!397894))))

(assert (=> b!706585 (= res!470562 (not (contains!3926 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706586 () Bool)

(declare-fun res!470558 () Bool)

(assert (=> b!706586 (=> (not res!470558) (not e!397894))))

(declare-fun subseq!370 (List!13383 List!13383) Bool)

(assert (=> b!706586 (= res!470558 (subseq!370 acc!652 newAcc!49))))

(assert (= (and start!62638 res!470569) b!706584))

(assert (= (and b!706584 res!470560) b!706576))

(assert (= (and b!706576 res!470559) b!706575))

(assert (= (and b!706575 res!470564) b!706578))

(assert (= (and b!706578 res!470563) b!706577))

(assert (= (and b!706577 res!470566) b!706582))

(assert (= (and b!706582 res!470567) b!706579))

(assert (= (and b!706579 res!470570) b!706583))

(assert (= (and b!706583 res!470568) b!706586))

(assert (= (and b!706586 res!470558) b!706574))

(assert (= (and b!706574 res!470565) b!706580))

(assert (= (and b!706580 res!470561) b!706585))

(assert (= (and b!706585 res!470562) b!706581))

(declare-fun m!664427 () Bool)

(assert (=> b!706580 m!664427))

(declare-fun m!664429 () Bool)

(assert (=> b!706582 m!664429))

(declare-fun m!664431 () Bool)

(assert (=> b!706581 m!664431))

(declare-fun m!664433 () Bool)

(assert (=> start!62638 m!664433))

(declare-fun m!664435 () Bool)

(assert (=> b!706584 m!664435))

(declare-fun m!664437 () Bool)

(assert (=> b!706577 m!664437))

(declare-fun m!664439 () Bool)

(assert (=> b!706574 m!664439))

(declare-fun m!664441 () Bool)

(assert (=> b!706586 m!664441))

(declare-fun m!664443 () Bool)

(assert (=> b!706576 m!664443))

(declare-fun m!664445 () Bool)

(assert (=> b!706578 m!664445))

(declare-fun m!664447 () Bool)

(assert (=> b!706585 m!664447))

(declare-fun m!664449 () Bool)

(assert (=> b!706579 m!664449))

(declare-fun m!664451 () Bool)

(assert (=> b!706583 m!664451))

(declare-fun m!664453 () Bool)

(assert (=> b!706575 m!664453))

(push 1)

(assert (not b!706579))

(assert (not b!706580))

(assert (not b!706584))

(assert (not b!706575))

(assert (not start!62638))

(assert (not b!706581))

(assert (not b!706583))

(assert (not b!706585))

(assert (not b!706574))

(assert (not b!706586))

(assert (not b!706578))

(assert (not b!706576))

(assert (not b!706577))

(assert (not b!706582))

(check-sat)

