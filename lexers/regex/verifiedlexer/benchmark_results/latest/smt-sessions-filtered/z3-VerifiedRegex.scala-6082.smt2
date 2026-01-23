; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296402 () Bool)

(assert start!296402)

(declare-fun b!3161998 () Bool)

(declare-fun b_free!83025 () Bool)

(declare-fun b_next!83729 () Bool)

(assert (=> b!3161998 (= b_free!83025 (not b_next!83729))))

(declare-fun tp!995171 () Bool)

(declare-fun b_and!209271 () Bool)

(assert (=> b!3161998 (= tp!995171 b_and!209271)))

(declare-fun b!3162006 () Bool)

(declare-fun b_free!83027 () Bool)

(declare-fun b_next!83731 () Bool)

(assert (=> b!3162006 (= b_free!83027 (not b_next!83731))))

(declare-fun tp!995176 () Bool)

(declare-fun b_and!209273 () Bool)

(assert (=> b!3162006 (= tp!995176 b_and!209273)))

(declare-fun tp!995166 () Bool)

(declare-fun tp!995169 () Bool)

(declare-fun e!1969887 () Bool)

(declare-fun e!1969886 () Bool)

(declare-datatypes ((C!19616 0))(
  ( (C!19617 (val!11844 Int)) )
))
(declare-datatypes ((Regex!9715 0))(
  ( (ElementMatch!9715 (c!531747 C!19616)) (Concat!15036 (regOne!19942 Regex!9715) (regTwo!19942 Regex!9715)) (EmptyExpr!9715) (Star!9715 (reg!10044 Regex!9715)) (EmptyLang!9715) (Union!9715 (regOne!19943 Regex!9715) (regTwo!19943 Regex!9715)) )
))
(declare-datatypes ((tuple2!34394 0))(
  ( (tuple2!34395 (_1!20329 Regex!9715) (_2!20329 C!19616)) )
))
(declare-datatypes ((tuple2!34396 0))(
  ( (tuple2!34397 (_1!20330 tuple2!34394) (_2!20330 Regex!9715)) )
))
(declare-datatypes ((array!14732 0))(
  ( (array!14733 (arr!6562 (Array (_ BitVec 32) (_ BitVec 64))) (size!26648 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4052 0))(
  ( (HashableExt!4051 (__x!22514 Int)) )
))
(declare-datatypes ((List!35544 0))(
  ( (Nil!35420) (Cons!35420 (h!40840 tuple2!34396) (t!234611 List!35544)) )
))
(declare-datatypes ((array!14734 0))(
  ( (array!14735 (arr!6563 (Array (_ BitVec 32) List!35544)) (size!26649 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8272 0))(
  ( (LongMapFixedSize!8273 (defaultEntry!4521 Int) (mask!10787 (_ BitVec 32)) (extraKeys!4385 (_ BitVec 32)) (zeroValue!4395 List!35544) (minValue!4395 List!35544) (_size!8315 (_ BitVec 32)) (_keys!4436 array!14732) (_values!4417 array!14734) (_vacant!4197 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16353 0))(
  ( (Cell!16354 (v!35061 LongMapFixedSize!8272)) )
))
(declare-datatypes ((MutLongMap!4136 0))(
  ( (LongMap!4136 (underlying!8501 Cell!16353)) (MutLongMapExt!4135 (__x!22515 Int)) )
))
(declare-datatypes ((Cell!16355 0))(
  ( (Cell!16356 (v!35062 MutLongMap!4136)) )
))
(declare-datatypes ((MutableMap!4042 0))(
  ( (MutableMapExt!4041 (__x!22516 Int)) (HashMap!4042 (underlying!8502 Cell!16355) (hashF!6084 Hashable!4052) (_size!8316 (_ BitVec 32)) (defaultValue!4213 Int)) )
))
(declare-datatypes ((Cache!354 0))(
  ( (Cache!355 (cache!4181 MutableMap!4042)) )
))
(declare-fun cache!347 () Cache!354)

(declare-fun array_inv!4702 (array!14732) Bool)

(declare-fun array_inv!4703 (array!14734) Bool)

(assert (=> b!3161998 (= e!1969886 (and tp!995171 tp!995169 tp!995166 (array_inv!4702 (_keys!4436 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) (array_inv!4703 (_values!4417 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) e!1969887))))

(declare-fun b!3161999 () Bool)

(declare-fun res!1287251 () Bool)

(declare-fun e!1969889 () Bool)

(assert (=> b!3161999 (=> (not res!1287251) (not e!1969889))))

(declare-fun valid!3221 (Cache!354) Bool)

(assert (=> b!3161999 (= res!1287251 (valid!3221 cache!347))))

(declare-fun mapNonEmpty!18765 () Bool)

(declare-fun mapRes!18765 () Bool)

(declare-fun tp!995170 () Bool)

(declare-fun tp!995167 () Bool)

(assert (=> mapNonEmpty!18765 (= mapRes!18765 (and tp!995170 tp!995167))))

(declare-fun mapRest!18765 () (Array (_ BitVec 32) List!35544))

(declare-fun mapKey!18765 () (_ BitVec 32))

(declare-fun mapValue!18765 () List!35544)

(assert (=> mapNonEmpty!18765 (= (arr!6563 (_values!4417 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) (store mapRest!18765 mapKey!18765 mapValue!18765))))

(declare-fun b!3162000 () Bool)

(declare-fun res!1287254 () Bool)

(assert (=> b!3162000 (=> (not res!1287254) (not e!1969889))))

(declare-fun r!13156 () Regex!9715)

(declare-fun a!2409 () C!19616)

(get-info :version)

(declare-datatypes ((Option!6878 0))(
  ( (None!6877) (Some!6877 (v!35063 Regex!9715)) )
))
(declare-fun get!11205 (Cache!354 Regex!9715 C!19616) Option!6878)

(assert (=> b!3162000 (= res!1287254 (not ((_ is Some!6877) (get!11205 cache!347 r!13156 a!2409))))))

(declare-fun b!3162001 () Bool)

(declare-fun e!1969891 () Bool)

(declare-fun tp!995175 () Bool)

(declare-fun tp!995174 () Bool)

(assert (=> b!3162001 (= e!1969891 (and tp!995175 tp!995174))))

(declare-fun b!3162002 () Bool)

(declare-fun tp_is_empty!16993 () Bool)

(assert (=> b!3162002 (= e!1969891 tp_is_empty!16993)))

(declare-fun b!3162003 () Bool)

(declare-fun e!1969892 () Bool)

(assert (=> b!3162003 (= e!1969892 e!1969886)))

(declare-fun res!1287253 () Bool)

(assert (=> start!296402 (=> (not res!1287253) (not e!1969889))))

(declare-fun validRegex!4442 (Regex!9715) Bool)

(assert (=> start!296402 (= res!1287253 (validRegex!4442 r!13156))))

(assert (=> start!296402 e!1969889))

(assert (=> start!296402 e!1969891))

(declare-fun e!1969895 () Bool)

(declare-fun inv!48063 (Cache!354) Bool)

(assert (=> start!296402 (and (inv!48063 cache!347) e!1969895)))

(assert (=> start!296402 tp_is_empty!16993))

(declare-fun mapIsEmpty!18765 () Bool)

(assert (=> mapIsEmpty!18765 mapRes!18765))

(declare-fun b!3162004 () Bool)

(declare-fun e!1969888 () Bool)

(assert (=> b!3162004 (= e!1969888 e!1969892)))

(declare-fun b!3162005 () Bool)

(declare-fun tp!995173 () Bool)

(assert (=> b!3162005 (= e!1969887 (and tp!995173 mapRes!18765))))

(declare-fun condMapEmpty!18765 () Bool)

(declare-fun mapDefault!18765 () List!35544)

(assert (=> b!3162005 (= condMapEmpty!18765 (= (arr!6563 (_values!4417 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) ((as const (Array (_ BitVec 32) List!35544)) mapDefault!18765)))))

(declare-fun e!1969894 () Bool)

(declare-fun e!1969893 () Bool)

(assert (=> b!3162006 (= e!1969894 (and e!1969893 tp!995176))))

(declare-fun b!3162007 () Bool)

(declare-fun lt!1063100 () MutLongMap!4136)

(assert (=> b!3162007 (= e!1969893 (and e!1969888 ((_ is LongMap!4136) lt!1063100)))))

(assert (=> b!3162007 (= lt!1063100 (v!35062 (underlying!8502 (cache!4181 cache!347))))))

(declare-fun b!3162008 () Bool)

(declare-fun res!1287252 () Bool)

(assert (=> b!3162008 (=> (not res!1287252) (not e!1969889))))

(declare-fun nullable!3332 (Regex!9715) Bool)

(assert (=> b!3162008 (= res!1287252 (nullable!3332 (regOne!19942 r!13156)))))

(declare-fun b!3162009 () Bool)

(declare-fun tp!995172 () Bool)

(assert (=> b!3162009 (= e!1969891 tp!995172)))

(declare-fun b!3162010 () Bool)

(assert (=> b!3162010 (= e!1969895 e!1969894)))

(declare-fun b!3162011 () Bool)

(assert (=> b!3162011 (= e!1969889 (not (validRegex!4442 (regOne!19942 r!13156))))))

(declare-fun b!3162012 () Bool)

(declare-fun res!1287250 () Bool)

(assert (=> b!3162012 (=> (not res!1287250) (not e!1969889))))

(assert (=> b!3162012 (= res!1287250 (and (not ((_ is EmptyExpr!9715) r!13156)) (not ((_ is EmptyLang!9715) r!13156)) (not ((_ is ElementMatch!9715) r!13156)) (not ((_ is Union!9715) r!13156)) (not ((_ is Star!9715) r!13156))))))

(declare-fun b!3162013 () Bool)

(declare-fun tp!995168 () Bool)

(declare-fun tp!995177 () Bool)

(assert (=> b!3162013 (= e!1969891 (and tp!995168 tp!995177))))

(assert (= (and start!296402 res!1287253) b!3161999))

(assert (= (and b!3161999 res!1287251) b!3162000))

(assert (= (and b!3162000 res!1287254) b!3162012))

(assert (= (and b!3162012 res!1287250) b!3162008))

(assert (= (and b!3162008 res!1287252) b!3162011))

(assert (= (and start!296402 ((_ is ElementMatch!9715) r!13156)) b!3162002))

(assert (= (and start!296402 ((_ is Concat!15036) r!13156)) b!3162013))

(assert (= (and start!296402 ((_ is Star!9715) r!13156)) b!3162009))

(assert (= (and start!296402 ((_ is Union!9715) r!13156)) b!3162001))

(assert (= (and b!3162005 condMapEmpty!18765) mapIsEmpty!18765))

(assert (= (and b!3162005 (not condMapEmpty!18765)) mapNonEmpty!18765))

(assert (= b!3161998 b!3162005))

(assert (= b!3162003 b!3161998))

(assert (= b!3162004 b!3162003))

(assert (= (and b!3162007 ((_ is LongMap!4136) (v!35062 (underlying!8502 (cache!4181 cache!347))))) b!3162004))

(assert (= b!3162006 b!3162007))

(assert (= (and b!3162010 ((_ is HashMap!4042) (cache!4181 cache!347))) b!3162006))

(assert (= start!296402 b!3162010))

(declare-fun m!3426136 () Bool)

(assert (=> b!3162008 m!3426136))

(declare-fun m!3426138 () Bool)

(assert (=> mapNonEmpty!18765 m!3426138))

(declare-fun m!3426140 () Bool)

(assert (=> start!296402 m!3426140))

(declare-fun m!3426142 () Bool)

(assert (=> start!296402 m!3426142))

(declare-fun m!3426144 () Bool)

(assert (=> b!3161999 m!3426144))

(declare-fun m!3426146 () Bool)

(assert (=> b!3161998 m!3426146))

(declare-fun m!3426148 () Bool)

(assert (=> b!3161998 m!3426148))

(declare-fun m!3426150 () Bool)

(assert (=> b!3162000 m!3426150))

(declare-fun m!3426152 () Bool)

(assert (=> b!3162011 m!3426152))

(check-sat tp_is_empty!16993 (not b!3162000) (not b_next!83731) (not b!3162008) (not b!3162005) b_and!209273 (not b!3162009) b_and!209271 (not mapNonEmpty!18765) (not b!3162011) (not b!3161998) (not b_next!83729) (not b!3162013) (not start!296402) (not b!3162001) (not b!3161999))
(check-sat b_and!209273 b_and!209271 (not b_next!83729) (not b_next!83731))
(get-model)

(declare-fun c!531753 () Bool)

(declare-fun call!229020 () Bool)

(declare-fun bm!229015 () Bool)

(declare-fun c!531752 () Bool)

(assert (=> bm!229015 (= call!229020 (validRegex!4442 (ite c!531752 (reg!10044 (regOne!19942 r!13156)) (ite c!531753 (regOne!19943 (regOne!19942 r!13156)) (regOne!19942 (regOne!19942 r!13156))))))))

(declare-fun b!3162032 () Bool)

(declare-fun e!1969913 () Bool)

(declare-fun call!229021 () Bool)

(assert (=> b!3162032 (= e!1969913 call!229021)))

(declare-fun b!3162033 () Bool)

(declare-fun e!1969916 () Bool)

(declare-fun e!1969914 () Bool)

(assert (=> b!3162033 (= e!1969916 e!1969914)))

(assert (=> b!3162033 (= c!531752 ((_ is Star!9715) (regOne!19942 r!13156)))))

(declare-fun b!3162034 () Bool)

(declare-fun res!1287266 () Bool)

(declare-fun e!1969911 () Bool)

(assert (=> b!3162034 (=> res!1287266 e!1969911)))

(assert (=> b!3162034 (= res!1287266 (not ((_ is Concat!15036) (regOne!19942 r!13156))))))

(declare-fun e!1969912 () Bool)

(assert (=> b!3162034 (= e!1969912 e!1969911)))

(declare-fun b!3162035 () Bool)

(declare-fun e!1969915 () Bool)

(assert (=> b!3162035 (= e!1969915 call!229020)))

(declare-fun b!3162036 () Bool)

(assert (=> b!3162036 (= e!1969911 e!1969913)))

(declare-fun res!1287268 () Bool)

(assert (=> b!3162036 (=> (not res!1287268) (not e!1969913))))

(declare-fun call!229022 () Bool)

(assert (=> b!3162036 (= res!1287268 call!229022)))

(declare-fun d!868503 () Bool)

(declare-fun res!1287269 () Bool)

(assert (=> d!868503 (=> res!1287269 e!1969916)))

(assert (=> d!868503 (= res!1287269 ((_ is ElementMatch!9715) (regOne!19942 r!13156)))))

(assert (=> d!868503 (= (validRegex!4442 (regOne!19942 r!13156)) e!1969916)))

(declare-fun bm!229016 () Bool)

(assert (=> bm!229016 (= call!229022 call!229020)))

(declare-fun bm!229017 () Bool)

(assert (=> bm!229017 (= call!229021 (validRegex!4442 (ite c!531753 (regTwo!19943 (regOne!19942 r!13156)) (regTwo!19942 (regOne!19942 r!13156)))))))

(declare-fun b!3162037 () Bool)

(declare-fun res!1287265 () Bool)

(declare-fun e!1969910 () Bool)

(assert (=> b!3162037 (=> (not res!1287265) (not e!1969910))))

(assert (=> b!3162037 (= res!1287265 call!229022)))

(assert (=> b!3162037 (= e!1969912 e!1969910)))

(declare-fun b!3162038 () Bool)

(assert (=> b!3162038 (= e!1969914 e!1969912)))

(assert (=> b!3162038 (= c!531753 ((_ is Union!9715) (regOne!19942 r!13156)))))

(declare-fun b!3162039 () Bool)

(assert (=> b!3162039 (= e!1969910 call!229021)))

(declare-fun b!3162040 () Bool)

(assert (=> b!3162040 (= e!1969914 e!1969915)))

(declare-fun res!1287267 () Bool)

(assert (=> b!3162040 (= res!1287267 (not (nullable!3332 (reg!10044 (regOne!19942 r!13156)))))))

(assert (=> b!3162040 (=> (not res!1287267) (not e!1969915))))

(assert (= (and d!868503 (not res!1287269)) b!3162033))

(assert (= (and b!3162033 c!531752) b!3162040))

(assert (= (and b!3162033 (not c!531752)) b!3162038))

(assert (= (and b!3162040 res!1287267) b!3162035))

(assert (= (and b!3162038 c!531753) b!3162037))

(assert (= (and b!3162038 (not c!531753)) b!3162034))

(assert (= (and b!3162037 res!1287265) b!3162039))

(assert (= (and b!3162034 (not res!1287266)) b!3162036))

(assert (= (and b!3162036 res!1287268) b!3162032))

(assert (= (or b!3162037 b!3162036) bm!229016))

(assert (= (or b!3162039 b!3162032) bm!229017))

(assert (= (or b!3162035 bm!229016) bm!229015))

(declare-fun m!3426154 () Bool)

(assert (=> bm!229015 m!3426154))

(declare-fun m!3426156 () Bool)

(assert (=> bm!229017 m!3426156))

(declare-fun m!3426158 () Bool)

(assert (=> b!3162040 m!3426158))

(assert (=> b!3162011 d!868503))

(declare-fun bm!229018 () Bool)

(declare-fun call!229023 () Bool)

(declare-fun c!531755 () Bool)

(declare-fun c!531754 () Bool)

(assert (=> bm!229018 (= call!229023 (validRegex!4442 (ite c!531754 (reg!10044 r!13156) (ite c!531755 (regOne!19943 r!13156) (regOne!19942 r!13156)))))))

(declare-fun b!3162041 () Bool)

(declare-fun e!1969920 () Bool)

(declare-fun call!229024 () Bool)

(assert (=> b!3162041 (= e!1969920 call!229024)))

(declare-fun b!3162042 () Bool)

(declare-fun e!1969923 () Bool)

(declare-fun e!1969921 () Bool)

(assert (=> b!3162042 (= e!1969923 e!1969921)))

(assert (=> b!3162042 (= c!531754 ((_ is Star!9715) r!13156))))

(declare-fun b!3162043 () Bool)

(declare-fun res!1287271 () Bool)

(declare-fun e!1969918 () Bool)

(assert (=> b!3162043 (=> res!1287271 e!1969918)))

(assert (=> b!3162043 (= res!1287271 (not ((_ is Concat!15036) r!13156)))))

(declare-fun e!1969919 () Bool)

(assert (=> b!3162043 (= e!1969919 e!1969918)))

(declare-fun b!3162044 () Bool)

(declare-fun e!1969922 () Bool)

(assert (=> b!3162044 (= e!1969922 call!229023)))

(declare-fun b!3162045 () Bool)

(assert (=> b!3162045 (= e!1969918 e!1969920)))

(declare-fun res!1287273 () Bool)

(assert (=> b!3162045 (=> (not res!1287273) (not e!1969920))))

(declare-fun call!229025 () Bool)

(assert (=> b!3162045 (= res!1287273 call!229025)))

(declare-fun d!868505 () Bool)

(declare-fun res!1287274 () Bool)

(assert (=> d!868505 (=> res!1287274 e!1969923)))

(assert (=> d!868505 (= res!1287274 ((_ is ElementMatch!9715) r!13156))))

(assert (=> d!868505 (= (validRegex!4442 r!13156) e!1969923)))

(declare-fun bm!229019 () Bool)

(assert (=> bm!229019 (= call!229025 call!229023)))

(declare-fun bm!229020 () Bool)

(assert (=> bm!229020 (= call!229024 (validRegex!4442 (ite c!531755 (regTwo!19943 r!13156) (regTwo!19942 r!13156))))))

(declare-fun b!3162046 () Bool)

(declare-fun res!1287270 () Bool)

(declare-fun e!1969917 () Bool)

(assert (=> b!3162046 (=> (not res!1287270) (not e!1969917))))

(assert (=> b!3162046 (= res!1287270 call!229025)))

(assert (=> b!3162046 (= e!1969919 e!1969917)))

(declare-fun b!3162047 () Bool)

(assert (=> b!3162047 (= e!1969921 e!1969919)))

(assert (=> b!3162047 (= c!531755 ((_ is Union!9715) r!13156))))

(declare-fun b!3162048 () Bool)

(assert (=> b!3162048 (= e!1969917 call!229024)))

(declare-fun b!3162049 () Bool)

(assert (=> b!3162049 (= e!1969921 e!1969922)))

(declare-fun res!1287272 () Bool)

(assert (=> b!3162049 (= res!1287272 (not (nullable!3332 (reg!10044 r!13156))))))

(assert (=> b!3162049 (=> (not res!1287272) (not e!1969922))))

(assert (= (and d!868505 (not res!1287274)) b!3162042))

(assert (= (and b!3162042 c!531754) b!3162049))

(assert (= (and b!3162042 (not c!531754)) b!3162047))

(assert (= (and b!3162049 res!1287272) b!3162044))

(assert (= (and b!3162047 c!531755) b!3162046))

(assert (= (and b!3162047 (not c!531755)) b!3162043))

(assert (= (and b!3162046 res!1287270) b!3162048))

(assert (= (and b!3162043 (not res!1287271)) b!3162045))

(assert (= (and b!3162045 res!1287273) b!3162041))

(assert (= (or b!3162046 b!3162045) bm!229019))

(assert (= (or b!3162048 b!3162041) bm!229020))

(assert (= (or b!3162044 bm!229019) bm!229018))

(declare-fun m!3426160 () Bool)

(assert (=> bm!229018 m!3426160))

(declare-fun m!3426162 () Bool)

(assert (=> bm!229020 m!3426162))

(declare-fun m!3426164 () Bool)

(assert (=> b!3162049 m!3426164))

(assert (=> start!296402 d!868505))

(declare-fun d!868507 () Bool)

(declare-fun res!1287277 () Bool)

(declare-fun e!1969926 () Bool)

(assert (=> d!868507 (=> (not res!1287277) (not e!1969926))))

(assert (=> d!868507 (= res!1287277 ((_ is HashMap!4042) (cache!4181 cache!347)))))

(assert (=> d!868507 (= (inv!48063 cache!347) e!1969926)))

(declare-fun b!3162052 () Bool)

(declare-fun validCacheMap!47 (MutableMap!4042) Bool)

(assert (=> b!3162052 (= e!1969926 (validCacheMap!47 (cache!4181 cache!347)))))

(assert (= (and d!868507 res!1287277) b!3162052))

(declare-fun m!3426166 () Bool)

(assert (=> b!3162052 m!3426166))

(assert (=> start!296402 d!868507))

(declare-fun d!868509 () Bool)

(declare-fun e!1969932 () Bool)

(assert (=> d!868509 e!1969932))

(declare-fun res!1287280 () Bool)

(assert (=> d!868509 (=> res!1287280 e!1969932)))

(declare-fun lt!1063106 () Option!6878)

(declare-fun isEmpty!19749 (Option!6878) Bool)

(assert (=> d!868509 (= res!1287280 (isEmpty!19749 lt!1063106))))

(declare-fun e!1969931 () Option!6878)

(assert (=> d!868509 (= lt!1063106 e!1969931)))

(declare-fun c!531759 () Bool)

(declare-fun contains!6148 (MutableMap!4042 tuple2!34394) Bool)

(assert (=> d!868509 (= c!531759 (contains!6148 (cache!4181 cache!347) (tuple2!34395 r!13156 a!2409)))))

(assert (=> d!868509 (validRegex!4442 r!13156)))

(assert (=> d!868509 (= (get!11205 cache!347 r!13156 a!2409) lt!1063106)))

(declare-fun b!3162059 () Bool)

(declare-fun apply!7933 (MutableMap!4042 tuple2!34394) Regex!9715)

(assert (=> b!3162059 (= e!1969931 (Some!6877 (apply!7933 (cache!4181 cache!347) (tuple2!34395 r!13156 a!2409))))))

(declare-datatypes ((Unit!49769 0))(
  ( (Unit!49770) )
))
(declare-fun lt!1063105 () Unit!49769)

(declare-fun lemmaIfInCacheThenValid!47 (Cache!354 Regex!9715 C!19616) Unit!49769)

(assert (=> b!3162059 (= lt!1063105 (lemmaIfInCacheThenValid!47 cache!347 r!13156 a!2409))))

(declare-fun b!3162060 () Bool)

(assert (=> b!3162060 (= e!1969931 None!6877)))

(declare-fun b!3162061 () Bool)

(declare-fun get!11206 (Option!6878) Regex!9715)

(declare-fun derivativeStep!2882 (Regex!9715 C!19616) Regex!9715)

(assert (=> b!3162061 (= e!1969932 (= (get!11206 lt!1063106) (derivativeStep!2882 r!13156 a!2409)))))

(assert (= (and d!868509 c!531759) b!3162059))

(assert (= (and d!868509 (not c!531759)) b!3162060))

(assert (= (and d!868509 (not res!1287280)) b!3162061))

(declare-fun m!3426168 () Bool)

(assert (=> d!868509 m!3426168))

(declare-fun m!3426170 () Bool)

(assert (=> d!868509 m!3426170))

(assert (=> d!868509 m!3426140))

(declare-fun m!3426172 () Bool)

(assert (=> b!3162059 m!3426172))

(declare-fun m!3426174 () Bool)

(assert (=> b!3162059 m!3426174))

(declare-fun m!3426176 () Bool)

(assert (=> b!3162061 m!3426176))

(declare-fun m!3426178 () Bool)

(assert (=> b!3162061 m!3426178))

(assert (=> b!3162000 d!868509))

(declare-fun d!868511 () Bool)

(assert (=> d!868511 (= (valid!3221 cache!347) (validCacheMap!47 (cache!4181 cache!347)))))

(declare-fun bs!539437 () Bool)

(assert (= bs!539437 d!868511))

(assert (=> bs!539437 m!3426166))

(assert (=> b!3161999 d!868511))

(declare-fun d!868513 () Bool)

(declare-fun nullableFct!944 (Regex!9715) Bool)

(assert (=> d!868513 (= (nullable!3332 (regOne!19942 r!13156)) (nullableFct!944 (regOne!19942 r!13156)))))

(declare-fun bs!539438 () Bool)

(assert (= bs!539438 d!868513))

(declare-fun m!3426180 () Bool)

(assert (=> bs!539438 m!3426180))

(assert (=> b!3162008 d!868513))

(declare-fun d!868515 () Bool)

(assert (=> d!868515 (= (array_inv!4702 (_keys!4436 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) (bvsge (size!26648 (_keys!4436 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161998 d!868515))

(declare-fun d!868517 () Bool)

(assert (=> d!868517 (= (array_inv!4703 (_values!4417 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) (bvsge (size!26649 (_values!4417 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161998 d!868517))

(declare-fun b!3162066 () Bool)

(declare-fun tp!995184 () Bool)

(declare-fun e!1969935 () Bool)

(declare-fun tp!995185 () Bool)

(declare-fun tp!995186 () Bool)

(assert (=> b!3162066 (= e!1969935 (and tp!995184 tp_is_empty!16993 tp!995185 tp!995186))))

(assert (=> b!3162005 (= tp!995173 e!1969935)))

(assert (= (and b!3162005 ((_ is Cons!35420) mapDefault!18765)) b!3162066))

(declare-fun b!3162078 () Bool)

(declare-fun e!1969938 () Bool)

(declare-fun tp!995201 () Bool)

(declare-fun tp!995197 () Bool)

(assert (=> b!3162078 (= e!1969938 (and tp!995201 tp!995197))))

(declare-fun b!3162079 () Bool)

(declare-fun tp!995198 () Bool)

(assert (=> b!3162079 (= e!1969938 tp!995198)))

(declare-fun b!3162077 () Bool)

(assert (=> b!3162077 (= e!1969938 tp_is_empty!16993)))

(declare-fun b!3162080 () Bool)

(declare-fun tp!995200 () Bool)

(declare-fun tp!995199 () Bool)

(assert (=> b!3162080 (= e!1969938 (and tp!995200 tp!995199))))

(assert (=> b!3162001 (= tp!995175 e!1969938)))

(assert (= (and b!3162001 ((_ is ElementMatch!9715) (regOne!19943 r!13156))) b!3162077))

(assert (= (and b!3162001 ((_ is Concat!15036) (regOne!19943 r!13156))) b!3162078))

(assert (= (and b!3162001 ((_ is Star!9715) (regOne!19943 r!13156))) b!3162079))

(assert (= (and b!3162001 ((_ is Union!9715) (regOne!19943 r!13156))) b!3162080))

(declare-fun b!3162082 () Bool)

(declare-fun e!1969939 () Bool)

(declare-fun tp!995206 () Bool)

(declare-fun tp!995202 () Bool)

(assert (=> b!3162082 (= e!1969939 (and tp!995206 tp!995202))))

(declare-fun b!3162083 () Bool)

(declare-fun tp!995203 () Bool)

(assert (=> b!3162083 (= e!1969939 tp!995203)))

(declare-fun b!3162081 () Bool)

(assert (=> b!3162081 (= e!1969939 tp_is_empty!16993)))

(declare-fun b!3162084 () Bool)

(declare-fun tp!995205 () Bool)

(declare-fun tp!995204 () Bool)

(assert (=> b!3162084 (= e!1969939 (and tp!995205 tp!995204))))

(assert (=> b!3162001 (= tp!995174 e!1969939)))

(assert (= (and b!3162001 ((_ is ElementMatch!9715) (regTwo!19943 r!13156))) b!3162081))

(assert (= (and b!3162001 ((_ is Concat!15036) (regTwo!19943 r!13156))) b!3162082))

(assert (= (and b!3162001 ((_ is Star!9715) (regTwo!19943 r!13156))) b!3162083))

(assert (= (and b!3162001 ((_ is Union!9715) (regTwo!19943 r!13156))) b!3162084))

(declare-fun b!3162086 () Bool)

(declare-fun e!1969940 () Bool)

(declare-fun tp!995211 () Bool)

(declare-fun tp!995207 () Bool)

(assert (=> b!3162086 (= e!1969940 (and tp!995211 tp!995207))))

(declare-fun b!3162087 () Bool)

(declare-fun tp!995208 () Bool)

(assert (=> b!3162087 (= e!1969940 tp!995208)))

(declare-fun b!3162085 () Bool)

(assert (=> b!3162085 (= e!1969940 tp_is_empty!16993)))

(declare-fun b!3162088 () Bool)

(declare-fun tp!995210 () Bool)

(declare-fun tp!995209 () Bool)

(assert (=> b!3162088 (= e!1969940 (and tp!995210 tp!995209))))

(assert (=> b!3162009 (= tp!995172 e!1969940)))

(assert (= (and b!3162009 ((_ is ElementMatch!9715) (reg!10044 r!13156))) b!3162085))

(assert (= (and b!3162009 ((_ is Concat!15036) (reg!10044 r!13156))) b!3162086))

(assert (= (and b!3162009 ((_ is Star!9715) (reg!10044 r!13156))) b!3162087))

(assert (= (and b!3162009 ((_ is Union!9715) (reg!10044 r!13156))) b!3162088))

(declare-fun condMapEmpty!18768 () Bool)

(declare-fun mapDefault!18768 () List!35544)

(assert (=> mapNonEmpty!18765 (= condMapEmpty!18768 (= mapRest!18765 ((as const (Array (_ BitVec 32) List!35544)) mapDefault!18768)))))

(declare-fun e!1969945 () Bool)

(declare-fun mapRes!18768 () Bool)

(assert (=> mapNonEmpty!18765 (= tp!995170 (and e!1969945 mapRes!18768))))

(declare-fun mapNonEmpty!18768 () Bool)

(declare-fun tp!995226 () Bool)

(declare-fun e!1969946 () Bool)

(assert (=> mapNonEmpty!18768 (= mapRes!18768 (and tp!995226 e!1969946))))

(declare-fun mapRest!18768 () (Array (_ BitVec 32) List!35544))

(declare-fun mapValue!18768 () List!35544)

(declare-fun mapKey!18768 () (_ BitVec 32))

(assert (=> mapNonEmpty!18768 (= mapRest!18765 (store mapRest!18768 mapKey!18768 mapValue!18768))))

(declare-fun tp!995231 () Bool)

(declare-fun tp!995229 () Bool)

(declare-fun tp!995227 () Bool)

(declare-fun b!3162095 () Bool)

(assert (=> b!3162095 (= e!1969946 (and tp!995231 tp_is_empty!16993 tp!995229 tp!995227))))

(declare-fun mapIsEmpty!18768 () Bool)

(assert (=> mapIsEmpty!18768 mapRes!18768))

(declare-fun tp!995230 () Bool)

(declare-fun tp!995232 () Bool)

(declare-fun tp!995228 () Bool)

(declare-fun b!3162096 () Bool)

(assert (=> b!3162096 (= e!1969945 (and tp!995230 tp_is_empty!16993 tp!995232 tp!995228))))

(assert (= (and mapNonEmpty!18765 condMapEmpty!18768) mapIsEmpty!18768))

(assert (= (and mapNonEmpty!18765 (not condMapEmpty!18768)) mapNonEmpty!18768))

(assert (= (and mapNonEmpty!18768 ((_ is Cons!35420) mapValue!18768)) b!3162095))

(assert (= (and mapNonEmpty!18765 ((_ is Cons!35420) mapDefault!18768)) b!3162096))

(declare-fun m!3426182 () Bool)

(assert (=> mapNonEmpty!18768 m!3426182))

(declare-fun tp!995233 () Bool)

(declare-fun tp!995235 () Bool)

(declare-fun b!3162097 () Bool)

(declare-fun tp!995234 () Bool)

(declare-fun e!1969947 () Bool)

(assert (=> b!3162097 (= e!1969947 (and tp!995233 tp_is_empty!16993 tp!995234 tp!995235))))

(assert (=> mapNonEmpty!18765 (= tp!995167 e!1969947)))

(assert (= (and mapNonEmpty!18765 ((_ is Cons!35420) mapValue!18765)) b!3162097))

(declare-fun b!3162099 () Bool)

(declare-fun e!1969948 () Bool)

(declare-fun tp!995240 () Bool)

(declare-fun tp!995236 () Bool)

(assert (=> b!3162099 (= e!1969948 (and tp!995240 tp!995236))))

(declare-fun b!3162100 () Bool)

(declare-fun tp!995237 () Bool)

(assert (=> b!3162100 (= e!1969948 tp!995237)))

(declare-fun b!3162098 () Bool)

(assert (=> b!3162098 (= e!1969948 tp_is_empty!16993)))

(declare-fun b!3162101 () Bool)

(declare-fun tp!995239 () Bool)

(declare-fun tp!995238 () Bool)

(assert (=> b!3162101 (= e!1969948 (and tp!995239 tp!995238))))

(assert (=> b!3162013 (= tp!995168 e!1969948)))

(assert (= (and b!3162013 ((_ is ElementMatch!9715) (regOne!19942 r!13156))) b!3162098))

(assert (= (and b!3162013 ((_ is Concat!15036) (regOne!19942 r!13156))) b!3162099))

(assert (= (and b!3162013 ((_ is Star!9715) (regOne!19942 r!13156))) b!3162100))

(assert (= (and b!3162013 ((_ is Union!9715) (regOne!19942 r!13156))) b!3162101))

(declare-fun b!3162103 () Bool)

(declare-fun e!1969949 () Bool)

(declare-fun tp!995245 () Bool)

(declare-fun tp!995241 () Bool)

(assert (=> b!3162103 (= e!1969949 (and tp!995245 tp!995241))))

(declare-fun b!3162104 () Bool)

(declare-fun tp!995242 () Bool)

(assert (=> b!3162104 (= e!1969949 tp!995242)))

(declare-fun b!3162102 () Bool)

(assert (=> b!3162102 (= e!1969949 tp_is_empty!16993)))

(declare-fun b!3162105 () Bool)

(declare-fun tp!995244 () Bool)

(declare-fun tp!995243 () Bool)

(assert (=> b!3162105 (= e!1969949 (and tp!995244 tp!995243))))

(assert (=> b!3162013 (= tp!995177 e!1969949)))

(assert (= (and b!3162013 ((_ is ElementMatch!9715) (regTwo!19942 r!13156))) b!3162102))

(assert (= (and b!3162013 ((_ is Concat!15036) (regTwo!19942 r!13156))) b!3162103))

(assert (= (and b!3162013 ((_ is Star!9715) (regTwo!19942 r!13156))) b!3162104))

(assert (= (and b!3162013 ((_ is Union!9715) (regTwo!19942 r!13156))) b!3162105))

(declare-fun tp!995246 () Bool)

(declare-fun e!1969950 () Bool)

(declare-fun tp!995247 () Bool)

(declare-fun tp!995248 () Bool)

(declare-fun b!3162106 () Bool)

(assert (=> b!3162106 (= e!1969950 (and tp!995246 tp_is_empty!16993 tp!995247 tp!995248))))

(assert (=> b!3161998 (= tp!995169 e!1969950)))

(assert (= (and b!3161998 ((_ is Cons!35420) (zeroValue!4395 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347)))))))) b!3162106))

(declare-fun b!3162107 () Bool)

(declare-fun tp!995250 () Bool)

(declare-fun tp!995249 () Bool)

(declare-fun e!1969951 () Bool)

(declare-fun tp!995251 () Bool)

(assert (=> b!3162107 (= e!1969951 (and tp!995249 tp_is_empty!16993 tp!995250 tp!995251))))

(assert (=> b!3161998 (= tp!995166 e!1969951)))

(assert (= (and b!3161998 ((_ is Cons!35420) (minValue!4395 (v!35061 (underlying!8501 (v!35062 (underlying!8502 (cache!4181 cache!347)))))))) b!3162107))

(check-sat (not bm!229020) (not b!3162101) (not d!868509) tp_is_empty!16993 (not bm!229015) (not b!3162082) (not b_next!83731) (not b!3162107) (not bm!229017) (not mapNonEmpty!18768) (not b!3162061) (not b!3162078) (not b!3162086) (not b!3162096) (not b!3162079) (not b!3162095) (not b!3162100) (not b!3162040) (not b_next!83729) (not b!3162106) (not b!3162080) (not b!3162105) (not b!3162087) (not b!3162104) (not b!3162097) (not d!868513) (not b!3162066) (not d!868511) (not b!3162083) (not b!3162052) b_and!209273 (not b!3162088) (not b!3162103) (not b!3162059) (not b!3162084) (not bm!229018) (not b!3162099) b_and!209271 (not b!3162049))
(check-sat b_and!209273 b_and!209271 (not b_next!83729) (not b_next!83731))
