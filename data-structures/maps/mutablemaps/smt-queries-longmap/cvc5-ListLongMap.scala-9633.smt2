; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113972 () Bool)

(assert start!113972)

(declare-fun b!1351365 () Bool)

(declare-fun res!896951 () Bool)

(declare-fun e!768489 () Bool)

(assert (=> b!1351365 (=> (not res!896951) (not e!768489))))

(declare-datatypes ((List!31703 0))(
  ( (Nil!31700) (Cons!31699 (h!32908 (_ BitVec 64)) (t!46368 List!31703)) )
))
(declare-fun acc!759 () List!31703)

(declare-fun contains!9268 (List!31703 (_ BitVec 64)) Bool)

(assert (=> b!1351365 (= res!896951 (not (contains!9268 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351366 () Bool)

(declare-fun res!896949 () Bool)

(assert (=> b!1351366 (=> (not res!896949) (not e!768489))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92077 0))(
  ( (array!92078 (arr!44482 (Array (_ BitVec 32) (_ BitVec 64))) (size!45033 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92077)

(assert (=> b!1351366 (= res!896949 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45033 a!3742))))))

(declare-fun res!896946 () Bool)

(assert (=> start!113972 (=> (not res!896946) (not e!768489))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113972 (= res!896946 (and (bvslt (size!45033 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45033 a!3742))))))

(assert (=> start!113972 e!768489))

(assert (=> start!113972 true))

(declare-fun array_inv!33427 (array!92077) Bool)

(assert (=> start!113972 (array_inv!33427 a!3742)))

(declare-fun b!1351367 () Bool)

(declare-fun res!896944 () Bool)

(declare-fun e!768490 () Bool)

(assert (=> b!1351367 (=> res!896944 e!768490)))

(declare-fun lt!597169 () List!31703)

(assert (=> b!1351367 (= res!896944 (contains!9268 lt!597169 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351368 () Bool)

(declare-fun res!896956 () Bool)

(assert (=> b!1351368 (=> (not res!896956) (not e!768489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351368 (= res!896956 (validKeyInArray!0 (select (arr!44482 a!3742) from!3120)))))

(declare-fun b!1351369 () Bool)

(declare-fun res!896957 () Bool)

(assert (=> b!1351369 (=> (not res!896957) (not e!768489))))

(declare-fun noDuplicate!2147 (List!31703) Bool)

(assert (=> b!1351369 (= res!896957 (noDuplicate!2147 acc!759))))

(declare-fun b!1351370 () Bool)

(declare-fun res!896958 () Bool)

(assert (=> b!1351370 (=> res!896958 e!768490)))

(declare-fun subseq!677 (List!31703 List!31703) Bool)

(assert (=> b!1351370 (= res!896958 (not (subseq!677 acc!759 lt!597169)))))

(declare-fun b!1351371 () Bool)

(declare-fun res!896955 () Bool)

(assert (=> b!1351371 (=> (not res!896955) (not e!768489))))

(declare-fun arrayNoDuplicates!0 (array!92077 (_ BitVec 32) List!31703) Bool)

(assert (=> b!1351371 (= res!896955 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351372 () Bool)

(declare-fun res!896953 () Bool)

(assert (=> b!1351372 (=> (not res!896953) (not e!768489))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351372 (= res!896953 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351373 () Bool)

(declare-fun res!896947 () Bool)

(assert (=> b!1351373 (=> (not res!896947) (not e!768489))))

(assert (=> b!1351373 (= res!896947 (not (contains!9268 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351374 () Bool)

(assert (=> b!1351374 (= e!768490 true)))

(declare-fun lt!597170 () Bool)

(assert (=> b!1351374 (= lt!597170 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597169))))

(declare-datatypes ((Unit!44216 0))(
  ( (Unit!44217) )
))
(declare-fun lt!597168 () Unit!44216)

(declare-fun noDuplicateSubseq!128 (List!31703 List!31703) Unit!44216)

(assert (=> b!1351374 (= lt!597168 (noDuplicateSubseq!128 acc!759 lt!597169))))

(declare-fun b!1351375 () Bool)

(assert (=> b!1351375 (= e!768489 (not e!768490))))

(declare-fun res!896954 () Bool)

(assert (=> b!1351375 (=> res!896954 e!768490)))

(assert (=> b!1351375 (= res!896954 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!694 (List!31703 (_ BitVec 64)) List!31703)

(assert (=> b!1351375 (= lt!597169 ($colon$colon!694 acc!759 (select (arr!44482 a!3742) from!3120)))))

(assert (=> b!1351375 (subseq!677 acc!759 acc!759)))

(declare-fun lt!597167 () Unit!44216)

(declare-fun lemmaListSubSeqRefl!0 (List!31703) Unit!44216)

(assert (=> b!1351375 (= lt!597167 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351376 () Bool)

(declare-fun res!896948 () Bool)

(assert (=> b!1351376 (=> res!896948 e!768490)))

(assert (=> b!1351376 (= res!896948 (not (noDuplicate!2147 lt!597169)))))

(declare-fun b!1351377 () Bool)

(declare-fun res!896945 () Bool)

(assert (=> b!1351377 (=> (not res!896945) (not e!768489))))

(assert (=> b!1351377 (= res!896945 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31700))))

(declare-fun b!1351378 () Bool)

(declare-fun res!896950 () Bool)

(assert (=> b!1351378 (=> (not res!896950) (not e!768489))))

(assert (=> b!1351378 (= res!896950 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45033 a!3742)))))

(declare-fun b!1351379 () Bool)

(declare-fun res!896952 () Bool)

(assert (=> b!1351379 (=> res!896952 e!768490)))

(assert (=> b!1351379 (= res!896952 (contains!9268 lt!597169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113972 res!896946) b!1351369))

(assert (= (and b!1351369 res!896957) b!1351373))

(assert (= (and b!1351373 res!896947) b!1351365))

(assert (= (and b!1351365 res!896951) b!1351377))

(assert (= (and b!1351377 res!896945) b!1351371))

(assert (= (and b!1351371 res!896955) b!1351366))

(assert (= (and b!1351366 res!896949) b!1351372))

(assert (= (and b!1351372 res!896953) b!1351378))

(assert (= (and b!1351378 res!896950) b!1351368))

(assert (= (and b!1351368 res!896956) b!1351375))

(assert (= (and b!1351375 (not res!896954)) b!1351376))

(assert (= (and b!1351376 (not res!896948)) b!1351379))

(assert (= (and b!1351379 (not res!896952)) b!1351367))

(assert (= (and b!1351367 (not res!896944)) b!1351370))

(assert (= (and b!1351370 (not res!896958)) b!1351374))

(declare-fun m!1238425 () Bool)

(assert (=> b!1351374 m!1238425))

(declare-fun m!1238427 () Bool)

(assert (=> b!1351374 m!1238427))

(declare-fun m!1238429 () Bool)

(assert (=> b!1351376 m!1238429))

(declare-fun m!1238431 () Bool)

(assert (=> b!1351365 m!1238431))

(declare-fun m!1238433 () Bool)

(assert (=> b!1351379 m!1238433))

(declare-fun m!1238435 () Bool)

(assert (=> b!1351375 m!1238435))

(assert (=> b!1351375 m!1238435))

(declare-fun m!1238437 () Bool)

(assert (=> b!1351375 m!1238437))

(declare-fun m!1238439 () Bool)

(assert (=> b!1351375 m!1238439))

(declare-fun m!1238441 () Bool)

(assert (=> b!1351375 m!1238441))

(declare-fun m!1238443 () Bool)

(assert (=> b!1351371 m!1238443))

(declare-fun m!1238445 () Bool)

(assert (=> b!1351367 m!1238445))

(declare-fun m!1238447 () Bool)

(assert (=> start!113972 m!1238447))

(declare-fun m!1238449 () Bool)

(assert (=> b!1351377 m!1238449))

(declare-fun m!1238451 () Bool)

(assert (=> b!1351373 m!1238451))

(declare-fun m!1238453 () Bool)

(assert (=> b!1351370 m!1238453))

(declare-fun m!1238455 () Bool)

(assert (=> b!1351372 m!1238455))

(declare-fun m!1238457 () Bool)

(assert (=> b!1351369 m!1238457))

(assert (=> b!1351368 m!1238435))

(assert (=> b!1351368 m!1238435))

(declare-fun m!1238459 () Bool)

(assert (=> b!1351368 m!1238459))

(push 1)

(assert (not b!1351375))

(assert (not b!1351379))

(assert (not b!1351369))

(assert (not b!1351368))

(assert (not b!1351370))

(assert (not b!1351377))

(assert (not b!1351367))

(assert (not b!1351374))

(assert (not b!1351373))

(assert (not b!1351372))

(assert (not b!1351371))

(assert (not b!1351376))

(assert (not b!1351365))

(assert (not start!113972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

