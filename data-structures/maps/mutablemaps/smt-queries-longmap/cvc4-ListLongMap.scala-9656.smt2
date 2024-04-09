; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114114 () Bool)

(assert start!114114)

(declare-fun b!1354325 () Bool)

(declare-fun res!899511 () Bool)

(declare-fun e!769407 () Bool)

(assert (=> b!1354325 (=> (not res!899511) (not e!769407))))

(declare-datatypes ((List!31774 0))(
  ( (Nil!31771) (Cons!31770 (h!32979 (_ BitVec 64)) (t!46439 List!31774)) )
))
(declare-fun lt!598180 () List!31774)

(declare-fun noDuplicate!2218 (List!31774) Bool)

(assert (=> b!1354325 (= res!899511 (noDuplicate!2218 lt!598180))))

(declare-fun b!1354326 () Bool)

(declare-datatypes ((Unit!44423 0))(
  ( (Unit!44424) )
))
(declare-fun e!769406 () Unit!44423)

(declare-fun Unit!44425 () Unit!44423)

(assert (=> b!1354326 (= e!769406 Unit!44425)))

(declare-fun res!899517 () Bool)

(declare-fun e!769404 () Bool)

(assert (=> start!114114 (=> (not res!899517) (not e!769404))))

(declare-datatypes ((array!92219 0))(
  ( (array!92220 (arr!44553 (Array (_ BitVec 32) (_ BitVec 64))) (size!45104 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92219)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114114 (= res!899517 (and (bvslt (size!45104 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45104 a!3742))))))

(assert (=> start!114114 e!769404))

(assert (=> start!114114 true))

(declare-fun array_inv!33498 (array!92219) Bool)

(assert (=> start!114114 (array_inv!33498 a!3742)))

(declare-fun b!1354327 () Bool)

(declare-fun res!899513 () Bool)

(assert (=> b!1354327 (=> (not res!899513) (not e!769404))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354327 (= res!899513 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45104 a!3742))))))

(declare-fun b!1354328 () Bool)

(declare-fun res!899518 () Bool)

(assert (=> b!1354328 (=> (not res!899518) (not e!769404))))

(declare-fun arrayNoDuplicates!0 (array!92219 (_ BitVec 32) List!31774) Bool)

(assert (=> b!1354328 (= res!899518 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31771))))

(declare-fun b!1354329 () Bool)

(declare-fun res!899510 () Bool)

(assert (=> b!1354329 (=> (not res!899510) (not e!769407))))

(declare-fun contains!9339 (List!31774 (_ BitVec 64)) Bool)

(assert (=> b!1354329 (= res!899510 (not (contains!9339 lt!598180 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354330 () Bool)

(declare-fun res!899515 () Bool)

(assert (=> b!1354330 (=> (not res!899515) (not e!769404))))

(declare-fun acc!759 () List!31774)

(assert (=> b!1354330 (= res!899515 (not (contains!9339 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354331 () Bool)

(declare-fun e!769405 () Bool)

(assert (=> b!1354331 (= e!769404 e!769405)))

(declare-fun res!899521 () Bool)

(assert (=> b!1354331 (=> (not res!899521) (not e!769405))))

(declare-fun lt!598182 () Bool)

(assert (=> b!1354331 (= res!899521 (and (not (= from!3120 i!1404)) lt!598182))))

(declare-fun lt!598179 () Unit!44423)

(assert (=> b!1354331 (= lt!598179 e!769406)))

(declare-fun c!126850 () Bool)

(assert (=> b!1354331 (= c!126850 lt!598182)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354331 (= lt!598182 (validKeyInArray!0 (select (arr!44553 a!3742) from!3120)))))

(declare-fun b!1354332 () Bool)

(declare-fun res!899514 () Bool)

(assert (=> b!1354332 (=> (not res!899514) (not e!769404))))

(assert (=> b!1354332 (= res!899514 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45104 a!3742)))))

(declare-fun b!1354333 () Bool)

(declare-fun res!899512 () Bool)

(assert (=> b!1354333 (=> (not res!899512) (not e!769404))))

(assert (=> b!1354333 (= res!899512 (not (contains!9339 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354334 () Bool)

(assert (=> b!1354334 (= e!769405 e!769407)))

(declare-fun res!899516 () Bool)

(assert (=> b!1354334 (=> (not res!899516) (not e!769407))))

(assert (=> b!1354334 (= res!899516 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!765 (List!31774 (_ BitVec 64)) List!31774)

(assert (=> b!1354334 (= lt!598180 ($colon$colon!765 acc!759 (select (arr!44553 a!3742) from!3120)))))

(declare-fun b!1354335 () Bool)

(declare-fun res!899522 () Bool)

(assert (=> b!1354335 (=> (not res!899522) (not e!769404))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354335 (= res!899522 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354336 () Bool)

(assert (=> b!1354336 (= e!769407 false)))

(declare-fun lt!598184 () Bool)

(assert (=> b!1354336 (= lt!598184 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598180))))

(declare-fun b!1354337 () Bool)

(declare-fun res!899519 () Bool)

(assert (=> b!1354337 (=> (not res!899519) (not e!769407))))

(assert (=> b!1354337 (= res!899519 (not (contains!9339 lt!598180 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354338 () Bool)

(declare-fun res!899523 () Bool)

(assert (=> b!1354338 (=> (not res!899523) (not e!769404))))

(assert (=> b!1354338 (= res!899523 (noDuplicate!2218 acc!759))))

(declare-fun b!1354339 () Bool)

(declare-fun lt!598183 () Unit!44423)

(assert (=> b!1354339 (= e!769406 lt!598183)))

(declare-fun lt!598181 () Unit!44423)

(declare-fun lemmaListSubSeqRefl!0 (List!31774) Unit!44423)

(assert (=> b!1354339 (= lt!598181 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!748 (List!31774 List!31774) Bool)

(assert (=> b!1354339 (subseq!748 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92219 List!31774 List!31774 (_ BitVec 32)) Unit!44423)

(assert (=> b!1354339 (= lt!598183 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!765 acc!759 (select (arr!44553 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354339 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354340 () Bool)

(declare-fun res!899520 () Bool)

(assert (=> b!1354340 (=> (not res!899520) (not e!769404))))

(assert (=> b!1354340 (= res!899520 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114114 res!899517) b!1354338))

(assert (= (and b!1354338 res!899523) b!1354330))

(assert (= (and b!1354330 res!899515) b!1354333))

(assert (= (and b!1354333 res!899512) b!1354328))

(assert (= (and b!1354328 res!899518) b!1354340))

(assert (= (and b!1354340 res!899520) b!1354327))

(assert (= (and b!1354327 res!899513) b!1354335))

(assert (= (and b!1354335 res!899522) b!1354332))

(assert (= (and b!1354332 res!899514) b!1354331))

(assert (= (and b!1354331 c!126850) b!1354339))

(assert (= (and b!1354331 (not c!126850)) b!1354326))

(assert (= (and b!1354331 res!899521) b!1354334))

(assert (= (and b!1354334 res!899516) b!1354325))

(assert (= (and b!1354325 res!899511) b!1354329))

(assert (= (and b!1354329 res!899510) b!1354337))

(assert (= (and b!1354337 res!899519) b!1354336))

(declare-fun m!1240741 () Bool)

(assert (=> b!1354339 m!1240741))

(declare-fun m!1240743 () Bool)

(assert (=> b!1354339 m!1240743))

(declare-fun m!1240745 () Bool)

(assert (=> b!1354339 m!1240745))

(declare-fun m!1240747 () Bool)

(assert (=> b!1354339 m!1240747))

(declare-fun m!1240749 () Bool)

(assert (=> b!1354339 m!1240749))

(assert (=> b!1354339 m!1240743))

(assert (=> b!1354339 m!1240745))

(declare-fun m!1240751 () Bool)

(assert (=> b!1354339 m!1240751))

(declare-fun m!1240753 () Bool)

(assert (=> b!1354336 m!1240753))

(declare-fun m!1240755 () Bool)

(assert (=> b!1354335 m!1240755))

(declare-fun m!1240757 () Bool)

(assert (=> b!1354333 m!1240757))

(assert (=> b!1354334 m!1240743))

(assert (=> b!1354334 m!1240743))

(assert (=> b!1354334 m!1240745))

(declare-fun m!1240759 () Bool)

(assert (=> b!1354340 m!1240759))

(declare-fun m!1240761 () Bool)

(assert (=> b!1354337 m!1240761))

(assert (=> b!1354331 m!1240743))

(assert (=> b!1354331 m!1240743))

(declare-fun m!1240763 () Bool)

(assert (=> b!1354331 m!1240763))

(declare-fun m!1240765 () Bool)

(assert (=> b!1354329 m!1240765))

(declare-fun m!1240767 () Bool)

(assert (=> b!1354328 m!1240767))

(declare-fun m!1240769 () Bool)

(assert (=> b!1354338 m!1240769))

(declare-fun m!1240771 () Bool)

(assert (=> b!1354325 m!1240771))

(declare-fun m!1240773 () Bool)

(assert (=> start!114114 m!1240773))

(declare-fun m!1240775 () Bool)

(assert (=> b!1354330 m!1240775))

(push 1)

(assert (not b!1354337))

(assert (not b!1354325))

(assert (not b!1354338))

(assert (not b!1354339))

(assert (not b!1354329))

(assert (not b!1354340))

(assert (not b!1354335))

(assert (not b!1354331))

(assert (not b!1354328))

(assert (not b!1354336))

(assert (not b!1354333))

(assert (not b!1354334))

(assert (not start!114114))

(assert (not b!1354330))

(check-sat)

