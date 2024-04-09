; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59802 () Bool)

(assert start!59802)

(declare-fun b!660225 () Bool)

(declare-fun res!428466 () Bool)

(declare-fun e!379402 () Bool)

(assert (=> b!660225 (=> (not res!428466) (not e!379402))))

(declare-datatypes ((array!38805 0))(
  ( (array!38806 (arr!18591 (Array (_ BitVec 32) (_ BitVec 64))) (size!18955 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38805)

(declare-datatypes ((List!12685 0))(
  ( (Nil!12682) (Cons!12681 (h!13726 (_ BitVec 64)) (t!18921 List!12685)) )
))
(declare-fun arrayNoDuplicates!0 (array!38805 (_ BitVec 32) List!12685) Bool)

(assert (=> b!660225 (= res!428466 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12682))))

(declare-fun b!660226 () Bool)

(declare-fun res!428468 () Bool)

(assert (=> b!660226 (=> (not res!428468) (not e!379402))))

(declare-fun acc!681 () List!12685)

(declare-fun contains!3228 (List!12685 (_ BitVec 64)) Bool)

(assert (=> b!660226 (= res!428468 (not (contains!3228 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660228 () Bool)

(declare-fun res!428469 () Bool)

(assert (=> b!660228 (=> (not res!428469) (not e!379402))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!660228 (= res!428469 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660229 () Bool)

(declare-fun e!379400 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660229 (= e!379400 (not (contains!3228 acc!681 k!2843)))))

(declare-fun b!660230 () Bool)

(declare-fun res!428473 () Bool)

(assert (=> b!660230 (=> (not res!428473) (not e!379402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660230 (= res!428473 (validKeyInArray!0 k!2843))))

(declare-fun b!660231 () Bool)

(declare-fun e!379398 () Bool)

(assert (=> b!660231 (= e!379398 e!379400)))

(declare-fun res!428474 () Bool)

(assert (=> b!660231 (=> (not res!428474) (not e!379400))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660231 (= res!428474 (bvsle from!3004 i!1382))))

(declare-fun b!660232 () Bool)

(declare-fun res!428472 () Bool)

(assert (=> b!660232 (=> (not res!428472) (not e!379402))))

(declare-fun noDuplicate!475 (List!12685) Bool)

(assert (=> b!660232 (= res!428472 (noDuplicate!475 acc!681))))

(declare-fun b!660227 () Bool)

(declare-fun res!428463 () Bool)

(assert (=> b!660227 (=> (not res!428463) (not e!379402))))

(assert (=> b!660227 (= res!428463 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18955 a!3626))))))

(declare-fun res!428470 () Bool)

(assert (=> start!59802 (=> (not res!428470) (not e!379402))))

(assert (=> start!59802 (= res!428470 (and (bvslt (size!18955 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18955 a!3626))))))

(assert (=> start!59802 e!379402))

(assert (=> start!59802 true))

(declare-fun array_inv!14365 (array!38805) Bool)

(assert (=> start!59802 (array_inv!14365 a!3626)))

(declare-fun b!660233 () Bool)

(declare-fun res!428471 () Bool)

(assert (=> b!660233 (=> (not res!428471) (not e!379402))))

(assert (=> b!660233 (= res!428471 e!379398)))

(declare-fun res!428467 () Bool)

(assert (=> b!660233 (=> res!428467 e!379398)))

(declare-fun e!379399 () Bool)

(assert (=> b!660233 (= res!428467 e!379399)))

(declare-fun res!428465 () Bool)

(assert (=> b!660233 (=> (not res!428465) (not e!379399))))

(assert (=> b!660233 (= res!428465 (bvsgt from!3004 i!1382))))

(declare-fun b!660234 () Bool)

(declare-fun res!428464 () Bool)

(assert (=> b!660234 (=> (not res!428464) (not e!379402))))

(assert (=> b!660234 (= res!428464 (not (contains!3228 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660235 () Bool)

(assert (=> b!660235 (= e!379399 (contains!3228 acc!681 k!2843))))

(declare-fun b!660236 () Bool)

(assert (=> b!660236 (= e!379402 (bvsge #b00000000000000000000000000000000 (size!18955 a!3626)))))

(assert (= (and start!59802 res!428470) b!660232))

(assert (= (and b!660232 res!428472) b!660234))

(assert (= (and b!660234 res!428464) b!660226))

(assert (= (and b!660226 res!428468) b!660233))

(assert (= (and b!660233 res!428465) b!660235))

(assert (= (and b!660233 (not res!428467)) b!660231))

(assert (= (and b!660231 res!428474) b!660229))

(assert (= (and b!660233 res!428471) b!660225))

(assert (= (and b!660225 res!428466) b!660228))

(assert (= (and b!660228 res!428469) b!660227))

(assert (= (and b!660227 res!428463) b!660230))

(assert (= (and b!660230 res!428473) b!660236))

(declare-fun m!632973 () Bool)

(assert (=> start!59802 m!632973))

(declare-fun m!632975 () Bool)

(assert (=> b!660234 m!632975))

(declare-fun m!632977 () Bool)

(assert (=> b!660232 m!632977))

(declare-fun m!632979 () Bool)

(assert (=> b!660235 m!632979))

(declare-fun m!632981 () Bool)

(assert (=> b!660228 m!632981))

(declare-fun m!632983 () Bool)

(assert (=> b!660230 m!632983))

(declare-fun m!632985 () Bool)

(assert (=> b!660225 m!632985))

(assert (=> b!660229 m!632979))

(declare-fun m!632987 () Bool)

(assert (=> b!660226 m!632987))

(push 1)

