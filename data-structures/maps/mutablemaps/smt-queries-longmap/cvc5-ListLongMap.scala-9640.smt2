; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114014 () Bool)

(assert start!114014)

(declare-fun res!897660 () Bool)

(declare-fun e!768727 () Bool)

(assert (=> start!114014 (=> (not res!897660) (not e!768727))))

(declare-datatypes ((array!92119 0))(
  ( (array!92120 (arr!44503 (Array (_ BitVec 32) (_ BitVec 64))) (size!45054 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92119)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114014 (= res!897660 (and (bvslt (size!45054 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45054 a!3742))))))

(assert (=> start!114014 e!768727))

(assert (=> start!114014 true))

(declare-fun array_inv!33448 (array!92119) Bool)

(assert (=> start!114014 (array_inv!33448 a!3742)))

(declare-fun b!1352169 () Bool)

(declare-fun res!897661 () Bool)

(assert (=> b!1352169 (=> (not res!897661) (not e!768727))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352169 (= res!897661 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352170 () Bool)

(declare-fun e!768726 () Bool)

(assert (=> b!1352170 (= e!768726 false)))

(declare-datatypes ((List!31724 0))(
  ( (Nil!31721) (Cons!31720 (h!32929 (_ BitVec 64)) (t!46389 List!31724)) )
))
(declare-fun acc!759 () List!31724)

(declare-fun lt!597421 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92119 (_ BitVec 32) List!31724) Bool)

(assert (=> b!1352170 (= lt!597421 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352171 () Bool)

(assert (=> b!1352171 (= e!768727 e!768726)))

(declare-fun res!897656 () Bool)

(assert (=> b!1352171 (=> (not res!897656) (not e!768726))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352171 (= res!897656 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44273 0))(
  ( (Unit!44274) )
))
(declare-fun lt!597419 () Unit!44273)

(declare-fun e!768724 () Unit!44273)

(assert (=> b!1352171 (= lt!597419 e!768724)))

(declare-fun c!126700 () Bool)

(assert (=> b!1352171 (= c!126700 (validKeyInArray!0 (select (arr!44503 a!3742) from!3120)))))

(declare-fun b!1352172 () Bool)

(declare-fun res!897658 () Bool)

(assert (=> b!1352172 (=> (not res!897658) (not e!768727))))

(assert (=> b!1352172 (= res!897658 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45054 a!3742)))))

(declare-fun b!1352173 () Bool)

(declare-fun res!897655 () Bool)

(assert (=> b!1352173 (=> (not res!897655) (not e!768727))))

(declare-fun contains!9289 (List!31724 (_ BitVec 64)) Bool)

(assert (=> b!1352173 (= res!897655 (not (contains!9289 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352174 () Bool)

(declare-fun res!897662 () Bool)

(assert (=> b!1352174 (=> (not res!897662) (not e!768727))))

(assert (=> b!1352174 (= res!897662 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45054 a!3742))))))

(declare-fun b!1352175 () Bool)

(declare-fun res!897657 () Bool)

(assert (=> b!1352175 (=> (not res!897657) (not e!768727))))

(assert (=> b!1352175 (= res!897657 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352176 () Bool)

(declare-fun lt!597422 () Unit!44273)

(assert (=> b!1352176 (= e!768724 lt!597422)))

(declare-fun lt!597420 () Unit!44273)

(declare-fun lemmaListSubSeqRefl!0 (List!31724) Unit!44273)

(assert (=> b!1352176 (= lt!597420 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!698 (List!31724 List!31724) Bool)

(assert (=> b!1352176 (subseq!698 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92119 List!31724 List!31724 (_ BitVec 32)) Unit!44273)

(declare-fun $colon$colon!715 (List!31724 (_ BitVec 64)) List!31724)

(assert (=> b!1352176 (= lt!597422 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!715 acc!759 (select (arr!44503 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352176 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352177 () Bool)

(declare-fun res!897654 () Bool)

(assert (=> b!1352177 (=> (not res!897654) (not e!768727))))

(declare-fun noDuplicate!2168 (List!31724) Bool)

(assert (=> b!1352177 (= res!897654 (noDuplicate!2168 acc!759))))

(declare-fun b!1352178 () Bool)

(declare-fun res!897659 () Bool)

(assert (=> b!1352178 (=> (not res!897659) (not e!768727))))

(assert (=> b!1352178 (= res!897659 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31721))))

(declare-fun b!1352179 () Bool)

(declare-fun res!897663 () Bool)

(assert (=> b!1352179 (=> (not res!897663) (not e!768727))))

(assert (=> b!1352179 (= res!897663 (not (contains!9289 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352180 () Bool)

(declare-fun Unit!44275 () Unit!44273)

(assert (=> b!1352180 (= e!768724 Unit!44275)))

(assert (= (and start!114014 res!897660) b!1352177))

(assert (= (and b!1352177 res!897654) b!1352173))

(assert (= (and b!1352173 res!897655) b!1352179))

(assert (= (and b!1352179 res!897663) b!1352178))

(assert (= (and b!1352178 res!897659) b!1352175))

(assert (= (and b!1352175 res!897657) b!1352174))

(assert (= (and b!1352174 res!897662) b!1352169))

(assert (= (and b!1352169 res!897661) b!1352172))

(assert (= (and b!1352172 res!897658) b!1352171))

(assert (= (and b!1352171 c!126700) b!1352176))

(assert (= (and b!1352171 (not c!126700)) b!1352180))

(assert (= (and b!1352171 res!897656) b!1352170))

(declare-fun m!1239061 () Bool)

(assert (=> b!1352169 m!1239061))

(declare-fun m!1239063 () Bool)

(assert (=> b!1352171 m!1239063))

(assert (=> b!1352171 m!1239063))

(declare-fun m!1239065 () Bool)

(assert (=> b!1352171 m!1239065))

(declare-fun m!1239067 () Bool)

(assert (=> start!114014 m!1239067))

(declare-fun m!1239069 () Bool)

(assert (=> b!1352175 m!1239069))

(declare-fun m!1239071 () Bool)

(assert (=> b!1352178 m!1239071))

(declare-fun m!1239073 () Bool)

(assert (=> b!1352177 m!1239073))

(declare-fun m!1239075 () Bool)

(assert (=> b!1352176 m!1239075))

(assert (=> b!1352176 m!1239063))

(declare-fun m!1239077 () Bool)

(assert (=> b!1352176 m!1239077))

(declare-fun m!1239079 () Bool)

(assert (=> b!1352176 m!1239079))

(declare-fun m!1239081 () Bool)

(assert (=> b!1352176 m!1239081))

(assert (=> b!1352176 m!1239063))

(assert (=> b!1352176 m!1239077))

(declare-fun m!1239083 () Bool)

(assert (=> b!1352176 m!1239083))

(declare-fun m!1239085 () Bool)

(assert (=> b!1352179 m!1239085))

(declare-fun m!1239087 () Bool)

(assert (=> b!1352173 m!1239087))

(assert (=> b!1352170 m!1239081))

(push 1)

