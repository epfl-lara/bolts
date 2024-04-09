; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114786 () Bool)

(assert start!114786)

(declare-fun res!905170 () Bool)

(declare-fun e!772040 () Bool)

(assert (=> start!114786 (=> (not res!905170) (not e!772040))))

(declare-datatypes ((array!92546 0))(
  ( (array!92547 (arr!44706 (Array (_ BitVec 32) (_ BitVec 64))) (size!45257 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92546)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114786 (= res!905170 (and (bvslt (size!45257 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45257 a!3742))))))

(assert (=> start!114786 e!772040))

(assert (=> start!114786 true))

(declare-fun array_inv!33651 (array!92546) Bool)

(assert (=> start!114786 (array_inv!33651 a!3742)))

(declare-fun b!1360827 () Bool)

(declare-fun res!905171 () Bool)

(assert (=> b!1360827 (=> (not res!905171) (not e!772040))))

(assert (=> b!1360827 (= res!905171 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45257 a!3742)))))

(declare-fun b!1360828 () Bool)

(declare-fun e!772043 () Bool)

(declare-fun e!772042 () Bool)

(assert (=> b!1360828 (= e!772043 e!772042)))

(declare-fun res!905160 () Bool)

(assert (=> b!1360828 (=> (not res!905160) (not e!772042))))

(assert (=> b!1360828 (= res!905160 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31927 0))(
  ( (Nil!31924) (Cons!31923 (h!33132 (_ BitVec 64)) (t!46613 List!31927)) )
))
(declare-fun lt!599958 () List!31927)

(declare-fun acc!759 () List!31927)

(declare-fun $colon$colon!888 (List!31927 (_ BitVec 64)) List!31927)

(assert (=> b!1360828 (= lt!599958 ($colon$colon!888 acc!759 (select (arr!44706 a!3742) from!3120)))))

(declare-fun b!1360829 () Bool)

(declare-fun res!905163 () Bool)

(assert (=> b!1360829 (=> (not res!905163) (not e!772042))))

(declare-fun noDuplicate!2371 (List!31927) Bool)

(assert (=> b!1360829 (= res!905163 (noDuplicate!2371 lt!599958))))

(declare-fun b!1360830 () Bool)

(declare-fun res!905166 () Bool)

(assert (=> b!1360830 (=> (not res!905166) (not e!772040))))

(declare-fun arrayNoDuplicates!0 (array!92546 (_ BitVec 32) List!31927) Bool)

(assert (=> b!1360830 (= res!905166 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31924))))

(declare-fun b!1360831 () Bool)

(declare-fun res!905172 () Bool)

(assert (=> b!1360831 (=> (not res!905172) (not e!772040))))

(declare-fun contains!9492 (List!31927 (_ BitVec 64)) Bool)

(assert (=> b!1360831 (= res!905172 (not (contains!9492 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360832 () Bool)

(declare-fun res!905162 () Bool)

(assert (=> b!1360832 (=> (not res!905162) (not e!772040))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360832 (= res!905162 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45257 a!3742))))))

(declare-fun b!1360833 () Bool)

(declare-datatypes ((Unit!44801 0))(
  ( (Unit!44802) )
))
(declare-fun e!772044 () Unit!44801)

(declare-fun Unit!44803 () Unit!44801)

(assert (=> b!1360833 (= e!772044 Unit!44803)))

(declare-fun b!1360834 () Bool)

(declare-fun e!772045 () Bool)

(assert (=> b!1360834 (= e!772042 e!772045)))

(declare-fun res!905161 () Bool)

(assert (=> b!1360834 (=> res!905161 e!772045)))

(assert (=> b!1360834 (= res!905161 (contains!9492 lt!599958 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360835 () Bool)

(declare-fun res!905165 () Bool)

(assert (=> b!1360835 (=> (not res!905165) (not e!772040))))

(assert (=> b!1360835 (= res!905165 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360836 () Bool)

(assert (=> b!1360836 (= e!772045 (contains!9492 lt!599958 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360837 () Bool)

(declare-fun lt!599957 () Unit!44801)

(assert (=> b!1360837 (= e!772044 lt!599957)))

(declare-fun lt!599959 () Unit!44801)

(declare-fun lemmaListSubSeqRefl!0 (List!31927) Unit!44801)

(assert (=> b!1360837 (= lt!599959 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!883 (List!31927 List!31927) Bool)

(assert (=> b!1360837 (subseq!883 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92546 List!31927 List!31927 (_ BitVec 32)) Unit!44801)

(assert (=> b!1360837 (= lt!599957 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!888 acc!759 (select (arr!44706 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360837 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360838 () Bool)

(declare-fun res!905168 () Bool)

(assert (=> b!1360838 (=> (not res!905168) (not e!772040))))

(assert (=> b!1360838 (= res!905168 (noDuplicate!2371 acc!759))))

(declare-fun b!1360839 () Bool)

(declare-fun res!905169 () Bool)

(assert (=> b!1360839 (=> (not res!905169) (not e!772040))))

(assert (=> b!1360839 (= res!905169 (not (contains!9492 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360840 () Bool)

(declare-fun res!905164 () Bool)

(assert (=> b!1360840 (=> (not res!905164) (not e!772040))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360840 (= res!905164 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360841 () Bool)

(assert (=> b!1360841 (= e!772040 e!772043)))

(declare-fun res!905167 () Bool)

(assert (=> b!1360841 (=> (not res!905167) (not e!772043))))

(declare-fun lt!599960 () Bool)

(assert (=> b!1360841 (= res!905167 (and (not (= from!3120 i!1404)) lt!599960))))

(declare-fun lt!599956 () Unit!44801)

(assert (=> b!1360841 (= lt!599956 e!772044)))

(declare-fun c!127276 () Bool)

(assert (=> b!1360841 (= c!127276 lt!599960)))

(assert (=> b!1360841 (= lt!599960 (validKeyInArray!0 (select (arr!44706 a!3742) from!3120)))))

(assert (= (and start!114786 res!905170) b!1360838))

(assert (= (and b!1360838 res!905168) b!1360839))

(assert (= (and b!1360839 res!905169) b!1360831))

(assert (= (and b!1360831 res!905172) b!1360830))

(assert (= (and b!1360830 res!905166) b!1360835))

(assert (= (and b!1360835 res!905165) b!1360832))

(assert (= (and b!1360832 res!905162) b!1360840))

(assert (= (and b!1360840 res!905164) b!1360827))

(assert (= (and b!1360827 res!905171) b!1360841))

(assert (= (and b!1360841 c!127276) b!1360837))

(assert (= (and b!1360841 (not c!127276)) b!1360833))

(assert (= (and b!1360841 res!905167) b!1360828))

(assert (= (and b!1360828 res!905160) b!1360829))

(assert (= (and b!1360829 res!905163) b!1360834))

(assert (= (and b!1360834 (not res!905161)) b!1360836))

(declare-fun m!1246053 () Bool)

(assert (=> b!1360828 m!1246053))

(assert (=> b!1360828 m!1246053))

(declare-fun m!1246055 () Bool)

(assert (=> b!1360828 m!1246055))

(declare-fun m!1246057 () Bool)

(assert (=> b!1360836 m!1246057))

(declare-fun m!1246059 () Bool)

(assert (=> b!1360831 m!1246059))

(assert (=> b!1360841 m!1246053))

(assert (=> b!1360841 m!1246053))

(declare-fun m!1246061 () Bool)

(assert (=> b!1360841 m!1246061))

(declare-fun m!1246063 () Bool)

(assert (=> b!1360837 m!1246063))

(assert (=> b!1360837 m!1246053))

(assert (=> b!1360837 m!1246055))

(declare-fun m!1246065 () Bool)

(assert (=> b!1360837 m!1246065))

(declare-fun m!1246067 () Bool)

(assert (=> b!1360837 m!1246067))

(assert (=> b!1360837 m!1246053))

(assert (=> b!1360837 m!1246055))

(declare-fun m!1246069 () Bool)

(assert (=> b!1360837 m!1246069))

(declare-fun m!1246071 () Bool)

(assert (=> b!1360840 m!1246071))

(declare-fun m!1246073 () Bool)

(assert (=> b!1360829 m!1246073))

(declare-fun m!1246075 () Bool)

(assert (=> start!114786 m!1246075))

(declare-fun m!1246077 () Bool)

(assert (=> b!1360839 m!1246077))

(declare-fun m!1246079 () Bool)

(assert (=> b!1360835 m!1246079))

(declare-fun m!1246081 () Bool)

(assert (=> b!1360834 m!1246081))

(declare-fun m!1246083 () Bool)

(assert (=> b!1360838 m!1246083))

(declare-fun m!1246085 () Bool)

(assert (=> b!1360830 m!1246085))

(push 1)

(assert (not b!1360829))

(assert (not b!1360828))

(assert (not start!114786))

(assert (not b!1360830))

(assert (not b!1360836))

(assert (not b!1360835))

(assert (not b!1360838))

(assert (not b!1360831))

(assert (not b!1360839))

(assert (not b!1360837))

(assert (not b!1360841))

(assert (not b!1360834))

(assert (not b!1360840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145671 () Bool)

(declare-fun lt!599972 () Bool)

(declare-fun content!701 (List!31927) (Set (_ BitVec 64)))

(assert (=> d!145671 (= lt!599972 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!701 lt!599958)))))

(declare-fun e!772086 () Bool)

(assert (=> d!145671 (= lt!599972 e!772086)))

(declare-fun res!905211 () Bool)

(assert (=> d!145671 (=> (not res!905211) (not e!772086))))

(assert (=> d!145671 (= res!905211 (is-Cons!31923 lt!599958))))

(assert (=> d!145671 (= (contains!9492 lt!599958 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599972)))

(declare-fun b!1360885 () Bool)

(declare-fun e!772089 () Bool)

(assert (=> b!1360885 (= e!772086 e!772089)))

(declare-fun res!905213 () Bool)

(assert (=> b!1360885 (=> res!905213 e!772089)))

(assert (=> b!1360885 (= res!905213 (= (h!33132 lt!599958) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360887 () Bool)

(assert (=> b!1360887 (= e!772089 (contains!9492 (t!46613 lt!599958) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145671 res!905211) b!1360885))

(assert (= (and b!1360885 (not res!905213)) b!1360887))

(declare-fun m!1246105 () Bool)

(assert (=> d!145671 m!1246105))

(declare-fun m!1246108 () Bool)

(assert (=> d!145671 m!1246108))

(declare-fun m!1246113 () Bool)

(assert (=> b!1360887 m!1246113))

(assert (=> b!1360834 d!145671))

(declare-fun d!145675 () Bool)

(declare-fun lt!599973 () Bool)

(assert (=> d!145675 (= lt!599973 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!701 lt!599958)))))

(declare-fun e!772090 () Bool)

(assert (=> d!145675 (= lt!599973 e!772090)))

(declare-fun res!905214 () Bool)

(assert (=> d!145675 (=> (not res!905214) (not e!772090))))

(assert (=> d!145675 (= res!905214 (is-Cons!31923 lt!599958))))

(assert (=> d!145675 (= (contains!9492 lt!599958 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599973)))

(declare-fun b!1360889 () Bool)

(declare-fun e!772091 () Bool)

(assert (=> b!1360889 (= e!772090 e!772091)))

(declare-fun res!905215 () Bool)

(assert (=> b!1360889 (=> res!905215 e!772091)))

(assert (=> b!1360889 (= res!905215 (= (h!33132 lt!599958) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360890 () Bool)

(assert (=> b!1360890 (= e!772091 (contains!9492 (t!46613 lt!599958) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145675 res!905214) b!1360889))

(assert (= (and b!1360889 (not res!905215)) b!1360890))

(assert (=> d!145675 m!1246105))

(declare-fun m!1246115 () Bool)

(assert (=> d!145675 m!1246115))

(declare-fun m!1246118 () Bool)

(assert (=> b!1360890 m!1246118))

(assert (=> b!1360836 d!145675))

(declare-fun b!1360933 () Bool)

(declare-fun e!772133 () Bool)

(declare-fun e!772131 () Bool)

(assert (=> b!1360933 (= e!772133 e!772131)))

(declare-fun c!127284 () Bool)

(assert (=> b!1360933 (= c!127284 (validKeyInArray!0 (select (arr!44706 a!3742) from!3120)))))

(declare-fun d!145679 () Bool)

(declare-fun res!905252 () Bool)

(declare-fun e!772132 () Bool)

(assert (=> d!145679 (=> res!905252 e!772132)))

(assert (=> d!145679 (= res!905252 (bvsge from!3120 (size!45257 a!3742)))))

(assert (=> d!145679 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772132)))

(declare-fun b!1360934 () Bool)

(declare-fun call!65346 () Bool)

(assert (=> b!1360934 (= e!772131 call!65346)))

(declare-fun b!1360935 () Bool)

(assert (=> b!1360935 (= e!772131 call!65346)))

(declare-fun b!1360936 () Bool)

(assert (=> b!1360936 (= e!772132 e!772133)))

(declare-fun res!905251 () Bool)

(assert (=> b!1360936 (=> (not res!905251) (not e!772133))))

(declare-fun e!772130 () Bool)

(assert (=> b!1360936 (= res!905251 (not e!772130))))

(declare-fun res!905250 () Bool)

(assert (=> b!1360936 (=> (not res!905250) (not e!772130))))

(assert (=> b!1360936 (= res!905250 (validKeyInArray!0 (select (arr!44706 a!3742) from!3120)))))

(declare-fun b!1360937 () Bool)

(assert (=> b!1360937 (= e!772130 (contains!9492 acc!759 (select (arr!44706 a!3742) from!3120)))))

(declare-fun bm!65343 () Bool)

(assert (=> bm!65343 (= call!65346 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127284 (Cons!31923 (select (arr!44706 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!145679 (not res!905252)) b!1360936))

(assert (= (and b!1360936 res!905250) b!1360937))

(assert (= (and b!1360936 res!905251) b!1360933))

(assert (= (and b!1360933 c!127284) b!1360934))

(assert (= (and b!1360933 (not c!127284)) b!1360935))

(assert (= (or b!1360934 b!1360935) bm!65343))

(assert (=> b!1360933 m!1246053))

