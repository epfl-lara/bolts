; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114392 () Bool)

(assert start!114392)

(declare-fun b!1357738 () Bool)

(declare-fun res!902569 () Bool)

(declare-fun e!770610 () Bool)

(assert (=> b!1357738 (=> (not res!902569) (not e!770610))))

(declare-datatypes ((array!92407 0))(
  ( (array!92408 (arr!44644 (Array (_ BitVec 32) (_ BitVec 64))) (size!45195 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92407)

(declare-datatypes ((List!31865 0))(
  ( (Nil!31862) (Cons!31861 (h!33070 (_ BitVec 64)) (t!46536 List!31865)) )
))
(declare-fun arrayNoDuplicates!0 (array!92407 (_ BitVec 32) List!31865) Bool)

(assert (=> b!1357738 (= res!902569 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31862))))

(declare-fun b!1357739 () Bool)

(declare-fun res!902578 () Bool)

(declare-fun e!770609 () Bool)

(assert (=> b!1357739 (=> res!902578 e!770609)))

(declare-fun lt!599164 () List!31865)

(declare-fun noDuplicate!2309 (List!31865) Bool)

(assert (=> b!1357739 (= res!902578 (not (noDuplicate!2309 lt!599164)))))

(declare-fun b!1357740 () Bool)

(declare-fun res!902575 () Bool)

(assert (=> b!1357740 (=> (not res!902575) (not e!770610))))

(declare-fun acc!759 () List!31865)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1357740 (= res!902575 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357741 () Bool)

(declare-fun res!902572 () Bool)

(assert (=> b!1357741 (=> (not res!902572) (not e!770610))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357741 (= res!902572 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357742 () Bool)

(assert (=> b!1357742 (= e!770610 (not e!770609))))

(declare-fun res!902574 () Bool)

(assert (=> b!1357742 (=> res!902574 e!770609)))

(assert (=> b!1357742 (= res!902574 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!826 (List!31865 (_ BitVec 64)) List!31865)

(assert (=> b!1357742 (= lt!599164 ($colon$colon!826 acc!759 (select (arr!44644 a!3742) from!3120)))))

(declare-fun subseq!821 (List!31865 List!31865) Bool)

(assert (=> b!1357742 (subseq!821 acc!759 acc!759)))

(declare-datatypes ((Unit!44621 0))(
  ( (Unit!44622) )
))
(declare-fun lt!599165 () Unit!44621)

(declare-fun lemmaListSubSeqRefl!0 (List!31865) Unit!44621)

(assert (=> b!1357742 (= lt!599165 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357743 () Bool)

(declare-fun res!902570 () Bool)

(assert (=> b!1357743 (=> (not res!902570) (not e!770610))))

(declare-fun contains!9430 (List!31865 (_ BitVec 64)) Bool)

(assert (=> b!1357743 (= res!902570 (not (contains!9430 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357744 () Bool)

(declare-fun res!902579 () Bool)

(assert (=> b!1357744 (=> (not res!902579) (not e!770610))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357744 (= res!902579 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45195 a!3742))))))

(declare-fun b!1357745 () Bool)

(declare-fun res!902571 () Bool)

(assert (=> b!1357745 (=> (not res!902571) (not e!770610))))

(assert (=> b!1357745 (= res!902571 (validKeyInArray!0 (select (arr!44644 a!3742) from!3120)))))

(declare-fun b!1357746 () Bool)

(declare-fun res!902577 () Bool)

(assert (=> b!1357746 (=> res!902577 e!770609)))

(assert (=> b!1357746 (= res!902577 (contains!9430 lt!599164 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357747 () Bool)

(declare-fun res!902568 () Bool)

(assert (=> b!1357747 (=> (not res!902568) (not e!770610))))

(assert (=> b!1357747 (= res!902568 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45195 a!3742)))))

(declare-fun b!1357748 () Bool)

(declare-fun res!902573 () Bool)

(assert (=> b!1357748 (=> res!902573 e!770609)))

(assert (=> b!1357748 (= res!902573 (contains!9430 lt!599164 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!902580 () Bool)

(assert (=> start!114392 (=> (not res!902580) (not e!770610))))

(assert (=> start!114392 (= res!902580 (and (bvslt (size!45195 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45195 a!3742))))))

(assert (=> start!114392 e!770610))

(assert (=> start!114392 true))

(declare-fun array_inv!33589 (array!92407) Bool)

(assert (=> start!114392 (array_inv!33589 a!3742)))

(declare-fun b!1357749 () Bool)

(assert (=> b!1357749 (= e!770609 (subseq!821 acc!759 lt!599164))))

(declare-fun b!1357750 () Bool)

(declare-fun res!902567 () Bool)

(assert (=> b!1357750 (=> (not res!902567) (not e!770610))))

(assert (=> b!1357750 (= res!902567 (not (contains!9430 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357751 () Bool)

(declare-fun res!902576 () Bool)

(assert (=> b!1357751 (=> (not res!902576) (not e!770610))))

(assert (=> b!1357751 (= res!902576 (noDuplicate!2309 acc!759))))

(assert (= (and start!114392 res!902580) b!1357751))

(assert (= (and b!1357751 res!902576) b!1357750))

(assert (= (and b!1357750 res!902567) b!1357743))

(assert (= (and b!1357743 res!902570) b!1357738))

(assert (= (and b!1357738 res!902569) b!1357740))

(assert (= (and b!1357740 res!902575) b!1357744))

(assert (= (and b!1357744 res!902579) b!1357741))

(assert (= (and b!1357741 res!902572) b!1357747))

(assert (= (and b!1357747 res!902568) b!1357745))

(assert (= (and b!1357745 res!902571) b!1357742))

(assert (= (and b!1357742 (not res!902574)) b!1357739))

(assert (= (and b!1357739 (not res!902578)) b!1357748))

(assert (= (and b!1357748 (not res!902573)) b!1357746))

(assert (= (and b!1357746 (not res!902577)) b!1357749))

(declare-fun m!1243441 () Bool)

(assert (=> b!1357746 m!1243441))

(declare-fun m!1243443 () Bool)

(assert (=> b!1357750 m!1243443))

(declare-fun m!1243445 () Bool)

(assert (=> b!1357742 m!1243445))

(assert (=> b!1357742 m!1243445))

(declare-fun m!1243447 () Bool)

(assert (=> b!1357742 m!1243447))

(declare-fun m!1243449 () Bool)

(assert (=> b!1357742 m!1243449))

(declare-fun m!1243451 () Bool)

(assert (=> b!1357742 m!1243451))

(declare-fun m!1243453 () Bool)

(assert (=> b!1357749 m!1243453))

(declare-fun m!1243455 () Bool)

(assert (=> b!1357740 m!1243455))

(declare-fun m!1243457 () Bool)

(assert (=> b!1357748 m!1243457))

(declare-fun m!1243459 () Bool)

(assert (=> b!1357743 m!1243459))

(declare-fun m!1243461 () Bool)

(assert (=> start!114392 m!1243461))

(declare-fun m!1243463 () Bool)

(assert (=> b!1357751 m!1243463))

(declare-fun m!1243465 () Bool)

(assert (=> b!1357739 m!1243465))

(assert (=> b!1357745 m!1243445))

(assert (=> b!1357745 m!1243445))

(declare-fun m!1243467 () Bool)

(assert (=> b!1357745 m!1243467))

(declare-fun m!1243469 () Bool)

(assert (=> b!1357741 m!1243469))

(declare-fun m!1243471 () Bool)

(assert (=> b!1357738 m!1243471))

(push 1)

(assert (not b!1357745))

(assert (not b!1357750))

(assert (not b!1357743))

(assert (not b!1357742))

(assert (not b!1357739))

(assert (not b!1357741))

(assert (not b!1357751))

(assert (not b!1357748))

(assert (not b!1357738))

(assert (not start!114392))

(assert (not b!1357749))

(assert (not b!1357746))

(assert (not b!1357740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145179 () Bool)

(declare-fun lt!599189 () Bool)

(declare-fun content!688 (List!31865) (Set (_ BitVec 64)))

(assert (=> d!145179 (= lt!599189 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!688 acc!759)))))

(declare-fun e!770665 () Bool)

(assert (=> d!145179 (= lt!599189 e!770665)))

(declare-fun res!902700 () Bool)

(assert (=> d!145179 (=> (not res!902700) (not e!770665))))

(assert (=> d!145179 (= res!902700 (is-Cons!31861 acc!759))))

(assert (=> d!145179 (= (contains!9430 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599189)))

(declare-fun b!1357870 () Bool)

(declare-fun e!770664 () Bool)

(assert (=> b!1357870 (= e!770665 e!770664)))

(declare-fun res!902699 () Bool)

(assert (=> b!1357870 (=> res!902699 e!770664)))

(assert (=> b!1357870 (= res!902699 (= (h!33070 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357871 () Bool)

(assert (=> b!1357871 (= e!770664 (contains!9430 (t!46536 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145179 res!902700) b!1357870))

(assert (= (and b!1357870 (not res!902699)) b!1357871))

(declare-fun m!1243559 () Bool)

(assert (=> d!145179 m!1243559))

(declare-fun m!1243561 () Bool)

(assert (=> d!145179 m!1243561))

(declare-fun m!1243563 () Bool)

(assert (=> b!1357871 m!1243563))

(assert (=> b!1357743 d!145179))

(declare-fun d!145189 () Bool)

(declare-fun lt!599191 () Bool)

(assert (=> d!145189 (= lt!599191 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!688 lt!599164)))))

(declare-fun e!770669 () Bool)

(assert (=> d!145189 (= lt!599191 e!770669)))

(declare-fun res!902704 () Bool)

(assert (=> d!145189 (=> (not res!902704) (not e!770669))))

(assert (=> d!145189 (= res!902704 (is-Cons!31861 lt!599164))))

(assert (=> d!145189 (= (contains!9430 lt!599164 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599191)))

(declare-fun b!1357874 () Bool)

(declare-fun e!770668 () Bool)

(assert (=> b!1357874 (= e!770669 e!770668)))

(declare-fun res!902703 () Bool)

(assert (=> b!1357874 (=> res!902703 e!770668)))

(assert (=> b!1357874 (= res!902703 (= (h!33070 lt!599164) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357875 () Bool)

(assert (=> b!1357875 (= e!770668 (contains!9430 (t!46536 lt!599164) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145189 res!902704) b!1357874))

(assert (= (and b!1357874 (not res!902703)) b!1357875))

(declare-fun m!1243569 () Bool)

(assert (=> d!145189 m!1243569))

(declare-fun m!1243571 () Bool)

(assert (=> d!145189 m!1243571))

(declare-fun m!1243573 () Bool)

(assert (=> b!1357875 m!1243573))

(assert (=> b!1357746 d!145189))

(declare-fun d!145193 () Bool)

(assert (=> d!145193 (= (validKeyInArray!0 (select (arr!44644 a!3742) from!3120)) (and (not (= (select (arr!44644 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44644 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357745 d!145193))

(declare-fun b!1357919 () Bool)

(declare-fun e!770710 () Bool)

(declare-fun call!65266 () Bool)

(assert (=> b!1357919 (= e!770710 call!65266)))

(declare-fun bm!65263 () Bool)

(declare-fun c!127033 () Bool)

(assert (=> bm!65263 (= call!65266 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127033 (Cons!31861 (select (arr!44644 a!3742) #b00000000000000000000000000000000) Nil!31862) Nil!31862)))))

(declare-fun b!1357920 () Bool)

(declare-fun e!770709 () Bool)

(assert (=> b!1357920 (= e!770709 e!770710)))

(assert (=> b!1357920 (= c!127033 (validKeyInArray!0 (select (arr!44644 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145201 () Bool)

(declare-fun res!902739 () Bool)

(declare-fun e!770711 () Bool)

(assert (=> d!145201 (=> res!902739 e!770711)))

(assert (=> d!145201 (= res!902739 (bvsge #b00000000000000000000000000000000 (size!45195 a!3742)))))

(assert (=> d!145201 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31862) e!770711)))

(declare-fun b!1357921 () Bool)

(assert (=> b!1357921 (= e!770711 e!770709)))

(declare-fun res!902740 () Bool)

(assert (=> b!1357921 (=> (not res!902740) (not e!770709))))

(declare-fun e!770708 () Bool)

(assert (=> b!1357921 (= res!902740 (not e!770708))))

(declare-fun res!902738 () Bool)

(assert (=> b!1357921 (=> (not res!902738) (not e!770708))))

(assert (=> b!1357921 (= res!902738 (validKeyInArray!0 (select (arr!44644 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357922 () Bool)

(assert (=> b!1357922 (= e!770708 (contains!9430 Nil!31862 (select (arr!44644 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357923 () Bool)

(assert (=> b!1357923 (= e!770710 call!65266)))

(assert (= (and d!145201 (not res!902739)) b!1357921))

(assert (= (and b!1357921 res!902738) b!1357922))

(assert (= (and b!1357921 res!902740) b!1357920))

(assert (= (and b!1357920 c!127033) b!1357923))

(assert (= (and b!1357920 (not c!127033)) b!1357919))

(assert (= (or b!1357923 b!1357919) bm!65263))

(declare-fun m!1243603 () Bool)

(assert (=> bm!65263 m!1243603))

(declare-fun m!1243605 () Bool)

(assert (=> bm!65263 m!1243605))

(assert (=> b!1357920 m!1243603))

(assert (=> b!1357920 m!1243603))

(declare-fun m!1243607 () Bool)

(assert (=> b!1357920 m!1243607))

(assert (=> b!1357921 m!1243603))

(assert (=> b!1357921 m!1243603))

(assert (=> b!1357921 m!1243607))

(assert (=> b!1357922 m!1243603))

(assert (=> b!1357922 m!1243603))

(declare-fun m!1243609 () Bool)

(assert (=> b!1357922 m!1243609))

(assert (=> b!1357738 d!145201))

(declare-fun d!145215 () Bool)

(assert (=> d!145215 (= (array_inv!33589 a!3742) (bvsge (size!45195 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114392 d!145215))

(declare-fun d!145221 () Bool)

(declare-fun lt!599198 () Bool)

(assert (=> d!145221 (= lt!599198 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!688 lt!599164)))))

(declare-fun e!770723 () Bool)

(assert (=> d!145221 (= lt!599198 e!770723)))

(declare-fun res!902751 () Bool)

(assert (=> d!145221 (=> (not res!902751) (not e!770723))))

(assert (=> d!145221 (= res!902751 (is-Cons!31861 lt!599164))))

(assert (=> d!145221 (= (contains!9430 lt!599164 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599198)))

(declare-fun b!1357935 () Bool)

(declare-fun e!770722 () Bool)

(assert (=> b!1357935 (= e!770723 e!770722)))

(declare-fun res!902750 () Bool)

(assert (=> b!1357935 (=> res!902750 e!770722)))

(assert (=> b!1357935 (= res!902750 (= (h!33070 lt!599164) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357936 () Bool)

(assert (=> b!1357936 (= e!770722 (contains!9430 (t!46536 lt!599164) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145221 res!902751) b!1357935))

(assert (= (and b!1357935 (not res!902750)) b!1357936))

(assert (=> d!145221 m!1243569))

(declare-fun m!1243625 () Bool)

(assert (=> d!145221 m!1243625))

(declare-fun m!1243627 () Bool)

(assert (=> b!1357936 m!1243627))

(assert (=> b!1357748 d!145221))

(declare-fun d!145223 () Bool)

(declare-fun lt!599199 () Bool)

(assert (=> d!145223 (= lt!599199 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!688 acc!759)))))

(declare-fun e!770725 () Bool)

(assert (=> d!145223 (= lt!599199 e!770725)))

(declare-fun res!902753 () Bool)

(assert (=> d!145223 (=> (not res!902753) (not e!770725))))

(assert (=> d!145223 (= res!902753 (is-Cons!31861 acc!759))))

(assert (=> d!145223 (= (contains!9430 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599199)))

(declare-fun b!1357937 () Bool)

(declare-fun e!770724 () Bool)

(assert (=> b!1357937 (= e!770725 e!770724)))

(declare-fun res!902752 () Bool)

(assert (=> b!1357937 (=> res!902752 e!770724)))

(assert (=> b!1357937 (= res!902752 (= (h!33070 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357938 () Bool)

(assert (=> b!1357938 (= e!770724 (contains!9430 (t!46536 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145223 res!902753) b!1357937))

(assert (= (and b!1357937 (not res!902752)) b!1357938))

(assert (=> d!145223 m!1243559))

(declare-fun m!1243629 () Bool)

(assert (=> d!145223 m!1243629))

(declare-fun m!1243631 () Bool)

(assert (=> b!1357938 m!1243631))

(assert (=> b!1357750 d!145223))

(declare-fun d!145225 () Bool)

(declare-fun res!902766 () Bool)

(declare-fun e!770738 () Bool)

(assert (=> d!145225 (=> res!902766 e!770738)))

(assert (=> d!145225 (= res!902766 (is-Nil!31862 lt!599164))))

(assert (=> d!145225 (= (noDuplicate!2309 lt!599164) e!770738)))

(declare-fun b!1357951 () Bool)

(declare-fun e!770739 () Bool)

(assert (=> b!1357951 (= e!770738 e!770739)))

(declare-fun res!902767 () Bool)

(assert (=> b!1357951 (=> (not res!902767) (not e!770739))))

(assert (=> b!1357951 (= res!902767 (not (contains!9430 (t!46536 lt!599164) (h!33070 lt!599164))))))

(declare-fun b!1357952 () Bool)

(assert (=> b!1357952 (= e!770739 (noDuplicate!2309 (t!46536 lt!599164)))))

(assert (= (and d!145225 (not res!902766)) b!1357951))

(assert (= (and b!1357951 res!902767) b!1357952))

(declare-fun m!1243641 () Bool)

(assert (=> b!1357951 m!1243641))

(declare-fun m!1243643 () Bool)

(assert (=> b!1357952 m!1243643))

(assert (=> b!1357739 d!145225))

(declare-fun b!1357973 () Bool)

(declare-fun e!770759 () Bool)

(assert (=> b!1357973 (= e!770759 (subseq!821 (t!46536 acc!759) (t!46536 lt!599164)))))

(declare-fun d!145231 () Bool)

(declare-fun res!902784 () Bool)

(declare-fun e!770756 () Bool)

(assert (=> d!145231 (=> res!902784 e!770756)))

(assert (=> d!145231 (= res!902784 (is-Nil!31862 acc!759))))

(assert (=> d!145231 (= (subseq!821 acc!759 lt!599164) e!770756)))

(declare-fun b!1357974 () Bool)

(declare-fun e!770758 () Bool)

(assert (=> b!1357974 (= e!770758 (subseq!821 acc!759 (t!46536 lt!599164)))))

(declare-fun b!1357972 () Bool)

(declare-fun e!770757 () Bool)

(assert (=> b!1357972 (= e!770757 e!770758)))

(declare-fun res!902785 () Bool)

(assert (=> b!1357972 (=> res!902785 e!770758)))

(assert (=> b!1357972 (= res!902785 e!770759)))

(declare-fun res!902783 () Bool)

(assert (=> b!1357972 (=> (not res!902783) (not e!770759))))

(assert (=> b!1357972 (= res!902783 (= (h!33070 acc!759) (h!33070 lt!599164)))))

(declare-fun b!1357971 () Bool)

(assert (=> b!1357971 (= e!770756 e!770757)))

(declare-fun res!902782 () Bool)

(assert (=> b!1357971 (=> (not res!902782) (not e!770757))))

(assert (=> b!1357971 (= res!902782 (is-Cons!31861 lt!599164))))

(assert (= (and d!145231 (not res!902784)) b!1357971))

(assert (= (and b!1357971 res!902782) b!1357972))

(assert (= (and b!1357972 res!902783) b!1357973))

(assert (= (and b!1357972 (not res!902785)) b!1357974))

(declare-fun m!1243645 () Bool)

(assert (=> b!1357973 m!1243645))

(declare-fun m!1243647 () Bool)

(assert (=> b!1357974 m!1243647))

(assert (=> b!1357749 d!145231))

(declare-fun d!145233 () Bool)

(declare-fun res!902786 () Bool)

(declare-fun e!770760 () Bool)

(assert (=> d!145233 (=> res!902786 e!770760)))

(assert (=> d!145233 (= res!902786 (is-Nil!31862 acc!759))))

(assert (=> d!145233 (= (noDuplicate!2309 acc!759) e!770760)))

(declare-fun b!1357975 () Bool)

(declare-fun e!770761 () Bool)

(assert (=> b!1357975 (= e!770760 e!770761)))

(declare-fun res!902787 () Bool)

(assert (=> b!1357975 (=> (not res!902787) (not e!770761))))

(assert (=> b!1357975 (= res!902787 (not (contains!9430 (t!46536 acc!759) (h!33070 acc!759))))))

(declare-fun b!1357976 () Bool)

(assert (=> b!1357976 (= e!770761 (noDuplicate!2309 (t!46536 acc!759)))))

(assert (= (and d!145233 (not res!902786)) b!1357975))

(assert (= (and b!1357975 res!902787) b!1357976))

(declare-fun m!1243649 () Bool)

(assert (=> b!1357975 m!1243649))

(declare-fun m!1243651 () Bool)

(assert (=> b!1357976 m!1243651))

(assert (=> b!1357751 d!145233))

(declare-fun b!1357977 () Bool)

(declare-fun e!770764 () Bool)

(declare-fun call!65270 () Bool)

(assert (=> b!1357977 (= e!770764 call!65270)))

(declare-fun c!127037 () Bool)

(declare-fun bm!65267 () Bool)

(assert (=> bm!65267 (= call!65270 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127037 (Cons!31861 (select (arr!44644 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357978 () Bool)

(declare-fun e!770763 () Bool)

(assert (=> b!1357978 (= e!770763 e!770764)))

(assert (=> b!1357978 (= c!127037 (validKeyInArray!0 (select (arr!44644 a!3742) from!3120)))))

(declare-fun d!145235 () Bool)

(declare-fun res!902789 () Bool)

(declare-fun e!770765 () Bool)

(assert (=> d!145235 (=> res!902789 e!770765)))

(assert (=> d!145235 (= res!902789 (bvsge from!3120 (size!45195 a!3742)))))

(assert (=> d!145235 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770765)))

(declare-fun b!1357979 () Bool)

(assert (=> b!1357979 (= e!770765 e!770763)))

(declare-fun res!902790 () Bool)

(assert (=> b!1357979 (=> (not res!902790) (not e!770763))))

(declare-fun e!770762 () Bool)

(assert (=> b!1357979 (= res!902790 (not e!770762))))

(declare-fun res!902788 () Bool)

(assert (=> b!1357979 (=> (not res!902788) (not e!770762))))

(assert (=> b!1357979 (= res!902788 (validKeyInArray!0 (select (arr!44644 a!3742) from!3120)))))

(declare-fun b!1357980 () Bool)

(assert (=> b!1357980 (= e!770762 (contains!9430 acc!759 (select (arr!44644 a!3742) from!3120)))))

(declare-fun b!1357981 () Bool)

(assert (=> b!1357981 (= e!770764 call!65270)))

(assert (= (and d!145235 (not res!902789)) b!1357979))

(assert (= (and b!1357979 res!902788) b!1357980))

(assert (= (and b!1357979 res!902790) b!1357978))

(assert (= (and b!1357978 c!127037) b!1357981))

(assert (= (and b!1357978 (not c!127037)) b!1357977))

(assert (= (or b!1357981 b!1357977) bm!65267))

(assert (=> bm!65267 m!1243445))

(declare-fun m!1243653 () Bool)

(assert (=> bm!65267 m!1243653))

(assert (=> b!1357978 m!1243445))

(assert (=> b!1357978 m!1243445))

(assert (=> b!1357978 m!1243467))

(assert (=> b!1357979 m!1243445))

(assert (=> b!1357979 m!1243445))

(assert (=> b!1357979 m!1243467))

(assert (=> b!1357980 m!1243445))

(assert (=> b!1357980 m!1243445))

(declare-fun m!1243655 () Bool)

(assert (=> b!1357980 m!1243655))

(assert (=> b!1357740 d!145235))

(declare-fun d!145237 () Bool)

(assert (=> d!145237 (= ($colon$colon!826 acc!759 (select (arr!44644 a!3742) from!3120)) (Cons!31861 (select (arr!44644 a!3742) from!3120) acc!759))))

(assert (=> b!1357742 d!145237))

(declare-fun b!1357989 () Bool)

(declare-fun e!770773 () Bool)

(assert (=> b!1357989 (= e!770773 (subseq!821 (t!46536 acc!759) (t!46536 acc!759)))))

(declare-fun d!145239 () Bool)

(declare-fun res!902796 () Bool)

(declare-fun e!770770 () Bool)

(assert (=> d!145239 (=> res!902796 e!770770)))

(assert (=> d!145239 (= res!902796 (is-Nil!31862 acc!759))))

(assert (=> d!145239 (= (subseq!821 acc!759 acc!759) e!770770)))

(declare-fun b!1357990 () Bool)

(declare-fun e!770772 () Bool)

(assert (=> b!1357990 (= e!770772 (subseq!821 acc!759 (t!46536 acc!759)))))

(declare-fun b!1357988 () Bool)

(declare-fun e!770771 () Bool)

(assert (=> b!1357988 (= e!770771 e!770772)))

(declare-fun res!902797 () Bool)

(assert (=> b!1357988 (=> res!902797 e!770772)))

(assert (=> b!1357988 (= res!902797 e!770773)))

(declare-fun res!902795 () Bool)

(assert (=> b!1357988 (=> (not res!902795) (not e!770773))))

(assert (=> b!1357988 (= res!902795 (= (h!33070 acc!759) (h!33070 acc!759)))))

(declare-fun b!1357987 () Bool)

(assert (=> b!1357987 (= e!770770 e!770771)))

(declare-fun res!902794 () Bool)

(assert (=> b!1357987 (=> (not res!902794) (not e!770771))))

(assert (=> b!1357987 (= res!902794 (is-Cons!31861 acc!759))))

(assert (= (and d!145239 (not res!902796)) b!1357987))

(assert (= (and b!1357987 res!902794) b!1357988))

(assert (= (and b!1357988 res!902795) b!1357989))

(assert (= (and b!1357988 (not res!902797)) b!1357990))

(declare-fun m!1243661 () Bool)

(assert (=> b!1357989 m!1243661))

(declare-fun m!1243663 () Bool)

(assert (=> b!1357990 m!1243663))

(assert (=> b!1357742 d!145239))

(declare-fun d!145243 () Bool)

(assert (=> d!145243 (subseq!821 acc!759 acc!759)))

(declare-fun lt!599202 () Unit!44621)

(declare-fun choose!36 (List!31865) Unit!44621)

(assert (=> d!145243 (= lt!599202 (choose!36 acc!759))))

(assert (=> d!145243 (= (lemmaListSubSeqRefl!0 acc!759) lt!599202)))

(declare-fun bs!38938 () Bool)

(assert (= bs!38938 d!145243))

(assert (=> bs!38938 m!1243449))

(declare-fun m!1243677 () Bool)

(assert (=> bs!38938 m!1243677))

(assert (=> b!1357742 d!145243))

(declare-fun d!145249 () Bool)

(assert (=> d!145249 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357741 d!145249))

(push 1)

