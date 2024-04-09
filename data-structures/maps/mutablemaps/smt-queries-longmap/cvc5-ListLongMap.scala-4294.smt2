; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59808 () Bool)

(assert start!59808)

(declare-fun b!660327 () Bool)

(declare-fun res!428566 () Bool)

(declare-fun e!379443 () Bool)

(assert (=> b!660327 (=> (not res!428566) (not e!379443))))

(declare-fun e!379445 () Bool)

(assert (=> b!660327 (= res!428566 e!379445)))

(declare-fun res!428568 () Bool)

(assert (=> b!660327 (=> res!428568 e!379445)))

(declare-fun e!379447 () Bool)

(assert (=> b!660327 (= res!428568 e!379447)))

(declare-fun res!428572 () Bool)

(assert (=> b!660327 (=> (not res!428572) (not e!379447))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660327 (= res!428572 (bvsgt from!3004 i!1382))))

(declare-fun b!660328 () Bool)

(declare-fun res!428570 () Bool)

(assert (=> b!660328 (=> (not res!428570) (not e!379443))))

(declare-datatypes ((List!12688 0))(
  ( (Nil!12685) (Cons!12684 (h!13729 (_ BitVec 64)) (t!18924 List!12688)) )
))
(declare-fun acc!681 () List!12688)

(declare-fun contains!3231 (List!12688 (_ BitVec 64)) Bool)

(assert (=> b!660328 (= res!428570 (not (contains!3231 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660329 () Bool)

(declare-fun res!428569 () Bool)

(assert (=> b!660329 (=> (not res!428569) (not e!379443))))

(assert (=> b!660329 (= res!428569 (not (contains!3231 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660330 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660330 (= e!379447 (contains!3231 acc!681 k!2843))))

(declare-fun b!660331 () Bool)

(declare-fun res!428567 () Bool)

(assert (=> b!660331 (=> (not res!428567) (not e!379443))))

(declare-fun noDuplicate!478 (List!12688) Bool)

(assert (=> b!660331 (= res!428567 (noDuplicate!478 acc!681))))

(declare-fun b!660332 () Bool)

(declare-fun res!428565 () Bool)

(assert (=> b!660332 (=> (not res!428565) (not e!379443))))

(declare-datatypes ((array!38811 0))(
  ( (array!38812 (arr!18594 (Array (_ BitVec 32) (_ BitVec 64))) (size!18958 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38811)

(declare-fun arrayNoDuplicates!0 (array!38811 (_ BitVec 32) List!12688) Bool)

(assert (=> b!660332 (= res!428565 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12685))))

(declare-fun b!660333 () Bool)

(declare-fun e!379446 () Bool)

(assert (=> b!660333 (= e!379445 e!379446)))

(declare-fun res!428573 () Bool)

(assert (=> b!660333 (=> (not res!428573) (not e!379446))))

(assert (=> b!660333 (= res!428573 (bvsle from!3004 i!1382))))

(declare-fun res!428571 () Bool)

(assert (=> start!59808 (=> (not res!428571) (not e!379443))))

(assert (=> start!59808 (= res!428571 (and (bvslt (size!18958 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18958 a!3626))))))

(assert (=> start!59808 e!379443))

(assert (=> start!59808 true))

(declare-fun array_inv!14368 (array!38811) Bool)

(assert (=> start!59808 (array_inv!14368 a!3626)))

(declare-fun b!660334 () Bool)

(assert (=> b!660334 (= e!379443 false)))

(declare-fun lt!308724 () Bool)

(assert (=> b!660334 (= lt!308724 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660335 () Bool)

(assert (=> b!660335 (= e!379446 (not (contains!3231 acc!681 k!2843)))))

(assert (= (and start!59808 res!428571) b!660331))

(assert (= (and b!660331 res!428567) b!660329))

(assert (= (and b!660329 res!428569) b!660328))

(assert (= (and b!660328 res!428570) b!660327))

(assert (= (and b!660327 res!428572) b!660330))

(assert (= (and b!660327 (not res!428568)) b!660333))

(assert (= (and b!660333 res!428573) b!660335))

(assert (= (and b!660327 res!428566) b!660332))

(assert (= (and b!660332 res!428565) b!660334))

(declare-fun m!633021 () Bool)

(assert (=> start!59808 m!633021))

(declare-fun m!633023 () Bool)

(assert (=> b!660334 m!633023))

(declare-fun m!633025 () Bool)

(assert (=> b!660328 m!633025))

(declare-fun m!633027 () Bool)

(assert (=> b!660329 m!633027))

(declare-fun m!633029 () Bool)

(assert (=> b!660330 m!633029))

(assert (=> b!660335 m!633029))

(declare-fun m!633031 () Bool)

(assert (=> b!660332 m!633031))

(declare-fun m!633033 () Bool)

(assert (=> b!660331 m!633033))

(push 1)

(assert (not start!59808))

(assert (not b!660330))

(assert (not b!660331))

(assert (not b!660328))

(assert (not b!660334))

(assert (not b!660332))

(assert (not b!660335))

(assert (not b!660329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

