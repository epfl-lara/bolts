; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103392 () Bool)

(assert start!103392)

(declare-fun res!827234 () Bool)

(declare-fun e!702656 () Bool)

(assert (=> start!103392 (=> (not res!827234) (not e!702656))))

(declare-datatypes ((array!79862 0))(
  ( (array!79863 (arr!38526 (Array (_ BitVec 32) (_ BitVec 64))) (size!39063 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79862)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103392 (= res!827234 (and (bvslt (size!39063 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39063 a!3835))))))

(assert (=> start!103392 e!702656))

(declare-fun array_inv!29302 (array!79862) Bool)

(assert (=> start!103392 (array_inv!29302 a!3835)))

(assert (=> start!103392 true))

(declare-fun b!1239780 () Bool)

(declare-fun res!827239 () Bool)

(assert (=> b!1239780 (=> (not res!827239) (not e!702656))))

(declare-datatypes ((List!27477 0))(
  ( (Nil!27474) (Cons!27473 (h!28682 (_ BitVec 64)) (t!40947 List!27477)) )
))
(declare-fun acc!846 () List!27477)

(declare-fun contains!7392 (List!27477 (_ BitVec 64)) Bool)

(assert (=> b!1239780 (= res!827239 (not (contains!7392 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239781 () Bool)

(declare-fun res!827235 () Bool)

(assert (=> b!1239781 (=> (not res!827235) (not e!702656))))

(assert (=> b!1239781 (= res!827235 (not (contains!7392 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun b!1239782 () Bool)

(declare-fun arrayContainsKey!0 (array!79862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239782 (= e!702656 (arrayContainsKey!0 a!3835 k!2925 from!3213))))

(declare-fun b!1239783 () Bool)

(declare-fun res!827237 () Bool)

(assert (=> b!1239783 (=> (not res!827237) (not e!702656))))

(assert (=> b!1239783 (= res!827237 (contains!7392 acc!846 k!2925))))

(declare-fun b!1239784 () Bool)

(declare-fun res!827238 () Bool)

(assert (=> b!1239784 (=> (not res!827238) (not e!702656))))

(declare-fun arrayNoDuplicates!0 (array!79862 (_ BitVec 32) List!27477) Bool)

(assert (=> b!1239784 (= res!827238 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239785 () Bool)

(declare-fun res!827236 () Bool)

(assert (=> b!1239785 (=> (not res!827236) (not e!702656))))

(assert (=> b!1239785 (= res!827236 (= from!3213 (bvsub (size!39063 a!3835) #b00000000000000000000000000000001)))))

(declare-fun b!1239786 () Bool)

(declare-fun res!827233 () Bool)

(assert (=> b!1239786 (=> (not res!827233) (not e!702656))))

(declare-fun noDuplicate!1999 (List!27477) Bool)

(assert (=> b!1239786 (= res!827233 (noDuplicate!1999 acc!846))))

(assert (= (and start!103392 res!827234) b!1239786))

(assert (= (and b!1239786 res!827233) b!1239780))

(assert (= (and b!1239780 res!827239) b!1239781))

(assert (= (and b!1239781 res!827235) b!1239784))

(assert (= (and b!1239784 res!827238) b!1239783))

(assert (= (and b!1239783 res!827237) b!1239785))

(assert (= (and b!1239785 res!827236) b!1239782))

(declare-fun m!1143185 () Bool)

(assert (=> b!1239783 m!1143185))

(declare-fun m!1143187 () Bool)

(assert (=> b!1239782 m!1143187))

(declare-fun m!1143189 () Bool)

(assert (=> b!1239780 m!1143189))

(declare-fun m!1143191 () Bool)

(assert (=> start!103392 m!1143191))

(declare-fun m!1143193 () Bool)

(assert (=> b!1239784 m!1143193))

(declare-fun m!1143195 () Bool)

(assert (=> b!1239786 m!1143195))

(declare-fun m!1143197 () Bool)

(assert (=> b!1239781 m!1143197))

(push 1)

(assert (not start!103392))

(assert (not b!1239784))

(assert (not b!1239786))

(assert (not b!1239783))

(assert (not b!1239782))

(assert (not b!1239780))

(assert (not b!1239781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136053 () Bool)

(assert (=> d!136053 (= (array_inv!29302 a!3835) (bvsge (size!39063 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103392 d!136053))

(declare-fun d!136057 () Bool)

(declare-fun res!827304 () Bool)

(declare-fun e!702693 () Bool)

(assert (=> d!136057 (=> res!827304 e!702693)))

(assert (=> d!136057 (= res!827304 (is-Nil!27474 acc!846))))

(assert (=> d!136057 (= (noDuplicate!1999 acc!846) e!702693)))

(declare-fun b!1239855 () Bool)

(declare-fun e!702694 () Bool)

(assert (=> b!1239855 (= e!702693 e!702694)))

(declare-fun res!827305 () Bool)

(assert (=> b!1239855 (=> (not res!827305) (not e!702694))))

(assert (=> b!1239855 (= res!827305 (not (contains!7392 (t!40947 acc!846) (h!28682 acc!846))))))

(declare-fun b!1239856 () Bool)

(assert (=> b!1239856 (= e!702694 (noDuplicate!1999 (t!40947 acc!846)))))

(assert (= (and d!136057 (not res!827304)) b!1239855))

(assert (= (and b!1239855 res!827305) b!1239856))

(declare-fun m!1143237 () Bool)

(assert (=> b!1239855 m!1143237))

(declare-fun m!1143239 () Bool)

(assert (=> b!1239856 m!1143239))

(assert (=> b!1239786 d!136057))

(declare-fun d!136059 () Bool)

(declare-fun lt!561803 () Bool)

(declare-fun content!607 (List!27477) (Set (_ BitVec 64)))

(assert (=> d!136059 (= lt!561803 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!607 acc!846)))))

(declare-fun e!702705 () Bool)

(assert (=> d!136059 (= lt!561803 e!702705)))

(declare-fun res!827315 () Bool)

(assert (=> d!136059 (=> (not res!827315) (not e!702705))))

(assert (=> d!136059 (= res!827315 (is-Cons!27473 acc!846))))

(assert (=> d!136059 (= (contains!7392 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561803)))

(declare-fun b!1239868 () Bool)

(declare-fun e!702706 () Bool)

(assert (=> b!1239868 (= e!702705 e!702706)))

(declare-fun res!827316 () Bool)

(assert (=> b!1239868 (=> res!827316 e!702706)))

(assert (=> b!1239868 (= res!827316 (= (h!28682 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239869 () Bool)

(assert (=> b!1239869 (= e!702706 (contains!7392 (t!40947 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136059 res!827315) b!1239868))

(assert (= (and b!1239868 (not res!827316)) b!1239869))

(declare-fun m!1143255 () Bool)

(assert (=> d!136059 m!1143255))

(declare-fun m!1143257 () Bool)

(assert (=> d!136059 m!1143257))

(declare-fun m!1143259 () Bool)

(assert (=> b!1239869 m!1143259))

(assert (=> b!1239781 d!136059))

(declare-fun d!136065 () Bool)

(declare-fun lt!561804 () Bool)

(assert (=> d!136065 (= lt!561804 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!607 acc!846)))))

(declare-fun e!702709 () Bool)

(assert (=> d!136065 (= lt!561804 e!702709)))

(declare-fun res!827319 () Bool)

(assert (=> d!136065 (=> (not res!827319) (not e!702709))))

(assert (=> d!136065 (= res!827319 (is-Cons!27473 acc!846))))

(assert (=> d!136065 (= (contains!7392 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561804)))

(declare-fun b!1239872 () Bool)

(declare-fun e!702710 () Bool)

(assert (=> b!1239872 (= e!702709 e!702710)))

(declare-fun res!827320 () Bool)

(assert (=> b!1239872 (=> res!827320 e!702710)))

(assert (=> b!1239872 (= res!827320 (= (h!28682 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239873 () Bool)

(assert (=> b!1239873 (= e!702710 (contains!7392 (t!40947 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136065 res!827319) b!1239872))

(assert (= (and b!1239872 (not res!827320)) b!1239873))

(assert (=> d!136065 m!1143255))

(declare-fun m!1143261 () Bool)

(assert (=> d!136065 m!1143261))

(declare-fun m!1143263 () Bool)

(assert (=> b!1239873 m!1143263))

(assert (=> b!1239780 d!136065))

(declare-fun e!702750 () Bool)

(declare-fun b!1239915 () Bool)

(assert (=> b!1239915 (= e!702750 (contains!7392 acc!846 (select (arr!38526 a!3835) from!3213)))))

(declare-fun d!136067 () Bool)

(declare-fun res!827354 () Bool)

(declare-fun e!702749 () Bool)

(assert (=> d!136067 (=> res!827354 e!702749)))

(assert (=> d!136067 (= res!827354 (bvsge from!3213 (size!39063 a!3835)))))

(assert (=> d!136067 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702749)))

(declare-fun b!1239916 () Bool)

(declare-fun e!702747 () Bool)

(declare-fun e!702748 () Bool)

(assert (=> b!1239916 (= e!702747 e!702748)))

(declare-fun c!121144 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239916 (= c!121144 (validKeyInArray!0 (select (arr!38526 a!3835) from!3213)))))

(declare-fun call!61122 () Bool)

(declare-fun bm!61119 () Bool)

(assert (=> bm!61119 (= call!61122 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121144 (Cons!27473 (select (arr!38526 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1239917 () Bool)

(assert (=> b!1239917 (= e!702748 call!61122)))

(declare-fun b!1239918 () Bool)

(assert (=> b!1239918 (= e!702748 call!61122)))

(declare-fun b!1239919 () Bool)

(assert (=> b!1239919 (= e!702749 e!702747)))

(declare-fun res!827353 () Bool)

(assert (=> b!1239919 (=> (not res!827353) (not e!702747))))

(assert (=> b!1239919 (= res!827353 (not e!702750))))

(declare-fun res!827352 () Bool)

(assert (=> b!1239919 (=> (not res!827352) (not e!702750))))

(assert (=> b!1239919 (= res!827352 (validKeyInArray!0 (select (arr!38526 a!3835) from!3213)))))

(assert (= (and d!136067 (not res!827354)) b!1239919))

(assert (= (and b!1239919 res!827352) b!1239915))

(assert (= (and b!1239919 res!827353) b!1239916))

(assert (= (and b!1239916 c!121144) b!1239917))

(assert (= (and b!1239916 (not c!121144)) b!1239918))

(assert (= (or b!1239917 b!1239918) bm!61119))

(declare-fun m!1143285 () Bool)

(assert (=> b!1239915 m!1143285))

(assert (=> b!1239915 m!1143285))

(declare-fun m!1143287 () Bool)

(assert (=> b!1239915 m!1143287))

(assert (=> b!1239916 m!1143285))

(assert (=> b!1239916 m!1143285))

(declare-fun m!1143289 () Bool)

(assert (=> b!1239916 m!1143289))

(assert (=> bm!61119 m!1143285))

(declare-fun m!1143295 () Bool)

(assert (=> bm!61119 m!1143295))

(assert (=> b!1239919 m!1143285))

(assert (=> b!1239919 m!1143285))

(assert (=> b!1239919 m!1143289))

(assert (=> b!1239784 d!136067))

(declare-fun d!136083 () Bool)

(declare-fun res!827371 () Bool)

(declare-fun e!702767 () Bool)

(assert (=> d!136083 (=> res!827371 e!702767)))

(assert (=> d!136083 (= res!827371 (= (select (arr!38526 a!3835) from!3213) k!2925))))

(assert (=> d!136083 (= (arrayContainsKey!0 a!3835 k!2925 from!3213) e!702767)))

(declare-fun b!1239936 () Bool)

(declare-fun e!702768 () Bool)

(assert (=> b!1239936 (= e!702767 e!702768)))

(declare-fun res!827372 () Bool)

(assert (=> b!1239936 (=> (not res!827372) (not e!702768))))

(assert (=> b!1239936 (= res!827372 (bvslt (bvadd from!3213 #b00000000000000000000000000000001) (size!39063 a!3835)))))

(declare-fun b!1239937 () Bool)

(assert (=> b!1239937 (= e!702768 (arrayContainsKey!0 a!3835 k!2925 (bvadd from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!136083 (not res!827371)) b!1239936))

(assert (= (and b!1239936 res!827372) b!1239937))

(assert (=> d!136083 m!1143285))

(declare-fun m!1143305 () Bool)

(assert (=> b!1239937 m!1143305))

(assert (=> b!1239782 d!136083))

(declare-fun d!136087 () Bool)

(declare-fun lt!561808 () Bool)

(assert (=> d!136087 (= lt!561808 (set.member k!2925 (content!607 acc!846)))))

(declare-fun e!702769 () Bool)

(assert (=> d!136087 (= lt!561808 e!702769)))

(declare-fun res!827373 () Bool)

(assert (=> d!136087 (=> (not res!827373) (not e!702769))))

(assert (=> d!136087 (= res!827373 (is-Cons!27473 acc!846))))

(assert (=> d!136087 (= (contains!7392 acc!846 k!2925) lt!561808)))

(declare-fun b!1239938 () Bool)

(declare-fun e!702770 () Bool)

(assert (=> b!1239938 (= e!702769 e!702770)))

(declare-fun res!827374 () Bool)

(assert (=> b!1239938 (=> res!827374 e!702770)))

(assert (=> b!1239938 (= res!827374 (= (h!28682 acc!846) k!2925))))

(declare-fun b!1239939 () Bool)

(assert (=> b!1239939 (= e!702770 (contains!7392 (t!40947 acc!846) k!2925))))

(assert (= (and d!136087 res!827373) b!1239938))

(assert (= (and b!1239938 (not res!827374)) b!1239939))

(assert (=> d!136087 m!1143255))

(declare-fun m!1143307 () Bool)

(assert (=> d!136087 m!1143307))

(declare-fun m!1143309 () Bool)

(assert (=> b!1239939 m!1143309))

(assert (=> b!1239783 d!136087))

(push 1)

(assert (not b!1239915))

(assert (not bm!61119))

(assert (not b!1239916))

(assert (not d!136059))

(assert (not b!1239937))

(assert (not b!1239869))

(assert (not d!136065))

(assert (not b!1239856))

(assert (not b!1239939))

(assert (not b!1239873))

(assert (not d!136087))

(assert (not b!1239855))

(assert (not b!1239919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136109 () Bool)

(declare-fun lt!561814 () Bool)

(assert (=> d!136109 (= lt!561814 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!607 (t!40947 acc!846))))))

(declare-fun e!702792 () Bool)

(assert (=> d!136109 (= lt!561814 e!702792)))

(declare-fun res!827392 () Bool)

(assert (=> d!136109 (=> (not res!827392) (not e!702792))))

(assert (=> d!136109 (= res!827392 (is-Cons!27473 (t!40947 acc!846)))))

(assert (=> d!136109 (= (contains!7392 (t!40947 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000) lt!561814)))

(declare-fun b!1239965 () Bool)

(declare-fun e!702793 () Bool)

(assert (=> b!1239965 (= e!702792 e!702793)))

(declare-fun res!827393 () Bool)

(assert (=> b!1239965 (=> res!827393 e!702793)))

(assert (=> b!1239965 (= res!827393 (= (h!28682 (t!40947 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239966 () Bool)

(assert (=> b!1239966 (= e!702793 (contains!7392 (t!40947 (t!40947 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136109 res!827392) b!1239965))

(assert (= (and b!1239965 (not res!827393)) b!1239966))

(declare-fun m!1143349 () Bool)

(assert (=> d!136109 m!1143349))

(declare-fun m!1143351 () Bool)

(assert (=> d!136109 m!1143351))

(declare-fun m!1143353 () Bool)

(assert (=> b!1239966 m!1143353))

(assert (=> b!1239873 d!136109))

(declare-fun d!136111 () Bool)

(declare-fun lt!561815 () Bool)

(assert (=> d!136111 (= lt!561815 (set.member (h!28682 acc!846) (content!607 (t!40947 acc!846))))))

(declare-fun e!702794 () Bool)

(assert (=> d!136111 (= lt!561815 e!702794)))

(declare-fun res!827394 () Bool)

(assert (=> d!136111 (=> (not res!827394) (not e!702794))))

(assert (=> d!136111 (= res!827394 (is-Cons!27473 (t!40947 acc!846)))))

(assert (=> d!136111 (= (contains!7392 (t!40947 acc!846) (h!28682 acc!846)) lt!561815)))

(declare-fun b!1239967 () Bool)

(declare-fun e!702795 () Bool)

(assert (=> b!1239967 (= e!702794 e!702795)))

(declare-fun res!827395 () Bool)

(assert (=> b!1239967 (=> res!827395 e!702795)))

(assert (=> b!1239967 (= res!827395 (= (h!28682 (t!40947 acc!846)) (h!28682 acc!846)))))

(declare-fun b!1239968 () Bool)

(assert (=> b!1239968 (= e!702795 (contains!7392 (t!40947 (t!40947 acc!846)) (h!28682 acc!846)))))

(assert (= (and d!136111 res!827394) b!1239967))

(assert (= (and b!1239967 (not res!827395)) b!1239968))

(assert (=> d!136111 m!1143349))

(declare-fun m!1143355 () Bool)

(assert (=> d!136111 m!1143355))

(declare-fun m!1143357 () Bool)

(assert (=> b!1239968 m!1143357))

(assert (=> b!1239855 d!136111))

(declare-fun d!136113 () Bool)

(declare-fun c!121151 () Bool)

(assert (=> d!136113 (= c!121151 (is-Nil!27474 acc!846))))

(declare-fun e!702798 () (Set (_ BitVec 64)))

(assert (=> d!136113 (= (content!607 acc!846) e!702798)))

(declare-fun b!1239973 () Bool)

(assert (=> b!1239973 (= e!702798 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1239974 () Bool)

(assert (=> b!1239974 (= e!702798 (set.union (set.insert (h!28682 acc!846) (as set.empty (Set (_ BitVec 64)))) (content!607 (t!40947 acc!846))))))

(assert (= (and d!136113 c!121151) b!1239973))

(assert (= (and d!136113 (not c!121151)) b!1239974))

(declare-fun m!1143359 () Bool)

(assert (=> b!1239974 m!1143359))

(assert (=> b!1239974 m!1143349))

(assert (=> d!136087 d!136113))

(declare-fun d!136115 () Bool)

(declare-fun res!827396 () Bool)

(declare-fun e!702799 () Bool)

(assert (=> d!136115 (=> res!827396 e!702799)))

(assert (=> d!136115 (= res!827396 (is-Nil!27474 (t!40947 acc!846)))))

(assert (=> d!136115 (= (noDuplicate!1999 (t!40947 acc!846)) e!702799)))

(declare-fun b!1239975 () Bool)

(declare-fun e!702800 () Bool)

(assert (=> b!1239975 (= e!702799 e!702800)))

(declare-fun res!827397 () Bool)

(assert (=> b!1239975 (=> (not res!827397) (not e!702800))))

(assert (=> b!1239975 (= res!827397 (not (contains!7392 (t!40947 (t!40947 acc!846)) (h!28682 (t!40947 acc!846)))))))

(declare-fun b!1239976 () Bool)

(assert (=> b!1239976 (= e!702800 (noDuplicate!1999 (t!40947 (t!40947 acc!846))))))

(assert (= (and d!136115 (not res!827396)) b!1239975))

(assert (= (and b!1239975 res!827397) b!1239976))

(declare-fun m!1143361 () Bool)

(assert (=> b!1239975 m!1143361))

(declare-fun m!1143363 () Bool)

(assert (=> b!1239976 m!1143363))

(assert (=> b!1239856 d!136115))

(assert (=> d!136065 d!136113))

(declare-fun d!136117 () Bool)

(declare-fun lt!561816 () Bool)

(assert (=> d!136117 (= lt!561816 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!607 (t!40947 acc!846))))))

(declare-fun e!702801 () Bool)

(assert (=> d!136117 (= lt!561816 e!702801)))

(declare-fun res!827398 () Bool)

(assert (=> d!136117 (=> (not res!827398) (not e!702801))))

(assert (=> d!136117 (= res!827398 (is-Cons!27473 (t!40947 acc!846)))))

(assert (=> d!136117 (= (contains!7392 (t!40947 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000) lt!561816)))

(declare-fun b!1239977 () Bool)

(declare-fun e!702802 () Bool)

(assert (=> b!1239977 (= e!702801 e!702802)))

(declare-fun res!827399 () Bool)

(assert (=> b!1239977 (=> res!827399 e!702802)))

(assert (=> b!1239977 (= res!827399 (= (h!28682 (t!40947 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239978 () Bool)

(assert (=> b!1239978 (= e!702802 (contains!7392 (t!40947 (t!40947 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136117 res!827398) b!1239977))

(assert (= (and b!1239977 (not res!827399)) b!1239978))

(assert (=> d!136117 m!1143349))

(declare-fun m!1143365 () Bool)

(assert (=> d!136117 m!1143365))

(declare-fun m!1143367 () Bool)

(assert (=> b!1239978 m!1143367))

(assert (=> b!1239869 d!136117))

(declare-fun d!136119 () Bool)

(assert (=> d!136119 (= (validKeyInArray!0 (select (arr!38526 a!3835) from!3213)) (and (not (= (select (arr!38526 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38526 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1239919 d!136119))

(assert (=> d!136059 d!136113))

(declare-fun d!136121 () Bool)

(declare-fun lt!561817 () Bool)

(assert (=> d!136121 (= lt!561817 (set.member k!2925 (content!607 (t!40947 acc!846))))))

(declare-fun e!702803 () Bool)

(assert (=> d!136121 (= lt!561817 e!702803)))

(declare-fun res!827400 () Bool)

(assert (=> d!136121 (=> (not res!827400) (not e!702803))))

(assert (=> d!136121 (= res!827400 (is-Cons!27473 (t!40947 acc!846)))))

(assert (=> d!136121 (= (contains!7392 (t!40947 acc!846) k!2925) lt!561817)))

(declare-fun b!1239979 () Bool)

(declare-fun e!702804 () Bool)

(assert (=> b!1239979 (= e!702803 e!702804)))

(declare-fun res!827401 () Bool)

(assert (=> b!1239979 (=> res!827401 e!702804)))

(assert (=> b!1239979 (= res!827401 (= (h!28682 (t!40947 acc!846)) k!2925))))

(declare-fun b!1239980 () Bool)

(assert (=> b!1239980 (= e!702804 (contains!7392 (t!40947 (t!40947 acc!846)) k!2925))))

(assert (= (and d!136121 res!827400) b!1239979))

(assert (= (and b!1239979 (not res!827401)) b!1239980))

(assert (=> d!136121 m!1143349))

(declare-fun m!1143369 () Bool)

(assert (=> d!136121 m!1143369))

(declare-fun m!1143371 () Bool)

(assert (=> b!1239980 m!1143371))

(assert (=> b!1239939 d!136121))

(declare-fun d!136123 () Bool)

(declare-fun res!827402 () Bool)

(declare-fun e!702805 () Bool)

(assert (=> d!136123 (=> res!827402 e!702805)))

(assert (=> d!136123 (= res!827402 (= (select (arr!38526 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) k!2925))))

(assert (=> d!136123 (= (arrayContainsKey!0 a!3835 k!2925 (bvadd from!3213 #b00000000000000000000000000000001)) e!702805)))

(declare-fun b!1239981 () Bool)

(declare-fun e!702806 () Bool)

(assert (=> b!1239981 (= e!702805 e!702806)))

(declare-fun res!827403 () Bool)

(assert (=> b!1239981 (=> (not res!827403) (not e!702806))))

(assert (=> b!1239981 (= res!827403 (bvslt (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!39063 a!3835)))))

(declare-fun b!1239982 () Bool)

(assert (=> b!1239982 (= e!702806 (arrayContainsKey!0 a!3835 k!2925 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!136123 (not res!827402)) b!1239981))

(assert (= (and b!1239981 res!827403) b!1239982))

(declare-fun m!1143373 () Bool)

(assert (=> d!136123 m!1143373))

(declare-fun m!1143375 () Bool)

(assert (=> b!1239982 m!1143375))

(assert (=> b!1239937 d!136123))

(assert (=> b!1239916 d!136119))

(declare-fun e!702810 () Bool)

(declare-fun b!1239983 () Bool)

(assert (=> b!1239983 (= e!702810 (contains!7392 (ite c!121144 (Cons!27473 (select (arr!38526 a!3835) from!3213) acc!846) acc!846) (select (arr!38526 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun d!136125 () Bool)

(declare-fun res!827406 () Bool)

(declare-fun e!702809 () Bool)

(assert (=> d!136125 (=> res!827406 e!702809)))

(assert (=> d!136125 (= res!827406 (bvsge (bvadd from!3213 #b00000000000000000000000000000001) (size!39063 a!3835)))))

(assert (=> d!136125 (= (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121144 (Cons!27473 (select (arr!38526 a!3835) from!3213) acc!846) acc!846)) e!702809)))

(declare-fun b!1239984 () Bool)

(declare-fun e!702807 () Bool)

(declare-fun e!702808 () Bool)

(assert (=> b!1239984 (= e!702807 e!702808)))

(declare-fun c!121152 () Bool)

(assert (=> b!1239984 (= c!121152 (validKeyInArray!0 (select (arr!38526 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun bm!61121 () Bool)

(declare-fun call!61124 () Bool)

(assert (=> bm!61121 (= call!61124 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121152 (Cons!27473 (select (arr!38526 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) (ite c!121144 (Cons!27473 (select (arr!38526 a!3835) from!3213) acc!846) acc!846)) (ite c!121144 (Cons!27473 (select (arr!38526 a!3835) from!3213) acc!846) acc!846))))))

(declare-fun b!1239985 () Bool)

(assert (=> b!1239985 (= e!702808 call!61124)))

(declare-fun b!1239986 () Bool)

(assert (=> b!1239986 (= e!702808 call!61124)))

(declare-fun b!1239987 () Bool)

(assert (=> b!1239987 (= e!702809 e!702807)))

(declare-fun res!827405 () Bool)

(assert (=> b!1239987 (=> (not res!827405) (not e!702807))))

(assert (=> b!1239987 (= res!827405 (not e!702810))))

(declare-fun res!827404 () Bool)

(assert (=> b!1239987 (=> (not res!827404) (not e!702810))))

(assert (=> b!1239987 (= res!827404 (validKeyInArray!0 (select (arr!38526 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(assert (= (and d!136125 (not res!827406)) b!1239987))

(assert (= (and b!1239987 res!827404) b!1239983))

(assert (= (and b!1239987 res!827405) b!1239984))

