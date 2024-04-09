; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115120 () Bool)

(assert start!115120)

(declare-fun b!1363820 () Bool)

(declare-fun res!907674 () Bool)

(declare-fun e!773387 () Bool)

(assert (=> b!1363820 (=> (not res!907674) (not e!773387))))

(declare-datatypes ((List!31983 0))(
  ( (Nil!31980) (Cons!31979 (h!33188 (_ BitVec 64)) (t!46681 List!31983)) )
))
(declare-fun acc!759 () List!31983)

(declare-datatypes ((array!92670 0))(
  ( (array!92671 (arr!44762 (Array (_ BitVec 32) (_ BitVec 64))) (size!45313 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92670)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92670 (_ BitVec 32) List!31983) Bool)

(assert (=> b!1363820 (= res!907674 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363821 () Bool)

(declare-datatypes ((Unit!44969 0))(
  ( (Unit!44970) )
))
(declare-fun e!773386 () Unit!44969)

(declare-fun lt!600886 () Unit!44969)

(assert (=> b!1363821 (= e!773386 lt!600886)))

(declare-fun lt!600888 () Unit!44969)

(declare-fun lemmaListSubSeqRefl!0 (List!31983) Unit!44969)

(assert (=> b!1363821 (= lt!600888 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!939 (List!31983 List!31983) Bool)

(assert (=> b!1363821 (subseq!939 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92670 List!31983 List!31983 (_ BitVec 32)) Unit!44969)

(declare-fun $colon$colon!944 (List!31983 (_ BitVec 64)) List!31983)

(assert (=> b!1363821 (= lt!600886 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!944 acc!759 (select (arr!44762 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363821 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363822 () Bool)

(declare-fun Unit!44971 () Unit!44969)

(assert (=> b!1363822 (= e!773386 Unit!44971)))

(declare-fun lt!600885 () array!92670)

(declare-fun b!1363823 () Bool)

(assert (=> b!1363823 (= e!773387 (not (arrayNoDuplicates!0 lt!600885 from!3120 acc!759)))))

(assert (=> b!1363823 (arrayNoDuplicates!0 lt!600885 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363823 (= lt!600885 (array!92671 (store (arr!44762 a!3742) i!1404 l!3587) (size!45313 a!3742)))))

(declare-fun lt!600890 () Unit!44969)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92670 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31983) Unit!44969)

(assert (=> b!1363823 (= lt!600890 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363824 () Bool)

(declare-fun res!907682 () Bool)

(declare-fun e!773388 () Bool)

(assert (=> b!1363824 (=> (not res!907682) (not e!773388))))

(declare-fun noDuplicate!2427 (List!31983) Bool)

(assert (=> b!1363824 (= res!907682 (noDuplicate!2427 acc!759))))

(declare-fun b!1363825 () Bool)

(declare-fun res!907680 () Bool)

(assert (=> b!1363825 (=> (not res!907680) (not e!773388))))

(assert (=> b!1363825 (= res!907680 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45313 a!3742))))))

(declare-fun b!1363826 () Bool)

(declare-fun res!907677 () Bool)

(assert (=> b!1363826 (=> (not res!907677) (not e!773388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363826 (= res!907677 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363827 () Bool)

(declare-fun res!907676 () Bool)

(assert (=> b!1363827 (=> (not res!907676) (not e!773388))))

(declare-fun contains!9548 (List!31983 (_ BitVec 64)) Bool)

(assert (=> b!1363827 (= res!907676 (not (contains!9548 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907678 () Bool)

(assert (=> start!115120 (=> (not res!907678) (not e!773388))))

(assert (=> start!115120 (= res!907678 (and (bvslt (size!45313 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45313 a!3742))))))

(assert (=> start!115120 e!773388))

(assert (=> start!115120 true))

(declare-fun array_inv!33707 (array!92670) Bool)

(assert (=> start!115120 (array_inv!33707 a!3742)))

(declare-fun b!1363828 () Bool)

(declare-fun res!907673 () Bool)

(assert (=> b!1363828 (=> (not res!907673) (not e!773388))))

(assert (=> b!1363828 (= res!907673 (not (contains!9548 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363829 () Bool)

(declare-fun res!907683 () Bool)

(assert (=> b!1363829 (=> (not res!907683) (not e!773388))))

(assert (=> b!1363829 (= res!907683 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31980))))

(declare-fun b!1363830 () Bool)

(declare-fun res!907679 () Bool)

(assert (=> b!1363830 (=> (not res!907679) (not e!773388))))

(assert (=> b!1363830 (= res!907679 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363831 () Bool)

(declare-fun res!907681 () Bool)

(assert (=> b!1363831 (=> (not res!907681) (not e!773388))))

(assert (=> b!1363831 (= res!907681 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45313 a!3742)))))

(declare-fun b!1363832 () Bool)

(assert (=> b!1363832 (= e!773388 e!773387)))

(declare-fun res!907675 () Bool)

(assert (=> b!1363832 (=> (not res!907675) (not e!773387))))

(declare-fun lt!600889 () Bool)

(assert (=> b!1363832 (= res!907675 (and (not (= from!3120 i!1404)) (not lt!600889) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600887 () Unit!44969)

(assert (=> b!1363832 (= lt!600887 e!773386)))

(declare-fun c!127516 () Bool)

(assert (=> b!1363832 (= c!127516 lt!600889)))

(assert (=> b!1363832 (= lt!600889 (validKeyInArray!0 (select (arr!44762 a!3742) from!3120)))))

(assert (= (and start!115120 res!907678) b!1363824))

(assert (= (and b!1363824 res!907682) b!1363828))

(assert (= (and b!1363828 res!907673) b!1363827))

(assert (= (and b!1363827 res!907676) b!1363829))

(assert (= (and b!1363829 res!907683) b!1363830))

(assert (= (and b!1363830 res!907679) b!1363825))

(assert (= (and b!1363825 res!907680) b!1363826))

(assert (= (and b!1363826 res!907677) b!1363831))

(assert (= (and b!1363831 res!907681) b!1363832))

(assert (= (and b!1363832 c!127516) b!1363821))

(assert (= (and b!1363832 (not c!127516)) b!1363822))

(assert (= (and b!1363832 res!907675) b!1363820))

(assert (= (and b!1363820 res!907674) b!1363823))

(declare-fun m!1248571 () Bool)

(assert (=> b!1363826 m!1248571))

(declare-fun m!1248573 () Bool)

(assert (=> b!1363829 m!1248573))

(declare-fun m!1248575 () Bool)

(assert (=> b!1363830 m!1248575))

(declare-fun m!1248577 () Bool)

(assert (=> start!115120 m!1248577))

(declare-fun m!1248579 () Bool)

(assert (=> b!1363832 m!1248579))

(assert (=> b!1363832 m!1248579))

(declare-fun m!1248581 () Bool)

(assert (=> b!1363832 m!1248581))

(declare-fun m!1248583 () Bool)

(assert (=> b!1363827 m!1248583))

(declare-fun m!1248585 () Bool)

(assert (=> b!1363828 m!1248585))

(declare-fun m!1248587 () Bool)

(assert (=> b!1363823 m!1248587))

(declare-fun m!1248589 () Bool)

(assert (=> b!1363823 m!1248589))

(declare-fun m!1248591 () Bool)

(assert (=> b!1363823 m!1248591))

(declare-fun m!1248593 () Bool)

(assert (=> b!1363823 m!1248593))

(declare-fun m!1248595 () Bool)

(assert (=> b!1363821 m!1248595))

(assert (=> b!1363821 m!1248579))

(declare-fun m!1248597 () Bool)

(assert (=> b!1363821 m!1248597))

(declare-fun m!1248599 () Bool)

(assert (=> b!1363821 m!1248599))

(declare-fun m!1248601 () Bool)

(assert (=> b!1363821 m!1248601))

(assert (=> b!1363821 m!1248579))

(assert (=> b!1363821 m!1248597))

(declare-fun m!1248603 () Bool)

(assert (=> b!1363821 m!1248603))

(declare-fun m!1248605 () Bool)

(assert (=> b!1363824 m!1248605))

(assert (=> b!1363820 m!1248601))

(check-sat (not b!1363821) (not b!1363823) (not b!1363824) (not b!1363820) (not b!1363829) (not start!115120) (not b!1363827) (not b!1363826) (not b!1363830) (not b!1363828) (not b!1363832))
(check-sat)
(get-model)

(declare-fun d!146089 () Bool)

(assert (=> d!146089 (= (validKeyInArray!0 (select (arr!44762 a!3742) from!3120)) (and (not (= (select (arr!44762 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44762 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363832 d!146089))

(declare-fun d!146091 () Bool)

(assert (=> d!146091 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600911 () Unit!44969)

(declare-fun choose!80 (array!92670 List!31983 List!31983 (_ BitVec 32)) Unit!44969)

(assert (=> d!146091 (= lt!600911 (choose!80 a!3742 ($colon$colon!944 acc!759 (select (arr!44762 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!146091 (bvslt (size!45313 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!146091 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!944 acc!759 (select (arr!44762 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600911)))

(declare-fun bs!39101 () Bool)

(assert (= bs!39101 d!146091))

(assert (=> bs!39101 m!1248601))

(assert (=> bs!39101 m!1248597))

(declare-fun m!1248643 () Bool)

(assert (=> bs!39101 m!1248643))

(assert (=> b!1363821 d!146091))

(declare-fun b!1363882 () Bool)

(declare-fun e!773411 () Bool)

(assert (=> b!1363882 (= e!773411 (subseq!939 (t!46681 acc!759) (t!46681 acc!759)))))

(declare-fun d!146093 () Bool)

(declare-fun res!907727 () Bool)

(declare-fun e!773413 () Bool)

(assert (=> d!146093 (=> res!907727 e!773413)))

(get-info :version)

(assert (=> d!146093 (= res!907727 ((_ is Nil!31980) acc!759))))

(assert (=> d!146093 (= (subseq!939 acc!759 acc!759) e!773413)))

(declare-fun b!1363880 () Bool)

(declare-fun e!773410 () Bool)

(assert (=> b!1363880 (= e!773413 e!773410)))

(declare-fun res!907728 () Bool)

(assert (=> b!1363880 (=> (not res!907728) (not e!773410))))

(assert (=> b!1363880 (= res!907728 ((_ is Cons!31979) acc!759))))

(declare-fun b!1363881 () Bool)

(declare-fun e!773412 () Bool)

(assert (=> b!1363881 (= e!773410 e!773412)))

(declare-fun res!907725 () Bool)

(assert (=> b!1363881 (=> res!907725 e!773412)))

(assert (=> b!1363881 (= res!907725 e!773411)))

(declare-fun res!907726 () Bool)

(assert (=> b!1363881 (=> (not res!907726) (not e!773411))))

(assert (=> b!1363881 (= res!907726 (= (h!33188 acc!759) (h!33188 acc!759)))))

(declare-fun b!1363883 () Bool)

(assert (=> b!1363883 (= e!773412 (subseq!939 acc!759 (t!46681 acc!759)))))

(assert (= (and d!146093 (not res!907727)) b!1363880))

(assert (= (and b!1363880 res!907728) b!1363881))

(assert (= (and b!1363881 res!907726) b!1363882))

(assert (= (and b!1363881 (not res!907725)) b!1363883))

(declare-fun m!1248645 () Bool)

(assert (=> b!1363882 m!1248645))

(declare-fun m!1248647 () Bool)

(assert (=> b!1363883 m!1248647))

(assert (=> b!1363821 d!146093))

(declare-fun e!773436 () Bool)

(declare-fun b!1363909 () Bool)

(assert (=> b!1363909 (= e!773436 (contains!9548 acc!759 (select (arr!44762 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363910 () Bool)

(declare-fun e!773434 () Bool)

(declare-fun e!773437 () Bool)

(assert (=> b!1363910 (= e!773434 e!773437)))

(declare-fun c!127525 () Bool)

(assert (=> b!1363910 (= c!127525 (validKeyInArray!0 (select (arr!44762 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363911 () Bool)

(declare-fun call!65416 () Bool)

(assert (=> b!1363911 (= e!773437 call!65416)))

(declare-fun b!1363912 () Bool)

(assert (=> b!1363912 (= e!773437 call!65416)))

(declare-fun d!146097 () Bool)

(declare-fun res!907745 () Bool)

(declare-fun e!773435 () Bool)

(assert (=> d!146097 (=> res!907745 e!773435)))

(assert (=> d!146097 (= res!907745 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45313 a!3742)))))

(assert (=> d!146097 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!773435)))

(declare-fun b!1363913 () Bool)

(assert (=> b!1363913 (= e!773435 e!773434)))

(declare-fun res!907744 () Bool)

(assert (=> b!1363913 (=> (not res!907744) (not e!773434))))

(assert (=> b!1363913 (= res!907744 (not e!773436))))

(declare-fun res!907746 () Bool)

(assert (=> b!1363913 (=> (not res!907746) (not e!773436))))

(assert (=> b!1363913 (= res!907746 (validKeyInArray!0 (select (arr!44762 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65413 () Bool)

(assert (=> bm!65413 (= call!65416 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127525 (Cons!31979 (select (arr!44762 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!146097 (not res!907745)) b!1363913))

(assert (= (and b!1363913 res!907746) b!1363909))

(assert (= (and b!1363913 res!907744) b!1363910))

(assert (= (and b!1363910 c!127525) b!1363911))

(assert (= (and b!1363910 (not c!127525)) b!1363912))

(assert (= (or b!1363911 b!1363912) bm!65413))

(declare-fun m!1248654 () Bool)

(assert (=> b!1363909 m!1248654))

(assert (=> b!1363909 m!1248654))

(declare-fun m!1248657 () Bool)

(assert (=> b!1363909 m!1248657))

(assert (=> b!1363910 m!1248654))

(assert (=> b!1363910 m!1248654))

(declare-fun m!1248661 () Bool)

(assert (=> b!1363910 m!1248661))

(assert (=> b!1363913 m!1248654))

(assert (=> b!1363913 m!1248654))

(assert (=> b!1363913 m!1248661))

(assert (=> bm!65413 m!1248654))

(declare-fun m!1248663 () Bool)

(assert (=> bm!65413 m!1248663))

(assert (=> b!1363821 d!146097))

(declare-fun d!146105 () Bool)

(assert (=> d!146105 (= ($colon$colon!944 acc!759 (select (arr!44762 a!3742) from!3120)) (Cons!31979 (select (arr!44762 a!3742) from!3120) acc!759))))

(assert (=> b!1363821 d!146105))

(declare-fun d!146107 () Bool)

(assert (=> d!146107 (subseq!939 acc!759 acc!759)))

(declare-fun lt!600914 () Unit!44969)

(declare-fun choose!36 (List!31983) Unit!44969)

(assert (=> d!146107 (= lt!600914 (choose!36 acc!759))))

(assert (=> d!146107 (= (lemmaListSubSeqRefl!0 acc!759) lt!600914)))

(declare-fun bs!39102 () Bool)

(assert (= bs!39102 d!146107))

(assert (=> bs!39102 m!1248603))

(declare-fun m!1248673 () Bool)

(assert (=> bs!39102 m!1248673))

(assert (=> b!1363821 d!146107))

(assert (=> b!1363820 d!146097))

(declare-fun e!773444 () Bool)

(declare-fun b!1363919 () Bool)

(assert (=> b!1363919 (= e!773444 (contains!9548 acc!759 (select (arr!44762 a!3742) from!3120)))))

(declare-fun b!1363920 () Bool)

(declare-fun e!773442 () Bool)

(declare-fun e!773445 () Bool)

(assert (=> b!1363920 (= e!773442 e!773445)))

(declare-fun c!127527 () Bool)

(assert (=> b!1363920 (= c!127527 (validKeyInArray!0 (select (arr!44762 a!3742) from!3120)))))

(declare-fun b!1363921 () Bool)

(declare-fun call!65418 () Bool)

(assert (=> b!1363921 (= e!773445 call!65418)))

(declare-fun b!1363922 () Bool)

(assert (=> b!1363922 (= e!773445 call!65418)))

(declare-fun d!146111 () Bool)

(declare-fun res!907751 () Bool)

(declare-fun e!773443 () Bool)

(assert (=> d!146111 (=> res!907751 e!773443)))

(assert (=> d!146111 (= res!907751 (bvsge from!3120 (size!45313 a!3742)))))

(assert (=> d!146111 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773443)))

(declare-fun b!1363923 () Bool)

(assert (=> b!1363923 (= e!773443 e!773442)))

(declare-fun res!907750 () Bool)

(assert (=> b!1363923 (=> (not res!907750) (not e!773442))))

(assert (=> b!1363923 (= res!907750 (not e!773444))))

(declare-fun res!907752 () Bool)

(assert (=> b!1363923 (=> (not res!907752) (not e!773444))))

(assert (=> b!1363923 (= res!907752 (validKeyInArray!0 (select (arr!44762 a!3742) from!3120)))))

(declare-fun bm!65415 () Bool)

(assert (=> bm!65415 (= call!65418 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127527 (Cons!31979 (select (arr!44762 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!146111 (not res!907751)) b!1363923))

(assert (= (and b!1363923 res!907752) b!1363919))

(assert (= (and b!1363923 res!907750) b!1363920))

(assert (= (and b!1363920 c!127527) b!1363921))

(assert (= (and b!1363920 (not c!127527)) b!1363922))

(assert (= (or b!1363921 b!1363922) bm!65415))

(assert (=> b!1363919 m!1248579))

(assert (=> b!1363919 m!1248579))

(declare-fun m!1248675 () Bool)

(assert (=> b!1363919 m!1248675))

(assert (=> b!1363920 m!1248579))

(assert (=> b!1363920 m!1248579))

(assert (=> b!1363920 m!1248581))

(assert (=> b!1363923 m!1248579))

(assert (=> b!1363923 m!1248579))

(assert (=> b!1363923 m!1248581))

(assert (=> bm!65415 m!1248579))

(declare-fun m!1248677 () Bool)

(assert (=> bm!65415 m!1248677))

(assert (=> b!1363830 d!146111))

(declare-fun d!146113 () Bool)

(declare-fun res!907765 () Bool)

(declare-fun e!773460 () Bool)

(assert (=> d!146113 (=> res!907765 e!773460)))

(assert (=> d!146113 (= res!907765 ((_ is Nil!31980) acc!759))))

(assert (=> d!146113 (= (noDuplicate!2427 acc!759) e!773460)))

(declare-fun b!1363940 () Bool)

(declare-fun e!773461 () Bool)

(assert (=> b!1363940 (= e!773460 e!773461)))

(declare-fun res!907766 () Bool)

(assert (=> b!1363940 (=> (not res!907766) (not e!773461))))

(assert (=> b!1363940 (= res!907766 (not (contains!9548 (t!46681 acc!759) (h!33188 acc!759))))))

(declare-fun b!1363941 () Bool)

(assert (=> b!1363941 (= e!773461 (noDuplicate!2427 (t!46681 acc!759)))))

(assert (= (and d!146113 (not res!907765)) b!1363940))

(assert (= (and b!1363940 res!907766) b!1363941))

(declare-fun m!1248679 () Bool)

(assert (=> b!1363940 m!1248679))

(declare-fun m!1248681 () Bool)

(assert (=> b!1363941 m!1248681))

(assert (=> b!1363824 d!146113))

(declare-fun d!146115 () Bool)

(assert (=> d!146115 (= (array_inv!33707 a!3742) (bvsge (size!45313 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115120 d!146115))

(declare-fun e!773469 () Bool)

(declare-fun b!1363948 () Bool)

(assert (=> b!1363948 (= e!773469 (contains!9548 acc!759 (select (arr!44762 lt!600885) from!3120)))))

(declare-fun b!1363949 () Bool)

(declare-fun e!773467 () Bool)

(declare-fun e!773470 () Bool)

(assert (=> b!1363949 (= e!773467 e!773470)))

(declare-fun c!127531 () Bool)

(assert (=> b!1363949 (= c!127531 (validKeyInArray!0 (select (arr!44762 lt!600885) from!3120)))))

(declare-fun b!1363950 () Bool)

(declare-fun call!65422 () Bool)

(assert (=> b!1363950 (= e!773470 call!65422)))

(declare-fun b!1363951 () Bool)

(assert (=> b!1363951 (= e!773470 call!65422)))

(declare-fun d!146117 () Bool)

(declare-fun res!907772 () Bool)

(declare-fun e!773468 () Bool)

(assert (=> d!146117 (=> res!907772 e!773468)))

(assert (=> d!146117 (= res!907772 (bvsge from!3120 (size!45313 lt!600885)))))

(assert (=> d!146117 (= (arrayNoDuplicates!0 lt!600885 from!3120 acc!759) e!773468)))

(declare-fun b!1363952 () Bool)

(assert (=> b!1363952 (= e!773468 e!773467)))

(declare-fun res!907771 () Bool)

(assert (=> b!1363952 (=> (not res!907771) (not e!773467))))

(assert (=> b!1363952 (= res!907771 (not e!773469))))

(declare-fun res!907773 () Bool)

(assert (=> b!1363952 (=> (not res!907773) (not e!773469))))

(assert (=> b!1363952 (= res!907773 (validKeyInArray!0 (select (arr!44762 lt!600885) from!3120)))))

(declare-fun bm!65419 () Bool)

(assert (=> bm!65419 (= call!65422 (arrayNoDuplicates!0 lt!600885 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127531 (Cons!31979 (select (arr!44762 lt!600885) from!3120) acc!759) acc!759)))))

(assert (= (and d!146117 (not res!907772)) b!1363952))

(assert (= (and b!1363952 res!907773) b!1363948))

(assert (= (and b!1363952 res!907771) b!1363949))

(assert (= (and b!1363949 c!127531) b!1363950))

(assert (= (and b!1363949 (not c!127531)) b!1363951))

(assert (= (or b!1363950 b!1363951) bm!65419))

(declare-fun m!1248695 () Bool)

(assert (=> b!1363948 m!1248695))

(assert (=> b!1363948 m!1248695))

(declare-fun m!1248697 () Bool)

(assert (=> b!1363948 m!1248697))

(assert (=> b!1363949 m!1248695))

(assert (=> b!1363949 m!1248695))

(declare-fun m!1248699 () Bool)

(assert (=> b!1363949 m!1248699))

(assert (=> b!1363952 m!1248695))

(assert (=> b!1363952 m!1248695))

(assert (=> b!1363952 m!1248699))

(assert (=> bm!65419 m!1248695))

(declare-fun m!1248701 () Bool)

(assert (=> bm!65419 m!1248701))

(assert (=> b!1363823 d!146117))

(declare-fun e!773477 () Bool)

(declare-fun b!1363958 () Bool)

(assert (=> b!1363958 (= e!773477 (contains!9548 acc!759 (select (arr!44762 lt!600885) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363959 () Bool)

(declare-fun e!773475 () Bool)

(declare-fun e!773478 () Bool)

(assert (=> b!1363959 (= e!773475 e!773478)))

(declare-fun c!127533 () Bool)

(assert (=> b!1363959 (= c!127533 (validKeyInArray!0 (select (arr!44762 lt!600885) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363960 () Bool)

(declare-fun call!65424 () Bool)

(assert (=> b!1363960 (= e!773478 call!65424)))

(declare-fun b!1363961 () Bool)

(assert (=> b!1363961 (= e!773478 call!65424)))

(declare-fun d!146123 () Bool)

(declare-fun res!907778 () Bool)

(declare-fun e!773476 () Bool)

(assert (=> d!146123 (=> res!907778 e!773476)))

(assert (=> d!146123 (= res!907778 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45313 lt!600885)))))

(assert (=> d!146123 (= (arrayNoDuplicates!0 lt!600885 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!773476)))

(declare-fun b!1363962 () Bool)

(assert (=> b!1363962 (= e!773476 e!773475)))

(declare-fun res!907777 () Bool)

(assert (=> b!1363962 (=> (not res!907777) (not e!773475))))

(assert (=> b!1363962 (= res!907777 (not e!773477))))

(declare-fun res!907779 () Bool)

(assert (=> b!1363962 (=> (not res!907779) (not e!773477))))

(assert (=> b!1363962 (= res!907779 (validKeyInArray!0 (select (arr!44762 lt!600885) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65421 () Bool)

(assert (=> bm!65421 (= call!65424 (arrayNoDuplicates!0 lt!600885 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127533 (Cons!31979 (select (arr!44762 lt!600885) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!146123 (not res!907778)) b!1363962))

(assert (= (and b!1363962 res!907779) b!1363958))

(assert (= (and b!1363962 res!907777) b!1363959))

(assert (= (and b!1363959 c!127533) b!1363960))

(assert (= (and b!1363959 (not c!127533)) b!1363961))

(assert (= (or b!1363960 b!1363961) bm!65421))

(declare-fun m!1248707 () Bool)

(assert (=> b!1363958 m!1248707))

(assert (=> b!1363958 m!1248707))

(declare-fun m!1248709 () Bool)

(assert (=> b!1363958 m!1248709))

(assert (=> b!1363959 m!1248707))

(assert (=> b!1363959 m!1248707))

(declare-fun m!1248711 () Bool)

(assert (=> b!1363959 m!1248711))

(assert (=> b!1363962 m!1248707))

(assert (=> b!1363962 m!1248707))

(assert (=> b!1363962 m!1248711))

(assert (=> bm!65421 m!1248707))

(declare-fun m!1248713 () Bool)

(assert (=> bm!65421 m!1248713))

(assert (=> b!1363823 d!146123))

(declare-fun d!146127 () Bool)

(declare-fun e!773497 () Bool)

(assert (=> d!146127 e!773497))

(declare-fun res!907797 () Bool)

(assert (=> d!146127 (=> (not res!907797) (not e!773497))))

(assert (=> d!146127 (= res!907797 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45313 a!3742))))))

(declare-fun lt!600929 () Unit!44969)

(declare-fun choose!53 (array!92670 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31983) Unit!44969)

(assert (=> d!146127 (= lt!600929 (choose!53 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (=> d!146127 (bvslt (size!45313 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!146127 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) lt!600929)))

(declare-fun b!1363982 () Bool)

(assert (=> b!1363982 (= e!773497 (arrayNoDuplicates!0 (array!92671 (store (arr!44762 a!3742) i!1404 l!3587) (size!45313 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and d!146127 res!907797) b!1363982))

(declare-fun m!1248737 () Bool)

(assert (=> d!146127 m!1248737))

(assert (=> b!1363982 m!1248591))

(declare-fun m!1248739 () Bool)

(assert (=> b!1363982 m!1248739))

(assert (=> b!1363823 d!146127))

(declare-fun d!146141 () Bool)

(declare-fun lt!600932 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!714 (List!31983) (InoxSet (_ BitVec 64)))

(assert (=> d!146141 (= lt!600932 (select (content!714 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773514 () Bool)

(assert (=> d!146141 (= lt!600932 e!773514)))

(declare-fun res!907814 () Bool)

(assert (=> d!146141 (=> (not res!907814) (not e!773514))))

(assert (=> d!146141 (= res!907814 ((_ is Cons!31979) acc!759))))

(assert (=> d!146141 (= (contains!9548 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600932)))

(declare-fun b!1364000 () Bool)

(declare-fun e!773515 () Bool)

(assert (=> b!1364000 (= e!773514 e!773515)))

(declare-fun res!907813 () Bool)

(assert (=> b!1364000 (=> res!907813 e!773515)))

(assert (=> b!1364000 (= res!907813 (= (h!33188 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364001 () Bool)

(assert (=> b!1364001 (= e!773515 (contains!9548 (t!46681 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146141 res!907814) b!1364000))

(assert (= (and b!1364000 (not res!907813)) b!1364001))

(declare-fun m!1248749 () Bool)

(assert (=> d!146141 m!1248749))

(declare-fun m!1248751 () Bool)

(assert (=> d!146141 m!1248751))

(declare-fun m!1248753 () Bool)

(assert (=> b!1364001 m!1248753))

(assert (=> b!1363827 d!146141))

(declare-fun d!146145 () Bool)

(assert (=> d!146145 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363826 d!146145))

(declare-fun b!1364006 () Bool)

(declare-fun e!773522 () Bool)

(assert (=> b!1364006 (= e!773522 (contains!9548 Nil!31980 (select (arr!44762 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364007 () Bool)

(declare-fun e!773520 () Bool)

(declare-fun e!773523 () Bool)

(assert (=> b!1364007 (= e!773520 e!773523)))

(declare-fun c!127536 () Bool)

(assert (=> b!1364007 (= c!127536 (validKeyInArray!0 (select (arr!44762 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364008 () Bool)

(declare-fun call!65427 () Bool)

(assert (=> b!1364008 (= e!773523 call!65427)))

(declare-fun b!1364009 () Bool)

(assert (=> b!1364009 (= e!773523 call!65427)))

(declare-fun d!146147 () Bool)

(declare-fun res!907820 () Bool)

(declare-fun e!773521 () Bool)

(assert (=> d!146147 (=> res!907820 e!773521)))

(assert (=> d!146147 (= res!907820 (bvsge #b00000000000000000000000000000000 (size!45313 a!3742)))))

(assert (=> d!146147 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31980) e!773521)))

(declare-fun b!1364010 () Bool)

(assert (=> b!1364010 (= e!773521 e!773520)))

(declare-fun res!907819 () Bool)

(assert (=> b!1364010 (=> (not res!907819) (not e!773520))))

(assert (=> b!1364010 (= res!907819 (not e!773522))))

(declare-fun res!907821 () Bool)

(assert (=> b!1364010 (=> (not res!907821) (not e!773522))))

(assert (=> b!1364010 (= res!907821 (validKeyInArray!0 (select (arr!44762 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65424 () Bool)

(assert (=> bm!65424 (= call!65427 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127536 (Cons!31979 (select (arr!44762 a!3742) #b00000000000000000000000000000000) Nil!31980) Nil!31980)))))

(assert (= (and d!146147 (not res!907820)) b!1364010))

(assert (= (and b!1364010 res!907821) b!1364006))

(assert (= (and b!1364010 res!907819) b!1364007))

(assert (= (and b!1364007 c!127536) b!1364008))

(assert (= (and b!1364007 (not c!127536)) b!1364009))

(assert (= (or b!1364008 b!1364009) bm!65424))

(declare-fun m!1248759 () Bool)

(assert (=> b!1364006 m!1248759))

(assert (=> b!1364006 m!1248759))

(declare-fun m!1248761 () Bool)

(assert (=> b!1364006 m!1248761))

(assert (=> b!1364007 m!1248759))

(assert (=> b!1364007 m!1248759))

(declare-fun m!1248765 () Bool)

(assert (=> b!1364007 m!1248765))

(assert (=> b!1364010 m!1248759))

(assert (=> b!1364010 m!1248759))

(assert (=> b!1364010 m!1248765))

(assert (=> bm!65424 m!1248759))

(declare-fun m!1248771 () Bool)

(assert (=> bm!65424 m!1248771))

(assert (=> b!1363829 d!146147))

(declare-fun d!146151 () Bool)

(declare-fun lt!600935 () Bool)

(assert (=> d!146151 (= lt!600935 (select (content!714 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773530 () Bool)

(assert (=> d!146151 (= lt!600935 e!773530)))

(declare-fun res!907828 () Bool)

(assert (=> d!146151 (=> (not res!907828) (not e!773530))))

(assert (=> d!146151 (= res!907828 ((_ is Cons!31979) acc!759))))

(assert (=> d!146151 (= (contains!9548 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600935)))

(declare-fun b!1364018 () Bool)

(declare-fun e!773531 () Bool)

(assert (=> b!1364018 (= e!773530 e!773531)))

(declare-fun res!907827 () Bool)

(assert (=> b!1364018 (=> res!907827 e!773531)))

(assert (=> b!1364018 (= res!907827 (= (h!33188 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364019 () Bool)

(assert (=> b!1364019 (= e!773531 (contains!9548 (t!46681 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146151 res!907828) b!1364018))

(assert (= (and b!1364018 (not res!907827)) b!1364019))

(assert (=> d!146151 m!1248749))

(declare-fun m!1248775 () Bool)

(assert (=> d!146151 m!1248775))

(declare-fun m!1248777 () Bool)

(assert (=> b!1364019 m!1248777))

(assert (=> b!1363828 d!146151))

(check-sat (not b!1363959) (not b!1363949) (not b!1363882) (not d!146151) (not bm!65419) (not bm!65413) (not b!1363909) (not bm!65421) (not b!1363923) (not b!1363919) (not b!1363920) (not b!1363910) (not b!1364006) (not d!146107) (not b!1363883) (not b!1364019) (not b!1363940) (not b!1363958) (not b!1363913) (not d!146091) (not b!1363952) (not b!1363962) (not b!1363941) (not b!1363948) (not d!146127) (not bm!65424) (not b!1364007) (not bm!65415) (not b!1364010) (not b!1364001) (not d!146141) (not b!1363982))
(check-sat)
