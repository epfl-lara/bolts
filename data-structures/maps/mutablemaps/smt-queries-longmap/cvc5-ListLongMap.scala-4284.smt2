; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59712 () Bool)

(assert start!59712)

(declare-fun b!659404 () Bool)

(declare-fun res!427644 () Bool)

(declare-fun e!378867 () Bool)

(assert (=> b!659404 (=> (not res!427644) (not e!378867))))

(declare-fun e!378866 () Bool)

(assert (=> b!659404 (= res!427644 e!378866)))

(declare-fun res!427648 () Bool)

(assert (=> b!659404 (=> res!427648 e!378866)))

(declare-fun e!378864 () Bool)

(assert (=> b!659404 (= res!427648 e!378864)))

(declare-fun res!427647 () Bool)

(assert (=> b!659404 (=> (not res!427647) (not e!378864))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659404 (= res!427647 (bvsgt from!3004 i!1382))))

(declare-fun b!659405 () Bool)

(declare-datatypes ((array!38745 0))(
  ( (array!38746 (arr!18564 (Array (_ BitVec 32) (_ BitVec 64))) (size!18928 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38745)

(assert (=> b!659405 (= e!378867 (bvsgt #b00000000000000000000000000000000 (size!18928 a!3626)))))

(declare-fun b!659406 () Bool)

(declare-fun res!427645 () Bool)

(assert (=> b!659406 (=> (not res!427645) (not e!378867))))

(declare-datatypes ((List!12658 0))(
  ( (Nil!12655) (Cons!12654 (h!13699 (_ BitVec 64)) (t!18894 List!12658)) )
))
(declare-fun acc!681 () List!12658)

(declare-fun contains!3201 (List!12658 (_ BitVec 64)) Bool)

(assert (=> b!659406 (= res!427645 (not (contains!3201 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659407 () Bool)

(declare-fun e!378865 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659407 (= e!378865 (not (contains!3201 acc!681 k!2843)))))

(declare-fun b!659408 () Bool)

(assert (=> b!659408 (= e!378864 (contains!3201 acc!681 k!2843))))

(declare-fun b!659409 () Bool)

(assert (=> b!659409 (= e!378866 e!378865)))

(declare-fun res!427642 () Bool)

(assert (=> b!659409 (=> (not res!427642) (not e!378865))))

(assert (=> b!659409 (= res!427642 (bvsle from!3004 i!1382))))

(declare-fun b!659410 () Bool)

(declare-fun res!427649 () Bool)

(assert (=> b!659410 (=> (not res!427649) (not e!378867))))

(declare-fun noDuplicate!448 (List!12658) Bool)

(assert (=> b!659410 (= res!427649 (noDuplicate!448 acc!681))))

(declare-fun res!427646 () Bool)

(assert (=> start!59712 (=> (not res!427646) (not e!378867))))

(assert (=> start!59712 (= res!427646 (and (bvslt (size!18928 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18928 a!3626))))))

(assert (=> start!59712 e!378867))

(assert (=> start!59712 true))

(declare-fun array_inv!14338 (array!38745) Bool)

(assert (=> start!59712 (array_inv!14338 a!3626)))

(declare-fun b!659411 () Bool)

(declare-fun res!427643 () Bool)

(assert (=> b!659411 (=> (not res!427643) (not e!378867))))

(assert (=> b!659411 (= res!427643 (not (contains!3201 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59712 res!427646) b!659410))

(assert (= (and b!659410 res!427649) b!659406))

(assert (= (and b!659406 res!427645) b!659411))

(assert (= (and b!659411 res!427643) b!659404))

(assert (= (and b!659404 res!427647) b!659408))

(assert (= (and b!659404 (not res!427648)) b!659409))

(assert (= (and b!659409 res!427642) b!659407))

(assert (= (and b!659404 res!427644) b!659405))

(declare-fun m!632481 () Bool)

(assert (=> b!659410 m!632481))

(declare-fun m!632483 () Bool)

(assert (=> b!659407 m!632483))

(declare-fun m!632485 () Bool)

(assert (=> b!659411 m!632485))

(assert (=> b!659408 m!632483))

(declare-fun m!632487 () Bool)

(assert (=> start!59712 m!632487))

(declare-fun m!632489 () Bool)

(assert (=> b!659406 m!632489))

(push 1)

