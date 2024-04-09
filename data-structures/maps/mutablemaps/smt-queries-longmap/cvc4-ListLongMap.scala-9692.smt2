; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114528 () Bool)

(assert start!114528)

(declare-fun b!1358716 () Bool)

(declare-fun res!903429 () Bool)

(declare-fun e!771097 () Bool)

(assert (=> b!1358716 (=> (not res!903429) (not e!771097))))

(declare-datatypes ((List!31882 0))(
  ( (Nil!31879) (Cons!31878 (h!33087 (_ BitVec 64)) (t!46559 List!31882)) )
))
(declare-fun acc!759 () List!31882)

(declare-fun contains!9447 (List!31882 (_ BitVec 64)) Bool)

(assert (=> b!1358716 (= res!903429 (not (contains!9447 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358717 () Bool)

(declare-fun res!903426 () Bool)

(assert (=> b!1358717 (=> (not res!903426) (not e!771097))))

(declare-datatypes ((array!92447 0))(
  ( (array!92448 (arr!44661 (Array (_ BitVec 32) (_ BitVec 64))) (size!45212 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92447)

(declare-fun arrayNoDuplicates!0 (array!92447 (_ BitVec 32) List!31882) Bool)

(assert (=> b!1358717 (= res!903426 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31879))))

(declare-fun b!1358718 () Bool)

(declare-fun res!903428 () Bool)

(assert (=> b!1358718 (=> (not res!903428) (not e!771097))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1358718 (= res!903428 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358719 () Bool)

(declare-fun res!903427 () Bool)

(assert (=> b!1358719 (=> (not res!903427) (not e!771097))))

(assert (=> b!1358719 (= res!903427 (not (contains!9447 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358720 () Bool)

(declare-datatypes ((Unit!44666 0))(
  ( (Unit!44667) )
))
(declare-fun e!771095 () Unit!44666)

(declare-fun lt!599374 () Unit!44666)

(assert (=> b!1358720 (= e!771095 lt!599374)))

(declare-fun lt!599375 () Unit!44666)

(declare-fun lemmaListSubSeqRefl!0 (List!31882) Unit!44666)

(assert (=> b!1358720 (= lt!599375 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!838 (List!31882 List!31882) Bool)

(assert (=> b!1358720 (subseq!838 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92447 List!31882 List!31882 (_ BitVec 32)) Unit!44666)

(declare-fun $colon$colon!843 (List!31882 (_ BitVec 64)) List!31882)

(assert (=> b!1358720 (= lt!599374 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!843 acc!759 (select (arr!44661 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358720 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!903425 () Bool)

(assert (=> start!114528 (=> (not res!903425) (not e!771097))))

(assert (=> start!114528 (= res!903425 (and (bvslt (size!45212 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45212 a!3742))))))

(assert (=> start!114528 e!771097))

(assert (=> start!114528 true))

(declare-fun array_inv!33606 (array!92447) Bool)

(assert (=> start!114528 (array_inv!33606 a!3742)))

(declare-fun b!1358721 () Bool)

(declare-fun res!903421 () Bool)

(assert (=> b!1358721 (=> (not res!903421) (not e!771097))))

(assert (=> b!1358721 (= res!903421 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45212 a!3742)))))

(declare-fun b!1358722 () Bool)

(assert (=> b!1358722 (= e!771097 false)))

(declare-fun lt!599373 () Unit!44666)

(assert (=> b!1358722 (= lt!599373 e!771095)))

(declare-fun c!127090 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358722 (= c!127090 (validKeyInArray!0 (select (arr!44661 a!3742) from!3120)))))

(declare-fun b!1358723 () Bool)

(declare-fun res!903424 () Bool)

(assert (=> b!1358723 (=> (not res!903424) (not e!771097))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358723 (= res!903424 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45212 a!3742))))))

(declare-fun b!1358724 () Bool)

(declare-fun Unit!44668 () Unit!44666)

(assert (=> b!1358724 (= e!771095 Unit!44668)))

(declare-fun b!1358725 () Bool)

(declare-fun res!903423 () Bool)

(assert (=> b!1358725 (=> (not res!903423) (not e!771097))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358725 (= res!903423 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358726 () Bool)

(declare-fun res!903422 () Bool)

(assert (=> b!1358726 (=> (not res!903422) (not e!771097))))

(declare-fun noDuplicate!2326 (List!31882) Bool)

(assert (=> b!1358726 (= res!903422 (noDuplicate!2326 acc!759))))

(assert (= (and start!114528 res!903425) b!1358726))

(assert (= (and b!1358726 res!903422) b!1358719))

(assert (= (and b!1358719 res!903427) b!1358716))

(assert (= (and b!1358716 res!903429) b!1358717))

(assert (= (and b!1358717 res!903426) b!1358718))

(assert (= (and b!1358718 res!903428) b!1358723))

(assert (= (and b!1358723 res!903424) b!1358725))

(assert (= (and b!1358725 res!903423) b!1358721))

(assert (= (and b!1358721 res!903421) b!1358722))

(assert (= (and b!1358722 c!127090) b!1358720))

(assert (= (and b!1358722 (not c!127090)) b!1358724))

(declare-fun m!1244283 () Bool)

(assert (=> b!1358716 m!1244283))

(declare-fun m!1244285 () Bool)

(assert (=> b!1358722 m!1244285))

(assert (=> b!1358722 m!1244285))

(declare-fun m!1244287 () Bool)

(assert (=> b!1358722 m!1244287))

(declare-fun m!1244289 () Bool)

(assert (=> b!1358717 m!1244289))

(declare-fun m!1244291 () Bool)

(assert (=> start!114528 m!1244291))

(declare-fun m!1244293 () Bool)

(assert (=> b!1358726 m!1244293))

(declare-fun m!1244295 () Bool)

(assert (=> b!1358720 m!1244295))

(assert (=> b!1358720 m!1244285))

(declare-fun m!1244297 () Bool)

(assert (=> b!1358720 m!1244297))

(declare-fun m!1244299 () Bool)

(assert (=> b!1358720 m!1244299))

(declare-fun m!1244301 () Bool)

(assert (=> b!1358720 m!1244301))

(assert (=> b!1358720 m!1244285))

(assert (=> b!1358720 m!1244297))

(declare-fun m!1244303 () Bool)

(assert (=> b!1358720 m!1244303))

(declare-fun m!1244305 () Bool)

(assert (=> b!1358725 m!1244305))

(declare-fun m!1244307 () Bool)

(assert (=> b!1358718 m!1244307))

(declare-fun m!1244309 () Bool)

(assert (=> b!1358719 m!1244309))

(push 1)

(assert (not b!1358718))

(assert (not b!1358717))

(assert (not b!1358716))

(assert (not b!1358719))

(assert (not b!1358720))

(assert (not start!114528))

(assert (not b!1358722))

(assert (not b!1358725))

(assert (not b!1358726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

