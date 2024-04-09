; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59866 () Bool)

(assert start!59866)

(declare-fun b!661375 () Bool)

(declare-fun e!379879 () Bool)

(assert (=> b!661375 (= e!379879 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38869 0))(
  ( (array!38870 (arr!18623 (Array (_ BitVec 32) (_ BitVec 64))) (size!18987 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38869)

(declare-fun arrayContainsKey!0 (array!38869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661375 (arrayContainsKey!0 (array!38870 (store (arr!18623 a!3626) i!1382 k!2843) (size!18987 a!3626)) k!2843 from!3004)))

(declare-fun b!661376 () Bool)

(declare-fun res!429623 () Bool)

(assert (=> b!661376 (=> (not res!429623) (not e!379879))))

(assert (=> b!661376 (= res!429623 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661377 () Bool)

(declare-fun res!429622 () Bool)

(assert (=> b!661377 (=> (not res!429622) (not e!379879))))

(assert (=> b!661377 (= res!429622 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18987 a!3626))))))

(declare-fun res!429624 () Bool)

(assert (=> start!59866 (=> (not res!429624) (not e!379879))))

(assert (=> start!59866 (= res!429624 (and (bvslt (size!18987 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18987 a!3626))))))

(assert (=> start!59866 e!379879))

(assert (=> start!59866 true))

(declare-fun array_inv!14397 (array!38869) Bool)

(assert (=> start!59866 (array_inv!14397 a!3626)))

(declare-fun b!661378 () Bool)

(declare-fun res!429617 () Bool)

(assert (=> b!661378 (=> (not res!429617) (not e!379879))))

(assert (=> b!661378 (= res!429617 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18987 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661379 () Bool)

(declare-fun res!429615 () Bool)

(assert (=> b!661379 (=> (not res!429615) (not e!379879))))

(declare-fun e!379878 () Bool)

(assert (=> b!661379 (= res!429615 e!379878)))

(declare-fun res!429621 () Bool)

(assert (=> b!661379 (=> res!429621 e!379878)))

(declare-fun e!379881 () Bool)

(assert (=> b!661379 (= res!429621 e!379881)))

(declare-fun res!429614 () Bool)

(assert (=> b!661379 (=> (not res!429614) (not e!379881))))

(assert (=> b!661379 (= res!429614 (bvsgt from!3004 i!1382))))

(declare-fun b!661380 () Bool)

(declare-datatypes ((List!12717 0))(
  ( (Nil!12714) (Cons!12713 (h!13758 (_ BitVec 64)) (t!18953 List!12717)) )
))
(declare-fun acc!681 () List!12717)

(declare-fun contains!3260 (List!12717 (_ BitVec 64)) Bool)

(assert (=> b!661380 (= e!379881 (contains!3260 acc!681 k!2843))))

(declare-fun b!661381 () Bool)

(declare-fun res!429618 () Bool)

(assert (=> b!661381 (=> (not res!429618) (not e!379879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661381 (= res!429618 (validKeyInArray!0 k!2843))))

(declare-fun b!661382 () Bool)

(declare-fun res!429625 () Bool)

(assert (=> b!661382 (=> (not res!429625) (not e!379879))))

(assert (=> b!661382 (= res!429625 (not (contains!3260 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661383 () Bool)

(declare-fun e!379882 () Bool)

(assert (=> b!661383 (= e!379882 (not (contains!3260 acc!681 k!2843)))))

(declare-fun b!661384 () Bool)

(declare-fun res!429616 () Bool)

(assert (=> b!661384 (=> (not res!429616) (not e!379879))))

(declare-fun arrayNoDuplicates!0 (array!38869 (_ BitVec 32) List!12717) Bool)

(assert (=> b!661384 (= res!429616 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661385 () Bool)

(declare-fun res!429613 () Bool)

(assert (=> b!661385 (=> (not res!429613) (not e!379879))))

(declare-fun noDuplicate!507 (List!12717) Bool)

(assert (=> b!661385 (= res!429613 (noDuplicate!507 acc!681))))

(declare-fun b!661386 () Bool)

(assert (=> b!661386 (= e!379878 e!379882)))

(declare-fun res!429626 () Bool)

(assert (=> b!661386 (=> (not res!429626) (not e!379882))))

(assert (=> b!661386 (= res!429626 (bvsle from!3004 i!1382))))

(declare-fun b!661387 () Bool)

(declare-fun res!429620 () Bool)

(assert (=> b!661387 (=> (not res!429620) (not e!379879))))

(assert (=> b!661387 (= res!429620 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12714))))

(declare-fun b!661388 () Bool)

(declare-fun res!429619 () Bool)

(assert (=> b!661388 (=> (not res!429619) (not e!379879))))

(assert (=> b!661388 (= res!429619 (not (contains!3260 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59866 res!429624) b!661385))

(assert (= (and b!661385 res!429613) b!661382))

(assert (= (and b!661382 res!429625) b!661388))

(assert (= (and b!661388 res!429619) b!661379))

(assert (= (and b!661379 res!429614) b!661380))

(assert (= (and b!661379 (not res!429621)) b!661386))

(assert (= (and b!661386 res!429626) b!661383))

(assert (= (and b!661379 res!429615) b!661387))

(assert (= (and b!661387 res!429620) b!661384))

(assert (= (and b!661384 res!429616) b!661377))

(assert (= (and b!661377 res!429622) b!661381))

(assert (= (and b!661381 res!429618) b!661376))

(assert (= (and b!661376 res!429623) b!661378))

(assert (= (and b!661378 res!429617) b!661375))

(declare-fun m!633563 () Bool)

(assert (=> b!661382 m!633563))

(declare-fun m!633565 () Bool)

(assert (=> b!661380 m!633565))

(declare-fun m!633567 () Bool)

(assert (=> b!661384 m!633567))

(declare-fun m!633569 () Bool)

(assert (=> b!661387 m!633569))

(declare-fun m!633571 () Bool)

(assert (=> b!661375 m!633571))

(declare-fun m!633573 () Bool)

(assert (=> b!661375 m!633573))

(assert (=> b!661383 m!633565))

(declare-fun m!633575 () Bool)

(assert (=> b!661388 m!633575))

(declare-fun m!633577 () Bool)

(assert (=> start!59866 m!633577))

(declare-fun m!633579 () Bool)

(assert (=> b!661376 m!633579))

(declare-fun m!633581 () Bool)

(assert (=> b!661381 m!633581))

(declare-fun m!633583 () Bool)

(assert (=> b!661385 m!633583))

(push 1)

(assert (not b!661381))

(assert (not b!661387))

(assert (not b!661383))

(assert (not b!661382))

(assert (not b!661375))

(assert (not b!661380))

(assert (not b!661385))

(assert (not b!661376))

(assert (not b!661384))

(assert (not b!661388))

(assert (not start!59866))

(check-sat)

(pop 1)

(push 1)

