; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114116 () Bool)

(assert start!114116)

(declare-fun b!1354375 () Bool)

(declare-fun res!899564 () Bool)

(declare-fun e!769421 () Bool)

(assert (=> b!1354375 (=> (not res!899564) (not e!769421))))

(declare-datatypes ((array!92221 0))(
  ( (array!92222 (arr!44554 (Array (_ BitVec 32) (_ BitVec 64))) (size!45105 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92221)

(declare-datatypes ((List!31775 0))(
  ( (Nil!31772) (Cons!31771 (h!32980 (_ BitVec 64)) (t!46440 List!31775)) )
))
(declare-fun arrayNoDuplicates!0 (array!92221 (_ BitVec 32) List!31775) Bool)

(assert (=> b!1354375 (= res!899564 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31772))))

(declare-fun b!1354376 () Bool)

(declare-datatypes ((Unit!44426 0))(
  ( (Unit!44427) )
))
(declare-fun e!769419 () Unit!44426)

(declare-fun lt!598201 () Unit!44426)

(assert (=> b!1354376 (= e!769419 lt!598201)))

(declare-fun lt!598198 () Unit!44426)

(declare-fun acc!759 () List!31775)

(declare-fun lemmaListSubSeqRefl!0 (List!31775) Unit!44426)

(assert (=> b!1354376 (= lt!598198 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!749 (List!31775 List!31775) Bool)

(assert (=> b!1354376 (subseq!749 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92221 List!31775 List!31775 (_ BitVec 32)) Unit!44426)

(declare-fun $colon$colon!766 (List!31775 (_ BitVec 64)) List!31775)

(assert (=> b!1354376 (= lt!598201 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!766 acc!759 (select (arr!44554 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354376 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354377 () Bool)

(declare-fun e!769423 () Bool)

(assert (=> b!1354377 (= e!769423 (not (bvsle from!3120 (size!45105 a!3742))))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun lt!598200 () List!31775)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354377 (arrayNoDuplicates!0 (array!92222 (store (arr!44554 a!3742) i!1404 l!3587) (size!45105 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598200)))

(declare-fun lt!598202 () Unit!44426)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92221 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31775) Unit!44426)

(assert (=> b!1354377 (= lt!598202 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598200))))

(declare-fun b!1354378 () Bool)

(declare-fun e!769422 () Bool)

(assert (=> b!1354378 (= e!769422 e!769423)))

(declare-fun res!899554 () Bool)

(assert (=> b!1354378 (=> (not res!899554) (not e!769423))))

(assert (=> b!1354378 (= res!899554 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354378 (= lt!598200 ($colon$colon!766 acc!759 (select (arr!44554 a!3742) from!3120)))))

(declare-fun b!1354379 () Bool)

(declare-fun res!899560 () Bool)

(assert (=> b!1354379 (=> (not res!899560) (not e!769423))))

(assert (=> b!1354379 (= res!899560 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598200))))

(declare-fun b!1354380 () Bool)

(declare-fun res!899561 () Bool)

(assert (=> b!1354380 (=> (not res!899561) (not e!769421))))

(declare-fun contains!9340 (List!31775 (_ BitVec 64)) Bool)

(assert (=> b!1354380 (= res!899561 (not (contains!9340 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354381 () Bool)

(declare-fun res!899568 () Bool)

(assert (=> b!1354381 (=> (not res!899568) (not e!769421))))

(assert (=> b!1354381 (= res!899568 (not (contains!9340 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899562 () Bool)

(assert (=> start!114116 (=> (not res!899562) (not e!769421))))

(assert (=> start!114116 (= res!899562 (and (bvslt (size!45105 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45105 a!3742))))))

(assert (=> start!114116 e!769421))

(assert (=> start!114116 true))

(declare-fun array_inv!33499 (array!92221) Bool)

(assert (=> start!114116 (array_inv!33499 a!3742)))

(declare-fun b!1354382 () Bool)

(declare-fun Unit!44428 () Unit!44426)

(assert (=> b!1354382 (= e!769419 Unit!44428)))

(declare-fun b!1354383 () Bool)

(declare-fun res!899559 () Bool)

(assert (=> b!1354383 (=> (not res!899559) (not e!769423))))

(assert (=> b!1354383 (= res!899559 (not (contains!9340 lt!598200 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354384 () Bool)

(declare-fun res!899565 () Bool)

(assert (=> b!1354384 (=> (not res!899565) (not e!769421))))

(declare-fun noDuplicate!2219 (List!31775) Bool)

(assert (=> b!1354384 (= res!899565 (noDuplicate!2219 acc!759))))

(declare-fun b!1354385 () Bool)

(assert (=> b!1354385 (= e!769421 e!769422)))

(declare-fun res!899558 () Bool)

(assert (=> b!1354385 (=> (not res!899558) (not e!769422))))

(declare-fun lt!598199 () Bool)

(assert (=> b!1354385 (= res!899558 (and (not (= from!3120 i!1404)) lt!598199))))

(declare-fun lt!598197 () Unit!44426)

(assert (=> b!1354385 (= lt!598197 e!769419)))

(declare-fun c!126853 () Bool)

(assert (=> b!1354385 (= c!126853 lt!598199)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354385 (= lt!598199 (validKeyInArray!0 (select (arr!44554 a!3742) from!3120)))))

(declare-fun b!1354386 () Bool)

(declare-fun res!899567 () Bool)

(assert (=> b!1354386 (=> (not res!899567) (not e!769421))))

(assert (=> b!1354386 (= res!899567 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45105 a!3742)))))

(declare-fun b!1354387 () Bool)

(declare-fun res!899563 () Bool)

(assert (=> b!1354387 (=> (not res!899563) (not e!769421))))

(assert (=> b!1354387 (= res!899563 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354388 () Bool)

(declare-fun res!899566 () Bool)

(assert (=> b!1354388 (=> (not res!899566) (not e!769421))))

(assert (=> b!1354388 (= res!899566 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354389 () Bool)

(declare-fun res!899556 () Bool)

(assert (=> b!1354389 (=> (not res!899556) (not e!769423))))

(assert (=> b!1354389 (= res!899556 (noDuplicate!2219 lt!598200))))

(declare-fun b!1354390 () Bool)

(declare-fun res!899555 () Bool)

(assert (=> b!1354390 (=> (not res!899555) (not e!769423))))

(assert (=> b!1354390 (= res!899555 (not (contains!9340 lt!598200 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354391 () Bool)

(declare-fun res!899557 () Bool)

(assert (=> b!1354391 (=> (not res!899557) (not e!769421))))

(assert (=> b!1354391 (= res!899557 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45105 a!3742))))))

(assert (= (and start!114116 res!899562) b!1354384))

(assert (= (and b!1354384 res!899565) b!1354380))

(assert (= (and b!1354380 res!899561) b!1354381))

(assert (= (and b!1354381 res!899568) b!1354375))

(assert (= (and b!1354375 res!899564) b!1354388))

(assert (= (and b!1354388 res!899566) b!1354391))

(assert (= (and b!1354391 res!899557) b!1354387))

(assert (= (and b!1354387 res!899563) b!1354386))

(assert (= (and b!1354386 res!899567) b!1354385))

(assert (= (and b!1354385 c!126853) b!1354376))

(assert (= (and b!1354385 (not c!126853)) b!1354382))

(assert (= (and b!1354385 res!899558) b!1354378))

(assert (= (and b!1354378 res!899554) b!1354389))

(assert (= (and b!1354389 res!899556) b!1354390))

(assert (= (and b!1354390 res!899555) b!1354383))

(assert (= (and b!1354383 res!899559) b!1354379))

(assert (= (and b!1354379 res!899560) b!1354377))

(declare-fun m!1240777 () Bool)

(assert (=> b!1354385 m!1240777))

(assert (=> b!1354385 m!1240777))

(declare-fun m!1240779 () Bool)

(assert (=> b!1354385 m!1240779))

(declare-fun m!1240781 () Bool)

(assert (=> b!1354375 m!1240781))

(declare-fun m!1240783 () Bool)

(assert (=> b!1354389 m!1240783))

(declare-fun m!1240785 () Bool)

(assert (=> b!1354384 m!1240785))

(declare-fun m!1240787 () Bool)

(assert (=> b!1354380 m!1240787))

(declare-fun m!1240789 () Bool)

(assert (=> b!1354390 m!1240789))

(declare-fun m!1240791 () Bool)

(assert (=> start!114116 m!1240791))

(declare-fun m!1240793 () Bool)

(assert (=> b!1354381 m!1240793))

(declare-fun m!1240795 () Bool)

(assert (=> b!1354379 m!1240795))

(assert (=> b!1354378 m!1240777))

(assert (=> b!1354378 m!1240777))

(declare-fun m!1240797 () Bool)

(assert (=> b!1354378 m!1240797))

(declare-fun m!1240799 () Bool)

(assert (=> b!1354388 m!1240799))

(declare-fun m!1240801 () Bool)

(assert (=> b!1354377 m!1240801))

(declare-fun m!1240803 () Bool)

(assert (=> b!1354377 m!1240803))

(declare-fun m!1240805 () Bool)

(assert (=> b!1354377 m!1240805))

(declare-fun m!1240807 () Bool)

(assert (=> b!1354376 m!1240807))

(assert (=> b!1354376 m!1240777))

(assert (=> b!1354376 m!1240797))

(declare-fun m!1240809 () Bool)

(assert (=> b!1354376 m!1240809))

(declare-fun m!1240811 () Bool)

(assert (=> b!1354376 m!1240811))

(assert (=> b!1354376 m!1240777))

(assert (=> b!1354376 m!1240797))

(declare-fun m!1240813 () Bool)

(assert (=> b!1354376 m!1240813))

(declare-fun m!1240815 () Bool)

(assert (=> b!1354387 m!1240815))

(declare-fun m!1240817 () Bool)

(assert (=> b!1354383 m!1240817))

(push 1)

(assert (not b!1354387))

(assert (not b!1354384))

(assert (not b!1354375))

(assert (not b!1354389))

(assert (not b!1354380))

(assert (not b!1354388))

(assert (not b!1354383))

(assert (not b!1354379))

(assert (not b!1354381))

(assert (not b!1354390))

(assert (not b!1354378))

(assert (not b!1354377))

(assert (not b!1354385))

(assert (not start!114116))

(assert (not b!1354376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

