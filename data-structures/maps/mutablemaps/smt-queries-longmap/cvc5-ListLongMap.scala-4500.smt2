; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62484 () Bool)

(assert start!62484)

(declare-fun b!702451 () Bool)

(declare-fun res!466436 () Bool)

(declare-fun e!397416 () Bool)

(assert (=> b!702451 (=> (not res!466436) (not e!397416))))

(declare-datatypes ((List!13306 0))(
  ( (Nil!13303) (Cons!13302 (h!14347 (_ BitVec 64)) (t!19596 List!13306)) )
))
(declare-fun acc!652 () List!13306)

(declare-fun contains!3849 (List!13306 (_ BitVec 64)) Bool)

(assert (=> b!702451 (= res!466436 (not (contains!3849 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702452 () Bool)

(declare-fun res!466443 () Bool)

(assert (=> b!702452 (=> (not res!466443) (not e!397416))))

(declare-fun newAcc!49 () List!13306)

(assert (=> b!702452 (= res!466443 (not (contains!3849 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702453 () Bool)

(declare-fun e!397415 () Bool)

(assert (=> b!702453 (= e!397416 e!397415)))

(declare-fun res!466439 () Bool)

(assert (=> b!702453 (=> (not res!466439) (not e!397415))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!702453 (= res!466439 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((array!40119 0))(
  ( (array!40120 (arr!19212 (Array (_ BitVec 32) (_ BitVec 64))) (size!19595 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40119)

(declare-fun lt!317666 () List!13306)

(declare-fun $colon$colon!490 (List!13306 (_ BitVec 64)) List!13306)

(assert (=> b!702453 (= lt!317666 ($colon$colon!490 newAcc!49 (select (arr!19212 a!3591) from!2969)))))

(declare-fun lt!317667 () List!13306)

(assert (=> b!702453 (= lt!317667 ($colon$colon!490 acc!652 (select (arr!19212 a!3591) from!2969)))))

(declare-fun b!702454 () Bool)

(declare-fun res!466451 () Bool)

(assert (=> b!702454 (=> (not res!466451) (not e!397415))))

(assert (=> b!702454 (= res!466451 (not (contains!3849 lt!317667 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702455 () Bool)

(declare-fun res!466449 () Bool)

(assert (=> b!702455 (=> (not res!466449) (not e!397416))))

(declare-fun arrayNoDuplicates!0 (array!40119 (_ BitVec 32) List!13306) Bool)

(assert (=> b!702455 (= res!466449 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702456 () Bool)

(declare-fun res!466438 () Bool)

(assert (=> b!702456 (=> (not res!466438) (not e!397416))))

(declare-fun noDuplicate!1096 (List!13306) Bool)

(assert (=> b!702456 (= res!466438 (noDuplicate!1096 newAcc!49))))

(declare-fun b!702457 () Bool)

(declare-fun res!466463 () Bool)

(assert (=> b!702457 (=> (not res!466463) (not e!397415))))

(assert (=> b!702457 (= res!466463 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317667))))

(declare-fun b!702458 () Bool)

(declare-fun res!466435 () Bool)

(assert (=> b!702458 (=> (not res!466435) (not e!397415))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!702458 (= res!466435 (contains!3849 lt!317666 k!2824))))

(declare-fun b!702459 () Bool)

(declare-fun res!466442 () Bool)

(assert (=> b!702459 (=> (not res!466442) (not e!397415))))

(declare-fun arrayContainsKey!0 (array!40119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702459 (= res!466442 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702460 () Bool)

(declare-fun res!466455 () Bool)

(assert (=> b!702460 (=> (not res!466455) (not e!397416))))

(declare-fun -!258 (List!13306 (_ BitVec 64)) List!13306)

(assert (=> b!702460 (= res!466455 (= (-!258 newAcc!49 k!2824) acc!652))))

(declare-fun b!702461 () Bool)

(declare-fun res!466445 () Bool)

(assert (=> b!702461 (=> (not res!466445) (not e!397416))))

(assert (=> b!702461 (= res!466445 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19595 a!3591)))))

(declare-fun b!702462 () Bool)

(declare-fun res!466457 () Bool)

(assert (=> b!702462 (=> (not res!466457) (not e!397416))))

(assert (=> b!702462 (= res!466457 (contains!3849 newAcc!49 k!2824))))

(declare-fun res!466441 () Bool)

(assert (=> start!62484 (=> (not res!466441) (not e!397416))))

(assert (=> start!62484 (= res!466441 (and (bvslt (size!19595 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19595 a!3591))))))

(assert (=> start!62484 e!397416))

(assert (=> start!62484 true))

(declare-fun array_inv!14986 (array!40119) Bool)

(assert (=> start!62484 (array_inv!14986 a!3591)))

(declare-fun b!702463 () Bool)

(declare-fun res!466454 () Bool)

(assert (=> b!702463 (=> (not res!466454) (not e!397416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702463 (= res!466454 (validKeyInArray!0 k!2824))))

(declare-fun b!702464 () Bool)

(declare-fun res!466458 () Bool)

(assert (=> b!702464 (=> (not res!466458) (not e!397416))))

(assert (=> b!702464 (= res!466458 (not (contains!3849 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702465 () Bool)

(assert (=> b!702465 (= e!397415 (not true))))

(assert (=> b!702465 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317666)))

(declare-datatypes ((Unit!24574 0))(
  ( (Unit!24575) )
))
(declare-fun lt!317665 () Unit!24574)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40119 (_ BitVec 64) (_ BitVec 32) List!13306 List!13306) Unit!24574)

(assert (=> b!702465 (= lt!317665 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317667 lt!317666))))

(declare-fun b!702466 () Bool)

(declare-fun res!466460 () Bool)

(assert (=> b!702466 (=> (not res!466460) (not e!397416))))

(declare-fun subseq!293 (List!13306 List!13306) Bool)

(assert (=> b!702466 (= res!466460 (subseq!293 acc!652 newAcc!49))))

(declare-fun b!702467 () Bool)

(declare-fun res!466459 () Bool)

(assert (=> b!702467 (=> (not res!466459) (not e!397416))))

(assert (=> b!702467 (= res!466459 (not (contains!3849 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702468 () Bool)

(declare-fun res!466437 () Bool)

(assert (=> b!702468 (=> (not res!466437) (not e!397416))))

(assert (=> b!702468 (= res!466437 (validKeyInArray!0 (select (arr!19212 a!3591) from!2969)))))

(declare-fun b!702469 () Bool)

(declare-fun res!466440 () Bool)

(assert (=> b!702469 (=> (not res!466440) (not e!397416))))

(assert (=> b!702469 (= res!466440 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702470 () Bool)

(declare-fun res!466462 () Bool)

(assert (=> b!702470 (=> (not res!466462) (not e!397415))))

(assert (=> b!702470 (= res!466462 (noDuplicate!1096 lt!317666))))

(declare-fun b!702471 () Bool)

(declare-fun res!466448 () Bool)

(assert (=> b!702471 (=> (not res!466448) (not e!397415))))

(assert (=> b!702471 (= res!466448 (subseq!293 lt!317667 lt!317666))))

(declare-fun b!702472 () Bool)

(declare-fun res!466452 () Bool)

(assert (=> b!702472 (=> (not res!466452) (not e!397416))))

(assert (=> b!702472 (= res!466452 (not (contains!3849 acc!652 k!2824)))))

(declare-fun b!702473 () Bool)

(declare-fun res!466456 () Bool)

(assert (=> b!702473 (=> (not res!466456) (not e!397415))))

(assert (=> b!702473 (= res!466456 (not (contains!3849 lt!317667 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702474 () Bool)

(declare-fun res!466447 () Bool)

(assert (=> b!702474 (=> (not res!466447) (not e!397415))))

(assert (=> b!702474 (= res!466447 (not (contains!3849 lt!317666 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702475 () Bool)

(declare-fun res!466461 () Bool)

(assert (=> b!702475 (=> (not res!466461) (not e!397416))))

(assert (=> b!702475 (= res!466461 (noDuplicate!1096 acc!652))))

(declare-fun b!702476 () Bool)

(declare-fun res!466453 () Bool)

(assert (=> b!702476 (=> (not res!466453) (not e!397415))))

(assert (=> b!702476 (= res!466453 (not (contains!3849 lt!317666 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702477 () Bool)

(declare-fun res!466444 () Bool)

(assert (=> b!702477 (=> (not res!466444) (not e!397415))))

(assert (=> b!702477 (= res!466444 (= (-!258 lt!317666 k!2824) lt!317667))))

(declare-fun b!702478 () Bool)

(declare-fun res!466446 () Bool)

(assert (=> b!702478 (=> (not res!466446) (not e!397415))))

(assert (=> b!702478 (= res!466446 (not (contains!3849 lt!317667 k!2824)))))

(declare-fun b!702479 () Bool)

(declare-fun res!466450 () Bool)

(assert (=> b!702479 (=> (not res!466450) (not e!397415))))

(assert (=> b!702479 (= res!466450 (noDuplicate!1096 lt!317667))))

(assert (= (and start!62484 res!466441) b!702475))

(assert (= (and b!702475 res!466461) b!702456))

(assert (= (and b!702456 res!466438) b!702464))

(assert (= (and b!702464 res!466458) b!702451))

(assert (= (and b!702451 res!466436) b!702469))

(assert (= (and b!702469 res!466440) b!702472))

(assert (= (and b!702472 res!466452) b!702463))

(assert (= (and b!702463 res!466454) b!702455))

(assert (= (and b!702455 res!466449) b!702466))

(assert (= (and b!702466 res!466460) b!702462))

(assert (= (and b!702462 res!466457) b!702460))

(assert (= (and b!702460 res!466455) b!702452))

(assert (= (and b!702452 res!466443) b!702467))

(assert (= (and b!702467 res!466459) b!702461))

(assert (= (and b!702461 res!466445) b!702468))

(assert (= (and b!702468 res!466437) b!702453))

(assert (= (and b!702453 res!466439) b!702479))

(assert (= (and b!702479 res!466450) b!702470))

(assert (= (and b!702470 res!466462) b!702473))

(assert (= (and b!702473 res!466456) b!702454))

(assert (= (and b!702454 res!466451) b!702459))

(assert (= (and b!702459 res!466442) b!702478))

(assert (= (and b!702478 res!466446) b!702457))

(assert (= (and b!702457 res!466463) b!702471))

(assert (= (and b!702471 res!466448) b!702458))

(assert (= (and b!702458 res!466435) b!702477))

(assert (= (and b!702477 res!466444) b!702474))

(assert (= (and b!702474 res!466447) b!702476))

(assert (= (and b!702476 res!466453) b!702465))

(declare-fun m!661575 () Bool)

(assert (=> b!702471 m!661575))

(declare-fun m!661577 () Bool)

(assert (=> b!702453 m!661577))

(assert (=> b!702453 m!661577))

(declare-fun m!661579 () Bool)

(assert (=> b!702453 m!661579))

(assert (=> b!702453 m!661577))

(declare-fun m!661581 () Bool)

(assert (=> b!702453 m!661581))

(declare-fun m!661583 () Bool)

(assert (=> b!702470 m!661583))

(declare-fun m!661585 () Bool)

(assert (=> b!702459 m!661585))

(declare-fun m!661587 () Bool)

(assert (=> b!702460 m!661587))

(assert (=> b!702468 m!661577))

(assert (=> b!702468 m!661577))

(declare-fun m!661589 () Bool)

(assert (=> b!702468 m!661589))

(declare-fun m!661591 () Bool)

(assert (=> b!702463 m!661591))

(declare-fun m!661593 () Bool)

(assert (=> b!702478 m!661593))

(declare-fun m!661595 () Bool)

(assert (=> b!702467 m!661595))

(declare-fun m!661597 () Bool)

(assert (=> b!702454 m!661597))

(declare-fun m!661599 () Bool)

(assert (=> b!702466 m!661599))

(declare-fun m!661601 () Bool)

(assert (=> b!702476 m!661601))

(declare-fun m!661603 () Bool)

(assert (=> b!702451 m!661603))

(declare-fun m!661605 () Bool)

(assert (=> b!702455 m!661605))

(declare-fun m!661607 () Bool)

(assert (=> b!702457 m!661607))

(declare-fun m!661609 () Bool)

(assert (=> b!702462 m!661609))

(declare-fun m!661611 () Bool)

(assert (=> b!702477 m!661611))

(declare-fun m!661613 () Bool)

(assert (=> b!702456 m!661613))

(declare-fun m!661615 () Bool)

(assert (=> b!702475 m!661615))

(declare-fun m!661617 () Bool)

(assert (=> b!702479 m!661617))

(declare-fun m!661619 () Bool)

(assert (=> b!702465 m!661619))

(declare-fun m!661621 () Bool)

(assert (=> b!702465 m!661621))

(declare-fun m!661623 () Bool)

(assert (=> b!702469 m!661623))

(declare-fun m!661625 () Bool)

(assert (=> b!702464 m!661625))

(declare-fun m!661627 () Bool)

(assert (=> b!702472 m!661627))

(declare-fun m!661629 () Bool)

(assert (=> b!702473 m!661629))

(declare-fun m!661631 () Bool)

(assert (=> b!702458 m!661631))

(declare-fun m!661633 () Bool)

(assert (=> start!62484 m!661633))

(declare-fun m!661635 () Bool)

(assert (=> b!702474 m!661635))

(declare-fun m!661637 () Bool)

(assert (=> b!702452 m!661637))

(push 1)

