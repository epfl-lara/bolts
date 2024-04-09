; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114396 () Bool)

(assert start!114396)

(declare-fun b!1357822 () Bool)

(declare-fun res!902661 () Bool)

(declare-fun e!770628 () Bool)

(assert (=> b!1357822 (=> (not res!902661) (not e!770628))))

(declare-datatypes ((List!31867 0))(
  ( (Nil!31864) (Cons!31863 (h!33072 (_ BitVec 64)) (t!46538 List!31867)) )
))
(declare-fun acc!759 () List!31867)

(declare-fun noDuplicate!2311 (List!31867) Bool)

(assert (=> b!1357822 (= res!902661 (noDuplicate!2311 acc!759))))

(declare-fun b!1357823 () Bool)

(declare-fun e!770627 () Bool)

(declare-fun lt!599177 () List!31867)

(declare-fun subseq!823 (List!31867 List!31867) Bool)

(assert (=> b!1357823 (= e!770627 (subseq!823 acc!759 lt!599177))))

(declare-fun b!1357824 () Bool)

(declare-fun res!902658 () Bool)

(assert (=> b!1357824 (=> (not res!902658) (not e!770628))))

(declare-datatypes ((array!92411 0))(
  ( (array!92412 (arr!44646 (Array (_ BitVec 32) (_ BitVec 64))) (size!45197 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92411)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92411 (_ BitVec 32) List!31867) Bool)

(assert (=> b!1357824 (= res!902658 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357825 () Bool)

(declare-fun res!902655 () Bool)

(assert (=> b!1357825 (=> res!902655 e!770627)))

(declare-fun contains!9432 (List!31867 (_ BitVec 64)) Bool)

(assert (=> b!1357825 (= res!902655 (contains!9432 lt!599177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357826 () Bool)

(declare-fun res!902662 () Bool)

(assert (=> b!1357826 (=> (not res!902662) (not e!770628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357826 (= res!902662 (validKeyInArray!0 (select (arr!44646 a!3742) from!3120)))))

(declare-fun b!1357827 () Bool)

(declare-fun res!902653 () Bool)

(assert (=> b!1357827 (=> (not res!902653) (not e!770628))))

(assert (=> b!1357827 (= res!902653 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45197 a!3742)))))

(declare-fun res!902654 () Bool)

(assert (=> start!114396 (=> (not res!902654) (not e!770628))))

(assert (=> start!114396 (= res!902654 (and (bvslt (size!45197 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45197 a!3742))))))

(assert (=> start!114396 e!770628))

(assert (=> start!114396 true))

(declare-fun array_inv!33591 (array!92411) Bool)

(assert (=> start!114396 (array_inv!33591 a!3742)))

(declare-fun b!1357828 () Bool)

(declare-fun res!902657 () Bool)

(assert (=> b!1357828 (=> res!902657 e!770627)))

(assert (=> b!1357828 (= res!902657 (contains!9432 lt!599177 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357829 () Bool)

(declare-fun res!902652 () Bool)

(assert (=> b!1357829 (=> (not res!902652) (not e!770628))))

(assert (=> b!1357829 (= res!902652 (not (contains!9432 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357830 () Bool)

(declare-fun res!902663 () Bool)

(assert (=> b!1357830 (=> (not res!902663) (not e!770628))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357830 (= res!902663 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357831 () Bool)

(assert (=> b!1357831 (= e!770628 (not e!770627))))

(declare-fun res!902664 () Bool)

(assert (=> b!1357831 (=> res!902664 e!770627)))

(assert (=> b!1357831 (= res!902664 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!828 (List!31867 (_ BitVec 64)) List!31867)

(assert (=> b!1357831 (= lt!599177 ($colon$colon!828 acc!759 (select (arr!44646 a!3742) from!3120)))))

(assert (=> b!1357831 (subseq!823 acc!759 acc!759)))

(declare-datatypes ((Unit!44625 0))(
  ( (Unit!44626) )
))
(declare-fun lt!599176 () Unit!44625)

(declare-fun lemmaListSubSeqRefl!0 (List!31867) Unit!44625)

(assert (=> b!1357831 (= lt!599176 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357832 () Bool)

(declare-fun res!902651 () Bool)

(assert (=> b!1357832 (=> (not res!902651) (not e!770628))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357832 (= res!902651 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45197 a!3742))))))

(declare-fun b!1357833 () Bool)

(declare-fun res!902659 () Bool)

(assert (=> b!1357833 (=> res!902659 e!770627)))

(assert (=> b!1357833 (= res!902659 (not (noDuplicate!2311 lt!599177)))))

(declare-fun b!1357834 () Bool)

(declare-fun res!902660 () Bool)

(assert (=> b!1357834 (=> (not res!902660) (not e!770628))))

(assert (=> b!1357834 (= res!902660 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31864))))

(declare-fun b!1357835 () Bool)

(declare-fun res!902656 () Bool)

(assert (=> b!1357835 (=> (not res!902656) (not e!770628))))

(assert (=> b!1357835 (= res!902656 (not (contains!9432 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114396 res!902654) b!1357822))

(assert (= (and b!1357822 res!902661) b!1357829))

(assert (= (and b!1357829 res!902652) b!1357835))

(assert (= (and b!1357835 res!902656) b!1357834))

(assert (= (and b!1357834 res!902660) b!1357824))

(assert (= (and b!1357824 res!902658) b!1357832))

(assert (= (and b!1357832 res!902651) b!1357830))

(assert (= (and b!1357830 res!902663) b!1357827))

(assert (= (and b!1357827 res!902653) b!1357826))

(assert (= (and b!1357826 res!902662) b!1357831))

(assert (= (and b!1357831 (not res!902664)) b!1357833))

(assert (= (and b!1357833 (not res!902659)) b!1357825))

(assert (= (and b!1357825 (not res!902655)) b!1357828))

(assert (= (and b!1357828 (not res!902657)) b!1357823))

(declare-fun m!1243505 () Bool)

(assert (=> b!1357835 m!1243505))

(declare-fun m!1243507 () Bool)

(assert (=> b!1357834 m!1243507))

(declare-fun m!1243509 () Bool)

(assert (=> b!1357830 m!1243509))

(declare-fun m!1243511 () Bool)

(assert (=> b!1357824 m!1243511))

(declare-fun m!1243513 () Bool)

(assert (=> b!1357833 m!1243513))

(declare-fun m!1243515 () Bool)

(assert (=> b!1357828 m!1243515))

(declare-fun m!1243517 () Bool)

(assert (=> b!1357825 m!1243517))

(declare-fun m!1243519 () Bool)

(assert (=> b!1357829 m!1243519))

(declare-fun m!1243521 () Bool)

(assert (=> b!1357823 m!1243521))

(declare-fun m!1243523 () Bool)

(assert (=> b!1357822 m!1243523))

(declare-fun m!1243525 () Bool)

(assert (=> b!1357826 m!1243525))

(assert (=> b!1357826 m!1243525))

(declare-fun m!1243527 () Bool)

(assert (=> b!1357826 m!1243527))

(assert (=> b!1357831 m!1243525))

(assert (=> b!1357831 m!1243525))

(declare-fun m!1243529 () Bool)

(assert (=> b!1357831 m!1243529))

(declare-fun m!1243531 () Bool)

(assert (=> b!1357831 m!1243531))

(declare-fun m!1243533 () Bool)

(assert (=> b!1357831 m!1243533))

(declare-fun m!1243535 () Bool)

(assert (=> start!114396 m!1243535))

(push 1)

(assert (not b!1357835))

(assert (not b!1357834))

(assert (not b!1357826))

(assert (not b!1357831))

(assert (not b!1357825))

(assert (not b!1357828))

(assert (not b!1357822))

(assert (not b!1357824))

(assert (not b!1357823))

(assert (not start!114396))

(assert (not b!1357829))

(assert (not b!1357830))

(assert (not b!1357833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145181 () Bool)

(declare-fun lt!599192 () Bool)

(declare-fun content!689 (List!31867) (Set (_ BitVec 64)))

(assert (=> d!145181 (= lt!599192 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!689 lt!599177)))))

(declare-fun e!770673 () Bool)

(assert (=> d!145181 (= lt!599192 e!770673)))

(declare-fun res!902708 () Bool)

(assert (=> d!145181 (=> (not res!902708) (not e!770673))))

(assert (=> d!145181 (= res!902708 (is-Cons!31863 lt!599177))))

(assert (=> d!145181 (= (contains!9432 lt!599177 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599192)))

(declare-fun b!1357878 () Bool)

(declare-fun e!770672 () Bool)

(assert (=> b!1357878 (= e!770673 e!770672)))

(declare-fun res!902707 () Bool)

(assert (=> b!1357878 (=> res!902707 e!770672)))

(assert (=> b!1357878 (= res!902707 (= (h!33072 lt!599177) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357879 () Bool)

(assert (=> b!1357879 (= e!770672 (contains!9432 (t!46538 lt!599177) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145181 res!902708) b!1357878))

(assert (= (and b!1357878 (not res!902707)) b!1357879))

(declare-fun m!1243579 () Bool)

(assert (=> d!145181 m!1243579))

(declare-fun m!1243581 () Bool)

(assert (=> d!145181 m!1243581))

(declare-fun m!1243583 () Bool)

(assert (=> b!1357879 m!1243583))

(assert (=> b!1357828 d!145181))

(declare-fun d!145197 () Bool)

(declare-fun lt!599193 () Bool)

(assert (=> d!145197 (= lt!599193 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!689 acc!759)))))

(declare-fun e!770675 () Bool)

(assert (=> d!145197 (= lt!599193 e!770675)))

(declare-fun res!902710 () Bool)

(assert (=> d!145197 (=> (not res!902710) (not e!770675))))

(assert (=> d!145197 (= res!902710 (is-Cons!31863 acc!759))))

(assert (=> d!145197 (= (contains!9432 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599193)))

(declare-fun b!1357880 () Bool)

(declare-fun e!770674 () Bool)

(assert (=> b!1357880 (= e!770675 e!770674)))

(declare-fun res!902709 () Bool)

(assert (=> b!1357880 (=> res!902709 e!770674)))

(assert (=> b!1357880 (= res!902709 (= (h!33072 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357881 () Bool)

(assert (=> b!1357881 (= e!770674 (contains!9432 (t!46538 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145197 res!902710) b!1357880))

(assert (= (and b!1357880 (not res!902709)) b!1357881))

(declare-fun m!1243585 () Bool)

(assert (=> d!145197 m!1243585))

(declare-fun m!1243587 () Bool)

(assert (=> d!145197 m!1243587))

(declare-fun m!1243589 () Bool)

(assert (=> b!1357881 m!1243589))

(assert (=> b!1357829 d!145197))

(declare-fun d!145199 () Bool)

(assert (=> d!145199 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357830 d!145199))

(declare-fun d!145203 () Bool)

(assert (=> d!145203 (= (array_inv!33591 a!3742) (bvsge (size!45197 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114396 d!145203))

(declare-fun d!145205 () Bool)

(assert (=> d!145205 (= ($colon$colon!828 acc!759 (select (arr!44646 a!3742) from!3120)) (Cons!31863 (select (arr!44646 a!3742) from!3120) acc!759))))

(assert (=> b!1357831 d!145205))

(declare-fun b!1357918 () Bool)

(declare-fun e!770706 () Bool)

(assert (=> b!1357918 (= e!770706 (subseq!823 acc!759 (t!46538 acc!759)))))

(declare-fun d!145207 () Bool)

(declare-fun res!902736 () Bool)

(declare-fun e!770704 () Bool)

(assert (=> d!145207 (=> res!902736 e!770704)))

(assert (=> d!145207 (= res!902736 (is-Nil!31864 acc!759))))

(assert (=> d!145207 (= (subseq!823 acc!759 acc!759) e!770704)))

(declare-fun b!1357917 () Bool)

(declare-fun e!770705 () Bool)

(assert (=> b!1357917 (= e!770705 (subseq!823 (t!46538 acc!759) (t!46538 acc!759)))))

(declare-fun b!1357916 () Bool)

(declare-fun e!770707 () Bool)

(assert (=> b!1357916 (= e!770707 e!770706)))

(declare-fun res!902735 () Bool)

(assert (=> b!1357916 (=> res!902735 e!770706)))

(assert (=> b!1357916 (= res!902735 e!770705)))

(declare-fun res!902737 () Bool)

(assert (=> b!1357916 (=> (not res!902737) (not e!770705))))

(assert (=> b!1357916 (= res!902737 (= (h!33072 acc!759) (h!33072 acc!759)))))

(declare-fun b!1357915 () Bool)

(assert (=> b!1357915 (= e!770704 e!770707)))

(declare-fun res!902734 () Bool)

(assert (=> b!1357915 (=> (not res!902734) (not e!770707))))

(assert (=> b!1357915 (= res!902734 (is-Cons!31863 acc!759))))

(assert (= (and d!145207 (not res!902736)) b!1357915))

(assert (= (and b!1357915 res!902734) b!1357916))

(assert (= (and b!1357916 res!902737) b!1357917))

(assert (= (and b!1357916 (not res!902735)) b!1357918))

(declare-fun m!1243595 () Bool)

(assert (=> b!1357918 m!1243595))

(declare-fun m!1243597 () Bool)

(assert (=> b!1357917 m!1243597))

(assert (=> b!1357831 d!145207))

(declare-fun d!145211 () Bool)

(assert (=> d!145211 (subseq!823 acc!759 acc!759)))

(declare-fun lt!599197 () Unit!44625)

(declare-fun choose!36 (List!31867) Unit!44625)

(assert (=> d!145211 (= lt!599197 (choose!36 acc!759))))

(assert (=> d!145211 (= (lemmaListSubSeqRefl!0 acc!759) lt!599197)))

(declare-fun bs!38937 () Bool)

(assert (= bs!38937 d!145211))

(assert (=> bs!38937 m!1243531))

(declare-fun m!1243619 () Bool)

(assert (=> bs!38937 m!1243619))

(assert (=> b!1357831 d!145211))

(declare-fun d!145219 () Bool)

(declare-fun res!902762 () Bool)

(declare-fun e!770734 () Bool)

(assert (=> d!145219 (=> res!902762 e!770734)))

(assert (=> d!145219 (= res!902762 (is-Nil!31864 lt!599177))))

(assert (=> d!145219 (= (noDuplicate!2311 lt!599177) e!770734)))

(declare-fun b!1357947 () Bool)

(declare-fun e!770735 () Bool)

(assert (=> b!1357947 (= e!770734 e!770735)))

(declare-fun res!902763 () Bool)

(assert (=> b!1357947 (=> (not res!902763) (not e!770735))))

(assert (=> b!1357947 (= res!902763 (not (contains!9432 (t!46538 lt!599177) (h!33072 lt!599177))))))

(declare-fun b!1357948 () Bool)

(assert (=> b!1357948 (= e!770735 (noDuplicate!2311 (t!46538 lt!599177)))))

(assert (= (and d!145219 (not res!902762)) b!1357947))

(assert (= (and b!1357947 res!902763) b!1357948))

(declare-fun m!1243633 () Bool)

(assert (=> b!1357947 m!1243633))

(declare-fun m!1243635 () Bool)

(assert (=> b!1357948 m!1243635))

(assert (=> b!1357833 d!145219))

(declare-fun d!145227 () Bool)

(declare-fun res!902764 () Bool)

(declare-fun e!770736 () Bool)

(assert (=> d!145227 (=> res!902764 e!770736)))

(assert (=> d!145227 (= res!902764 (is-Nil!31864 acc!759))))

(assert (=> d!145227 (= (noDuplicate!2311 acc!759) e!770736)))

(declare-fun b!1357949 () Bool)

(declare-fun e!770737 () Bool)

(assert (=> b!1357949 (= e!770736 e!770737)))

(declare-fun res!902765 () Bool)

(assert (=> b!1357949 (=> (not res!902765) (not e!770737))))

(assert (=> b!1357949 (= res!902765 (not (contains!9432 (t!46538 acc!759) (h!33072 acc!759))))))

(declare-fun b!1357950 () Bool)

(assert (=> b!1357950 (= e!770737 (noDuplicate!2311 (t!46538 acc!759)))))

(assert (= (and d!145227 (not res!902764)) b!1357949))

(assert (= (and b!1357949 res!902765) b!1357950))

(declare-fun m!1243637 () Bool)

(assert (=> b!1357949 m!1243637))

(declare-fun m!1243639 () Bool)

(assert (=> b!1357950 m!1243639))

(assert (=> b!1357822 d!145227))

(declare-fun b!1357982 () Bool)

(declare-fun e!770768 () Bool)

(declare-fun e!770769 () Bool)

(assert (=> b!1357982 (= e!770768 e!770769)))

(declare-fun c!127038 () Bool)

(assert (=> b!1357982 (= c!127038 (validKeyInArray!0 (select (arr!44646 a!3742) from!3120)))))

(declare-fun b!1357983 () Bool)

(declare-fun e!770767 () Bool)

(assert (=> b!1357983 (= e!770767 (contains!9432 acc!759 (select (arr!44646 a!3742) from!3120)))))

(declare-fun b!1357984 () Bool)

(declare-fun e!770766 () Bool)

(assert (=> b!1357984 (= e!770766 e!770768)))

(declare-fun res!902791 () Bool)

(assert (=> b!1357984 (=> (not res!902791) (not e!770768))))

(assert (=> b!1357984 (= res!902791 (not e!770767))))

(declare-fun res!902793 () Bool)

(assert (=> b!1357984 (=> (not res!902793) (not e!770767))))

(assert (=> b!1357984 (= res!902793 (validKeyInArray!0 (select (arr!44646 a!3742) from!3120)))))

(declare-fun d!145229 () Bool)

(declare-fun res!902792 () Bool)

(assert (=> d!145229 (=> res!902792 e!770766)))

(assert (=> d!145229 (= res!902792 (bvsge from!3120 (size!45197 a!3742)))))

(assert (=> d!145229 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770766)))

(declare-fun b!1357985 () Bool)

(declare-fun call!65271 () Bool)

(assert (=> b!1357985 (= e!770769 call!65271)))

(declare-fun bm!65268 () Bool)

(assert (=> bm!65268 (= call!65271 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127038 (Cons!31863 (select (arr!44646 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357986 () Bool)

(assert (=> b!1357986 (= e!770769 call!65271)))

(assert (= (and d!145229 (not res!902792)) b!1357984))

(assert (= (and b!1357984 res!902793) b!1357983))

(assert (= (and b!1357984 res!902791) b!1357982))

(assert (= (and b!1357982 c!127038) b!1357985))

(assert (= (and b!1357982 (not c!127038)) b!1357986))

(assert (= (or b!1357985 b!1357986) bm!65268))

(assert (=> b!1357982 m!1243525))

(assert (=> b!1357982 m!1243525))

(assert (=> b!1357982 m!1243527))

(assert (=> b!1357983 m!1243525))

(assert (=> b!1357983 m!1243525))

(declare-fun m!1243657 () Bool)

(assert (=> b!1357983 m!1243657))

(assert (=> b!1357984 m!1243525))

(assert (=> b!1357984 m!1243525))

(assert (=> b!1357984 m!1243527))

(assert (=> bm!65268 m!1243525))

(declare-fun m!1243659 () Bool)

(assert (=> bm!65268 m!1243659))

(assert (=> b!1357824 d!145229))

(declare-fun b!1357991 () Bool)

(declare-fun e!770776 () Bool)

(declare-fun e!770777 () Bool)

(assert (=> b!1357991 (= e!770776 e!770777)))

(declare-fun c!127039 () Bool)

(assert (=> b!1357991 (= c!127039 (validKeyInArray!0 (select (arr!44646 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357992 () Bool)

(declare-fun e!770775 () Bool)

(assert (=> b!1357992 (= e!770775 (contains!9432 Nil!31864 (select (arr!44646 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357993 () Bool)

(declare-fun e!770774 () Bool)

(assert (=> b!1357993 (= e!770774 e!770776)))

(declare-fun res!902798 () Bool)

(assert (=> b!1357993 (=> (not res!902798) (not e!770776))))

(assert (=> b!1357993 (= res!902798 (not e!770775))))

(declare-fun res!902800 () Bool)

(assert (=> b!1357993 (=> (not res!902800) (not e!770775))))

(assert (=> b!1357993 (= res!902800 (validKeyInArray!0 (select (arr!44646 a!3742) #b00000000000000000000000000000000)))))

