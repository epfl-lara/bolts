; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114534 () Bool)

(assert start!114534)

(declare-fun b!1358815 () Bool)

(declare-fun res!903506 () Bool)

(declare-fun e!771123 () Bool)

(assert (=> b!1358815 (=> (not res!903506) (not e!771123))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358815 (= res!903506 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!903502 () Bool)

(assert (=> start!114534 (=> (not res!903502) (not e!771123))))

(declare-datatypes ((array!92453 0))(
  ( (array!92454 (arr!44664 (Array (_ BitVec 32) (_ BitVec 64))) (size!45215 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92453)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114534 (= res!903502 (and (bvslt (size!45215 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45215 a!3742))))))

(assert (=> start!114534 e!771123))

(assert (=> start!114534 true))

(declare-fun array_inv!33609 (array!92453) Bool)

(assert (=> start!114534 (array_inv!33609 a!3742)))

(declare-fun b!1358816 () Bool)

(declare-fun res!903503 () Bool)

(assert (=> b!1358816 (=> (not res!903503) (not e!771123))))

(declare-datatypes ((List!31885 0))(
  ( (Nil!31882) (Cons!31881 (h!33090 (_ BitVec 64)) (t!46562 List!31885)) )
))
(declare-fun acc!759 () List!31885)

(declare-fun arrayNoDuplicates!0 (array!92453 (_ BitVec 32) List!31885) Bool)

(assert (=> b!1358816 (= res!903503 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358817 () Bool)

(declare-fun res!903504 () Bool)

(assert (=> b!1358817 (=> (not res!903504) (not e!771123))))

(declare-fun contains!9450 (List!31885 (_ BitVec 64)) Bool)

(assert (=> b!1358817 (= res!903504 (not (contains!9450 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358818 () Bool)

(declare-fun res!903508 () Bool)

(assert (=> b!1358818 (=> (not res!903508) (not e!771123))))

(assert (=> b!1358818 (= res!903508 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31882))))

(declare-fun b!1358819 () Bool)

(declare-datatypes ((Unit!44675 0))(
  ( (Unit!44676) )
))
(declare-fun e!771124 () Unit!44675)

(declare-fun lt!599400 () Unit!44675)

(assert (=> b!1358819 (= e!771124 lt!599400)))

(declare-fun lt!599401 () Unit!44675)

(declare-fun lemmaListSubSeqRefl!0 (List!31885) Unit!44675)

(assert (=> b!1358819 (= lt!599401 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!841 (List!31885 List!31885) Bool)

(assert (=> b!1358819 (subseq!841 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92453 List!31885 List!31885 (_ BitVec 32)) Unit!44675)

(declare-fun $colon$colon!846 (List!31885 (_ BitVec 64)) List!31885)

(assert (=> b!1358819 (= lt!599400 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!846 acc!759 (select (arr!44664 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358819 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358820 () Bool)

(declare-fun res!903509 () Bool)

(assert (=> b!1358820 (=> (not res!903509) (not e!771123))))

(assert (=> b!1358820 (= res!903509 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45215 a!3742)))))

(declare-fun b!1358821 () Bool)

(declare-fun Unit!44677 () Unit!44675)

(assert (=> b!1358821 (= e!771124 Unit!44677)))

(declare-fun b!1358822 () Bool)

(assert (=> b!1358822 (= e!771123 false)))

(declare-fun lt!599402 () Unit!44675)

(assert (=> b!1358822 (= lt!599402 e!771124)))

(declare-fun c!127099 () Bool)

(assert (=> b!1358822 (= c!127099 (validKeyInArray!0 (select (arr!44664 a!3742) from!3120)))))

(declare-fun b!1358823 () Bool)

(declare-fun res!903510 () Bool)

(assert (=> b!1358823 (=> (not res!903510) (not e!771123))))

(declare-fun noDuplicate!2329 (List!31885) Bool)

(assert (=> b!1358823 (= res!903510 (noDuplicate!2329 acc!759))))

(declare-fun b!1358824 () Bool)

(declare-fun res!903505 () Bool)

(assert (=> b!1358824 (=> (not res!903505) (not e!771123))))

(assert (=> b!1358824 (= res!903505 (not (contains!9450 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358825 () Bool)

(declare-fun res!903507 () Bool)

(assert (=> b!1358825 (=> (not res!903507) (not e!771123))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358825 (= res!903507 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45215 a!3742))))))

(assert (= (and start!114534 res!903502) b!1358823))

(assert (= (and b!1358823 res!903510) b!1358824))

(assert (= (and b!1358824 res!903505) b!1358817))

(assert (= (and b!1358817 res!903504) b!1358818))

(assert (= (and b!1358818 res!903508) b!1358816))

(assert (= (and b!1358816 res!903503) b!1358825))

(assert (= (and b!1358825 res!903507) b!1358815))

(assert (= (and b!1358815 res!903506) b!1358820))

(assert (= (and b!1358820 res!903509) b!1358822))

(assert (= (and b!1358822 c!127099) b!1358819))

(assert (= (and b!1358822 (not c!127099)) b!1358821))

(declare-fun m!1244367 () Bool)

(assert (=> b!1358822 m!1244367))

(assert (=> b!1358822 m!1244367))

(declare-fun m!1244369 () Bool)

(assert (=> b!1358822 m!1244369))

(declare-fun m!1244371 () Bool)

(assert (=> b!1358818 m!1244371))

(declare-fun m!1244373 () Bool)

(assert (=> b!1358823 m!1244373))

(declare-fun m!1244375 () Bool)

(assert (=> b!1358815 m!1244375))

(declare-fun m!1244377 () Bool)

(assert (=> b!1358819 m!1244377))

(assert (=> b!1358819 m!1244367))

(declare-fun m!1244379 () Bool)

(assert (=> b!1358819 m!1244379))

(declare-fun m!1244381 () Bool)

(assert (=> b!1358819 m!1244381))

(declare-fun m!1244383 () Bool)

(assert (=> b!1358819 m!1244383))

(assert (=> b!1358819 m!1244367))

(assert (=> b!1358819 m!1244379))

(declare-fun m!1244385 () Bool)

(assert (=> b!1358819 m!1244385))

(declare-fun m!1244387 () Bool)

(assert (=> b!1358824 m!1244387))

(declare-fun m!1244389 () Bool)

(assert (=> b!1358816 m!1244389))

(declare-fun m!1244391 () Bool)

(assert (=> start!114534 m!1244391))

(declare-fun m!1244393 () Bool)

(assert (=> b!1358817 m!1244393))

(push 1)

(assert (not start!114534))

(assert (not b!1358819))

(assert (not b!1358816))

(assert (not b!1358824))

(assert (not b!1358817))

(assert (not b!1358815))

(assert (not b!1358818))

(assert (not b!1358823))

(assert (not b!1358822))

(check-sat)

(pop 1)

