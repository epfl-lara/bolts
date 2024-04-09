; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113976 () Bool)

(assert start!113976)

(declare-fun b!1351455 () Bool)

(declare-fun res!897047 () Bool)

(declare-fun e!768507 () Bool)

(assert (=> b!1351455 (=> res!897047 e!768507)))

(declare-datatypes ((List!31705 0))(
  ( (Nil!31702) (Cons!31701 (h!32910 (_ BitVec 64)) (t!46370 List!31705)) )
))
(declare-fun lt!597193 () List!31705)

(declare-fun contains!9270 (List!31705 (_ BitVec 64)) Bool)

(assert (=> b!1351455 (= res!897047 (contains!9270 lt!597193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351456 () Bool)

(declare-fun res!897037 () Bool)

(declare-fun e!768508 () Bool)

(assert (=> b!1351456 (=> (not res!897037) (not e!768508))))

(declare-datatypes ((array!92081 0))(
  ( (array!92082 (arr!44484 (Array (_ BitVec 32) (_ BitVec 64))) (size!45035 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92081)

(declare-fun arrayNoDuplicates!0 (array!92081 (_ BitVec 32) List!31705) Bool)

(assert (=> b!1351456 (= res!897037 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31702))))

(declare-fun b!1351457 () Bool)

(declare-fun res!897038 () Bool)

(assert (=> b!1351457 (=> (not res!897038) (not e!768508))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351457 (= res!897038 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45035 a!3742))))))

(declare-fun res!897034 () Bool)

(assert (=> start!113976 (=> (not res!897034) (not e!768508))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113976 (= res!897034 (and (bvslt (size!45035 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45035 a!3742))))))

(assert (=> start!113976 e!768508))

(assert (=> start!113976 true))

(declare-fun array_inv!33429 (array!92081) Bool)

(assert (=> start!113976 (array_inv!33429 a!3742)))

(declare-fun b!1351458 () Bool)

(declare-fun res!897041 () Bool)

(assert (=> b!1351458 (=> res!897041 e!768507)))

(declare-fun noDuplicate!2149 (List!31705) Bool)

(assert (=> b!1351458 (= res!897041 (not (noDuplicate!2149 lt!597193)))))

(declare-fun b!1351459 () Bool)

(declare-fun res!897045 () Bool)

(assert (=> b!1351459 (=> (not res!897045) (not e!768508))))

(declare-fun acc!759 () List!31705)

(assert (=> b!1351459 (= res!897045 (not (contains!9270 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351460 () Bool)

(declare-fun res!897046 () Bool)

(assert (=> b!1351460 (=> (not res!897046) (not e!768508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351460 (= res!897046 (validKeyInArray!0 (select (arr!44484 a!3742) from!3120)))))

(declare-fun b!1351461 () Bool)

(declare-fun res!897040 () Bool)

(assert (=> b!1351461 (=> (not res!897040) (not e!768508))))

(assert (=> b!1351461 (= res!897040 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45035 a!3742)))))

(declare-fun b!1351462 () Bool)

(declare-fun res!897048 () Bool)

(assert (=> b!1351462 (=> (not res!897048) (not e!768508))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351462 (= res!897048 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351463 () Bool)

(declare-fun res!897035 () Bool)

(assert (=> b!1351463 (=> (not res!897035) (not e!768508))))

(assert (=> b!1351463 (= res!897035 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351464 () Bool)

(declare-fun res!897039 () Bool)

(assert (=> b!1351464 (=> (not res!897039) (not e!768508))))

(assert (=> b!1351464 (= res!897039 (noDuplicate!2149 acc!759))))

(declare-fun b!1351465 () Bool)

(declare-fun res!897042 () Bool)

(assert (=> b!1351465 (=> (not res!897042) (not e!768508))))

(assert (=> b!1351465 (= res!897042 (not (contains!9270 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351466 () Bool)

(assert (=> b!1351466 (= e!768507 true)))

(declare-fun lt!597194 () Bool)

(assert (=> b!1351466 (= lt!597194 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597193))))

(declare-datatypes ((Unit!44220 0))(
  ( (Unit!44221) )
))
(declare-fun lt!597192 () Unit!44220)

(declare-fun noDuplicateSubseq!130 (List!31705 List!31705) Unit!44220)

(assert (=> b!1351466 (= lt!597192 (noDuplicateSubseq!130 acc!759 lt!597193))))

(declare-fun b!1351467 () Bool)

(declare-fun res!897036 () Bool)

(assert (=> b!1351467 (=> res!897036 e!768507)))

(assert (=> b!1351467 (= res!897036 (contains!9270 lt!597193 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351468 () Bool)

(assert (=> b!1351468 (= e!768508 (not e!768507))))

(declare-fun res!897044 () Bool)

(assert (=> b!1351468 (=> res!897044 e!768507)))

(assert (=> b!1351468 (= res!897044 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!696 (List!31705 (_ BitVec 64)) List!31705)

(assert (=> b!1351468 (= lt!597193 ($colon$colon!696 acc!759 (select (arr!44484 a!3742) from!3120)))))

(declare-fun subseq!679 (List!31705 List!31705) Bool)

(assert (=> b!1351468 (subseq!679 acc!759 acc!759)))

(declare-fun lt!597191 () Unit!44220)

(declare-fun lemmaListSubSeqRefl!0 (List!31705) Unit!44220)

(assert (=> b!1351468 (= lt!597191 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351469 () Bool)

(declare-fun res!897043 () Bool)

(assert (=> b!1351469 (=> res!897043 e!768507)))

(assert (=> b!1351469 (= res!897043 (not (subseq!679 acc!759 lt!597193)))))

(assert (= (and start!113976 res!897034) b!1351464))

(assert (= (and b!1351464 res!897039) b!1351459))

(assert (= (and b!1351459 res!897045) b!1351465))

(assert (= (and b!1351465 res!897042) b!1351456))

(assert (= (and b!1351456 res!897037) b!1351463))

(assert (= (and b!1351463 res!897035) b!1351457))

(assert (= (and b!1351457 res!897038) b!1351462))

(assert (= (and b!1351462 res!897048) b!1351461))

(assert (= (and b!1351461 res!897040) b!1351460))

(assert (= (and b!1351460 res!897046) b!1351468))

(assert (= (and b!1351468 (not res!897044)) b!1351458))

(assert (= (and b!1351458 (not res!897041)) b!1351455))

(assert (= (and b!1351455 (not res!897047)) b!1351467))

(assert (= (and b!1351467 (not res!897036)) b!1351469))

(assert (= (and b!1351469 (not res!897043)) b!1351466))

(declare-fun m!1238497 () Bool)

(assert (=> b!1351462 m!1238497))

(declare-fun m!1238499 () Bool)

(assert (=> b!1351464 m!1238499))

(declare-fun m!1238501 () Bool)

(assert (=> b!1351469 m!1238501))

(declare-fun m!1238503 () Bool)

(assert (=> b!1351456 m!1238503))

(declare-fun m!1238505 () Bool)

(assert (=> b!1351468 m!1238505))

(assert (=> b!1351468 m!1238505))

(declare-fun m!1238507 () Bool)

(assert (=> b!1351468 m!1238507))

(declare-fun m!1238509 () Bool)

(assert (=> b!1351468 m!1238509))

(declare-fun m!1238511 () Bool)

(assert (=> b!1351468 m!1238511))

(declare-fun m!1238513 () Bool)

(assert (=> start!113976 m!1238513))

(declare-fun m!1238515 () Bool)

(assert (=> b!1351465 m!1238515))

(declare-fun m!1238517 () Bool)

(assert (=> b!1351466 m!1238517))

(declare-fun m!1238519 () Bool)

(assert (=> b!1351466 m!1238519))

(declare-fun m!1238521 () Bool)

(assert (=> b!1351467 m!1238521))

(assert (=> b!1351460 m!1238505))

(assert (=> b!1351460 m!1238505))

(declare-fun m!1238523 () Bool)

(assert (=> b!1351460 m!1238523))

(declare-fun m!1238525 () Bool)

(assert (=> b!1351458 m!1238525))

(declare-fun m!1238527 () Bool)

(assert (=> b!1351459 m!1238527))

(declare-fun m!1238529 () Bool)

(assert (=> b!1351455 m!1238529))

(declare-fun m!1238531 () Bool)

(assert (=> b!1351463 m!1238531))

(push 1)

(assert (not b!1351463))

(assert (not b!1351455))

(assert (not b!1351468))

(assert (not b!1351466))

(assert (not b!1351467))

(assert (not b!1351459))

(assert (not b!1351465))

(assert (not b!1351460))

(assert (not b!1351458))

(assert (not b!1351456))

(assert (not b!1351464))

