; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103610 () Bool)

(assert start!103610)

(declare-fun res!827919 () Bool)

(declare-fun e!703301 () Bool)

(assert (=> start!103610 (=> (not res!827919) (not e!703301))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103610 (= res!827919 (not (= key1!25 key2!15)))))

(assert (=> start!103610 e!703301))

(assert (=> start!103610 true))

(declare-fun e!703300 () Bool)

(assert (=> start!103610 e!703300))

(declare-fun tp_is_empty!31221 () Bool)

(assert (=> start!103610 tp_is_empty!31221))

(declare-fun b!1240748 () Bool)

(declare-fun res!827918 () Bool)

(assert (=> b!1240748 (=> (not res!827918) (not e!703301))))

(declare-datatypes ((B!1822 0))(
  ( (B!1823 (val!15673 Int)) )
))
(declare-datatypes ((tuple2!20374 0))(
  ( (tuple2!20375 (_1!10197 (_ BitVec 64)) (_2!10197 B!1822)) )
))
(declare-datatypes ((List!27502 0))(
  ( (Nil!27499) (Cons!27498 (h!28707 tuple2!20374) (t!40972 List!27502)) )
))
(declare-fun l!644 () List!27502)

(declare-fun isStrictlySorted!736 (List!27502) Bool)

(assert (=> b!1240748 (= res!827918 (isStrictlySorted!736 (t!40972 l!644)))))

(declare-fun b!1240749 () Bool)

(declare-fun removeStrictlySorted!120 (List!27502 (_ BitVec 64)) List!27502)

(assert (=> b!1240749 (= e!703301 (not (isStrictlySorted!736 (removeStrictlySorted!120 l!644 key2!15))))))

(declare-fun v1!20 () B!1822)

(declare-fun insertStrictlySorted!426 (List!27502 (_ BitVec 64) B!1822) List!27502)

(assert (=> b!1240749 (= (insertStrictlySorted!426 (removeStrictlySorted!120 (t!40972 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!120 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41187 0))(
  ( (Unit!41188) )
))
(declare-fun lt!561985 () Unit!41187)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!8 (List!27502 (_ BitVec 64) B!1822 (_ BitVec 64)) Unit!41187)

(assert (=> b!1240749 (= lt!561985 (lemmaInsertAndRemoveStrictlySortedCommutative!8 (t!40972 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240750 () Bool)

(declare-fun tp!92586 () Bool)

(assert (=> b!1240750 (= e!703300 (and tp_is_empty!31221 tp!92586))))

(declare-fun b!1240751 () Bool)

(declare-fun res!827917 () Bool)

(assert (=> b!1240751 (=> (not res!827917) (not e!703301))))

(assert (=> b!1240751 (= res!827917 (isStrictlySorted!736 l!644))))

(declare-fun b!1240752 () Bool)

(declare-fun res!827920 () Bool)

(assert (=> b!1240752 (=> (not res!827920) (not e!703301))))

(get-info :version)

(assert (=> b!1240752 (= res!827920 ((_ is Cons!27498) l!644))))

(assert (= (and start!103610 res!827919) b!1240751))

(assert (= (and b!1240751 res!827917) b!1240752))

(assert (= (and b!1240752 res!827920) b!1240748))

(assert (= (and b!1240748 res!827918) b!1240749))

(assert (= (and start!103610 ((_ is Cons!27498) l!644)) b!1240750))

(declare-fun m!1144037 () Bool)

(assert (=> b!1240748 m!1144037))

(declare-fun m!1144039 () Bool)

(assert (=> b!1240749 m!1144039))

(declare-fun m!1144041 () Bool)

(assert (=> b!1240749 m!1144041))

(declare-fun m!1144043 () Bool)

(assert (=> b!1240749 m!1144043))

(assert (=> b!1240749 m!1144041))

(declare-fun m!1144045 () Bool)

(assert (=> b!1240749 m!1144045))

(declare-fun m!1144047 () Bool)

(assert (=> b!1240749 m!1144047))

(assert (=> b!1240749 m!1144045))

(declare-fun m!1144049 () Bool)

(assert (=> b!1240749 m!1144049))

(assert (=> b!1240749 m!1144039))

(declare-fun m!1144051 () Bool)

(assert (=> b!1240749 m!1144051))

(declare-fun m!1144053 () Bool)

(assert (=> b!1240751 m!1144053))

(check-sat (not b!1240750) (not b!1240748) tp_is_empty!31221 (not b!1240751) (not b!1240749))
(check-sat)
(get-model)

(declare-fun d!136287 () Bool)

(declare-fun res!827949 () Bool)

(declare-fun e!703324 () Bool)

(assert (=> d!136287 (=> res!827949 e!703324)))

(assert (=> d!136287 (= res!827949 (or ((_ is Nil!27499) l!644) ((_ is Nil!27499) (t!40972 l!644))))))

(assert (=> d!136287 (= (isStrictlySorted!736 l!644) e!703324)))

(declare-fun b!1240782 () Bool)

(declare-fun e!703325 () Bool)

(assert (=> b!1240782 (= e!703324 e!703325)))

(declare-fun res!827950 () Bool)

(assert (=> b!1240782 (=> (not res!827950) (not e!703325))))

(assert (=> b!1240782 (= res!827950 (bvslt (_1!10197 (h!28707 l!644)) (_1!10197 (h!28707 (t!40972 l!644)))))))

(declare-fun b!1240783 () Bool)

(assert (=> b!1240783 (= e!703325 (isStrictlySorted!736 (t!40972 l!644)))))

(assert (= (and d!136287 (not res!827949)) b!1240782))

(assert (= (and b!1240782 res!827950) b!1240783))

(assert (=> b!1240783 m!1144037))

(assert (=> b!1240751 d!136287))

(declare-fun b!1240825 () Bool)

(declare-fun e!703351 () List!27502)

(assert (=> b!1240825 (= e!703351 Nil!27499)))

(declare-fun b!1240826 () Bool)

(declare-fun e!703352 () Bool)

(declare-fun lt!561996 () List!27502)

(declare-fun containsKey!601 (List!27502 (_ BitVec 64)) Bool)

(assert (=> b!1240826 (= e!703352 (not (containsKey!601 lt!561996 key2!15)))))

(declare-fun b!1240827 () Bool)

(declare-fun e!703353 () List!27502)

(assert (=> b!1240827 (= e!703353 (t!40972 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20)))))

(declare-fun d!136291 () Bool)

(assert (=> d!136291 e!703352))

(declare-fun res!827962 () Bool)

(assert (=> d!136291 (=> (not res!827962) (not e!703352))))

(assert (=> d!136291 (= res!827962 (isStrictlySorted!736 lt!561996))))

(assert (=> d!136291 (= lt!561996 e!703353)))

(declare-fun c!121243 () Bool)

(assert (=> d!136291 (= c!121243 (and ((_ is Cons!27498) (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20)) (= (_1!10197 (h!28707 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136291 (isStrictlySorted!736 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20))))

(assert (=> d!136291 (= (removeStrictlySorted!120 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20) key2!15) lt!561996)))

(declare-fun b!1240828 () Bool)

(assert (=> b!1240828 (= e!703353 e!703351)))

(declare-fun c!121244 () Bool)

(assert (=> b!1240828 (= c!121244 (and ((_ is Cons!27498) (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20)) (not (= (_1!10197 (h!28707 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1240829 () Bool)

(declare-fun $colon$colon!618 (List!27502 tuple2!20374) List!27502)

(assert (=> b!1240829 (= e!703351 ($colon$colon!618 (removeStrictlySorted!120 (t!40972 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20)) key2!15) (h!28707 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20))))))

(assert (= (and d!136291 c!121243) b!1240827))

(assert (= (and d!136291 (not c!121243)) b!1240828))

(assert (= (and b!1240828 c!121244) b!1240829))

(assert (= (and b!1240828 (not c!121244)) b!1240825))

(assert (= (and d!136291 res!827962) b!1240826))

(declare-fun m!1144087 () Bool)

(assert (=> b!1240826 m!1144087))

(declare-fun m!1144089 () Bool)

(assert (=> d!136291 m!1144089))

(assert (=> d!136291 m!1144041))

(declare-fun m!1144091 () Bool)

(assert (=> d!136291 m!1144091))

(declare-fun m!1144093 () Bool)

(assert (=> b!1240829 m!1144093))

(assert (=> b!1240829 m!1144093))

(declare-fun m!1144095 () Bool)

(assert (=> b!1240829 m!1144095))

(assert (=> b!1240749 d!136291))

(declare-fun bm!61180 () Bool)

(declare-fun call!61185 () List!27502)

(declare-fun call!61184 () List!27502)

(assert (=> bm!61180 (= call!61185 call!61184)))

(declare-fun e!703399 () List!27502)

(declare-fun c!121279 () Bool)

(declare-fun bm!61181 () Bool)

(assert (=> bm!61181 (= call!61184 ($colon$colon!618 e!703399 (ite c!121279 (h!28707 (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (tuple2!20375 key1!25 v1!20))))))

(declare-fun c!121278 () Bool)

(assert (=> bm!61181 (= c!121278 c!121279)))

(declare-fun b!1240910 () Bool)

(declare-fun e!703397 () List!27502)

(declare-fun call!61183 () List!27502)

(assert (=> b!1240910 (= e!703397 call!61183)))

(declare-fun d!136299 () Bool)

(declare-fun e!703398 () Bool)

(assert (=> d!136299 e!703398))

(declare-fun res!827980 () Bool)

(assert (=> d!136299 (=> (not res!827980) (not e!703398))))

(declare-fun lt!562006 () List!27502)

(assert (=> d!136299 (= res!827980 (isStrictlySorted!736 lt!562006))))

(declare-fun e!703396 () List!27502)

(assert (=> d!136299 (= lt!562006 e!703396)))

(assert (=> d!136299 (= c!121279 (and ((_ is Cons!27498) (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (bvslt (_1!10197 (h!28707 (removeStrictlySorted!120 (t!40972 l!644) key2!15))) key1!25)))))

(assert (=> d!136299 (isStrictlySorted!736 (removeStrictlySorted!120 (t!40972 l!644) key2!15))))

(assert (=> d!136299 (= (insertStrictlySorted!426 (removeStrictlySorted!120 (t!40972 l!644) key2!15) key1!25 v1!20) lt!562006)))

(declare-fun c!121277 () Bool)

(declare-fun b!1240911 () Bool)

(declare-fun c!121280 () Bool)

(assert (=> b!1240911 (= e!703399 (ite c!121277 (t!40972 (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (ite c!121280 (Cons!27498 (h!28707 (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (t!40972 (removeStrictlySorted!120 (t!40972 l!644) key2!15))) Nil!27499)))))

(declare-fun bm!61182 () Bool)

(assert (=> bm!61182 (= call!61183 call!61185)))

(declare-fun b!1240912 () Bool)

(assert (=> b!1240912 (= e!703396 call!61184)))

(declare-fun b!1240913 () Bool)

(assert (=> b!1240913 (= e!703397 call!61183)))

(declare-fun b!1240914 () Bool)

(declare-fun contains!7401 (List!27502 tuple2!20374) Bool)

(assert (=> b!1240914 (= e!703398 (contains!7401 lt!562006 (tuple2!20375 key1!25 v1!20)))))

(declare-fun b!1240915 () Bool)

(declare-fun e!703395 () List!27502)

(assert (=> b!1240915 (= e!703395 call!61185)))

(declare-fun b!1240916 () Bool)

(declare-fun res!827979 () Bool)

(assert (=> b!1240916 (=> (not res!827979) (not e!703398))))

(assert (=> b!1240916 (= res!827979 (containsKey!601 lt!562006 key1!25))))

(declare-fun b!1240917 () Bool)

(assert (=> b!1240917 (= c!121280 (and ((_ is Cons!27498) (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (bvsgt (_1!10197 (h!28707 (removeStrictlySorted!120 (t!40972 l!644) key2!15))) key1!25)))))

(assert (=> b!1240917 (= e!703395 e!703397)))

(declare-fun b!1240918 () Bool)

(assert (=> b!1240918 (= e!703399 (insertStrictlySorted!426 (t!40972 (removeStrictlySorted!120 (t!40972 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1240919 () Bool)

(assert (=> b!1240919 (= e!703396 e!703395)))

(assert (=> b!1240919 (= c!121277 (and ((_ is Cons!27498) (removeStrictlySorted!120 (t!40972 l!644) key2!15)) (= (_1!10197 (h!28707 (removeStrictlySorted!120 (t!40972 l!644) key2!15))) key1!25)))))

(assert (= (and d!136299 c!121279) b!1240912))

(assert (= (and d!136299 (not c!121279)) b!1240919))

(assert (= (and b!1240919 c!121277) b!1240915))

(assert (= (and b!1240919 (not c!121277)) b!1240917))

(assert (= (and b!1240917 c!121280) b!1240910))

(assert (= (and b!1240917 (not c!121280)) b!1240913))

(assert (= (or b!1240910 b!1240913) bm!61182))

(assert (= (or b!1240915 bm!61182) bm!61180))

(assert (= (or b!1240912 bm!61180) bm!61181))

(assert (= (and bm!61181 c!121278) b!1240918))

(assert (= (and bm!61181 (not c!121278)) b!1240911))

(assert (= (and d!136299 res!827980) b!1240916))

(assert (= (and b!1240916 res!827979) b!1240914))

(declare-fun m!1144125 () Bool)

(assert (=> bm!61181 m!1144125))

(declare-fun m!1144127 () Bool)

(assert (=> b!1240918 m!1144127))

(declare-fun m!1144129 () Bool)

(assert (=> b!1240916 m!1144129))

(declare-fun m!1144131 () Bool)

(assert (=> b!1240914 m!1144131))

(declare-fun m!1144133 () Bool)

(assert (=> d!136299 m!1144133))

(assert (=> d!136299 m!1144045))

(declare-fun m!1144135 () Bool)

(assert (=> d!136299 m!1144135))

(assert (=> b!1240749 d!136299))

(declare-fun b!1240920 () Bool)

(declare-fun e!703400 () List!27502)

(assert (=> b!1240920 (= e!703400 Nil!27499)))

(declare-fun b!1240921 () Bool)

(declare-fun e!703401 () Bool)

(declare-fun lt!562007 () List!27502)

(assert (=> b!1240921 (= e!703401 (not (containsKey!601 lt!562007 key2!15)))))

(declare-fun b!1240922 () Bool)

(declare-fun e!703402 () List!27502)

(assert (=> b!1240922 (= e!703402 (t!40972 l!644))))

(declare-fun d!136307 () Bool)

(assert (=> d!136307 e!703401))

(declare-fun res!827981 () Bool)

(assert (=> d!136307 (=> (not res!827981) (not e!703401))))

(assert (=> d!136307 (= res!827981 (isStrictlySorted!736 lt!562007))))

(assert (=> d!136307 (= lt!562007 e!703402)))

(declare-fun c!121281 () Bool)

(assert (=> d!136307 (= c!121281 (and ((_ is Cons!27498) l!644) (= (_1!10197 (h!28707 l!644)) key2!15)))))

(assert (=> d!136307 (isStrictlySorted!736 l!644)))

(assert (=> d!136307 (= (removeStrictlySorted!120 l!644 key2!15) lt!562007)))

(declare-fun b!1240923 () Bool)

(assert (=> b!1240923 (= e!703402 e!703400)))

(declare-fun c!121282 () Bool)

(assert (=> b!1240923 (= c!121282 (and ((_ is Cons!27498) l!644) (not (= (_1!10197 (h!28707 l!644)) key2!15))))))

(declare-fun b!1240924 () Bool)

(assert (=> b!1240924 (= e!703400 ($colon$colon!618 (removeStrictlySorted!120 (t!40972 l!644) key2!15) (h!28707 l!644)))))

(assert (= (and d!136307 c!121281) b!1240922))

(assert (= (and d!136307 (not c!121281)) b!1240923))

(assert (= (and b!1240923 c!121282) b!1240924))

(assert (= (and b!1240923 (not c!121282)) b!1240920))

(assert (= (and d!136307 res!827981) b!1240921))

(declare-fun m!1144137 () Bool)

(assert (=> b!1240921 m!1144137))

(declare-fun m!1144139 () Bool)

(assert (=> d!136307 m!1144139))

(assert (=> d!136307 m!1144053))

(assert (=> b!1240924 m!1144045))

(assert (=> b!1240924 m!1144045))

(declare-fun m!1144141 () Bool)

(assert (=> b!1240924 m!1144141))

(assert (=> b!1240749 d!136307))

(declare-fun d!136309 () Bool)

(assert (=> d!136309 (= (insertStrictlySorted!426 (removeStrictlySorted!120 (t!40972 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!120 (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562017 () Unit!41187)

(declare-fun choose!1843 (List!27502 (_ BitVec 64) B!1822 (_ BitVec 64)) Unit!41187)

(assert (=> d!136309 (= lt!562017 (choose!1843 (t!40972 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136309 (not (= key1!25 key2!15))))

(assert (=> d!136309 (= (lemmaInsertAndRemoveStrictlySortedCommutative!8 (t!40972 l!644) key1!25 v1!20 key2!15) lt!562017)))

(declare-fun bs!34931 () Bool)

(assert (= bs!34931 d!136309))

(declare-fun m!1144183 () Bool)

(assert (=> bs!34931 m!1144183))

(assert (=> bs!34931 m!1144045))

(assert (=> bs!34931 m!1144041))

(assert (=> bs!34931 m!1144045))

(assert (=> bs!34931 m!1144049))

(assert (=> bs!34931 m!1144041))

(assert (=> bs!34931 m!1144043))

(assert (=> b!1240749 d!136309))

(declare-fun d!136321 () Bool)

(declare-fun res!827990 () Bool)

(declare-fun e!703424 () Bool)

(assert (=> d!136321 (=> res!827990 e!703424)))

(assert (=> d!136321 (= res!827990 (or ((_ is Nil!27499) (removeStrictlySorted!120 l!644 key2!15)) ((_ is Nil!27499) (t!40972 (removeStrictlySorted!120 l!644 key2!15)))))))

(assert (=> d!136321 (= (isStrictlySorted!736 (removeStrictlySorted!120 l!644 key2!15)) e!703424)))

(declare-fun b!1240962 () Bool)

(declare-fun e!703425 () Bool)

(assert (=> b!1240962 (= e!703424 e!703425)))

(declare-fun res!827991 () Bool)

(assert (=> b!1240962 (=> (not res!827991) (not e!703425))))

(assert (=> b!1240962 (= res!827991 (bvslt (_1!10197 (h!28707 (removeStrictlySorted!120 l!644 key2!15))) (_1!10197 (h!28707 (t!40972 (removeStrictlySorted!120 l!644 key2!15))))))))

(declare-fun b!1240963 () Bool)

(assert (=> b!1240963 (= e!703425 (isStrictlySorted!736 (t!40972 (removeStrictlySorted!120 l!644 key2!15))))))

(assert (= (and d!136321 (not res!827990)) b!1240962))

(assert (= (and b!1240962 res!827991) b!1240963))

(declare-fun m!1144185 () Bool)

(assert (=> b!1240963 m!1144185))

(assert (=> b!1240749 d!136321))

(declare-fun bm!61189 () Bool)

(declare-fun call!61194 () List!27502)

(declare-fun call!61193 () List!27502)

(assert (=> bm!61189 (= call!61194 call!61193)))

(declare-fun e!703430 () List!27502)

(declare-fun bm!61190 () Bool)

(declare-fun c!121297 () Bool)

(assert (=> bm!61190 (= call!61193 ($colon$colon!618 e!703430 (ite c!121297 (h!28707 (t!40972 l!644)) (tuple2!20375 key1!25 v1!20))))))

(declare-fun c!121296 () Bool)

(assert (=> bm!61190 (= c!121296 c!121297)))

(declare-fun b!1240964 () Bool)

(declare-fun e!703428 () List!27502)

(declare-fun call!61192 () List!27502)

(assert (=> b!1240964 (= e!703428 call!61192)))

(declare-fun d!136323 () Bool)

(declare-fun e!703429 () Bool)

(assert (=> d!136323 e!703429))

(declare-fun res!827993 () Bool)

(assert (=> d!136323 (=> (not res!827993) (not e!703429))))

(declare-fun lt!562020 () List!27502)

(assert (=> d!136323 (= res!827993 (isStrictlySorted!736 lt!562020))))

(declare-fun e!703427 () List!27502)

(assert (=> d!136323 (= lt!562020 e!703427)))

(assert (=> d!136323 (= c!121297 (and ((_ is Cons!27498) (t!40972 l!644)) (bvslt (_1!10197 (h!28707 (t!40972 l!644))) key1!25)))))

(assert (=> d!136323 (isStrictlySorted!736 (t!40972 l!644))))

(assert (=> d!136323 (= (insertStrictlySorted!426 (t!40972 l!644) key1!25 v1!20) lt!562020)))

(declare-fun c!121298 () Bool)

(declare-fun b!1240965 () Bool)

(declare-fun c!121295 () Bool)

(assert (=> b!1240965 (= e!703430 (ite c!121295 (t!40972 (t!40972 l!644)) (ite c!121298 (Cons!27498 (h!28707 (t!40972 l!644)) (t!40972 (t!40972 l!644))) Nil!27499)))))

(declare-fun bm!61191 () Bool)

(assert (=> bm!61191 (= call!61192 call!61194)))

(declare-fun b!1240966 () Bool)

(assert (=> b!1240966 (= e!703427 call!61193)))

(declare-fun b!1240967 () Bool)

(assert (=> b!1240967 (= e!703428 call!61192)))

(declare-fun b!1240968 () Bool)

(assert (=> b!1240968 (= e!703429 (contains!7401 lt!562020 (tuple2!20375 key1!25 v1!20)))))

(declare-fun b!1240969 () Bool)

(declare-fun e!703426 () List!27502)

(assert (=> b!1240969 (= e!703426 call!61194)))

(declare-fun b!1240970 () Bool)

(declare-fun res!827992 () Bool)

(assert (=> b!1240970 (=> (not res!827992) (not e!703429))))

(assert (=> b!1240970 (= res!827992 (containsKey!601 lt!562020 key1!25))))

(declare-fun b!1240971 () Bool)

(assert (=> b!1240971 (= c!121298 (and ((_ is Cons!27498) (t!40972 l!644)) (bvsgt (_1!10197 (h!28707 (t!40972 l!644))) key1!25)))))

(assert (=> b!1240971 (= e!703426 e!703428)))

(declare-fun b!1240972 () Bool)

(assert (=> b!1240972 (= e!703430 (insertStrictlySorted!426 (t!40972 (t!40972 l!644)) key1!25 v1!20))))

(declare-fun b!1240973 () Bool)

(assert (=> b!1240973 (= e!703427 e!703426)))

(assert (=> b!1240973 (= c!121295 (and ((_ is Cons!27498) (t!40972 l!644)) (= (_1!10197 (h!28707 (t!40972 l!644))) key1!25)))))

(assert (= (and d!136323 c!121297) b!1240966))

(assert (= (and d!136323 (not c!121297)) b!1240973))

(assert (= (and b!1240973 c!121295) b!1240969))

(assert (= (and b!1240973 (not c!121295)) b!1240971))

(assert (= (and b!1240971 c!121298) b!1240964))

(assert (= (and b!1240971 (not c!121298)) b!1240967))

(assert (= (or b!1240964 b!1240967) bm!61191))

(assert (= (or b!1240969 bm!61191) bm!61189))

(assert (= (or b!1240966 bm!61189) bm!61190))

(assert (= (and bm!61190 c!121296) b!1240972))

(assert (= (and bm!61190 (not c!121296)) b!1240965))

(assert (= (and d!136323 res!827993) b!1240970))

(assert (= (and b!1240970 res!827992) b!1240968))

(declare-fun m!1144187 () Bool)

(assert (=> bm!61190 m!1144187))

(declare-fun m!1144189 () Bool)

(assert (=> b!1240972 m!1144189))

(declare-fun m!1144191 () Bool)

(assert (=> b!1240970 m!1144191))

(declare-fun m!1144193 () Bool)

(assert (=> b!1240968 m!1144193))

(declare-fun m!1144197 () Bool)

(assert (=> d!136323 m!1144197))

(assert (=> d!136323 m!1144037))

(assert (=> b!1240749 d!136323))

(declare-fun b!1240974 () Bool)

(declare-fun e!703431 () List!27502)

(assert (=> b!1240974 (= e!703431 Nil!27499)))

(declare-fun b!1240975 () Bool)

(declare-fun e!703432 () Bool)

(declare-fun lt!562022 () List!27502)

(assert (=> b!1240975 (= e!703432 (not (containsKey!601 lt!562022 key2!15)))))

(declare-fun b!1240976 () Bool)

(declare-fun e!703433 () List!27502)

(assert (=> b!1240976 (= e!703433 (t!40972 (t!40972 l!644)))))

(declare-fun d!136325 () Bool)

(assert (=> d!136325 e!703432))

(declare-fun res!827994 () Bool)

(assert (=> d!136325 (=> (not res!827994) (not e!703432))))

(assert (=> d!136325 (= res!827994 (isStrictlySorted!736 lt!562022))))

(assert (=> d!136325 (= lt!562022 e!703433)))

(declare-fun c!121299 () Bool)

(assert (=> d!136325 (= c!121299 (and ((_ is Cons!27498) (t!40972 l!644)) (= (_1!10197 (h!28707 (t!40972 l!644))) key2!15)))))

(assert (=> d!136325 (isStrictlySorted!736 (t!40972 l!644))))

(assert (=> d!136325 (= (removeStrictlySorted!120 (t!40972 l!644) key2!15) lt!562022)))

(declare-fun b!1240977 () Bool)

(assert (=> b!1240977 (= e!703433 e!703431)))

(declare-fun c!121300 () Bool)

(assert (=> b!1240977 (= c!121300 (and ((_ is Cons!27498) (t!40972 l!644)) (not (= (_1!10197 (h!28707 (t!40972 l!644))) key2!15))))))

(declare-fun b!1240978 () Bool)

(assert (=> b!1240978 (= e!703431 ($colon$colon!618 (removeStrictlySorted!120 (t!40972 (t!40972 l!644)) key2!15) (h!28707 (t!40972 l!644))))))

(assert (= (and d!136325 c!121299) b!1240976))

(assert (= (and d!136325 (not c!121299)) b!1240977))

(assert (= (and b!1240977 c!121300) b!1240978))

(assert (= (and b!1240977 (not c!121300)) b!1240974))

(assert (= (and d!136325 res!827994) b!1240975))

(declare-fun m!1144201 () Bool)

(assert (=> b!1240975 m!1144201))

(declare-fun m!1144203 () Bool)

(assert (=> d!136325 m!1144203))

(assert (=> d!136325 m!1144037))

(declare-fun m!1144205 () Bool)

(assert (=> b!1240978 m!1144205))

(assert (=> b!1240978 m!1144205))

(declare-fun m!1144207 () Bool)

(assert (=> b!1240978 m!1144207))

(assert (=> b!1240749 d!136325))

(declare-fun d!136331 () Bool)

(declare-fun res!827999 () Bool)

(declare-fun e!703441 () Bool)

(assert (=> d!136331 (=> res!827999 e!703441)))

(assert (=> d!136331 (= res!827999 (or ((_ is Nil!27499) (t!40972 l!644)) ((_ is Nil!27499) (t!40972 (t!40972 l!644)))))))

(assert (=> d!136331 (= (isStrictlySorted!736 (t!40972 l!644)) e!703441)))

(declare-fun b!1240991 () Bool)

(declare-fun e!703442 () Bool)

(assert (=> b!1240991 (= e!703441 e!703442)))

(declare-fun res!828000 () Bool)

(assert (=> b!1240991 (=> (not res!828000) (not e!703442))))

(assert (=> b!1240991 (= res!828000 (bvslt (_1!10197 (h!28707 (t!40972 l!644))) (_1!10197 (h!28707 (t!40972 (t!40972 l!644))))))))

(declare-fun b!1240992 () Bool)

(assert (=> b!1240992 (= e!703442 (isStrictlySorted!736 (t!40972 (t!40972 l!644))))))

(assert (= (and d!136331 (not res!827999)) b!1240991))

(assert (= (and b!1240991 res!828000) b!1240992))

(declare-fun m!1144209 () Bool)

(assert (=> b!1240992 m!1144209))

(assert (=> b!1240748 d!136331))

(declare-fun b!1240997 () Bool)

(declare-fun e!703445 () Bool)

(declare-fun tp!92595 () Bool)

(assert (=> b!1240997 (= e!703445 (and tp_is_empty!31221 tp!92595))))

(assert (=> b!1240750 (= tp!92586 e!703445)))

(assert (= (and b!1240750 ((_ is Cons!27498) (t!40972 l!644))) b!1240997))

(check-sat (not bm!61181) (not b!1240916) (not b!1240783) (not d!136325) (not b!1240921) (not b!1240997) (not b!1240918) (not b!1240968) (not b!1240914) (not d!136291) (not d!136307) (not bm!61190) (not d!136299) (not d!136309) (not b!1240972) (not b!1240829) (not d!136323) (not b!1240924) (not b!1240963) (not b!1240826) (not b!1240970) (not b!1240978) tp_is_empty!31221 (not b!1240975) (not b!1240992))
(check-sat)
