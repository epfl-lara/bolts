; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60886 () Bool)

(assert start!60886)

(declare-fun b!682458 () Bool)

(declare-fun res!448581 () Bool)

(declare-fun e!388844 () Bool)

(assert (=> b!682458 (=> (not res!448581) (not e!388844))))

(declare-datatypes ((array!39526 0))(
  ( (array!39527 (arr!18941 (Array (_ BitVec 32) (_ BitVec 64))) (size!19305 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39526)

(declare-datatypes ((List!13035 0))(
  ( (Nil!13032) (Cons!13031 (h!14076 (_ BitVec 64)) (t!19286 List!13035)) )
))
(declare-fun arrayNoDuplicates!0 (array!39526 (_ BitVec 32) List!13035) Bool)

(assert (=> b!682458 (= res!448581 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13032))))

(declare-fun b!682459 () Bool)

(declare-fun res!448580 () Bool)

(assert (=> b!682459 (=> (not res!448580) (not e!388844))))

(declare-fun acc!681 () List!13035)

(declare-fun noDuplicate!825 (List!13035) Bool)

(assert (=> b!682459 (= res!448580 (noDuplicate!825 acc!681))))

(declare-fun b!682460 () Bool)

(declare-fun e!388846 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3578 (List!13035 (_ BitVec 64)) Bool)

(assert (=> b!682460 (= e!388846 (not (contains!3578 acc!681 k!2843)))))

(declare-fun b!682461 () Bool)

(declare-fun res!448586 () Bool)

(assert (=> b!682461 (=> (not res!448586) (not e!388844))))

(assert (=> b!682461 (= res!448586 (not (contains!3578 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682462 () Bool)

(declare-datatypes ((Unit!23942 0))(
  ( (Unit!23943) )
))
(declare-fun e!388842 () Unit!23942)

(declare-fun lt!313547 () Unit!23942)

(assert (=> b!682462 (= e!388842 lt!313547)))

(declare-fun lt!313551 () Unit!23942)

(declare-fun lemmaListSubSeqRefl!0 (List!13035) Unit!23942)

(assert (=> b!682462 (= lt!313551 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!163 (List!13035 List!13035) Bool)

(assert (=> b!682462 (subseq!163 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39526 List!13035 List!13035 (_ BitVec 32)) Unit!23942)

(declare-fun $colon$colon!327 (List!13035 (_ BitVec 64)) List!13035)

(assert (=> b!682462 (= lt!313547 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!327 acc!681 (select (arr!18941 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682462 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682463 () Bool)

(declare-fun res!448587 () Bool)

(assert (=> b!682463 (=> (not res!448587) (not e!388844))))

(assert (=> b!682463 (= res!448587 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!448589 () Bool)

(assert (=> start!60886 (=> (not res!448589) (not e!388844))))

(assert (=> start!60886 (= res!448589 (and (bvslt (size!19305 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19305 a!3626))))))

(assert (=> start!60886 e!388844))

(assert (=> start!60886 true))

(declare-fun array_inv!14715 (array!39526) Bool)

(assert (=> start!60886 (array_inv!14715 a!3626)))

(declare-fun b!682464 () Bool)

(declare-fun e!388843 () Bool)

(assert (=> b!682464 (= e!388843 e!388846)))

(declare-fun res!448578 () Bool)

(assert (=> b!682464 (=> (not res!448578) (not e!388846))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682464 (= res!448578 (bvsle from!3004 i!1382))))

(declare-fun b!682465 () Bool)

(declare-fun res!448588 () Bool)

(assert (=> b!682465 (=> (not res!448588) (not e!388844))))

(declare-fun arrayContainsKey!0 (array!39526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682465 (= res!448588 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682466 () Bool)

(declare-fun e!388840 () Unit!23942)

(declare-fun Unit!23944 () Unit!23942)

(assert (=> b!682466 (= e!388840 Unit!23944)))

(declare-fun b!682467 () Bool)

(assert (=> b!682467 (= e!388844 (not true))))

(declare-fun -!128 (List!13035 (_ BitVec 64)) List!13035)

(assert (=> b!682467 (= (-!128 ($colon$colon!327 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313549 () Unit!23942)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13035) Unit!23942)

(assert (=> b!682467 (= lt!313549 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682467 (subseq!163 acc!681 acc!681)))

(declare-fun lt!313548 () Unit!23942)

(assert (=> b!682467 (= lt!313548 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682467 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313546 () Unit!23942)

(assert (=> b!682467 (= lt!313546 e!388842)))

(declare-fun c!77308 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682467 (= c!77308 (validKeyInArray!0 (select (arr!18941 a!3626) from!3004)))))

(declare-fun lt!313545 () Unit!23942)

(assert (=> b!682467 (= lt!313545 e!388840)))

(declare-fun c!77309 () Bool)

(assert (=> b!682467 (= c!77309 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682467 (arrayContainsKey!0 (array!39527 (store (arr!18941 a!3626) i!1382 k!2843) (size!19305 a!3626)) k!2843 from!3004)))

(declare-fun b!682468 () Bool)

(declare-fun res!448579 () Bool)

(assert (=> b!682468 (=> (not res!448579) (not e!388844))))

(assert (=> b!682468 (= res!448579 (not (contains!3578 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682469 () Bool)

(declare-fun res!448576 () Bool)

(assert (=> b!682469 (=> (not res!448576) (not e!388844))))

(assert (=> b!682469 (= res!448576 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19305 a!3626))))))

(declare-fun b!682470 () Bool)

(declare-fun res!448585 () Bool)

(assert (=> b!682470 (=> (not res!448585) (not e!388844))))

(assert (=> b!682470 (= res!448585 e!388843)))

(declare-fun res!448583 () Bool)

(assert (=> b!682470 (=> res!448583 e!388843)))

(declare-fun e!388845 () Bool)

(assert (=> b!682470 (= res!448583 e!388845)))

(declare-fun res!448577 () Bool)

(assert (=> b!682470 (=> (not res!448577) (not e!388845))))

(assert (=> b!682470 (= res!448577 (bvsgt from!3004 i!1382))))

(declare-fun b!682471 () Bool)

(declare-fun res!448582 () Bool)

(assert (=> b!682471 (=> (not res!448582) (not e!388844))))

(assert (=> b!682471 (= res!448582 (validKeyInArray!0 k!2843))))

(declare-fun b!682472 () Bool)

(declare-fun Unit!23945 () Unit!23942)

(assert (=> b!682472 (= e!388840 Unit!23945)))

(declare-fun lt!313550 () Unit!23942)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39526 (_ BitVec 64) (_ BitVec 32)) Unit!23942)

(assert (=> b!682472 (= lt!313550 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682472 false))

(declare-fun b!682473 () Bool)

(declare-fun res!448584 () Bool)

(assert (=> b!682473 (=> (not res!448584) (not e!388844))))

(assert (=> b!682473 (= res!448584 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19305 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682474 () Bool)

(assert (=> b!682474 (= e!388845 (contains!3578 acc!681 k!2843))))

(declare-fun b!682475 () Bool)

(declare-fun Unit!23946 () Unit!23942)

(assert (=> b!682475 (= e!388842 Unit!23946)))

(assert (= (and start!60886 res!448589) b!682459))

(assert (= (and b!682459 res!448580) b!682468))

(assert (= (and b!682468 res!448579) b!682461))

(assert (= (and b!682461 res!448586) b!682470))

(assert (= (and b!682470 res!448577) b!682474))

(assert (= (and b!682470 (not res!448583)) b!682464))

(assert (= (and b!682464 res!448578) b!682460))

(assert (= (and b!682470 res!448585) b!682458))

(assert (= (and b!682458 res!448581) b!682463))

(assert (= (and b!682463 res!448587) b!682469))

(assert (= (and b!682469 res!448576) b!682471))

(assert (= (and b!682471 res!448582) b!682465))

(assert (= (and b!682465 res!448588) b!682473))

(assert (= (and b!682473 res!448584) b!682467))

(assert (= (and b!682467 c!77309) b!682472))

(assert (= (and b!682467 (not c!77309)) b!682466))

(assert (= (and b!682467 c!77308) b!682462))

(assert (= (and b!682467 (not c!77308)) b!682475))

(declare-fun m!647183 () Bool)

(assert (=> b!682459 m!647183))

(declare-fun m!647185 () Bool)

(assert (=> b!682474 m!647185))

(declare-fun m!647187 () Bool)

(assert (=> b!682458 m!647187))

(declare-fun m!647189 () Bool)

(assert (=> b!682468 m!647189))

(declare-fun m!647191 () Bool)

(assert (=> b!682461 m!647191))

(declare-fun m!647193 () Bool)

(assert (=> b!682467 m!647193))

(declare-fun m!647195 () Bool)

(assert (=> b!682467 m!647195))

(declare-fun m!647197 () Bool)

(assert (=> b!682467 m!647197))

(declare-fun m!647199 () Bool)

(assert (=> b!682467 m!647199))

(declare-fun m!647201 () Bool)

(assert (=> b!682467 m!647201))

(declare-fun m!647203 () Bool)

(assert (=> b!682467 m!647203))

(declare-fun m!647205 () Bool)

(assert (=> b!682467 m!647205))

(declare-fun m!647207 () Bool)

(assert (=> b!682467 m!647207))

(assert (=> b!682467 m!647193))

(assert (=> b!682467 m!647199))

(declare-fun m!647209 () Bool)

(assert (=> b!682467 m!647209))

(declare-fun m!647211 () Bool)

(assert (=> b!682467 m!647211))

(declare-fun m!647213 () Bool)

(assert (=> b!682467 m!647213))

(declare-fun m!647215 () Bool)

(assert (=> b!682471 m!647215))

(declare-fun m!647217 () Bool)

(assert (=> b!682463 m!647217))

(assert (=> b!682460 m!647185))

(declare-fun m!647219 () Bool)

(assert (=> b!682472 m!647219))

(assert (=> b!682462 m!647197))

(assert (=> b!682462 m!647199))

(declare-fun m!647221 () Bool)

(assert (=> b!682462 m!647221))

(declare-fun m!647223 () Bool)

(assert (=> b!682462 m!647223))

(assert (=> b!682462 m!647199))

(assert (=> b!682462 m!647221))

(assert (=> b!682462 m!647205))

(assert (=> b!682462 m!647213))

(declare-fun m!647225 () Bool)

(assert (=> start!60886 m!647225))

(declare-fun m!647227 () Bool)

(assert (=> b!682465 m!647227))

(push 1)

(assert (not b!682458))

(assert (not b!682468))

(assert (not b!682462))

(assert (not b!682459))

(assert (not b!682465))

(assert (not b!682461))

(assert (not b!682471))

(assert (not b!682463))

(assert (not b!682472))

(assert (not start!60886))

(assert (not b!682474))

(assert (not b!682467))

(assert (not b!682460))

(check-sat)

