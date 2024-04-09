; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114706 () Bool)

(assert start!114706)

(declare-fun b!1360198 () Bool)

(declare-fun res!904642 () Bool)

(declare-fun e!771747 () Bool)

(assert (=> b!1360198 (=> (not res!904642) (not e!771747))))

(declare-datatypes ((List!31914 0))(
  ( (Nil!31911) (Cons!31910 (h!33119 (_ BitVec 64)) (t!46597 List!31914)) )
))
(declare-fun acc!759 () List!31914)

(declare-datatypes ((array!92517 0))(
  ( (array!92518 (arr!44693 (Array (_ BitVec 32) (_ BitVec 64))) (size!45244 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92517)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92517 (_ BitVec 32) List!31914) Bool)

(assert (=> b!1360198 (= res!904642 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360199 () Bool)

(declare-fun res!904641 () Bool)

(assert (=> b!1360199 (=> (not res!904641) (not e!771747))))

(declare-fun noDuplicate!2358 (List!31914) Bool)

(assert (=> b!1360199 (= res!904641 (noDuplicate!2358 acc!759))))

(declare-fun b!1360200 () Bool)

(declare-fun res!904644 () Bool)

(assert (=> b!1360200 (=> (not res!904644) (not e!771747))))

(assert (=> b!1360200 (= res!904644 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45244 a!3742)))))

(declare-fun res!904640 () Bool)

(assert (=> start!114706 (=> (not res!904640) (not e!771747))))

(assert (=> start!114706 (= res!904640 (and (bvslt (size!45244 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45244 a!3742))))))

(assert (=> start!114706 e!771747))

(assert (=> start!114706 true))

(declare-fun array_inv!33638 (array!92517) Bool)

(assert (=> start!114706 (array_inv!33638 a!3742)))

(declare-fun b!1360201 () Bool)

(declare-fun res!904646 () Bool)

(assert (=> b!1360201 (=> (not res!904646) (not e!771747))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360201 (= res!904646 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360202 () Bool)

(declare-fun res!904647 () Bool)

(assert (=> b!1360202 (=> (not res!904647) (not e!771747))))

(assert (=> b!1360202 (= res!904647 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31911))))

(declare-fun b!1360203 () Bool)

(assert (=> b!1360203 (= e!771747 false)))

(declare-datatypes ((Unit!44762 0))(
  ( (Unit!44763) )
))
(declare-fun lt!599776 () Unit!44762)

(declare-fun e!771748 () Unit!44762)

(assert (=> b!1360203 (= lt!599776 e!771748)))

(declare-fun c!127222 () Bool)

(assert (=> b!1360203 (= c!127222 (validKeyInArray!0 (select (arr!44693 a!3742) from!3120)))))

(declare-fun b!1360204 () Bool)

(declare-fun res!904639 () Bool)

(assert (=> b!1360204 (=> (not res!904639) (not e!771747))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360204 (= res!904639 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45244 a!3742))))))

(declare-fun b!1360205 () Bool)

(declare-fun res!904643 () Bool)

(assert (=> b!1360205 (=> (not res!904643) (not e!771747))))

(declare-fun contains!9479 (List!31914 (_ BitVec 64)) Bool)

(assert (=> b!1360205 (= res!904643 (not (contains!9479 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360206 () Bool)

(declare-fun Unit!44764 () Unit!44762)

(assert (=> b!1360206 (= e!771748 Unit!44764)))

(declare-fun b!1360207 () Bool)

(declare-fun res!904645 () Bool)

(assert (=> b!1360207 (=> (not res!904645) (not e!771747))))

(assert (=> b!1360207 (= res!904645 (not (contains!9479 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360208 () Bool)

(declare-fun lt!599777 () Unit!44762)

(assert (=> b!1360208 (= e!771748 lt!599777)))

(declare-fun lt!599775 () Unit!44762)

(declare-fun lemmaListSubSeqRefl!0 (List!31914) Unit!44762)

(assert (=> b!1360208 (= lt!599775 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!870 (List!31914 List!31914) Bool)

(assert (=> b!1360208 (subseq!870 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92517 List!31914 List!31914 (_ BitVec 32)) Unit!44762)

(declare-fun $colon$colon!875 (List!31914 (_ BitVec 64)) List!31914)

(assert (=> b!1360208 (= lt!599777 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!875 acc!759 (select (arr!44693 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360208 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114706 res!904640) b!1360199))

(assert (= (and b!1360199 res!904641) b!1360207))

(assert (= (and b!1360207 res!904645) b!1360205))

(assert (= (and b!1360205 res!904643) b!1360202))

(assert (= (and b!1360202 res!904647) b!1360198))

(assert (= (and b!1360198 res!904642) b!1360204))

(assert (= (and b!1360204 res!904639) b!1360201))

(assert (= (and b!1360201 res!904646) b!1360200))

(assert (= (and b!1360200 res!904644) b!1360203))

(assert (= (and b!1360203 c!127222) b!1360208))

(assert (= (and b!1360203 (not c!127222)) b!1360206))

(declare-fun m!1245533 () Bool)

(assert (=> start!114706 m!1245533))

(declare-fun m!1245535 () Bool)

(assert (=> b!1360207 m!1245535))

(declare-fun m!1245537 () Bool)

(assert (=> b!1360198 m!1245537))

(declare-fun m!1245539 () Bool)

(assert (=> b!1360201 m!1245539))

(declare-fun m!1245541 () Bool)

(assert (=> b!1360208 m!1245541))

(declare-fun m!1245543 () Bool)

(assert (=> b!1360208 m!1245543))

(declare-fun m!1245545 () Bool)

(assert (=> b!1360208 m!1245545))

(declare-fun m!1245547 () Bool)

(assert (=> b!1360208 m!1245547))

(declare-fun m!1245549 () Bool)

(assert (=> b!1360208 m!1245549))

(assert (=> b!1360208 m!1245543))

(assert (=> b!1360208 m!1245545))

(declare-fun m!1245551 () Bool)

(assert (=> b!1360208 m!1245551))

(declare-fun m!1245553 () Bool)

(assert (=> b!1360202 m!1245553))

(declare-fun m!1245555 () Bool)

(assert (=> b!1360205 m!1245555))

(declare-fun m!1245557 () Bool)

(assert (=> b!1360199 m!1245557))

(assert (=> b!1360203 m!1245543))

(assert (=> b!1360203 m!1245543))

(declare-fun m!1245559 () Bool)

(assert (=> b!1360203 m!1245559))

(check-sat (not b!1360208) (not b!1360203) (not b!1360205) (not b!1360202) (not b!1360199) (not start!114706) (not b!1360198) (not b!1360201) (not b!1360207))
