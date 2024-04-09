; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62220 () Bool)

(assert start!62220)

(declare-fun b!696469 () Bool)

(declare-fun res!460572 () Bool)

(declare-fun e!396039 () Bool)

(assert (=> b!696469 (=> (not res!460572) (not e!396039))))

(declare-fun e!396040 () Bool)

(assert (=> b!696469 (= res!460572 e!396040)))

(declare-fun res!460575 () Bool)

(assert (=> b!696469 (=> res!460575 e!396040)))

(declare-fun e!396034 () Bool)

(assert (=> b!696469 (= res!460575 e!396034)))

(declare-fun res!460565 () Bool)

(assert (=> b!696469 (=> (not res!460565) (not e!396034))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696469 (= res!460565 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696470 () Bool)

(declare-fun res!460579 () Bool)

(assert (=> b!696470 (=> (not res!460579) (not e!396039))))

(declare-datatypes ((List!13216 0))(
  ( (Nil!13213) (Cons!13212 (h!14257 (_ BitVec 64)) (t!19506 List!13216)) )
))
(declare-fun acc!681 () List!13216)

(declare-fun contains!3759 (List!13216 (_ BitVec 64)) Bool)

(assert (=> b!696470 (= res!460579 (not (contains!3759 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696471 () Bool)

(declare-fun res!460580 () Bool)

(assert (=> b!696471 (=> (not res!460580) (not e!396039))))

(declare-fun noDuplicate!1006 (List!13216) Bool)

(assert (=> b!696471 (= res!460580 (noDuplicate!1006 acc!681))))

(declare-fun b!696472 () Bool)

(declare-fun res!460571 () Bool)

(assert (=> b!696472 (=> (not res!460571) (not e!396039))))

(declare-fun e!396035 () Bool)

(assert (=> b!696472 (= res!460571 e!396035)))

(declare-fun res!460569 () Bool)

(assert (=> b!696472 (=> res!460569 e!396035)))

(declare-fun e!396037 () Bool)

(assert (=> b!696472 (= res!460569 e!396037)))

(declare-fun res!460568 () Bool)

(assert (=> b!696472 (=> (not res!460568) (not e!396037))))

(assert (=> b!696472 (= res!460568 (bvsgt from!3004 i!1382))))

(declare-fun b!696473 () Bool)

(declare-fun e!396038 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!696473 (= e!396038 (not (contains!3759 acc!681 k!2843)))))

(declare-fun b!696474 () Bool)

(declare-fun e!396033 () Bool)

(assert (=> b!696474 (= e!396033 (not (contains!3759 acc!681 k!2843)))))

(declare-fun b!696475 () Bool)

(declare-fun res!460566 () Bool)

(assert (=> b!696475 (=> (not res!460566) (not e!396039))))

(assert (=> b!696475 (= res!460566 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696476 () Bool)

(assert (=> b!696476 (= e!396037 (contains!3759 acc!681 k!2843))))

(declare-fun b!696477 () Bool)

(declare-fun res!460561 () Bool)

(assert (=> b!696477 (=> (not res!460561) (not e!396039))))

(declare-datatypes ((array!39933 0))(
  ( (array!39934 (arr!19122 (Array (_ BitVec 32) (_ BitVec 64))) (size!19505 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39933)

(declare-fun arrayNoDuplicates!0 (array!39933 (_ BitVec 32) List!13216) Bool)

(assert (=> b!696477 (= res!460561 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13213))))

(declare-fun b!696478 () Bool)

(declare-fun res!460577 () Bool)

(assert (=> b!696478 (=> (not res!460577) (not e!396039))))

(assert (=> b!696478 (= res!460577 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19505 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696479 () Bool)

(declare-fun res!460576 () Bool)

(assert (=> b!696479 (=> (not res!460576) (not e!396039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696479 (= res!460576 (validKeyInArray!0 k!2843))))

(declare-fun b!696480 () Bool)

(assert (=> b!696480 (= e!396034 (contains!3759 acc!681 k!2843))))

(declare-fun b!696481 () Bool)

(assert (=> b!696481 (= e!396040 e!396038)))

(declare-fun res!460567 () Bool)

(assert (=> b!696481 (=> (not res!460567) (not e!396038))))

(assert (=> b!696481 (= res!460567 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696482 () Bool)

(declare-fun res!460562 () Bool)

(assert (=> b!696482 (=> (not res!460562) (not e!396039))))

(assert (=> b!696482 (= res!460562 (not (validKeyInArray!0 (select (arr!19122 a!3626) from!3004))))))

(declare-fun b!696483 () Bool)

(declare-fun res!460563 () Bool)

(assert (=> b!696483 (=> (not res!460563) (not e!396039))))

(assert (=> b!696483 (= res!460563 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696484 () Bool)

(assert (=> b!696484 (= e!396035 e!396033)))

(declare-fun res!460574 () Bool)

(assert (=> b!696484 (=> (not res!460574) (not e!396033))))

(assert (=> b!696484 (= res!460574 (bvsle from!3004 i!1382))))

(declare-fun b!696485 () Bool)

(declare-fun res!460578 () Bool)

(assert (=> b!696485 (=> (not res!460578) (not e!396039))))

(assert (=> b!696485 (= res!460578 (not (contains!3759 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696486 () Bool)

(declare-fun res!460570 () Bool)

(assert (=> b!696486 (=> (not res!460570) (not e!396039))))

(assert (=> b!696486 (= res!460570 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19505 a!3626))))))

(declare-fun res!460564 () Bool)

(assert (=> start!62220 (=> (not res!460564) (not e!396039))))

(assert (=> start!62220 (= res!460564 (and (bvslt (size!19505 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19505 a!3626))))))

(assert (=> start!62220 e!396039))

(assert (=> start!62220 true))

(declare-fun array_inv!14896 (array!39933) Bool)

(assert (=> start!62220 (array_inv!14896 a!3626)))

(declare-fun b!696487 () Bool)

(assert (=> b!696487 (= e!396039 false)))

(declare-fun lt!317061 () Bool)

(assert (=> b!696487 (= lt!317061 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696488 () Bool)

(declare-fun res!460573 () Bool)

(assert (=> b!696488 (=> (not res!460573) (not e!396039))))

(declare-fun arrayContainsKey!0 (array!39933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696488 (= res!460573 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!62220 res!460564) b!696471))

(assert (= (and b!696471 res!460580) b!696485))

(assert (= (and b!696485 res!460578) b!696470))

(assert (= (and b!696470 res!460579) b!696472))

(assert (= (and b!696472 res!460568) b!696476))

(assert (= (and b!696472 (not res!460569)) b!696484))

(assert (= (and b!696484 res!460574) b!696474))

(assert (= (and b!696472 res!460571) b!696477))

(assert (= (and b!696477 res!460561) b!696483))

(assert (= (and b!696483 res!460563) b!696486))

(assert (= (and b!696486 res!460570) b!696479))

(assert (= (and b!696479 res!460576) b!696488))

(assert (= (and b!696488 res!460573) b!696478))

(assert (= (and b!696478 res!460577) b!696482))

(assert (= (and b!696482 res!460562) b!696475))

(assert (= (and b!696475 res!460566) b!696469))

(assert (= (and b!696469 res!460565) b!696480))

(assert (= (and b!696469 (not res!460575)) b!696481))

(assert (= (and b!696481 res!460567) b!696473))

(assert (= (and b!696469 res!460572) b!696487))

(declare-fun m!657393 () Bool)

(assert (=> b!696473 m!657393))

(declare-fun m!657395 () Bool)

(assert (=> b!696487 m!657395))

(declare-fun m!657397 () Bool)

(assert (=> b!696483 m!657397))

(declare-fun m!657399 () Bool)

(assert (=> b!696477 m!657399))

(declare-fun m!657401 () Bool)

(assert (=> start!62220 m!657401))

(declare-fun m!657403 () Bool)

(assert (=> b!696470 m!657403))

(declare-fun m!657405 () Bool)

(assert (=> b!696485 m!657405))

(declare-fun m!657407 () Bool)

(assert (=> b!696471 m!657407))

(declare-fun m!657409 () Bool)

(assert (=> b!696479 m!657409))

(assert (=> b!696476 m!657393))

(declare-fun m!657411 () Bool)

(assert (=> b!696482 m!657411))

(assert (=> b!696482 m!657411))

(declare-fun m!657413 () Bool)

(assert (=> b!696482 m!657413))

(assert (=> b!696474 m!657393))

(assert (=> b!696480 m!657393))

(declare-fun m!657415 () Bool)

(assert (=> b!696488 m!657415))

(push 1)

(assert (not b!696480))

(assert (not b!696476))

(assert (not b!696479))

(assert (not b!696474))

(assert (not b!696487))

(assert (not b!696473))

(assert (not b!696483))

(assert (not b!696471))

(assert (not b!696470))

(assert (not b!696477))

(assert (not b!696488))

(assert (not b!696485))

(assert (not b!696482))

(assert (not start!62220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

