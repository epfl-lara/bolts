; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59714 () Bool)

(assert start!59714)

(declare-fun b!659428 () Bool)

(declare-fun e!378883 () Bool)

(declare-datatypes ((List!12659 0))(
  ( (Nil!12656) (Cons!12655 (h!13700 (_ BitVec 64)) (t!18895 List!12659)) )
))
(declare-fun acc!681 () List!12659)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3202 (List!12659 (_ BitVec 64)) Bool)

(assert (=> b!659428 (= e!378883 (contains!3202 acc!681 k0!2843))))

(declare-fun b!659429 () Bool)

(declare-fun res!427670 () Bool)

(declare-fun e!378879 () Bool)

(assert (=> b!659429 (=> (not res!427670) (not e!378879))))

(declare-fun noDuplicate!449 (List!12659) Bool)

(assert (=> b!659429 (= res!427670 (noDuplicate!449 acc!681))))

(declare-fun res!427666 () Bool)

(assert (=> start!59714 (=> (not res!427666) (not e!378879))))

(declare-datatypes ((array!38747 0))(
  ( (array!38748 (arr!18565 (Array (_ BitVec 32) (_ BitVec 64))) (size!18929 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38747)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59714 (= res!427666 (and (bvslt (size!18929 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18929 a!3626))))))

(assert (=> start!59714 e!378879))

(assert (=> start!59714 true))

(declare-fun array_inv!14339 (array!38747) Bool)

(assert (=> start!59714 (array_inv!14339 a!3626)))

(declare-fun b!659430 () Bool)

(declare-fun res!427671 () Bool)

(assert (=> b!659430 (=> (not res!427671) (not e!378879))))

(assert (=> b!659430 (= res!427671 (not (contains!3202 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659431 () Bool)

(declare-fun res!427668 () Bool)

(assert (=> b!659431 (=> (not res!427668) (not e!378879))))

(declare-fun e!378881 () Bool)

(assert (=> b!659431 (= res!427668 e!378881)))

(declare-fun res!427667 () Bool)

(assert (=> b!659431 (=> res!427667 e!378881)))

(assert (=> b!659431 (= res!427667 e!378883)))

(declare-fun res!427669 () Bool)

(assert (=> b!659431 (=> (not res!427669) (not e!378883))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659431 (= res!427669 (bvsgt from!3004 i!1382))))

(declare-fun b!659432 () Bool)

(declare-fun res!427672 () Bool)

(assert (=> b!659432 (=> (not res!427672) (not e!378879))))

(assert (=> b!659432 (= res!427672 (not (contains!3202 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659433 () Bool)

(declare-fun e!378882 () Bool)

(assert (=> b!659433 (= e!378882 (not (contains!3202 acc!681 k0!2843)))))

(declare-fun b!659434 () Bool)

(assert (=> b!659434 (= e!378879 (bvsgt #b00000000000000000000000000000000 (size!18929 a!3626)))))

(declare-fun b!659435 () Bool)

(assert (=> b!659435 (= e!378881 e!378882)))

(declare-fun res!427673 () Bool)

(assert (=> b!659435 (=> (not res!427673) (not e!378882))))

(assert (=> b!659435 (= res!427673 (bvsle from!3004 i!1382))))

(assert (= (and start!59714 res!427666) b!659429))

(assert (= (and b!659429 res!427670) b!659430))

(assert (= (and b!659430 res!427671) b!659432))

(assert (= (and b!659432 res!427672) b!659431))

(assert (= (and b!659431 res!427669) b!659428))

(assert (= (and b!659431 (not res!427667)) b!659435))

(assert (= (and b!659435 res!427673) b!659433))

(assert (= (and b!659431 res!427668) b!659434))

(declare-fun m!632491 () Bool)

(assert (=> start!59714 m!632491))

(declare-fun m!632493 () Bool)

(assert (=> b!659428 m!632493))

(assert (=> b!659433 m!632493))

(declare-fun m!632495 () Bool)

(assert (=> b!659430 m!632495))

(declare-fun m!632497 () Bool)

(assert (=> b!659429 m!632497))

(declare-fun m!632499 () Bool)

(assert (=> b!659432 m!632499))

(check-sat (not b!659430) (not b!659432) (not start!59714) (not b!659428) (not b!659429) (not b!659433))
(check-sat)
