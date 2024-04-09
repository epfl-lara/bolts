; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103778 () Bool)

(assert start!103778)

(declare-fun b!1241951 () Bool)

(declare-fun res!828445 () Bool)

(declare-fun e!704017 () Bool)

(assert (=> b!1241951 (=> (not res!828445) (not e!704017))))

(declare-datatypes ((B!1888 0))(
  ( (B!1889 (val!15706 Int)) )
))
(declare-datatypes ((tuple2!20440 0))(
  ( (tuple2!20441 (_1!10230 (_ BitVec 64)) (_2!10230 B!1888)) )
))
(declare-datatypes ((List!27535 0))(
  ( (Nil!27532) (Cons!27531 (h!28740 tuple2!20440) (t!41005 List!27535)) )
))
(declare-fun l!644 () List!27535)

(declare-fun isStrictlySorted!760 (List!27535) Bool)

(assert (=> b!1241951 (= res!828445 (isStrictlySorted!760 (t!41005 l!644)))))

(declare-fun v1!20 () B!1888)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun b!1241952 () Bool)

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun insertStrictlySorted!438 (List!27535 (_ BitVec 64) B!1888) List!27535)

(declare-fun removeStrictlySorted!132 (List!27535 (_ BitVec 64)) List!27535)

(assert (=> b!1241952 (= e!704017 (not (= (insertStrictlySorted!438 (removeStrictlySorted!132 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!132 (insertStrictlySorted!438 l!644 key1!25 v1!20) key2!15))))))

(assert (=> b!1241952 (= (insertStrictlySorted!438 (removeStrictlySorted!132 (t!41005 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!132 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41205 0))(
  ( (Unit!41206) )
))
(declare-fun lt!562123 () Unit!41205)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!17 (List!27535 (_ BitVec 64) B!1888 (_ BitVec 64)) Unit!41205)

(assert (=> b!1241952 (= lt!562123 (lemmaInsertAndRemoveStrictlySortedCommutative!17 (t!41005 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241953 () Bool)

(declare-fun res!828444 () Bool)

(assert (=> b!1241953 (=> (not res!828444) (not e!704017))))

(assert (=> b!1241953 (= res!828444 (isStrictlySorted!760 l!644))))

(declare-fun res!828443 () Bool)

(assert (=> start!103778 (=> (not res!828443) (not e!704017))))

(assert (=> start!103778 (= res!828443 (not (= key1!25 key2!15)))))

(assert (=> start!103778 e!704017))

(assert (=> start!103778 true))

(declare-fun e!704018 () Bool)

(assert (=> start!103778 e!704018))

(declare-fun tp_is_empty!31287 () Bool)

(assert (=> start!103778 tp_is_empty!31287))

(declare-fun b!1241954 () Bool)

(declare-fun res!828442 () Bool)

(assert (=> b!1241954 (=> (not res!828442) (not e!704017))))

(get-info :version)

(assert (=> b!1241954 (= res!828442 ((_ is Cons!27531) l!644))))

(declare-fun b!1241955 () Bool)

(declare-fun tp!92748 () Bool)

(assert (=> b!1241955 (= e!704018 (and tp_is_empty!31287 tp!92748))))

(assert (= (and start!103778 res!828443) b!1241953))

(assert (= (and b!1241953 res!828444) b!1241954))

(assert (= (and b!1241954 res!828442) b!1241951))

(assert (= (and b!1241951 res!828445) b!1241952))

(assert (= (and start!103778 ((_ is Cons!27531) l!644)) b!1241955))

(declare-fun m!1144701 () Bool)

(assert (=> b!1241951 m!1144701))

(declare-fun m!1144703 () Bool)

(assert (=> b!1241952 m!1144703))

(declare-fun m!1144705 () Bool)

(assert (=> b!1241952 m!1144705))

(assert (=> b!1241952 m!1144703))

(declare-fun m!1144707 () Bool)

(assert (=> b!1241952 m!1144707))

(declare-fun m!1144709 () Bool)

(assert (=> b!1241952 m!1144709))

(declare-fun m!1144711 () Bool)

(assert (=> b!1241952 m!1144711))

(assert (=> b!1241952 m!1144709))

(declare-fun m!1144713 () Bool)

(assert (=> b!1241952 m!1144713))

(declare-fun m!1144715 () Bool)

(assert (=> b!1241952 m!1144715))

(assert (=> b!1241952 m!1144713))

(assert (=> b!1241952 m!1144707))

(declare-fun m!1144717 () Bool)

(assert (=> b!1241952 m!1144717))

(declare-fun m!1144719 () Bool)

(assert (=> b!1241952 m!1144719))

(declare-fun m!1144721 () Bool)

(assert (=> b!1241953 m!1144721))

(check-sat tp_is_empty!31287 (not b!1241951) (not b!1241952) (not b!1241955) (not b!1241953))
(check-sat)
(get-model)

(declare-fun d!136499 () Bool)

(declare-fun res!828478 () Bool)

(declare-fun e!704045 () Bool)

(assert (=> d!136499 (=> res!828478 e!704045)))

(assert (=> d!136499 (= res!828478 (or ((_ is Nil!27532) l!644) ((_ is Nil!27532) (t!41005 l!644))))))

(assert (=> d!136499 (= (isStrictlySorted!760 l!644) e!704045)))

(declare-fun b!1241991 () Bool)

(declare-fun e!704046 () Bool)

(assert (=> b!1241991 (= e!704045 e!704046)))

(declare-fun res!828479 () Bool)

(assert (=> b!1241991 (=> (not res!828479) (not e!704046))))

(assert (=> b!1241991 (= res!828479 (bvslt (_1!10230 (h!28740 l!644)) (_1!10230 (h!28740 (t!41005 l!644)))))))

(declare-fun b!1241992 () Bool)

(assert (=> b!1241992 (= e!704046 (isStrictlySorted!760 (t!41005 l!644)))))

(assert (= (and d!136499 (not res!828478)) b!1241991))

(assert (= (and b!1241991 res!828479) b!1241992))

(assert (=> b!1241992 m!1144701))

(assert (=> b!1241953 d!136499))

(declare-fun b!1242033 () Bool)

(declare-fun e!704071 () List!27535)

(declare-fun e!704073 () List!27535)

(assert (=> b!1242033 (= e!704071 e!704073)))

(declare-fun c!121483 () Bool)

(assert (=> b!1242033 (= c!121483 (and ((_ is Cons!27531) (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) (not (= (_1!10230 (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1242034 () Bool)

(declare-fun e!704072 () Bool)

(declare-fun lt!562135 () List!27535)

(declare-fun containsKey!611 (List!27535 (_ BitVec 64)) Bool)

(assert (=> b!1242034 (= e!704072 (not (containsKey!611 lt!562135 key2!15)))))

(declare-fun d!136509 () Bool)

(assert (=> d!136509 e!704072))

(declare-fun res!828488 () Bool)

(assert (=> d!136509 (=> (not res!828488) (not e!704072))))

(assert (=> d!136509 (= res!828488 (isStrictlySorted!760 lt!562135))))

(assert (=> d!136509 (= lt!562135 e!704071)))

(declare-fun c!121482 () Bool)

(assert (=> d!136509 (= c!121482 (and ((_ is Cons!27531) (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) (= (_1!10230 (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136509 (isStrictlySorted!760 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))

(assert (=> d!136509 (= (removeStrictlySorted!132 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20) key2!15) lt!562135)))

(declare-fun b!1242035 () Bool)

(assert (=> b!1242035 (= e!704071 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))))

(declare-fun b!1242036 () Bool)

(assert (=> b!1242036 (= e!704073 Nil!27532)))

(declare-fun b!1242037 () Bool)

(declare-fun $colon$colon!628 (List!27535 tuple2!20440) List!27535)

(assert (=> b!1242037 (= e!704073 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) key2!15) (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))))

(assert (= (and d!136509 c!121482) b!1242035))

(assert (= (and d!136509 (not c!121482)) b!1242033))

(assert (= (and b!1242033 c!121483) b!1242037))

(assert (= (and b!1242033 (not c!121483)) b!1242036))

(assert (= (and d!136509 res!828488) b!1242034))

(declare-fun m!1144769 () Bool)

(assert (=> b!1242034 m!1144769))

(declare-fun m!1144771 () Bool)

(assert (=> d!136509 m!1144771))

(assert (=> d!136509 m!1144709))

(declare-fun m!1144773 () Bool)

(assert (=> d!136509 m!1144773))

(declare-fun m!1144775 () Bool)

(assert (=> b!1242037 m!1144775))

(assert (=> b!1242037 m!1144775))

(declare-fun m!1144777 () Bool)

(assert (=> b!1242037 m!1144777))

(assert (=> b!1241952 d!136509))

(declare-fun c!121519 () Bool)

(declare-fun b!1242118 () Bool)

(declare-fun e!704116 () List!27535)

(declare-fun c!121518 () Bool)

(assert (=> b!1242118 (= e!704116 (ite c!121519 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (ite c!121518 (Cons!27531 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) Nil!27532)))))

(declare-fun call!61295 () List!27535)

(declare-fun c!121516 () Bool)

(declare-fun bm!61291 () Bool)

(assert (=> bm!61291 (= call!61295 ($colon$colon!628 e!704116 (ite c!121516 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121517 () Bool)

(assert (=> bm!61291 (= c!121517 c!121516)))

(declare-fun b!1242119 () Bool)

(declare-fun res!828506 () Bool)

(declare-fun e!704114 () Bool)

(assert (=> b!1242119 (=> (not res!828506) (not e!704114))))

(declare-fun lt!562144 () List!27535)

(assert (=> b!1242119 (= res!828506 (containsKey!611 lt!562144 key1!25))))

(declare-fun b!1242120 () Bool)

(declare-fun e!704117 () List!27535)

(declare-fun e!704118 () List!27535)

(assert (=> b!1242120 (= e!704117 e!704118)))

(assert (=> b!1242120 (= c!121519 (and ((_ is Cons!27531) (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (= (_1!10230 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) key1!25)))))

(declare-fun d!136515 () Bool)

(assert (=> d!136515 e!704114))

(declare-fun res!828505 () Bool)

(assert (=> d!136515 (=> (not res!828505) (not e!704114))))

(assert (=> d!136515 (= res!828505 (isStrictlySorted!760 lt!562144))))

(assert (=> d!136515 (= lt!562144 e!704117)))

(assert (=> d!136515 (= c!121516 (and ((_ is Cons!27531) (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (bvslt (_1!10230 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) key1!25)))))

(assert (=> d!136515 (isStrictlySorted!760 (removeStrictlySorted!132 (t!41005 l!644) key2!15))))

(assert (=> d!136515 (= (insertStrictlySorted!438 (removeStrictlySorted!132 (t!41005 l!644) key2!15) key1!25 v1!20) lt!562144)))

(declare-fun b!1242121 () Bool)

(declare-fun call!61294 () List!27535)

(assert (=> b!1242121 (= e!704118 call!61294)))

(declare-fun b!1242122 () Bool)

(declare-fun e!704115 () List!27535)

(declare-fun call!61296 () List!27535)

(assert (=> b!1242122 (= e!704115 call!61296)))

(declare-fun b!1242123 () Bool)

(assert (=> b!1242123 (= e!704115 call!61296)))

(declare-fun b!1242124 () Bool)

(assert (=> b!1242124 (= c!121518 (and ((_ is Cons!27531) (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (bvsgt (_1!10230 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) key1!25)))))

(assert (=> b!1242124 (= e!704118 e!704115)))

(declare-fun bm!61292 () Bool)

(assert (=> bm!61292 (= call!61294 call!61295)))

(declare-fun bm!61293 () Bool)

(assert (=> bm!61293 (= call!61296 call!61294)))

(declare-fun b!1242125 () Bool)

(assert (=> b!1242125 (= e!704116 (insertStrictlySorted!438 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1242126 () Bool)

(declare-fun contains!7409 (List!27535 tuple2!20440) Bool)

(assert (=> b!1242126 (= e!704114 (contains!7409 lt!562144 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242127 () Bool)

(assert (=> b!1242127 (= e!704117 call!61295)))

(assert (= (and d!136515 c!121516) b!1242127))

(assert (= (and d!136515 (not c!121516)) b!1242120))

(assert (= (and b!1242120 c!121519) b!1242121))

(assert (= (and b!1242120 (not c!121519)) b!1242124))

(assert (= (and b!1242124 c!121518) b!1242122))

(assert (= (and b!1242124 (not c!121518)) b!1242123))

(assert (= (or b!1242122 b!1242123) bm!61293))

(assert (= (or b!1242121 bm!61293) bm!61292))

(assert (= (or b!1242127 bm!61292) bm!61291))

(assert (= (and bm!61291 c!121517) b!1242125))

(assert (= (and bm!61291 (not c!121517)) b!1242118))

(assert (= (and d!136515 res!828505) b!1242119))

(assert (= (and b!1242119 res!828506) b!1242126))

(declare-fun m!1144803 () Bool)

(assert (=> b!1242119 m!1144803))

(declare-fun m!1144805 () Bool)

(assert (=> b!1242126 m!1144805))

(declare-fun m!1144807 () Bool)

(assert (=> b!1242125 m!1144807))

(declare-fun m!1144809 () Bool)

(assert (=> d!136515 m!1144809))

(assert (=> d!136515 m!1144713))

(declare-fun m!1144811 () Bool)

(assert (=> d!136515 m!1144811))

(declare-fun m!1144813 () Bool)

(assert (=> bm!61291 m!1144813))

(assert (=> b!1241952 d!136515))

(declare-fun b!1242148 () Bool)

(declare-fun e!704131 () List!27535)

(declare-fun c!121530 () Bool)

(declare-fun c!121531 () Bool)

(assert (=> b!1242148 (= e!704131 (ite c!121531 (t!41005 l!644) (ite c!121530 (Cons!27531 (h!28740 l!644) (t!41005 l!644)) Nil!27532)))))

(declare-fun bm!61300 () Bool)

(declare-fun call!61304 () List!27535)

(declare-fun c!121528 () Bool)

(assert (=> bm!61300 (= call!61304 ($colon$colon!628 e!704131 (ite c!121528 (h!28740 l!644) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121529 () Bool)

(assert (=> bm!61300 (= c!121529 c!121528)))

(declare-fun b!1242149 () Bool)

(declare-fun res!828512 () Bool)

(declare-fun e!704129 () Bool)

(assert (=> b!1242149 (=> (not res!828512) (not e!704129))))

(declare-fun lt!562147 () List!27535)

(assert (=> b!1242149 (= res!828512 (containsKey!611 lt!562147 key1!25))))

(declare-fun b!1242150 () Bool)

(declare-fun e!704132 () List!27535)

(declare-fun e!704133 () List!27535)

(assert (=> b!1242150 (= e!704132 e!704133)))

(assert (=> b!1242150 (= c!121531 (and ((_ is Cons!27531) l!644) (= (_1!10230 (h!28740 l!644)) key1!25)))))

(declare-fun d!136521 () Bool)

(assert (=> d!136521 e!704129))

(declare-fun res!828511 () Bool)

(assert (=> d!136521 (=> (not res!828511) (not e!704129))))

(assert (=> d!136521 (= res!828511 (isStrictlySorted!760 lt!562147))))

(assert (=> d!136521 (= lt!562147 e!704132)))

(assert (=> d!136521 (= c!121528 (and ((_ is Cons!27531) l!644) (bvslt (_1!10230 (h!28740 l!644)) key1!25)))))

(assert (=> d!136521 (isStrictlySorted!760 l!644)))

(assert (=> d!136521 (= (insertStrictlySorted!438 l!644 key1!25 v1!20) lt!562147)))

(declare-fun b!1242151 () Bool)

(declare-fun call!61303 () List!27535)

(assert (=> b!1242151 (= e!704133 call!61303)))

(declare-fun b!1242152 () Bool)

(declare-fun e!704130 () List!27535)

(declare-fun call!61305 () List!27535)

(assert (=> b!1242152 (= e!704130 call!61305)))

(declare-fun b!1242153 () Bool)

(assert (=> b!1242153 (= e!704130 call!61305)))

(declare-fun b!1242154 () Bool)

(assert (=> b!1242154 (= c!121530 (and ((_ is Cons!27531) l!644) (bvsgt (_1!10230 (h!28740 l!644)) key1!25)))))

(assert (=> b!1242154 (= e!704133 e!704130)))

(declare-fun bm!61301 () Bool)

(assert (=> bm!61301 (= call!61303 call!61304)))

(declare-fun bm!61302 () Bool)

(assert (=> bm!61302 (= call!61305 call!61303)))

(declare-fun b!1242155 () Bool)

(assert (=> b!1242155 (= e!704131 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))

(declare-fun b!1242156 () Bool)

(assert (=> b!1242156 (= e!704129 (contains!7409 lt!562147 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242157 () Bool)

(assert (=> b!1242157 (= e!704132 call!61304)))

(assert (= (and d!136521 c!121528) b!1242157))

(assert (= (and d!136521 (not c!121528)) b!1242150))

(assert (= (and b!1242150 c!121531) b!1242151))

(assert (= (and b!1242150 (not c!121531)) b!1242154))

(assert (= (and b!1242154 c!121530) b!1242152))

(assert (= (and b!1242154 (not c!121530)) b!1242153))

(assert (= (or b!1242152 b!1242153) bm!61302))

(assert (= (or b!1242151 bm!61302) bm!61301))

(assert (= (or b!1242157 bm!61301) bm!61300))

(assert (= (and bm!61300 c!121529) b!1242155))

(assert (= (and bm!61300 (not c!121529)) b!1242148))

(assert (= (and d!136521 res!828511) b!1242149))

(assert (= (and b!1242149 res!828512) b!1242156))

(declare-fun m!1144829 () Bool)

(assert (=> b!1242149 m!1144829))

(declare-fun m!1144833 () Bool)

(assert (=> b!1242156 m!1144833))

(assert (=> b!1242155 m!1144709))

(declare-fun m!1144835 () Bool)

(assert (=> d!136521 m!1144835))

(assert (=> d!136521 m!1144721))

(declare-fun m!1144837 () Bool)

(assert (=> bm!61300 m!1144837))

(assert (=> b!1241952 d!136521))

(declare-fun b!1242178 () Bool)

(declare-fun c!121543 () Bool)

(declare-fun e!704146 () List!27535)

(declare-fun c!121542 () Bool)

(assert (=> b!1242178 (= e!704146 (ite c!121543 (t!41005 (removeStrictlySorted!132 l!644 key2!15)) (ite c!121542 (Cons!27531 (h!28740 (removeStrictlySorted!132 l!644 key2!15)) (t!41005 (removeStrictlySorted!132 l!644 key2!15))) Nil!27532)))))

(declare-fun call!61313 () List!27535)

(declare-fun c!121540 () Bool)

(declare-fun bm!61309 () Bool)

(assert (=> bm!61309 (= call!61313 ($colon$colon!628 e!704146 (ite c!121540 (h!28740 (removeStrictlySorted!132 l!644 key2!15)) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121541 () Bool)

(assert (=> bm!61309 (= c!121541 c!121540)))

(declare-fun b!1242179 () Bool)

(declare-fun res!828518 () Bool)

(declare-fun e!704144 () Bool)

(assert (=> b!1242179 (=> (not res!828518) (not e!704144))))

(declare-fun lt!562150 () List!27535)

(assert (=> b!1242179 (= res!828518 (containsKey!611 lt!562150 key1!25))))

(declare-fun b!1242180 () Bool)

(declare-fun e!704147 () List!27535)

(declare-fun e!704148 () List!27535)

(assert (=> b!1242180 (= e!704147 e!704148)))

(assert (=> b!1242180 (= c!121543 (and ((_ is Cons!27531) (removeStrictlySorted!132 l!644 key2!15)) (= (_1!10230 (h!28740 (removeStrictlySorted!132 l!644 key2!15))) key1!25)))))

(declare-fun d!136527 () Bool)

(assert (=> d!136527 e!704144))

(declare-fun res!828517 () Bool)

(assert (=> d!136527 (=> (not res!828517) (not e!704144))))

(assert (=> d!136527 (= res!828517 (isStrictlySorted!760 lt!562150))))

(assert (=> d!136527 (= lt!562150 e!704147)))

(assert (=> d!136527 (= c!121540 (and ((_ is Cons!27531) (removeStrictlySorted!132 l!644 key2!15)) (bvslt (_1!10230 (h!28740 (removeStrictlySorted!132 l!644 key2!15))) key1!25)))))

(assert (=> d!136527 (isStrictlySorted!760 (removeStrictlySorted!132 l!644 key2!15))))

(assert (=> d!136527 (= (insertStrictlySorted!438 (removeStrictlySorted!132 l!644 key2!15) key1!25 v1!20) lt!562150)))

(declare-fun b!1242181 () Bool)

(declare-fun call!61312 () List!27535)

(assert (=> b!1242181 (= e!704148 call!61312)))

(declare-fun b!1242182 () Bool)

(declare-fun e!704145 () List!27535)

(declare-fun call!61314 () List!27535)

(assert (=> b!1242182 (= e!704145 call!61314)))

(declare-fun b!1242183 () Bool)

(assert (=> b!1242183 (= e!704145 call!61314)))

(declare-fun b!1242184 () Bool)

(assert (=> b!1242184 (= c!121542 (and ((_ is Cons!27531) (removeStrictlySorted!132 l!644 key2!15)) (bvsgt (_1!10230 (h!28740 (removeStrictlySorted!132 l!644 key2!15))) key1!25)))))

(assert (=> b!1242184 (= e!704148 e!704145)))

(declare-fun bm!61310 () Bool)

(assert (=> bm!61310 (= call!61312 call!61313)))

(declare-fun bm!61311 () Bool)

(assert (=> bm!61311 (= call!61314 call!61312)))

(declare-fun b!1242185 () Bool)

(assert (=> b!1242185 (= e!704146 (insertStrictlySorted!438 (t!41005 (removeStrictlySorted!132 l!644 key2!15)) key1!25 v1!20))))

(declare-fun b!1242186 () Bool)

(assert (=> b!1242186 (= e!704144 (contains!7409 lt!562150 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242187 () Bool)

(assert (=> b!1242187 (= e!704147 call!61313)))

(assert (= (and d!136527 c!121540) b!1242187))

(assert (= (and d!136527 (not c!121540)) b!1242180))

(assert (= (and b!1242180 c!121543) b!1242181))

(assert (= (and b!1242180 (not c!121543)) b!1242184))

(assert (= (and b!1242184 c!121542) b!1242182))

(assert (= (and b!1242184 (not c!121542)) b!1242183))

(assert (= (or b!1242182 b!1242183) bm!61311))

(assert (= (or b!1242181 bm!61311) bm!61310))

(assert (= (or b!1242187 bm!61310) bm!61309))

(assert (= (and bm!61309 c!121541) b!1242185))

(assert (= (and bm!61309 (not c!121541)) b!1242178))

(assert (= (and d!136527 res!828517) b!1242179))

(assert (= (and b!1242179 res!828518) b!1242186))

(declare-fun m!1144841 () Bool)

(assert (=> b!1242179 m!1144841))

(declare-fun m!1144845 () Bool)

(assert (=> b!1242186 m!1144845))

(declare-fun m!1144851 () Bool)

(assert (=> b!1242185 m!1144851))

(declare-fun m!1144857 () Bool)

(assert (=> d!136527 m!1144857))

(assert (=> d!136527 m!1144703))

(declare-fun m!1144863 () Bool)

(assert (=> d!136527 m!1144863))

(declare-fun m!1144867 () Bool)

(assert (=> bm!61309 m!1144867))

(assert (=> b!1241952 d!136527))

(declare-fun b!1242193 () Bool)

(declare-fun e!704150 () List!27535)

(declare-fun e!704154 () List!27535)

(assert (=> b!1242193 (= e!704150 e!704154)))

(declare-fun c!121547 () Bool)

(assert (=> b!1242193 (= c!121547 (and ((_ is Cons!27531) l!644) (not (= (_1!10230 (h!28740 l!644)) key2!15))))))

(declare-fun b!1242194 () Bool)

(declare-fun e!704153 () Bool)

(declare-fun lt!562151 () List!27535)

(assert (=> b!1242194 (= e!704153 (not (containsKey!611 lt!562151 key2!15)))))

(declare-fun d!136531 () Bool)

(assert (=> d!136531 e!704153))

(declare-fun res!828519 () Bool)

(assert (=> d!136531 (=> (not res!828519) (not e!704153))))

(assert (=> d!136531 (= res!828519 (isStrictlySorted!760 lt!562151))))

(assert (=> d!136531 (= lt!562151 e!704150)))

(declare-fun c!121546 () Bool)

(assert (=> d!136531 (= c!121546 (and ((_ is Cons!27531) l!644) (= (_1!10230 (h!28740 l!644)) key2!15)))))

(assert (=> d!136531 (isStrictlySorted!760 l!644)))

(assert (=> d!136531 (= (removeStrictlySorted!132 l!644 key2!15) lt!562151)))

(declare-fun b!1242195 () Bool)

(assert (=> b!1242195 (= e!704150 (t!41005 l!644))))

(declare-fun b!1242196 () Bool)

(assert (=> b!1242196 (= e!704154 Nil!27532)))

(declare-fun b!1242197 () Bool)

(assert (=> b!1242197 (= e!704154 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 l!644) key2!15) (h!28740 l!644)))))

(assert (= (and d!136531 c!121546) b!1242195))

(assert (= (and d!136531 (not c!121546)) b!1242193))

(assert (= (and b!1242193 c!121547) b!1242197))

(assert (= (and b!1242193 (not c!121547)) b!1242196))

(assert (= (and d!136531 res!828519) b!1242194))

(declare-fun m!1144875 () Bool)

(assert (=> b!1242194 m!1144875))

(declare-fun m!1144877 () Bool)

(assert (=> d!136531 m!1144877))

(assert (=> d!136531 m!1144721))

(assert (=> b!1242197 m!1144713))

(assert (=> b!1242197 m!1144713))

(declare-fun m!1144885 () Bool)

(assert (=> b!1242197 m!1144885))

(assert (=> b!1241952 d!136531))

(declare-fun d!136537 () Bool)

(assert (=> d!136537 (= (insertStrictlySorted!438 (removeStrictlySorted!132 (t!41005 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!132 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562160 () Unit!41205)

(declare-fun choose!1849 (List!27535 (_ BitVec 64) B!1888 (_ BitVec 64)) Unit!41205)

(assert (=> d!136537 (= lt!562160 (choose!1849 (t!41005 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136537 (not (= key1!25 key2!15))))

(assert (=> d!136537 (= (lemmaInsertAndRemoveStrictlySortedCommutative!17 (t!41005 l!644) key1!25 v1!20 key2!15) lt!562160)))

(declare-fun bs!34969 () Bool)

(assert (= bs!34969 d!136537))

(assert (=> bs!34969 m!1144713))

(assert (=> bs!34969 m!1144715))

(assert (=> bs!34969 m!1144713))

(declare-fun m!1144893 () Bool)

(assert (=> bs!34969 m!1144893))

(assert (=> bs!34969 m!1144709))

(assert (=> bs!34969 m!1144709))

(assert (=> bs!34969 m!1144711))

(assert (=> b!1241952 d!136537))

(declare-fun c!121552 () Bool)

(declare-fun b!1242203 () Bool)

(declare-fun c!121553 () Bool)

(declare-fun e!704160 () List!27535)

(assert (=> b!1242203 (= e!704160 (ite c!121553 (t!41005 (t!41005 l!644)) (ite c!121552 (Cons!27531 (h!28740 (t!41005 l!644)) (t!41005 (t!41005 l!644))) Nil!27532)))))

(declare-fun c!121550 () Bool)

(declare-fun bm!61312 () Bool)

(declare-fun call!61316 () List!27535)

(assert (=> bm!61312 (= call!61316 ($colon$colon!628 e!704160 (ite c!121550 (h!28740 (t!41005 l!644)) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121551 () Bool)

(assert (=> bm!61312 (= c!121551 c!121550)))

(declare-fun b!1242204 () Bool)

(declare-fun res!828523 () Bool)

(declare-fun e!704158 () Bool)

(assert (=> b!1242204 (=> (not res!828523) (not e!704158))))

(declare-fun lt!562163 () List!27535)

(assert (=> b!1242204 (= res!828523 (containsKey!611 lt!562163 key1!25))))

(declare-fun b!1242205 () Bool)

(declare-fun e!704161 () List!27535)

(declare-fun e!704163 () List!27535)

(assert (=> b!1242205 (= e!704161 e!704163)))

(assert (=> b!1242205 (= c!121553 (and ((_ is Cons!27531) (t!41005 l!644)) (= (_1!10230 (h!28740 (t!41005 l!644))) key1!25)))))

(declare-fun d!136541 () Bool)

(assert (=> d!136541 e!704158))

(declare-fun res!828522 () Bool)

(assert (=> d!136541 (=> (not res!828522) (not e!704158))))

(assert (=> d!136541 (= res!828522 (isStrictlySorted!760 lt!562163))))

(assert (=> d!136541 (= lt!562163 e!704161)))

(assert (=> d!136541 (= c!121550 (and ((_ is Cons!27531) (t!41005 l!644)) (bvslt (_1!10230 (h!28740 (t!41005 l!644))) key1!25)))))

(assert (=> d!136541 (isStrictlySorted!760 (t!41005 l!644))))

(assert (=> d!136541 (= (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20) lt!562163)))

(declare-fun b!1242206 () Bool)

(declare-fun call!61315 () List!27535)

(assert (=> b!1242206 (= e!704163 call!61315)))

(declare-fun b!1242207 () Bool)

(declare-fun e!704159 () List!27535)

(declare-fun call!61317 () List!27535)

(assert (=> b!1242207 (= e!704159 call!61317)))

(declare-fun b!1242208 () Bool)

(assert (=> b!1242208 (= e!704159 call!61317)))

(declare-fun b!1242209 () Bool)

(assert (=> b!1242209 (= c!121552 (and ((_ is Cons!27531) (t!41005 l!644)) (bvsgt (_1!10230 (h!28740 (t!41005 l!644))) key1!25)))))

(assert (=> b!1242209 (= e!704163 e!704159)))

(declare-fun bm!61313 () Bool)

(assert (=> bm!61313 (= call!61315 call!61316)))

(declare-fun bm!61314 () Bool)

(assert (=> bm!61314 (= call!61317 call!61315)))

(declare-fun b!1242210 () Bool)

(assert (=> b!1242210 (= e!704160 (insertStrictlySorted!438 (t!41005 (t!41005 l!644)) key1!25 v1!20))))

(declare-fun b!1242211 () Bool)

(assert (=> b!1242211 (= e!704158 (contains!7409 lt!562163 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242212 () Bool)

(assert (=> b!1242212 (= e!704161 call!61316)))

(assert (= (and d!136541 c!121550) b!1242212))

(assert (= (and d!136541 (not c!121550)) b!1242205))

(assert (= (and b!1242205 c!121553) b!1242206))

(assert (= (and b!1242205 (not c!121553)) b!1242209))

(assert (= (and b!1242209 c!121552) b!1242207))

(assert (= (and b!1242209 (not c!121552)) b!1242208))

(assert (= (or b!1242207 b!1242208) bm!61314))

(assert (= (or b!1242206 bm!61314) bm!61313))

(assert (= (or b!1242212 bm!61313) bm!61312))

(assert (= (and bm!61312 c!121551) b!1242210))

(assert (= (and bm!61312 (not c!121551)) b!1242203))

(assert (= (and d!136541 res!828522) b!1242204))

(assert (= (and b!1242204 res!828523) b!1242211))

(declare-fun m!1144899 () Bool)

(assert (=> b!1242204 m!1144899))

(declare-fun m!1144903 () Bool)

(assert (=> b!1242211 m!1144903))

(declare-fun m!1144907 () Bool)

(assert (=> b!1242210 m!1144907))

(declare-fun m!1144909 () Bool)

(assert (=> d!136541 m!1144909))

(assert (=> d!136541 m!1144701))

(declare-fun m!1144917 () Bool)

(assert (=> bm!61312 m!1144917))

(assert (=> b!1241952 d!136541))

(declare-fun b!1242233 () Bool)

(declare-fun e!704173 () List!27535)

(declare-fun e!704175 () List!27535)

(assert (=> b!1242233 (= e!704173 e!704175)))

(declare-fun c!121563 () Bool)

(assert (=> b!1242233 (= c!121563 (and ((_ is Cons!27531) (insertStrictlySorted!438 l!644 key1!25 v1!20)) (not (= (_1!10230 (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20))) key2!15))))))

(declare-fun b!1242234 () Bool)

(declare-fun e!704174 () Bool)

(declare-fun lt!562166 () List!27535)

(assert (=> b!1242234 (= e!704174 (not (containsKey!611 lt!562166 key2!15)))))

(declare-fun d!136547 () Bool)

(assert (=> d!136547 e!704174))

(declare-fun res!828528 () Bool)

(assert (=> d!136547 (=> (not res!828528) (not e!704174))))

(assert (=> d!136547 (= res!828528 (isStrictlySorted!760 lt!562166))))

(assert (=> d!136547 (= lt!562166 e!704173)))

(declare-fun c!121562 () Bool)

(assert (=> d!136547 (= c!121562 (and ((_ is Cons!27531) (insertStrictlySorted!438 l!644 key1!25 v1!20)) (= (_1!10230 (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136547 (isStrictlySorted!760 (insertStrictlySorted!438 l!644 key1!25 v1!20))))

(assert (=> d!136547 (= (removeStrictlySorted!132 (insertStrictlySorted!438 l!644 key1!25 v1!20) key2!15) lt!562166)))

(declare-fun b!1242235 () Bool)

(assert (=> b!1242235 (= e!704173 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))))

(declare-fun b!1242236 () Bool)

(assert (=> b!1242236 (= e!704175 Nil!27532)))

(declare-fun b!1242237 () Bool)

(assert (=> b!1242237 (= e!704175 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)) key2!15) (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20))))))

(assert (= (and d!136547 c!121562) b!1242235))

(assert (= (and d!136547 (not c!121562)) b!1242233))

(assert (= (and b!1242233 c!121563) b!1242237))

(assert (= (and b!1242233 (not c!121563)) b!1242236))

(assert (= (and d!136547 res!828528) b!1242234))

(declare-fun m!1144929 () Bool)

(assert (=> b!1242234 m!1144929))

(declare-fun m!1144931 () Bool)

(assert (=> d!136547 m!1144931))

(assert (=> d!136547 m!1144707))

(declare-fun m!1144935 () Bool)

(assert (=> d!136547 m!1144935))

(declare-fun m!1144937 () Bool)

(assert (=> b!1242237 m!1144937))

(assert (=> b!1242237 m!1144937))

(declare-fun m!1144945 () Bool)

(assert (=> b!1242237 m!1144945))

(assert (=> b!1241952 d!136547))

(declare-fun b!1242248 () Bool)

(declare-fun e!704182 () List!27535)

(declare-fun e!704184 () List!27535)

(assert (=> b!1242248 (= e!704182 e!704184)))

(declare-fun c!121569 () Bool)

(assert (=> b!1242248 (= c!121569 (and ((_ is Cons!27531) (t!41005 l!644)) (not (= (_1!10230 (h!28740 (t!41005 l!644))) key2!15))))))

(declare-fun b!1242249 () Bool)

(declare-fun e!704183 () Bool)

(declare-fun lt!562169 () List!27535)

(assert (=> b!1242249 (= e!704183 (not (containsKey!611 lt!562169 key2!15)))))

(declare-fun d!136553 () Bool)

(assert (=> d!136553 e!704183))

(declare-fun res!828531 () Bool)

(assert (=> d!136553 (=> (not res!828531) (not e!704183))))

(assert (=> d!136553 (= res!828531 (isStrictlySorted!760 lt!562169))))

(assert (=> d!136553 (= lt!562169 e!704182)))

(declare-fun c!121568 () Bool)

(assert (=> d!136553 (= c!121568 (and ((_ is Cons!27531) (t!41005 l!644)) (= (_1!10230 (h!28740 (t!41005 l!644))) key2!15)))))

(assert (=> d!136553 (isStrictlySorted!760 (t!41005 l!644))))

(assert (=> d!136553 (= (removeStrictlySorted!132 (t!41005 l!644) key2!15) lt!562169)))

(declare-fun b!1242250 () Bool)

(assert (=> b!1242250 (= e!704182 (t!41005 (t!41005 l!644)))))

(declare-fun b!1242251 () Bool)

(assert (=> b!1242251 (= e!704184 Nil!27532)))

(declare-fun b!1242252 () Bool)

(assert (=> b!1242252 (= e!704184 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (t!41005 l!644)) key2!15) (h!28740 (t!41005 l!644))))))

(assert (= (and d!136553 c!121568) b!1242250))

(assert (= (and d!136553 (not c!121568)) b!1242248))

(assert (= (and b!1242248 c!121569) b!1242252))

(assert (= (and b!1242248 (not c!121569)) b!1242251))

(assert (= (and d!136553 res!828531) b!1242249))

(declare-fun m!1144959 () Bool)

(assert (=> b!1242249 m!1144959))

(declare-fun m!1144961 () Bool)

(assert (=> d!136553 m!1144961))

(assert (=> d!136553 m!1144701))

(declare-fun m!1144965 () Bool)

(assert (=> b!1242252 m!1144965))

(assert (=> b!1242252 m!1144965))

(declare-fun m!1144969 () Bool)

(assert (=> b!1242252 m!1144969))

(assert (=> b!1241952 d!136553))

(declare-fun d!136559 () Bool)

(declare-fun res!828534 () Bool)

(declare-fun e!704191 () Bool)

(assert (=> d!136559 (=> res!828534 e!704191)))

(assert (=> d!136559 (= res!828534 (or ((_ is Nil!27532) (t!41005 l!644)) ((_ is Nil!27532) (t!41005 (t!41005 l!644)))))))

(assert (=> d!136559 (= (isStrictlySorted!760 (t!41005 l!644)) e!704191)))

(declare-fun b!1242263 () Bool)

(declare-fun e!704192 () Bool)

(assert (=> b!1242263 (= e!704191 e!704192)))

(declare-fun res!828535 () Bool)

(assert (=> b!1242263 (=> (not res!828535) (not e!704192))))

(assert (=> b!1242263 (= res!828535 (bvslt (_1!10230 (h!28740 (t!41005 l!644))) (_1!10230 (h!28740 (t!41005 (t!41005 l!644))))))))

(declare-fun b!1242264 () Bool)

(assert (=> b!1242264 (= e!704192 (isStrictlySorted!760 (t!41005 (t!41005 l!644))))))

(assert (= (and d!136559 (not res!828534)) b!1242263))

(assert (= (and b!1242263 res!828535) b!1242264))

(declare-fun m!1144983 () Bool)

(assert (=> b!1242264 m!1144983))

(assert (=> b!1241951 d!136559))

(declare-fun b!1242279 () Bool)

(declare-fun e!704201 () Bool)

(declare-fun tp!92760 () Bool)

(assert (=> b!1242279 (= e!704201 (and tp_is_empty!31287 tp!92760))))

(assert (=> b!1241955 (= tp!92748 e!704201)))

(assert (= (and b!1241955 ((_ is Cons!27531) (t!41005 l!644))) b!1242279))

(check-sat tp_is_empty!31287 (not b!1242204) (not d!136531) (not d!136509) (not b!1242149) (not b!1242237) (not b!1242249) (not bm!61291) (not b!1242156) (not bm!61309) (not d!136537) (not b!1242155) (not d!136515) (not b!1242197) (not b!1242194) (not b!1241992) (not b!1242252) (not b!1242279) (not d!136547) (not b!1242264) (not b!1242126) (not b!1242186) (not b!1242211) (not b!1242037) (not d!136521) (not b!1242034) (not b!1242119) (not b!1242185) (not bm!61300) (not b!1242125) (not b!1242210) (not b!1242234) (not d!136553) (not bm!61312) (not d!136527) (not d!136541) (not b!1242179))
(check-sat)
(get-model)

(declare-fun d!136561 () Bool)

(declare-fun res!828536 () Bool)

(declare-fun e!704202 () Bool)

(assert (=> d!136561 (=> res!828536 e!704202)))

(assert (=> d!136561 (= res!828536 (or ((_ is Nil!27532) lt!562163) ((_ is Nil!27532) (t!41005 lt!562163))))))

(assert (=> d!136561 (= (isStrictlySorted!760 lt!562163) e!704202)))

(declare-fun b!1242280 () Bool)

(declare-fun e!704203 () Bool)

(assert (=> b!1242280 (= e!704202 e!704203)))

(declare-fun res!828537 () Bool)

(assert (=> b!1242280 (=> (not res!828537) (not e!704203))))

(assert (=> b!1242280 (= res!828537 (bvslt (_1!10230 (h!28740 lt!562163)) (_1!10230 (h!28740 (t!41005 lt!562163)))))))

(declare-fun b!1242281 () Bool)

(assert (=> b!1242281 (= e!704203 (isStrictlySorted!760 (t!41005 lt!562163)))))

(assert (= (and d!136561 (not res!828536)) b!1242280))

(assert (= (and b!1242280 res!828537) b!1242281))

(declare-fun m!1144985 () Bool)

(assert (=> b!1242281 m!1144985))

(assert (=> d!136541 d!136561))

(assert (=> d!136541 d!136559))

(declare-fun d!136563 () Bool)

(declare-fun res!828538 () Bool)

(declare-fun e!704204 () Bool)

(assert (=> d!136563 (=> res!828538 e!704204)))

(assert (=> d!136563 (= res!828538 (or ((_ is Nil!27532) lt!562147) ((_ is Nil!27532) (t!41005 lt!562147))))))

(assert (=> d!136563 (= (isStrictlySorted!760 lt!562147) e!704204)))

(declare-fun b!1242282 () Bool)

(declare-fun e!704205 () Bool)

(assert (=> b!1242282 (= e!704204 e!704205)))

(declare-fun res!828539 () Bool)

(assert (=> b!1242282 (=> (not res!828539) (not e!704205))))

(assert (=> b!1242282 (= res!828539 (bvslt (_1!10230 (h!28740 lt!562147)) (_1!10230 (h!28740 (t!41005 lt!562147)))))))

(declare-fun b!1242283 () Bool)

(assert (=> b!1242283 (= e!704205 (isStrictlySorted!760 (t!41005 lt!562147)))))

(assert (= (and d!136563 (not res!828538)) b!1242282))

(assert (= (and b!1242282 res!828539) b!1242283))

(declare-fun m!1144987 () Bool)

(assert (=> b!1242283 m!1144987))

(assert (=> d!136521 d!136563))

(assert (=> d!136521 d!136499))

(declare-fun d!136565 () Bool)

(declare-fun res!828544 () Bool)

(declare-fun e!704210 () Bool)

(assert (=> d!136565 (=> res!828544 e!704210)))

(assert (=> d!136565 (= res!828544 (and ((_ is Cons!27531) lt!562144) (= (_1!10230 (h!28740 lt!562144)) key1!25)))))

(assert (=> d!136565 (= (containsKey!611 lt!562144 key1!25) e!704210)))

(declare-fun b!1242288 () Bool)

(declare-fun e!704211 () Bool)

(assert (=> b!1242288 (= e!704210 e!704211)))

(declare-fun res!828545 () Bool)

(assert (=> b!1242288 (=> (not res!828545) (not e!704211))))

(assert (=> b!1242288 (= res!828545 (and (or (not ((_ is Cons!27531) lt!562144)) (bvsle (_1!10230 (h!28740 lt!562144)) key1!25)) ((_ is Cons!27531) lt!562144) (bvslt (_1!10230 (h!28740 lt!562144)) key1!25)))))

(declare-fun b!1242289 () Bool)

(assert (=> b!1242289 (= e!704211 (containsKey!611 (t!41005 lt!562144) key1!25))))

(assert (= (and d!136565 (not res!828544)) b!1242288))

(assert (= (and b!1242288 res!828545) b!1242289))

(declare-fun m!1144989 () Bool)

(assert (=> b!1242289 m!1144989))

(assert (=> b!1242119 d!136565))

(declare-fun d!136567 () Bool)

(declare-fun res!828546 () Bool)

(declare-fun e!704212 () Bool)

(assert (=> d!136567 (=> res!828546 e!704212)))

(assert (=> d!136567 (= res!828546 (or ((_ is Nil!27532) lt!562144) ((_ is Nil!27532) (t!41005 lt!562144))))))

(assert (=> d!136567 (= (isStrictlySorted!760 lt!562144) e!704212)))

(declare-fun b!1242290 () Bool)

(declare-fun e!704213 () Bool)

(assert (=> b!1242290 (= e!704212 e!704213)))

(declare-fun res!828547 () Bool)

(assert (=> b!1242290 (=> (not res!828547) (not e!704213))))

(assert (=> b!1242290 (= res!828547 (bvslt (_1!10230 (h!28740 lt!562144)) (_1!10230 (h!28740 (t!41005 lt!562144)))))))

(declare-fun b!1242291 () Bool)

(assert (=> b!1242291 (= e!704213 (isStrictlySorted!760 (t!41005 lt!562144)))))

(assert (= (and d!136567 (not res!828546)) b!1242290))

(assert (= (and b!1242290 res!828547) b!1242291))

(declare-fun m!1144991 () Bool)

(assert (=> b!1242291 m!1144991))

(assert (=> d!136515 d!136567))

(declare-fun d!136569 () Bool)

(declare-fun res!828548 () Bool)

(declare-fun e!704214 () Bool)

(assert (=> d!136569 (=> res!828548 e!704214)))

(assert (=> d!136569 (= res!828548 (or ((_ is Nil!27532) (removeStrictlySorted!132 (t!41005 l!644) key2!15)) ((_ is Nil!27532) (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))))))

(assert (=> d!136569 (= (isStrictlySorted!760 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) e!704214)))

(declare-fun b!1242292 () Bool)

(declare-fun e!704215 () Bool)

(assert (=> b!1242292 (= e!704214 e!704215)))

(declare-fun res!828549 () Bool)

(assert (=> b!1242292 (=> (not res!828549) (not e!704215))))

(assert (=> b!1242292 (= res!828549 (bvslt (_1!10230 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))))))))

(declare-fun b!1242293 () Bool)

(assert (=> b!1242293 (= e!704215 (isStrictlySorted!760 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))))))

(assert (= (and d!136569 (not res!828548)) b!1242292))

(assert (= (and b!1242292 res!828549) b!1242293))

(declare-fun m!1144993 () Bool)

(assert (=> b!1242293 m!1144993))

(assert (=> d!136515 d!136569))

(declare-fun d!136571 () Bool)

(assert (=> d!136571 (= ($colon$colon!628 e!704116 (ite c!121516 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (tuple2!20441 key1!25 v1!20))) (Cons!27531 (ite c!121516 (h!28740 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) (tuple2!20441 key1!25 v1!20)) e!704116))))

(assert (=> bm!61291 d!136571))

(declare-fun d!136573 () Bool)

(declare-fun res!828550 () Bool)

(declare-fun e!704216 () Bool)

(assert (=> d!136573 (=> res!828550 e!704216)))

(assert (=> d!136573 (= res!828550 (and ((_ is Cons!27531) lt!562147) (= (_1!10230 (h!28740 lt!562147)) key1!25)))))

(assert (=> d!136573 (= (containsKey!611 lt!562147 key1!25) e!704216)))

(declare-fun b!1242294 () Bool)

(declare-fun e!704217 () Bool)

(assert (=> b!1242294 (= e!704216 e!704217)))

(declare-fun res!828551 () Bool)

(assert (=> b!1242294 (=> (not res!828551) (not e!704217))))

(assert (=> b!1242294 (= res!828551 (and (or (not ((_ is Cons!27531) lt!562147)) (bvsle (_1!10230 (h!28740 lt!562147)) key1!25)) ((_ is Cons!27531) lt!562147) (bvslt (_1!10230 (h!28740 lt!562147)) key1!25)))))

(declare-fun b!1242295 () Bool)

(assert (=> b!1242295 (= e!704217 (containsKey!611 (t!41005 lt!562147) key1!25))))

(assert (= (and d!136573 (not res!828550)) b!1242294))

(assert (= (and b!1242294 res!828551) b!1242295))

(declare-fun m!1144995 () Bool)

(assert (=> b!1242295 m!1144995))

(assert (=> b!1242149 d!136573))

(declare-fun d!136575 () Bool)

(assert (=> d!136575 (= ($colon$colon!628 e!704131 (ite c!121528 (h!28740 l!644) (tuple2!20441 key1!25 v1!20))) (Cons!27531 (ite c!121528 (h!28740 l!644) (tuple2!20441 key1!25 v1!20)) e!704131))))

(assert (=> bm!61300 d!136575))

(declare-fun d!136577 () Bool)

(declare-fun res!828552 () Bool)

(declare-fun e!704218 () Bool)

(assert (=> d!136577 (=> res!828552 e!704218)))

(assert (=> d!136577 (= res!828552 (or ((_ is Nil!27532) lt!562150) ((_ is Nil!27532) (t!41005 lt!562150))))))

(assert (=> d!136577 (= (isStrictlySorted!760 lt!562150) e!704218)))

(declare-fun b!1242296 () Bool)

(declare-fun e!704219 () Bool)

(assert (=> b!1242296 (= e!704218 e!704219)))

(declare-fun res!828553 () Bool)

(assert (=> b!1242296 (=> (not res!828553) (not e!704219))))

(assert (=> b!1242296 (= res!828553 (bvslt (_1!10230 (h!28740 lt!562150)) (_1!10230 (h!28740 (t!41005 lt!562150)))))))

(declare-fun b!1242297 () Bool)

(assert (=> b!1242297 (= e!704219 (isStrictlySorted!760 (t!41005 lt!562150)))))

(assert (= (and d!136577 (not res!828552)) b!1242296))

(assert (= (and b!1242296 res!828553) b!1242297))

(declare-fun m!1144997 () Bool)

(assert (=> b!1242297 m!1144997))

(assert (=> d!136527 d!136577))

(declare-fun d!136579 () Bool)

(declare-fun res!828554 () Bool)

(declare-fun e!704220 () Bool)

(assert (=> d!136579 (=> res!828554 e!704220)))

(assert (=> d!136579 (= res!828554 (or ((_ is Nil!27532) (removeStrictlySorted!132 l!644 key2!15)) ((_ is Nil!27532) (t!41005 (removeStrictlySorted!132 l!644 key2!15)))))))

(assert (=> d!136579 (= (isStrictlySorted!760 (removeStrictlySorted!132 l!644 key2!15)) e!704220)))

(declare-fun b!1242298 () Bool)

(declare-fun e!704221 () Bool)

(assert (=> b!1242298 (= e!704220 e!704221)))

(declare-fun res!828555 () Bool)

(assert (=> b!1242298 (=> (not res!828555) (not e!704221))))

(assert (=> b!1242298 (= res!828555 (bvslt (_1!10230 (h!28740 (removeStrictlySorted!132 l!644 key2!15))) (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15))))))))

(declare-fun b!1242299 () Bool)

(assert (=> b!1242299 (= e!704221 (isStrictlySorted!760 (t!41005 (removeStrictlySorted!132 l!644 key2!15))))))

(assert (= (and d!136579 (not res!828554)) b!1242298))

(assert (= (and b!1242298 res!828555) b!1242299))

(declare-fun m!1144999 () Bool)

(assert (=> b!1242299 m!1144999))

(assert (=> d!136527 d!136579))

(declare-fun d!136581 () Bool)

(declare-fun res!828556 () Bool)

(declare-fun e!704222 () Bool)

(assert (=> d!136581 (=> res!828556 e!704222)))

(assert (=> d!136581 (= res!828556 (or ((_ is Nil!27532) lt!562169) ((_ is Nil!27532) (t!41005 lt!562169))))))

(assert (=> d!136581 (= (isStrictlySorted!760 lt!562169) e!704222)))

(declare-fun b!1242300 () Bool)

(declare-fun e!704223 () Bool)

(assert (=> b!1242300 (= e!704222 e!704223)))

(declare-fun res!828557 () Bool)

(assert (=> b!1242300 (=> (not res!828557) (not e!704223))))

(assert (=> b!1242300 (= res!828557 (bvslt (_1!10230 (h!28740 lt!562169)) (_1!10230 (h!28740 (t!41005 lt!562169)))))))

(declare-fun b!1242301 () Bool)

(assert (=> b!1242301 (= e!704223 (isStrictlySorted!760 (t!41005 lt!562169)))))

(assert (= (and d!136581 (not res!828556)) b!1242300))

(assert (= (and b!1242300 res!828557) b!1242301))

(declare-fun m!1145001 () Bool)

(assert (=> b!1242301 m!1145001))

(assert (=> d!136553 d!136581))

(assert (=> d!136553 d!136559))

(declare-fun d!136583 () Bool)

(assert (=> d!136583 (= ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (t!41005 l!644)) key2!15) (h!28740 (t!41005 l!644))) (Cons!27531 (h!28740 (t!41005 l!644)) (removeStrictlySorted!132 (t!41005 (t!41005 l!644)) key2!15)))))

(assert (=> b!1242252 d!136583))

(declare-fun b!1242302 () Bool)

(declare-fun e!704224 () List!27535)

(declare-fun e!704226 () List!27535)

(assert (=> b!1242302 (= e!704224 e!704226)))

(declare-fun c!121575 () Bool)

(assert (=> b!1242302 (= c!121575 (and ((_ is Cons!27531) (t!41005 (t!41005 l!644))) (not (= (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) key2!15))))))

(declare-fun b!1242303 () Bool)

(declare-fun e!704225 () Bool)

(declare-fun lt!562172 () List!27535)

(assert (=> b!1242303 (= e!704225 (not (containsKey!611 lt!562172 key2!15)))))

(declare-fun d!136585 () Bool)

(assert (=> d!136585 e!704225))

(declare-fun res!828558 () Bool)

(assert (=> d!136585 (=> (not res!828558) (not e!704225))))

(assert (=> d!136585 (= res!828558 (isStrictlySorted!760 lt!562172))))

(assert (=> d!136585 (= lt!562172 e!704224)))

(declare-fun c!121574 () Bool)

(assert (=> d!136585 (= c!121574 (and ((_ is Cons!27531) (t!41005 (t!41005 l!644))) (= (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) key2!15)))))

(assert (=> d!136585 (isStrictlySorted!760 (t!41005 (t!41005 l!644)))))

(assert (=> d!136585 (= (removeStrictlySorted!132 (t!41005 (t!41005 l!644)) key2!15) lt!562172)))

(declare-fun b!1242304 () Bool)

(assert (=> b!1242304 (= e!704224 (t!41005 (t!41005 (t!41005 l!644))))))

(declare-fun b!1242305 () Bool)

(assert (=> b!1242305 (= e!704226 Nil!27532)))

(declare-fun b!1242306 () Bool)

(assert (=> b!1242306 (= e!704226 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (t!41005 (t!41005 l!644))) key2!15) (h!28740 (t!41005 (t!41005 l!644)))))))

(assert (= (and d!136585 c!121574) b!1242304))

(assert (= (and d!136585 (not c!121574)) b!1242302))

(assert (= (and b!1242302 c!121575) b!1242306))

(assert (= (and b!1242302 (not c!121575)) b!1242305))

(assert (= (and d!136585 res!828558) b!1242303))

(declare-fun m!1145003 () Bool)

(assert (=> b!1242303 m!1145003))

(declare-fun m!1145005 () Bool)

(assert (=> d!136585 m!1145005))

(assert (=> d!136585 m!1144983))

(declare-fun m!1145007 () Bool)

(assert (=> b!1242306 m!1145007))

(assert (=> b!1242306 m!1145007))

(declare-fun m!1145009 () Bool)

(assert (=> b!1242306 m!1145009))

(assert (=> b!1242252 d!136585))

(declare-fun d!136587 () Bool)

(assert (=> d!136587 (= ($colon$colon!628 (removeStrictlySorted!132 (t!41005 l!644) key2!15) (h!28740 l!644)) (Cons!27531 (h!28740 l!644) (removeStrictlySorted!132 (t!41005 l!644) key2!15)))))

(assert (=> b!1242197 d!136587))

(assert (=> b!1242197 d!136553))

(declare-fun lt!562175 () Bool)

(declare-fun d!136589 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!608 (List!27535) (InoxSet tuple2!20440))

(assert (=> d!136589 (= lt!562175 (select (content!608 lt!562150) (tuple2!20441 key1!25 v1!20)))))

(declare-fun e!704231 () Bool)

(assert (=> d!136589 (= lt!562175 e!704231)))

(declare-fun res!828563 () Bool)

(assert (=> d!136589 (=> (not res!828563) (not e!704231))))

(assert (=> d!136589 (= res!828563 ((_ is Cons!27531) lt!562150))))

(assert (=> d!136589 (= (contains!7409 lt!562150 (tuple2!20441 key1!25 v1!20)) lt!562175)))

(declare-fun b!1242311 () Bool)

(declare-fun e!704232 () Bool)

(assert (=> b!1242311 (= e!704231 e!704232)))

(declare-fun res!828564 () Bool)

(assert (=> b!1242311 (=> res!828564 e!704232)))

(assert (=> b!1242311 (= res!828564 (= (h!28740 lt!562150) (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242312 () Bool)

(assert (=> b!1242312 (= e!704232 (contains!7409 (t!41005 lt!562150) (tuple2!20441 key1!25 v1!20)))))

(assert (= (and d!136589 res!828563) b!1242311))

(assert (= (and b!1242311 (not res!828564)) b!1242312))

(declare-fun m!1145011 () Bool)

(assert (=> d!136589 m!1145011))

(declare-fun m!1145013 () Bool)

(assert (=> d!136589 m!1145013))

(declare-fun m!1145015 () Bool)

(assert (=> b!1242312 m!1145015))

(assert (=> b!1242186 d!136589))

(declare-fun d!136591 () Bool)

(declare-fun res!828565 () Bool)

(declare-fun e!704233 () Bool)

(assert (=> d!136591 (=> res!828565 e!704233)))

(assert (=> d!136591 (= res!828565 (or ((_ is Nil!27532) lt!562135) ((_ is Nil!27532) (t!41005 lt!562135))))))

(assert (=> d!136591 (= (isStrictlySorted!760 lt!562135) e!704233)))

(declare-fun b!1242313 () Bool)

(declare-fun e!704234 () Bool)

(assert (=> b!1242313 (= e!704233 e!704234)))

(declare-fun res!828566 () Bool)

(assert (=> b!1242313 (=> (not res!828566) (not e!704234))))

(assert (=> b!1242313 (= res!828566 (bvslt (_1!10230 (h!28740 lt!562135)) (_1!10230 (h!28740 (t!41005 lt!562135)))))))

(declare-fun b!1242314 () Bool)

(assert (=> b!1242314 (= e!704234 (isStrictlySorted!760 (t!41005 lt!562135)))))

(assert (= (and d!136591 (not res!828565)) b!1242313))

(assert (= (and b!1242313 res!828566) b!1242314))

(declare-fun m!1145017 () Bool)

(assert (=> b!1242314 m!1145017))

(assert (=> d!136509 d!136591))

(declare-fun d!136593 () Bool)

(declare-fun res!828567 () Bool)

(declare-fun e!704235 () Bool)

(assert (=> d!136593 (=> res!828567 e!704235)))

(assert (=> d!136593 (= res!828567 (or ((_ is Nil!27532) (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) ((_ is Nil!27532) (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))))))

(assert (=> d!136593 (= (isStrictlySorted!760 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) e!704235)))

(declare-fun b!1242315 () Bool)

(declare-fun e!704236 () Bool)

(assert (=> b!1242315 (= e!704235 e!704236)))

(declare-fun res!828568 () Bool)

(assert (=> b!1242315 (=> (not res!828568) (not e!704236))))

(assert (=> b!1242315 (= res!828568 (bvslt (_1!10230 (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))))))

(declare-fun b!1242316 () Bool)

(assert (=> b!1242316 (= e!704236 (isStrictlySorted!760 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))))

(assert (= (and d!136593 (not res!828567)) b!1242315))

(assert (= (and b!1242315 res!828568) b!1242316))

(declare-fun m!1145019 () Bool)

(assert (=> b!1242316 m!1145019))

(assert (=> d!136509 d!136593))

(declare-fun c!121579 () Bool)

(declare-fun b!1242317 () Bool)

(declare-fun c!121578 () Bool)

(declare-fun e!704239 () List!27535)

(assert (=> b!1242317 (= e!704239 (ite c!121579 (t!41005 (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (ite c!121578 (Cons!27531 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (t!41005 (t!41005 (removeStrictlySorted!132 l!644 key2!15)))) Nil!27532)))))

(declare-fun call!61325 () List!27535)

(declare-fun bm!61321 () Bool)

(declare-fun c!121576 () Bool)

(assert (=> bm!61321 (= call!61325 ($colon$colon!628 e!704239 (ite c!121576 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121577 () Bool)

(assert (=> bm!61321 (= c!121577 c!121576)))

(declare-fun b!1242318 () Bool)

(declare-fun res!828570 () Bool)

(declare-fun e!704237 () Bool)

(assert (=> b!1242318 (=> (not res!828570) (not e!704237))))

(declare-fun lt!562176 () List!27535)

(assert (=> b!1242318 (= res!828570 (containsKey!611 lt!562176 key1!25))))

(declare-fun b!1242319 () Bool)

(declare-fun e!704240 () List!27535)

(declare-fun e!704241 () List!27535)

(assert (=> b!1242319 (= e!704240 e!704241)))

(assert (=> b!1242319 (= c!121579 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (= (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15)))) key1!25)))))

(declare-fun d!136595 () Bool)

(assert (=> d!136595 e!704237))

(declare-fun res!828569 () Bool)

(assert (=> d!136595 (=> (not res!828569) (not e!704237))))

(assert (=> d!136595 (= res!828569 (isStrictlySorted!760 lt!562176))))

(assert (=> d!136595 (= lt!562176 e!704240)))

(assert (=> d!136595 (= c!121576 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (bvslt (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15)))) key1!25)))))

(assert (=> d!136595 (isStrictlySorted!760 (t!41005 (removeStrictlySorted!132 l!644 key2!15)))))

(assert (=> d!136595 (= (insertStrictlySorted!438 (t!41005 (removeStrictlySorted!132 l!644 key2!15)) key1!25 v1!20) lt!562176)))

(declare-fun b!1242320 () Bool)

(declare-fun call!61324 () List!27535)

(assert (=> b!1242320 (= e!704241 call!61324)))

(declare-fun b!1242321 () Bool)

(declare-fun e!704238 () List!27535)

(declare-fun call!61326 () List!27535)

(assert (=> b!1242321 (= e!704238 call!61326)))

(declare-fun b!1242322 () Bool)

(assert (=> b!1242322 (= e!704238 call!61326)))

(declare-fun b!1242323 () Bool)

(assert (=> b!1242323 (= c!121578 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 l!644 key2!15))) (bvsgt (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 l!644 key2!15)))) key1!25)))))

(assert (=> b!1242323 (= e!704241 e!704238)))

(declare-fun bm!61322 () Bool)

(assert (=> bm!61322 (= call!61324 call!61325)))

(declare-fun bm!61323 () Bool)

(assert (=> bm!61323 (= call!61326 call!61324)))

(declare-fun b!1242324 () Bool)

(assert (=> b!1242324 (= e!704239 (insertStrictlySorted!438 (t!41005 (t!41005 (removeStrictlySorted!132 l!644 key2!15))) key1!25 v1!20))))

(declare-fun b!1242325 () Bool)

(assert (=> b!1242325 (= e!704237 (contains!7409 lt!562176 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242326 () Bool)

(assert (=> b!1242326 (= e!704240 call!61325)))

(assert (= (and d!136595 c!121576) b!1242326))

(assert (= (and d!136595 (not c!121576)) b!1242319))

(assert (= (and b!1242319 c!121579) b!1242320))

(assert (= (and b!1242319 (not c!121579)) b!1242323))

(assert (= (and b!1242323 c!121578) b!1242321))

(assert (= (and b!1242323 (not c!121578)) b!1242322))

(assert (= (or b!1242321 b!1242322) bm!61323))

(assert (= (or b!1242320 bm!61323) bm!61322))

(assert (= (or b!1242326 bm!61322) bm!61321))

(assert (= (and bm!61321 c!121577) b!1242324))

(assert (= (and bm!61321 (not c!121577)) b!1242317))

(assert (= (and d!136595 res!828569) b!1242318))

(assert (= (and b!1242318 res!828570) b!1242325))

(declare-fun m!1145021 () Bool)

(assert (=> b!1242318 m!1145021))

(declare-fun m!1145023 () Bool)

(assert (=> b!1242325 m!1145023))

(declare-fun m!1145025 () Bool)

(assert (=> b!1242324 m!1145025))

(declare-fun m!1145027 () Bool)

(assert (=> d!136595 m!1145027))

(assert (=> d!136595 m!1144999))

(declare-fun m!1145029 () Bool)

(assert (=> bm!61321 m!1145029))

(assert (=> b!1242185 d!136595))

(declare-fun d!136597 () Bool)

(declare-fun res!828571 () Bool)

(declare-fun e!704242 () Bool)

(assert (=> d!136597 (=> res!828571 e!704242)))

(assert (=> d!136597 (= res!828571 (and ((_ is Cons!27531) lt!562169) (= (_1!10230 (h!28740 lt!562169)) key2!15)))))

(assert (=> d!136597 (= (containsKey!611 lt!562169 key2!15) e!704242)))

(declare-fun b!1242327 () Bool)

(declare-fun e!704243 () Bool)

(assert (=> b!1242327 (= e!704242 e!704243)))

(declare-fun res!828572 () Bool)

(assert (=> b!1242327 (=> (not res!828572) (not e!704243))))

(assert (=> b!1242327 (= res!828572 (and (or (not ((_ is Cons!27531) lt!562169)) (bvsle (_1!10230 (h!28740 lt!562169)) key2!15)) ((_ is Cons!27531) lt!562169) (bvslt (_1!10230 (h!28740 lt!562169)) key2!15)))))

(declare-fun b!1242328 () Bool)

(assert (=> b!1242328 (= e!704243 (containsKey!611 (t!41005 lt!562169) key2!15))))

(assert (= (and d!136597 (not res!828571)) b!1242327))

(assert (= (and b!1242327 res!828572) b!1242328))

(declare-fun m!1145031 () Bool)

(assert (=> b!1242328 m!1145031))

(assert (=> b!1242249 d!136597))

(declare-fun d!136599 () Bool)

(declare-fun res!828573 () Bool)

(declare-fun e!704244 () Bool)

(assert (=> d!136599 (=> res!828573 e!704244)))

(assert (=> d!136599 (= res!828573 (or ((_ is Nil!27532) lt!562166) ((_ is Nil!27532) (t!41005 lt!562166))))))

(assert (=> d!136599 (= (isStrictlySorted!760 lt!562166) e!704244)))

(declare-fun b!1242329 () Bool)

(declare-fun e!704245 () Bool)

(assert (=> b!1242329 (= e!704244 e!704245)))

(declare-fun res!828574 () Bool)

(assert (=> b!1242329 (=> (not res!828574) (not e!704245))))

(assert (=> b!1242329 (= res!828574 (bvslt (_1!10230 (h!28740 lt!562166)) (_1!10230 (h!28740 (t!41005 lt!562166)))))))

(declare-fun b!1242330 () Bool)

(assert (=> b!1242330 (= e!704245 (isStrictlySorted!760 (t!41005 lt!562166)))))

(assert (= (and d!136599 (not res!828573)) b!1242329))

(assert (= (and b!1242329 res!828574) b!1242330))

(declare-fun m!1145033 () Bool)

(assert (=> b!1242330 m!1145033))

(assert (=> d!136547 d!136599))

(declare-fun d!136601 () Bool)

(declare-fun res!828575 () Bool)

(declare-fun e!704246 () Bool)

(assert (=> d!136601 (=> res!828575 e!704246)))

(assert (=> d!136601 (= res!828575 (or ((_ is Nil!27532) (insertStrictlySorted!438 l!644 key1!25 v1!20)) ((_ is Nil!27532) (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))))))

(assert (=> d!136601 (= (isStrictlySorted!760 (insertStrictlySorted!438 l!644 key1!25 v1!20)) e!704246)))

(declare-fun b!1242331 () Bool)

(declare-fun e!704247 () Bool)

(assert (=> b!1242331 (= e!704246 e!704247)))

(declare-fun res!828576 () Bool)

(assert (=> b!1242331 (=> (not res!828576) (not e!704247))))

(assert (=> b!1242331 (= res!828576 (bvslt (_1!10230 (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20))) (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))))))))

(declare-fun b!1242332 () Bool)

(assert (=> b!1242332 (= e!704247 (isStrictlySorted!760 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))))))

(assert (= (and d!136601 (not res!828575)) b!1242331))

(assert (= (and b!1242331 res!828576) b!1242332))

(declare-fun m!1145035 () Bool)

(assert (=> b!1242332 m!1145035))

(assert (=> d!136547 d!136601))

(declare-fun d!136603 () Bool)

(declare-fun res!828577 () Bool)

(declare-fun e!704248 () Bool)

(assert (=> d!136603 (=> res!828577 e!704248)))

(assert (=> d!136603 (= res!828577 (and ((_ is Cons!27531) lt!562151) (= (_1!10230 (h!28740 lt!562151)) key2!15)))))

(assert (=> d!136603 (= (containsKey!611 lt!562151 key2!15) e!704248)))

(declare-fun b!1242333 () Bool)

(declare-fun e!704249 () Bool)

(assert (=> b!1242333 (= e!704248 e!704249)))

(declare-fun res!828578 () Bool)

(assert (=> b!1242333 (=> (not res!828578) (not e!704249))))

(assert (=> b!1242333 (= res!828578 (and (or (not ((_ is Cons!27531) lt!562151)) (bvsle (_1!10230 (h!28740 lt!562151)) key2!15)) ((_ is Cons!27531) lt!562151) (bvslt (_1!10230 (h!28740 lt!562151)) key2!15)))))

(declare-fun b!1242334 () Bool)

(assert (=> b!1242334 (= e!704249 (containsKey!611 (t!41005 lt!562151) key2!15))))

(assert (= (and d!136603 (not res!828577)) b!1242333))

(assert (= (and b!1242333 res!828578) b!1242334))

(declare-fun m!1145037 () Bool)

(assert (=> b!1242334 m!1145037))

(assert (=> b!1242194 d!136603))

(assert (=> b!1241992 d!136559))

(declare-fun d!136605 () Bool)

(declare-fun res!828579 () Bool)

(declare-fun e!704250 () Bool)

(assert (=> d!136605 (=> res!828579 e!704250)))

(assert (=> d!136605 (= res!828579 (and ((_ is Cons!27531) lt!562163) (= (_1!10230 (h!28740 lt!562163)) key1!25)))))

(assert (=> d!136605 (= (containsKey!611 lt!562163 key1!25) e!704250)))

(declare-fun b!1242335 () Bool)

(declare-fun e!704251 () Bool)

(assert (=> b!1242335 (= e!704250 e!704251)))

(declare-fun res!828580 () Bool)

(assert (=> b!1242335 (=> (not res!828580) (not e!704251))))

(assert (=> b!1242335 (= res!828580 (and (or (not ((_ is Cons!27531) lt!562163)) (bvsle (_1!10230 (h!28740 lt!562163)) key1!25)) ((_ is Cons!27531) lt!562163) (bvslt (_1!10230 (h!28740 lt!562163)) key1!25)))))

(declare-fun b!1242336 () Bool)

(assert (=> b!1242336 (= e!704251 (containsKey!611 (t!41005 lt!562163) key1!25))))

(assert (= (and d!136605 (not res!828579)) b!1242335))

(assert (= (and b!1242335 res!828580) b!1242336))

(declare-fun m!1145039 () Bool)

(assert (=> b!1242336 m!1145039))

(assert (=> b!1242204 d!136605))

(declare-fun d!136607 () Bool)

(assert (=> d!136607 (= ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)) key2!15) (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20))) (Cons!27531 (h!28740 (insertStrictlySorted!438 l!644 key1!25 v1!20)) (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242237 d!136607))

(declare-fun b!1242337 () Bool)

(declare-fun e!704252 () List!27535)

(declare-fun e!704254 () List!27535)

(assert (=> b!1242337 (= e!704252 e!704254)))

(declare-fun c!121581 () Bool)

(assert (=> b!1242337 (= c!121581 (and ((_ is Cons!27531) (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))) (not (= (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242338 () Bool)

(declare-fun e!704253 () Bool)

(declare-fun lt!562177 () List!27535)

(assert (=> b!1242338 (= e!704253 (not (containsKey!611 lt!562177 key2!15)))))

(declare-fun d!136609 () Bool)

(assert (=> d!136609 e!704253))

(declare-fun res!828581 () Bool)

(assert (=> d!136609 (=> (not res!828581) (not e!704253))))

(assert (=> d!136609 (= res!828581 (isStrictlySorted!760 lt!562177))))

(assert (=> d!136609 (= lt!562177 e!704252)))

(declare-fun c!121580 () Bool)

(assert (=> d!136609 (= c!121580 (and ((_ is Cons!27531) (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))) (= (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136609 (isStrictlySorted!760 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))))

(assert (=> d!136609 (= (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)) key2!15) lt!562177)))

(declare-fun b!1242339 () Bool)

(assert (=> b!1242339 (= e!704252 (t!41005 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))))))

(declare-fun b!1242340 () Bool)

(assert (=> b!1242340 (= e!704254 Nil!27532)))

(declare-fun b!1242341 () Bool)

(assert (=> b!1242341 (= e!704254 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20))) key2!15) (h!28740 (t!41005 (insertStrictlySorted!438 l!644 key1!25 v1!20)))))))

(assert (= (and d!136609 c!121580) b!1242339))

(assert (= (and d!136609 (not c!121580)) b!1242337))

(assert (= (and b!1242337 c!121581) b!1242341))

(assert (= (and b!1242337 (not c!121581)) b!1242340))

(assert (= (and d!136609 res!828581) b!1242338))

(declare-fun m!1145041 () Bool)

(assert (=> b!1242338 m!1145041))

(declare-fun m!1145043 () Bool)

(assert (=> d!136609 m!1145043))

(assert (=> d!136609 m!1145035))

(declare-fun m!1145045 () Bool)

(assert (=> b!1242341 m!1145045))

(assert (=> b!1242341 m!1145045))

(declare-fun m!1145047 () Bool)

(assert (=> b!1242341 m!1145047))

(assert (=> b!1242237 d!136609))

(declare-fun d!136611 () Bool)

(declare-fun res!828582 () Bool)

(declare-fun e!704255 () Bool)

(assert (=> d!136611 (=> res!828582 e!704255)))

(assert (=> d!136611 (= res!828582 (or ((_ is Nil!27532) (t!41005 (t!41005 l!644))) ((_ is Nil!27532) (t!41005 (t!41005 (t!41005 l!644))))))))

(assert (=> d!136611 (= (isStrictlySorted!760 (t!41005 (t!41005 l!644))) e!704255)))

(declare-fun b!1242342 () Bool)

(declare-fun e!704256 () Bool)

(assert (=> b!1242342 (= e!704255 e!704256)))

(declare-fun res!828583 () Bool)

(assert (=> b!1242342 (=> (not res!828583) (not e!704256))))

(assert (=> b!1242342 (= res!828583 (bvslt (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) (_1!10230 (h!28740 (t!41005 (t!41005 (t!41005 l!644)))))))))

(declare-fun b!1242343 () Bool)

(assert (=> b!1242343 (= e!704256 (isStrictlySorted!760 (t!41005 (t!41005 (t!41005 l!644)))))))

(assert (= (and d!136611 (not res!828582)) b!1242342))

(assert (= (and b!1242342 res!828583) b!1242343))

(declare-fun m!1145049 () Bool)

(assert (=> b!1242343 m!1145049))

(assert (=> b!1242264 d!136611))

(declare-fun d!136613 () Bool)

(declare-fun lt!562178 () Bool)

(assert (=> d!136613 (= lt!562178 (select (content!608 lt!562144) (tuple2!20441 key1!25 v1!20)))))

(declare-fun e!704257 () Bool)

(assert (=> d!136613 (= lt!562178 e!704257)))

(declare-fun res!828584 () Bool)

(assert (=> d!136613 (=> (not res!828584) (not e!704257))))

(assert (=> d!136613 (= res!828584 ((_ is Cons!27531) lt!562144))))

(assert (=> d!136613 (= (contains!7409 lt!562144 (tuple2!20441 key1!25 v1!20)) lt!562178)))

(declare-fun b!1242344 () Bool)

(declare-fun e!704258 () Bool)

(assert (=> b!1242344 (= e!704257 e!704258)))

(declare-fun res!828585 () Bool)

(assert (=> b!1242344 (=> res!828585 e!704258)))

(assert (=> b!1242344 (= res!828585 (= (h!28740 lt!562144) (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242345 () Bool)

(assert (=> b!1242345 (= e!704258 (contains!7409 (t!41005 lt!562144) (tuple2!20441 key1!25 v1!20)))))

(assert (= (and d!136613 res!828584) b!1242344))

(assert (= (and b!1242344 (not res!828585)) b!1242345))

(declare-fun m!1145051 () Bool)

(assert (=> d!136613 m!1145051))

(declare-fun m!1145053 () Bool)

(assert (=> d!136613 m!1145053))

(declare-fun m!1145055 () Bool)

(assert (=> b!1242345 m!1145055))

(assert (=> b!1242126 d!136613))

(declare-fun d!136615 () Bool)

(assert (=> d!136615 (= ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) key2!15) (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) (Cons!27531 (h!28740 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) key2!15)))))

(assert (=> b!1242037 d!136615))

(declare-fun b!1242346 () Bool)

(declare-fun e!704259 () List!27535)

(declare-fun e!704261 () List!27535)

(assert (=> b!1242346 (= e!704259 e!704261)))

(declare-fun c!121583 () Bool)

(assert (=> b!1242346 (= c!121583 (and ((_ is Cons!27531) (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) (not (= (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242347 () Bool)

(declare-fun e!704260 () Bool)

(declare-fun lt!562179 () List!27535)

(assert (=> b!1242347 (= e!704260 (not (containsKey!611 lt!562179 key2!15)))))

(declare-fun d!136617 () Bool)

(assert (=> d!136617 e!704260))

(declare-fun res!828586 () Bool)

(assert (=> d!136617 (=> (not res!828586) (not e!704260))))

(assert (=> d!136617 (= res!828586 (isStrictlySorted!760 lt!562179))))

(assert (=> d!136617 (= lt!562179 e!704259)))

(declare-fun c!121582 () Bool)

(assert (=> d!136617 (= c!121582 (and ((_ is Cons!27531) (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) (= (_1!10230 (h!28740 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))) key2!15)))))

(assert (=> d!136617 (isStrictlySorted!760 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))))

(assert (=> d!136617 (= (removeStrictlySorted!132 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)) key2!15) lt!562179)))

(declare-fun b!1242348 () Bool)

(assert (=> b!1242348 (= e!704259 (t!41005 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))))))

(declare-fun b!1242349 () Bool)

(assert (=> b!1242349 (= e!704261 Nil!27532)))

(declare-fun b!1242350 () Bool)

(assert (=> b!1242350 (= e!704261 ($colon$colon!628 (removeStrictlySorted!132 (t!41005 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20))) key2!15) (h!28740 (t!41005 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20)))))))

(assert (= (and d!136617 c!121582) b!1242348))

(assert (= (and d!136617 (not c!121582)) b!1242346))

(assert (= (and b!1242346 c!121583) b!1242350))

(assert (= (and b!1242346 (not c!121583)) b!1242349))

(assert (= (and d!136617 res!828586) b!1242347))

(declare-fun m!1145057 () Bool)

(assert (=> b!1242347 m!1145057))

(declare-fun m!1145059 () Bool)

(assert (=> d!136617 m!1145059))

(assert (=> d!136617 m!1145019))

(declare-fun m!1145061 () Bool)

(assert (=> b!1242350 m!1145061))

(assert (=> b!1242350 m!1145061))

(declare-fun m!1145063 () Bool)

(assert (=> b!1242350 m!1145063))

(assert (=> b!1242037 d!136617))

(declare-fun d!136619 () Bool)

(declare-fun res!828587 () Bool)

(declare-fun e!704262 () Bool)

(assert (=> d!136619 (=> res!828587 e!704262)))

(assert (=> d!136619 (= res!828587 (or ((_ is Nil!27532) lt!562151) ((_ is Nil!27532) (t!41005 lt!562151))))))

(assert (=> d!136619 (= (isStrictlySorted!760 lt!562151) e!704262)))

(declare-fun b!1242351 () Bool)

(declare-fun e!704263 () Bool)

(assert (=> b!1242351 (= e!704262 e!704263)))

(declare-fun res!828588 () Bool)

(assert (=> b!1242351 (=> (not res!828588) (not e!704263))))

(assert (=> b!1242351 (= res!828588 (bvslt (_1!10230 (h!28740 lt!562151)) (_1!10230 (h!28740 (t!41005 lt!562151)))))))

(declare-fun b!1242352 () Bool)

(assert (=> b!1242352 (= e!704263 (isStrictlySorted!760 (t!41005 lt!562151)))))

(assert (= (and d!136619 (not res!828587)) b!1242351))

(assert (= (and b!1242351 res!828588) b!1242352))

(declare-fun m!1145065 () Bool)

(assert (=> b!1242352 m!1145065))

(assert (=> d!136531 d!136619))

(assert (=> d!136531 d!136499))

(declare-fun d!136621 () Bool)

(assert (=> d!136621 (= ($colon$colon!628 e!704160 (ite c!121550 (h!28740 (t!41005 l!644)) (tuple2!20441 key1!25 v1!20))) (Cons!27531 (ite c!121550 (h!28740 (t!41005 l!644)) (tuple2!20441 key1!25 v1!20)) e!704160))))

(assert (=> bm!61312 d!136621))

(declare-fun b!1242353 () Bool)

(declare-fun e!704266 () List!27535)

(declare-fun c!121586 () Bool)

(declare-fun c!121587 () Bool)

(assert (=> b!1242353 (= e!704266 (ite c!121587 (t!41005 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (ite c!121586 (Cons!27531 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (t!41005 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))) Nil!27532)))))

(declare-fun bm!61324 () Bool)

(declare-fun call!61328 () List!27535)

(declare-fun c!121584 () Bool)

(assert (=> bm!61324 (= call!61328 ($colon$colon!628 e!704266 (ite c!121584 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121585 () Bool)

(assert (=> bm!61324 (= c!121585 c!121584)))

(declare-fun b!1242354 () Bool)

(declare-fun res!828590 () Bool)

(declare-fun e!704264 () Bool)

(assert (=> b!1242354 (=> (not res!828590) (not e!704264))))

(declare-fun lt!562180 () List!27535)

(assert (=> b!1242354 (= res!828590 (containsKey!611 lt!562180 key1!25))))

(declare-fun b!1242355 () Bool)

(declare-fun e!704267 () List!27535)

(declare-fun e!704268 () List!27535)

(assert (=> b!1242355 (= e!704267 e!704268)))

(assert (=> b!1242355 (= c!121587 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (= (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))) key1!25)))))

(declare-fun d!136623 () Bool)

(assert (=> d!136623 e!704264))

(declare-fun res!828589 () Bool)

(assert (=> d!136623 (=> (not res!828589) (not e!704264))))

(assert (=> d!136623 (= res!828589 (isStrictlySorted!760 lt!562180))))

(assert (=> d!136623 (= lt!562180 e!704267)))

(assert (=> d!136623 (= c!121584 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (bvslt (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))) key1!25)))))

(assert (=> d!136623 (isStrictlySorted!760 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))))

(assert (=> d!136623 (= (insertStrictlySorted!438 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)) key1!25 v1!20) lt!562180)))

(declare-fun b!1242356 () Bool)

(declare-fun call!61327 () List!27535)

(assert (=> b!1242356 (= e!704268 call!61327)))

(declare-fun b!1242357 () Bool)

(declare-fun e!704265 () List!27535)

(declare-fun call!61329 () List!27535)

(assert (=> b!1242357 (= e!704265 call!61329)))

(declare-fun b!1242358 () Bool)

(assert (=> b!1242358 (= e!704265 call!61329)))

(declare-fun b!1242359 () Bool)

(assert (=> b!1242359 (= c!121586 (and ((_ is Cons!27531) (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) (bvsgt (_1!10230 (h!28740 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15)))) key1!25)))))

(assert (=> b!1242359 (= e!704268 e!704265)))

(declare-fun bm!61325 () Bool)

(assert (=> bm!61325 (= call!61327 call!61328)))

(declare-fun bm!61326 () Bool)

(assert (=> bm!61326 (= call!61329 call!61327)))

(declare-fun b!1242360 () Bool)

(assert (=> b!1242360 (= e!704266 (insertStrictlySorted!438 (t!41005 (t!41005 (removeStrictlySorted!132 (t!41005 l!644) key2!15))) key1!25 v1!20))))

(declare-fun b!1242361 () Bool)

(assert (=> b!1242361 (= e!704264 (contains!7409 lt!562180 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242362 () Bool)

(assert (=> b!1242362 (= e!704267 call!61328)))

(assert (= (and d!136623 c!121584) b!1242362))

(assert (= (and d!136623 (not c!121584)) b!1242355))

(assert (= (and b!1242355 c!121587) b!1242356))

(assert (= (and b!1242355 (not c!121587)) b!1242359))

(assert (= (and b!1242359 c!121586) b!1242357))

(assert (= (and b!1242359 (not c!121586)) b!1242358))

(assert (= (or b!1242357 b!1242358) bm!61326))

(assert (= (or b!1242356 bm!61326) bm!61325))

(assert (= (or b!1242362 bm!61325) bm!61324))

(assert (= (and bm!61324 c!121585) b!1242360))

(assert (= (and bm!61324 (not c!121585)) b!1242353))

(assert (= (and d!136623 res!828589) b!1242354))

(assert (= (and b!1242354 res!828590) b!1242361))

(declare-fun m!1145067 () Bool)

(assert (=> b!1242354 m!1145067))

(declare-fun m!1145069 () Bool)

(assert (=> b!1242361 m!1145069))

(declare-fun m!1145071 () Bool)

(assert (=> b!1242360 m!1145071))

(declare-fun m!1145073 () Bool)

(assert (=> d!136623 m!1145073))

(assert (=> d!136623 m!1144993))

(declare-fun m!1145075 () Bool)

(assert (=> bm!61324 m!1145075))

(assert (=> b!1242125 d!136623))

(declare-fun d!136625 () Bool)

(declare-fun res!828591 () Bool)

(declare-fun e!704269 () Bool)

(assert (=> d!136625 (=> res!828591 e!704269)))

(assert (=> d!136625 (= res!828591 (and ((_ is Cons!27531) lt!562166) (= (_1!10230 (h!28740 lt!562166)) key2!15)))))

(assert (=> d!136625 (= (containsKey!611 lt!562166 key2!15) e!704269)))

(declare-fun b!1242363 () Bool)

(declare-fun e!704270 () Bool)

(assert (=> b!1242363 (= e!704269 e!704270)))

(declare-fun res!828592 () Bool)

(assert (=> b!1242363 (=> (not res!828592) (not e!704270))))

(assert (=> b!1242363 (= res!828592 (and (or (not ((_ is Cons!27531) lt!562166)) (bvsle (_1!10230 (h!28740 lt!562166)) key2!15)) ((_ is Cons!27531) lt!562166) (bvslt (_1!10230 (h!28740 lt!562166)) key2!15)))))

(declare-fun b!1242364 () Bool)

(assert (=> b!1242364 (= e!704270 (containsKey!611 (t!41005 lt!562166) key2!15))))

(assert (= (and d!136625 (not res!828591)) b!1242363))

(assert (= (and b!1242363 res!828592) b!1242364))

(declare-fun m!1145077 () Bool)

(assert (=> b!1242364 m!1145077))

(assert (=> b!1242234 d!136625))

(declare-fun d!136627 () Bool)

(declare-fun lt!562181 () Bool)

(assert (=> d!136627 (= lt!562181 (select (content!608 lt!562147) (tuple2!20441 key1!25 v1!20)))))

(declare-fun e!704271 () Bool)

(assert (=> d!136627 (= lt!562181 e!704271)))

(declare-fun res!828593 () Bool)

(assert (=> d!136627 (=> (not res!828593) (not e!704271))))

(assert (=> d!136627 (= res!828593 ((_ is Cons!27531) lt!562147))))

(assert (=> d!136627 (= (contains!7409 lt!562147 (tuple2!20441 key1!25 v1!20)) lt!562181)))

(declare-fun b!1242365 () Bool)

(declare-fun e!704272 () Bool)

(assert (=> b!1242365 (= e!704271 e!704272)))

(declare-fun res!828594 () Bool)

(assert (=> b!1242365 (=> res!828594 e!704272)))

(assert (=> b!1242365 (= res!828594 (= (h!28740 lt!562147) (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242366 () Bool)

(assert (=> b!1242366 (= e!704272 (contains!7409 (t!41005 lt!562147) (tuple2!20441 key1!25 v1!20)))))

(assert (= (and d!136627 res!828593) b!1242365))

(assert (= (and b!1242365 (not res!828594)) b!1242366))

(declare-fun m!1145079 () Bool)

(assert (=> d!136627 m!1145079))

(declare-fun m!1145081 () Bool)

(assert (=> d!136627 m!1145081))

(declare-fun m!1145083 () Bool)

(assert (=> b!1242366 m!1145083))

(assert (=> b!1242156 d!136627))

(declare-fun lt!562182 () Bool)

(declare-fun d!136629 () Bool)

(assert (=> d!136629 (= lt!562182 (select (content!608 lt!562163) (tuple2!20441 key1!25 v1!20)))))

(declare-fun e!704273 () Bool)

(assert (=> d!136629 (= lt!562182 e!704273)))

(declare-fun res!828595 () Bool)

(assert (=> d!136629 (=> (not res!828595) (not e!704273))))

(assert (=> d!136629 (= res!828595 ((_ is Cons!27531) lt!562163))))

(assert (=> d!136629 (= (contains!7409 lt!562163 (tuple2!20441 key1!25 v1!20)) lt!562182)))

(declare-fun b!1242367 () Bool)

(declare-fun e!704274 () Bool)

(assert (=> b!1242367 (= e!704273 e!704274)))

(declare-fun res!828596 () Bool)

(assert (=> b!1242367 (=> res!828596 e!704274)))

(assert (=> b!1242367 (= res!828596 (= (h!28740 lt!562163) (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242368 () Bool)

(assert (=> b!1242368 (= e!704274 (contains!7409 (t!41005 lt!562163) (tuple2!20441 key1!25 v1!20)))))

(assert (= (and d!136629 res!828595) b!1242367))

(assert (= (and b!1242367 (not res!828596)) b!1242368))

(declare-fun m!1145085 () Bool)

(assert (=> d!136629 m!1145085))

(declare-fun m!1145087 () Bool)

(assert (=> d!136629 m!1145087))

(declare-fun m!1145089 () Bool)

(assert (=> b!1242368 m!1145089))

(assert (=> b!1242211 d!136629))

(assert (=> b!1242155 d!136541))

(declare-fun d!136631 () Bool)

(declare-fun res!828597 () Bool)

(declare-fun e!704275 () Bool)

(assert (=> d!136631 (=> res!828597 e!704275)))

(assert (=> d!136631 (= res!828597 (and ((_ is Cons!27531) lt!562135) (= (_1!10230 (h!28740 lt!562135)) key2!15)))))

(assert (=> d!136631 (= (containsKey!611 lt!562135 key2!15) e!704275)))

(declare-fun b!1242369 () Bool)

(declare-fun e!704276 () Bool)

(assert (=> b!1242369 (= e!704275 e!704276)))

(declare-fun res!828598 () Bool)

(assert (=> b!1242369 (=> (not res!828598) (not e!704276))))

(assert (=> b!1242369 (= res!828598 (and (or (not ((_ is Cons!27531) lt!562135)) (bvsle (_1!10230 (h!28740 lt!562135)) key2!15)) ((_ is Cons!27531) lt!562135) (bvslt (_1!10230 (h!28740 lt!562135)) key2!15)))))

(declare-fun b!1242370 () Bool)

(assert (=> b!1242370 (= e!704276 (containsKey!611 (t!41005 lt!562135) key2!15))))

(assert (= (and d!136631 (not res!828597)) b!1242369))

(assert (= (and b!1242369 res!828598) b!1242370))

(declare-fun m!1145091 () Bool)

(assert (=> b!1242370 m!1145091))

(assert (=> b!1242034 d!136631))

(declare-fun d!136633 () Bool)

(declare-fun res!828599 () Bool)

(declare-fun e!704277 () Bool)

(assert (=> d!136633 (=> res!828599 e!704277)))

(assert (=> d!136633 (= res!828599 (and ((_ is Cons!27531) lt!562150) (= (_1!10230 (h!28740 lt!562150)) key1!25)))))

(assert (=> d!136633 (= (containsKey!611 lt!562150 key1!25) e!704277)))

(declare-fun b!1242371 () Bool)

(declare-fun e!704278 () Bool)

(assert (=> b!1242371 (= e!704277 e!704278)))

(declare-fun res!828600 () Bool)

(assert (=> b!1242371 (=> (not res!828600) (not e!704278))))

(assert (=> b!1242371 (= res!828600 (and (or (not ((_ is Cons!27531) lt!562150)) (bvsle (_1!10230 (h!28740 lt!562150)) key1!25)) ((_ is Cons!27531) lt!562150) (bvslt (_1!10230 (h!28740 lt!562150)) key1!25)))))

(declare-fun b!1242372 () Bool)

(assert (=> b!1242372 (= e!704278 (containsKey!611 (t!41005 lt!562150) key1!25))))

(assert (= (and d!136633 (not res!828599)) b!1242371))

(assert (= (and b!1242371 res!828600) b!1242372))

(declare-fun m!1145093 () Bool)

(assert (=> b!1242372 m!1145093))

(assert (=> b!1242179 d!136633))

(declare-fun e!704281 () List!27535)

(declare-fun c!121591 () Bool)

(declare-fun c!121590 () Bool)

(declare-fun b!1242373 () Bool)

(assert (=> b!1242373 (= e!704281 (ite c!121591 (t!41005 (t!41005 (t!41005 l!644))) (ite c!121590 (Cons!27531 (h!28740 (t!41005 (t!41005 l!644))) (t!41005 (t!41005 (t!41005 l!644)))) Nil!27532)))))

(declare-fun c!121588 () Bool)

(declare-fun bm!61327 () Bool)

(declare-fun call!61331 () List!27535)

(assert (=> bm!61327 (= call!61331 ($colon$colon!628 e!704281 (ite c!121588 (h!28740 (t!41005 (t!41005 l!644))) (tuple2!20441 key1!25 v1!20))))))

(declare-fun c!121589 () Bool)

(assert (=> bm!61327 (= c!121589 c!121588)))

(declare-fun b!1242374 () Bool)

(declare-fun res!828602 () Bool)

(declare-fun e!704279 () Bool)

(assert (=> b!1242374 (=> (not res!828602) (not e!704279))))

(declare-fun lt!562183 () List!27535)

(assert (=> b!1242374 (= res!828602 (containsKey!611 lt!562183 key1!25))))

(declare-fun b!1242375 () Bool)

(declare-fun e!704282 () List!27535)

(declare-fun e!704283 () List!27535)

(assert (=> b!1242375 (= e!704282 e!704283)))

(assert (=> b!1242375 (= c!121591 (and ((_ is Cons!27531) (t!41005 (t!41005 l!644))) (= (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) key1!25)))))

(declare-fun d!136635 () Bool)

(assert (=> d!136635 e!704279))

(declare-fun res!828601 () Bool)

(assert (=> d!136635 (=> (not res!828601) (not e!704279))))

(assert (=> d!136635 (= res!828601 (isStrictlySorted!760 lt!562183))))

(assert (=> d!136635 (= lt!562183 e!704282)))

(assert (=> d!136635 (= c!121588 (and ((_ is Cons!27531) (t!41005 (t!41005 l!644))) (bvslt (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) key1!25)))))

(assert (=> d!136635 (isStrictlySorted!760 (t!41005 (t!41005 l!644)))))

(assert (=> d!136635 (= (insertStrictlySorted!438 (t!41005 (t!41005 l!644)) key1!25 v1!20) lt!562183)))

(declare-fun b!1242376 () Bool)

(declare-fun call!61330 () List!27535)

(assert (=> b!1242376 (= e!704283 call!61330)))

(declare-fun b!1242377 () Bool)

(declare-fun e!704280 () List!27535)

(declare-fun call!61332 () List!27535)

(assert (=> b!1242377 (= e!704280 call!61332)))

(declare-fun b!1242378 () Bool)

(assert (=> b!1242378 (= e!704280 call!61332)))

(declare-fun b!1242379 () Bool)

(assert (=> b!1242379 (= c!121590 (and ((_ is Cons!27531) (t!41005 (t!41005 l!644))) (bvsgt (_1!10230 (h!28740 (t!41005 (t!41005 l!644)))) key1!25)))))

(assert (=> b!1242379 (= e!704283 e!704280)))

(declare-fun bm!61328 () Bool)

(assert (=> bm!61328 (= call!61330 call!61331)))

(declare-fun bm!61329 () Bool)

(assert (=> bm!61329 (= call!61332 call!61330)))

(declare-fun b!1242380 () Bool)

(assert (=> b!1242380 (= e!704281 (insertStrictlySorted!438 (t!41005 (t!41005 (t!41005 l!644))) key1!25 v1!20))))

(declare-fun b!1242381 () Bool)

(assert (=> b!1242381 (= e!704279 (contains!7409 lt!562183 (tuple2!20441 key1!25 v1!20)))))

(declare-fun b!1242382 () Bool)

(assert (=> b!1242382 (= e!704282 call!61331)))

(assert (= (and d!136635 c!121588) b!1242382))

(assert (= (and d!136635 (not c!121588)) b!1242375))

(assert (= (and b!1242375 c!121591) b!1242376))

(assert (= (and b!1242375 (not c!121591)) b!1242379))

(assert (= (and b!1242379 c!121590) b!1242377))

(assert (= (and b!1242379 (not c!121590)) b!1242378))

(assert (= (or b!1242377 b!1242378) bm!61329))

(assert (= (or b!1242376 bm!61329) bm!61328))

(assert (= (or b!1242382 bm!61328) bm!61327))

(assert (= (and bm!61327 c!121589) b!1242380))

(assert (= (and bm!61327 (not c!121589)) b!1242373))

(assert (= (and d!136635 res!828601) b!1242374))

(assert (= (and b!1242374 res!828602) b!1242381))

(declare-fun m!1145095 () Bool)

(assert (=> b!1242374 m!1145095))

(declare-fun m!1145097 () Bool)

(assert (=> b!1242381 m!1145097))

(declare-fun m!1145099 () Bool)

(assert (=> b!1242380 m!1145099))

(declare-fun m!1145101 () Bool)

(assert (=> d!136635 m!1145101))

(assert (=> d!136635 m!1144983))

(declare-fun m!1145103 () Bool)

(assert (=> bm!61327 m!1145103))

(assert (=> b!1242210 d!136635))

(declare-fun d!136637 () Bool)

(assert (=> d!136637 (= ($colon$colon!628 e!704146 (ite c!121540 (h!28740 (removeStrictlySorted!132 l!644 key2!15)) (tuple2!20441 key1!25 v1!20))) (Cons!27531 (ite c!121540 (h!28740 (removeStrictlySorted!132 l!644 key2!15)) (tuple2!20441 key1!25 v1!20)) e!704146))))

(assert (=> bm!61309 d!136637))

(declare-fun d!136639 () Bool)

(assert (=> d!136639 (= (insertStrictlySorted!438 (removeStrictlySorted!132 (t!41005 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!132 (insertStrictlySorted!438 (t!41005 l!644) key1!25 v1!20) key2!15))))

(assert (=> d!136639 true))

(declare-fun _$3!70 () Unit!41205)

(assert (=> d!136639 (= (choose!1849 (t!41005 l!644) key1!25 v1!20 key2!15) _$3!70)))

(declare-fun bs!34972 () Bool)

(assert (= bs!34972 d!136639))

(assert (=> bs!34972 m!1144713))

(assert (=> bs!34972 m!1144713))

(assert (=> bs!34972 m!1144715))

(assert (=> bs!34972 m!1144709))

(assert (=> bs!34972 m!1144709))

(assert (=> bs!34972 m!1144711))

(assert (=> d!136537 d!136639))

(assert (=> d!136537 d!136509))

(assert (=> d!136537 d!136515))

(assert (=> d!136537 d!136541))

(assert (=> d!136537 d!136553))

(declare-fun b!1242383 () Bool)

(declare-fun e!704284 () Bool)

(declare-fun tp!92761 () Bool)

(assert (=> b!1242383 (= e!704284 (and tp_is_empty!31287 tp!92761))))

(assert (=> b!1242279 (= tp!92760 e!704284)))

(assert (= (and b!1242279 ((_ is Cons!27531) (t!41005 (t!41005 l!644)))) b!1242383))

(check-sat (not b!1242338) (not d!136595) (not b!1242361) (not b!1242372) (not d!136629) (not d!136617) (not b!1242364) (not d!136585) (not b!1242283) (not bm!61321) tp_is_empty!31287 (not b!1242328) (not b!1242350) (not b!1242383) (not b!1242303) (not b!1242293) (not b!1242324) (not b!1242347) (not b!1242306) (not b!1242381) (not b!1242343) (not b!1242354) (not d!136613) (not b!1242374) (not b!1242332) (not b!1242345) (not bm!61327) (not b!1242380) (not b!1242341) (not b!1242289) (not b!1242299) (not b!1242314) (not b!1242281) (not b!1242291) (not b!1242316) (not b!1242368) (not b!1242336) (not d!136589) (not b!1242352) (not b!1242366) (not d!136639) (not b!1242370) (not b!1242295) (not b!1242318) (not d!136627) (not b!1242312) (not d!136609) (not d!136635) (not b!1242360) (not b!1242297) (not b!1242334) (not b!1242330) (not bm!61324) (not b!1242325) (not d!136623) (not b!1242301))
(check-sat)
