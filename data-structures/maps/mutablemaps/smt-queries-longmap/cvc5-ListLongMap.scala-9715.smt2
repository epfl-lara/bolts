; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114998 () Bool)

(assert start!114998)

(declare-fun b!1362472 () Bool)

(declare-fun res!906561 () Bool)

(declare-fun e!772892 () Bool)

(assert (=> b!1362472 (=> (not res!906561) (not e!772892))))

(declare-datatypes ((List!31949 0))(
  ( (Nil!31946) (Cons!31945 (h!33154 (_ BitVec 64)) (t!46644 List!31949)) )
))
(declare-fun acc!759 () List!31949)

(declare-datatypes ((array!92599 0))(
  ( (array!92600 (arr!44728 (Array (_ BitVec 32) (_ BitVec 64))) (size!45279 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92599)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92599 (_ BitVec 32) List!31949) Bool)

(assert (=> b!1362472 (= res!906561 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362473 () Bool)

(assert (=> b!1362473 (= e!772892 false)))

(declare-datatypes ((Unit!44867 0))(
  ( (Unit!44868) )
))
(declare-fun lt!600453 () Unit!44867)

(declare-fun e!772894 () Unit!44867)

(assert (=> b!1362473 (= lt!600453 e!772894)))

(declare-fun c!127399 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362473 (= c!127399 (validKeyInArray!0 (select (arr!44728 a!3742) from!3120)))))

(declare-fun b!1362474 () Bool)

(declare-fun res!906565 () Bool)

(assert (=> b!1362474 (=> (not res!906565) (not e!772892))))

(declare-fun noDuplicate!2393 (List!31949) Bool)

(assert (=> b!1362474 (= res!906565 (noDuplicate!2393 acc!759))))

(declare-fun b!1362475 () Bool)

(declare-fun res!906566 () Bool)

(assert (=> b!1362475 (=> (not res!906566) (not e!772892))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362475 (= res!906566 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45279 a!3742))))))

(declare-fun b!1362476 () Bool)

(declare-fun res!906567 () Bool)

(assert (=> b!1362476 (=> (not res!906567) (not e!772892))))

(assert (=> b!1362476 (= res!906567 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45279 a!3742)))))

(declare-fun b!1362478 () Bool)

(declare-fun res!906563 () Bool)

(assert (=> b!1362478 (=> (not res!906563) (not e!772892))))

(declare-fun contains!9514 (List!31949 (_ BitVec 64)) Bool)

(assert (=> b!1362478 (= res!906563 (not (contains!9514 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362479 () Bool)

(declare-fun lt!600454 () Unit!44867)

(assert (=> b!1362479 (= e!772894 lt!600454)))

(declare-fun lt!600455 () Unit!44867)

(declare-fun lemmaListSubSeqRefl!0 (List!31949) Unit!44867)

(assert (=> b!1362479 (= lt!600455 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!905 (List!31949 List!31949) Bool)

(assert (=> b!1362479 (subseq!905 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92599 List!31949 List!31949 (_ BitVec 32)) Unit!44867)

(declare-fun $colon$colon!910 (List!31949 (_ BitVec 64)) List!31949)

(assert (=> b!1362479 (= lt!600454 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!910 acc!759 (select (arr!44728 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362479 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362480 () Bool)

(declare-fun Unit!44869 () Unit!44867)

(assert (=> b!1362480 (= e!772894 Unit!44869)))

(declare-fun b!1362477 () Bool)

(declare-fun res!906562 () Bool)

(assert (=> b!1362477 (=> (not res!906562) (not e!772892))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362477 (= res!906562 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!906560 () Bool)

(assert (=> start!114998 (=> (not res!906560) (not e!772892))))

(assert (=> start!114998 (= res!906560 (and (bvslt (size!45279 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45279 a!3742))))))

(assert (=> start!114998 e!772892))

(assert (=> start!114998 true))

(declare-fun array_inv!33673 (array!92599) Bool)

(assert (=> start!114998 (array_inv!33673 a!3742)))

(declare-fun b!1362481 () Bool)

(declare-fun res!906564 () Bool)

(assert (=> b!1362481 (=> (not res!906564) (not e!772892))))

(assert (=> b!1362481 (= res!906564 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31946))))

(declare-fun b!1362482 () Bool)

(declare-fun res!906559 () Bool)

(assert (=> b!1362482 (=> (not res!906559) (not e!772892))))

(assert (=> b!1362482 (= res!906559 (not (contains!9514 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114998 res!906560) b!1362474))

(assert (= (and b!1362474 res!906565) b!1362482))

(assert (= (and b!1362482 res!906559) b!1362478))

(assert (= (and b!1362478 res!906563) b!1362481))

(assert (= (and b!1362481 res!906564) b!1362472))

(assert (= (and b!1362472 res!906561) b!1362475))

(assert (= (and b!1362475 res!906566) b!1362477))

(assert (= (and b!1362477 res!906562) b!1362476))

(assert (= (and b!1362476 res!906567) b!1362473))

(assert (= (and b!1362473 c!127399) b!1362479))

(assert (= (and b!1362473 (not c!127399)) b!1362480))

(declare-fun m!1247467 () Bool)

(assert (=> b!1362481 m!1247467))

(declare-fun m!1247469 () Bool)

(assert (=> b!1362473 m!1247469))

(assert (=> b!1362473 m!1247469))

(declare-fun m!1247471 () Bool)

(assert (=> b!1362473 m!1247471))

(declare-fun m!1247473 () Bool)

(assert (=> b!1362479 m!1247473))

(assert (=> b!1362479 m!1247469))

(declare-fun m!1247475 () Bool)

(assert (=> b!1362479 m!1247475))

(declare-fun m!1247477 () Bool)

(assert (=> b!1362479 m!1247477))

(declare-fun m!1247479 () Bool)

(assert (=> b!1362479 m!1247479))

(assert (=> b!1362479 m!1247469))

(assert (=> b!1362479 m!1247475))

(declare-fun m!1247481 () Bool)

(assert (=> b!1362479 m!1247481))

(declare-fun m!1247483 () Bool)

(assert (=> start!114998 m!1247483))

(declare-fun m!1247485 () Bool)

(assert (=> b!1362474 m!1247485))

(declare-fun m!1247487 () Bool)

(assert (=> b!1362477 m!1247487))

(declare-fun m!1247489 () Bool)

(assert (=> b!1362478 m!1247489))

(declare-fun m!1247491 () Bool)

(assert (=> b!1362472 m!1247491))

(declare-fun m!1247493 () Bool)

(assert (=> b!1362482 m!1247493))

(push 1)

(assert (not b!1362481))

(assert (not start!114998))

(assert (not b!1362478))

(assert (not b!1362477))

(assert (not b!1362473))

(assert (not b!1362474))

(assert (not b!1362472))

(assert (not b!1362482))

(assert (not b!1362479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

