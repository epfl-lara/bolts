; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59722 () Bool)

(assert start!59722)

(declare-fun b!659516 () Bool)

(declare-fun e!378941 () Bool)

(declare-datatypes ((List!12663 0))(
  ( (Nil!12660) (Cons!12659 (h!13704 (_ BitVec 64)) (t!18899 List!12663)) )
))
(declare-fun acc!681 () List!12663)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3206 (List!12663 (_ BitVec 64)) Bool)

(assert (=> b!659516 (= e!378941 (contains!3206 acc!681 k!2843))))

(declare-fun b!659517 () Bool)

(declare-fun e!378939 () Bool)

(assert (=> b!659517 (= e!378939 false)))

(declare-fun lt!308649 () Bool)

(declare-fun e!378940 () Bool)

(assert (=> b!659517 (= lt!308649 e!378940)))

(declare-fun res!427760 () Bool)

(assert (=> b!659517 (=> res!427760 e!378940)))

(assert (=> b!659517 (= res!427760 e!378941)))

(declare-fun res!427754 () Bool)

(assert (=> b!659517 (=> (not res!427754) (not e!378941))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659517 (= res!427754 (bvsgt from!3004 i!1382))))

(declare-fun b!659518 () Bool)

(declare-fun res!427758 () Bool)

(assert (=> b!659518 (=> (not res!427758) (not e!378939))))

(assert (=> b!659518 (= res!427758 (not (contains!3206 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659519 () Bool)

(declare-fun res!427759 () Bool)

(assert (=> b!659519 (=> (not res!427759) (not e!378939))))

(assert (=> b!659519 (= res!427759 (not (contains!3206 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659520 () Bool)

(declare-fun e!378942 () Bool)

(assert (=> b!659520 (= e!378942 (not (contains!3206 acc!681 k!2843)))))

(declare-fun b!659521 () Bool)

(declare-fun res!427757 () Bool)

(assert (=> b!659521 (=> (not res!427757) (not e!378939))))

(declare-fun noDuplicate!453 (List!12663) Bool)

(assert (=> b!659521 (= res!427757 (noDuplicate!453 acc!681))))

(declare-fun b!659522 () Bool)

(assert (=> b!659522 (= e!378940 e!378942)))

(declare-fun res!427756 () Bool)

(assert (=> b!659522 (=> (not res!427756) (not e!378942))))

(assert (=> b!659522 (= res!427756 (bvsle from!3004 i!1382))))

(declare-fun res!427755 () Bool)

(assert (=> start!59722 (=> (not res!427755) (not e!378939))))

(declare-datatypes ((array!38755 0))(
  ( (array!38756 (arr!18569 (Array (_ BitVec 32) (_ BitVec 64))) (size!18933 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38755)

(assert (=> start!59722 (= res!427755 (and (bvslt (size!18933 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18933 a!3626))))))

(assert (=> start!59722 e!378939))

(assert (=> start!59722 true))

(declare-fun array_inv!14343 (array!38755) Bool)

(assert (=> start!59722 (array_inv!14343 a!3626)))

(assert (= (and start!59722 res!427755) b!659521))

(assert (= (and b!659521 res!427757) b!659518))

(assert (= (and b!659518 res!427758) b!659519))

(assert (= (and b!659519 res!427759) b!659517))

(assert (= (and b!659517 res!427754) b!659516))

(assert (= (and b!659517 (not res!427760)) b!659522))

(assert (= (and b!659522 res!427756) b!659520))

(declare-fun m!632531 () Bool)

(assert (=> b!659518 m!632531))

(declare-fun m!632533 () Bool)

(assert (=> b!659519 m!632533))

(declare-fun m!632535 () Bool)

(assert (=> start!59722 m!632535))

(declare-fun m!632537 () Bool)

(assert (=> b!659520 m!632537))

(assert (=> b!659516 m!632537))

(declare-fun m!632539 () Bool)

(assert (=> b!659521 m!632539))

(push 1)

(assert (not b!659519))

(assert (not b!659521))

(assert (not b!659516))

(assert (not b!659518))

(assert (not start!59722))

(assert (not b!659520))

(check-sat)

