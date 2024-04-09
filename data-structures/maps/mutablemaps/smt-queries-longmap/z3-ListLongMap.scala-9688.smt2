; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114448 () Bool)

(assert start!114448)

(declare-fun b!1358079 () Bool)

(declare-fun res!902887 () Bool)

(declare-fun e!770801 () Bool)

(assert (=> b!1358079 (=> (not res!902887) (not e!770801))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92418 0))(
  ( (array!92419 (arr!44648 (Array (_ BitVec 32) (_ BitVec 64))) (size!45199 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92418)

(assert (=> b!1358079 (= res!902887 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45199 a!3742)))))

(declare-fun b!1358080 () Bool)

(declare-fun e!770803 () Bool)

(assert (=> b!1358080 (= e!770801 (not e!770803))))

(declare-fun res!902888 () Bool)

(assert (=> b!1358080 (=> res!902888 e!770803)))

(assert (=> b!1358080 (= res!902888 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31869 0))(
  ( (Nil!31866) (Cons!31865 (h!33074 (_ BitVec 64)) (t!46543 List!31869)) )
))
(declare-fun acc!759 () List!31869)

(declare-fun lt!599222 () List!31869)

(declare-fun $colon$colon!830 (List!31869 (_ BitVec 64)) List!31869)

(assert (=> b!1358080 (= lt!599222 ($colon$colon!830 acc!759 (select (arr!44648 a!3742) from!3120)))))

(declare-fun subseq!825 (List!31869 List!31869) Bool)

(assert (=> b!1358080 (subseq!825 acc!759 acc!759)))

(declare-datatypes ((Unit!44629 0))(
  ( (Unit!44630) )
))
(declare-fun lt!599220 () Unit!44629)

(declare-fun lemmaListSubSeqRefl!0 (List!31869) Unit!44629)

(assert (=> b!1358080 (= lt!599220 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1358081 () Bool)

(declare-fun res!902885 () Bool)

(assert (=> b!1358081 (=> (not res!902885) (not e!770801))))

(declare-fun arrayNoDuplicates!0 (array!92418 (_ BitVec 32) List!31869) Bool)

(assert (=> b!1358081 (= res!902885 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358082 () Bool)

(declare-fun res!902884 () Bool)

(assert (=> b!1358082 (=> (not res!902884) (not e!770801))))

(declare-fun noDuplicate!2313 (List!31869) Bool)

(assert (=> b!1358082 (= res!902884 (noDuplicate!2313 acc!759))))

(declare-fun b!1358083 () Bool)

(declare-fun res!902890 () Bool)

(assert (=> b!1358083 (=> res!902890 e!770803)))

(assert (=> b!1358083 (= res!902890 (not (noDuplicate!2313 lt!599222)))))

(declare-fun b!1358084 () Bool)

(declare-fun res!902893 () Bool)

(assert (=> b!1358084 (=> res!902893 e!770803)))

(declare-fun contains!9434 (List!31869 (_ BitVec 64)) Bool)

(assert (=> b!1358084 (= res!902893 (contains!9434 lt!599222 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358085 () Bool)

(declare-fun res!902894 () Bool)

(assert (=> b!1358085 (=> res!902894 e!770803)))

(assert (=> b!1358085 (= res!902894 (not (subseq!825 acc!759 lt!599222)))))

(declare-fun b!1358086 () Bool)

(declare-fun res!902895 () Bool)

(assert (=> b!1358086 (=> (not res!902895) (not e!770801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358086 (= res!902895 (validKeyInArray!0 (select (arr!44648 a!3742) from!3120)))))

(declare-fun b!1358087 () Bool)

(assert (=> b!1358087 (= e!770803 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!599222))))

(declare-fun lt!599221 () Unit!44629)

(declare-fun noDuplicateSubseq!135 (List!31869 List!31869) Unit!44629)

(assert (=> b!1358087 (= lt!599221 (noDuplicateSubseq!135 acc!759 lt!599222))))

(declare-fun b!1358088 () Bool)

(declare-fun res!902891 () Bool)

(assert (=> b!1358088 (=> (not res!902891) (not e!770801))))

(assert (=> b!1358088 (= res!902891 (not (contains!9434 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358089 () Bool)

(declare-fun res!902897 () Bool)

(assert (=> b!1358089 (=> (not res!902897) (not e!770801))))

(assert (=> b!1358089 (= res!902897 (not (contains!9434 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!902896 () Bool)

(assert (=> start!114448 (=> (not res!902896) (not e!770801))))

(assert (=> start!114448 (= res!902896 (and (bvslt (size!45199 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45199 a!3742))))))

(assert (=> start!114448 e!770801))

(assert (=> start!114448 true))

(declare-fun array_inv!33593 (array!92418) Bool)

(assert (=> start!114448 (array_inv!33593 a!3742)))

(declare-fun b!1358090 () Bool)

(declare-fun res!902892 () Bool)

(assert (=> b!1358090 (=> res!902892 e!770803)))

(assert (=> b!1358090 (= res!902892 (contains!9434 lt!599222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358091 () Bool)

(declare-fun res!902886 () Bool)

(assert (=> b!1358091 (=> (not res!902886) (not e!770801))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358091 (= res!902886 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358092 () Bool)

(declare-fun res!902889 () Bool)

(assert (=> b!1358092 (=> (not res!902889) (not e!770801))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358092 (= res!902889 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45199 a!3742))))))

(declare-fun b!1358093 () Bool)

(declare-fun res!902898 () Bool)

(assert (=> b!1358093 (=> (not res!902898) (not e!770801))))

(assert (=> b!1358093 (= res!902898 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31866))))

(assert (= (and start!114448 res!902896) b!1358082))

(assert (= (and b!1358082 res!902884) b!1358089))

(assert (= (and b!1358089 res!902897) b!1358088))

(assert (= (and b!1358088 res!902891) b!1358093))

(assert (= (and b!1358093 res!902898) b!1358081))

(assert (= (and b!1358081 res!902885) b!1358092))

(assert (= (and b!1358092 res!902889) b!1358091))

(assert (= (and b!1358091 res!902886) b!1358079))

(assert (= (and b!1358079 res!902887) b!1358086))

(assert (= (and b!1358086 res!902895) b!1358080))

(assert (= (and b!1358080 (not res!902888)) b!1358083))

(assert (= (and b!1358083 (not res!902890)) b!1358090))

(assert (= (and b!1358090 (not res!902892)) b!1358084))

(assert (= (and b!1358084 (not res!902893)) b!1358085))

(assert (= (and b!1358085 (not res!902894)) b!1358087))

(declare-fun m!1243723 () Bool)

(assert (=> b!1358088 m!1243723))

(declare-fun m!1243725 () Bool)

(assert (=> b!1358081 m!1243725))

(declare-fun m!1243727 () Bool)

(assert (=> b!1358082 m!1243727))

(declare-fun m!1243729 () Bool)

(assert (=> start!114448 m!1243729))

(declare-fun m!1243731 () Bool)

(assert (=> b!1358087 m!1243731))

(declare-fun m!1243733 () Bool)

(assert (=> b!1358087 m!1243733))

(declare-fun m!1243735 () Bool)

(assert (=> b!1358086 m!1243735))

(assert (=> b!1358086 m!1243735))

(declare-fun m!1243737 () Bool)

(assert (=> b!1358086 m!1243737))

(declare-fun m!1243739 () Bool)

(assert (=> b!1358084 m!1243739))

(declare-fun m!1243741 () Bool)

(assert (=> b!1358093 m!1243741))

(declare-fun m!1243743 () Bool)

(assert (=> b!1358089 m!1243743))

(assert (=> b!1358080 m!1243735))

(assert (=> b!1358080 m!1243735))

(declare-fun m!1243745 () Bool)

(assert (=> b!1358080 m!1243745))

(declare-fun m!1243747 () Bool)

(assert (=> b!1358080 m!1243747))

(declare-fun m!1243749 () Bool)

(assert (=> b!1358080 m!1243749))

(declare-fun m!1243751 () Bool)

(assert (=> b!1358091 m!1243751))

(declare-fun m!1243753 () Bool)

(assert (=> b!1358090 m!1243753))

(declare-fun m!1243755 () Bool)

(assert (=> b!1358083 m!1243755))

(declare-fun m!1243757 () Bool)

(assert (=> b!1358085 m!1243757))

(check-sat (not b!1358087) (not b!1358085) (not b!1358086) (not b!1358088) (not b!1358081) (not b!1358090) (not b!1358091) (not b!1358083) (not b!1358084) (not start!114448) (not b!1358093) (not b!1358082) (not b!1358080) (not b!1358089))
(check-sat)
(get-model)

(declare-fun d!145257 () Bool)

(declare-fun res!902948 () Bool)

(declare-fun e!770817 () Bool)

(assert (=> d!145257 (=> res!902948 e!770817)))

(get-info :version)

(assert (=> d!145257 (= res!902948 ((_ is Nil!31866) acc!759))))

(assert (=> d!145257 (= (noDuplicate!2313 acc!759) e!770817)))

(declare-fun b!1358143 () Bool)

(declare-fun e!770818 () Bool)

(assert (=> b!1358143 (= e!770817 e!770818)))

(declare-fun res!902949 () Bool)

(assert (=> b!1358143 (=> (not res!902949) (not e!770818))))

(assert (=> b!1358143 (= res!902949 (not (contains!9434 (t!46543 acc!759) (h!33074 acc!759))))))

(declare-fun b!1358144 () Bool)

(assert (=> b!1358144 (= e!770818 (noDuplicate!2313 (t!46543 acc!759)))))

(assert (= (and d!145257 (not res!902948)) b!1358143))

(assert (= (and b!1358143 res!902949) b!1358144))

(declare-fun m!1243795 () Bool)

(assert (=> b!1358143 m!1243795))

(declare-fun m!1243797 () Bool)

(assert (=> b!1358144 m!1243797))

(assert (=> b!1358082 d!145257))

(declare-fun b!1358155 () Bool)

(declare-fun e!770828 () Bool)

(declare-fun e!770830 () Bool)

(assert (=> b!1358155 (= e!770828 e!770830)))

(declare-fun c!127042 () Bool)

(assert (=> b!1358155 (= c!127042 (validKeyInArray!0 (select (arr!44648 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65272 () Bool)

(declare-fun call!65275 () Bool)

(assert (=> bm!65272 (= call!65275 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127042 (Cons!31865 (select (arr!44648 a!3742) #b00000000000000000000000000000000) Nil!31866) Nil!31866)))))

(declare-fun d!145259 () Bool)

(declare-fun res!902958 () Bool)

(declare-fun e!770829 () Bool)

(assert (=> d!145259 (=> res!902958 e!770829)))

(assert (=> d!145259 (= res!902958 (bvsge #b00000000000000000000000000000000 (size!45199 a!3742)))))

(assert (=> d!145259 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31866) e!770829)))

(declare-fun b!1358156 () Bool)

(declare-fun e!770827 () Bool)

(assert (=> b!1358156 (= e!770827 (contains!9434 Nil!31866 (select (arr!44648 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1358157 () Bool)

(assert (=> b!1358157 (= e!770830 call!65275)))

(declare-fun b!1358158 () Bool)

(assert (=> b!1358158 (= e!770829 e!770828)))

(declare-fun res!902956 () Bool)

(assert (=> b!1358158 (=> (not res!902956) (not e!770828))))

(assert (=> b!1358158 (= res!902956 (not e!770827))))

(declare-fun res!902957 () Bool)

(assert (=> b!1358158 (=> (not res!902957) (not e!770827))))

(assert (=> b!1358158 (= res!902957 (validKeyInArray!0 (select (arr!44648 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1358159 () Bool)

(assert (=> b!1358159 (= e!770830 call!65275)))

(assert (= (and d!145259 (not res!902958)) b!1358158))

(assert (= (and b!1358158 res!902957) b!1358156))

(assert (= (and b!1358158 res!902956) b!1358155))

(assert (= (and b!1358155 c!127042) b!1358157))

(assert (= (and b!1358155 (not c!127042)) b!1358159))

(assert (= (or b!1358157 b!1358159) bm!65272))

(declare-fun m!1243799 () Bool)

(assert (=> b!1358155 m!1243799))

(assert (=> b!1358155 m!1243799))

(declare-fun m!1243801 () Bool)

(assert (=> b!1358155 m!1243801))

(assert (=> bm!65272 m!1243799))

(declare-fun m!1243803 () Bool)

(assert (=> bm!65272 m!1243803))

(assert (=> b!1358156 m!1243799))

(assert (=> b!1358156 m!1243799))

(declare-fun m!1243805 () Bool)

(assert (=> b!1358156 m!1243805))

(assert (=> b!1358158 m!1243799))

(assert (=> b!1358158 m!1243799))

(assert (=> b!1358158 m!1243801))

(assert (=> b!1358093 d!145259))

(declare-fun d!145261 () Bool)

(declare-fun res!902959 () Bool)

(declare-fun e!770831 () Bool)

(assert (=> d!145261 (=> res!902959 e!770831)))

(assert (=> d!145261 (= res!902959 ((_ is Nil!31866) lt!599222))))

(assert (=> d!145261 (= (noDuplicate!2313 lt!599222) e!770831)))

(declare-fun b!1358160 () Bool)

(declare-fun e!770832 () Bool)

(assert (=> b!1358160 (= e!770831 e!770832)))

(declare-fun res!902960 () Bool)

(assert (=> b!1358160 (=> (not res!902960) (not e!770832))))

(assert (=> b!1358160 (= res!902960 (not (contains!9434 (t!46543 lt!599222) (h!33074 lt!599222))))))

(declare-fun b!1358161 () Bool)

(assert (=> b!1358161 (= e!770832 (noDuplicate!2313 (t!46543 lt!599222)))))

(assert (= (and d!145261 (not res!902959)) b!1358160))

(assert (= (and b!1358160 res!902960) b!1358161))

(declare-fun m!1243807 () Bool)

(assert (=> b!1358160 m!1243807))

(declare-fun m!1243809 () Bool)

(assert (=> b!1358161 m!1243809))

(assert (=> b!1358083 d!145261))

(declare-fun d!145263 () Bool)

(declare-fun lt!599234 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!690 (List!31869) (InoxSet (_ BitVec 64)))

(assert (=> d!145263 (= lt!599234 (select (content!690 lt!599222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770837 () Bool)

(assert (=> d!145263 (= lt!599234 e!770837)))

(declare-fun res!902965 () Bool)

(assert (=> d!145263 (=> (not res!902965) (not e!770837))))

(assert (=> d!145263 (= res!902965 ((_ is Cons!31865) lt!599222))))

(assert (=> d!145263 (= (contains!9434 lt!599222 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599234)))

(declare-fun b!1358166 () Bool)

(declare-fun e!770838 () Bool)

(assert (=> b!1358166 (= e!770837 e!770838)))

(declare-fun res!902966 () Bool)

(assert (=> b!1358166 (=> res!902966 e!770838)))

(assert (=> b!1358166 (= res!902966 (= (h!33074 lt!599222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358167 () Bool)

(assert (=> b!1358167 (= e!770838 (contains!9434 (t!46543 lt!599222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145263 res!902965) b!1358166))

(assert (= (and b!1358166 (not res!902966)) b!1358167))

(declare-fun m!1243811 () Bool)

(assert (=> d!145263 m!1243811))

(declare-fun m!1243813 () Bool)

(assert (=> d!145263 m!1243813))

(declare-fun m!1243815 () Bool)

(assert (=> b!1358167 m!1243815))

(assert (=> b!1358084 d!145263))

(declare-fun b!1358192 () Bool)

(declare-fun e!770863 () Bool)

(assert (=> b!1358192 (= e!770863 (subseq!825 (t!46543 acc!759) (t!46543 lt!599222)))))

(declare-fun b!1358193 () Bool)

(declare-fun e!770864 () Bool)

(assert (=> b!1358193 (= e!770864 (subseq!825 acc!759 (t!46543 lt!599222)))))

(declare-fun b!1358191 () Bool)

(declare-fun e!770861 () Bool)

(assert (=> b!1358191 (= e!770861 e!770864)))

(declare-fun res!902990 () Bool)

(assert (=> b!1358191 (=> res!902990 e!770864)))

(assert (=> b!1358191 (= res!902990 e!770863)))

(declare-fun res!902992 () Bool)

(assert (=> b!1358191 (=> (not res!902992) (not e!770863))))

(assert (=> b!1358191 (= res!902992 (= (h!33074 acc!759) (h!33074 lt!599222)))))

(declare-fun b!1358190 () Bool)

(declare-fun e!770862 () Bool)

(assert (=> b!1358190 (= e!770862 e!770861)))

(declare-fun res!902991 () Bool)

(assert (=> b!1358190 (=> (not res!902991) (not e!770861))))

(assert (=> b!1358190 (= res!902991 ((_ is Cons!31865) lt!599222))))

(declare-fun d!145269 () Bool)

(declare-fun res!902989 () Bool)

(assert (=> d!145269 (=> res!902989 e!770862)))

(assert (=> d!145269 (= res!902989 ((_ is Nil!31866) acc!759))))

(assert (=> d!145269 (= (subseq!825 acc!759 lt!599222) e!770862)))

(assert (= (and d!145269 (not res!902989)) b!1358190))

(assert (= (and b!1358190 res!902991) b!1358191))

(assert (= (and b!1358191 res!902992) b!1358192))

(assert (= (and b!1358191 (not res!902990)) b!1358193))

(declare-fun m!1243835 () Bool)

(assert (=> b!1358192 m!1243835))

(declare-fun m!1243837 () Bool)

(assert (=> b!1358193 m!1243837))

(assert (=> b!1358085 d!145269))

(declare-fun d!145279 () Bool)

(assert (=> d!145279 (= (validKeyInArray!0 (select (arr!44648 a!3742) from!3120)) (and (not (= (select (arr!44648 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44648 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358086 d!145279))

(declare-fun b!1358196 () Bool)

(declare-fun e!770868 () Bool)

(declare-fun e!770870 () Bool)

(assert (=> b!1358196 (= e!770868 e!770870)))

(declare-fun c!127043 () Bool)

(assert (=> b!1358196 (= c!127043 (validKeyInArray!0 (select (arr!44648 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun call!65276 () Bool)

(declare-fun bm!65273 () Bool)

(assert (=> bm!65273 (= call!65276 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127043 (Cons!31865 (select (arr!44648 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!599222) lt!599222)))))

(declare-fun d!145287 () Bool)

(declare-fun res!902997 () Bool)

(declare-fun e!770869 () Bool)

(assert (=> d!145287 (=> res!902997 e!770869)))

(assert (=> d!145287 (= res!902997 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45199 a!3742)))))

(assert (=> d!145287 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!599222) e!770869)))

(declare-fun b!1358197 () Bool)

(declare-fun e!770867 () Bool)

(assert (=> b!1358197 (= e!770867 (contains!9434 lt!599222 (select (arr!44648 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1358198 () Bool)

(assert (=> b!1358198 (= e!770870 call!65276)))

(declare-fun b!1358199 () Bool)

(assert (=> b!1358199 (= e!770869 e!770868)))

(declare-fun res!902995 () Bool)

(assert (=> b!1358199 (=> (not res!902995) (not e!770868))))

(assert (=> b!1358199 (= res!902995 (not e!770867))))

(declare-fun res!902996 () Bool)

(assert (=> b!1358199 (=> (not res!902996) (not e!770867))))

(assert (=> b!1358199 (= res!902996 (validKeyInArray!0 (select (arr!44648 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1358200 () Bool)

(assert (=> b!1358200 (= e!770870 call!65276)))

(assert (= (and d!145287 (not res!902997)) b!1358199))

(assert (= (and b!1358199 res!902996) b!1358197))

(assert (= (and b!1358199 res!902995) b!1358196))

(assert (= (and b!1358196 c!127043) b!1358198))

(assert (= (and b!1358196 (not c!127043)) b!1358200))

(assert (= (or b!1358198 b!1358200) bm!65273))

(declare-fun m!1243843 () Bool)

(assert (=> b!1358196 m!1243843))

(assert (=> b!1358196 m!1243843))

(declare-fun m!1243845 () Bool)

(assert (=> b!1358196 m!1243845))

(assert (=> bm!65273 m!1243843))

(declare-fun m!1243847 () Bool)

(assert (=> bm!65273 m!1243847))

(assert (=> b!1358197 m!1243843))

(assert (=> b!1358197 m!1243843))

(declare-fun m!1243849 () Bool)

(assert (=> b!1358197 m!1243849))

(assert (=> b!1358199 m!1243843))

(assert (=> b!1358199 m!1243843))

(assert (=> b!1358199 m!1243845))

(assert (=> b!1358087 d!145287))

(declare-fun d!145289 () Bool)

(assert (=> d!145289 (noDuplicate!2313 acc!759)))

(declare-fun lt!599246 () Unit!44629)

(declare-fun choose!1998 (List!31869 List!31869) Unit!44629)

(assert (=> d!145289 (= lt!599246 (choose!1998 acc!759 lt!599222))))

(declare-fun e!770899 () Bool)

(assert (=> d!145289 e!770899))

(declare-fun res!903026 () Bool)

(assert (=> d!145289 (=> (not res!903026) (not e!770899))))

(assert (=> d!145289 (= res!903026 (subseq!825 acc!759 lt!599222))))

(assert (=> d!145289 (= (noDuplicateSubseq!135 acc!759 lt!599222) lt!599246)))

(declare-fun b!1358229 () Bool)

(assert (=> b!1358229 (= e!770899 (noDuplicate!2313 lt!599222))))

(assert (= (and d!145289 res!903026) b!1358229))

(assert (=> d!145289 m!1243727))

(declare-fun m!1243865 () Bool)

(assert (=> d!145289 m!1243865))

(assert (=> d!145289 m!1243757))

(assert (=> b!1358229 m!1243755))

(assert (=> b!1358087 d!145289))

(declare-fun d!145297 () Bool)

(declare-fun lt!599247 () Bool)

(assert (=> d!145297 (= lt!599247 (select (content!690 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770900 () Bool)

(assert (=> d!145297 (= lt!599247 e!770900)))

(declare-fun res!903027 () Bool)

(assert (=> d!145297 (=> (not res!903027) (not e!770900))))

(assert (=> d!145297 (= res!903027 ((_ is Cons!31865) acc!759))))

(assert (=> d!145297 (= (contains!9434 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599247)))

(declare-fun b!1358230 () Bool)

(declare-fun e!770901 () Bool)

(assert (=> b!1358230 (= e!770900 e!770901)))

(declare-fun res!903028 () Bool)

(assert (=> b!1358230 (=> res!903028 e!770901)))

(assert (=> b!1358230 (= res!903028 (= (h!33074 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358231 () Bool)

(assert (=> b!1358231 (= e!770901 (contains!9434 (t!46543 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145297 res!903027) b!1358230))

(assert (= (and b!1358230 (not res!903028)) b!1358231))

(declare-fun m!1243867 () Bool)

(assert (=> d!145297 m!1243867))

(declare-fun m!1243869 () Bool)

(assert (=> d!145297 m!1243869))

(declare-fun m!1243871 () Bool)

(assert (=> b!1358231 m!1243871))

(assert (=> b!1358088 d!145297))

(declare-fun d!145299 () Bool)

(declare-fun lt!599248 () Bool)

(assert (=> d!145299 (= lt!599248 (select (content!690 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770902 () Bool)

(assert (=> d!145299 (= lt!599248 e!770902)))

(declare-fun res!903029 () Bool)

(assert (=> d!145299 (=> (not res!903029) (not e!770902))))

(assert (=> d!145299 (= res!903029 ((_ is Cons!31865) acc!759))))

(assert (=> d!145299 (= (contains!9434 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599248)))

(declare-fun b!1358232 () Bool)

(declare-fun e!770903 () Bool)

(assert (=> b!1358232 (= e!770902 e!770903)))

(declare-fun res!903030 () Bool)

(assert (=> b!1358232 (=> res!903030 e!770903)))

(assert (=> b!1358232 (= res!903030 (= (h!33074 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358233 () Bool)

(assert (=> b!1358233 (= e!770903 (contains!9434 (t!46543 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145299 res!903029) b!1358232))

(assert (= (and b!1358232 (not res!903030)) b!1358233))

(assert (=> d!145299 m!1243867))

(declare-fun m!1243873 () Bool)

(assert (=> d!145299 m!1243873))

(declare-fun m!1243875 () Bool)

(assert (=> b!1358233 m!1243875))

(assert (=> b!1358089 d!145299))

(declare-fun d!145301 () Bool)

(declare-fun lt!599251 () Bool)

(assert (=> d!145301 (= lt!599251 (select (content!690 lt!599222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770908 () Bool)

(assert (=> d!145301 (= lt!599251 e!770908)))

(declare-fun res!903035 () Bool)

(assert (=> d!145301 (=> (not res!903035) (not e!770908))))

(assert (=> d!145301 (= res!903035 ((_ is Cons!31865) lt!599222))))

(assert (=> d!145301 (= (contains!9434 lt!599222 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599251)))

(declare-fun b!1358238 () Bool)

(declare-fun e!770909 () Bool)

(assert (=> b!1358238 (= e!770908 e!770909)))

(declare-fun res!903036 () Bool)

(assert (=> b!1358238 (=> res!903036 e!770909)))

(assert (=> b!1358238 (= res!903036 (= (h!33074 lt!599222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358239 () Bool)

(assert (=> b!1358239 (= e!770909 (contains!9434 (t!46543 lt!599222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145301 res!903035) b!1358238))

(assert (= (and b!1358238 (not res!903036)) b!1358239))

(assert (=> d!145301 m!1243811))

(declare-fun m!1243879 () Bool)

(assert (=> d!145301 m!1243879))

(declare-fun m!1243881 () Bool)

(assert (=> b!1358239 m!1243881))

(assert (=> b!1358090 d!145301))

(declare-fun d!145305 () Bool)

(assert (=> d!145305 (= ($colon$colon!830 acc!759 (select (arr!44648 a!3742) from!3120)) (Cons!31865 (select (arr!44648 a!3742) from!3120) acc!759))))

(assert (=> b!1358080 d!145305))

(declare-fun b!1358244 () Bool)

(declare-fun e!770914 () Bool)

(assert (=> b!1358244 (= e!770914 (subseq!825 (t!46543 acc!759) (t!46543 acc!759)))))

(declare-fun b!1358245 () Bool)

(declare-fun e!770915 () Bool)

(assert (=> b!1358245 (= e!770915 (subseq!825 acc!759 (t!46543 acc!759)))))

(declare-fun b!1358243 () Bool)

(declare-fun e!770912 () Bool)

(assert (=> b!1358243 (= e!770912 e!770915)))

(declare-fun res!903040 () Bool)

(assert (=> b!1358243 (=> res!903040 e!770915)))

(assert (=> b!1358243 (= res!903040 e!770914)))

(declare-fun res!903042 () Bool)

(assert (=> b!1358243 (=> (not res!903042) (not e!770914))))

(assert (=> b!1358243 (= res!903042 (= (h!33074 acc!759) (h!33074 acc!759)))))

(declare-fun b!1358242 () Bool)

(declare-fun e!770913 () Bool)

(assert (=> b!1358242 (= e!770913 e!770912)))

(declare-fun res!903041 () Bool)

(assert (=> b!1358242 (=> (not res!903041) (not e!770912))))

(assert (=> b!1358242 (= res!903041 ((_ is Cons!31865) acc!759))))

(declare-fun d!145307 () Bool)

(declare-fun res!903039 () Bool)

(assert (=> d!145307 (=> res!903039 e!770913)))

(assert (=> d!145307 (= res!903039 ((_ is Nil!31866) acc!759))))

(assert (=> d!145307 (= (subseq!825 acc!759 acc!759) e!770913)))

(assert (= (and d!145307 (not res!903039)) b!1358242))

(assert (= (and b!1358242 res!903041) b!1358243))

(assert (= (and b!1358243 res!903042) b!1358244))

(assert (= (and b!1358243 (not res!903040)) b!1358245))

(declare-fun m!1243887 () Bool)

(assert (=> b!1358244 m!1243887))

(declare-fun m!1243889 () Bool)

(assert (=> b!1358245 m!1243889))

(assert (=> b!1358080 d!145307))

(declare-fun d!145311 () Bool)

(assert (=> d!145311 (subseq!825 acc!759 acc!759)))

(declare-fun lt!599255 () Unit!44629)

(declare-fun choose!36 (List!31869) Unit!44629)

(assert (=> d!145311 (= lt!599255 (choose!36 acc!759))))

(assert (=> d!145311 (= (lemmaListSubSeqRefl!0 acc!759) lt!599255)))

(declare-fun bs!38943 () Bool)

(assert (= bs!38943 d!145311))

(assert (=> bs!38943 m!1243747))

(declare-fun m!1243895 () Bool)

(assert (=> bs!38943 m!1243895))

(assert (=> b!1358080 d!145311))

(declare-fun d!145315 () Bool)

(assert (=> d!145315 (= (array_inv!33593 a!3742) (bvsge (size!45199 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114448 d!145315))

(declare-fun d!145319 () Bool)

(assert (=> d!145319 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358091 d!145319))

(declare-fun b!1358256 () Bool)

(declare-fun e!770927 () Bool)

(declare-fun e!770929 () Bool)

(assert (=> b!1358256 (= e!770927 e!770929)))

(declare-fun c!127044 () Bool)

(assert (=> b!1358256 (= c!127044 (validKeyInArray!0 (select (arr!44648 a!3742) from!3120)))))

(declare-fun call!65277 () Bool)

(declare-fun bm!65274 () Bool)

(assert (=> bm!65274 (= call!65277 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127044 (Cons!31865 (select (arr!44648 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!145321 () Bool)

(declare-fun res!903055 () Bool)

(declare-fun e!770928 () Bool)

(assert (=> d!145321 (=> res!903055 e!770928)))

(assert (=> d!145321 (= res!903055 (bvsge from!3120 (size!45199 a!3742)))))

(assert (=> d!145321 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770928)))

(declare-fun e!770926 () Bool)

(declare-fun b!1358257 () Bool)

(assert (=> b!1358257 (= e!770926 (contains!9434 acc!759 (select (arr!44648 a!3742) from!3120)))))

(declare-fun b!1358258 () Bool)

(assert (=> b!1358258 (= e!770929 call!65277)))

(declare-fun b!1358259 () Bool)

(assert (=> b!1358259 (= e!770928 e!770927)))

(declare-fun res!903053 () Bool)

(assert (=> b!1358259 (=> (not res!903053) (not e!770927))))

(assert (=> b!1358259 (= res!903053 (not e!770926))))

(declare-fun res!903054 () Bool)

(assert (=> b!1358259 (=> (not res!903054) (not e!770926))))

(assert (=> b!1358259 (= res!903054 (validKeyInArray!0 (select (arr!44648 a!3742) from!3120)))))

(declare-fun b!1358260 () Bool)

(assert (=> b!1358260 (= e!770929 call!65277)))

(assert (= (and d!145321 (not res!903055)) b!1358259))

(assert (= (and b!1358259 res!903054) b!1358257))

(assert (= (and b!1358259 res!903053) b!1358256))

(assert (= (and b!1358256 c!127044) b!1358258))

(assert (= (and b!1358256 (not c!127044)) b!1358260))

(assert (= (or b!1358258 b!1358260) bm!65274))

(assert (=> b!1358256 m!1243735))

(assert (=> b!1358256 m!1243735))

(assert (=> b!1358256 m!1243737))

(assert (=> bm!65274 m!1243735))

(declare-fun m!1243901 () Bool)

(assert (=> bm!65274 m!1243901))

(assert (=> b!1358257 m!1243735))

(assert (=> b!1358257 m!1243735))

(declare-fun m!1243903 () Bool)

(assert (=> b!1358257 m!1243903))

(assert (=> b!1358259 m!1243735))

(assert (=> b!1358259 m!1243735))

(assert (=> b!1358259 m!1243737))

(assert (=> b!1358081 d!145321))

(check-sat (not b!1358244) (not d!145299) (not b!1358197) (not b!1358245) (not b!1358231) (not b!1358196) (not d!145263) (not b!1358256) (not b!1358161) (not b!1358233) (not b!1358239) (not b!1358155) (not bm!65272) (not b!1358156) (not b!1358192) (not b!1358158) (not bm!65273) (not b!1358259) (not b!1358144) (not b!1358229) (not b!1358193) (not bm!65274) (not b!1358160) (not b!1358167) (not d!145311) (not d!145301) (not b!1358257) (not b!1358199) (not d!145289) (not d!145297) (not b!1358143))
(check-sat)
