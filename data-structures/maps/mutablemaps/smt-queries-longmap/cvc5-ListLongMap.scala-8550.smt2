; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104422 () Bool)

(assert start!104422)

(declare-datatypes ((array!80198 0))(
  ( (array!80199 (arr!38673 (Array (_ BitVec 32) (_ BitVec 64))) (size!39210 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80198)

(declare-datatypes ((List!27654 0))(
  ( (Nil!27651) (Cons!27650 (h!28859 (_ BitVec 64)) (t!41130 List!27654)) )
))
(declare-fun lt!562960 () List!27654)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun b!1246065 () Bool)

(declare-fun e!706697 () Bool)

(declare-fun arrayNoDuplicates!0 (array!80198 (_ BitVec 32) List!27654) Bool)

(assert (=> b!1246065 (= e!706697 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562960)))))

(declare-datatypes ((Unit!41338 0))(
  ( (Unit!41339) )
))
(declare-fun lt!562961 () Unit!41338)

(declare-fun noDuplicateSubseq!107 (List!27654 List!27654) Unit!41338)

(assert (=> b!1246065 (= lt!562961 (noDuplicateSubseq!107 Nil!27651 lt!562960))))

(declare-fun b!1246066 () Bool)

(declare-fun res!831581 () Bool)

(declare-fun e!706699 () Bool)

(assert (=> b!1246066 (=> (not res!831581) (not e!706699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246066 (= res!831581 (validKeyInArray!0 (select (arr!38673 a!3892) from!3270)))))

(declare-fun b!1246067 () Bool)

(declare-fun res!831582 () Bool)

(assert (=> b!1246067 (=> (not res!831582) (not e!706697))))

(declare-fun contains!7472 (List!27654 (_ BitVec 64)) Bool)

(assert (=> b!1246067 (= res!831582 (not (contains!7472 Nil!27651 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246068 () Bool)

(declare-fun res!831579 () Bool)

(assert (=> b!1246068 (=> (not res!831579) (not e!706697))))

(declare-fun subseq!656 (List!27654 List!27654) Bool)

(assert (=> b!1246068 (= res!831579 (subseq!656 Nil!27651 lt!562960))))

(declare-fun b!1246069 () Bool)

(declare-fun res!831583 () Bool)

(assert (=> b!1246069 (=> (not res!831583) (not e!706697))))

(declare-fun noDuplicate!2062 (List!27654) Bool)

(assert (=> b!1246069 (= res!831583 (noDuplicate!2062 lt!562960))))

(declare-fun b!1246071 () Bool)

(declare-fun res!831580 () Bool)

(assert (=> b!1246071 (=> (not res!831580) (not e!706699))))

(assert (=> b!1246071 (= res!831580 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27651))))

(declare-fun b!1246072 () Bool)

(declare-fun res!831574 () Bool)

(assert (=> b!1246072 (=> (not res!831574) (not e!706697))))

(assert (=> b!1246072 (= res!831574 (not (contains!7472 lt!562960 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246073 () Bool)

(declare-fun res!831575 () Bool)

(assert (=> b!1246073 (=> (not res!831575) (not e!706697))))

(assert (=> b!1246073 (= res!831575 (not (contains!7472 Nil!27651 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246074 () Bool)

(declare-fun res!831578 () Bool)

(assert (=> b!1246074 (=> (not res!831578) (not e!706697))))

(assert (=> b!1246074 (= res!831578 (not (contains!7472 lt!562960 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1246075 () Bool)

(declare-fun res!831576 () Bool)

(assert (=> b!1246075 (=> (not res!831576) (not e!706699))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246075 (= res!831576 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39210 a!3892)) (not (= newFrom!287 (size!39210 a!3892)))))))

(declare-fun b!1246070 () Bool)

(assert (=> b!1246070 (= e!706699 e!706697)))

(declare-fun res!831573 () Bool)

(assert (=> b!1246070 (=> (not res!831573) (not e!706697))))

(assert (=> b!1246070 (= res!831573 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1246070 (= lt!562960 (Cons!27650 (select (arr!38673 a!3892) from!3270) Nil!27651))))

(declare-fun res!831577 () Bool)

(assert (=> start!104422 (=> (not res!831577) (not e!706699))))

(assert (=> start!104422 (= res!831577 (and (bvslt (size!39210 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39210 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39210 a!3892))))))

(assert (=> start!104422 e!706699))

(declare-fun array_inv!29449 (array!80198) Bool)

(assert (=> start!104422 (array_inv!29449 a!3892)))

(assert (=> start!104422 true))

(assert (= (and start!104422 res!831577) b!1246071))

(assert (= (and b!1246071 res!831580) b!1246075))

(assert (= (and b!1246075 res!831576) b!1246066))

(assert (= (and b!1246066 res!831581) b!1246070))

(assert (= (and b!1246070 res!831573) b!1246069))

(assert (= (and b!1246069 res!831583) b!1246074))

(assert (= (and b!1246074 res!831578) b!1246072))

(assert (= (and b!1246072 res!831574) b!1246067))

(assert (= (and b!1246067 res!831582) b!1246073))

(assert (= (and b!1246073 res!831575) b!1246068))

(assert (= (and b!1246068 res!831579) b!1246065))

(declare-fun m!1147991 () Bool)

(assert (=> b!1246071 m!1147991))

(declare-fun m!1147993 () Bool)

(assert (=> b!1246072 m!1147993))

(declare-fun m!1147995 () Bool)

(assert (=> b!1246068 m!1147995))

(declare-fun m!1147997 () Bool)

(assert (=> start!104422 m!1147997))

(declare-fun m!1147999 () Bool)

(assert (=> b!1246070 m!1147999))

(declare-fun m!1148001 () Bool)

(assert (=> b!1246067 m!1148001))

(declare-fun m!1148003 () Bool)

(assert (=> b!1246069 m!1148003))

(declare-fun m!1148005 () Bool)

(assert (=> b!1246073 m!1148005))

(assert (=> b!1246066 m!1147999))

(assert (=> b!1246066 m!1147999))

(declare-fun m!1148007 () Bool)

(assert (=> b!1246066 m!1148007))

(declare-fun m!1148009 () Bool)

(assert (=> b!1246065 m!1148009))

(declare-fun m!1148011 () Bool)

(assert (=> b!1246065 m!1148011))

(declare-fun m!1148013 () Bool)

(assert (=> b!1246074 m!1148013))

(push 1)

(assert (not b!1246067))

(assert (not b!1246073))

(assert (not b!1246072))

(assert (not b!1246074))

(assert (not b!1246065))

(assert (not b!1246066))

(assert (not b!1246069))

(assert (not start!104422))

(assert (not b!1246071))

(assert (not b!1246068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1246179 () Bool)

(declare-fun e!706750 () Bool)

(declare-fun e!706751 () Bool)

(assert (=> b!1246179 (= e!706750 e!706751)))

(declare-fun res!831677 () Bool)

(assert (=> b!1246179 (=> (not res!831677) (not e!706751))))

(declare-fun e!706753 () Bool)

(assert (=> b!1246179 (= res!831677 (not e!706753))))

(declare-fun res!831678 () Bool)

(assert (=> b!1246179 (=> (not res!831678) (not e!706753))))

(assert (=> b!1246179 (= res!831678 (validKeyInArray!0 (select (arr!38673 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246180 () Bool)

(assert (=> b!1246180 (= e!706753 (contains!7472 lt!562960 (select (arr!38673 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246181 () Bool)

(declare-fun e!706752 () Bool)

(assert (=> b!1246181 (= e!706751 e!706752)))

(declare-fun c!121938 () Bool)

(assert (=> b!1246181 (= c!121938 (validKeyInArray!0 (select (arr!38673 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun call!61517 () Bool)

(declare-fun bm!61514 () Bool)

(assert (=> bm!61514 (= call!61517 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121938 (Cons!27650 (select (arr!38673 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) lt!562960) lt!562960)))))

(declare-fun b!1246182 () Bool)

(assert (=> b!1246182 (= e!706752 call!61517)))

(declare-fun d!137501 () Bool)

(declare-fun res!831679 () Bool)

(assert (=> d!137501 (=> res!831679 e!706750)))

(assert (=> d!137501 (= res!831679 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39210 a!3892)))))

(assert (=> d!137501 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562960) e!706750)))

(declare-fun b!1246183 () Bool)

(assert (=> b!1246183 (= e!706752 call!61517)))

(assert (= (and d!137501 (not res!831679)) b!1246179))

(assert (= (and b!1246179 res!831678) b!1246180))

(assert (= (and b!1246179 res!831677) b!1246181))

(assert (= (and b!1246181 c!121938) b!1246182))

(assert (= (and b!1246181 (not c!121938)) b!1246183))

(assert (= (or b!1246182 b!1246183) bm!61514))

(declare-fun m!1148083 () Bool)

(assert (=> b!1246179 m!1148083))

(assert (=> b!1246179 m!1148083))

(declare-fun m!1148085 () Bool)

(assert (=> b!1246179 m!1148085))

(assert (=> b!1246180 m!1148083))

(assert (=> b!1246180 m!1148083))

(declare-fun m!1148087 () Bool)

(assert (=> b!1246180 m!1148087))

(assert (=> b!1246181 m!1148083))

(assert (=> b!1246181 m!1148083))

(assert (=> b!1246181 m!1148085))

(assert (=> bm!61514 m!1148083))

(declare-fun m!1148089 () Bool)

(assert (=> bm!61514 m!1148089))

(assert (=> b!1246065 d!137501))

(declare-fun d!137511 () Bool)

(assert (=> d!137511 (noDuplicate!2062 Nil!27651)))

(declare-fun lt!562986 () Unit!41338)

(declare-fun choose!1853 (List!27654 List!27654) Unit!41338)

(assert (=> d!137511 (= lt!562986 (choose!1853 Nil!27651 lt!562960))))

(declare-fun e!706769 () Bool)

(assert (=> d!137511 e!706769))

(declare-fun res!831693 () Bool)

(assert (=> d!137511 (=> (not res!831693) (not e!706769))))

(assert (=> d!137511 (= res!831693 (subseq!656 Nil!27651 lt!562960))))

(assert (=> d!137511 (= (noDuplicateSubseq!107 Nil!27651 lt!562960) lt!562986)))

(declare-fun b!1246201 () Bool)

(assert (=> b!1246201 (= e!706769 (noDuplicate!2062 lt!562960))))

(assert (= (and d!137511 res!831693) b!1246201))

(declare-fun m!1148099 () Bool)

(assert (=> d!137511 m!1148099))

(declare-fun m!1148101 () Bool)

(assert (=> d!137511 m!1148101))

(assert (=> d!137511 m!1147995))

(assert (=> b!1246201 m!1148003))

(assert (=> b!1246065 d!137511))

(declare-fun b!1246202 () Bool)

(declare-fun e!706770 () Bool)

(declare-fun e!706771 () Bool)

(assert (=> b!1246202 (= e!706770 e!706771)))

(declare-fun res!831694 () Bool)

(assert (=> b!1246202 (=> (not res!831694) (not e!706771))))

(declare-fun e!706773 () Bool)

(assert (=> b!1246202 (= res!831694 (not e!706773))))

(declare-fun res!831695 () Bool)

(assert (=> b!1246202 (=> (not res!831695) (not e!706773))))

(assert (=> b!1246202 (= res!831695 (validKeyInArray!0 (select (arr!38673 a!3892) from!3270)))))

(declare-fun b!1246203 () Bool)

(assert (=> b!1246203 (= e!706773 (contains!7472 Nil!27651 (select (arr!38673 a!3892) from!3270)))))

(declare-fun b!1246204 () Bool)

(declare-fun e!706772 () Bool)

(assert (=> b!1246204 (= e!706771 e!706772)))

(declare-fun c!121941 () Bool)

(assert (=> b!1246204 (= c!121941 (validKeyInArray!0 (select (arr!38673 a!3892) from!3270)))))

(declare-fun bm!61517 () Bool)

(declare-fun call!61520 () Bool)

(assert (=> bm!61517 (= call!61520 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121941 (Cons!27650 (select (arr!38673 a!3892) from!3270) Nil!27651) Nil!27651)))))

(declare-fun b!1246205 () Bool)

(assert (=> b!1246205 (= e!706772 call!61520)))

(declare-fun d!137517 () Bool)

(declare-fun res!831696 () Bool)

(assert (=> d!137517 (=> res!831696 e!706770)))

(assert (=> d!137517 (= res!831696 (bvsge from!3270 (size!39210 a!3892)))))

(assert (=> d!137517 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27651) e!706770)))

(declare-fun b!1246206 () Bool)

(assert (=> b!1246206 (= e!706772 call!61520)))

(assert (= (and d!137517 (not res!831696)) b!1246202))

(assert (= (and b!1246202 res!831695) b!1246203))

(assert (= (and b!1246202 res!831694) b!1246204))

(assert (= (and b!1246204 c!121941) b!1246205))

(assert (= (and b!1246204 (not c!121941)) b!1246206))

(assert (= (or b!1246205 b!1246206) bm!61517))

(assert (=> b!1246202 m!1147999))

(assert (=> b!1246202 m!1147999))

(assert (=> b!1246202 m!1148007))

(assert (=> b!1246203 m!1147999))

(assert (=> b!1246203 m!1147999))

(declare-fun m!1148103 () Bool)

(assert (=> b!1246203 m!1148103))

(assert (=> b!1246204 m!1147999))

(assert (=> b!1246204 m!1147999))

(assert (=> b!1246204 m!1148007))

(assert (=> bm!61517 m!1147999))

(declare-fun m!1148105 () Bool)

(assert (=> bm!61517 m!1148105))

(assert (=> b!1246071 d!137517))

(declare-fun d!137519 () Bool)

(assert (=> d!137519 (= (validKeyInArray!0 (select (arr!38673 a!3892) from!3270)) (and (not (= (select (arr!38673 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38673 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1246066 d!137519))

(declare-fun d!137521 () Bool)

(declare-fun lt!562991 () Bool)

(declare-fun content!638 (List!27654) (Set (_ BitVec 64)))

(assert (=> d!137521 (= lt!562991 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!638 Nil!27651)))))

(declare-fun e!706807 () Bool)

(assert (=> d!137521 (= lt!562991 e!706807)))

(declare-fun res!831726 () Bool)

(assert (=> d!137521 (=> (not res!831726) (not e!706807))))

(assert (=> d!137521 (= res!831726 (is-Cons!27650 Nil!27651))))

(assert (=> d!137521 (= (contains!7472 Nil!27651 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562991)))

(declare-fun b!1246242 () Bool)

(declare-fun e!706806 () Bool)

(assert (=> b!1246242 (= e!706807 e!706806)))

(declare-fun res!831727 () Bool)

(assert (=> b!1246242 (=> res!831727 e!706806)))

(assert (=> b!1246242 (= res!831727 (= (h!28859 Nil!27651) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246243 () Bool)

(assert (=> b!1246243 (= e!706806 (contains!7472 (t!41130 Nil!27651) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137521 res!831726) b!1246242))

(assert (= (and b!1246242 (not res!831727)) b!1246243))

(declare-fun m!1148137 () Bool)

(assert (=> d!137521 m!1148137))

(declare-fun m!1148139 () Bool)

(assert (=> d!137521 m!1148139))

(declare-fun m!1148141 () Bool)

(assert (=> b!1246243 m!1148141))

(assert (=> b!1246067 d!137521))

(declare-fun d!137535 () Bool)

(declare-fun lt!562992 () Bool)

(assert (=> d!137535 (= lt!562992 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!638 lt!562960)))))

(declare-fun e!706809 () Bool)

(assert (=> d!137535 (= lt!562992 e!706809)))

(declare-fun res!831728 () Bool)

(assert (=> d!137535 (=> (not res!831728) (not e!706809))))

(assert (=> d!137535 (= res!831728 (is-Cons!27650 lt!562960))))

(assert (=> d!137535 (= (contains!7472 lt!562960 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562992)))

(declare-fun b!1246244 () Bool)

(declare-fun e!706808 () Bool)

(assert (=> b!1246244 (= e!706809 e!706808)))

(declare-fun res!831729 () Bool)

(assert (=> b!1246244 (=> res!831729 e!706808)))

(assert (=> b!1246244 (= res!831729 (= (h!28859 lt!562960) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246245 () Bool)

(assert (=> b!1246245 (= e!706808 (contains!7472 (t!41130 lt!562960) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137535 res!831728) b!1246244))

(assert (= (and b!1246244 (not res!831729)) b!1246245))

(declare-fun m!1148143 () Bool)

(assert (=> d!137535 m!1148143))

(declare-fun m!1148145 () Bool)

(assert (=> d!137535 m!1148145))

(declare-fun m!1148147 () Bool)

(assert (=> b!1246245 m!1148147))

(assert (=> b!1246072 d!137535))

(declare-fun d!137539 () Bool)

(declare-fun lt!562995 () Bool)

(assert (=> d!137539 (= lt!562995 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!638 Nil!27651)))))

(declare-fun e!706813 () Bool)

(assert (=> d!137539 (= lt!562995 e!706813)))

(declare-fun res!831732 () Bool)

(assert (=> d!137539 (=> (not res!831732) (not e!706813))))

(assert (=> d!137539 (= res!831732 (is-Cons!27650 Nil!27651))))

(assert (=> d!137539 (= (contains!7472 Nil!27651 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562995)))

(declare-fun b!1246248 () Bool)

(declare-fun e!706812 () Bool)

(assert (=> b!1246248 (= e!706813 e!706812)))

(declare-fun res!831733 () Bool)

(assert (=> b!1246248 (=> res!831733 e!706812)))

(assert (=> b!1246248 (= res!831733 (= (h!28859 Nil!27651) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246249 () Bool)

(assert (=> b!1246249 (= e!706812 (contains!7472 (t!41130 Nil!27651) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137539 res!831732) b!1246248))

(assert (= (and b!1246248 (not res!831733)) b!1246249))

(assert (=> d!137539 m!1148137))

(declare-fun m!1148149 () Bool)

(assert (=> d!137539 m!1148149))

(declare-fun m!1148151 () Bool)

(assert (=> b!1246249 m!1148151))

(assert (=> b!1246073 d!137539))

(declare-fun b!1246271 () Bool)

(declare-fun e!706838 () Bool)

(declare-fun e!706836 () Bool)

(assert (=> b!1246271 (= e!706838 e!706836)))

(declare-fun res!831755 () Bool)

(assert (=> b!1246271 (=> (not res!831755) (not e!706836))))

(assert (=> b!1246271 (= res!831755 (is-Cons!27650 lt!562960))))

(declare-fun b!1246274 () Bool)

(declare-fun e!706835 () Bool)

(assert (=> b!1246274 (= e!706835 (subseq!656 Nil!27651 (t!41130 lt!562960)))))

(declare-fun b!1246273 () Bool)

(declare-fun e!706837 () Bool)

(assert (=> b!1246273 (= e!706837 (subseq!656 (t!41130 Nil!27651) (t!41130 lt!562960)))))

(declare-fun b!1246272 () Bool)

(assert (=> b!1246272 (= e!706836 e!706835)))

(declare-fun res!831757 () Bool)

(assert (=> b!1246272 (=> res!831757 e!706835)))

(assert (=> b!1246272 (= res!831757 e!706837)))

(declare-fun res!831758 () Bool)

(assert (=> b!1246272 (=> (not res!831758) (not e!706837))))

(assert (=> b!1246272 (= res!831758 (= (h!28859 Nil!27651) (h!28859 lt!562960)))))

(declare-fun d!137541 () Bool)

(declare-fun res!831756 () Bool)

(assert (=> d!137541 (=> res!831756 e!706838)))

