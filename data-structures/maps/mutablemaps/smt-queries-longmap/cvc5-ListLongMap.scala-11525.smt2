; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134218 () Bool)

(assert start!134218)

(declare-fun b!1567624 () Bool)

(declare-fun e!873880 () Bool)

(declare-fun e!873881 () Bool)

(assert (=> b!1567624 (= e!873880 e!873881)))

(declare-fun res!1071448 () Bool)

(assert (=> b!1567624 (=> (not res!1071448) (not e!873881))))

(declare-fun e!873879 () Bool)

(assert (=> b!1567624 (= res!1071448 e!873879)))

(declare-fun res!1071449 () Bool)

(assert (=> b!1567624 (=> res!1071449 e!873879)))

(declare-fun lt!672964 () Bool)

(assert (=> b!1567624 (= res!1071449 lt!672964)))

(declare-datatypes ((array!104691 0))(
  ( (array!104692 (arr!50524 (Array (_ BitVec 32) (_ BitVec 64))) (size!51075 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104691)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567624 (= lt!672964 (not (validKeyInArray!0 (select (arr!50524 a!3481) from!2856))))))

(declare-fun b!1567625 () Bool)

(declare-fun res!1071452 () Bool)

(assert (=> b!1567625 (=> (not res!1071452) (not e!873880))))

(assert (=> b!1567625 (= res!1071452 (bvslt from!2856 (size!51075 a!3481)))))

(declare-fun b!1567626 () Bool)

(declare-fun res!1071450 () Bool)

(assert (=> b!1567626 (=> (not res!1071450) (not e!873880))))

(declare-datatypes ((List!36835 0))(
  ( (Nil!36832) (Cons!36831 (h!38279 (_ BitVec 64)) (t!51750 List!36835)) )
))
(declare-fun acc!619 () List!36835)

(declare-fun noDuplicate!2685 (List!36835) Bool)

(assert (=> b!1567626 (= res!1071450 (noDuplicate!2685 acc!619))))

(declare-fun b!1567628 () Bool)

(declare-fun res!1071453 () Bool)

(assert (=> b!1567628 (=> (not res!1071453) (not e!873880))))

(declare-fun contains!10394 (List!36835 (_ BitVec 64)) Bool)

(assert (=> b!1567628 (= res!1071453 (not (contains!10394 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567629 () Bool)

(declare-fun res!1071454 () Bool)

(assert (=> b!1567629 (=> (not res!1071454) (not e!873881))))

(assert (=> b!1567629 (= res!1071454 (and (not lt!672964) (bvsge (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-fun b!1567630 () Bool)

(declare-fun res!1071451 () Bool)

(assert (=> b!1567630 (=> (not res!1071451) (not e!873880))))

(assert (=> b!1567630 (= res!1071451 (not (contains!10394 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567631 () Bool)

(assert (=> b!1567631 (= e!873879 (not (contains!10394 acc!619 (select (arr!50524 a!3481) from!2856))))))

(declare-fun res!1071455 () Bool)

(assert (=> start!134218 (=> (not res!1071455) (not e!873880))))

(assert (=> start!134218 (= res!1071455 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51075 a!3481)) (bvslt (size!51075 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134218 e!873880))

(assert (=> start!134218 true))

(declare-fun array_inv!39169 (array!104691) Bool)

(assert (=> start!134218 (array_inv!39169 a!3481)))

(declare-fun b!1567627 () Bool)

(assert (=> b!1567627 (= e!873881 (not (noDuplicate!2685 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619))))))

(assert (= (and start!134218 res!1071455) b!1567626))

(assert (= (and b!1567626 res!1071450) b!1567628))

(assert (= (and b!1567628 res!1071453) b!1567630))

(assert (= (and b!1567630 res!1071451) b!1567625))

(assert (= (and b!1567625 res!1071452) b!1567624))

(assert (= (and b!1567624 (not res!1071449)) b!1567631))

(assert (= (and b!1567624 res!1071448) b!1567629))

(assert (= (and b!1567629 res!1071454) b!1567627))

(declare-fun m!1442443 () Bool)

(assert (=> b!1567624 m!1442443))

(assert (=> b!1567624 m!1442443))

(declare-fun m!1442445 () Bool)

(assert (=> b!1567624 m!1442445))

(assert (=> b!1567631 m!1442443))

(assert (=> b!1567631 m!1442443))

(declare-fun m!1442447 () Bool)

(assert (=> b!1567631 m!1442447))

(assert (=> b!1567627 m!1442443))

(declare-fun m!1442449 () Bool)

(assert (=> b!1567627 m!1442449))

(declare-fun m!1442451 () Bool)

(assert (=> b!1567626 m!1442451))

(declare-fun m!1442453 () Bool)

(assert (=> start!134218 m!1442453))

(declare-fun m!1442455 () Bool)

(assert (=> b!1567628 m!1442455))

(declare-fun m!1442457 () Bool)

(assert (=> b!1567630 m!1442457))

(push 1)

(assert (not b!1567627))

(assert (not b!1567628))

(assert (not b!1567631))

(assert (not b!1567630))

(assert (not b!1567624))

(assert (not b!1567626))

(assert (not start!134218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163559 () Bool)

(declare-fun res!1071516 () Bool)

(declare-fun e!873919 () Bool)

(assert (=> d!163559 (=> res!1071516 e!873919)))

(assert (=> d!163559 (= res!1071516 (is-Nil!36832 acc!619))))

(assert (=> d!163559 (= (noDuplicate!2685 acc!619) e!873919)))

(declare-fun b!1567692 () Bool)

(declare-fun e!873920 () Bool)

(assert (=> b!1567692 (= e!873919 e!873920)))

(declare-fun res!1071517 () Bool)

(assert (=> b!1567692 (=> (not res!1071517) (not e!873920))))

(assert (=> b!1567692 (= res!1071517 (not (contains!10394 (t!51750 acc!619) (h!38279 acc!619))))))

(declare-fun b!1567693 () Bool)

(assert (=> b!1567693 (= e!873920 (noDuplicate!2685 (t!51750 acc!619)))))

(assert (= (and d!163559 (not res!1071516)) b!1567692))

(assert (= (and b!1567692 res!1071517) b!1567693))

(declare-fun m!1442491 () Bool)

(assert (=> b!1567692 m!1442491))

(declare-fun m!1442493 () Bool)

(assert (=> b!1567693 m!1442493))

(assert (=> b!1567626 d!163559))

(declare-fun d!163561 () Bool)

(assert (=> d!163561 (= (array_inv!39169 a!3481) (bvsge (size!51075 a!3481) #b00000000000000000000000000000000))))

(assert (=> start!134218 d!163561))

(declare-fun d!163565 () Bool)

(declare-fun res!1071524 () Bool)

(declare-fun e!873927 () Bool)

(assert (=> d!163565 (=> res!1071524 e!873927)))

(assert (=> d!163565 (= res!1071524 (is-Nil!36832 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619)))))

(assert (=> d!163565 (= (noDuplicate!2685 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619)) e!873927)))

(declare-fun b!1567700 () Bool)

(declare-fun e!873928 () Bool)

(assert (=> b!1567700 (= e!873927 e!873928)))

(declare-fun res!1071525 () Bool)

(assert (=> b!1567700 (=> (not res!1071525) (not e!873928))))

(assert (=> b!1567700 (= res!1071525 (not (contains!10394 (t!51750 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619)) (h!38279 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619)))))))

(declare-fun b!1567701 () Bool)

(assert (=> b!1567701 (= e!873928 (noDuplicate!2685 (t!51750 (Cons!36831 (select (arr!50524 a!3481) from!2856) acc!619))))))

(assert (= (and d!163565 (not res!1071524)) b!1567700))

(assert (= (and b!1567700 res!1071525) b!1567701))

(declare-fun m!1442509 () Bool)

(assert (=> b!1567700 m!1442509))

(declare-fun m!1442513 () Bool)

(assert (=> b!1567701 m!1442513))

(assert (=> b!1567627 d!163565))

(declare-fun d!163571 () Bool)

(declare-fun lt!672981 () Bool)

(declare-fun content!817 (List!36835) (Set (_ BitVec 64)))

(assert (=> d!163571 (= lt!672981 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!817 acc!619)))))

(declare-fun e!873944 () Bool)

(assert (=> d!163571 (= lt!672981 e!873944)))

(declare-fun res!1071540 () Bool)

(assert (=> d!163571 (=> (not res!1071540) (not e!873944))))

(assert (=> d!163571 (= res!1071540 (is-Cons!36831 acc!619))))

(assert (=> d!163571 (= (contains!10394 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672981)))

(declare-fun b!1567716 () Bool)

(declare-fun e!873943 () Bool)

(assert (=> b!1567716 (= e!873944 e!873943)))

(declare-fun res!1071541 () Bool)

(assert (=> b!1567716 (=> res!1071541 e!873943)))

(assert (=> b!1567716 (= res!1071541 (= (h!38279 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567717 () Bool)

(assert (=> b!1567717 (= e!873943 (contains!10394 (t!51750 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163571 res!1071540) b!1567716))

(assert (= (and b!1567716 (not res!1071541)) b!1567717))

(declare-fun m!1442519 () Bool)

(assert (=> d!163571 m!1442519))

(declare-fun m!1442521 () Bool)

(assert (=> d!163571 m!1442521))

(declare-fun m!1442523 () Bool)

(assert (=> b!1567717 m!1442523))

(assert (=> b!1567628 d!163571))

(declare-fun d!163575 () Bool)

(assert (=> d!163575 (= (validKeyInArray!0 (select (arr!50524 a!3481) from!2856)) (and (not (= (select (arr!50524 a!3481) from!2856) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50524 a!3481) from!2856) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567624 d!163575))

(declare-fun d!163581 () Bool)

(declare-fun lt!672983 () Bool)

(assert (=> d!163581 (= lt!672983 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!817 acc!619)))))

(declare-fun e!873952 () Bool)

(assert (=> d!163581 (= lt!672983 e!873952)))

(declare-fun res!1071548 () Bool)

(assert (=> d!163581 (=> (not res!1071548) (not e!873952))))

(assert (=> d!163581 (= res!1071548 (is-Cons!36831 acc!619))))

(assert (=> d!163581 (= (contains!10394 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672983)))

(declare-fun b!1567724 () Bool)

(declare-fun e!873951 () Bool)

(assert (=> b!1567724 (= e!873952 e!873951)))

(declare-fun res!1071549 () Bool)

(assert (=> b!1567724 (=> res!1071549 e!873951)))

(assert (=> b!1567724 (= res!1071549 (= (h!38279 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567725 () Bool)

(assert (=> b!1567725 (= e!873951 (contains!10394 (t!51750 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163581 res!1071548) b!1567724))

(assert (= (and b!1567724 (not res!1071549)) b!1567725))

(assert (=> d!163581 m!1442519))

(declare-fun m!1442537 () Bool)

(assert (=> d!163581 m!1442537))

(declare-fun m!1442539 () Bool)

(assert (=> b!1567725 m!1442539))

(assert (=> b!1567630 d!163581))

(declare-fun lt!672984 () Bool)

(declare-fun d!163585 () Bool)

(assert (=> d!163585 (= lt!672984 (set.member (select (arr!50524 a!3481) from!2856) (content!817 acc!619)))))

(declare-fun e!873956 () Bool)

(assert (=> d!163585 (= lt!672984 e!873956)))

(declare-fun res!1071552 () Bool)

(assert (=> d!163585 (=> (not res!1071552) (not e!873956))))

(assert (=> d!163585 (= res!1071552 (is-Cons!36831 acc!619))))

(assert (=> d!163585 (= (contains!10394 acc!619 (select (arr!50524 a!3481) from!2856)) lt!672984)))

(declare-fun b!1567728 () Bool)

(declare-fun e!873955 () Bool)

(assert (=> b!1567728 (= e!873956 e!873955)))

(declare-fun res!1071553 () Bool)

(assert (=> b!1567728 (=> res!1071553 e!873955)))

(assert (=> b!1567728 (= res!1071553 (= (h!38279 acc!619) (select (arr!50524 a!3481) from!2856)))))

(declare-fun b!1567729 () Bool)

(assert (=> b!1567729 (= e!873955 (contains!10394 (t!51750 acc!619) (select (arr!50524 a!3481) from!2856)))))

(assert (= (and d!163585 res!1071552) b!1567728))

(assert (= (and b!1567728 (not res!1071553)) b!1567729))

(assert (=> d!163585 m!1442519))

(assert (=> d!163585 m!1442443))

(declare-fun m!1442543 () Bool)

(assert (=> d!163585 m!1442543))

(assert (=> b!1567729 m!1442443))

(declare-fun m!1442547 () Bool)

(assert (=> b!1567729 m!1442547))

(assert (=> b!1567631 d!163585))

(push 1)

(assert (not b!1567717))

(assert (not d!163581))

(assert (not b!1567692))

(assert (not d!163585))

(assert (not b!1567701))

(assert (not d!163571))

(assert (not b!1567725))

(assert (not b!1567700))

(assert (not b!1567729))

