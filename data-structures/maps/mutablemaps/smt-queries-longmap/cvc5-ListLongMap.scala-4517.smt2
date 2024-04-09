; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62586 () Bool)

(assert start!62586)

(declare-fun b!705392 () Bool)

(declare-fun res!469377 () Bool)

(declare-fun e!397738 () Bool)

(assert (=> b!705392 (=> (not res!469377) (not e!397738))))

(declare-datatypes ((List!13357 0))(
  ( (Nil!13354) (Cons!13353 (h!14398 (_ BitVec 64)) (t!19647 List!13357)) )
))
(declare-fun acc!652 () List!13357)

(declare-fun newAcc!49 () List!13357)

(declare-fun subseq!344 (List!13357 List!13357) Bool)

(assert (=> b!705392 (= res!469377 (subseq!344 acc!652 newAcc!49))))

(declare-fun b!705393 () Bool)

(declare-fun res!469392 () Bool)

(assert (=> b!705393 (=> (not res!469392) (not e!397738))))

(declare-fun contains!3900 (List!13357 (_ BitVec 64)) Bool)

(assert (=> b!705393 (= res!469392 (not (contains!3900 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705394 () Bool)

(declare-fun res!469382 () Bool)

(assert (=> b!705394 (=> (not res!469382) (not e!397738))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!705394 (= res!469382 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705395 () Bool)

(declare-fun res!469390 () Bool)

(assert (=> b!705395 (=> (not res!469390) (not e!397738))))

(declare-fun noDuplicate!1147 (List!13357) Bool)

(assert (=> b!705395 (= res!469390 (noDuplicate!1147 newAcc!49))))

(declare-fun b!705396 () Bool)

(declare-fun res!469378 () Bool)

(assert (=> b!705396 (=> (not res!469378) (not e!397738))))

(declare-datatypes ((array!40221 0))(
  ( (array!40222 (arr!19263 (Array (_ BitVec 32) (_ BitVec 64))) (size!19646 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40221)

(declare-fun arrayNoDuplicates!0 (array!40221 (_ BitVec 32) List!13357) Bool)

(assert (=> b!705396 (= res!469378 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705397 () Bool)

(declare-fun res!469394 () Bool)

(assert (=> b!705397 (=> (not res!469394) (not e!397738))))

(assert (=> b!705397 (= res!469394 (not (contains!3900 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!469380 () Bool)

(assert (=> start!62586 (=> (not res!469380) (not e!397738))))

(assert (=> start!62586 (= res!469380 (and (bvslt (size!19646 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19646 a!3591))))))

(assert (=> start!62586 e!397738))

(assert (=> start!62586 true))

(declare-fun array_inv!15037 (array!40221) Bool)

(assert (=> start!62586 (array_inv!15037 a!3591)))

(declare-fun b!705398 () Bool)

(declare-fun res!469386 () Bool)

(assert (=> b!705398 (=> (not res!469386) (not e!397738))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!705398 (= res!469386 (not (contains!3900 acc!652 k!2824)))))

(declare-fun b!705399 () Bool)

(declare-fun res!469379 () Bool)

(assert (=> b!705399 (=> (not res!469379) (not e!397738))))

(assert (=> b!705399 (= res!469379 (contains!3900 newAcc!49 k!2824))))

(declare-fun b!705400 () Bool)

(declare-fun res!469384 () Bool)

(assert (=> b!705400 (=> (not res!469384) (not e!397738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705400 (= res!469384 (not (validKeyInArray!0 (select (arr!19263 a!3591) from!2969))))))

(declare-fun b!705401 () Bool)

(declare-fun res!469381 () Bool)

(assert (=> b!705401 (=> (not res!469381) (not e!397738))))

(assert (=> b!705401 (= res!469381 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705402 () Bool)

(declare-fun res!469391 () Bool)

(assert (=> b!705402 (=> (not res!469391) (not e!397738))))

(assert (=> b!705402 (= res!469391 (noDuplicate!1147 acc!652))))

(declare-fun b!705403 () Bool)

(assert (=> b!705403 (= e!397738 (not true))))

(assert (=> b!705403 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24592 0))(
  ( (Unit!24593) )
))
(declare-fun lt!317850 () Unit!24592)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40221 (_ BitVec 64) (_ BitVec 32) List!13357 List!13357) Unit!24592)

(assert (=> b!705403 (= lt!317850 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705404 () Bool)

(declare-fun res!469388 () Bool)

(assert (=> b!705404 (=> (not res!469388) (not e!397738))))

(declare-fun arrayContainsKey!0 (array!40221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705404 (= res!469388 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705405 () Bool)

(declare-fun res!469389 () Bool)

(assert (=> b!705405 (=> (not res!469389) (not e!397738))))

(assert (=> b!705405 (= res!469389 (not (contains!3900 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705406 () Bool)

(declare-fun res!469383 () Bool)

(assert (=> b!705406 (=> (not res!469383) (not e!397738))))

(assert (=> b!705406 (= res!469383 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19646 a!3591)))))

(declare-fun b!705407 () Bool)

(declare-fun res!469393 () Bool)

(assert (=> b!705407 (=> (not res!469393) (not e!397738))))

(assert (=> b!705407 (= res!469393 (not (contains!3900 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705408 () Bool)

(declare-fun res!469376 () Bool)

(assert (=> b!705408 (=> (not res!469376) (not e!397738))))

(assert (=> b!705408 (= res!469376 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705409 () Bool)

(declare-fun res!469385 () Bool)

(assert (=> b!705409 (=> (not res!469385) (not e!397738))))

(assert (=> b!705409 (= res!469385 (validKeyInArray!0 k!2824))))

(declare-fun b!705410 () Bool)

(declare-fun res!469387 () Bool)

(assert (=> b!705410 (=> (not res!469387) (not e!397738))))

(declare-fun -!309 (List!13357 (_ BitVec 64)) List!13357)

(assert (=> b!705410 (= res!469387 (= (-!309 newAcc!49 k!2824) acc!652))))

(assert (= (and start!62586 res!469380) b!705402))

(assert (= (and b!705402 res!469391) b!705395))

(assert (= (and b!705395 res!469390) b!705407))

(assert (= (and b!705407 res!469393) b!705393))

(assert (= (and b!705393 res!469392) b!705404))

(assert (= (and b!705404 res!469388) b!705398))

(assert (= (and b!705398 res!469386) b!705409))

(assert (= (and b!705409 res!469385) b!705401))

(assert (= (and b!705401 res!469381) b!705392))

(assert (= (and b!705392 res!469377) b!705399))

(assert (= (and b!705399 res!469379) b!705410))

(assert (= (and b!705410 res!469387) b!705405))

(assert (= (and b!705405 res!469389) b!705397))

(assert (= (and b!705397 res!469394) b!705406))

(assert (= (and b!705406 res!469383) b!705400))

(assert (= (and b!705400 res!469384) b!705394))

(assert (= (and b!705394 res!469382) b!705408))

(assert (= (and b!705408 res!469376) b!705396))

(assert (= (and b!705396 res!469378) b!705403))

(declare-fun m!663591 () Bool)

(assert (=> b!705408 m!663591))

(declare-fun m!663593 () Bool)

(assert (=> b!705404 m!663593))

(declare-fun m!663595 () Bool)

(assert (=> b!705407 m!663595))

(declare-fun m!663597 () Bool)

(assert (=> b!705402 m!663597))

(declare-fun m!663599 () Bool)

(assert (=> b!705393 m!663599))

(declare-fun m!663601 () Bool)

(assert (=> b!705396 m!663601))

(declare-fun m!663603 () Bool)

(assert (=> b!705409 m!663603))

(declare-fun m!663605 () Bool)

(assert (=> b!705401 m!663605))

(declare-fun m!663607 () Bool)

(assert (=> b!705395 m!663607))

(declare-fun m!663609 () Bool)

(assert (=> b!705403 m!663609))

(declare-fun m!663611 () Bool)

(assert (=> b!705403 m!663611))

(declare-fun m!663613 () Bool)

(assert (=> b!705399 m!663613))

(declare-fun m!663615 () Bool)

(assert (=> b!705392 m!663615))

(declare-fun m!663617 () Bool)

(assert (=> b!705398 m!663617))

(declare-fun m!663619 () Bool)

(assert (=> b!705405 m!663619))

(declare-fun m!663621 () Bool)

(assert (=> b!705397 m!663621))

(declare-fun m!663623 () Bool)

(assert (=> start!62586 m!663623))

(declare-fun m!663625 () Bool)

(assert (=> b!705400 m!663625))

(assert (=> b!705400 m!663625))

(declare-fun m!663627 () Bool)

(assert (=> b!705400 m!663627))

(declare-fun m!663629 () Bool)

(assert (=> b!705410 m!663629))

(push 1)

(assert (not b!705403))

(assert (not b!705409))

(assert (not b!705404))

(assert (not b!705402))

(assert (not b!705400))

(assert (not b!705392))

(assert (not b!705401))

(assert (not b!705398))

(assert (not b!705408))

(assert (not b!705396))

(assert (not b!705397))

(assert (not b!705407))

(assert (not b!705399))

(assert (not b!705410))

(assert (not b!705393))

(assert (not b!705405))

(assert (not b!705395))

(assert (not start!62586))

(check-sat)

