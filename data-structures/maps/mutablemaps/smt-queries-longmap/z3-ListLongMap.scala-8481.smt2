; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103394 () Bool)

(assert start!103394)

(declare-fun b!1239801 () Bool)

(declare-fun res!827258 () Bool)

(declare-fun e!702662 () Bool)

(assert (=> b!1239801 (=> (not res!827258) (not e!702662))))

(declare-datatypes ((List!27478 0))(
  ( (Nil!27475) (Cons!27474 (h!28683 (_ BitVec 64)) (t!40948 List!27478)) )
))
(declare-fun acc!846 () List!27478)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7393 (List!27478 (_ BitVec 64)) Bool)

(assert (=> b!1239801 (= res!827258 (contains!7393 acc!846 k0!2925))))

(declare-fun b!1239802 () Bool)

(declare-fun res!827260 () Bool)

(assert (=> b!1239802 (=> (not res!827260) (not e!702662))))

(declare-fun noDuplicate!2000 (List!27478) Bool)

(assert (=> b!1239802 (= res!827260 (noDuplicate!2000 acc!846))))

(declare-fun b!1239803 () Bool)

(declare-fun res!827259 () Bool)

(assert (=> b!1239803 (=> (not res!827259) (not e!702662))))

(declare-datatypes ((array!79864 0))(
  ( (array!79865 (arr!38527 (Array (_ BitVec 32) (_ BitVec 64))) (size!39064 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79864)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79864 (_ BitVec 32) List!27478) Bool)

(assert (=> b!1239803 (= res!827259 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239804 () Bool)

(declare-fun arrayContainsKey!0 (array!79864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239804 (= e!702662 (arrayContainsKey!0 a!3835 k0!2925 from!3213))))

(declare-fun b!1239805 () Bool)

(declare-fun res!827255 () Bool)

(assert (=> b!1239805 (=> (not res!827255) (not e!702662))))

(assert (=> b!1239805 (= res!827255 (= from!3213 (bvsub (size!39064 a!3835) #b00000000000000000000000000000001)))))

(declare-fun b!1239806 () Bool)

(declare-fun res!827257 () Bool)

(assert (=> b!1239806 (=> (not res!827257) (not e!702662))))

(assert (=> b!1239806 (= res!827257 (not (contains!7393 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!827254 () Bool)

(assert (=> start!103394 (=> (not res!827254) (not e!702662))))

(assert (=> start!103394 (= res!827254 (and (bvslt (size!39064 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39064 a!3835))))))

(assert (=> start!103394 e!702662))

(declare-fun array_inv!29303 (array!79864) Bool)

(assert (=> start!103394 (array_inv!29303 a!3835)))

(assert (=> start!103394 true))

(declare-fun b!1239807 () Bool)

(declare-fun res!827256 () Bool)

(assert (=> b!1239807 (=> (not res!827256) (not e!702662))))

(assert (=> b!1239807 (= res!827256 (not (contains!7393 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103394 res!827254) b!1239802))

(assert (= (and b!1239802 res!827260) b!1239806))

(assert (= (and b!1239806 res!827257) b!1239807))

(assert (= (and b!1239807 res!827256) b!1239803))

(assert (= (and b!1239803 res!827259) b!1239801))

(assert (= (and b!1239801 res!827258) b!1239805))

(assert (= (and b!1239805 res!827255) b!1239804))

(declare-fun m!1143199 () Bool)

(assert (=> b!1239802 m!1143199))

(declare-fun m!1143201 () Bool)

(assert (=> b!1239804 m!1143201))

(declare-fun m!1143203 () Bool)

(assert (=> b!1239807 m!1143203))

(declare-fun m!1143205 () Bool)

(assert (=> b!1239803 m!1143205))

(declare-fun m!1143207 () Bool)

(assert (=> start!103394 m!1143207))

(declare-fun m!1143209 () Bool)

(assert (=> b!1239806 m!1143209))

(declare-fun m!1143211 () Bool)

(assert (=> b!1239801 m!1143211))

(check-sat (not b!1239806) (not b!1239801) (not b!1239807) (not b!1239804) (not b!1239803) (not b!1239802) (not start!103394))
(check-sat)
(get-model)

(declare-fun d!136047 () Bool)

(declare-fun lt!561796 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!605 (List!27478) (InoxSet (_ BitVec 64)))

(assert (=> d!136047 (= lt!561796 (select (content!605 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702673 () Bool)

(assert (=> d!136047 (= lt!561796 e!702673)))

(declare-fun res!827287 () Bool)

(assert (=> d!136047 (=> (not res!827287) (not e!702673))))

(get-info :version)

(assert (=> d!136047 (= res!827287 ((_ is Cons!27474) acc!846))))

(assert (=> d!136047 (= (contains!7393 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561796)))

(declare-fun b!1239833 () Bool)

(declare-fun e!702674 () Bool)

(assert (=> b!1239833 (= e!702673 e!702674)))

(declare-fun res!827286 () Bool)

(assert (=> b!1239833 (=> res!827286 e!702674)))

(assert (=> b!1239833 (= res!827286 (= (h!28683 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239834 () Bool)

(assert (=> b!1239834 (= e!702674 (contains!7393 (t!40948 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136047 res!827287) b!1239833))

(assert (= (and b!1239833 (not res!827286)) b!1239834))

(declare-fun m!1143227 () Bool)

(assert (=> d!136047 m!1143227))

(declare-fun m!1143229 () Bool)

(assert (=> d!136047 m!1143229))

(declare-fun m!1143231 () Bool)

(assert (=> b!1239834 m!1143231))

(assert (=> b!1239806 d!136047))

(declare-fun d!136049 () Bool)

(declare-fun lt!561797 () Bool)

(assert (=> d!136049 (= lt!561797 (select (content!605 acc!846) k0!2925))))

(declare-fun e!702675 () Bool)

(assert (=> d!136049 (= lt!561797 e!702675)))

(declare-fun res!827289 () Bool)

(assert (=> d!136049 (=> (not res!827289) (not e!702675))))

(assert (=> d!136049 (= res!827289 ((_ is Cons!27474) acc!846))))

(assert (=> d!136049 (= (contains!7393 acc!846 k0!2925) lt!561797)))

(declare-fun b!1239835 () Bool)

(declare-fun e!702676 () Bool)

(assert (=> b!1239835 (= e!702675 e!702676)))

(declare-fun res!827288 () Bool)

(assert (=> b!1239835 (=> res!827288 e!702676)))

(assert (=> b!1239835 (= res!827288 (= (h!28683 acc!846) k0!2925))))

(declare-fun b!1239836 () Bool)

(assert (=> b!1239836 (= e!702676 (contains!7393 (t!40948 acc!846) k0!2925))))

(assert (= (and d!136049 res!827289) b!1239835))

(assert (= (and b!1239835 (not res!827288)) b!1239836))

(assert (=> d!136049 m!1143227))

(declare-fun m!1143233 () Bool)

(assert (=> d!136049 m!1143233))

(declare-fun m!1143235 () Bool)

(assert (=> b!1239836 m!1143235))

(assert (=> b!1239801 d!136049))

(declare-fun b!1239861 () Bool)

(declare-fun e!702702 () Bool)

(declare-fun e!702699 () Bool)

(assert (=> b!1239861 (= e!702702 e!702699)))

(declare-fun c!121138 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239861 (= c!121138 (validKeyInArray!0 (select (arr!38527 a!3835) from!3213)))))

(declare-fun b!1239862 () Bool)

(declare-fun call!61116 () Bool)

(assert (=> b!1239862 (= e!702699 call!61116)))

(declare-fun b!1239863 () Bool)

(assert (=> b!1239863 (= e!702699 call!61116)))

(declare-fun bm!61113 () Bool)

(assert (=> bm!61113 (= call!61116 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121138 (Cons!27474 (select (arr!38527 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1239865 () Bool)

(declare-fun e!702701 () Bool)

(assert (=> b!1239865 (= e!702701 e!702702)))

(declare-fun res!827311 () Bool)

(assert (=> b!1239865 (=> (not res!827311) (not e!702702))))

(declare-fun e!702700 () Bool)

(assert (=> b!1239865 (= res!827311 (not e!702700))))

(declare-fun res!827312 () Bool)

(assert (=> b!1239865 (=> (not res!827312) (not e!702700))))

(assert (=> b!1239865 (= res!827312 (validKeyInArray!0 (select (arr!38527 a!3835) from!3213)))))

(declare-fun d!136051 () Bool)

(declare-fun res!827310 () Bool)

(assert (=> d!136051 (=> res!827310 e!702701)))

(assert (=> d!136051 (= res!827310 (bvsge from!3213 (size!39064 a!3835)))))

(assert (=> d!136051 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702701)))

(declare-fun b!1239864 () Bool)

(assert (=> b!1239864 (= e!702700 (contains!7393 acc!846 (select (arr!38527 a!3835) from!3213)))))

(assert (= (and d!136051 (not res!827310)) b!1239865))

(assert (= (and b!1239865 res!827312) b!1239864))

(assert (= (and b!1239865 res!827311) b!1239861))

(assert (= (and b!1239861 c!121138) b!1239863))

(assert (= (and b!1239861 (not c!121138)) b!1239862))

(assert (= (or b!1239863 b!1239862) bm!61113))

(declare-fun m!1143247 () Bool)

(assert (=> b!1239861 m!1143247))

(assert (=> b!1239861 m!1143247))

(declare-fun m!1143249 () Bool)

(assert (=> b!1239861 m!1143249))

(assert (=> bm!61113 m!1143247))

(declare-fun m!1143251 () Bool)

(assert (=> bm!61113 m!1143251))

(assert (=> b!1239865 m!1143247))

(assert (=> b!1239865 m!1143247))

(assert (=> b!1239865 m!1143249))

(assert (=> b!1239864 m!1143247))

(assert (=> b!1239864 m!1143247))

(declare-fun m!1143253 () Bool)

(assert (=> b!1239864 m!1143253))

(assert (=> b!1239803 d!136051))

(declare-fun d!136063 () Bool)

(declare-fun res!827329 () Bool)

(declare-fun e!702721 () Bool)

(assert (=> d!136063 (=> res!827329 e!702721)))

(assert (=> d!136063 (= res!827329 (= (select (arr!38527 a!3835) from!3213) k0!2925))))

(assert (=> d!136063 (= (arrayContainsKey!0 a!3835 k0!2925 from!3213) e!702721)))

(declare-fun b!1239886 () Bool)

(declare-fun e!702722 () Bool)

(assert (=> b!1239886 (= e!702721 e!702722)))

(declare-fun res!827330 () Bool)

(assert (=> b!1239886 (=> (not res!827330) (not e!702722))))

(assert (=> b!1239886 (= res!827330 (bvslt (bvadd from!3213 #b00000000000000000000000000000001) (size!39064 a!3835)))))

(declare-fun b!1239887 () Bool)

(assert (=> b!1239887 (= e!702722 (arrayContainsKey!0 a!3835 k0!2925 (bvadd from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!136063 (not res!827329)) b!1239886))

(assert (= (and b!1239886 res!827330) b!1239887))

(assert (=> d!136063 m!1143247))

(declare-fun m!1143265 () Bool)

(assert (=> b!1239887 m!1143265))

(assert (=> b!1239804 d!136063))

(declare-fun d!136069 () Bool)

(assert (=> d!136069 (= (array_inv!29303 a!3835) (bvsge (size!39064 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103394 d!136069))

(declare-fun d!136071 () Bool)

(declare-fun lt!561805 () Bool)

(assert (=> d!136071 (= lt!561805 (select (content!605 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702723 () Bool)

(assert (=> d!136071 (= lt!561805 e!702723)))

(declare-fun res!827332 () Bool)

(assert (=> d!136071 (=> (not res!827332) (not e!702723))))

(assert (=> d!136071 (= res!827332 ((_ is Cons!27474) acc!846))))

(assert (=> d!136071 (= (contains!7393 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561805)))

(declare-fun b!1239888 () Bool)

(declare-fun e!702724 () Bool)

(assert (=> b!1239888 (= e!702723 e!702724)))

(declare-fun res!827331 () Bool)

(assert (=> b!1239888 (=> res!827331 e!702724)))

(assert (=> b!1239888 (= res!827331 (= (h!28683 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239889 () Bool)

(assert (=> b!1239889 (= e!702724 (contains!7393 (t!40948 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136071 res!827332) b!1239888))

(assert (= (and b!1239888 (not res!827331)) b!1239889))

(assert (=> d!136071 m!1143227))

(declare-fun m!1143267 () Bool)

(assert (=> d!136071 m!1143267))

(declare-fun m!1143269 () Bool)

(assert (=> b!1239889 m!1143269))

(assert (=> b!1239807 d!136071))

(declare-fun d!136073 () Bool)

(declare-fun res!827346 () Bool)

(declare-fun e!702741 () Bool)

(assert (=> d!136073 (=> res!827346 e!702741)))

(assert (=> d!136073 (= res!827346 ((_ is Nil!27475) acc!846))))

(assert (=> d!136073 (= (noDuplicate!2000 acc!846) e!702741)))

(declare-fun b!1239909 () Bool)

(declare-fun e!702742 () Bool)

(assert (=> b!1239909 (= e!702741 e!702742)))

(declare-fun res!827347 () Bool)

(assert (=> b!1239909 (=> (not res!827347) (not e!702742))))

(assert (=> b!1239909 (= res!827347 (not (contains!7393 (t!40948 acc!846) (h!28683 acc!846))))))

(declare-fun b!1239910 () Bool)

(assert (=> b!1239910 (= e!702742 (noDuplicate!2000 (t!40948 acc!846)))))

(assert (= (and d!136073 (not res!827346)) b!1239909))

(assert (= (and b!1239909 res!827347) b!1239910))

(declare-fun m!1143279 () Bool)

(assert (=> b!1239909 m!1143279))

(declare-fun m!1143281 () Bool)

(assert (=> b!1239910 m!1143281))

(assert (=> b!1239802 d!136073))

(check-sat (not d!136071) (not bm!61113) (not d!136049) (not b!1239910) (not b!1239887) (not b!1239836) (not b!1239834) (not b!1239861) (not b!1239864) (not b!1239865) (not d!136047) (not b!1239909) (not b!1239889))
(check-sat)
(get-model)

(declare-fun d!136089 () Bool)

(declare-fun res!827375 () Bool)

(declare-fun e!702771 () Bool)

(assert (=> d!136089 (=> res!827375 e!702771)))

(assert (=> d!136089 (= res!827375 (= (select (arr!38527 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) k0!2925))))

(assert (=> d!136089 (= (arrayContainsKey!0 a!3835 k0!2925 (bvadd from!3213 #b00000000000000000000000000000001)) e!702771)))

(declare-fun b!1239940 () Bool)

(declare-fun e!702772 () Bool)

(assert (=> b!1239940 (= e!702771 e!702772)))

(declare-fun res!827376 () Bool)

(assert (=> b!1239940 (=> (not res!827376) (not e!702772))))

(assert (=> b!1239940 (= res!827376 (bvslt (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!39064 a!3835)))))

(declare-fun b!1239941 () Bool)

(assert (=> b!1239941 (= e!702772 (arrayContainsKey!0 a!3835 k0!2925 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!136089 (not res!827375)) b!1239940))

(assert (= (and b!1239940 res!827376) b!1239941))

(declare-fun m!1143311 () Bool)

(assert (=> d!136089 m!1143311))

(declare-fun m!1143313 () Bool)

(assert (=> b!1239941 m!1143313))

(assert (=> b!1239887 d!136089))

(declare-fun d!136091 () Bool)

(declare-fun lt!561809 () Bool)

(assert (=> d!136091 (= lt!561809 (select (content!605 (t!40948 acc!846)) (h!28683 acc!846)))))

(declare-fun e!702773 () Bool)

(assert (=> d!136091 (= lt!561809 e!702773)))

(declare-fun res!827378 () Bool)

(assert (=> d!136091 (=> (not res!827378) (not e!702773))))

(assert (=> d!136091 (= res!827378 ((_ is Cons!27474) (t!40948 acc!846)))))

(assert (=> d!136091 (= (contains!7393 (t!40948 acc!846) (h!28683 acc!846)) lt!561809)))

(declare-fun b!1239942 () Bool)

(declare-fun e!702774 () Bool)

(assert (=> b!1239942 (= e!702773 e!702774)))

(declare-fun res!827377 () Bool)

(assert (=> b!1239942 (=> res!827377 e!702774)))

(assert (=> b!1239942 (= res!827377 (= (h!28683 (t!40948 acc!846)) (h!28683 acc!846)))))

(declare-fun b!1239943 () Bool)

(assert (=> b!1239943 (= e!702774 (contains!7393 (t!40948 (t!40948 acc!846)) (h!28683 acc!846)))))

(assert (= (and d!136091 res!827378) b!1239942))

(assert (= (and b!1239942 (not res!827377)) b!1239943))

(declare-fun m!1143315 () Bool)

(assert (=> d!136091 m!1143315))

(declare-fun m!1143317 () Bool)

(assert (=> d!136091 m!1143317))

(declare-fun m!1143319 () Bool)

(assert (=> b!1239943 m!1143319))

(assert (=> b!1239909 d!136091))

(declare-fun d!136093 () Bool)

(declare-fun c!121147 () Bool)

(assert (=> d!136093 (= c!121147 ((_ is Nil!27475) acc!846))))

(declare-fun e!702777 () (InoxSet (_ BitVec 64)))

(assert (=> d!136093 (= (content!605 acc!846) e!702777)))

(declare-fun b!1239948 () Bool)

(assert (=> b!1239948 (= e!702777 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1239949 () Bool)

(assert (=> b!1239949 (= e!702777 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28683 acc!846) true) (content!605 (t!40948 acc!846))))))

(assert (= (and d!136093 c!121147) b!1239948))

(assert (= (and d!136093 (not c!121147)) b!1239949))

(declare-fun m!1143321 () Bool)

(assert (=> b!1239949 m!1143321))

(assert (=> b!1239949 m!1143315))

(assert (=> d!136047 d!136093))

(assert (=> d!136071 d!136093))

(assert (=> d!136049 d!136093))

(declare-fun b!1239950 () Bool)

(declare-fun e!702781 () Bool)

(declare-fun e!702778 () Bool)

(assert (=> b!1239950 (= e!702781 e!702778)))

(declare-fun c!121148 () Bool)

(assert (=> b!1239950 (= c!121148 (validKeyInArray!0 (select (arr!38527 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun b!1239951 () Bool)

(declare-fun call!61123 () Bool)

(assert (=> b!1239951 (= e!702778 call!61123)))

(declare-fun b!1239952 () Bool)

(assert (=> b!1239952 (= e!702778 call!61123)))

(declare-fun bm!61120 () Bool)

(assert (=> bm!61120 (= call!61123 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121148 (Cons!27474 (select (arr!38527 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) (ite c!121138 (Cons!27474 (select (arr!38527 a!3835) from!3213) acc!846) acc!846)) (ite c!121138 (Cons!27474 (select (arr!38527 a!3835) from!3213) acc!846) acc!846))))))

(declare-fun b!1239954 () Bool)

(declare-fun e!702780 () Bool)

(assert (=> b!1239954 (= e!702780 e!702781)))

(declare-fun res!827380 () Bool)

(assert (=> b!1239954 (=> (not res!827380) (not e!702781))))

(declare-fun e!702779 () Bool)

(assert (=> b!1239954 (= res!827380 (not e!702779))))

(declare-fun res!827381 () Bool)

(assert (=> b!1239954 (=> (not res!827381) (not e!702779))))

(assert (=> b!1239954 (= res!827381 (validKeyInArray!0 (select (arr!38527 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun d!136095 () Bool)

(declare-fun res!827379 () Bool)

(assert (=> d!136095 (=> res!827379 e!702780)))

(assert (=> d!136095 (= res!827379 (bvsge (bvadd from!3213 #b00000000000000000000000000000001) (size!39064 a!3835)))))

(assert (=> d!136095 (= (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121138 (Cons!27474 (select (arr!38527 a!3835) from!3213) acc!846) acc!846)) e!702780)))

(declare-fun b!1239953 () Bool)

(assert (=> b!1239953 (= e!702779 (contains!7393 (ite c!121138 (Cons!27474 (select (arr!38527 a!3835) from!3213) acc!846) acc!846) (select (arr!38527 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(assert (= (and d!136095 (not res!827379)) b!1239954))

(assert (= (and b!1239954 res!827381) b!1239953))

(assert (= (and b!1239954 res!827380) b!1239950))

(assert (= (and b!1239950 c!121148) b!1239952))

(assert (= (and b!1239950 (not c!121148)) b!1239951))

(assert (= (or b!1239952 b!1239951) bm!61120))

(assert (=> b!1239950 m!1143311))

(assert (=> b!1239950 m!1143311))

(declare-fun m!1143323 () Bool)

(assert (=> b!1239950 m!1143323))

(assert (=> bm!61120 m!1143311))

(declare-fun m!1143325 () Bool)

(assert (=> bm!61120 m!1143325))

(assert (=> b!1239954 m!1143311))

(assert (=> b!1239954 m!1143311))

(assert (=> b!1239954 m!1143323))

(assert (=> b!1239953 m!1143311))

(assert (=> b!1239953 m!1143311))

(declare-fun m!1143327 () Bool)

(assert (=> b!1239953 m!1143327))

(assert (=> bm!61113 d!136095))

(declare-fun d!136097 () Bool)

(assert (=> d!136097 (= (validKeyInArray!0 (select (arr!38527 a!3835) from!3213)) (and (not (= (select (arr!38527 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38527 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1239865 d!136097))

(declare-fun d!136099 () Bool)

(declare-fun lt!561810 () Bool)

(assert (=> d!136099 (= lt!561810 (select (content!605 (t!40948 acc!846)) k0!2925))))

(declare-fun e!702782 () Bool)

(assert (=> d!136099 (= lt!561810 e!702782)))

(declare-fun res!827383 () Bool)

(assert (=> d!136099 (=> (not res!827383) (not e!702782))))

(assert (=> d!136099 (= res!827383 ((_ is Cons!27474) (t!40948 acc!846)))))

(assert (=> d!136099 (= (contains!7393 (t!40948 acc!846) k0!2925) lt!561810)))

(declare-fun b!1239955 () Bool)

(declare-fun e!702783 () Bool)

(assert (=> b!1239955 (= e!702782 e!702783)))

(declare-fun res!827382 () Bool)

(assert (=> b!1239955 (=> res!827382 e!702783)))

(assert (=> b!1239955 (= res!827382 (= (h!28683 (t!40948 acc!846)) k0!2925))))

(declare-fun b!1239956 () Bool)

(assert (=> b!1239956 (= e!702783 (contains!7393 (t!40948 (t!40948 acc!846)) k0!2925))))

(assert (= (and d!136099 res!827383) b!1239955))

(assert (= (and b!1239955 (not res!827382)) b!1239956))

(assert (=> d!136099 m!1143315))

(declare-fun m!1143329 () Bool)

(assert (=> d!136099 m!1143329))

(declare-fun m!1143331 () Bool)

(assert (=> b!1239956 m!1143331))

(assert (=> b!1239836 d!136099))

(declare-fun lt!561811 () Bool)

(declare-fun d!136101 () Bool)

(assert (=> d!136101 (= lt!561811 (select (content!605 acc!846) (select (arr!38527 a!3835) from!3213)))))

(declare-fun e!702784 () Bool)

(assert (=> d!136101 (= lt!561811 e!702784)))

(declare-fun res!827385 () Bool)

(assert (=> d!136101 (=> (not res!827385) (not e!702784))))

(assert (=> d!136101 (= res!827385 ((_ is Cons!27474) acc!846))))

(assert (=> d!136101 (= (contains!7393 acc!846 (select (arr!38527 a!3835) from!3213)) lt!561811)))

(declare-fun b!1239957 () Bool)

(declare-fun e!702785 () Bool)

(assert (=> b!1239957 (= e!702784 e!702785)))

(declare-fun res!827384 () Bool)

(assert (=> b!1239957 (=> res!827384 e!702785)))

(assert (=> b!1239957 (= res!827384 (= (h!28683 acc!846) (select (arr!38527 a!3835) from!3213)))))

(declare-fun b!1239958 () Bool)

(assert (=> b!1239958 (= e!702785 (contains!7393 (t!40948 acc!846) (select (arr!38527 a!3835) from!3213)))))

(assert (= (and d!136101 res!827385) b!1239957))

(assert (= (and b!1239957 (not res!827384)) b!1239958))

(assert (=> d!136101 m!1143227))

(assert (=> d!136101 m!1143247))

(declare-fun m!1143333 () Bool)

(assert (=> d!136101 m!1143333))

(assert (=> b!1239958 m!1143247))

(declare-fun m!1143335 () Bool)

(assert (=> b!1239958 m!1143335))

(assert (=> b!1239864 d!136101))

(declare-fun d!136103 () Bool)

(declare-fun lt!561812 () Bool)

(assert (=> d!136103 (= lt!561812 (select (content!605 (t!40948 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702786 () Bool)

(assert (=> d!136103 (= lt!561812 e!702786)))

(declare-fun res!827387 () Bool)

(assert (=> d!136103 (=> (not res!827387) (not e!702786))))

(assert (=> d!136103 (= res!827387 ((_ is Cons!27474) (t!40948 acc!846)))))

(assert (=> d!136103 (= (contains!7393 (t!40948 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000) lt!561812)))

(declare-fun b!1239959 () Bool)

(declare-fun e!702787 () Bool)

(assert (=> b!1239959 (= e!702786 e!702787)))

(declare-fun res!827386 () Bool)

(assert (=> b!1239959 (=> res!827386 e!702787)))

(assert (=> b!1239959 (= res!827386 (= (h!28683 (t!40948 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239960 () Bool)

(assert (=> b!1239960 (= e!702787 (contains!7393 (t!40948 (t!40948 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136103 res!827387) b!1239959))

(assert (= (and b!1239959 (not res!827386)) b!1239960))

(assert (=> d!136103 m!1143315))

(declare-fun m!1143337 () Bool)

(assert (=> d!136103 m!1143337))

(declare-fun m!1143339 () Bool)

(assert (=> b!1239960 m!1143339))

(assert (=> b!1239889 d!136103))

(assert (=> b!1239861 d!136097))

(declare-fun d!136105 () Bool)

(declare-fun res!827388 () Bool)

(declare-fun e!702788 () Bool)

(assert (=> d!136105 (=> res!827388 e!702788)))

(assert (=> d!136105 (= res!827388 ((_ is Nil!27475) (t!40948 acc!846)))))

(assert (=> d!136105 (= (noDuplicate!2000 (t!40948 acc!846)) e!702788)))

(declare-fun b!1239961 () Bool)

(declare-fun e!702789 () Bool)

(assert (=> b!1239961 (= e!702788 e!702789)))

(declare-fun res!827389 () Bool)

(assert (=> b!1239961 (=> (not res!827389) (not e!702789))))

(assert (=> b!1239961 (= res!827389 (not (contains!7393 (t!40948 (t!40948 acc!846)) (h!28683 (t!40948 acc!846)))))))

(declare-fun b!1239962 () Bool)

(assert (=> b!1239962 (= e!702789 (noDuplicate!2000 (t!40948 (t!40948 acc!846))))))

(assert (= (and d!136105 (not res!827388)) b!1239961))

(assert (= (and b!1239961 res!827389) b!1239962))

(declare-fun m!1143341 () Bool)

(assert (=> b!1239961 m!1143341))

(declare-fun m!1143343 () Bool)

(assert (=> b!1239962 m!1143343))

(assert (=> b!1239910 d!136105))

(declare-fun d!136107 () Bool)

(declare-fun lt!561813 () Bool)

(assert (=> d!136107 (= lt!561813 (select (content!605 (t!40948 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702790 () Bool)

(assert (=> d!136107 (= lt!561813 e!702790)))

(declare-fun res!827391 () Bool)

(assert (=> d!136107 (=> (not res!827391) (not e!702790))))

(assert (=> d!136107 (= res!827391 ((_ is Cons!27474) (t!40948 acc!846)))))

(assert (=> d!136107 (= (contains!7393 (t!40948 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000) lt!561813)))

(declare-fun b!1239963 () Bool)

(declare-fun e!702791 () Bool)

(assert (=> b!1239963 (= e!702790 e!702791)))

(declare-fun res!827390 () Bool)

(assert (=> b!1239963 (=> res!827390 e!702791)))

(assert (=> b!1239963 (= res!827390 (= (h!28683 (t!40948 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239964 () Bool)

(assert (=> b!1239964 (= e!702791 (contains!7393 (t!40948 (t!40948 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136107 res!827391) b!1239963))

(assert (= (and b!1239963 (not res!827390)) b!1239964))

(assert (=> d!136107 m!1143315))

(declare-fun m!1143345 () Bool)

(assert (=> d!136107 m!1143345))

(declare-fun m!1143347 () Bool)

(assert (=> b!1239964 m!1143347))

(assert (=> b!1239834 d!136107))

(check-sat (not d!136103) (not b!1239956) (not b!1239953) (not b!1239950) (not b!1239941) (not d!136101) (not b!1239961) (not b!1239964) (not b!1239962) (not d!136107) (not d!136091) (not b!1239949) (not d!136099) (not b!1239958) (not b!1239954) (not b!1239960) (not bm!61120) (not b!1239943))
(check-sat)
