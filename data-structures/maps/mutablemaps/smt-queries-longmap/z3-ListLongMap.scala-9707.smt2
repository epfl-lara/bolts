; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114784 () Bool)

(assert start!114784)

(declare-fun b!1360782 () Bool)

(declare-datatypes ((Unit!44798 0))(
  ( (Unit!44799) )
))
(declare-fun e!772026 () Unit!44798)

(declare-fun lt!599941 () Unit!44798)

(assert (=> b!1360782 (= e!772026 lt!599941)))

(declare-fun lt!599945 () Unit!44798)

(declare-datatypes ((List!31926 0))(
  ( (Nil!31923) (Cons!31922 (h!33131 (_ BitVec 64)) (t!46612 List!31926)) )
))
(declare-fun acc!759 () List!31926)

(declare-fun lemmaListSubSeqRefl!0 (List!31926) Unit!44798)

(assert (=> b!1360782 (= lt!599945 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!882 (List!31926 List!31926) Bool)

(assert (=> b!1360782 (subseq!882 acc!759 acc!759)))

(declare-datatypes ((array!92544 0))(
  ( (array!92545 (arr!44705 (Array (_ BitVec 32) (_ BitVec 64))) (size!45256 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92544)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92544 List!31926 List!31926 (_ BitVec 32)) Unit!44798)

(declare-fun $colon$colon!887 (List!31926 (_ BitVec 64)) List!31926)

(assert (=> b!1360782 (= lt!599941 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!887 acc!759 (select (arr!44705 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92544 (_ BitVec 32) List!31926) Bool)

(assert (=> b!1360782 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360783 () Bool)

(declare-fun Unit!44800 () Unit!44798)

(assert (=> b!1360783 (= e!772026 Unit!44800)))

(declare-fun b!1360784 () Bool)

(declare-fun res!905132 () Bool)

(declare-fun e!772024 () Bool)

(assert (=> b!1360784 (=> (not res!905132) (not e!772024))))

(declare-fun contains!9491 (List!31926 (_ BitVec 64)) Bool)

(assert (=> b!1360784 (= res!905132 (not (contains!9491 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360785 () Bool)

(declare-fun res!905128 () Bool)

(assert (=> b!1360785 (=> (not res!905128) (not e!772024))))

(assert (=> b!1360785 (= res!905128 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31923))))

(declare-fun b!1360786 () Bool)

(declare-fun res!905127 () Bool)

(assert (=> b!1360786 (=> (not res!905127) (not e!772024))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360786 (= res!905127 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360787 () Bool)

(declare-fun e!772025 () Bool)

(declare-fun e!772023 () Bool)

(assert (=> b!1360787 (= e!772025 e!772023)))

(declare-fun res!905122 () Bool)

(assert (=> b!1360787 (=> res!905122 e!772023)))

(declare-fun lt!599944 () List!31926)

(assert (=> b!1360787 (= res!905122 (contains!9491 lt!599944 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360788 () Bool)

(declare-fun res!905131 () Bool)

(assert (=> b!1360788 (=> (not res!905131) (not e!772025))))

(declare-fun noDuplicate!2370 (List!31926) Bool)

(assert (=> b!1360788 (= res!905131 (noDuplicate!2370 lt!599944))))

(declare-fun b!1360789 () Bool)

(declare-fun res!905129 () Bool)

(assert (=> b!1360789 (=> (not res!905129) (not e!772024))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360789 (= res!905129 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45256 a!3742))))))

(declare-fun b!1360790 () Bool)

(declare-fun res!905124 () Bool)

(assert (=> b!1360790 (=> (not res!905124) (not e!772024))))

(assert (=> b!1360790 (= res!905124 (not (contains!9491 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360791 () Bool)

(declare-fun e!772027 () Bool)

(assert (=> b!1360791 (= e!772024 e!772027)))

(declare-fun res!905125 () Bool)

(assert (=> b!1360791 (=> (not res!905125) (not e!772027))))

(declare-fun lt!599942 () Bool)

(assert (=> b!1360791 (= res!905125 (and (not (= from!3120 i!1404)) lt!599942))))

(declare-fun lt!599943 () Unit!44798)

(assert (=> b!1360791 (= lt!599943 e!772026)))

(declare-fun c!127273 () Bool)

(assert (=> b!1360791 (= c!127273 lt!599942)))

(assert (=> b!1360791 (= lt!599942 (validKeyInArray!0 (select (arr!44705 a!3742) from!3120)))))

(declare-fun b!1360792 () Bool)

(declare-fun res!905133 () Bool)

(assert (=> b!1360792 (=> (not res!905133) (not e!772024))))

(assert (=> b!1360792 (= res!905133 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!905130 () Bool)

(assert (=> start!114784 (=> (not res!905130) (not e!772024))))

(assert (=> start!114784 (= res!905130 (and (bvslt (size!45256 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45256 a!3742))))))

(assert (=> start!114784 e!772024))

(assert (=> start!114784 true))

(declare-fun array_inv!33650 (array!92544) Bool)

(assert (=> start!114784 (array_inv!33650 a!3742)))

(declare-fun b!1360793 () Bool)

(declare-fun res!905126 () Bool)

(assert (=> b!1360793 (=> (not res!905126) (not e!772024))))

(assert (=> b!1360793 (= res!905126 (noDuplicate!2370 acc!759))))

(declare-fun b!1360794 () Bool)

(assert (=> b!1360794 (= e!772027 e!772025)))

(declare-fun res!905123 () Bool)

(assert (=> b!1360794 (=> (not res!905123) (not e!772025))))

(assert (=> b!1360794 (= res!905123 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1360794 (= lt!599944 ($colon$colon!887 acc!759 (select (arr!44705 a!3742) from!3120)))))

(declare-fun b!1360795 () Bool)

(assert (=> b!1360795 (= e!772023 (contains!9491 lt!599944 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360796 () Bool)

(declare-fun res!905121 () Bool)

(assert (=> b!1360796 (=> (not res!905121) (not e!772024))))

(assert (=> b!1360796 (= res!905121 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45256 a!3742)))))

(assert (= (and start!114784 res!905130) b!1360793))

(assert (= (and b!1360793 res!905126) b!1360784))

(assert (= (and b!1360784 res!905132) b!1360790))

(assert (= (and b!1360790 res!905124) b!1360785))

(assert (= (and b!1360785 res!905128) b!1360792))

(assert (= (and b!1360792 res!905133) b!1360789))

(assert (= (and b!1360789 res!905129) b!1360786))

(assert (= (and b!1360786 res!905127) b!1360796))

(assert (= (and b!1360796 res!905121) b!1360791))

(assert (= (and b!1360791 c!127273) b!1360782))

(assert (= (and b!1360791 (not c!127273)) b!1360783))

(assert (= (and b!1360791 res!905125) b!1360794))

(assert (= (and b!1360794 res!905123) b!1360788))

(assert (= (and b!1360788 res!905131) b!1360787))

(assert (= (and b!1360787 (not res!905122)) b!1360795))

(declare-fun m!1246019 () Bool)

(assert (=> b!1360786 m!1246019))

(declare-fun m!1246021 () Bool)

(assert (=> b!1360794 m!1246021))

(assert (=> b!1360794 m!1246021))

(declare-fun m!1246023 () Bool)

(assert (=> b!1360794 m!1246023))

(declare-fun m!1246025 () Bool)

(assert (=> b!1360785 m!1246025))

(declare-fun m!1246027 () Bool)

(assert (=> b!1360795 m!1246027))

(declare-fun m!1246029 () Bool)

(assert (=> start!114784 m!1246029))

(declare-fun m!1246031 () Bool)

(assert (=> b!1360788 m!1246031))

(declare-fun m!1246033 () Bool)

(assert (=> b!1360792 m!1246033))

(declare-fun m!1246035 () Bool)

(assert (=> b!1360793 m!1246035))

(declare-fun m!1246037 () Bool)

(assert (=> b!1360787 m!1246037))

(declare-fun m!1246039 () Bool)

(assert (=> b!1360784 m!1246039))

(declare-fun m!1246041 () Bool)

(assert (=> b!1360790 m!1246041))

(declare-fun m!1246043 () Bool)

(assert (=> b!1360782 m!1246043))

(assert (=> b!1360782 m!1246021))

(assert (=> b!1360782 m!1246023))

(declare-fun m!1246045 () Bool)

(assert (=> b!1360782 m!1246045))

(declare-fun m!1246047 () Bool)

(assert (=> b!1360782 m!1246047))

(assert (=> b!1360782 m!1246021))

(assert (=> b!1360782 m!1246023))

(declare-fun m!1246049 () Bool)

(assert (=> b!1360782 m!1246049))

(assert (=> b!1360791 m!1246021))

(assert (=> b!1360791 m!1246021))

(declare-fun m!1246051 () Bool)

(assert (=> b!1360791 m!1246051))

(check-sat (not start!114784) (not b!1360794) (not b!1360782) (not b!1360790) (not b!1360795) (not b!1360788) (not b!1360784) (not b!1360792) (not b!1360787) (not b!1360786) (not b!1360791) (not b!1360785) (not b!1360793))
(check-sat)
(get-model)

(declare-fun d!145655 () Bool)

(assert (=> d!145655 (= (validKeyInArray!0 (select (arr!44705 a!3742) from!3120)) (and (not (= (select (arr!44705 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44705 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360791 d!145655))

(declare-fun d!145657 () Bool)

(declare-fun lt!599963 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!700 (List!31926) (InoxSet (_ BitVec 64)))

(assert (=> d!145657 (= lt!599963 (select (content!700 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772050 () Bool)

(assert (=> d!145657 (= lt!599963 e!772050)))

(declare-fun res!905178 () Bool)

(assert (=> d!145657 (=> (not res!905178) (not e!772050))))

(get-info :version)

(assert (=> d!145657 (= res!905178 ((_ is Cons!31922) acc!759))))

(assert (=> d!145657 (= (contains!9491 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599963)))

(declare-fun b!1360846 () Bool)

(declare-fun e!772051 () Bool)

(assert (=> b!1360846 (= e!772050 e!772051)))

(declare-fun res!905177 () Bool)

(assert (=> b!1360846 (=> res!905177 e!772051)))

(assert (=> b!1360846 (= res!905177 (= (h!33131 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360847 () Bool)

(assert (=> b!1360847 (= e!772051 (contains!9491 (t!46612 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145657 res!905178) b!1360846))

(assert (= (and b!1360846 (not res!905177)) b!1360847))

(declare-fun m!1246087 () Bool)

(assert (=> d!145657 m!1246087))

(declare-fun m!1246089 () Bool)

(assert (=> d!145657 m!1246089))

(declare-fun m!1246091 () Bool)

(assert (=> b!1360847 m!1246091))

(assert (=> b!1360790 d!145657))

(declare-fun d!145659 () Bool)

(declare-fun res!905183 () Bool)

(declare-fun e!772056 () Bool)

(assert (=> d!145659 (=> res!905183 e!772056)))

(assert (=> d!145659 (= res!905183 ((_ is Nil!31923) acc!759))))

(assert (=> d!145659 (= (noDuplicate!2370 acc!759) e!772056)))

(declare-fun b!1360852 () Bool)

(declare-fun e!772057 () Bool)

(assert (=> b!1360852 (= e!772056 e!772057)))

(declare-fun res!905184 () Bool)

(assert (=> b!1360852 (=> (not res!905184) (not e!772057))))

(assert (=> b!1360852 (= res!905184 (not (contains!9491 (t!46612 acc!759) (h!33131 acc!759))))))

(declare-fun b!1360853 () Bool)

(assert (=> b!1360853 (= e!772057 (noDuplicate!2370 (t!46612 acc!759)))))

(assert (= (and d!145659 (not res!905183)) b!1360852))

(assert (= (and b!1360852 res!905184) b!1360853))

(declare-fun m!1246093 () Bool)

(assert (=> b!1360852 m!1246093))

(declare-fun m!1246095 () Bool)

(assert (=> b!1360853 m!1246095))

(assert (=> b!1360793 d!145659))

(declare-fun d!145661 () Bool)

(assert (=> d!145661 (= (array_inv!33650 a!3742) (bvsge (size!45256 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114784 d!145661))

(declare-fun d!145663 () Bool)

(assert (=> d!145663 (= ($colon$colon!887 acc!759 (select (arr!44705 a!3742) from!3120)) (Cons!31922 (select (arr!44705 a!3742) from!3120) acc!759))))

(assert (=> b!1360794 d!145663))

(declare-fun b!1360864 () Bool)

(declare-fun e!772069 () Bool)

(declare-fun call!65341 () Bool)

(assert (=> b!1360864 (= e!772069 call!65341)))

(declare-fun b!1360865 () Bool)

(declare-fun e!772068 () Bool)

(declare-fun e!772066 () Bool)

(assert (=> b!1360865 (= e!772068 e!772066)))

(declare-fun res!905193 () Bool)

(assert (=> b!1360865 (=> (not res!905193) (not e!772066))))

(declare-fun e!772067 () Bool)

(assert (=> b!1360865 (= res!905193 (not e!772067))))

(declare-fun res!905192 () Bool)

(assert (=> b!1360865 (=> (not res!905192) (not e!772067))))

(assert (=> b!1360865 (= res!905192 (validKeyInArray!0 (select (arr!44705 a!3742) from!3120)))))

(declare-fun bm!65338 () Bool)

(declare-fun c!127279 () Bool)

(assert (=> bm!65338 (= call!65341 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127279 (Cons!31922 (select (arr!44705 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1360866 () Bool)

(assert (=> b!1360866 (= e!772069 call!65341)))

(declare-fun b!1360867 () Bool)

(assert (=> b!1360867 (= e!772067 (contains!9491 acc!759 (select (arr!44705 a!3742) from!3120)))))

(declare-fun b!1360868 () Bool)

(assert (=> b!1360868 (= e!772066 e!772069)))

(assert (=> b!1360868 (= c!127279 (validKeyInArray!0 (select (arr!44705 a!3742) from!3120)))))

(declare-fun d!145665 () Bool)

(declare-fun res!905191 () Bool)

(assert (=> d!145665 (=> res!905191 e!772068)))

(assert (=> d!145665 (= res!905191 (bvsge from!3120 (size!45256 a!3742)))))

(assert (=> d!145665 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772068)))

(assert (= (and d!145665 (not res!905191)) b!1360865))

(assert (= (and b!1360865 res!905192) b!1360867))

(assert (= (and b!1360865 res!905193) b!1360868))

(assert (= (and b!1360868 c!127279) b!1360864))

(assert (= (and b!1360868 (not c!127279)) b!1360866))

(assert (= (or b!1360864 b!1360866) bm!65338))

(assert (=> b!1360865 m!1246021))

(assert (=> b!1360865 m!1246021))

(assert (=> b!1360865 m!1246051))

(assert (=> bm!65338 m!1246021))

(declare-fun m!1246097 () Bool)

(assert (=> bm!65338 m!1246097))

(assert (=> b!1360867 m!1246021))

(assert (=> b!1360867 m!1246021))

(declare-fun m!1246099 () Bool)

(assert (=> b!1360867 m!1246099))

(assert (=> b!1360868 m!1246021))

(assert (=> b!1360868 m!1246021))

(assert (=> b!1360868 m!1246051))

(assert (=> b!1360792 d!145665))

(declare-fun d!145667 () Bool)

(assert (=> d!145667 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599966 () Unit!44798)

(declare-fun choose!80 (array!92544 List!31926 List!31926 (_ BitVec 32)) Unit!44798)

(assert (=> d!145667 (= lt!599966 (choose!80 a!3742 ($colon$colon!887 acc!759 (select (arr!44705 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145667 (bvslt (size!45256 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145667 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!887 acc!759 (select (arr!44705 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599966)))

(declare-fun bs!39020 () Bool)

(assert (= bs!39020 d!145667))

(assert (=> bs!39020 m!1246047))

(assert (=> bs!39020 m!1246023))

(declare-fun m!1246101 () Bool)

(assert (=> bs!39020 m!1246101))

(assert (=> b!1360782 d!145667))

(declare-fun b!1360894 () Bool)

(declare-fun e!772093 () Bool)

(assert (=> b!1360894 (= e!772093 (subseq!882 acc!759 (t!46612 acc!759)))))

(declare-fun b!1360891 () Bool)

(declare-fun e!772094 () Bool)

(declare-fun e!772092 () Bool)

(assert (=> b!1360891 (= e!772094 e!772092)))

(declare-fun res!905216 () Bool)

(assert (=> b!1360891 (=> (not res!905216) (not e!772092))))

(assert (=> b!1360891 (= res!905216 ((_ is Cons!31922) acc!759))))

(declare-fun b!1360892 () Bool)

(assert (=> b!1360892 (= e!772092 e!772093)))

(declare-fun res!905219 () Bool)

(assert (=> b!1360892 (=> res!905219 e!772093)))

(declare-fun e!772095 () Bool)

(assert (=> b!1360892 (= res!905219 e!772095)))

(declare-fun res!905218 () Bool)

(assert (=> b!1360892 (=> (not res!905218) (not e!772095))))

(assert (=> b!1360892 (= res!905218 (= (h!33131 acc!759) (h!33131 acc!759)))))

(declare-fun d!145673 () Bool)

(declare-fun res!905217 () Bool)

(assert (=> d!145673 (=> res!905217 e!772094)))

(assert (=> d!145673 (= res!905217 ((_ is Nil!31923) acc!759))))

(assert (=> d!145673 (= (subseq!882 acc!759 acc!759) e!772094)))

(declare-fun b!1360893 () Bool)

(assert (=> b!1360893 (= e!772095 (subseq!882 (t!46612 acc!759) (t!46612 acc!759)))))

(assert (= (and d!145673 (not res!905217)) b!1360891))

(assert (= (and b!1360891 res!905216) b!1360892))

(assert (= (and b!1360892 res!905218) b!1360893))

(assert (= (and b!1360892 (not res!905219)) b!1360894))

(declare-fun m!1246119 () Bool)

(assert (=> b!1360894 m!1246119))

(declare-fun m!1246121 () Bool)

(assert (=> b!1360893 m!1246121))

(assert (=> b!1360782 d!145673))

(declare-fun b!1360895 () Bool)

(declare-fun e!772099 () Bool)

(declare-fun call!65342 () Bool)

(assert (=> b!1360895 (= e!772099 call!65342)))

(declare-fun b!1360896 () Bool)

(declare-fun e!772098 () Bool)

(declare-fun e!772096 () Bool)

(assert (=> b!1360896 (= e!772098 e!772096)))

(declare-fun res!905222 () Bool)

(assert (=> b!1360896 (=> (not res!905222) (not e!772096))))

(declare-fun e!772097 () Bool)

(assert (=> b!1360896 (= res!905222 (not e!772097))))

(declare-fun res!905221 () Bool)

(assert (=> b!1360896 (=> (not res!905221) (not e!772097))))

(assert (=> b!1360896 (= res!905221 (validKeyInArray!0 (select (arr!44705 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun c!127280 () Bool)

(declare-fun bm!65339 () Bool)

(assert (=> bm!65339 (= call!65342 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127280 (Cons!31922 (select (arr!44705 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1360897 () Bool)

(assert (=> b!1360897 (= e!772099 call!65342)))

(declare-fun b!1360898 () Bool)

(assert (=> b!1360898 (= e!772097 (contains!9491 acc!759 (select (arr!44705 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360899 () Bool)

(assert (=> b!1360899 (= e!772096 e!772099)))

(assert (=> b!1360899 (= c!127280 (validKeyInArray!0 (select (arr!44705 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145681 () Bool)

(declare-fun res!905220 () Bool)

(assert (=> d!145681 (=> res!905220 e!772098)))

(assert (=> d!145681 (= res!905220 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45256 a!3742)))))

(assert (=> d!145681 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772098)))

(assert (= (and d!145681 (not res!905220)) b!1360896))

(assert (= (and b!1360896 res!905221) b!1360898))

(assert (= (and b!1360896 res!905222) b!1360899))

(assert (= (and b!1360899 c!127280) b!1360895))

(assert (= (and b!1360899 (not c!127280)) b!1360897))

(assert (= (or b!1360895 b!1360897) bm!65339))

(declare-fun m!1246123 () Bool)

(assert (=> b!1360896 m!1246123))

(assert (=> b!1360896 m!1246123))

(declare-fun m!1246125 () Bool)

(assert (=> b!1360896 m!1246125))

(assert (=> bm!65339 m!1246123))

(declare-fun m!1246127 () Bool)

(assert (=> bm!65339 m!1246127))

(assert (=> b!1360898 m!1246123))

(assert (=> b!1360898 m!1246123))

(declare-fun m!1246129 () Bool)

(assert (=> b!1360898 m!1246129))

(assert (=> b!1360899 m!1246123))

(assert (=> b!1360899 m!1246123))

(assert (=> b!1360899 m!1246125))

(assert (=> b!1360782 d!145681))

(assert (=> b!1360782 d!145663))

(declare-fun d!145685 () Bool)

(assert (=> d!145685 (subseq!882 acc!759 acc!759)))

(declare-fun lt!599977 () Unit!44798)

(declare-fun choose!36 (List!31926) Unit!44798)

(assert (=> d!145685 (= lt!599977 (choose!36 acc!759))))

(assert (=> d!145685 (= (lemmaListSubSeqRefl!0 acc!759) lt!599977)))

(declare-fun bs!39021 () Bool)

(assert (= bs!39021 d!145685))

(assert (=> bs!39021 m!1246049))

(declare-fun m!1246135 () Bool)

(assert (=> bs!39021 m!1246135))

(assert (=> b!1360782 d!145685))

(declare-fun b!1360902 () Bool)

(declare-fun e!772105 () Bool)

(declare-fun call!65343 () Bool)

(assert (=> b!1360902 (= e!772105 call!65343)))

(declare-fun b!1360903 () Bool)

(declare-fun e!772104 () Bool)

(declare-fun e!772102 () Bool)

(assert (=> b!1360903 (= e!772104 e!772102)))

(declare-fun res!905227 () Bool)

(assert (=> b!1360903 (=> (not res!905227) (not e!772102))))

(declare-fun e!772103 () Bool)

(assert (=> b!1360903 (= res!905227 (not e!772103))))

(declare-fun res!905226 () Bool)

(assert (=> b!1360903 (=> (not res!905226) (not e!772103))))

(assert (=> b!1360903 (= res!905226 (validKeyInArray!0 (select (arr!44705 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65340 () Bool)

(declare-fun c!127281 () Bool)

(assert (=> bm!65340 (= call!65343 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127281 (Cons!31922 (select (arr!44705 a!3742) #b00000000000000000000000000000000) Nil!31923) Nil!31923)))))

(declare-fun b!1360904 () Bool)

(assert (=> b!1360904 (= e!772105 call!65343)))

(declare-fun b!1360905 () Bool)

(assert (=> b!1360905 (= e!772103 (contains!9491 Nil!31923 (select (arr!44705 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1360906 () Bool)

(assert (=> b!1360906 (= e!772102 e!772105)))

(assert (=> b!1360906 (= c!127281 (validKeyInArray!0 (select (arr!44705 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145691 () Bool)

(declare-fun res!905225 () Bool)

(assert (=> d!145691 (=> res!905225 e!772104)))

(assert (=> d!145691 (= res!905225 (bvsge #b00000000000000000000000000000000 (size!45256 a!3742)))))

(assert (=> d!145691 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31923) e!772104)))

(assert (= (and d!145691 (not res!905225)) b!1360903))

(assert (= (and b!1360903 res!905226) b!1360905))

(assert (= (and b!1360903 res!905227) b!1360906))

(assert (= (and b!1360906 c!127281) b!1360902))

(assert (= (and b!1360906 (not c!127281)) b!1360904))

(assert (= (or b!1360902 b!1360904) bm!65340))

(declare-fun m!1246137 () Bool)

(assert (=> b!1360903 m!1246137))

(assert (=> b!1360903 m!1246137))

(declare-fun m!1246139 () Bool)

(assert (=> b!1360903 m!1246139))

(assert (=> bm!65340 m!1246137))

(declare-fun m!1246141 () Bool)

(assert (=> bm!65340 m!1246141))

(assert (=> b!1360905 m!1246137))

(assert (=> b!1360905 m!1246137))

(declare-fun m!1246143 () Bool)

(assert (=> b!1360905 m!1246143))

(assert (=> b!1360906 m!1246137))

(assert (=> b!1360906 m!1246137))

(assert (=> b!1360906 m!1246139))

(assert (=> b!1360785 d!145691))

(declare-fun d!145693 () Bool)

(assert (=> d!145693 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360786 d!145693))

(declare-fun d!145695 () Bool)

(declare-fun lt!599978 () Bool)

(assert (=> d!145695 (= lt!599978 (select (content!700 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772106 () Bool)

(assert (=> d!145695 (= lt!599978 e!772106)))

(declare-fun res!905229 () Bool)

(assert (=> d!145695 (=> (not res!905229) (not e!772106))))

(assert (=> d!145695 (= res!905229 ((_ is Cons!31922) acc!759))))

(assert (=> d!145695 (= (contains!9491 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599978)))

(declare-fun b!1360907 () Bool)

(declare-fun e!772107 () Bool)

(assert (=> b!1360907 (= e!772106 e!772107)))

(declare-fun res!905228 () Bool)

(assert (=> b!1360907 (=> res!905228 e!772107)))

(assert (=> b!1360907 (= res!905228 (= (h!33131 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360908 () Bool)

(assert (=> b!1360908 (= e!772107 (contains!9491 (t!46612 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145695 res!905229) b!1360907))

(assert (= (and b!1360907 (not res!905228)) b!1360908))

(assert (=> d!145695 m!1246087))

(declare-fun m!1246145 () Bool)

(assert (=> d!145695 m!1246145))

(declare-fun m!1246147 () Bool)

(assert (=> b!1360908 m!1246147))

(assert (=> b!1360784 d!145695))

(declare-fun d!145697 () Bool)

(declare-fun lt!599979 () Bool)

(assert (=> d!145697 (= lt!599979 (select (content!700 lt!599944) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772112 () Bool)

(assert (=> d!145697 (= lt!599979 e!772112)))

(declare-fun res!905235 () Bool)

(assert (=> d!145697 (=> (not res!905235) (not e!772112))))

(assert (=> d!145697 (= res!905235 ((_ is Cons!31922) lt!599944))))

(assert (=> d!145697 (= (contains!9491 lt!599944 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599979)))

(declare-fun b!1360911 () Bool)

(declare-fun e!772113 () Bool)

(assert (=> b!1360911 (= e!772112 e!772113)))

(declare-fun res!905234 () Bool)

(assert (=> b!1360911 (=> res!905234 e!772113)))

(assert (=> b!1360911 (= res!905234 (= (h!33131 lt!599944) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360912 () Bool)

(assert (=> b!1360912 (= e!772113 (contains!9491 (t!46612 lt!599944) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145697 res!905235) b!1360911))

(assert (= (and b!1360911 (not res!905234)) b!1360912))

(declare-fun m!1246149 () Bool)

(assert (=> d!145697 m!1246149))

(declare-fun m!1246151 () Bool)

(assert (=> d!145697 m!1246151))

(declare-fun m!1246153 () Bool)

(assert (=> b!1360912 m!1246153))

(assert (=> b!1360795 d!145697))

(declare-fun d!145699 () Bool)

(declare-fun res!905236 () Bool)

(declare-fun e!772114 () Bool)

(assert (=> d!145699 (=> res!905236 e!772114)))

(assert (=> d!145699 (= res!905236 ((_ is Nil!31923) lt!599944))))

(assert (=> d!145699 (= (noDuplicate!2370 lt!599944) e!772114)))

(declare-fun b!1360915 () Bool)

(declare-fun e!772115 () Bool)

(assert (=> b!1360915 (= e!772114 e!772115)))

(declare-fun res!905237 () Bool)

(assert (=> b!1360915 (=> (not res!905237) (not e!772115))))

(assert (=> b!1360915 (= res!905237 (not (contains!9491 (t!46612 lt!599944) (h!33131 lt!599944))))))

(declare-fun b!1360916 () Bool)

(assert (=> b!1360916 (= e!772115 (noDuplicate!2370 (t!46612 lt!599944)))))

(assert (= (and d!145699 (not res!905236)) b!1360915))

(assert (= (and b!1360915 res!905237) b!1360916))

(declare-fun m!1246155 () Bool)

(assert (=> b!1360915 m!1246155))

(declare-fun m!1246157 () Bool)

(assert (=> b!1360916 m!1246157))

(assert (=> b!1360788 d!145699))

(declare-fun d!145701 () Bool)

(declare-fun lt!599980 () Bool)

(assert (=> d!145701 (= lt!599980 (select (content!700 lt!599944) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772118 () Bool)

(assert (=> d!145701 (= lt!599980 e!772118)))

(declare-fun res!905241 () Bool)

(assert (=> d!145701 (=> (not res!905241) (not e!772118))))

(assert (=> d!145701 (= res!905241 ((_ is Cons!31922) lt!599944))))

(assert (=> d!145701 (= (contains!9491 lt!599944 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599980)))

(declare-fun b!1360919 () Bool)

(declare-fun e!772119 () Bool)

(assert (=> b!1360919 (= e!772118 e!772119)))

(declare-fun res!905240 () Bool)

(assert (=> b!1360919 (=> res!905240 e!772119)))

(assert (=> b!1360919 (= res!905240 (= (h!33131 lt!599944) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360920 () Bool)

(assert (=> b!1360920 (= e!772119 (contains!9491 (t!46612 lt!599944) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145701 res!905241) b!1360919))

(assert (= (and b!1360919 (not res!905240)) b!1360920))

(assert (=> d!145701 m!1246149))

(declare-fun m!1246159 () Bool)

(assert (=> d!145701 m!1246159))

(declare-fun m!1246161 () Bool)

(assert (=> b!1360920 m!1246161))

(assert (=> b!1360787 d!145701))

(check-sat (not d!145657) (not d!145695) (not b!1360912) (not b!1360852) (not b!1360893) (not b!1360853) (not d!145667) (not b!1360896) (not b!1360898) (not b!1360865) (not b!1360903) (not b!1360847) (not b!1360905) (not b!1360915) (not d!145701) (not b!1360894) (not b!1360899) (not b!1360920) (not b!1360916) (not d!145697) (not b!1360868) (not bm!65340) (not d!145685) (not bm!65338) (not b!1360906) (not b!1360867) (not b!1360908) (not bm!65339))
(check-sat)
