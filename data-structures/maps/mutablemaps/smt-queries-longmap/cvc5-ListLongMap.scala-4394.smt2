; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60444 () Bool)

(assert start!60444)

(declare-fun b!678820 () Bool)

(declare-fun res!445391 () Bool)

(declare-fun e!386785 () Bool)

(assert (=> b!678820 (=> (not res!445391) (not e!386785))))

(declare-datatypes ((array!39414 0))(
  ( (array!39415 (arr!18894 (Array (_ BitVec 32) (_ BitVec 64))) (size!19258 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39414)

(declare-datatypes ((List!12988 0))(
  ( (Nil!12985) (Cons!12984 (h!14029 (_ BitVec 64)) (t!19224 List!12988)) )
))
(declare-fun arrayNoDuplicates!0 (array!39414 (_ BitVec 32) List!12988) Bool)

(assert (=> b!678820 (= res!445391 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12985))))

(declare-fun res!445382 () Bool)

(assert (=> start!60444 (=> (not res!445382) (not e!386785))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60444 (= res!445382 (and (bvslt (size!19258 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19258 a!3626))))))

(assert (=> start!60444 e!386785))

(assert (=> start!60444 true))

(declare-fun array_inv!14668 (array!39414) Bool)

(assert (=> start!60444 (array_inv!14668 a!3626)))

(declare-fun b!678821 () Bool)

(declare-fun res!445380 () Bool)

(assert (=> b!678821 (=> (not res!445380) (not e!386785))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678821 (= res!445380 (validKeyInArray!0 k!2843))))

(declare-fun b!678822 () Bool)

(declare-fun e!386784 () Bool)

(declare-fun e!386783 () Bool)

(assert (=> b!678822 (= e!386784 e!386783)))

(declare-fun res!445385 () Bool)

(assert (=> b!678822 (=> (not res!445385) (not e!386783))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678822 (= res!445385 (bvsle from!3004 i!1382))))

(declare-fun b!678823 () Bool)

(declare-fun res!445389 () Bool)

(assert (=> b!678823 (=> (not res!445389) (not e!386785))))

(declare-fun arrayContainsKey!0 (array!39414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678823 (= res!445389 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678824 () Bool)

(declare-fun res!445379 () Bool)

(assert (=> b!678824 (=> (not res!445379) (not e!386785))))

(assert (=> b!678824 (= res!445379 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19258 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678825 () Bool)

(declare-fun res!445390 () Bool)

(assert (=> b!678825 (=> (not res!445390) (not e!386785))))

(declare-fun acc!681 () List!12988)

(declare-fun contains!3531 (List!12988 (_ BitVec 64)) Bool)

(assert (=> b!678825 (= res!445390 (not (contains!3531 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678826 () Bool)

(declare-fun res!445388 () Bool)

(assert (=> b!678826 (=> (not res!445388) (not e!386785))))

(assert (=> b!678826 (= res!445388 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19258 a!3626))))))

(declare-fun b!678827 () Bool)

(assert (=> b!678827 (= e!386783 (not (contains!3531 acc!681 k!2843)))))

(declare-fun b!678828 () Bool)

(declare-fun res!445378 () Bool)

(assert (=> b!678828 (=> (not res!445378) (not e!386785))))

(assert (=> b!678828 (= res!445378 (not (contains!3531 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678829 () Bool)

(declare-fun res!445387 () Bool)

(assert (=> b!678829 (=> (not res!445387) (not e!386785))))

(declare-fun noDuplicate!778 (List!12988) Bool)

(assert (=> b!678829 (= res!445387 (noDuplicate!778 acc!681))))

(declare-fun b!678830 () Bool)

(assert (=> b!678830 (= e!386785 (not true))))

(assert (=> b!678830 (arrayContainsKey!0 (array!39415 (store (arr!18894 a!3626) i!1382 k!2843) (size!19258 a!3626)) k!2843 from!3004)))

(declare-fun b!678831 () Bool)

(declare-fun res!445383 () Bool)

(assert (=> b!678831 (=> (not res!445383) (not e!386785))))

(assert (=> b!678831 (= res!445383 e!386784)))

(declare-fun res!445381 () Bool)

(assert (=> b!678831 (=> res!445381 e!386784)))

(declare-fun e!386781 () Bool)

(assert (=> b!678831 (= res!445381 e!386781)))

(declare-fun res!445384 () Bool)

(assert (=> b!678831 (=> (not res!445384) (not e!386781))))

(assert (=> b!678831 (= res!445384 (bvsgt from!3004 i!1382))))

(declare-fun b!678832 () Bool)

(assert (=> b!678832 (= e!386781 (contains!3531 acc!681 k!2843))))

(declare-fun b!678833 () Bool)

(declare-fun res!445386 () Bool)

(assert (=> b!678833 (=> (not res!445386) (not e!386785))))

(assert (=> b!678833 (= res!445386 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60444 res!445382) b!678829))

(assert (= (and b!678829 res!445387) b!678825))

(assert (= (and b!678825 res!445390) b!678828))

(assert (= (and b!678828 res!445378) b!678831))

(assert (= (and b!678831 res!445384) b!678832))

(assert (= (and b!678831 (not res!445381)) b!678822))

(assert (= (and b!678822 res!445385) b!678827))

(assert (= (and b!678831 res!445383) b!678820))

(assert (= (and b!678820 res!445391) b!678833))

(assert (= (and b!678833 res!445386) b!678826))

(assert (= (and b!678826 res!445388) b!678821))

(assert (= (and b!678821 res!445380) b!678823))

(assert (= (and b!678823 res!445389) b!678824))

(assert (= (and b!678824 res!445379) b!678830))

(declare-fun m!644433 () Bool)

(assert (=> b!678821 m!644433))

(declare-fun m!644435 () Bool)

(assert (=> b!678832 m!644435))

(declare-fun m!644437 () Bool)

(assert (=> start!60444 m!644437))

(declare-fun m!644439 () Bool)

(assert (=> b!678833 m!644439))

(declare-fun m!644441 () Bool)

(assert (=> b!678820 m!644441))

(declare-fun m!644443 () Bool)

(assert (=> b!678829 m!644443))

(assert (=> b!678827 m!644435))

(declare-fun m!644445 () Bool)

(assert (=> b!678828 m!644445))

(declare-fun m!644447 () Bool)

(assert (=> b!678825 m!644447))

(declare-fun m!644449 () Bool)

(assert (=> b!678823 m!644449))

(declare-fun m!644451 () Bool)

(assert (=> b!678830 m!644451))

(declare-fun m!644453 () Bool)

(assert (=> b!678830 m!644453))

(push 1)

(assert (not b!678827))

(assert (not b!678823))

(assert (not b!678820))

(assert (not b!678830))

(assert (not b!678825))

(assert (not start!60444))

(assert (not b!678832))

(assert (not b!678833))

(assert (not b!678821))

(assert (not b!678829))

(assert (not b!678828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

