; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59718 () Bool)

(assert start!59718)

(declare-fun b!659474 () Bool)

(declare-fun res!427715 () Bool)

(declare-fun e!378909 () Bool)

(assert (=> b!659474 (=> (not res!427715) (not e!378909))))

(declare-datatypes ((List!12661 0))(
  ( (Nil!12658) (Cons!12657 (h!13702 (_ BitVec 64)) (t!18897 List!12661)) )
))
(declare-fun acc!681 () List!12661)

(declare-fun contains!3204 (List!12661 (_ BitVec 64)) Bool)

(assert (=> b!659474 (= res!427715 (not (contains!3204 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659475 () Bool)

(declare-fun e!378913 () Bool)

(declare-fun e!378910 () Bool)

(assert (=> b!659475 (= e!378913 e!378910)))

(declare-fun res!427712 () Bool)

(assert (=> b!659475 (=> (not res!427712) (not e!378910))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659475 (= res!427712 (bvsle from!3004 i!1382))))

(declare-fun b!659476 () Bool)

(declare-fun res!427718 () Bool)

(assert (=> b!659476 (=> (not res!427718) (not e!378909))))

(assert (=> b!659476 (= res!427718 (not (contains!3204 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659477 () Bool)

(declare-fun res!427714 () Bool)

(assert (=> b!659477 (=> (not res!427714) (not e!378909))))

(declare-fun noDuplicate!451 (List!12661) Bool)

(assert (=> b!659477 (= res!427714 (noDuplicate!451 acc!681))))

(declare-fun res!427713 () Bool)

(assert (=> start!59718 (=> (not res!427713) (not e!378909))))

(declare-datatypes ((array!38751 0))(
  ( (array!38752 (arr!18567 (Array (_ BitVec 32) (_ BitVec 64))) (size!18931 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38751)

(assert (=> start!59718 (= res!427713 (and (bvslt (size!18931 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18931 a!3626))))))

(assert (=> start!59718 e!378909))

(assert (=> start!59718 true))

(declare-fun array_inv!14341 (array!38751) Bool)

(assert (=> start!59718 (array_inv!14341 a!3626)))

(declare-fun b!659478 () Bool)

(assert (=> b!659478 (= e!378909 false)))

(declare-fun lt!308643 () Bool)

(assert (=> b!659478 (= lt!308643 e!378913)))

(declare-fun res!427716 () Bool)

(assert (=> b!659478 (=> res!427716 e!378913)))

(declare-fun e!378911 () Bool)

(assert (=> b!659478 (= res!427716 e!378911)))

(declare-fun res!427717 () Bool)

(assert (=> b!659478 (=> (not res!427717) (not e!378911))))

(assert (=> b!659478 (= res!427717 (bvsgt from!3004 i!1382))))

(declare-fun b!659479 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659479 (= e!378910 (not (contains!3204 acc!681 k!2843)))))

(declare-fun b!659480 () Bool)

(assert (=> b!659480 (= e!378911 (contains!3204 acc!681 k!2843))))

(assert (= (and start!59718 res!427713) b!659477))

(assert (= (and b!659477 res!427714) b!659474))

(assert (= (and b!659474 res!427715) b!659476))

(assert (= (and b!659476 res!427718) b!659478))

(assert (= (and b!659478 res!427717) b!659480))

(assert (= (and b!659478 (not res!427716)) b!659475))

(assert (= (and b!659475 res!427712) b!659479))

(declare-fun m!632511 () Bool)

(assert (=> b!659479 m!632511))

(declare-fun m!632513 () Bool)

(assert (=> b!659476 m!632513))

(declare-fun m!632515 () Bool)

(assert (=> b!659477 m!632515))

(declare-fun m!632517 () Bool)

(assert (=> b!659474 m!632517))

(assert (=> b!659480 m!632511))

(declare-fun m!632519 () Bool)

(assert (=> start!59718 m!632519))

(push 1)

(assert (not b!659474))

(assert (not b!659480))

(assert (not b!659479))

(assert (not start!59718))

(assert (not b!659477))

(assert (not b!659476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

