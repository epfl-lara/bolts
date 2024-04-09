; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60360 () Bool)

(assert start!60360)

(declare-fun b!677787 () Bool)

(declare-fun res!444394 () Bool)

(declare-fun e!386292 () Bool)

(assert (=> b!677787 (=> (not res!444394) (not e!386292))))

(declare-fun e!386294 () Bool)

(assert (=> b!677787 (= res!444394 e!386294)))

(declare-fun res!444392 () Bool)

(assert (=> b!677787 (=> res!444392 e!386294)))

(declare-fun e!386295 () Bool)

(assert (=> b!677787 (= res!444392 e!386295)))

(declare-fun res!444395 () Bool)

(assert (=> b!677787 (=> (not res!444395) (not e!386295))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677787 (= res!444395 (bvsgt from!3004 i!1382))))

(declare-fun b!677788 () Bool)

(assert (=> b!677788 (= e!386292 false)))

(declare-fun lt!312792 () Bool)

(declare-datatypes ((array!39363 0))(
  ( (array!39364 (arr!18870 (Array (_ BitVec 32) (_ BitVec 64))) (size!19234 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39363)

(declare-datatypes ((List!12964 0))(
  ( (Nil!12961) (Cons!12960 (h!14005 (_ BitVec 64)) (t!19200 List!12964)) )
))
(declare-fun acc!681 () List!12964)

(declare-fun arrayNoDuplicates!0 (array!39363 (_ BitVec 32) List!12964) Bool)

(assert (=> b!677788 (= lt!312792 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677790 () Bool)

(declare-fun res!444387 () Bool)

(assert (=> b!677790 (=> (not res!444387) (not e!386292))))

(declare-fun contains!3507 (List!12964 (_ BitVec 64)) Bool)

(assert (=> b!677790 (= res!444387 (not (contains!3507 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677791 () Bool)

(declare-fun e!386296 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!677791 (= e!386296 (not (contains!3507 acc!681 k!2843)))))

(declare-fun b!677792 () Bool)

(assert (=> b!677792 (= e!386295 (contains!3507 acc!681 k!2843))))

(declare-fun b!677793 () Bool)

(declare-fun res!444389 () Bool)

(assert (=> b!677793 (=> (not res!444389) (not e!386292))))

(declare-fun noDuplicate!754 (List!12964) Bool)

(assert (=> b!677793 (= res!444389 (noDuplicate!754 acc!681))))

(declare-fun b!677789 () Bool)

(assert (=> b!677789 (= e!386294 e!386296)))

(declare-fun res!444391 () Bool)

(assert (=> b!677789 (=> (not res!444391) (not e!386296))))

(assert (=> b!677789 (= res!444391 (bvsle from!3004 i!1382))))

(declare-fun res!444393 () Bool)

(assert (=> start!60360 (=> (not res!444393) (not e!386292))))

(assert (=> start!60360 (= res!444393 (and (bvslt (size!19234 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19234 a!3626))))))

(assert (=> start!60360 e!386292))

(assert (=> start!60360 true))

(declare-fun array_inv!14644 (array!39363) Bool)

(assert (=> start!60360 (array_inv!14644 a!3626)))

(declare-fun b!677794 () Bool)

(declare-fun res!444390 () Bool)

(assert (=> b!677794 (=> (not res!444390) (not e!386292))))

(assert (=> b!677794 (= res!444390 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12961))))

(declare-fun b!677795 () Bool)

(declare-fun res!444388 () Bool)

(assert (=> b!677795 (=> (not res!444388) (not e!386292))))

(assert (=> b!677795 (= res!444388 (not (contains!3507 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60360 res!444393) b!677793))

(assert (= (and b!677793 res!444389) b!677795))

(assert (= (and b!677795 res!444388) b!677790))

(assert (= (and b!677790 res!444387) b!677787))

(assert (= (and b!677787 res!444395) b!677792))

(assert (= (and b!677787 (not res!444392)) b!677789))

(assert (= (and b!677789 res!444391) b!677791))

(assert (= (and b!677787 res!444394) b!677794))

(assert (= (and b!677794 res!444390) b!677788))

(declare-fun m!643857 () Bool)

(assert (=> b!677791 m!643857))

(declare-fun m!643859 () Bool)

(assert (=> b!677788 m!643859))

(assert (=> b!677792 m!643857))

(declare-fun m!643861 () Bool)

(assert (=> b!677795 m!643861))

(declare-fun m!643863 () Bool)

(assert (=> b!677793 m!643863))

(declare-fun m!643865 () Bool)

(assert (=> b!677790 m!643865))

(declare-fun m!643867 () Bool)

(assert (=> start!60360 m!643867))

(declare-fun m!643869 () Bool)

(assert (=> b!677794 m!643869))

(push 1)

(assert (not b!677790))

(assert (not b!677793))

(assert (not b!677795))

(assert (not start!60360))

(assert (not b!677794))

(assert (not b!677791))

(assert (not b!677788))

(assert (not b!677792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

