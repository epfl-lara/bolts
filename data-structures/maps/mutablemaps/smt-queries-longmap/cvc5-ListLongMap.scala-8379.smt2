; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101950 () Bool)

(assert start!101950)

(declare-fun b!1227016 () Bool)

(declare-fun res!815766 () Bool)

(declare-fun e!696808 () Bool)

(assert (=> b!1227016 (=> (not res!815766) (not e!696808))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79199 0))(
  ( (array!79200 (arr!38220 (Array (_ BitVec 32) (_ BitVec 64))) (size!38757 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79199)

(assert (=> b!1227016 (= res!815766 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38757 a!3806)) (bvslt from!3184 (size!38757 a!3806))))))

(declare-fun b!1227017 () Bool)

(declare-fun res!815769 () Bool)

(assert (=> b!1227017 (=> (not res!815769) (not e!696808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227017 (= res!815769 (validKeyInArray!0 (select (arr!38220 a!3806) from!3184)))))

(declare-fun b!1227018 () Bool)

(declare-fun res!815765 () Bool)

(assert (=> b!1227018 (=> (not res!815765) (not e!696808))))

(declare-datatypes ((List!27171 0))(
  ( (Nil!27168) (Cons!27167 (h!28376 (_ BitVec 64)) (t!40641 List!27171)) )
))
(declare-fun acc!823 () List!27171)

(declare-fun noDuplicate!1693 (List!27171) Bool)

(assert (=> b!1227018 (= res!815765 (noDuplicate!1693 acc!823))))

(declare-fun b!1227019 () Bool)

(declare-fun res!815763 () Bool)

(declare-fun e!696805 () Bool)

(assert (=> b!1227019 (=> (not res!815763) (not e!696805))))

(declare-fun lt!558818 () List!27171)

(assert (=> b!1227019 (= res!815763 (noDuplicate!1693 lt!558818))))

(declare-fun b!1227020 () Bool)

(declare-fun e!696806 () Bool)

(declare-fun contains!7086 (List!27171 (_ BitVec 64)) Bool)

(assert (=> b!1227020 (= e!696806 (contains!7086 lt!558818 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!815767 () Bool)

(assert (=> start!101950 (=> (not res!815767) (not e!696808))))

(assert (=> start!101950 (= res!815767 (bvslt (size!38757 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101950 e!696808))

(declare-fun array_inv!28996 (array!79199) Bool)

(assert (=> start!101950 (array_inv!28996 a!3806)))

(assert (=> start!101950 true))

(declare-fun b!1227021 () Bool)

(declare-fun res!815768 () Bool)

(assert (=> b!1227021 (=> (not res!815768) (not e!696808))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227021 (= res!815768 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227022 () Bool)

(declare-fun res!815764 () Bool)

(assert (=> b!1227022 (=> (not res!815764) (not e!696808))))

(assert (=> b!1227022 (= res!815764 (not (contains!7086 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227023 () Bool)

(declare-fun res!815774 () Bool)

(assert (=> b!1227023 (=> (not res!815774) (not e!696808))))

(declare-fun arrayNoDuplicates!0 (array!79199 (_ BitVec 32) List!27171) Bool)

(assert (=> b!1227023 (= res!815774 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227024 () Bool)

(assert (=> b!1227024 (= e!696808 e!696805)))

(declare-fun res!815772 () Bool)

(assert (=> b!1227024 (=> (not res!815772) (not e!696805))))

(assert (=> b!1227024 (= res!815772 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1227024 (= lt!558818 (Cons!27167 (select (arr!38220 a!3806) from!3184) acc!823))))

(declare-fun b!1227025 () Bool)

(declare-fun res!815773 () Bool)

(assert (=> b!1227025 (=> (not res!815773) (not e!696808))))

(assert (=> b!1227025 (= res!815773 (not (contains!7086 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227026 () Bool)

(assert (=> b!1227026 (= e!696805 e!696806)))

(declare-fun res!815771 () Bool)

(assert (=> b!1227026 (=> res!815771 e!696806)))

(assert (=> b!1227026 (= res!815771 (contains!7086 lt!558818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227027 () Bool)

(declare-fun res!815770 () Bool)

(assert (=> b!1227027 (=> (not res!815770) (not e!696808))))

(assert (=> b!1227027 (= res!815770 (validKeyInArray!0 k!2913))))

(assert (= (and start!101950 res!815767) b!1227027))

(assert (= (and b!1227027 res!815770) b!1227016))

(assert (= (and b!1227016 res!815766) b!1227018))

(assert (= (and b!1227018 res!815765) b!1227025))

(assert (= (and b!1227025 res!815773) b!1227022))

(assert (= (and b!1227022 res!815764) b!1227021))

(assert (= (and b!1227021 res!815768) b!1227023))

(assert (= (and b!1227023 res!815774) b!1227017))

(assert (= (and b!1227017 res!815769) b!1227024))

(assert (= (and b!1227024 res!815772) b!1227019))

(assert (= (and b!1227019 res!815763) b!1227026))

(assert (= (and b!1227026 (not res!815771)) b!1227020))

(declare-fun m!1131929 () Bool)

(assert (=> b!1227027 m!1131929))

(declare-fun m!1131931 () Bool)

(assert (=> b!1227022 m!1131931))

(declare-fun m!1131933 () Bool)

(assert (=> start!101950 m!1131933))

(declare-fun m!1131935 () Bool)

(assert (=> b!1227017 m!1131935))

(assert (=> b!1227017 m!1131935))

(declare-fun m!1131937 () Bool)

(assert (=> b!1227017 m!1131937))

(assert (=> b!1227024 m!1131935))

(declare-fun m!1131939 () Bool)

(assert (=> b!1227019 m!1131939))

(declare-fun m!1131941 () Bool)

(assert (=> b!1227023 m!1131941))

(declare-fun m!1131943 () Bool)

(assert (=> b!1227026 m!1131943))

(declare-fun m!1131945 () Bool)

(assert (=> b!1227018 m!1131945))

(declare-fun m!1131947 () Bool)

(assert (=> b!1227025 m!1131947))

(declare-fun m!1131949 () Bool)

(assert (=> b!1227020 m!1131949))

(declare-fun m!1131951 () Bool)

(assert (=> b!1227021 m!1131951))

(push 1)

(assert (not start!101950))

(assert (not b!1227022))

(assert (not b!1227026))

(assert (not b!1227025))

(assert (not b!1227019))

(assert (not b!1227027))

(assert (not b!1227020))

(assert (not b!1227017))

(assert (not b!1227021))

(assert (not b!1227023))

(assert (not b!1227018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134057 () Bool)

(assert (=> d!134057 (= (array_inv!28996 a!3806) (bvsge (size!38757 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!101950 d!134057))

(declare-fun d!134059 () Bool)

(declare-fun lt!558833 () Bool)

(declare-fun content!556 (List!27171) (Set (_ BitVec 64)))

(assert (=> d!134059 (= lt!558833 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!556 lt!558818)))))

(declare-fun e!696872 () Bool)

(assert (=> d!134059 (= lt!558833 e!696872)))

(declare-fun res!815883 () Bool)

(assert (=> d!134059 (=> (not res!815883) (not e!696872))))

(assert (=> d!134059 (= res!815883 (is-Cons!27167 lt!558818))))

(assert (=> d!134059 (= (contains!7086 lt!558818 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558833)))

(declare-fun b!1227140 () Bool)

(declare-fun e!696871 () Bool)

(assert (=> b!1227140 (= e!696872 e!696871)))

(declare-fun res!815884 () Bool)

(assert (=> b!1227140 (=> res!815884 e!696871)))

(assert (=> b!1227140 (= res!815884 (= (h!28376 lt!558818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227141 () Bool)

(assert (=> b!1227141 (= e!696871 (contains!7086 (t!40641 lt!558818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134059 res!815883) b!1227140))

(assert (= (and b!1227140 (not res!815884)) b!1227141))

(declare-fun m!1132025 () Bool)

(assert (=> d!134059 m!1132025))

(declare-fun m!1132027 () Bool)

(assert (=> d!134059 m!1132027))

(declare-fun m!1132029 () Bool)

(assert (=> b!1227141 m!1132029))

(assert (=> b!1227020 d!134059))

(declare-fun d!134063 () Bool)

(declare-fun lt!558834 () Bool)

(assert (=> d!134063 (= lt!558834 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!556 lt!558818)))))

(declare-fun e!696874 () Bool)

(assert (=> d!134063 (= lt!558834 e!696874)))

(declare-fun res!815885 () Bool)

(assert (=> d!134063 (=> (not res!815885) (not e!696874))))

(assert (=> d!134063 (= res!815885 (is-Cons!27167 lt!558818))))

(assert (=> d!134063 (= (contains!7086 lt!558818 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558834)))

(declare-fun b!1227142 () Bool)

(declare-fun e!696873 () Bool)

(assert (=> b!1227142 (= e!696874 e!696873)))

(declare-fun res!815886 () Bool)

(assert (=> b!1227142 (=> res!815886 e!696873)))

(assert (=> b!1227142 (= res!815886 (= (h!28376 lt!558818) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227143 () Bool)

(assert (=> b!1227143 (= e!696873 (contains!7086 (t!40641 lt!558818) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134063 res!815885) b!1227142))

(assert (= (and b!1227142 (not res!815886)) b!1227143))

(assert (=> d!134063 m!1132025))

(declare-fun m!1132031 () Bool)

(assert (=> d!134063 m!1132031))

(declare-fun m!1132033 () Bool)

(assert (=> b!1227143 m!1132033))

(assert (=> b!1227026 d!134063))

(declare-fun d!134065 () Bool)

(declare-fun res!815902 () Bool)

(declare-fun e!696891 () Bool)

(assert (=> d!134065 (=> res!815902 e!696891)))

(assert (=> d!134065 (= res!815902 (= (select (arr!38220 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134065 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696891)))

(declare-fun b!1227161 () Bool)

(declare-fun e!696892 () Bool)

(assert (=> b!1227161 (= e!696891 e!696892)))

(declare-fun res!815903 () Bool)

(assert (=> b!1227161 (=> (not res!815903) (not e!696892))))

(assert (=> b!1227161 (= res!815903 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38757 a!3806)))))

(declare-fun b!1227162 () Bool)

(assert (=> b!1227162 (= e!696892 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134065 (not res!815902)) b!1227161))

(assert (= (and b!1227161 res!815903) b!1227162))

(declare-fun m!1132049 () Bool)

(assert (=> d!134065 m!1132049))

(declare-fun m!1132051 () Bool)

(assert (=> b!1227162 m!1132051))

(assert (=> b!1227021 d!134065))

(declare-fun d!134073 () Bool)

(declare-fun res!815916 () Bool)

(declare-fun e!696905 () Bool)

(assert (=> d!134073 (=> res!815916 e!696905)))

(assert (=> d!134073 (= res!815916 (is-Nil!27168 lt!558818))))

(assert (=> d!134073 (= (noDuplicate!1693 lt!558818) e!696905)))

(declare-fun b!1227175 () Bool)

(declare-fun e!696906 () Bool)

(assert (=> b!1227175 (= e!696905 e!696906)))

(declare-fun res!815917 () Bool)

(assert (=> b!1227175 (=> (not res!815917) (not e!696906))))

(assert (=> b!1227175 (= res!815917 (not (contains!7086 (t!40641 lt!558818) (h!28376 lt!558818))))))

(declare-fun b!1227176 () Bool)

(assert (=> b!1227176 (= e!696906 (noDuplicate!1693 (t!40641 lt!558818)))))

(assert (= (and d!134073 (not res!815916)) b!1227175))

(assert (= (and b!1227175 res!815917) b!1227176))

(declare-fun m!1132061 () Bool)

(assert (=> b!1227175 m!1132061))

(declare-fun m!1132063 () Bool)

(assert (=> b!1227176 m!1132063))

(assert (=> b!1227019 d!134073))

(declare-fun d!134085 () Bool)

(declare-fun lt!558837 () Bool)

(assert (=> d!134085 (= lt!558837 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!556 acc!823)))))

(declare-fun e!696910 () Bool)

(assert (=> d!134085 (= lt!558837 e!696910)))

(declare-fun res!815920 () Bool)

(assert (=> d!134085 (=> (not res!815920) (not e!696910))))

(assert (=> d!134085 (= res!815920 (is-Cons!27167 acc!823))))

(assert (=> d!134085 (= (contains!7086 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558837)))

(declare-fun b!1227179 () Bool)

(declare-fun e!696909 () Bool)

(assert (=> b!1227179 (= e!696910 e!696909)))

(declare-fun res!815921 () Bool)

(assert (=> b!1227179 (=> res!815921 e!696909)))

(assert (=> b!1227179 (= res!815921 (= (h!28376 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227180 () Bool)

(assert (=> b!1227180 (= e!696909 (contains!7086 (t!40641 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134085 res!815920) b!1227179))

(assert (= (and b!1227179 (not res!815921)) b!1227180))

(declare-fun m!1132065 () Bool)

(assert (=> d!134085 m!1132065))

(declare-fun m!1132069 () Bool)

(assert (=> d!134085 m!1132069))

(declare-fun m!1132073 () Bool)

(assert (=> b!1227180 m!1132073))

(assert (=> b!1227025 d!134085))

(declare-fun b!1227212 () Bool)

(declare-fun e!696938 () Bool)

(declare-fun e!696939 () Bool)

(assert (=> b!1227212 (= e!696938 e!696939)))

(declare-fun c!120497 () Bool)

(assert (=> b!1227212 (= c!120497 (validKeyInArray!0 (select (arr!38220 a!3806) from!3184)))))

(declare-fun e!696940 () Bool)

(declare-fun b!1227213 () Bool)

(assert (=> b!1227213 (= e!696940 (contains!7086 acc!823 (select (arr!38220 a!3806) from!3184)))))

(declare-fun call!60806 () Bool)

(declare-fun bm!60803 () Bool)

(assert (=> bm!60803 (= call!60806 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120497 (Cons!27167 (select (arr!38220 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun d!134089 () Bool)

(declare-fun res!815943 () Bool)

(declare-fun e!696937 () Bool)

(assert (=> d!134089 (=> res!815943 e!696937)))

(assert (=> d!134089 (= res!815943 (bvsge from!3184 (size!38757 a!3806)))))

(assert (=> d!134089 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!696937)))

(declare-fun b!1227214 () Bool)

(assert (=> b!1227214 (= e!696937 e!696938)))

(declare-fun res!815945 () Bool)

(assert (=> b!1227214 (=> (not res!815945) (not e!696938))))

(assert (=> b!1227214 (= res!815945 (not e!696940))))

(declare-fun res!815944 () Bool)

(assert (=> b!1227214 (=> (not res!815944) (not e!696940))))

(assert (=> b!1227214 (= res!815944 (validKeyInArray!0 (select (arr!38220 a!3806) from!3184)))))

(declare-fun b!1227215 () Bool)

(assert (=> b!1227215 (= e!696939 call!60806)))

(declare-fun b!1227216 () Bool)

(assert (=> b!1227216 (= e!696939 call!60806)))

(assert (= (and d!134089 (not res!815943)) b!1227214))

(assert (= (and b!1227214 res!815944) b!1227213))

(assert (= (and b!1227214 res!815945) b!1227212))

(assert (= (and b!1227212 c!120497) b!1227216))

(assert (= (and b!1227212 (not c!120497)) b!1227215))

(assert (= (or b!1227216 b!1227215) bm!60803))

(assert (=> b!1227212 m!1131935))

(assert (=> b!1227212 m!1131935))

(assert (=> b!1227212 m!1131937))

(assert (=> b!1227213 m!1131935))

(assert (=> b!1227213 m!1131935))

(declare-fun m!1132097 () Bool)

(assert (=> b!1227213 m!1132097))

(assert (=> bm!60803 m!1131935))

(declare-fun m!1132099 () Bool)

(assert (=> bm!60803 m!1132099))

(assert (=> b!1227214 m!1131935))

(assert (=> b!1227214 m!1131935))

(assert (=> b!1227214 m!1131937))

(assert (=> b!1227023 d!134089))

(declare-fun d!134101 () Bool)

(declare-fun res!815948 () Bool)

(declare-fun e!696943 () Bool)

(assert (=> d!134101 (=> res!815948 e!696943)))

(assert (=> d!134101 (= res!815948 (is-Nil!27168 acc!823))))

(assert (=> d!134101 (= (noDuplicate!1693 acc!823) e!696943)))

(declare-fun b!1227219 () Bool)

(declare-fun e!696944 () Bool)

(assert (=> b!1227219 (= e!696943 e!696944)))

(declare-fun res!815949 () Bool)

(assert (=> b!1227219 (=> (not res!815949) (not e!696944))))

(assert (=> b!1227219 (= res!815949 (not (contains!7086 (t!40641 acc!823) (h!28376 acc!823))))))

(declare-fun b!1227220 () Bool)

(assert (=> b!1227220 (= e!696944 (noDuplicate!1693 (t!40641 acc!823)))))

(assert (= (and d!134101 (not res!815948)) b!1227219))

