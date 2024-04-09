; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60138 () Bool)

(assert start!60138)

(declare-fun b!670650 () Bool)

(declare-fun e!383415 () Bool)

(declare-datatypes ((List!12853 0))(
  ( (Nil!12850) (Cons!12849 (h!13894 (_ BitVec 64)) (t!19089 List!12853)) )
))
(declare-fun acc!681 () List!12853)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3396 (List!12853 (_ BitVec 64)) Bool)

(assert (=> b!670650 (= e!383415 (not (contains!3396 acc!681 k!2843)))))

(declare-fun b!670651 () Bool)

(declare-fun e!383412 () Bool)

(assert (=> b!670651 (= e!383412 (contains!3396 acc!681 k!2843))))

(declare-fun b!670652 () Bool)

(declare-fun e!383413 () Bool)

(assert (=> b!670652 (= e!383413 e!383415)))

(declare-fun res!437525 () Bool)

(assert (=> b!670652 (=> (not res!437525) (not e!383415))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670652 (= res!437525 (bvsle from!3004 i!1382))))

(declare-fun res!437521 () Bool)

(declare-fun e!383416 () Bool)

(assert (=> start!60138 (=> (not res!437521) (not e!383416))))

(declare-datatypes ((array!39141 0))(
  ( (array!39142 (arr!18759 (Array (_ BitVec 32) (_ BitVec 64))) (size!19123 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39141)

(assert (=> start!60138 (= res!437521 (and (bvslt (size!19123 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19123 a!3626))))))

(assert (=> start!60138 e!383416))

(assert (=> start!60138 true))

(declare-fun array_inv!14533 (array!39141) Bool)

(assert (=> start!60138 (array_inv!14533 a!3626)))

(declare-fun b!670653 () Bool)

(declare-fun res!437520 () Bool)

(assert (=> b!670653 (=> (not res!437520) (not e!383416))))

(assert (=> b!670653 (= res!437520 e!383413)))

(declare-fun res!437527 () Bool)

(assert (=> b!670653 (=> res!437527 e!383413)))

(assert (=> b!670653 (= res!437527 e!383412)))

(declare-fun res!437526 () Bool)

(assert (=> b!670653 (=> (not res!437526) (not e!383412))))

(assert (=> b!670653 (= res!437526 (bvsgt from!3004 i!1382))))

(declare-fun b!670654 () Bool)

(declare-fun res!437522 () Bool)

(assert (=> b!670654 (=> (not res!437522) (not e!383416))))

(declare-fun noDuplicate!643 (List!12853) Bool)

(assert (=> b!670654 (= res!437522 (noDuplicate!643 acc!681))))

(declare-fun b!670655 () Bool)

(assert (=> b!670655 (= e!383416 false)))

(declare-fun lt!312099 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39141 (_ BitVec 32) List!12853) Bool)

(assert (=> b!670655 (= lt!312099 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670656 () Bool)

(declare-fun res!437524 () Bool)

(assert (=> b!670656 (=> (not res!437524) (not e!383416))))

(assert (=> b!670656 (= res!437524 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12850))))

(declare-fun b!670657 () Bool)

(declare-fun res!437528 () Bool)

(assert (=> b!670657 (=> (not res!437528) (not e!383416))))

(assert (=> b!670657 (= res!437528 (not (contains!3396 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670658 () Bool)

(declare-fun res!437523 () Bool)

(assert (=> b!670658 (=> (not res!437523) (not e!383416))))

(assert (=> b!670658 (= res!437523 (not (contains!3396 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60138 res!437521) b!670654))

(assert (= (and b!670654 res!437522) b!670657))

(assert (= (and b!670657 res!437528) b!670658))

(assert (= (and b!670658 res!437523) b!670653))

(assert (= (and b!670653 res!437526) b!670651))

(assert (= (and b!670653 (not res!437527)) b!670652))

(assert (= (and b!670652 res!437525) b!670650))

(assert (= (and b!670653 res!437520) b!670656))

(assert (= (and b!670656 res!437524) b!670655))

(declare-fun m!640497 () Bool)

(assert (=> b!670658 m!640497))

(declare-fun m!640499 () Bool)

(assert (=> b!670654 m!640499))

(declare-fun m!640501 () Bool)

(assert (=> b!670650 m!640501))

(declare-fun m!640503 () Bool)

(assert (=> b!670656 m!640503))

(declare-fun m!640505 () Bool)

(assert (=> b!670657 m!640505))

(declare-fun m!640507 () Bool)

(assert (=> b!670655 m!640507))

(declare-fun m!640509 () Bool)

(assert (=> start!60138 m!640509))

(assert (=> b!670651 m!640501))

(push 1)

(assert (not b!670650))

(assert (not b!670656))

(assert (not b!670655))

(assert (not b!670651))

(assert (not b!670657))

(assert (not b!670654))

(assert (not start!60138))

(assert (not b!670658))

(check-sat)

