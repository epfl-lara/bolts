; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113970 () Bool)

(assert start!113970)

(declare-fun b!1351320 () Bool)

(declare-fun res!896904 () Bool)

(declare-fun e!768480 () Bool)

(assert (=> b!1351320 (=> (not res!896904) (not e!768480))))

(declare-datatypes ((array!92075 0))(
  ( (array!92076 (arr!44481 (Array (_ BitVec 32) (_ BitVec 64))) (size!45032 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92075)

(declare-datatypes ((List!31702 0))(
  ( (Nil!31699) (Cons!31698 (h!32907 (_ BitVec 64)) (t!46367 List!31702)) )
))
(declare-fun arrayNoDuplicates!0 (array!92075 (_ BitVec 32) List!31702) Bool)

(assert (=> b!1351320 (= res!896904 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31699))))

(declare-fun b!1351321 () Bool)

(declare-fun res!896908 () Bool)

(declare-fun e!768479 () Bool)

(assert (=> b!1351321 (=> res!896908 e!768479)))

(declare-fun lt!597155 () List!31702)

(declare-fun contains!9267 (List!31702 (_ BitVec 64)) Bool)

(assert (=> b!1351321 (= res!896908 (contains!9267 lt!597155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351322 () Bool)

(declare-fun res!896911 () Bool)

(assert (=> b!1351322 (=> (not res!896911) (not e!768480))))

(declare-fun acc!759 () List!31702)

(assert (=> b!1351322 (= res!896911 (not (contains!9267 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351323 () Bool)

(declare-fun res!896905 () Bool)

(assert (=> b!1351323 (=> (not res!896905) (not e!768480))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351323 (= res!896905 (validKeyInArray!0 (select (arr!44481 a!3742) from!3120)))))

(declare-fun b!1351324 () Bool)

(declare-fun res!896906 () Bool)

(assert (=> b!1351324 (=> (not res!896906) (not e!768480))))

(assert (=> b!1351324 (= res!896906 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351325 () Bool)

(declare-fun res!896899 () Bool)

(assert (=> b!1351325 (=> res!896899 e!768479)))

(declare-fun subseq!676 (List!31702 List!31702) Bool)

(assert (=> b!1351325 (= res!896899 (not (subseq!676 acc!759 lt!597155)))))

(declare-fun b!1351326 () Bool)

(declare-fun res!896902 () Bool)

(assert (=> b!1351326 (=> (not res!896902) (not e!768480))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351326 (= res!896902 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351327 () Bool)

(assert (=> b!1351327 (= e!768479 true)))

(declare-fun lt!597158 () Bool)

(assert (=> b!1351327 (= lt!597158 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597155))))

(declare-datatypes ((Unit!44214 0))(
  ( (Unit!44215) )
))
(declare-fun lt!597157 () Unit!44214)

(declare-fun noDuplicateSubseq!127 (List!31702 List!31702) Unit!44214)

(assert (=> b!1351327 (= lt!597157 (noDuplicateSubseq!127 acc!759 lt!597155))))

(declare-fun b!1351328 () Bool)

(declare-fun res!896900 () Bool)

(assert (=> b!1351328 (=> (not res!896900) (not e!768480))))

(assert (=> b!1351328 (= res!896900 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45032 a!3742)))))

(declare-fun b!1351329 () Bool)

(declare-fun res!896910 () Bool)

(assert (=> b!1351329 (=> (not res!896910) (not e!768480))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351329 (= res!896910 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45032 a!3742))))))

(declare-fun b!1351330 () Bool)

(declare-fun res!896909 () Bool)

(assert (=> b!1351330 (=> (not res!896909) (not e!768480))))

(declare-fun noDuplicate!2146 (List!31702) Bool)

(assert (=> b!1351330 (= res!896909 (noDuplicate!2146 acc!759))))

(declare-fun b!1351331 () Bool)

(declare-fun res!896903 () Bool)

(assert (=> b!1351331 (=> res!896903 e!768479)))

(assert (=> b!1351331 (= res!896903 (not (noDuplicate!2146 lt!597155)))))

(declare-fun res!896912 () Bool)

(assert (=> start!113970 (=> (not res!896912) (not e!768480))))

(assert (=> start!113970 (= res!896912 (and (bvslt (size!45032 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45032 a!3742))))))

(assert (=> start!113970 e!768480))

(assert (=> start!113970 true))

(declare-fun array_inv!33426 (array!92075) Bool)

(assert (=> start!113970 (array_inv!33426 a!3742)))

(declare-fun b!1351332 () Bool)

(assert (=> b!1351332 (= e!768480 (not e!768479))))

(declare-fun res!896913 () Bool)

(assert (=> b!1351332 (=> res!896913 e!768479)))

(assert (=> b!1351332 (= res!896913 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!693 (List!31702 (_ BitVec 64)) List!31702)

(assert (=> b!1351332 (= lt!597155 ($colon$colon!693 acc!759 (select (arr!44481 a!3742) from!3120)))))

(assert (=> b!1351332 (subseq!676 acc!759 acc!759)))

(declare-fun lt!597156 () Unit!44214)

(declare-fun lemmaListSubSeqRefl!0 (List!31702) Unit!44214)

(assert (=> b!1351332 (= lt!597156 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351333 () Bool)

(declare-fun res!896901 () Bool)

(assert (=> b!1351333 (=> (not res!896901) (not e!768480))))

(assert (=> b!1351333 (= res!896901 (not (contains!9267 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351334 () Bool)

(declare-fun res!896907 () Bool)

(assert (=> b!1351334 (=> res!896907 e!768479)))

(assert (=> b!1351334 (= res!896907 (contains!9267 lt!597155 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113970 res!896912) b!1351330))

(assert (= (and b!1351330 res!896909) b!1351333))

(assert (= (and b!1351333 res!896901) b!1351322))

(assert (= (and b!1351322 res!896911) b!1351320))

(assert (= (and b!1351320 res!896904) b!1351324))

(assert (= (and b!1351324 res!896906) b!1351329))

(assert (= (and b!1351329 res!896910) b!1351326))

(assert (= (and b!1351326 res!896902) b!1351328))

(assert (= (and b!1351328 res!896900) b!1351323))

(assert (= (and b!1351323 res!896905) b!1351332))

(assert (= (and b!1351332 (not res!896913)) b!1351331))

(assert (= (and b!1351331 (not res!896903)) b!1351321))

(assert (= (and b!1351321 (not res!896908)) b!1351334))

(assert (= (and b!1351334 (not res!896907)) b!1351325))

(assert (= (and b!1351325 (not res!896899)) b!1351327))

(declare-fun m!1238389 () Bool)

(assert (=> start!113970 m!1238389))

(declare-fun m!1238391 () Bool)

(assert (=> b!1351332 m!1238391))

(assert (=> b!1351332 m!1238391))

(declare-fun m!1238393 () Bool)

(assert (=> b!1351332 m!1238393))

(declare-fun m!1238395 () Bool)

(assert (=> b!1351332 m!1238395))

(declare-fun m!1238397 () Bool)

(assert (=> b!1351332 m!1238397))

(declare-fun m!1238399 () Bool)

(assert (=> b!1351326 m!1238399))

(declare-fun m!1238401 () Bool)

(assert (=> b!1351322 m!1238401))

(declare-fun m!1238403 () Bool)

(assert (=> b!1351325 m!1238403))

(declare-fun m!1238405 () Bool)

(assert (=> b!1351321 m!1238405))

(assert (=> b!1351323 m!1238391))

(assert (=> b!1351323 m!1238391))

(declare-fun m!1238407 () Bool)

(assert (=> b!1351323 m!1238407))

(declare-fun m!1238409 () Bool)

(assert (=> b!1351327 m!1238409))

(declare-fun m!1238411 () Bool)

(assert (=> b!1351327 m!1238411))

(declare-fun m!1238413 () Bool)

(assert (=> b!1351331 m!1238413))

(declare-fun m!1238415 () Bool)

(assert (=> b!1351330 m!1238415))

(declare-fun m!1238417 () Bool)

(assert (=> b!1351320 m!1238417))

(declare-fun m!1238419 () Bool)

(assert (=> b!1351334 m!1238419))

(declare-fun m!1238421 () Bool)

(assert (=> b!1351324 m!1238421))

(declare-fun m!1238423 () Bool)

(assert (=> b!1351333 m!1238423))

(push 1)

(assert (not b!1351330))

(assert (not b!1351324))

(assert (not b!1351323))

(assert (not b!1351320))

(assert (not b!1351322))

(assert (not b!1351331))

(assert (not b!1351326))

(assert (not start!113970))

(assert (not b!1351327))

(assert (not b!1351332))

(assert (not b!1351334))

