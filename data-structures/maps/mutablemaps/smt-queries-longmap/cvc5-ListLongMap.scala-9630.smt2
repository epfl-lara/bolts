; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113954 () Bool)

(assert start!113954)

(declare-fun b!1350960 () Bool)

(declare-fun res!896546 () Bool)

(declare-fun e!768408 () Bool)

(assert (=> b!1350960 (=> res!896546 e!768408)))

(declare-datatypes ((List!31694 0))(
  ( (Nil!31691) (Cons!31690 (h!32899 (_ BitVec 64)) (t!46359 List!31694)) )
))
(declare-fun lt!597061 () List!31694)

(declare-fun contains!9259 (List!31694 (_ BitVec 64)) Bool)

(assert (=> b!1350960 (= res!896546 (contains!9259 lt!597061 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350961 () Bool)

(declare-fun res!896552 () Bool)

(declare-fun e!768407 () Bool)

(assert (=> b!1350961 (=> (not res!896552) (not e!768407))))

(declare-fun acc!759 () List!31694)

(declare-datatypes ((array!92059 0))(
  ( (array!92060 (arr!44473 (Array (_ BitVec 32) (_ BitVec 64))) (size!45024 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92059)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92059 (_ BitVec 32) List!31694) Bool)

(assert (=> b!1350961 (= res!896552 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350962 () Bool)

(declare-fun res!896548 () Bool)

(assert (=> b!1350962 (=> (not res!896548) (not e!768407))))

(assert (=> b!1350962 (= res!896548 (not (contains!9259 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350963 () Bool)

(declare-fun res!896551 () Bool)

(assert (=> b!1350963 (=> res!896551 e!768408)))

(assert (=> b!1350963 (= res!896551 (contains!9259 lt!597061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350964 () Bool)

(declare-fun res!896547 () Bool)

(assert (=> b!1350964 (=> (not res!896547) (not e!768407))))

(assert (=> b!1350964 (= res!896547 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45024 a!3742)))))

(declare-fun b!1350965 () Bool)

(declare-fun res!896544 () Bool)

(assert (=> b!1350965 (=> res!896544 e!768408)))

(declare-fun noDuplicate!2138 (List!31694) Bool)

(assert (=> b!1350965 (= res!896544 (not (noDuplicate!2138 lt!597061)))))

(declare-fun b!1350966 () Bool)

(declare-fun res!896553 () Bool)

(assert (=> b!1350966 (=> (not res!896553) (not e!768407))))

(assert (=> b!1350966 (= res!896553 (noDuplicate!2138 acc!759))))

(declare-fun b!1350967 () Bool)

(declare-fun res!896543 () Bool)

(assert (=> b!1350967 (=> (not res!896543) (not e!768407))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350967 (= res!896543 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45024 a!3742))))))

(declare-fun b!1350968 () Bool)

(declare-fun res!896540 () Bool)

(assert (=> b!1350968 (=> (not res!896540) (not e!768407))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350968 (= res!896540 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350970 () Bool)

(declare-fun res!896542 () Bool)

(assert (=> b!1350970 (=> res!896542 e!768408)))

(declare-fun subseq!668 (List!31694 List!31694) Bool)

(assert (=> b!1350970 (= res!896542 (not (subseq!668 acc!759 lt!597061)))))

(declare-fun b!1350971 () Bool)

(declare-fun res!896541 () Bool)

(assert (=> b!1350971 (=> (not res!896541) (not e!768407))))

(assert (=> b!1350971 (= res!896541 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31691))))

(declare-fun b!1350972 () Bool)

(declare-fun res!896550 () Bool)

(assert (=> b!1350972 (=> (not res!896550) (not e!768407))))

(assert (=> b!1350972 (= res!896550 (not (contains!9259 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350973 () Bool)

(assert (=> b!1350973 (= e!768408 true)))

(declare-fun lt!597059 () Bool)

(assert (=> b!1350973 (= lt!597059 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597061))))

(declare-datatypes ((Unit!44198 0))(
  ( (Unit!44199) )
))
(declare-fun lt!597060 () Unit!44198)

(declare-fun noDuplicateSubseq!119 (List!31694 List!31694) Unit!44198)

(assert (=> b!1350973 (= lt!597060 (noDuplicateSubseq!119 acc!759 lt!597061))))

(declare-fun b!1350974 () Bool)

(assert (=> b!1350974 (= e!768407 (not e!768408))))

(declare-fun res!896545 () Bool)

(assert (=> b!1350974 (=> res!896545 e!768408)))

(assert (=> b!1350974 (= res!896545 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!685 (List!31694 (_ BitVec 64)) List!31694)

(assert (=> b!1350974 (= lt!597061 ($colon$colon!685 acc!759 (select (arr!44473 a!3742) from!3120)))))

(assert (=> b!1350974 (subseq!668 acc!759 acc!759)))

(declare-fun lt!597062 () Unit!44198)

(declare-fun lemmaListSubSeqRefl!0 (List!31694) Unit!44198)

(assert (=> b!1350974 (= lt!597062 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun res!896549 () Bool)

(assert (=> start!113954 (=> (not res!896549) (not e!768407))))

(assert (=> start!113954 (= res!896549 (and (bvslt (size!45024 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45024 a!3742))))))

(assert (=> start!113954 e!768407))

(assert (=> start!113954 true))

(declare-fun array_inv!33418 (array!92059) Bool)

(assert (=> start!113954 (array_inv!33418 a!3742)))

(declare-fun b!1350969 () Bool)

(declare-fun res!896539 () Bool)

(assert (=> b!1350969 (=> (not res!896539) (not e!768407))))

(assert (=> b!1350969 (= res!896539 (validKeyInArray!0 (select (arr!44473 a!3742) from!3120)))))

(assert (= (and start!113954 res!896549) b!1350966))

(assert (= (and b!1350966 res!896553) b!1350972))

(assert (= (and b!1350972 res!896550) b!1350962))

(assert (= (and b!1350962 res!896548) b!1350971))

(assert (= (and b!1350971 res!896541) b!1350961))

(assert (= (and b!1350961 res!896552) b!1350967))

(assert (= (and b!1350967 res!896543) b!1350968))

(assert (= (and b!1350968 res!896540) b!1350964))

(assert (= (and b!1350964 res!896547) b!1350969))

(assert (= (and b!1350969 res!896539) b!1350974))

(assert (= (and b!1350974 (not res!896545)) b!1350965))

(assert (= (and b!1350965 (not res!896544)) b!1350963))

(assert (= (and b!1350963 (not res!896551)) b!1350960))

(assert (= (and b!1350960 (not res!896546)) b!1350970))

(assert (= (and b!1350970 (not res!896542)) b!1350973))

(declare-fun m!1238101 () Bool)

(assert (=> b!1350963 m!1238101))

(declare-fun m!1238103 () Bool)

(assert (=> b!1350972 m!1238103))

(declare-fun m!1238105 () Bool)

(assert (=> b!1350970 m!1238105))

(declare-fun m!1238107 () Bool)

(assert (=> b!1350960 m!1238107))

(declare-fun m!1238109 () Bool)

(assert (=> b!1350968 m!1238109))

(declare-fun m!1238111 () Bool)

(assert (=> b!1350965 m!1238111))

(declare-fun m!1238113 () Bool)

(assert (=> b!1350971 m!1238113))

(declare-fun m!1238115 () Bool)

(assert (=> start!113954 m!1238115))

(declare-fun m!1238117 () Bool)

(assert (=> b!1350962 m!1238117))

(declare-fun m!1238119 () Bool)

(assert (=> b!1350969 m!1238119))

(assert (=> b!1350969 m!1238119))

(declare-fun m!1238121 () Bool)

(assert (=> b!1350969 m!1238121))

(declare-fun m!1238123 () Bool)

(assert (=> b!1350961 m!1238123))

(declare-fun m!1238125 () Bool)

(assert (=> b!1350966 m!1238125))

(assert (=> b!1350974 m!1238119))

(assert (=> b!1350974 m!1238119))

(declare-fun m!1238127 () Bool)

(assert (=> b!1350974 m!1238127))

(declare-fun m!1238129 () Bool)

(assert (=> b!1350974 m!1238129))

(declare-fun m!1238131 () Bool)

(assert (=> b!1350974 m!1238131))

(declare-fun m!1238133 () Bool)

(assert (=> b!1350973 m!1238133))

(declare-fun m!1238135 () Bool)

(assert (=> b!1350973 m!1238135))

(push 1)

(assert (not b!1350963))

(assert (not b!1350971))

(assert (not b!1350973))

(assert (not b!1350968))

(assert (not b!1350972))

(assert (not b!1350969))

(assert (not b!1350974))

(assert (not b!1350970))

(assert (not b!1350965))

(assert (not b!1350966))

(assert (not b!1350960))

(assert (not b!1350962))

(assert (not start!113954))

(assert (not b!1350961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

