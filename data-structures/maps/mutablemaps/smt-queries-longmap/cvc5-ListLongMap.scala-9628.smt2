; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113942 () Bool)

(assert start!113942)

(declare-fun res!896274 () Bool)

(declare-fun e!768353 () Bool)

(assert (=> start!113942 (=> (not res!896274) (not e!768353))))

(declare-datatypes ((array!92047 0))(
  ( (array!92048 (arr!44467 (Array (_ BitVec 32) (_ BitVec 64))) (size!45018 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92047)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113942 (= res!896274 (and (bvslt (size!45018 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45018 a!3742))))))

(assert (=> start!113942 e!768353))

(assert (=> start!113942 true))

(declare-fun array_inv!33412 (array!92047) Bool)

(assert (=> start!113942 (array_inv!33412 a!3742)))

(declare-fun b!1350690 () Bool)

(declare-fun res!896272 () Bool)

(assert (=> b!1350690 (=> (not res!896272) (not e!768353))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350690 (= res!896272 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350691 () Bool)

(declare-fun res!896282 () Bool)

(assert (=> b!1350691 (=> (not res!896282) (not e!768353))))

(assert (=> b!1350691 (= res!896282 (validKeyInArray!0 (select (arr!44467 a!3742) from!3120)))))

(declare-fun b!1350692 () Bool)

(declare-fun e!768354 () Bool)

(assert (=> b!1350692 (= e!768353 (not e!768354))))

(declare-fun res!896280 () Bool)

(assert (=> b!1350692 (=> res!896280 e!768354)))

(assert (=> b!1350692 (= res!896280 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31688 0))(
  ( (Nil!31685) (Cons!31684 (h!32893 (_ BitVec 64)) (t!46353 List!31688)) )
))
(declare-fun lt!596989 () List!31688)

(declare-fun acc!759 () List!31688)

(declare-fun $colon$colon!679 (List!31688 (_ BitVec 64)) List!31688)

(assert (=> b!1350692 (= lt!596989 ($colon$colon!679 acc!759 (select (arr!44467 a!3742) from!3120)))))

(declare-fun subseq!662 (List!31688 List!31688) Bool)

(assert (=> b!1350692 (subseq!662 acc!759 acc!759)))

(declare-datatypes ((Unit!44186 0))(
  ( (Unit!44187) )
))
(declare-fun lt!596988 () Unit!44186)

(declare-fun lemmaListSubSeqRefl!0 (List!31688) Unit!44186)

(assert (=> b!1350692 (= lt!596988 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350693 () Bool)

(declare-fun res!896276 () Bool)

(assert (=> b!1350693 (=> (not res!896276) (not e!768353))))

(declare-fun contains!9253 (List!31688 (_ BitVec 64)) Bool)

(assert (=> b!1350693 (= res!896276 (not (contains!9253 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350694 () Bool)

(declare-fun res!896275 () Bool)

(assert (=> b!1350694 (=> res!896275 e!768354)))

(assert (=> b!1350694 (= res!896275 (contains!9253 lt!596989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350695 () Bool)

(declare-fun res!896277 () Bool)

(assert (=> b!1350695 (=> (not res!896277) (not e!768353))))

(declare-fun arrayNoDuplicates!0 (array!92047 (_ BitVec 32) List!31688) Bool)

(assert (=> b!1350695 (= res!896277 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31685))))

(declare-fun b!1350696 () Bool)

(declare-fun res!896278 () Bool)

(assert (=> b!1350696 (=> (not res!896278) (not e!768353))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350696 (= res!896278 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45018 a!3742))))))

(declare-fun b!1350697 () Bool)

(declare-fun res!896273 () Bool)

(assert (=> b!1350697 (=> res!896273 e!768354)))

(assert (=> b!1350697 (= res!896273 (contains!9253 lt!596989 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350698 () Bool)

(declare-fun res!896269 () Bool)

(assert (=> b!1350698 (=> res!896269 e!768354)))

(declare-fun noDuplicate!2132 (List!31688) Bool)

(assert (=> b!1350698 (= res!896269 (not (noDuplicate!2132 lt!596989)))))

(declare-fun b!1350699 () Bool)

(declare-fun res!896281 () Bool)

(assert (=> b!1350699 (=> (not res!896281) (not e!768353))))

(assert (=> b!1350699 (= res!896281 (noDuplicate!2132 acc!759))))

(declare-fun b!1350700 () Bool)

(declare-fun res!896270 () Bool)

(assert (=> b!1350700 (=> (not res!896270) (not e!768353))))

(assert (=> b!1350700 (= res!896270 (not (contains!9253 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350701 () Bool)

(declare-fun res!896279 () Bool)

(assert (=> b!1350701 (=> res!896279 e!768354)))

(assert (=> b!1350701 (= res!896279 (not (subseq!662 acc!759 lt!596989)))))

(declare-fun b!1350702 () Bool)

(assert (=> b!1350702 (= e!768354 true)))

(declare-fun lt!596987 () Bool)

(assert (=> b!1350702 (= lt!596987 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!596989))))

(declare-fun lt!596990 () Unit!44186)

(declare-fun noDuplicateSubseq!113 (List!31688 List!31688) Unit!44186)

(assert (=> b!1350702 (= lt!596990 (noDuplicateSubseq!113 acc!759 lt!596989))))

(declare-fun b!1350703 () Bool)

(declare-fun res!896283 () Bool)

(assert (=> b!1350703 (=> (not res!896283) (not e!768353))))

(assert (=> b!1350703 (= res!896283 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45018 a!3742)))))

(declare-fun b!1350704 () Bool)

(declare-fun res!896271 () Bool)

(assert (=> b!1350704 (=> (not res!896271) (not e!768353))))

(assert (=> b!1350704 (= res!896271 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!113942 res!896274) b!1350699))

(assert (= (and b!1350699 res!896281) b!1350700))

(assert (= (and b!1350700 res!896270) b!1350693))

(assert (= (and b!1350693 res!896276) b!1350695))

(assert (= (and b!1350695 res!896277) b!1350704))

(assert (= (and b!1350704 res!896271) b!1350696))

(assert (= (and b!1350696 res!896278) b!1350690))

(assert (= (and b!1350690 res!896272) b!1350703))

(assert (= (and b!1350703 res!896283) b!1350691))

(assert (= (and b!1350691 res!896282) b!1350692))

(assert (= (and b!1350692 (not res!896280)) b!1350698))

(assert (= (and b!1350698 (not res!896269)) b!1350694))

(assert (= (and b!1350694 (not res!896275)) b!1350697))

(assert (= (and b!1350697 (not res!896273)) b!1350701))

(assert (= (and b!1350701 (not res!896279)) b!1350702))

(declare-fun m!1237885 () Bool)

(assert (=> b!1350692 m!1237885))

(assert (=> b!1350692 m!1237885))

(declare-fun m!1237887 () Bool)

(assert (=> b!1350692 m!1237887))

(declare-fun m!1237889 () Bool)

(assert (=> b!1350692 m!1237889))

(declare-fun m!1237891 () Bool)

(assert (=> b!1350692 m!1237891))

(declare-fun m!1237893 () Bool)

(assert (=> b!1350694 m!1237893))

(declare-fun m!1237895 () Bool)

(assert (=> b!1350700 m!1237895))

(declare-fun m!1237897 () Bool)

(assert (=> b!1350697 m!1237897))

(declare-fun m!1237899 () Bool)

(assert (=> b!1350702 m!1237899))

(declare-fun m!1237901 () Bool)

(assert (=> b!1350702 m!1237901))

(declare-fun m!1237903 () Bool)

(assert (=> b!1350699 m!1237903))

(assert (=> b!1350691 m!1237885))

(assert (=> b!1350691 m!1237885))

(declare-fun m!1237905 () Bool)

(assert (=> b!1350691 m!1237905))

(declare-fun m!1237907 () Bool)

(assert (=> b!1350690 m!1237907))

(declare-fun m!1237909 () Bool)

(assert (=> b!1350704 m!1237909))

(declare-fun m!1237911 () Bool)

(assert (=> start!113942 m!1237911))

(declare-fun m!1237913 () Bool)

(assert (=> b!1350698 m!1237913))

(declare-fun m!1237915 () Bool)

(assert (=> b!1350701 m!1237915))

(declare-fun m!1237917 () Bool)

(assert (=> b!1350693 m!1237917))

(declare-fun m!1237919 () Bool)

(assert (=> b!1350695 m!1237919))

(push 1)

(assert (not b!1350693))

(assert (not b!1350702))

(assert (not b!1350694))

(assert (not b!1350698))

(assert (not b!1350692))

(assert (not b!1350701))

(assert (not b!1350697))

(assert (not b!1350704))

(assert (not b!1350695))

(assert (not start!113942))

(assert (not b!1350691))

(assert (not b!1350690))

(assert (not b!1350699))

(assert (not b!1350700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

