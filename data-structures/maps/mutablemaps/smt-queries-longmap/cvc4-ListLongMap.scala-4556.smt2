; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63530 () Bool)

(assert start!63530)

(declare-fun b!715263 () Bool)

(declare-fun res!478415 () Bool)

(declare-fun e!401766 () Bool)

(assert (=> b!715263 (=> (not res!478415) (not e!401766))))

(declare-datatypes ((List!13476 0))(
  ( (Nil!13473) (Cons!13472 (h!14517 (_ BitVec 64)) (t!19799 List!13476)) )
))
(declare-fun newAcc!49 () List!13476)

(declare-fun contains!4019 (List!13476 (_ BitVec 64)) Bool)

(assert (=> b!715263 (= res!478415 (not (contains!4019 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715264 () Bool)

(assert (=> b!715264 (= e!401766 false)))

(declare-datatypes ((array!40498 0))(
  ( (array!40499 (arr!19382 (Array (_ BitVec 32) (_ BitVec 64))) (size!19798 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40498)

(declare-fun lt!318788 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13476)

(declare-fun arrayNoDuplicates!0 (array!40498 (_ BitVec 32) List!13476) Bool)

(assert (=> b!715264 (= lt!318788 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715265 () Bool)

(declare-fun res!478404 () Bool)

(assert (=> b!715265 (=> (not res!478404) (not e!401766))))

(assert (=> b!715265 (= res!478404 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715266 () Bool)

(declare-fun res!478400 () Bool)

(assert (=> b!715266 (=> (not res!478400) (not e!401766))))

(declare-fun subseq!463 (List!13476 List!13476) Bool)

(assert (=> b!715266 (= res!478400 (subseq!463 acc!652 newAcc!49))))

(declare-fun b!715267 () Bool)

(declare-fun res!478411 () Bool)

(assert (=> b!715267 (=> (not res!478411) (not e!401766))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715267 (= res!478411 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715268 () Bool)

(declare-fun res!478399 () Bool)

(assert (=> b!715268 (=> (not res!478399) (not e!401766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715268 (= res!478399 (validKeyInArray!0 k!2824))))

(declare-fun b!715269 () Bool)

(declare-fun res!478407 () Bool)

(assert (=> b!715269 (=> (not res!478407) (not e!401766))))

(assert (=> b!715269 (= res!478407 (not (contains!4019 acc!652 k!2824)))))

(declare-fun b!715270 () Bool)

(declare-fun res!478412 () Bool)

(assert (=> b!715270 (=> (not res!478412) (not e!401766))))

(assert (=> b!715270 (= res!478412 (not (validKeyInArray!0 (select (arr!19382 a!3591) from!2969))))))

(declare-fun b!715271 () Bool)

(declare-fun res!478406 () Bool)

(assert (=> b!715271 (=> (not res!478406) (not e!401766))))

(assert (=> b!715271 (= res!478406 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19798 a!3591)))))

(declare-fun b!715272 () Bool)

(declare-fun res!478416 () Bool)

(assert (=> b!715272 (=> (not res!478416) (not e!401766))))

(assert (=> b!715272 (= res!478416 (not (contains!4019 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715273 () Bool)

(declare-fun res!478413 () Bool)

(assert (=> b!715273 (=> (not res!478413) (not e!401766))))

(assert (=> b!715273 (= res!478413 (not (contains!4019 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!478414 () Bool)

(assert (=> start!63530 (=> (not res!478414) (not e!401766))))

(assert (=> start!63530 (= res!478414 (and (bvslt (size!19798 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19798 a!3591))))))

(assert (=> start!63530 e!401766))

(assert (=> start!63530 true))

(declare-fun array_inv!15156 (array!40498) Bool)

(assert (=> start!63530 (array_inv!15156 a!3591)))

(declare-fun b!715274 () Bool)

(declare-fun res!478401 () Bool)

(assert (=> b!715274 (=> (not res!478401) (not e!401766))))

(declare-fun noDuplicate!1266 (List!13476) Bool)

(assert (=> b!715274 (= res!478401 (noDuplicate!1266 newAcc!49))))

(declare-fun b!715275 () Bool)

(declare-fun res!478405 () Bool)

(assert (=> b!715275 (=> (not res!478405) (not e!401766))))

(assert (=> b!715275 (= res!478405 (contains!4019 newAcc!49 k!2824))))

(declare-fun b!715276 () Bool)

(declare-fun res!478409 () Bool)

(assert (=> b!715276 (=> (not res!478409) (not e!401766))))

(declare-fun -!428 (List!13476 (_ BitVec 64)) List!13476)

(assert (=> b!715276 (= res!478409 (= (-!428 newAcc!49 k!2824) acc!652))))

(declare-fun b!715277 () Bool)

(declare-fun res!478408 () Bool)

(assert (=> b!715277 (=> (not res!478408) (not e!401766))))

(assert (=> b!715277 (= res!478408 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715278 () Bool)

(declare-fun res!478403 () Bool)

(assert (=> b!715278 (=> (not res!478403) (not e!401766))))

(assert (=> b!715278 (= res!478403 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715279 () Bool)

(declare-fun res!478410 () Bool)

(assert (=> b!715279 (=> (not res!478410) (not e!401766))))

(assert (=> b!715279 (= res!478410 (not (contains!4019 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715280 () Bool)

(declare-fun res!478402 () Bool)

(assert (=> b!715280 (=> (not res!478402) (not e!401766))))

(assert (=> b!715280 (= res!478402 (noDuplicate!1266 acc!652))))

(assert (= (and start!63530 res!478414) b!715280))

(assert (= (and b!715280 res!478402) b!715274))

(assert (= (and b!715274 res!478401) b!715279))

(assert (= (and b!715279 res!478410) b!715272))

(assert (= (and b!715272 res!478416) b!715278))

(assert (= (and b!715278 res!478403) b!715269))

(assert (= (and b!715269 res!478407) b!715268))

(assert (= (and b!715268 res!478399) b!715265))

(assert (= (and b!715265 res!478404) b!715266))

(assert (= (and b!715266 res!478400) b!715275))

(assert (= (and b!715275 res!478405) b!715276))

(assert (= (and b!715276 res!478409) b!715273))

(assert (= (and b!715273 res!478413) b!715263))

(assert (= (and b!715263 res!478415) b!715271))

(assert (= (and b!715271 res!478406) b!715270))

(assert (= (and b!715270 res!478412) b!715277))

(assert (= (and b!715277 res!478408) b!715267))

(assert (= (and b!715267 res!478411) b!715264))

(declare-fun m!671589 () Bool)

(assert (=> b!715273 m!671589))

(declare-fun m!671591 () Bool)

(assert (=> b!715270 m!671591))

(assert (=> b!715270 m!671591))

(declare-fun m!671593 () Bool)

(assert (=> b!715270 m!671593))

(declare-fun m!671595 () Bool)

(assert (=> b!715280 m!671595))

(declare-fun m!671597 () Bool)

(assert (=> b!715267 m!671597))

(declare-fun m!671599 () Bool)

(assert (=> b!715275 m!671599))

(declare-fun m!671601 () Bool)

(assert (=> b!715265 m!671601))

(declare-fun m!671603 () Bool)

(assert (=> b!715276 m!671603))

(declare-fun m!671605 () Bool)

(assert (=> b!715263 m!671605))

(declare-fun m!671607 () Bool)

(assert (=> b!715268 m!671607))

(declare-fun m!671609 () Bool)

(assert (=> b!715274 m!671609))

(declare-fun m!671611 () Bool)

(assert (=> start!63530 m!671611))

(declare-fun m!671613 () Bool)

(assert (=> b!715272 m!671613))

(declare-fun m!671615 () Bool)

(assert (=> b!715266 m!671615))

(declare-fun m!671617 () Bool)

(assert (=> b!715264 m!671617))

(declare-fun m!671619 () Bool)

(assert (=> b!715269 m!671619))

(declare-fun m!671621 () Bool)

(assert (=> b!715278 m!671621))

(declare-fun m!671623 () Bool)

(assert (=> b!715279 m!671623))

(push 1)

(assert (not b!715265))

(assert (not b!715270))

(assert (not b!715269))

(assert (not b!715273))

(assert (not start!63530))

(assert (not b!715272))

(assert (not b!715268))

(assert (not b!715276))

