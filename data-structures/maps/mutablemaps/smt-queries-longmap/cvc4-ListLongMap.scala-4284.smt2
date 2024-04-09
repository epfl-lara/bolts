; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59716 () Bool)

(assert start!59716)

(declare-fun res!427690 () Bool)

(declare-fun e!378895 () Bool)

(assert (=> start!59716 (=> (not res!427690) (not e!378895))))

(declare-datatypes ((array!38749 0))(
  ( (array!38750 (arr!18566 (Array (_ BitVec 32) (_ BitVec 64))) (size!18930 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38749)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59716 (= res!427690 (and (bvslt (size!18930 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18930 a!3626))))))

(assert (=> start!59716 e!378895))

(assert (=> start!59716 true))

(declare-fun array_inv!14340 (array!38749) Bool)

(assert (=> start!59716 (array_inv!14340 a!3626)))

(declare-fun b!659452 () Bool)

(assert (=> b!659452 (= e!378895 (bvsgt #b00000000000000000000000000000000 (size!18930 a!3626)))))

(declare-fun b!659453 () Bool)

(declare-fun res!427691 () Bool)

(assert (=> b!659453 (=> (not res!427691) (not e!378895))))

(declare-datatypes ((List!12660 0))(
  ( (Nil!12657) (Cons!12656 (h!13701 (_ BitVec 64)) (t!18896 List!12660)) )
))
(declare-fun acc!681 () List!12660)

(declare-fun contains!3203 (List!12660 (_ BitVec 64)) Bool)

(assert (=> b!659453 (= res!427691 (not (contains!3203 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659454 () Bool)

(declare-fun res!427693 () Bool)

(assert (=> b!659454 (=> (not res!427693) (not e!378895))))

(declare-fun e!378898 () Bool)

(assert (=> b!659454 (= res!427693 e!378898)))

(declare-fun res!427695 () Bool)

(assert (=> b!659454 (=> res!427695 e!378898)))

(declare-fun e!378896 () Bool)

(assert (=> b!659454 (= res!427695 e!378896)))

(declare-fun res!427692 () Bool)

(assert (=> b!659454 (=> (not res!427692) (not e!378896))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659454 (= res!427692 (bvsgt from!3004 i!1382))))

(declare-fun b!659455 () Bool)

(declare-fun res!427696 () Bool)

(assert (=> b!659455 (=> (not res!427696) (not e!378895))))

(assert (=> b!659455 (= res!427696 (not (contains!3203 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659456 () Bool)

(declare-fun res!427694 () Bool)

(assert (=> b!659456 (=> (not res!427694) (not e!378895))))

(declare-fun noDuplicate!450 (List!12660) Bool)

(assert (=> b!659456 (= res!427694 (noDuplicate!450 acc!681))))

(declare-fun b!659457 () Bool)

(declare-fun e!378897 () Bool)

(assert (=> b!659457 (= e!378898 e!378897)))

(declare-fun res!427697 () Bool)

(assert (=> b!659457 (=> (not res!427697) (not e!378897))))

(assert (=> b!659457 (= res!427697 (bvsle from!3004 i!1382))))

(declare-fun b!659458 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659458 (= e!378896 (contains!3203 acc!681 k!2843))))

(declare-fun b!659459 () Bool)

(assert (=> b!659459 (= e!378897 (not (contains!3203 acc!681 k!2843)))))

(assert (= (and start!59716 res!427690) b!659456))

(assert (= (and b!659456 res!427694) b!659453))

(assert (= (and b!659453 res!427691) b!659455))

(assert (= (and b!659455 res!427696) b!659454))

(assert (= (and b!659454 res!427692) b!659458))

(assert (= (and b!659454 (not res!427695)) b!659457))

(assert (= (and b!659457 res!427697) b!659459))

(assert (= (and b!659454 res!427693) b!659452))

(declare-fun m!632501 () Bool)

(assert (=> start!59716 m!632501))

(declare-fun m!632503 () Bool)

(assert (=> b!659456 m!632503))

(declare-fun m!632505 () Bool)

(assert (=> b!659459 m!632505))

(declare-fun m!632507 () Bool)

(assert (=> b!659453 m!632507))

(declare-fun m!632509 () Bool)

(assert (=> b!659455 m!632509))

(assert (=> b!659458 m!632505))

(push 1)

(assert (not b!659455))

(assert (not b!659458))

(assert (not b!659456))

(assert (not b!659453))

(assert (not start!59716))

(assert (not b!659459))

