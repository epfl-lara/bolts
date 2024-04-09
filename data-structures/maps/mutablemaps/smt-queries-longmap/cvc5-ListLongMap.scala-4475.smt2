; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62292 () Bool)

(assert start!62292)

(declare-fun b!697554 () Bool)

(declare-fun res!461606 () Bool)

(declare-fun e!396548 () Bool)

(assert (=> b!697554 (=> (not res!461606) (not e!396548))))

(declare-datatypes ((List!13231 0))(
  ( (Nil!13228) (Cons!13227 (h!14272 (_ BitVec 64)) (t!19521 List!13231)) )
))
(declare-fun acc!681 () List!13231)

(declare-fun contains!3774 (List!13231 (_ BitVec 64)) Bool)

(assert (=> b!697554 (= res!461606 (not (contains!3774 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697555 () Bool)

(declare-fun res!461612 () Bool)

(assert (=> b!697555 (=> (not res!461612) (not e!396548))))

(declare-fun e!396550 () Bool)

(assert (=> b!697555 (= res!461612 e!396550)))

(declare-fun res!461611 () Bool)

(assert (=> b!697555 (=> res!461611 e!396550)))

(declare-fun e!396547 () Bool)

(assert (=> b!697555 (= res!461611 e!396547)))

(declare-fun res!461604 () Bool)

(assert (=> b!697555 (=> (not res!461604) (not e!396547))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697555 (= res!461604 (bvsgt from!3004 i!1382))))

(declare-fun b!697556 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!697556 (= e!396547 (contains!3774 acc!681 k!2843))))

(declare-fun b!697557 () Bool)

(declare-fun res!461610 () Bool)

(assert (=> b!697557 (=> (not res!461610) (not e!396548))))

(declare-datatypes ((array!39966 0))(
  ( (array!39967 (arr!19137 (Array (_ BitVec 32) (_ BitVec 64))) (size!19520 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39966)

(declare-fun arrayNoDuplicates!0 (array!39966 (_ BitVec 32) List!13231) Bool)

(assert (=> b!697557 (= res!461610 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13228))))

(declare-fun b!697558 () Bool)

(declare-fun e!396549 () Bool)

(assert (=> b!697558 (= e!396550 e!396549)))

(declare-fun res!461608 () Bool)

(assert (=> b!697558 (=> (not res!461608) (not e!396549))))

(assert (=> b!697558 (= res!461608 (bvsle from!3004 i!1382))))

(declare-fun b!697559 () Bool)

(declare-fun res!461607 () Bool)

(assert (=> b!697559 (=> (not res!461607) (not e!396548))))

(assert (=> b!697559 (= res!461607 (not (contains!3774 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697560 () Bool)

(assert (=> b!697560 (= e!396548 false)))

(declare-fun lt!317130 () Bool)

(assert (=> b!697560 (= lt!317130 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!461609 () Bool)

(assert (=> start!62292 (=> (not res!461609) (not e!396548))))

(assert (=> start!62292 (= res!461609 (and (bvslt (size!19520 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19520 a!3626))))))

(assert (=> start!62292 e!396548))

(assert (=> start!62292 true))

(declare-fun array_inv!14911 (array!39966) Bool)

(assert (=> start!62292 (array_inv!14911 a!3626)))

(declare-fun b!697561 () Bool)

(assert (=> b!697561 (= e!396549 (not (contains!3774 acc!681 k!2843)))))

(declare-fun b!697562 () Bool)

(declare-fun res!461605 () Bool)

(assert (=> b!697562 (=> (not res!461605) (not e!396548))))

(declare-fun noDuplicate!1021 (List!13231) Bool)

(assert (=> b!697562 (= res!461605 (noDuplicate!1021 acc!681))))

(assert (= (and start!62292 res!461609) b!697562))

(assert (= (and b!697562 res!461605) b!697554))

(assert (= (and b!697554 res!461606) b!697559))

(assert (= (and b!697559 res!461607) b!697555))

(assert (= (and b!697555 res!461604) b!697556))

(assert (= (and b!697555 (not res!461611)) b!697558))

(assert (= (and b!697558 res!461608) b!697561))

(assert (= (and b!697555 res!461612) b!697557))

(assert (= (and b!697557 res!461610) b!697560))

(declare-fun m!657975 () Bool)

(assert (=> b!697559 m!657975))

(declare-fun m!657977 () Bool)

(assert (=> b!697554 m!657977))

(declare-fun m!657979 () Bool)

(assert (=> b!697561 m!657979))

(assert (=> b!697556 m!657979))

(declare-fun m!657981 () Bool)

(assert (=> start!62292 m!657981))

(declare-fun m!657983 () Bool)

(assert (=> b!697557 m!657983))

(declare-fun m!657985 () Bool)

(assert (=> b!697562 m!657985))

(declare-fun m!657987 () Bool)

(assert (=> b!697560 m!657987))

(push 1)

(assert (not b!697554))

(assert (not b!697561))

(assert (not b!697560))

(assert (not b!697557))

(assert (not b!697562))

(assert (not b!697559))

(assert (not b!697556))

(assert (not start!62292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

