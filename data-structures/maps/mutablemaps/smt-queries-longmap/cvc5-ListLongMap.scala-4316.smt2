; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59940 () Bool)

(assert start!59940)

(declare-fun b!663622 () Bool)

(declare-datatypes ((Unit!23095 0))(
  ( (Unit!23096) )
))
(declare-fun e!380711 () Unit!23095)

(declare-fun Unit!23097 () Unit!23095)

(assert (=> b!663622 (= e!380711 Unit!23097)))

(declare-fun lt!309338 () Unit!23095)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38943 0))(
  ( (array!38944 (arr!18660 (Array (_ BitVec 32) (_ BitVec 64))) (size!19024 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38943)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38943 (_ BitVec 64) (_ BitVec 32)) Unit!23095)

(assert (=> b!663622 (= lt!309338 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663622 false))

(declare-fun b!663623 () Bool)

(declare-fun e!380707 () Bool)

(declare-fun e!380708 () Bool)

(assert (=> b!663623 (= e!380707 e!380708)))

(declare-fun res!431608 () Bool)

(assert (=> b!663623 (=> (not res!431608) (not e!380708))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663623 (= res!431608 (bvsle from!3004 i!1382))))

(declare-fun b!663624 () Bool)

(declare-fun res!431599 () Bool)

(declare-fun e!380709 () Bool)

(assert (=> b!663624 (=> (not res!431599) (not e!380709))))

(declare-datatypes ((List!12754 0))(
  ( (Nil!12751) (Cons!12750 (h!13795 (_ BitVec 64)) (t!18990 List!12754)) )
))
(declare-fun acc!681 () List!12754)

(declare-fun arrayNoDuplicates!0 (array!38943 (_ BitVec 32) List!12754) Bool)

(assert (=> b!663624 (= res!431599 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663625 () Bool)

(assert (=> b!663625 (= e!380709 (not true))))

(declare-fun lt!309339 () Unit!23095)

(declare-fun e!380713 () Unit!23095)

(assert (=> b!663625 (= lt!309339 e!380713)))

(declare-fun c!76379 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663625 (= c!76379 (validKeyInArray!0 (select (arr!18660 a!3626) from!3004)))))

(declare-fun lt!309335 () Unit!23095)

(assert (=> b!663625 (= lt!309335 e!380711)))

(declare-fun c!76378 () Bool)

(declare-fun arrayContainsKey!0 (array!38943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663625 (= c!76378 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663625 (arrayContainsKey!0 (array!38944 (store (arr!18660 a!3626) i!1382 k!2843) (size!19024 a!3626)) k!2843 from!3004)))

(declare-fun b!663626 () Bool)

(declare-fun res!431602 () Bool)

(assert (=> b!663626 (=> (not res!431602) (not e!380709))))

(assert (=> b!663626 (= res!431602 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12751))))

(declare-fun b!663627 () Bool)

(declare-fun contains!3297 (List!12754 (_ BitVec 64)) Bool)

(assert (=> b!663627 (= e!380708 (not (contains!3297 acc!681 k!2843)))))

(declare-fun b!663628 () Bool)

(declare-fun res!431607 () Bool)

(assert (=> b!663628 (=> (not res!431607) (not e!380709))))

(assert (=> b!663628 (= res!431607 (not (contains!3297 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663629 () Bool)

(declare-fun Unit!23098 () Unit!23095)

(assert (=> b!663629 (= e!380713 Unit!23098)))

(declare-fun b!663630 () Bool)

(declare-fun lt!309336 () Unit!23095)

(assert (=> b!663630 (= e!380713 lt!309336)))

(declare-fun lt!309337 () Unit!23095)

(declare-fun lemmaListSubSeqRefl!0 (List!12754) Unit!23095)

(assert (=> b!663630 (= lt!309337 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!35 (List!12754 List!12754) Bool)

(assert (=> b!663630 (subseq!35 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38943 List!12754 List!12754 (_ BitVec 32)) Unit!23095)

(declare-fun $colon$colon!166 (List!12754 (_ BitVec 64)) List!12754)

(assert (=> b!663630 (= lt!309336 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!166 acc!681 (select (arr!18660 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663630 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663631 () Bool)

(declare-fun res!431604 () Bool)

(assert (=> b!663631 (=> (not res!431604) (not e!380709))))

(assert (=> b!663631 (= res!431604 e!380707)))

(declare-fun res!431600 () Bool)

(assert (=> b!663631 (=> res!431600 e!380707)))

(declare-fun e!380710 () Bool)

(assert (=> b!663631 (= res!431600 e!380710)))

(declare-fun res!431606 () Bool)

(assert (=> b!663631 (=> (not res!431606) (not e!380710))))

(assert (=> b!663631 (= res!431606 (bvsgt from!3004 i!1382))))

(declare-fun b!663632 () Bool)

(declare-fun res!431611 () Bool)

(assert (=> b!663632 (=> (not res!431611) (not e!380709))))

(assert (=> b!663632 (= res!431611 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663621 () Bool)

(declare-fun res!431605 () Bool)

(assert (=> b!663621 (=> (not res!431605) (not e!380709))))

(assert (=> b!663621 (= res!431605 (validKeyInArray!0 k!2843))))

(declare-fun res!431610 () Bool)

(assert (=> start!59940 (=> (not res!431610) (not e!380709))))

(assert (=> start!59940 (= res!431610 (and (bvslt (size!19024 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19024 a!3626))))))

(assert (=> start!59940 e!380709))

(assert (=> start!59940 true))

(declare-fun array_inv!14434 (array!38943) Bool)

(assert (=> start!59940 (array_inv!14434 a!3626)))

(declare-fun b!663633 () Bool)

(declare-fun Unit!23099 () Unit!23095)

(assert (=> b!663633 (= e!380711 Unit!23099)))

(declare-fun b!663634 () Bool)

(declare-fun res!431603 () Bool)

(assert (=> b!663634 (=> (not res!431603) (not e!380709))))

(declare-fun noDuplicate!544 (List!12754) Bool)

(assert (=> b!663634 (= res!431603 (noDuplicate!544 acc!681))))

(declare-fun b!663635 () Bool)

(declare-fun res!431601 () Bool)

(assert (=> b!663635 (=> (not res!431601) (not e!380709))))

(assert (=> b!663635 (= res!431601 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19024 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663636 () Bool)

(declare-fun res!431612 () Bool)

(assert (=> b!663636 (=> (not res!431612) (not e!380709))))

(assert (=> b!663636 (= res!431612 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19024 a!3626))))))

(declare-fun b!663637 () Bool)

(assert (=> b!663637 (= e!380710 (contains!3297 acc!681 k!2843))))

(declare-fun b!663638 () Bool)

(declare-fun res!431609 () Bool)

(assert (=> b!663638 (=> (not res!431609) (not e!380709))))

(assert (=> b!663638 (= res!431609 (not (contains!3297 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59940 res!431610) b!663634))

(assert (= (and b!663634 res!431603) b!663628))

(assert (= (and b!663628 res!431607) b!663638))

(assert (= (and b!663638 res!431609) b!663631))

(assert (= (and b!663631 res!431606) b!663637))

(assert (= (and b!663631 (not res!431600)) b!663623))

(assert (= (and b!663623 res!431608) b!663627))

(assert (= (and b!663631 res!431604) b!663626))

(assert (= (and b!663626 res!431602) b!663624))

(assert (= (and b!663624 res!431599) b!663636))

(assert (= (and b!663636 res!431612) b!663621))

(assert (= (and b!663621 res!431605) b!663632))

(assert (= (and b!663632 res!431611) b!663635))

(assert (= (and b!663635 res!431601) b!663625))

(assert (= (and b!663625 c!76378) b!663622))

(assert (= (and b!663625 (not c!76378)) b!663633))

(assert (= (and b!663625 c!76379) b!663630))

(assert (= (and b!663625 (not c!76379)) b!663629))

(declare-fun m!635163 () Bool)

(assert (=> b!663627 m!635163))

(declare-fun m!635165 () Bool)

(assert (=> b!663628 m!635165))

(declare-fun m!635167 () Bool)

(assert (=> b!663630 m!635167))

(declare-fun m!635169 () Bool)

(assert (=> b!663630 m!635169))

(declare-fun m!635171 () Bool)

(assert (=> b!663630 m!635171))

(declare-fun m!635173 () Bool)

(assert (=> b!663630 m!635173))

(assert (=> b!663630 m!635169))

(assert (=> b!663630 m!635171))

(declare-fun m!635175 () Bool)

(assert (=> b!663630 m!635175))

(declare-fun m!635177 () Bool)

(assert (=> b!663630 m!635177))

(declare-fun m!635179 () Bool)

(assert (=> b!663621 m!635179))

(declare-fun m!635181 () Bool)

(assert (=> b!663632 m!635181))

(declare-fun m!635183 () Bool)

(assert (=> b!663634 m!635183))

(assert (=> b!663637 m!635163))

(assert (=> b!663625 m!635169))

(declare-fun m!635185 () Bool)

(assert (=> b!663625 m!635185))

(declare-fun m!635187 () Bool)

(assert (=> b!663625 m!635187))

(assert (=> b!663625 m!635169))

(declare-fun m!635189 () Bool)

(assert (=> b!663625 m!635189))

(declare-fun m!635191 () Bool)

(assert (=> b!663625 m!635191))

(declare-fun m!635193 () Bool)

(assert (=> start!59940 m!635193))

(declare-fun m!635195 () Bool)

(assert (=> b!663624 m!635195))

(declare-fun m!635197 () Bool)

(assert (=> b!663622 m!635197))

(declare-fun m!635199 () Bool)

(assert (=> b!663638 m!635199))

(declare-fun m!635201 () Bool)

(assert (=> b!663626 m!635201))

(push 1)

(assert (not start!59940))

(assert (not b!663634))

(assert (not b!663625))

(assert (not b!663638))

(assert (not b!663627))

(assert (not b!663624))

(assert (not b!663637))

(assert (not b!663621))

(assert (not b!663626))

(assert (not b!663632))

(assert (not b!663630))

(assert (not b!663628))

(assert (not b!663622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

