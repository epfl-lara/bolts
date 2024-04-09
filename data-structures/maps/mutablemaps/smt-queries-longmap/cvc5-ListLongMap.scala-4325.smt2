; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59994 () Bool)

(assert start!59994)

(declare-fun b!665534 () Bool)

(declare-fun res!433207 () Bool)

(declare-fun e!381343 () Bool)

(assert (=> b!665534 (=> (not res!433207) (not e!381343))))

(declare-datatypes ((array!38997 0))(
  ( (array!38998 (arr!18687 (Array (_ BitVec 32) (_ BitVec 64))) (size!19051 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38997)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665534 (= res!433207 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!433201 () Bool)

(assert (=> start!59994 (=> (not res!433201) (not e!381343))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59994 (= res!433201 (and (bvslt (size!19051 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19051 a!3626))))))

(assert (=> start!59994 e!381343))

(assert (=> start!59994 true))

(declare-fun array_inv!14461 (array!38997) Bool)

(assert (=> start!59994 (array_inv!14461 a!3626)))

(declare-fun b!665535 () Bool)

(declare-fun res!433199 () Bool)

(assert (=> b!665535 (=> (not res!433199) (not e!381343))))

(declare-fun e!381341 () Bool)

(assert (=> b!665535 (= res!433199 e!381341)))

(declare-fun res!433205 () Bool)

(assert (=> b!665535 (=> res!433205 e!381341)))

(declare-fun e!381344 () Bool)

(assert (=> b!665535 (= res!433205 e!381344)))

(declare-fun res!433190 () Bool)

(assert (=> b!665535 (=> (not res!433190) (not e!381344))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665535 (= res!433190 (bvsgt from!3004 i!1382))))

(declare-fun b!665536 () Bool)

(declare-fun res!433196 () Bool)

(assert (=> b!665536 (=> (not res!433196) (not e!381343))))

(assert (=> b!665536 (= res!433196 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19051 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665537 () Bool)

(declare-fun res!433189 () Bool)

(declare-fun e!381339 () Bool)

(assert (=> b!665537 (=> res!433189 e!381339)))

(declare-datatypes ((List!12781 0))(
  ( (Nil!12778) (Cons!12777 (h!13822 (_ BitVec 64)) (t!19017 List!12781)) )
))
(declare-fun lt!310084 () List!12781)

(declare-fun noDuplicate!571 (List!12781) Bool)

(assert (=> b!665537 (= res!433189 (not (noDuplicate!571 lt!310084)))))

(declare-fun b!665538 () Bool)

(declare-fun res!433202 () Bool)

(assert (=> b!665538 (=> (not res!433202) (not e!381343))))

(declare-fun acc!681 () List!12781)

(declare-fun contains!3324 (List!12781 (_ BitVec 64)) Bool)

(assert (=> b!665538 (= res!433202 (not (contains!3324 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665539 () Bool)

(declare-fun res!433204 () Bool)

(assert (=> b!665539 (=> (not res!433204) (not e!381343))))

(declare-fun arrayNoDuplicates!0 (array!38997 (_ BitVec 32) List!12781) Bool)

(assert (=> b!665539 (= res!433204 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12778))))

(declare-fun b!665540 () Bool)

(declare-fun res!433206 () Bool)

(assert (=> b!665540 (=> res!433206 e!381339)))

(declare-fun subseq!62 (List!12781 List!12781) Bool)

(assert (=> b!665540 (= res!433206 (not (subseq!62 acc!681 lt!310084)))))

(declare-fun b!665541 () Bool)

(declare-fun res!433194 () Bool)

(assert (=> b!665541 (=> res!433194 e!381339)))

(assert (=> b!665541 (= res!433194 (contains!3324 acc!681 k!2843))))

(declare-fun b!665542 () Bool)

(declare-fun res!433192 () Bool)

(assert (=> b!665542 (=> res!433192 e!381339)))

(assert (=> b!665542 (= res!433192 (not (contains!3324 lt!310084 k!2843)))))

(declare-fun b!665543 () Bool)

(assert (=> b!665543 (= e!381344 (contains!3324 acc!681 k!2843))))

(declare-fun b!665544 () Bool)

(declare-fun e!381345 () Bool)

(assert (=> b!665544 (= e!381341 e!381345)))

(declare-fun res!433203 () Bool)

(assert (=> b!665544 (=> (not res!433203) (not e!381345))))

(assert (=> b!665544 (= res!433203 (bvsle from!3004 i!1382))))

(declare-fun b!665545 () Bool)

(declare-datatypes ((Unit!23230 0))(
  ( (Unit!23231) )
))
(declare-fun e!381346 () Unit!23230)

(declare-fun Unit!23232 () Unit!23230)

(assert (=> b!665545 (= e!381346 Unit!23232)))

(declare-fun b!665546 () Bool)

(declare-fun res!433193 () Bool)

(assert (=> b!665546 (=> (not res!433193) (not e!381343))))

(assert (=> b!665546 (= res!433193 (not (contains!3324 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665547 () Bool)

(declare-fun res!433208 () Bool)

(assert (=> b!665547 (=> res!433208 e!381339)))

(declare-fun lt!310087 () Bool)

(assert (=> b!665547 (= res!433208 lt!310087)))

(declare-fun b!665548 () Bool)

(declare-fun e!381342 () Unit!23230)

(declare-fun Unit!23233 () Unit!23230)

(assert (=> b!665548 (= e!381342 Unit!23233)))

(declare-fun b!665549 () Bool)

(declare-fun res!433200 () Bool)

(assert (=> b!665549 (=> res!433200 e!381339)))

(assert (=> b!665549 (= res!433200 (contains!3324 lt!310084 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665550 () Bool)

(declare-fun res!433188 () Bool)

(assert (=> b!665550 (=> (not res!433188) (not e!381343))))

(assert (=> b!665550 (= res!433188 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19051 a!3626))))))

(declare-fun b!665551 () Bool)

(declare-fun res!433191 () Bool)

(assert (=> b!665551 (=> (not res!433191) (not e!381343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665551 (= res!433191 (validKeyInArray!0 k!2843))))

(declare-fun b!665552 () Bool)

(assert (=> b!665552 (= e!381345 (not (contains!3324 acc!681 k!2843)))))

(declare-fun b!665553 () Bool)

(declare-fun res!433195 () Bool)

(assert (=> b!665553 (=> (not res!433195) (not e!381343))))

(assert (=> b!665553 (= res!433195 (noDuplicate!571 acc!681))))

(declare-fun b!665554 () Bool)

(declare-fun lt!310090 () Unit!23230)

(assert (=> b!665554 (= e!381346 lt!310090)))

(declare-fun lt!310086 () Unit!23230)

(declare-fun lemmaListSubSeqRefl!0 (List!12781) Unit!23230)

(assert (=> b!665554 (= lt!310086 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665554 (subseq!62 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38997 List!12781 List!12781 (_ BitVec 32)) Unit!23230)

(declare-fun $colon$colon!193 (List!12781 (_ BitVec 64)) List!12781)

(assert (=> b!665554 (= lt!310090 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!193 acc!681 (select (arr!18687 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665554 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665555 () Bool)

(assert (=> b!665555 (= e!381343 (not e!381339))))

(declare-fun res!433197 () Bool)

(assert (=> b!665555 (=> res!433197 e!381339)))

(assert (=> b!665555 (= res!433197 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!60 (List!12781 (_ BitVec 64)) List!12781)

(assert (=> b!665555 (= (-!60 lt!310084 k!2843) acc!681)))

(assert (=> b!665555 (= lt!310084 ($colon$colon!193 acc!681 k!2843))))

(declare-fun lt!310088 () Unit!23230)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12781) Unit!23230)

(assert (=> b!665555 (= lt!310088 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665555 (subseq!62 acc!681 acc!681)))

(declare-fun lt!310085 () Unit!23230)

(assert (=> b!665555 (= lt!310085 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665555 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310091 () Unit!23230)

(assert (=> b!665555 (= lt!310091 e!381346)))

(declare-fun c!76540 () Bool)

(assert (=> b!665555 (= c!76540 (validKeyInArray!0 (select (arr!18687 a!3626) from!3004)))))

(declare-fun lt!310083 () Unit!23230)

(assert (=> b!665555 (= lt!310083 e!381342)))

(declare-fun c!76541 () Bool)

(assert (=> b!665555 (= c!76541 lt!310087)))

(assert (=> b!665555 (= lt!310087 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665555 (arrayContainsKey!0 (array!38998 (store (arr!18687 a!3626) i!1382 k!2843) (size!19051 a!3626)) k!2843 from!3004)))

(declare-fun b!665556 () Bool)

(declare-fun res!433198 () Bool)

(assert (=> b!665556 (=> (not res!433198) (not e!381343))))

(assert (=> b!665556 (= res!433198 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665557 () Bool)

(declare-fun Unit!23234 () Unit!23230)

(assert (=> b!665557 (= e!381342 Unit!23234)))

(declare-fun lt!310089 () Unit!23230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38997 (_ BitVec 64) (_ BitVec 32)) Unit!23230)

(assert (=> b!665557 (= lt!310089 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665557 false))

(declare-fun b!665558 () Bool)

(assert (=> b!665558 (= e!381339 true)))

(declare-fun lt!310092 () Bool)

(assert (=> b!665558 (= lt!310092 (contains!3324 lt!310084 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!59994 res!433201) b!665553))

(assert (= (and b!665553 res!433195) b!665546))

(assert (= (and b!665546 res!433193) b!665538))

(assert (= (and b!665538 res!433202) b!665535))

(assert (= (and b!665535 res!433190) b!665543))

(assert (= (and b!665535 (not res!433205)) b!665544))

(assert (= (and b!665544 res!433203) b!665552))

(assert (= (and b!665535 res!433199) b!665539))

(assert (= (and b!665539 res!433204) b!665556))

(assert (= (and b!665556 res!433198) b!665550))

(assert (= (and b!665550 res!433188) b!665551))

(assert (= (and b!665551 res!433191) b!665534))

(assert (= (and b!665534 res!433207) b!665536))

(assert (= (and b!665536 res!433196) b!665555))

(assert (= (and b!665555 c!76541) b!665557))

(assert (= (and b!665555 (not c!76541)) b!665548))

(assert (= (and b!665555 c!76540) b!665554))

(assert (= (and b!665555 (not c!76540)) b!665545))

(assert (= (and b!665555 (not res!433197)) b!665537))

(assert (= (and b!665537 (not res!433189)) b!665547))

(assert (= (and b!665547 (not res!433208)) b!665541))

(assert (= (and b!665541 (not res!433194)) b!665540))

(assert (= (and b!665540 (not res!433206)) b!665542))

(assert (= (and b!665542 (not res!433192)) b!665549))

(assert (= (and b!665549 (not res!433200)) b!665558))

(declare-fun m!636579 () Bool)

(assert (=> b!665553 m!636579))

(declare-fun m!636581 () Bool)

(assert (=> b!665551 m!636581))

(declare-fun m!636583 () Bool)

(assert (=> b!665534 m!636583))

(declare-fun m!636585 () Bool)

(assert (=> b!665540 m!636585))

(declare-fun m!636587 () Bool)

(assert (=> b!665552 m!636587))

(declare-fun m!636589 () Bool)

(assert (=> b!665549 m!636589))

(assert (=> b!665541 m!636587))

(declare-fun m!636591 () Bool)

(assert (=> b!665557 m!636591))

(declare-fun m!636593 () Bool)

(assert (=> b!665546 m!636593))

(declare-fun m!636595 () Bool)

(assert (=> b!665539 m!636595))

(declare-fun m!636597 () Bool)

(assert (=> start!59994 m!636597))

(declare-fun m!636599 () Bool)

(assert (=> b!665556 m!636599))

(declare-fun m!636601 () Bool)

(assert (=> b!665542 m!636601))

(declare-fun m!636603 () Bool)

(assert (=> b!665558 m!636603))

(declare-fun m!636605 () Bool)

(assert (=> b!665537 m!636605))

(assert (=> b!665543 m!636587))

(declare-fun m!636607 () Bool)

(assert (=> b!665554 m!636607))

(declare-fun m!636609 () Bool)

(assert (=> b!665554 m!636609))

(declare-fun m!636611 () Bool)

(assert (=> b!665554 m!636611))

(declare-fun m!636613 () Bool)

(assert (=> b!665554 m!636613))

(assert (=> b!665554 m!636609))

(assert (=> b!665554 m!636611))

(declare-fun m!636615 () Bool)

(assert (=> b!665554 m!636615))

(declare-fun m!636617 () Bool)

(assert (=> b!665554 m!636617))

(declare-fun m!636619 () Bool)

(assert (=> b!665555 m!636619))

(assert (=> b!665555 m!636607))

(assert (=> b!665555 m!636609))

(declare-fun m!636621 () Bool)

(assert (=> b!665555 m!636621))

(declare-fun m!636623 () Bool)

(assert (=> b!665555 m!636623))

(assert (=> b!665555 m!636615))

(declare-fun m!636625 () Bool)

(assert (=> b!665555 m!636625))

(declare-fun m!636627 () Bool)

(assert (=> b!665555 m!636627))

(assert (=> b!665555 m!636609))

(declare-fun m!636629 () Bool)

(assert (=> b!665555 m!636629))

(declare-fun m!636631 () Bool)

(assert (=> b!665555 m!636631))

(assert (=> b!665555 m!636617))

(declare-fun m!636633 () Bool)

(assert (=> b!665538 m!636633))

(push 1)

(assert (not b!665551))

(assert (not b!665557))

(assert (not b!665542))

(assert (not b!665537))

(assert (not b!665553))

(assert (not b!665539))

(assert (not b!665558))

(assert (not b!665554))

(assert (not b!665552))

(assert (not b!665538))

(assert (not b!665543))

(assert (not b!665556))

(assert (not b!665534))

(assert (not b!665540))

(assert (not b!665549))

(assert (not b!665541))

(assert (not b!665546))

(assert (not start!59994))

(assert (not b!665555))

(check-sat)

