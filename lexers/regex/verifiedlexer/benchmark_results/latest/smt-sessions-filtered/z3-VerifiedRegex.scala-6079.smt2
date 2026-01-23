; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296346 () Bool)

(assert start!296346)

(declare-fun b!3161153 () Bool)

(declare-fun b_free!83001 () Bool)

(declare-fun b_next!83705 () Bool)

(assert (=> b!3161153 (= b_free!83001 (not b_next!83705))))

(declare-fun tp!994602 () Bool)

(declare-fun b_and!209243 () Bool)

(assert (=> b!3161153 (= tp!994602 b_and!209243)))

(declare-fun b!3161154 () Bool)

(declare-fun b_free!83003 () Bool)

(declare-fun b_next!83707 () Bool)

(assert (=> b!3161154 (= b_free!83003 (not b_next!83707))))

(declare-fun tp!994596 () Bool)

(declare-fun b_and!209245 () Bool)

(assert (=> b!3161154 (= tp!994596 b_and!209245)))

(declare-fun b!3161148 () Bool)

(declare-fun e!1969405 () Bool)

(declare-fun tp!994601 () Bool)

(declare-fun tp!994603 () Bool)

(assert (=> b!3161148 (= e!1969405 (and tp!994601 tp!994603))))

(declare-fun b!3161149 () Bool)

(declare-fun e!1969407 () Bool)

(declare-fun e!1969403 () Bool)

(assert (=> b!3161149 (= e!1969407 e!1969403)))

(declare-fun res!1287073 () Bool)

(assert (=> b!3161149 (=> (not res!1287073) (not e!1969403))))

(declare-datatypes ((C!19604 0))(
  ( (C!19605 (val!11838 Int)) )
))
(declare-datatypes ((Regex!9709 0))(
  ( (ElementMatch!9709 (c!531630 C!19604)) (Concat!15030 (regOne!19930 Regex!9709) (regTwo!19930 Regex!9709)) (EmptyExpr!9709) (Star!9709 (reg!10038 Regex!9709)) (EmptyLang!9709) (Union!9709 (regOne!19931 Regex!9709) (regTwo!19931 Regex!9709)) )
))
(declare-fun r!13156 () Regex!9709)

(declare-fun validRegex!4439 (Regex!9709) Bool)

(assert (=> b!3161149 (= res!1287073 (validRegex!4439 (regTwo!19931 r!13156)))))

(declare-datatypes ((tuple2!34362 0))(
  ( (tuple2!34363 (_1!20313 Regex!9709) (_2!20313 C!19604)) )
))
(declare-datatypes ((tuple2!34364 0))(
  ( (tuple2!34365 (_1!20314 tuple2!34362) (_2!20314 Regex!9709)) )
))
(declare-datatypes ((array!14704 0))(
  ( (array!14705 (arr!6550 (Array (_ BitVec 32) (_ BitVec 64))) (size!26636 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4046 0))(
  ( (HashableExt!4045 (__x!22496 Int)) )
))
(declare-datatypes ((List!35537 0))(
  ( (Nil!35413) (Cons!35413 (h!40833 tuple2!34364) (t!234602 List!35537)) )
))
(declare-datatypes ((array!14706 0))(
  ( (array!14707 (arr!6551 (Array (_ BitVec 32) List!35537)) (size!26637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8260 0))(
  ( (LongMapFixedSize!8261 (defaultEntry!4515 Int) (mask!10778 (_ BitVec 32)) (extraKeys!4379 (_ BitVec 32)) (zeroValue!4389 List!35537) (minValue!4389 List!35537) (_size!8303 (_ BitVec 32)) (_keys!4430 array!14704) (_values!4411 array!14706) (_vacant!4191 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16329 0))(
  ( (Cell!16330 (v!35044 LongMapFixedSize!8260)) )
))
(declare-datatypes ((MutLongMap!4130 0))(
  ( (LongMap!4130 (underlying!8489 Cell!16329)) (MutLongMapExt!4129 (__x!22497 Int)) )
))
(declare-datatypes ((Cell!16331 0))(
  ( (Cell!16332 (v!35045 MutLongMap!4130)) )
))
(declare-datatypes ((MutableMap!4036 0))(
  ( (MutableMapExt!4035 (__x!22498 Int)) (HashMap!4036 (underlying!8490 Cell!16331) (hashF!6078 Hashable!4046) (_size!8304 (_ BitVec 32)) (defaultValue!4207 Int)) )
))
(declare-datatypes ((Cache!342 0))(
  ( (Cache!343 (cache!4174 MutableMap!4036)) )
))
(declare-datatypes ((tuple2!34366 0))(
  ( (tuple2!34367 (_1!20315 Regex!9709) (_2!20315 Cache!342)) )
))
(declare-fun lt!1062829 () tuple2!34366)

(declare-fun cache!347 () Cache!342)

(declare-fun a!2409 () C!19604)

(declare-fun derivativeStepMem!19 (Regex!9709 C!19604 Cache!342) tuple2!34366)

(assert (=> b!3161149 (= lt!1062829 (derivativeStepMem!19 (regOne!19931 r!13156) a!2409 cache!347))))

(declare-fun b!3161150 () Bool)

(declare-fun e!1969400 () Bool)

(declare-fun e!1969404 () Bool)

(declare-fun lt!1062830 () MutLongMap!4130)

(get-info :version)

(assert (=> b!3161150 (= e!1969400 (and e!1969404 ((_ is LongMap!4130) lt!1062830)))))

(assert (=> b!3161150 (= lt!1062830 (v!35045 (underlying!8490 (cache!4174 cache!347))))))

(declare-fun mapIsEmpty!18740 () Bool)

(declare-fun mapRes!18740 () Bool)

(assert (=> mapIsEmpty!18740 mapRes!18740))

(declare-fun b!3161152 () Bool)

(declare-fun tp!994600 () Bool)

(assert (=> b!3161152 (= e!1969405 tp!994600)))

(declare-fun e!1969401 () Bool)

(assert (=> b!3161153 (= e!1969401 (and e!1969400 tp!994602))))

(declare-fun tp!994598 () Bool)

(declare-fun e!1969399 () Bool)

(declare-fun tp!994599 () Bool)

(declare-fun e!1969402 () Bool)

(declare-fun array_inv!4694 (array!14704) Bool)

(declare-fun array_inv!4695 (array!14706) Bool)

(assert (=> b!3161154 (= e!1969399 (and tp!994596 tp!994599 tp!994598 (array_inv!4694 (_keys!4430 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) (array_inv!4695 (_values!4411 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) e!1969402))))

(declare-fun b!3161155 () Bool)

(declare-fun e!1969406 () Bool)

(assert (=> b!3161155 (= e!1969406 e!1969399)))

(declare-fun b!3161156 () Bool)

(declare-fun valid!3217 (Cache!342) Bool)

(assert (=> b!3161156 (= e!1969403 (not (valid!3217 (_2!20315 lt!1062829))))))

(declare-fun mapNonEmpty!18740 () Bool)

(declare-fun tp!994594 () Bool)

(declare-fun tp!994597 () Bool)

(assert (=> mapNonEmpty!18740 (= mapRes!18740 (and tp!994594 tp!994597))))

(declare-fun mapValue!18740 () List!35537)

(declare-fun mapRest!18740 () (Array (_ BitVec 32) List!35537))

(declare-fun mapKey!18740 () (_ BitVec 32))

(assert (=> mapNonEmpty!18740 (= (arr!6551 (_values!4411 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) (store mapRest!18740 mapKey!18740 mapValue!18740))))

(declare-fun b!3161157 () Bool)

(declare-fun res!1287070 () Bool)

(assert (=> b!3161157 (=> (not res!1287070) (not e!1969407))))

(assert (=> b!3161157 (= res!1287070 (valid!3217 cache!347))))

(declare-fun res!1287071 () Bool)

(assert (=> start!296346 (=> (not res!1287071) (not e!1969407))))

(assert (=> start!296346 (= res!1287071 (validRegex!4439 r!13156))))

(assert (=> start!296346 e!1969407))

(assert (=> start!296346 e!1969405))

(declare-fun e!1969408 () Bool)

(declare-fun inv!48051 (Cache!342) Bool)

(assert (=> start!296346 (and (inv!48051 cache!347) e!1969408)))

(declare-fun tp_is_empty!16981 () Bool)

(assert (=> start!296346 tp_is_empty!16981))

(declare-fun b!3161151 () Bool)

(declare-fun tp!994595 () Bool)

(declare-fun tp!994592 () Bool)

(assert (=> b!3161151 (= e!1969405 (and tp!994595 tp!994592))))

(declare-fun b!3161158 () Bool)

(declare-fun res!1287074 () Bool)

(assert (=> b!3161158 (=> (not res!1287074) (not e!1969407))))

(assert (=> b!3161158 (= res!1287074 (and (not ((_ is EmptyExpr!9709) r!13156)) (not ((_ is EmptyLang!9709) r!13156)) (not ((_ is ElementMatch!9709) r!13156)) ((_ is Union!9709) r!13156)))))

(declare-fun b!3161159 () Bool)

(declare-fun res!1287072 () Bool)

(assert (=> b!3161159 (=> (not res!1287072) (not e!1969407))))

(declare-datatypes ((Option!6873 0))(
  ( (None!6872) (Some!6872 (v!35046 Regex!9709)) )
))
(declare-fun get!11196 (Cache!342 Regex!9709 C!19604) Option!6873)

(assert (=> b!3161159 (= res!1287072 (not ((_ is Some!6872) (get!11196 cache!347 r!13156 a!2409))))))

(declare-fun b!3161160 () Bool)

(assert (=> b!3161160 (= e!1969404 e!1969406)))

(declare-fun b!3161161 () Bool)

(declare-fun tp!994593 () Bool)

(assert (=> b!3161161 (= e!1969402 (and tp!994593 mapRes!18740))))

(declare-fun condMapEmpty!18740 () Bool)

(declare-fun mapDefault!18740 () List!35537)

(assert (=> b!3161161 (= condMapEmpty!18740 (= (arr!6551 (_values!4411 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) ((as const (Array (_ BitVec 32) List!35537)) mapDefault!18740)))))

(declare-fun b!3161162 () Bool)

(assert (=> b!3161162 (= e!1969408 e!1969401)))

(declare-fun b!3161163 () Bool)

(assert (=> b!3161163 (= e!1969405 tp_is_empty!16981)))

(assert (= (and start!296346 res!1287071) b!3161157))

(assert (= (and b!3161157 res!1287070) b!3161159))

(assert (= (and b!3161159 res!1287072) b!3161158))

(assert (= (and b!3161158 res!1287074) b!3161149))

(assert (= (and b!3161149 res!1287073) b!3161156))

(assert (= (and start!296346 ((_ is ElementMatch!9709) r!13156)) b!3161163))

(assert (= (and start!296346 ((_ is Concat!15030) r!13156)) b!3161151))

(assert (= (and start!296346 ((_ is Star!9709) r!13156)) b!3161152))

(assert (= (and start!296346 ((_ is Union!9709) r!13156)) b!3161148))

(assert (= (and b!3161161 condMapEmpty!18740) mapIsEmpty!18740))

(assert (= (and b!3161161 (not condMapEmpty!18740)) mapNonEmpty!18740))

(assert (= b!3161154 b!3161161))

(assert (= b!3161155 b!3161154))

(assert (= b!3161160 b!3161155))

(assert (= (and b!3161150 ((_ is LongMap!4130) (v!35045 (underlying!8490 (cache!4174 cache!347))))) b!3161160))

(assert (= b!3161153 b!3161150))

(assert (= (and b!3161162 ((_ is HashMap!4036) (cache!4174 cache!347))) b!3161153))

(assert (= start!296346 b!3161162))

(declare-fun m!3425727 () Bool)

(assert (=> mapNonEmpty!18740 m!3425727))

(declare-fun m!3425729 () Bool)

(assert (=> b!3161157 m!3425729))

(declare-fun m!3425731 () Bool)

(assert (=> start!296346 m!3425731))

(declare-fun m!3425733 () Bool)

(assert (=> start!296346 m!3425733))

(declare-fun m!3425735 () Bool)

(assert (=> b!3161159 m!3425735))

(declare-fun m!3425737 () Bool)

(assert (=> b!3161156 m!3425737))

(declare-fun m!3425739 () Bool)

(assert (=> b!3161149 m!3425739))

(declare-fun m!3425741 () Bool)

(assert (=> b!3161149 m!3425741))

(declare-fun m!3425743 () Bool)

(assert (=> b!3161154 m!3425743))

(declare-fun m!3425745 () Bool)

(assert (=> b!3161154 m!3425745))

(check-sat (not b!3161159) (not b!3161157) (not mapNonEmpty!18740) (not b_next!83707) b_and!209245 tp_is_empty!16981 b_and!209243 (not start!296346) (not b!3161151) (not b!3161161) (not b!3161149) (not b!3161156) (not b!3161148) (not b_next!83705) (not b!3161152) (not b!3161154))
(check-sat b_and!209243 b_and!209245 (not b_next!83707) (not b_next!83705))
(get-model)

(declare-fun bm!228922 () Bool)

(declare-fun call!228929 () Bool)

(declare-fun call!228928 () Bool)

(assert (=> bm!228922 (= call!228929 call!228928)))

(declare-fun b!3161182 () Bool)

(declare-fun e!1969426 () Bool)

(declare-fun e!1969428 () Bool)

(assert (=> b!3161182 (= e!1969426 e!1969428)))

(declare-fun c!531636 () Bool)

(assert (=> b!3161182 (= c!531636 ((_ is Union!9709) r!13156))))

(declare-fun b!3161183 () Bool)

(declare-fun e!1969427 () Bool)

(assert (=> b!3161183 (= e!1969427 e!1969426)))

(declare-fun c!531635 () Bool)

(assert (=> b!3161183 (= c!531635 ((_ is Star!9709) r!13156))))

(declare-fun b!3161184 () Bool)

(declare-fun e!1969430 () Bool)

(declare-fun e!1969424 () Bool)

(assert (=> b!3161184 (= e!1969430 e!1969424)))

(declare-fun res!1287085 () Bool)

(assert (=> b!3161184 (=> (not res!1287085) (not e!1969424))))

(declare-fun call!228927 () Bool)

(assert (=> b!3161184 (= res!1287085 call!228927)))

(declare-fun bm!228923 () Bool)

(assert (=> bm!228923 (= call!228927 (validRegex!4439 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))

(declare-fun b!3161186 () Bool)

(declare-fun res!1287088 () Bool)

(declare-fun e!1969425 () Bool)

(assert (=> b!3161186 (=> (not res!1287088) (not e!1969425))))

(assert (=> b!3161186 (= res!1287088 call!228927)))

(assert (=> b!3161186 (= e!1969428 e!1969425)))

(declare-fun b!3161187 () Bool)

(assert (=> b!3161187 (= e!1969424 call!228929)))

(declare-fun b!3161188 () Bool)

(assert (=> b!3161188 (= e!1969425 call!228929)))

(declare-fun bm!228924 () Bool)

(assert (=> bm!228924 (= call!228928 (validRegex!4439 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))

(declare-fun d!868426 () Bool)

(declare-fun res!1287087 () Bool)

(assert (=> d!868426 (=> res!1287087 e!1969427)))

(assert (=> d!868426 (= res!1287087 ((_ is ElementMatch!9709) r!13156))))

(assert (=> d!868426 (= (validRegex!4439 r!13156) e!1969427)))

(declare-fun b!3161185 () Bool)

(declare-fun e!1969429 () Bool)

(assert (=> b!3161185 (= e!1969426 e!1969429)))

(declare-fun res!1287086 () Bool)

(declare-fun nullable!3330 (Regex!9709) Bool)

(assert (=> b!3161185 (= res!1287086 (not (nullable!3330 (reg!10038 r!13156))))))

(assert (=> b!3161185 (=> (not res!1287086) (not e!1969429))))

(declare-fun b!3161189 () Bool)

(assert (=> b!3161189 (= e!1969429 call!228928)))

(declare-fun b!3161190 () Bool)

(declare-fun res!1287089 () Bool)

(assert (=> b!3161190 (=> res!1287089 e!1969430)))

(assert (=> b!3161190 (= res!1287089 (not ((_ is Concat!15030) r!13156)))))

(assert (=> b!3161190 (= e!1969428 e!1969430)))

(assert (= (and d!868426 (not res!1287087)) b!3161183))

(assert (= (and b!3161183 c!531635) b!3161185))

(assert (= (and b!3161183 (not c!531635)) b!3161182))

(assert (= (and b!3161185 res!1287086) b!3161189))

(assert (= (and b!3161182 c!531636) b!3161186))

(assert (= (and b!3161182 (not c!531636)) b!3161190))

(assert (= (and b!3161186 res!1287088) b!3161188))

(assert (= (and b!3161190 (not res!1287089)) b!3161184))

(assert (= (and b!3161184 res!1287085) b!3161187))

(assert (= (or b!3161186 b!3161184) bm!228923))

(assert (= (or b!3161188 b!3161187) bm!228922))

(assert (= (or b!3161189 bm!228922) bm!228924))

(declare-fun m!3425747 () Bool)

(assert (=> bm!228923 m!3425747))

(declare-fun m!3425749 () Bool)

(assert (=> bm!228924 m!3425749))

(declare-fun m!3425751 () Bool)

(assert (=> b!3161185 m!3425751))

(assert (=> start!296346 d!868426))

(declare-fun d!868428 () Bool)

(declare-fun res!1287092 () Bool)

(declare-fun e!1969433 () Bool)

(assert (=> d!868428 (=> (not res!1287092) (not e!1969433))))

(assert (=> d!868428 (= res!1287092 ((_ is HashMap!4036) (cache!4174 cache!347)))))

(assert (=> d!868428 (= (inv!48051 cache!347) e!1969433)))

(declare-fun b!3161193 () Bool)

(declare-fun validCacheMap!45 (MutableMap!4036) Bool)

(assert (=> b!3161193 (= e!1969433 (validCacheMap!45 (cache!4174 cache!347)))))

(assert (= (and d!868428 res!1287092) b!3161193))

(declare-fun m!3425753 () Bool)

(assert (=> b!3161193 m!3425753))

(assert (=> start!296346 d!868428))

(declare-fun d!868430 () Bool)

(declare-fun e!1969439 () Bool)

(assert (=> d!868430 e!1969439))

(declare-fun res!1287095 () Bool)

(assert (=> d!868430 (=> res!1287095 e!1969439)))

(declare-fun lt!1062836 () Option!6873)

(declare-fun isEmpty!19747 (Option!6873) Bool)

(assert (=> d!868430 (= res!1287095 (isEmpty!19747 lt!1062836))))

(declare-fun e!1969438 () Option!6873)

(assert (=> d!868430 (= lt!1062836 e!1969438)))

(declare-fun c!531640 () Bool)

(declare-fun contains!6142 (MutableMap!4036 tuple2!34362) Bool)

(assert (=> d!868430 (= c!531640 (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409)))))

(assert (=> d!868430 (validRegex!4439 r!13156)))

(assert (=> d!868430 (= (get!11196 cache!347 r!13156 a!2409) lt!1062836)))

(declare-fun b!3161200 () Bool)

(declare-fun apply!7929 (MutableMap!4036 tuple2!34362) Regex!9709)

(assert (=> b!3161200 (= e!1969438 (Some!6872 (apply!7929 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409))))))

(declare-datatypes ((Unit!49756 0))(
  ( (Unit!49757) )
))
(declare-fun lt!1062835 () Unit!49756)

(declare-fun lemmaIfInCacheThenValid!45 (Cache!342 Regex!9709 C!19604) Unit!49756)

(assert (=> b!3161200 (= lt!1062835 (lemmaIfInCacheThenValid!45 cache!347 r!13156 a!2409))))

(declare-fun b!3161201 () Bool)

(assert (=> b!3161201 (= e!1969438 None!6872)))

(declare-fun b!3161202 () Bool)

(declare-fun get!11197 (Option!6873) Regex!9709)

(declare-fun derivativeStep!2880 (Regex!9709 C!19604) Regex!9709)

(assert (=> b!3161202 (= e!1969439 (= (get!11197 lt!1062836) (derivativeStep!2880 r!13156 a!2409)))))

(assert (= (and d!868430 c!531640) b!3161200))

(assert (= (and d!868430 (not c!531640)) b!3161201))

(assert (= (and d!868430 (not res!1287095)) b!3161202))

(declare-fun m!3425755 () Bool)

(assert (=> d!868430 m!3425755))

(declare-fun m!3425757 () Bool)

(assert (=> d!868430 m!3425757))

(assert (=> d!868430 m!3425731))

(declare-fun m!3425759 () Bool)

(assert (=> b!3161200 m!3425759))

(declare-fun m!3425761 () Bool)

(assert (=> b!3161200 m!3425761))

(declare-fun m!3425763 () Bool)

(assert (=> b!3161202 m!3425763))

(declare-fun m!3425765 () Bool)

(assert (=> b!3161202 m!3425765))

(assert (=> b!3161159 d!868430))

(declare-fun d!868432 () Bool)

(assert (=> d!868432 (= (valid!3217 (_2!20315 lt!1062829)) (validCacheMap!45 (cache!4174 (_2!20315 lt!1062829))))))

(declare-fun bs!539417 () Bool)

(assert (= bs!539417 d!868432))

(declare-fun m!3425767 () Bool)

(assert (=> bs!539417 m!3425767))

(assert (=> b!3161156 d!868432))

(declare-fun d!868434 () Bool)

(assert (=> d!868434 (= (valid!3217 cache!347) (validCacheMap!45 (cache!4174 cache!347)))))

(declare-fun bs!539418 () Bool)

(assert (= bs!539418 d!868434))

(assert (=> bs!539418 m!3425753))

(assert (=> b!3161157 d!868434))

(declare-fun d!868436 () Bool)

(assert (=> d!868436 (= (array_inv!4694 (_keys!4430 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) (bvsge (size!26636 (_keys!4430 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161154 d!868436))

(declare-fun d!868438 () Bool)

(assert (=> d!868438 (= (array_inv!4695 (_values!4411 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) (bvsge (size!26637 (_values!4411 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161154 d!868438))

(declare-fun bm!228925 () Bool)

(declare-fun call!228932 () Bool)

(declare-fun call!228931 () Bool)

(assert (=> bm!228925 (= call!228932 call!228931)))

(declare-fun b!3161203 () Bool)

(declare-fun e!1969442 () Bool)

(declare-fun e!1969444 () Bool)

(assert (=> b!3161203 (= e!1969442 e!1969444)))

(declare-fun c!531642 () Bool)

(assert (=> b!3161203 (= c!531642 ((_ is Union!9709) (regTwo!19931 r!13156)))))

(declare-fun b!3161204 () Bool)

(declare-fun e!1969443 () Bool)

(assert (=> b!3161204 (= e!1969443 e!1969442)))

(declare-fun c!531641 () Bool)

(assert (=> b!3161204 (= c!531641 ((_ is Star!9709) (regTwo!19931 r!13156)))))

(declare-fun b!3161205 () Bool)

(declare-fun e!1969446 () Bool)

(declare-fun e!1969440 () Bool)

(assert (=> b!3161205 (= e!1969446 e!1969440)))

(declare-fun res!1287096 () Bool)

(assert (=> b!3161205 (=> (not res!1287096) (not e!1969440))))

(declare-fun call!228930 () Bool)

(assert (=> b!3161205 (= res!1287096 call!228930)))

(declare-fun bm!228926 () Bool)

(assert (=> bm!228926 (= call!228930 (validRegex!4439 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))

(declare-fun b!3161207 () Bool)

(declare-fun res!1287099 () Bool)

(declare-fun e!1969441 () Bool)

(assert (=> b!3161207 (=> (not res!1287099) (not e!1969441))))

(assert (=> b!3161207 (= res!1287099 call!228930)))

(assert (=> b!3161207 (= e!1969444 e!1969441)))

(declare-fun b!3161208 () Bool)

(assert (=> b!3161208 (= e!1969440 call!228932)))

(declare-fun b!3161209 () Bool)

(assert (=> b!3161209 (= e!1969441 call!228932)))

(declare-fun bm!228927 () Bool)

(assert (=> bm!228927 (= call!228931 (validRegex!4439 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))

(declare-fun d!868440 () Bool)

(declare-fun res!1287098 () Bool)

(assert (=> d!868440 (=> res!1287098 e!1969443)))

(assert (=> d!868440 (= res!1287098 ((_ is ElementMatch!9709) (regTwo!19931 r!13156)))))

(assert (=> d!868440 (= (validRegex!4439 (regTwo!19931 r!13156)) e!1969443)))

(declare-fun b!3161206 () Bool)

(declare-fun e!1969445 () Bool)

(assert (=> b!3161206 (= e!1969442 e!1969445)))

(declare-fun res!1287097 () Bool)

(assert (=> b!3161206 (= res!1287097 (not (nullable!3330 (reg!10038 (regTwo!19931 r!13156)))))))

(assert (=> b!3161206 (=> (not res!1287097) (not e!1969445))))

(declare-fun b!3161210 () Bool)

(assert (=> b!3161210 (= e!1969445 call!228931)))

(declare-fun b!3161211 () Bool)

(declare-fun res!1287100 () Bool)

(assert (=> b!3161211 (=> res!1287100 e!1969446)))

(assert (=> b!3161211 (= res!1287100 (not ((_ is Concat!15030) (regTwo!19931 r!13156))))))

(assert (=> b!3161211 (= e!1969444 e!1969446)))

(assert (= (and d!868440 (not res!1287098)) b!3161204))

(assert (= (and b!3161204 c!531641) b!3161206))

(assert (= (and b!3161204 (not c!531641)) b!3161203))

(assert (= (and b!3161206 res!1287097) b!3161210))

(assert (= (and b!3161203 c!531642) b!3161207))

(assert (= (and b!3161203 (not c!531642)) b!3161211))

(assert (= (and b!3161207 res!1287099) b!3161209))

(assert (= (and b!3161211 (not res!1287100)) b!3161205))

(assert (= (and b!3161205 res!1287096) b!3161208))

(assert (= (or b!3161207 b!3161205) bm!228926))

(assert (= (or b!3161209 b!3161208) bm!228925))

(assert (= (or b!3161210 bm!228925) bm!228927))

(declare-fun m!3425769 () Bool)

(assert (=> bm!228926 m!3425769))

(declare-fun m!3425771 () Bool)

(assert (=> bm!228927 m!3425771))

(declare-fun m!3425773 () Bool)

(assert (=> b!3161206 m!3425773))

(assert (=> b!3161149 d!868440))

(declare-fun b!3161236 () Bool)

(declare-fun e!1969463 () tuple2!34366)

(declare-fun e!1969462 () tuple2!34366)

(assert (=> b!3161236 (= e!1969463 e!1969462)))

(declare-fun c!531655 () Bool)

(assert (=> b!3161236 (= c!531655 ((_ is Union!9709) (regOne!19931 r!13156)))))

(declare-fun b!3161237 () Bool)

(declare-fun lt!1062856 () tuple2!34366)

(declare-fun call!228941 () tuple2!34366)

(assert (=> b!3161237 (= lt!1062856 call!228941)))

(declare-fun e!1969459 () tuple2!34366)

(assert (=> b!3161237 (= e!1969459 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062856) (regTwo!19930 (regOne!19931 r!13156))) EmptyLang!9709) (_2!20315 lt!1062856)))))

(declare-fun call!228942 () tuple2!34366)

(declare-fun c!531656 () Bool)

(declare-fun bm!228936 () Bool)

(assert (=> bm!228936 (= call!228942 (derivativeStepMem!19 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 cache!347))))

(declare-fun b!3161238 () Bool)

(declare-fun c!531660 () Bool)

(assert (=> b!3161238 (= c!531660 ((_ is ElementMatch!9709) (regOne!19931 r!13156)))))

(declare-fun e!1969464 () tuple2!34366)

(assert (=> b!3161238 (= e!1969464 e!1969463)))

(declare-fun bm!228937 () Bool)

(declare-fun call!228944 () tuple2!34366)

(assert (=> bm!228937 (= call!228944 call!228942)))

(declare-fun bm!228938 () Bool)

(declare-fun call!228943 () tuple2!34366)

(assert (=> bm!228938 (= call!228941 call!228943)))

(declare-fun b!3161239 () Bool)

(declare-fun e!1969461 () tuple2!34366)

(declare-fun lt!1062862 () tuple2!34366)

(assert (=> b!3161239 (= e!1969461 (tuple2!34367 (Concat!15030 (_1!20315 lt!1062862) (Star!9709 (reg!10038 (regOne!19931 r!13156)))) (_2!20315 lt!1062862)))))

(assert (=> b!3161239 (= lt!1062862 call!228944)))

(declare-fun b!3161240 () Bool)

(declare-fun e!1969460 () tuple2!34366)

(declare-fun lt!1062860 () Option!6873)

(assert (=> b!3161240 (= e!1969460 (tuple2!34367 (v!35046 lt!1062860) cache!347))))

(declare-fun bm!228939 () Bool)

(declare-fun lt!1062858 () tuple2!34366)

(declare-fun c!531658 () Bool)

(declare-fun lt!1062859 () tuple2!34366)

(assert (=> bm!228939 (= call!228943 (derivativeStepMem!19 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))

(declare-fun d!868442 () Bool)

(declare-fun lt!1062857 () tuple2!34366)

(assert (=> d!868442 (= (_1!20315 lt!1062857) (derivativeStep!2880 (regOne!19931 r!13156) a!2409))))

(assert (=> d!868442 (= lt!1062857 e!1969460)))

(declare-fun c!531657 () Bool)

(assert (=> d!868442 (= c!531657 ((_ is Some!6872) lt!1062860))))

(assert (=> d!868442 (= lt!1062860 (get!11196 cache!347 (regOne!19931 r!13156) a!2409))))

(assert (=> d!868442 (validRegex!4439 (regOne!19931 r!13156))))

(assert (=> d!868442 (= (derivativeStepMem!19 (regOne!19931 r!13156) a!2409 cache!347) lt!1062857)))

(declare-fun b!3161241 () Bool)

(assert (=> b!3161241 (= e!1969463 (tuple2!34367 (ite (= a!2409 (c!531630 (regOne!19931 r!13156))) EmptyExpr!9709 EmptyLang!9709) cache!347))))

(declare-fun b!3161242 () Bool)

(declare-fun lt!1062861 () tuple2!34366)

(assert (=> b!3161242 (= lt!1062861 call!228941)))

(assert (=> b!3161242 (= lt!1062858 call!228944)))

(assert (=> b!3161242 (= e!1969459 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062858) (regTwo!19930 (regOne!19931 r!13156))) (_1!20315 lt!1062861)) (_2!20315 lt!1062861)))))

(declare-fun b!3161243 () Bool)

(declare-fun lt!1062855 () tuple2!34366)

(declare-datatypes ((tuple2!34368 0))(
  ( (tuple2!34369 (_1!20316 Unit!49756) (_2!20316 Cache!342)) )
))
(declare-fun update!258 (Cache!342 Regex!9709 C!19604 Regex!9709) tuple2!34368)

(assert (=> b!3161243 (= e!1969460 (tuple2!34367 (_1!20315 lt!1062855) (_2!20316 (update!258 (_2!20315 lt!1062855) (regOne!19931 r!13156) a!2409 (_1!20315 lt!1062855)))))))

(declare-fun c!531659 () Bool)

(assert (=> b!3161243 (= c!531659 (or ((_ is EmptyExpr!9709) (regOne!19931 r!13156)) ((_ is EmptyLang!9709) (regOne!19931 r!13156))))))

(assert (=> b!3161243 (= lt!1062855 e!1969464)))

(declare-fun b!3161244 () Bool)

(assert (=> b!3161244 (= e!1969464 (tuple2!34367 EmptyLang!9709 cache!347))))

(declare-fun b!3161245 () Bool)

(declare-fun lt!1062863 () tuple2!34366)

(assert (=> b!3161245 (= lt!1062863 call!228943)))

(assert (=> b!3161245 (= lt!1062859 call!228942)))

(assert (=> b!3161245 (= e!1969462 (tuple2!34367 (Union!9709 (_1!20315 lt!1062859) (_1!20315 lt!1062863)) (_2!20315 lt!1062863)))))

(declare-fun b!3161246 () Bool)

(assert (=> b!3161246 (= e!1969461 e!1969459)))

(assert (=> b!3161246 (= c!531658 (nullable!3330 (regOne!19930 (regOne!19931 r!13156))))))

(declare-fun b!3161247 () Bool)

(assert (=> b!3161247 (= c!531656 ((_ is Star!9709) (regOne!19931 r!13156)))))

(assert (=> b!3161247 (= e!1969462 e!1969461)))

(assert (= (and d!868442 c!531657) b!3161240))

(assert (= (and d!868442 (not c!531657)) b!3161243))

(assert (= (and b!3161243 c!531659) b!3161244))

(assert (= (and b!3161243 (not c!531659)) b!3161238))

(assert (= (and b!3161238 c!531660) b!3161241))

(assert (= (and b!3161238 (not c!531660)) b!3161236))

(assert (= (and b!3161236 c!531655) b!3161245))

(assert (= (and b!3161236 (not c!531655)) b!3161247))

(assert (= (and b!3161247 c!531656) b!3161239))

(assert (= (and b!3161247 (not c!531656)) b!3161246))

(assert (= (and b!3161246 c!531658) b!3161242))

(assert (= (and b!3161246 (not c!531658)) b!3161237))

(assert (= (or b!3161242 b!3161237) bm!228938))

(assert (= (or b!3161239 b!3161242) bm!228937))

(assert (= (or b!3161245 bm!228937) bm!228936))

(assert (= (or b!3161245 bm!228938) bm!228939))

(declare-fun m!3425775 () Bool)

(assert (=> bm!228936 m!3425775))

(declare-fun m!3425777 () Bool)

(assert (=> b!3161243 m!3425777))

(declare-fun m!3425779 () Bool)

(assert (=> bm!228939 m!3425779))

(declare-fun m!3425781 () Bool)

(assert (=> b!3161246 m!3425781))

(declare-fun m!3425783 () Bool)

(assert (=> d!868442 m!3425783))

(declare-fun m!3425785 () Bool)

(assert (=> d!868442 m!3425785))

(declare-fun m!3425787 () Bool)

(assert (=> d!868442 m!3425787))

(assert (=> b!3161149 d!868442))

(declare-fun b!3161260 () Bool)

(declare-fun e!1969467 () Bool)

(declare-fun tp!994614 () Bool)

(assert (=> b!3161260 (= e!1969467 tp!994614)))

(declare-fun b!3161258 () Bool)

(assert (=> b!3161258 (= e!1969467 tp_is_empty!16981)))

(assert (=> b!3161151 (= tp!994595 e!1969467)))

(declare-fun b!3161261 () Bool)

(declare-fun tp!994618 () Bool)

(declare-fun tp!994616 () Bool)

(assert (=> b!3161261 (= e!1969467 (and tp!994618 tp!994616))))

(declare-fun b!3161259 () Bool)

(declare-fun tp!994615 () Bool)

(declare-fun tp!994617 () Bool)

(assert (=> b!3161259 (= e!1969467 (and tp!994615 tp!994617))))

(assert (= (and b!3161151 ((_ is ElementMatch!9709) (regOne!19930 r!13156))) b!3161258))

(assert (= (and b!3161151 ((_ is Concat!15030) (regOne!19930 r!13156))) b!3161259))

(assert (= (and b!3161151 ((_ is Star!9709) (regOne!19930 r!13156))) b!3161260))

(assert (= (and b!3161151 ((_ is Union!9709) (regOne!19930 r!13156))) b!3161261))

(declare-fun b!3161264 () Bool)

(declare-fun e!1969468 () Bool)

(declare-fun tp!994619 () Bool)

(assert (=> b!3161264 (= e!1969468 tp!994619)))

(declare-fun b!3161262 () Bool)

(assert (=> b!3161262 (= e!1969468 tp_is_empty!16981)))

(assert (=> b!3161151 (= tp!994592 e!1969468)))

(declare-fun b!3161265 () Bool)

(declare-fun tp!994623 () Bool)

(declare-fun tp!994621 () Bool)

(assert (=> b!3161265 (= e!1969468 (and tp!994623 tp!994621))))

(declare-fun b!3161263 () Bool)

(declare-fun tp!994620 () Bool)

(declare-fun tp!994622 () Bool)

(assert (=> b!3161263 (= e!1969468 (and tp!994620 tp!994622))))

(assert (= (and b!3161151 ((_ is ElementMatch!9709) (regTwo!19930 r!13156))) b!3161262))

(assert (= (and b!3161151 ((_ is Concat!15030) (regTwo!19930 r!13156))) b!3161263))

(assert (= (and b!3161151 ((_ is Star!9709) (regTwo!19930 r!13156))) b!3161264))

(assert (= (and b!3161151 ((_ is Union!9709) (regTwo!19930 r!13156))) b!3161265))

(declare-fun tp!994632 () Bool)

(declare-fun e!1969471 () Bool)

(declare-fun tp!994630 () Bool)

(declare-fun b!3161270 () Bool)

(declare-fun tp!994631 () Bool)

(assert (=> b!3161270 (= e!1969471 (and tp!994630 tp_is_empty!16981 tp!994631 tp!994632))))

(assert (=> b!3161161 (= tp!994593 e!1969471)))

(assert (= (and b!3161161 ((_ is Cons!35413) mapDefault!18740)) b!3161270))

(declare-fun tp!994653 () Bool)

(declare-fun e!1969476 () Bool)

(declare-fun tp!994647 () Bool)

(declare-fun tp!994648 () Bool)

(declare-fun b!3161277 () Bool)

(assert (=> b!3161277 (= e!1969476 (and tp!994653 tp_is_empty!16981 tp!994648 tp!994647))))

(declare-fun tp!994650 () Bool)

(declare-fun b!3161278 () Bool)

(declare-fun tp!994652 () Bool)

(declare-fun tp!994651 () Bool)

(declare-fun e!1969477 () Bool)

(assert (=> b!3161278 (= e!1969477 (and tp!994652 tp_is_empty!16981 tp!994650 tp!994651))))

(declare-fun condMapEmpty!18743 () Bool)

(declare-fun mapDefault!18743 () List!35537)

(assert (=> mapNonEmpty!18740 (= condMapEmpty!18743 (= mapRest!18740 ((as const (Array (_ BitVec 32) List!35537)) mapDefault!18743)))))

(declare-fun mapRes!18743 () Bool)

(assert (=> mapNonEmpty!18740 (= tp!994594 (and e!1969477 mapRes!18743))))

(declare-fun mapIsEmpty!18743 () Bool)

(assert (=> mapIsEmpty!18743 mapRes!18743))

(declare-fun mapNonEmpty!18743 () Bool)

(declare-fun tp!994649 () Bool)

(assert (=> mapNonEmpty!18743 (= mapRes!18743 (and tp!994649 e!1969476))))

(declare-fun mapRest!18743 () (Array (_ BitVec 32) List!35537))

(declare-fun mapKey!18743 () (_ BitVec 32))

(declare-fun mapValue!18743 () List!35537)

(assert (=> mapNonEmpty!18743 (= mapRest!18740 (store mapRest!18743 mapKey!18743 mapValue!18743))))

(assert (= (and mapNonEmpty!18740 condMapEmpty!18743) mapIsEmpty!18743))

(assert (= (and mapNonEmpty!18740 (not condMapEmpty!18743)) mapNonEmpty!18743))

(assert (= (and mapNonEmpty!18743 ((_ is Cons!35413) mapValue!18743)) b!3161277))

(assert (= (and mapNonEmpty!18740 ((_ is Cons!35413) mapDefault!18743)) b!3161278))

(declare-fun m!3425789 () Bool)

(assert (=> mapNonEmpty!18743 m!3425789))

(declare-fun tp!994656 () Bool)

(declare-fun e!1969478 () Bool)

(declare-fun b!3161279 () Bool)

(declare-fun tp!994655 () Bool)

(declare-fun tp!994654 () Bool)

(assert (=> b!3161279 (= e!1969478 (and tp!994654 tp_is_empty!16981 tp!994655 tp!994656))))

(assert (=> mapNonEmpty!18740 (= tp!994597 e!1969478)))

(assert (= (and mapNonEmpty!18740 ((_ is Cons!35413) mapValue!18740)) b!3161279))

(declare-fun b!3161282 () Bool)

(declare-fun e!1969479 () Bool)

(declare-fun tp!994657 () Bool)

(assert (=> b!3161282 (= e!1969479 tp!994657)))

(declare-fun b!3161280 () Bool)

(assert (=> b!3161280 (= e!1969479 tp_is_empty!16981)))

(assert (=> b!3161152 (= tp!994600 e!1969479)))

(declare-fun b!3161283 () Bool)

(declare-fun tp!994661 () Bool)

(declare-fun tp!994659 () Bool)

(assert (=> b!3161283 (= e!1969479 (and tp!994661 tp!994659))))

(declare-fun b!3161281 () Bool)

(declare-fun tp!994658 () Bool)

(declare-fun tp!994660 () Bool)

(assert (=> b!3161281 (= e!1969479 (and tp!994658 tp!994660))))

(assert (= (and b!3161152 ((_ is ElementMatch!9709) (reg!10038 r!13156))) b!3161280))

(assert (= (and b!3161152 ((_ is Concat!15030) (reg!10038 r!13156))) b!3161281))

(assert (= (and b!3161152 ((_ is Star!9709) (reg!10038 r!13156))) b!3161282))

(assert (= (and b!3161152 ((_ is Union!9709) (reg!10038 r!13156))) b!3161283))

(declare-fun b!3161286 () Bool)

(declare-fun e!1969480 () Bool)

(declare-fun tp!994662 () Bool)

(assert (=> b!3161286 (= e!1969480 tp!994662)))

(declare-fun b!3161284 () Bool)

(assert (=> b!3161284 (= e!1969480 tp_is_empty!16981)))

(assert (=> b!3161148 (= tp!994601 e!1969480)))

(declare-fun b!3161287 () Bool)

(declare-fun tp!994666 () Bool)

(declare-fun tp!994664 () Bool)

(assert (=> b!3161287 (= e!1969480 (and tp!994666 tp!994664))))

(declare-fun b!3161285 () Bool)

(declare-fun tp!994663 () Bool)

(declare-fun tp!994665 () Bool)

(assert (=> b!3161285 (= e!1969480 (and tp!994663 tp!994665))))

(assert (= (and b!3161148 ((_ is ElementMatch!9709) (regOne!19931 r!13156))) b!3161284))

(assert (= (and b!3161148 ((_ is Concat!15030) (regOne!19931 r!13156))) b!3161285))

(assert (= (and b!3161148 ((_ is Star!9709) (regOne!19931 r!13156))) b!3161286))

(assert (= (and b!3161148 ((_ is Union!9709) (regOne!19931 r!13156))) b!3161287))

(declare-fun b!3161290 () Bool)

(declare-fun e!1969481 () Bool)

(declare-fun tp!994667 () Bool)

(assert (=> b!3161290 (= e!1969481 tp!994667)))

(declare-fun b!3161288 () Bool)

(assert (=> b!3161288 (= e!1969481 tp_is_empty!16981)))

(assert (=> b!3161148 (= tp!994603 e!1969481)))

(declare-fun b!3161291 () Bool)

(declare-fun tp!994671 () Bool)

(declare-fun tp!994669 () Bool)

(assert (=> b!3161291 (= e!1969481 (and tp!994671 tp!994669))))

(declare-fun b!3161289 () Bool)

(declare-fun tp!994668 () Bool)

(declare-fun tp!994670 () Bool)

(assert (=> b!3161289 (= e!1969481 (and tp!994668 tp!994670))))

(assert (= (and b!3161148 ((_ is ElementMatch!9709) (regTwo!19931 r!13156))) b!3161288))

(assert (= (and b!3161148 ((_ is Concat!15030) (regTwo!19931 r!13156))) b!3161289))

(assert (= (and b!3161148 ((_ is Star!9709) (regTwo!19931 r!13156))) b!3161290))

(assert (= (and b!3161148 ((_ is Union!9709) (regTwo!19931 r!13156))) b!3161291))

(declare-fun e!1969482 () Bool)

(declare-fun tp!994672 () Bool)

(declare-fun b!3161292 () Bool)

(declare-fun tp!994674 () Bool)

(declare-fun tp!994673 () Bool)

(assert (=> b!3161292 (= e!1969482 (and tp!994672 tp_is_empty!16981 tp!994673 tp!994674))))

(assert (=> b!3161154 (= tp!994599 e!1969482)))

(assert (= (and b!3161154 ((_ is Cons!35413) (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))) b!3161292))

(declare-fun b!3161293 () Bool)

(declare-fun e!1969483 () Bool)

(declare-fun tp!994675 () Bool)

(declare-fun tp!994676 () Bool)

(declare-fun tp!994677 () Bool)

(assert (=> b!3161293 (= e!1969483 (and tp!994675 tp_is_empty!16981 tp!994676 tp!994677))))

(assert (=> b!3161154 (= tp!994598 e!1969483)))

(assert (= (and b!3161154 ((_ is Cons!35413) (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))) b!3161293))

(check-sat (not b!3161206) (not b!3161260) (not b!3161270) (not d!868434) (not b!3161289) (not b_next!83707) (not b!3161290) (not b!3161277) (not b!3161279) (not b!3161286) (not b!3161285) (not b!3161263) (not b_next!83705) (not b!3161261) (not d!868430) (not b!3161185) (not bm!228939) b_and!209245 (not bm!228927) (not b!3161283) (not d!868432) (not b!3161278) (not b!3161264) (not b!3161200) (not b!3161293) (not bm!228926) (not b!3161265) (not b!3161282) tp_is_empty!16981 (not b!3161246) (not b!3161291) b_and!209243 (not mapNonEmpty!18743) (not bm!228936) (not b!3161259) (not bm!228923) (not b!3161281) (not b!3161292) (not bm!228924) (not b!3161193) (not b!3161202) (not d!868442) (not b!3161243) (not b!3161287))
(check-sat b_and!209243 b_and!209245 (not b_next!83707) (not b_next!83705))
(get-model)

(declare-fun bm!228940 () Bool)

(declare-fun call!228947 () Bool)

(declare-fun call!228946 () Bool)

(assert (=> bm!228940 (= call!228947 call!228946)))

(declare-fun b!3161294 () Bool)

(declare-fun e!1969486 () Bool)

(declare-fun e!1969488 () Bool)

(assert (=> b!3161294 (= e!1969486 e!1969488)))

(declare-fun c!531662 () Bool)

(assert (=> b!3161294 (= c!531662 ((_ is Union!9709) (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))

(declare-fun b!3161295 () Bool)

(declare-fun e!1969487 () Bool)

(assert (=> b!3161295 (= e!1969487 e!1969486)))

(declare-fun c!531661 () Bool)

(assert (=> b!3161295 (= c!531661 ((_ is Star!9709) (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))

(declare-fun b!3161296 () Bool)

(declare-fun e!1969490 () Bool)

(declare-fun e!1969484 () Bool)

(assert (=> b!3161296 (= e!1969490 e!1969484)))

(declare-fun res!1287101 () Bool)

(assert (=> b!3161296 (=> (not res!1287101) (not e!1969484))))

(declare-fun call!228945 () Bool)

(assert (=> b!3161296 (= res!1287101 call!228945)))

(declare-fun bm!228941 () Bool)

(assert (=> bm!228941 (= call!228945 (validRegex!4439 (ite c!531662 (regOne!19931 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))) (regOne!19930 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))))

(declare-fun b!3161298 () Bool)

(declare-fun res!1287104 () Bool)

(declare-fun e!1969485 () Bool)

(assert (=> b!3161298 (=> (not res!1287104) (not e!1969485))))

(assert (=> b!3161298 (= res!1287104 call!228945)))

(assert (=> b!3161298 (= e!1969488 e!1969485)))

(declare-fun b!3161299 () Bool)

(assert (=> b!3161299 (= e!1969484 call!228947)))

(declare-fun b!3161300 () Bool)

(assert (=> b!3161300 (= e!1969485 call!228947)))

(declare-fun bm!228942 () Bool)

(assert (=> bm!228942 (= call!228946 (validRegex!4439 (ite c!531661 (reg!10038 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))) (ite c!531662 (regTwo!19931 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))) (regTwo!19930 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156))))))))))

(declare-fun d!868444 () Bool)

(declare-fun res!1287103 () Bool)

(assert (=> d!868444 (=> res!1287103 e!1969487)))

(assert (=> d!868444 (= res!1287103 ((_ is ElementMatch!9709) (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))

(assert (=> d!868444 (= (validRegex!4439 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))) e!1969487)))

(declare-fun b!3161297 () Bool)

(declare-fun e!1969489 () Bool)

(assert (=> b!3161297 (= e!1969486 e!1969489)))

(declare-fun res!1287102 () Bool)

(assert (=> b!3161297 (= res!1287102 (not (nullable!3330 (reg!10038 (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156)))))))))

(assert (=> b!3161297 (=> (not res!1287102) (not e!1969489))))

(declare-fun b!3161301 () Bool)

(assert (=> b!3161301 (= e!1969489 call!228946)))

(declare-fun b!3161302 () Bool)

(declare-fun res!1287105 () Bool)

(assert (=> b!3161302 (=> res!1287105 e!1969490)))

(assert (=> b!3161302 (= res!1287105 (not ((_ is Concat!15030) (ite c!531635 (reg!10038 r!13156) (ite c!531636 (regTwo!19931 r!13156) (regTwo!19930 r!13156))))))))

(assert (=> b!3161302 (= e!1969488 e!1969490)))

(assert (= (and d!868444 (not res!1287103)) b!3161295))

(assert (= (and b!3161295 c!531661) b!3161297))

(assert (= (and b!3161295 (not c!531661)) b!3161294))

(assert (= (and b!3161297 res!1287102) b!3161301))

(assert (= (and b!3161294 c!531662) b!3161298))

(assert (= (and b!3161294 (not c!531662)) b!3161302))

(assert (= (and b!3161298 res!1287104) b!3161300))

(assert (= (and b!3161302 (not res!1287105)) b!3161296))

(assert (= (and b!3161296 res!1287101) b!3161299))

(assert (= (or b!3161298 b!3161296) bm!228941))

(assert (= (or b!3161300 b!3161299) bm!228940))

(assert (= (or b!3161301 bm!228940) bm!228942))

(declare-fun m!3425791 () Bool)

(assert (=> bm!228941 m!3425791))

(declare-fun m!3425793 () Bool)

(assert (=> bm!228942 m!3425793))

(declare-fun m!3425795 () Bool)

(assert (=> b!3161297 m!3425795))

(assert (=> bm!228924 d!868444))

(declare-fun b!3161303 () Bool)

(declare-fun e!1969495 () tuple2!34366)

(declare-fun e!1969494 () tuple2!34366)

(assert (=> b!3161303 (= e!1969495 e!1969494)))

(declare-fun c!531663 () Bool)

(assert (=> b!3161303 (= c!531663 ((_ is Union!9709) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(declare-fun b!3161304 () Bool)

(declare-fun lt!1062865 () tuple2!34366)

(declare-fun call!228948 () tuple2!34366)

(assert (=> b!3161304 (= lt!1062865 call!228948)))

(declare-fun e!1969491 () tuple2!34366)

(assert (=> b!3161304 (= e!1969491 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062865) (regTwo!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) EmptyLang!9709) (_2!20315 lt!1062865)))))

(declare-fun call!228949 () tuple2!34366)

(declare-fun bm!228943 () Bool)

(declare-fun c!531664 () Bool)

(assert (=> bm!228943 (= call!228949 (derivativeStepMem!19 (ite c!531663 (regOne!19931 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (ite c!531664 (reg!10038 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (regOne!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) a!2409 (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))

(declare-fun c!531668 () Bool)

(declare-fun b!3161305 () Bool)

(assert (=> b!3161305 (= c!531668 ((_ is ElementMatch!9709) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(declare-fun e!1969496 () tuple2!34366)

(assert (=> b!3161305 (= e!1969496 e!1969495)))

(declare-fun bm!228944 () Bool)

(declare-fun call!228951 () tuple2!34366)

(assert (=> bm!228944 (= call!228951 call!228949)))

(declare-fun bm!228945 () Bool)

(declare-fun call!228950 () tuple2!34366)

(assert (=> bm!228945 (= call!228948 call!228950)))

(declare-fun lt!1062871 () tuple2!34366)

(declare-fun b!3161306 () Bool)

(declare-fun e!1969493 () tuple2!34366)

(assert (=> b!3161306 (= e!1969493 (tuple2!34367 (Concat!15030 (_1!20315 lt!1062871) (Star!9709 (reg!10038 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) (_2!20315 lt!1062871)))))

(assert (=> b!3161306 (= lt!1062871 call!228951)))

(declare-fun lt!1062869 () Option!6873)

(declare-fun b!3161307 () Bool)

(declare-fun e!1969492 () tuple2!34366)

(assert (=> b!3161307 (= e!1969492 (tuple2!34367 (v!35046 lt!1062869) (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))

(declare-fun lt!1062867 () tuple2!34366)

(declare-fun c!531666 () Bool)

(declare-fun bm!228946 () Bool)

(declare-fun lt!1062868 () tuple2!34366)

(assert (=> bm!228946 (= call!228950 (derivativeStepMem!19 (ite c!531663 (regTwo!19931 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (ite c!531666 (regTwo!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (regOne!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) a!2409 (ite c!531663 (_2!20315 lt!1062868) (ite c!531666 (_2!20315 lt!1062867) (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))))

(declare-fun d!868446 () Bool)

(declare-fun lt!1062866 () tuple2!34366)

(assert (=> d!868446 (= (_1!20315 lt!1062866) (derivativeStep!2880 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409))))

(assert (=> d!868446 (= lt!1062866 e!1969492)))

(declare-fun c!531665 () Bool)

(assert (=> d!868446 (= c!531665 ((_ is Some!6872) lt!1062869))))

(assert (=> d!868446 (= lt!1062869 (get!11196 (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347)) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409))))

(assert (=> d!868446 (validRegex!4439 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))

(assert (=> d!868446 (= (derivativeStepMem!19 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))) lt!1062866)))

(declare-fun b!3161308 () Bool)

(assert (=> b!3161308 (= e!1969495 (tuple2!34367 (ite (= a!2409 (c!531630 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) EmptyExpr!9709 EmptyLang!9709) (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))

(declare-fun b!3161309 () Bool)

(declare-fun lt!1062870 () tuple2!34366)

(assert (=> b!3161309 (= lt!1062870 call!228948)))

(assert (=> b!3161309 (= lt!1062867 call!228951)))

(assert (=> b!3161309 (= e!1969491 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062867) (regTwo!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) (_1!20315 lt!1062870)) (_2!20315 lt!1062870)))))

(declare-fun lt!1062864 () tuple2!34366)

(declare-fun b!3161310 () Bool)

(assert (=> b!3161310 (= e!1969492 (tuple2!34367 (_1!20315 lt!1062864) (_2!20316 (update!258 (_2!20315 lt!1062864) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 (_1!20315 lt!1062864)))))))

(declare-fun c!531667 () Bool)

(assert (=> b!3161310 (= c!531667 (or ((_ is EmptyExpr!9709) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) ((_ is EmptyLang!9709) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))))

(assert (=> b!3161310 (= lt!1062864 e!1969496)))

(declare-fun b!3161311 () Bool)

(assert (=> b!3161311 (= e!1969496 (tuple2!34367 EmptyLang!9709 (ite c!531655 (_2!20315 lt!1062859) (ite c!531658 (_2!20315 lt!1062858) cache!347))))))

(declare-fun b!3161312 () Bool)

(declare-fun lt!1062872 () tuple2!34366)

(assert (=> b!3161312 (= lt!1062872 call!228950)))

(assert (=> b!3161312 (= lt!1062868 call!228949)))

(assert (=> b!3161312 (= e!1969494 (tuple2!34367 (Union!9709 (_1!20315 lt!1062868) (_1!20315 lt!1062872)) (_2!20315 lt!1062872)))))

(declare-fun b!3161313 () Bool)

(assert (=> b!3161313 (= e!1969493 e!1969491)))

(assert (=> b!3161313 (= c!531666 (nullable!3330 (regOne!19930 (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))))

(declare-fun b!3161314 () Bool)

(assert (=> b!3161314 (= c!531664 ((_ is Star!9709) (ite c!531655 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531658 (regTwo!19930 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(assert (=> b!3161314 (= e!1969494 e!1969493)))

(assert (= (and d!868446 c!531665) b!3161307))

(assert (= (and d!868446 (not c!531665)) b!3161310))

(assert (= (and b!3161310 c!531667) b!3161311))

(assert (= (and b!3161310 (not c!531667)) b!3161305))

(assert (= (and b!3161305 c!531668) b!3161308))

(assert (= (and b!3161305 (not c!531668)) b!3161303))

(assert (= (and b!3161303 c!531663) b!3161312))

(assert (= (and b!3161303 (not c!531663)) b!3161314))

(assert (= (and b!3161314 c!531664) b!3161306))

(assert (= (and b!3161314 (not c!531664)) b!3161313))

(assert (= (and b!3161313 c!531666) b!3161309))

(assert (= (and b!3161313 (not c!531666)) b!3161304))

(assert (= (or b!3161309 b!3161304) bm!228945))

(assert (= (or b!3161306 b!3161309) bm!228944))

(assert (= (or b!3161312 bm!228944) bm!228943))

(assert (= (or b!3161312 bm!228945) bm!228946))

(declare-fun m!3425797 () Bool)

(assert (=> bm!228943 m!3425797))

(declare-fun m!3425799 () Bool)

(assert (=> b!3161310 m!3425799))

(declare-fun m!3425801 () Bool)

(assert (=> bm!228946 m!3425801))

(declare-fun m!3425803 () Bool)

(assert (=> b!3161313 m!3425803))

(declare-fun m!3425805 () Bool)

(assert (=> d!868446 m!3425805))

(declare-fun m!3425807 () Bool)

(assert (=> d!868446 m!3425807))

(declare-fun m!3425809 () Bool)

(assert (=> d!868446 m!3425809))

(assert (=> bm!228939 d!868446))

(declare-fun d!868448 () Bool)

(declare-fun res!1287112 () Bool)

(declare-fun e!1969501 () Bool)

(assert (=> d!868448 (=> (not res!1287112) (not e!1969501))))

(declare-fun valid!3218 (MutableMap!4036) Bool)

(assert (=> d!868448 (= res!1287112 (valid!3218 (cache!4174 cache!347)))))

(assert (=> d!868448 (= (validCacheMap!45 (cache!4174 cache!347)) e!1969501)))

(declare-fun b!3161321 () Bool)

(declare-fun res!1287113 () Bool)

(assert (=> b!3161321 (=> (not res!1287113) (not e!1969501))))

(declare-fun invariantList!475 (List!35537) Bool)

(declare-datatypes ((ListMap!1291 0))(
  ( (ListMap!1292 (toList!2045 List!35537)) )
))
(declare-fun map!7875 (MutableMap!4036) ListMap!1291)

(assert (=> b!3161321 (= res!1287113 (invariantList!475 (toList!2045 (map!7875 (cache!4174 cache!347)))))))

(declare-fun b!3161322 () Bool)

(declare-fun lambda!115750 () Int)

(declare-fun forall!7140 (List!35537 Int) Bool)

(assert (=> b!3161322 (= e!1969501 (forall!7140 (toList!2045 (map!7875 (cache!4174 cache!347))) lambda!115750))))

(assert (= (and d!868448 res!1287112) b!3161321))

(assert (= (and b!3161321 res!1287113) b!3161322))

(declare-fun m!3425812 () Bool)

(assert (=> d!868448 m!3425812))

(declare-fun m!3425814 () Bool)

(assert (=> b!3161321 m!3425814))

(declare-fun m!3425816 () Bool)

(assert (=> b!3161321 m!3425816))

(assert (=> b!3161322 m!3425814))

(declare-fun m!3425818 () Bool)

(assert (=> b!3161322 m!3425818))

(assert (=> b!3161193 d!868448))

(declare-fun bm!228947 () Bool)

(declare-fun call!228954 () Bool)

(declare-fun call!228953 () Bool)

(assert (=> bm!228947 (= call!228954 call!228953)))

(declare-fun b!3161323 () Bool)

(declare-fun e!1969504 () Bool)

(declare-fun e!1969506 () Bool)

(assert (=> b!3161323 (= e!1969504 e!1969506)))

(declare-fun c!531670 () Bool)

(assert (=> b!3161323 (= c!531670 ((_ is Union!9709) (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))

(declare-fun b!3161324 () Bool)

(declare-fun e!1969505 () Bool)

(assert (=> b!3161324 (= e!1969505 e!1969504)))

(declare-fun c!531669 () Bool)

(assert (=> b!3161324 (= c!531669 ((_ is Star!9709) (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))

(declare-fun b!3161325 () Bool)

(declare-fun e!1969508 () Bool)

(declare-fun e!1969502 () Bool)

(assert (=> b!3161325 (= e!1969508 e!1969502)))

(declare-fun res!1287114 () Bool)

(assert (=> b!3161325 (=> (not res!1287114) (not e!1969502))))

(declare-fun call!228952 () Bool)

(assert (=> b!3161325 (= res!1287114 call!228952)))

(declare-fun bm!228948 () Bool)

(assert (=> bm!228948 (= call!228952 (validRegex!4439 (ite c!531670 (regOne!19931 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))) (regOne!19930 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))))

(declare-fun b!3161327 () Bool)

(declare-fun res!1287117 () Bool)

(declare-fun e!1969503 () Bool)

(assert (=> b!3161327 (=> (not res!1287117) (not e!1969503))))

(assert (=> b!3161327 (= res!1287117 call!228952)))

(assert (=> b!3161327 (= e!1969506 e!1969503)))

(declare-fun b!3161328 () Bool)

(assert (=> b!3161328 (= e!1969502 call!228954)))

(declare-fun b!3161329 () Bool)

(assert (=> b!3161329 (= e!1969503 call!228954)))

(declare-fun bm!228949 () Bool)

(assert (=> bm!228949 (= call!228953 (validRegex!4439 (ite c!531669 (reg!10038 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))) (ite c!531670 (regTwo!19931 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))) (regTwo!19930 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156))))))))))

(declare-fun d!868450 () Bool)

(declare-fun res!1287116 () Bool)

(assert (=> d!868450 (=> res!1287116 e!1969505)))

(assert (=> d!868450 (= res!1287116 ((_ is ElementMatch!9709) (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))

(assert (=> d!868450 (= (validRegex!4439 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))) e!1969505)))

(declare-fun b!3161326 () Bool)

(declare-fun e!1969507 () Bool)

(assert (=> b!3161326 (= e!1969504 e!1969507)))

(declare-fun res!1287115 () Bool)

(assert (=> b!3161326 (= res!1287115 (not (nullable!3330 (reg!10038 (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156)))))))))

(assert (=> b!3161326 (=> (not res!1287115) (not e!1969507))))

(declare-fun b!3161330 () Bool)

(assert (=> b!3161330 (= e!1969507 call!228953)))

(declare-fun b!3161331 () Bool)

(declare-fun res!1287118 () Bool)

(assert (=> b!3161331 (=> res!1287118 e!1969508)))

(assert (=> b!3161331 (= res!1287118 (not ((_ is Concat!15030) (ite c!531642 (regOne!19931 (regTwo!19931 r!13156)) (regOne!19930 (regTwo!19931 r!13156))))))))

(assert (=> b!3161331 (= e!1969506 e!1969508)))

(assert (= (and d!868450 (not res!1287116)) b!3161324))

(assert (= (and b!3161324 c!531669) b!3161326))

(assert (= (and b!3161324 (not c!531669)) b!3161323))

(assert (= (and b!3161326 res!1287115) b!3161330))

(assert (= (and b!3161323 c!531670) b!3161327))

(assert (= (and b!3161323 (not c!531670)) b!3161331))

(assert (= (and b!3161327 res!1287117) b!3161329))

(assert (= (and b!3161331 (not res!1287118)) b!3161325))

(assert (= (and b!3161325 res!1287114) b!3161328))

(assert (= (or b!3161327 b!3161325) bm!228948))

(assert (= (or b!3161329 b!3161328) bm!228947))

(assert (= (or b!3161330 bm!228947) bm!228949))

(declare-fun m!3425820 () Bool)

(assert (=> bm!228948 m!3425820))

(declare-fun m!3425822 () Bool)

(assert (=> bm!228949 m!3425822))

(declare-fun m!3425824 () Bool)

(assert (=> b!3161326 m!3425824))

(assert (=> bm!228926 d!868450))

(declare-fun bs!539419 () Bool)

(declare-fun b!3161333 () Bool)

(assert (= bs!539419 (and b!3161333 b!3161322)))

(declare-fun lambda!115751 () Int)

(assert (=> bs!539419 (= lambda!115751 lambda!115750)))

(declare-fun d!868452 () Bool)

(declare-fun res!1287119 () Bool)

(declare-fun e!1969509 () Bool)

(assert (=> d!868452 (=> (not res!1287119) (not e!1969509))))

(assert (=> d!868452 (= res!1287119 (valid!3218 (cache!4174 (_2!20315 lt!1062829))))))

(assert (=> d!868452 (= (validCacheMap!45 (cache!4174 (_2!20315 lt!1062829))) e!1969509)))

(declare-fun b!3161332 () Bool)

(declare-fun res!1287120 () Bool)

(assert (=> b!3161332 (=> (not res!1287120) (not e!1969509))))

(assert (=> b!3161332 (= res!1287120 (invariantList!475 (toList!2045 (map!7875 (cache!4174 (_2!20315 lt!1062829))))))))

(assert (=> b!3161333 (= e!1969509 (forall!7140 (toList!2045 (map!7875 (cache!4174 (_2!20315 lt!1062829)))) lambda!115751))))

(assert (= (and d!868452 res!1287119) b!3161332))

(assert (= (and b!3161332 res!1287120) b!3161333))

(declare-fun m!3425826 () Bool)

(assert (=> d!868452 m!3425826))

(declare-fun m!3425828 () Bool)

(assert (=> b!3161332 m!3425828))

(declare-fun m!3425830 () Bool)

(assert (=> b!3161332 m!3425830))

(assert (=> b!3161333 m!3425828))

(declare-fun m!3425832 () Bool)

(assert (=> b!3161333 m!3425832))

(assert (=> d!868432 d!868452))

(declare-fun d!868454 () Bool)

(declare-fun nullableFct!943 (Regex!9709) Bool)

(assert (=> d!868454 (= (nullable!3330 (reg!10038 (regTwo!19931 r!13156))) (nullableFct!943 (reg!10038 (regTwo!19931 r!13156))))))

(declare-fun bs!539420 () Bool)

(assert (= bs!539420 d!868454))

(declare-fun m!3425834 () Bool)

(assert (=> bs!539420 m!3425834))

(assert (=> b!3161206 d!868454))

(declare-fun d!868456 () Bool)

(assert (=> d!868456 (= (get!11197 lt!1062836) (v!35046 lt!1062836))))

(assert (=> b!3161202 d!868456))

(declare-fun b!3161354 () Bool)

(declare-fun e!1969521 () Regex!9709)

(declare-fun e!1969522 () Regex!9709)

(assert (=> b!3161354 (= e!1969521 e!1969522)))

(declare-fun c!531683 () Bool)

(assert (=> b!3161354 (= c!531683 ((_ is Star!9709) r!13156))))

(declare-fun call!228963 () Regex!9709)

(declare-fun bm!228958 () Bool)

(declare-fun c!531684 () Bool)

(assert (=> bm!228958 (= call!228963 (derivativeStep!2880 (ite c!531684 (regTwo!19931 r!13156) (ite c!531683 (reg!10038 r!13156) (regOne!19930 r!13156))) a!2409))))

(declare-fun b!3161355 () Bool)

(declare-fun e!1969523 () Regex!9709)

(declare-fun e!1969520 () Regex!9709)

(assert (=> b!3161355 (= e!1969523 e!1969520)))

(declare-fun c!531681 () Bool)

(assert (=> b!3161355 (= c!531681 ((_ is ElementMatch!9709) r!13156))))

(declare-fun bm!228959 () Bool)

(declare-fun call!228966 () Regex!9709)

(assert (=> bm!228959 (= call!228966 call!228963)))

(declare-fun b!3161356 () Bool)

(declare-fun c!531685 () Bool)

(assert (=> b!3161356 (= c!531685 (nullable!3330 (regOne!19930 r!13156)))))

(declare-fun e!1969524 () Regex!9709)

(assert (=> b!3161356 (= e!1969522 e!1969524)))

(declare-fun call!228964 () Regex!9709)

(declare-fun b!3161358 () Bool)

(declare-fun call!228965 () Regex!9709)

(assert (=> b!3161358 (= e!1969524 (Union!9709 (Concat!15030 call!228964 (regTwo!19930 r!13156)) call!228965))))

(declare-fun b!3161359 () Bool)

(assert (=> b!3161359 (= e!1969520 (ite (= a!2409 (c!531630 r!13156)) EmptyExpr!9709 EmptyLang!9709))))

(declare-fun bm!228960 () Bool)

(assert (=> bm!228960 (= call!228965 (derivativeStep!2880 (ite c!531684 (regOne!19931 r!13156) (regTwo!19930 r!13156)) a!2409))))

(declare-fun b!3161360 () Bool)

(assert (=> b!3161360 (= e!1969523 EmptyLang!9709)))

(declare-fun b!3161361 () Bool)

(assert (=> b!3161361 (= e!1969522 (Concat!15030 call!228966 r!13156))))

(declare-fun b!3161362 () Bool)

(assert (=> b!3161362 (= c!531684 ((_ is Union!9709) r!13156))))

(assert (=> b!3161362 (= e!1969520 e!1969521)))

(declare-fun b!3161363 () Bool)

(assert (=> b!3161363 (= e!1969521 (Union!9709 call!228965 call!228963))))

(declare-fun bm!228961 () Bool)

(assert (=> bm!228961 (= call!228964 call!228966)))

(declare-fun d!868458 () Bool)

(declare-fun lt!1062875 () Regex!9709)

(assert (=> d!868458 (validRegex!4439 lt!1062875)))

(assert (=> d!868458 (= lt!1062875 e!1969523)))

(declare-fun c!531682 () Bool)

(assert (=> d!868458 (= c!531682 (or ((_ is EmptyExpr!9709) r!13156) ((_ is EmptyLang!9709) r!13156)))))

(assert (=> d!868458 (validRegex!4439 r!13156)))

(assert (=> d!868458 (= (derivativeStep!2880 r!13156 a!2409) lt!1062875)))

(declare-fun b!3161357 () Bool)

(assert (=> b!3161357 (= e!1969524 (Union!9709 (Concat!15030 call!228964 (regTwo!19930 r!13156)) EmptyLang!9709))))

(assert (= (and d!868458 c!531682) b!3161360))

(assert (= (and d!868458 (not c!531682)) b!3161355))

(assert (= (and b!3161355 c!531681) b!3161359))

(assert (= (and b!3161355 (not c!531681)) b!3161362))

(assert (= (and b!3161362 c!531684) b!3161363))

(assert (= (and b!3161362 (not c!531684)) b!3161354))

(assert (= (and b!3161354 c!531683) b!3161361))

(assert (= (and b!3161354 (not c!531683)) b!3161356))

(assert (= (and b!3161356 c!531685) b!3161358))

(assert (= (and b!3161356 (not c!531685)) b!3161357))

(assert (= (or b!3161358 b!3161357) bm!228961))

(assert (= (or b!3161361 bm!228961) bm!228959))

(assert (= (or b!3161363 bm!228959) bm!228958))

(assert (= (or b!3161363 b!3161358) bm!228960))

(declare-fun m!3425836 () Bool)

(assert (=> bm!228958 m!3425836))

(declare-fun m!3425838 () Bool)

(assert (=> b!3161356 m!3425838))

(declare-fun m!3425840 () Bool)

(assert (=> bm!228960 m!3425840))

(declare-fun m!3425842 () Bool)

(assert (=> d!868458 m!3425842))

(assert (=> d!868458 m!3425731))

(assert (=> b!3161202 d!868458))

(declare-fun d!868460 () Bool)

(assert (=> d!868460 (= (isEmpty!19747 lt!1062836) (not ((_ is Some!6872) lt!1062836)))))

(assert (=> d!868430 d!868460))

(declare-fun e!1969543 () Unit!49756)

(declare-fun lt!1062927 () (_ BitVec 64))

(declare-fun b!3161386 () Bool)

(declare-fun lambda!115754 () Int)

(declare-datatypes ((tuple2!34370 0))(
  ( (tuple2!34371 (_1!20317 (_ BitVec 64)) (_2!20317 List!35537)) )
))
(declare-datatypes ((List!35538 0))(
  ( (Nil!35414) (Cons!35414 (h!40834 tuple2!34370) (t!234605 List!35538)) )
))
(declare-fun forallContained!1068 (List!35538 Int tuple2!34370) Unit!49756)

(declare-datatypes ((ListLongMap!711 0))(
  ( (ListLongMap!712 (toList!2046 List!35538)) )
))
(declare-fun map!7876 (MutLongMap!4130) ListLongMap!711)

(declare-fun apply!7930 (MutLongMap!4130 (_ BitVec 64)) List!35537)

(assert (=> b!3161386 (= e!1969543 (forallContained!1068 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))) lambda!115754 (tuple2!34371 lt!1062927 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927))))))

(declare-fun c!531694 () Bool)

(declare-fun contains!6143 (List!35538 tuple2!34370) Bool)

(assert (=> b!3161386 (= c!531694 (not (contains!6143 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))) (tuple2!34371 lt!1062927 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927)))))))

(declare-fun lt!1062935 () Unit!49756)

(declare-fun e!1969542 () Unit!49756)

(assert (=> b!3161386 (= lt!1062935 e!1969542)))

(declare-fun b!3161387 () Bool)

(assert (=> b!3161387 false))

(declare-fun lt!1062923 () Unit!49756)

(declare-fun lt!1062921 () Unit!49756)

(assert (=> b!3161387 (= lt!1062923 lt!1062921)))

(declare-fun lt!1062916 () ListLongMap!711)

(declare-fun contains!6144 (ListMap!1291 tuple2!34362) Bool)

(declare-fun extractMap!228 (List!35538) ListMap!1291)

(assert (=> b!3161387 (contains!6144 (extractMap!228 (toList!2046 lt!1062916)) (tuple2!34363 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!90 (ListLongMap!711 tuple2!34362 Hashable!4046) Unit!49756)

(assert (=> b!3161387 (= lt!1062921 (lemmaInLongMapThenInGenericMap!90 lt!1062916 (tuple2!34363 r!13156 a!2409) (hashF!6078 (cache!4174 cache!347))))))

(declare-fun call!228980 () ListLongMap!711)

(assert (=> b!3161387 (= lt!1062916 call!228980)))

(declare-fun e!1969539 () Unit!49756)

(declare-fun Unit!49758 () Unit!49756)

(assert (=> b!3161387 (= e!1969539 Unit!49758)))

(declare-fun b!3161388 () Bool)

(declare-fun e!1969544 () Unit!49756)

(assert (=> b!3161388 (= e!1969544 e!1969539)))

(declare-fun res!1287128 () Bool)

(declare-fun call!228981 () Bool)

(assert (=> b!3161388 (= res!1287128 call!228981)))

(declare-fun e!1969540 () Bool)

(assert (=> b!3161388 (=> (not res!1287128) (not e!1969540))))

(declare-fun c!531696 () Bool)

(assert (=> b!3161388 (= c!531696 e!1969540)))

(declare-fun b!3161389 () Bool)

(assert (=> b!3161389 false))

(declare-fun lt!1062917 () Unit!49756)

(declare-fun lt!1062924 () Unit!49756)

(assert (=> b!3161389 (= lt!1062917 lt!1062924)))

(declare-fun lt!1062928 () List!35538)

(declare-fun lt!1062931 () List!35537)

(assert (=> b!3161389 (contains!6143 lt!1062928 (tuple2!34371 lt!1062927 lt!1062931))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!96 (List!35538 (_ BitVec 64) List!35537) Unit!49756)

(assert (=> b!3161389 (= lt!1062924 (lemmaGetValueByKeyImpliesContainsTuple!96 lt!1062928 lt!1062927 lt!1062931))))

(assert (=> b!3161389 (= lt!1062931 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927))))

(assert (=> b!3161389 (= lt!1062928 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))

(declare-fun lt!1062932 () Unit!49756)

(declare-fun lt!1062920 () Unit!49756)

(assert (=> b!3161389 (= lt!1062932 lt!1062920)))

(declare-fun lt!1062933 () List!35538)

(declare-datatypes ((Option!6874 0))(
  ( (None!6873) (Some!6873 (v!35047 List!35537)) )
))
(declare-fun isDefined!5414 (Option!6874) Bool)

(declare-fun getValueByKey!167 (List!35538 (_ BitVec 64)) Option!6874)

(assert (=> b!3161389 (isDefined!5414 (getValueByKey!167 lt!1062933 lt!1062927))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!124 (List!35538 (_ BitVec 64)) Unit!49756)

(assert (=> b!3161389 (= lt!1062920 (lemmaContainsKeyImpliesGetValueByKeyDefined!124 lt!1062933 lt!1062927))))

(assert (=> b!3161389 (= lt!1062933 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))

(declare-fun lt!1062925 () Unit!49756)

(declare-fun lt!1062918 () Unit!49756)

(assert (=> b!3161389 (= lt!1062925 lt!1062918)))

(declare-fun lt!1062926 () List!35538)

(declare-fun containsKey!188 (List!35538 (_ BitVec 64)) Bool)

(assert (=> b!3161389 (containsKey!188 lt!1062926 lt!1062927)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!91 (List!35538 (_ BitVec 64)) Unit!49756)

(assert (=> b!3161389 (= lt!1062918 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!91 lt!1062926 lt!1062927))))

(assert (=> b!3161389 (= lt!1062926 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))

(declare-fun Unit!49759 () Unit!49756)

(assert (=> b!3161389 (= e!1969542 Unit!49759)))

(declare-fun b!3161390 () Bool)

(declare-fun e!1969541 () Bool)

(declare-datatypes ((Option!6875 0))(
  ( (None!6874) (Some!6874 (v!35048 tuple2!34364)) )
))
(declare-fun isDefined!5415 (Option!6875) Bool)

(declare-fun getPair!90 (List!35537 tuple2!34362) Option!6875)

(assert (=> b!3161390 (= e!1969541 (isDefined!5415 (getPair!90 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927) (tuple2!34363 r!13156 a!2409))))))

(declare-fun b!3161391 () Bool)

(declare-fun lt!1062922 () Unit!49756)

(assert (=> b!3161391 (= e!1969544 lt!1062922)))

(declare-fun lt!1062930 () ListLongMap!711)

(assert (=> b!3161391 (= lt!1062930 call!228980)))

(declare-fun lemmaInGenericMapThenInLongMap!90 (ListLongMap!711 tuple2!34362 Hashable!4046) Unit!49756)

(assert (=> b!3161391 (= lt!1062922 (lemmaInGenericMapThenInLongMap!90 lt!1062930 (tuple2!34363 r!13156 a!2409) (hashF!6078 (cache!4174 cache!347))))))

(declare-fun res!1287129 () Bool)

(assert (=> b!3161391 (= res!1287129 call!228981)))

(declare-fun e!1969545 () Bool)

(assert (=> b!3161391 (=> (not res!1287129) (not e!1969545))))

(assert (=> b!3161391 e!1969545))

(declare-fun bm!228974 () Bool)

(declare-fun call!228984 () Bool)

(declare-fun call!228982 () Option!6875)

(assert (=> bm!228974 (= call!228984 (isDefined!5415 call!228982))))

(declare-fun call!228983 () List!35537)

(declare-fun bm!228975 () Bool)

(assert (=> bm!228975 (= call!228982 (getPair!90 call!228983 (tuple2!34363 r!13156 a!2409)))))

(declare-fun bm!228976 () Bool)

(declare-fun call!228979 () (_ BitVec 64))

(declare-fun c!531695 () Bool)

(declare-fun contains!6145 (ListLongMap!711 (_ BitVec 64)) Bool)

(assert (=> bm!228976 (= call!228981 (contains!6145 (ite c!531695 lt!1062930 call!228980) call!228979))))

(declare-fun b!3161392 () Bool)

(assert (=> b!3161392 (= e!1969540 call!228984)))

(declare-fun b!3161393 () Bool)

(declare-fun Unit!49760 () Unit!49756)

(assert (=> b!3161393 (= e!1969539 Unit!49760)))

(declare-fun b!3161394 () Bool)

(declare-fun Unit!49761 () Unit!49756)

(assert (=> b!3161394 (= e!1969542 Unit!49761)))

(declare-fun bm!228978 () Bool)

(declare-fun apply!7931 (ListLongMap!711 (_ BitVec 64)) List!35537)

(assert (=> bm!228978 (= call!228983 (apply!7931 (ite c!531695 lt!1062930 call!228980) call!228979))))

(declare-fun b!3161395 () Bool)

(declare-fun Unit!49762 () Unit!49756)

(assert (=> b!3161395 (= e!1969543 Unit!49762)))

(declare-fun bm!228977 () Bool)

(assert (=> bm!228977 (= call!228980 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))

(declare-fun lt!1062934 () Bool)

(declare-fun d!868462 () Bool)

(assert (=> d!868462 (= lt!1062934 (contains!6144 (map!7875 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(assert (=> d!868462 (= lt!1062934 e!1969541)))

(declare-fun res!1287127 () Bool)

(assert (=> d!868462 (=> (not res!1287127) (not e!1969541))))

(declare-fun contains!6146 (MutLongMap!4130 (_ BitVec 64)) Bool)

(assert (=> d!868462 (= res!1287127 (contains!6146 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927))))

(declare-fun lt!1062929 () Unit!49756)

(assert (=> d!868462 (= lt!1062929 e!1969544)))

(assert (=> d!868462 (= c!531695 (contains!6144 (extractMap!228 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347)))))) (tuple2!34363 r!13156 a!2409)))))

(declare-fun lt!1062919 () Unit!49756)

(assert (=> d!868462 (= lt!1062919 e!1969543)))

(declare-fun c!531697 () Bool)

(assert (=> d!868462 (= c!531697 (contains!6146 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1062927))))

(declare-fun hash!799 (Hashable!4046 tuple2!34362) (_ BitVec 64))

(assert (=> d!868462 (= lt!1062927 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(assert (=> d!868462 (valid!3218 (cache!4174 cache!347))))

(assert (=> d!868462 (= (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409)) lt!1062934)))

(declare-fun b!3161396 () Bool)

(assert (=> b!3161396 (= e!1969545 call!228984)))

(declare-fun bm!228979 () Bool)

(assert (=> bm!228979 (= call!228979 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(assert (= (and d!868462 c!531697) b!3161386))

(assert (= (and d!868462 (not c!531697)) b!3161395))

(assert (= (and b!3161386 c!531694) b!3161389))

(assert (= (and b!3161386 (not c!531694)) b!3161394))

(assert (= (and d!868462 c!531695) b!3161391))

(assert (= (and d!868462 (not c!531695)) b!3161388))

(assert (= (and b!3161391 res!1287129) b!3161396))

(assert (= (and b!3161388 res!1287128) b!3161392))

(assert (= (and b!3161388 c!531696) b!3161387))

(assert (= (and b!3161388 (not c!531696)) b!3161393))

(assert (= (or b!3161391 b!3161396 b!3161388 b!3161392) bm!228979))

(assert (= (or b!3161391 b!3161388 b!3161392 b!3161387) bm!228977))

(assert (= (or b!3161396 b!3161392) bm!228978))

(assert (= (or b!3161391 b!3161388) bm!228976))

(assert (= (or b!3161396 b!3161392) bm!228975))

(assert (= (or b!3161396 b!3161392) bm!228974))

(assert (= (and d!868462 res!1287127) b!3161390))

(declare-fun m!3425844 () Bool)

(assert (=> bm!228978 m!3425844))

(declare-fun m!3425846 () Bool)

(assert (=> bm!228974 m!3425846))

(declare-fun m!3425848 () Bool)

(assert (=> b!3161386 m!3425848))

(declare-fun m!3425850 () Bool)

(assert (=> b!3161386 m!3425850))

(declare-fun m!3425852 () Bool)

(assert (=> b!3161386 m!3425852))

(declare-fun m!3425854 () Bool)

(assert (=> b!3161386 m!3425854))

(declare-fun m!3425856 () Bool)

(assert (=> bm!228979 m!3425856))

(declare-fun m!3425858 () Bool)

(assert (=> b!3161389 m!3425858))

(assert (=> b!3161389 m!3425858))

(declare-fun m!3425860 () Bool)

(assert (=> b!3161389 m!3425860))

(declare-fun m!3425862 () Bool)

(assert (=> b!3161389 m!3425862))

(assert (=> b!3161389 m!3425848))

(declare-fun m!3425864 () Bool)

(assert (=> b!3161389 m!3425864))

(assert (=> b!3161389 m!3425850))

(declare-fun m!3425866 () Bool)

(assert (=> b!3161389 m!3425866))

(declare-fun m!3425868 () Bool)

(assert (=> b!3161389 m!3425868))

(declare-fun m!3425870 () Bool)

(assert (=> b!3161389 m!3425870))

(declare-fun m!3425872 () Bool)

(assert (=> bm!228975 m!3425872))

(declare-fun m!3425874 () Bool)

(assert (=> b!3161387 m!3425874))

(assert (=> b!3161387 m!3425874))

(declare-fun m!3425876 () Bool)

(assert (=> b!3161387 m!3425876))

(declare-fun m!3425878 () Bool)

(assert (=> b!3161387 m!3425878))

(assert (=> d!868462 m!3425814))

(declare-fun m!3425880 () Bool)

(assert (=> d!868462 m!3425880))

(declare-fun m!3425882 () Bool)

(assert (=> d!868462 m!3425882))

(assert (=> d!868462 m!3425812))

(declare-fun m!3425884 () Bool)

(assert (=> d!868462 m!3425884))

(assert (=> d!868462 m!3425884))

(declare-fun m!3425886 () Bool)

(assert (=> d!868462 m!3425886))

(assert (=> d!868462 m!3425814))

(assert (=> d!868462 m!3425856))

(assert (=> d!868462 m!3425848))

(assert (=> b!3161390 m!3425850))

(assert (=> b!3161390 m!3425850))

(declare-fun m!3425888 () Bool)

(assert (=> b!3161390 m!3425888))

(assert (=> b!3161390 m!3425888))

(declare-fun m!3425890 () Bool)

(assert (=> b!3161390 m!3425890))

(declare-fun m!3425892 () Bool)

(assert (=> b!3161391 m!3425892))

(assert (=> bm!228977 m!3425848))

(declare-fun m!3425894 () Bool)

(assert (=> bm!228976 m!3425894))

(assert (=> d!868430 d!868462))

(assert (=> d!868430 d!868426))

(declare-fun bm!228980 () Bool)

(declare-fun call!228987 () Bool)

(declare-fun call!228986 () Bool)

(assert (=> bm!228980 (= call!228987 call!228986)))

(declare-fun b!3161397 () Bool)

(declare-fun e!1969548 () Bool)

(declare-fun e!1969550 () Bool)

(assert (=> b!3161397 (= e!1969548 e!1969550)))

(declare-fun c!531699 () Bool)

(assert (=> b!3161397 (= c!531699 ((_ is Union!9709) (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))

(declare-fun b!3161398 () Bool)

(declare-fun e!1969549 () Bool)

(assert (=> b!3161398 (= e!1969549 e!1969548)))

(declare-fun c!531698 () Bool)

(assert (=> b!3161398 (= c!531698 ((_ is Star!9709) (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))

(declare-fun b!3161399 () Bool)

(declare-fun e!1969552 () Bool)

(declare-fun e!1969546 () Bool)

(assert (=> b!3161399 (= e!1969552 e!1969546)))

(declare-fun res!1287130 () Bool)

(assert (=> b!3161399 (=> (not res!1287130) (not e!1969546))))

(declare-fun call!228985 () Bool)

(assert (=> b!3161399 (= res!1287130 call!228985)))

(declare-fun bm!228981 () Bool)

(assert (=> bm!228981 (= call!228985 (validRegex!4439 (ite c!531699 (regOne!19931 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))) (regOne!19930 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))))

(declare-fun b!3161401 () Bool)

(declare-fun res!1287133 () Bool)

(declare-fun e!1969547 () Bool)

(assert (=> b!3161401 (=> (not res!1287133) (not e!1969547))))

(assert (=> b!3161401 (= res!1287133 call!228985)))

(assert (=> b!3161401 (= e!1969550 e!1969547)))

(declare-fun b!3161402 () Bool)

(assert (=> b!3161402 (= e!1969546 call!228987)))

(declare-fun b!3161403 () Bool)

(assert (=> b!3161403 (= e!1969547 call!228987)))

(declare-fun bm!228982 () Bool)

(assert (=> bm!228982 (= call!228986 (validRegex!4439 (ite c!531698 (reg!10038 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))) (ite c!531699 (regTwo!19931 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))) (regTwo!19930 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156)))))))))

(declare-fun d!868464 () Bool)

(declare-fun res!1287132 () Bool)

(assert (=> d!868464 (=> res!1287132 e!1969549)))

(assert (=> d!868464 (= res!1287132 ((_ is ElementMatch!9709) (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))

(assert (=> d!868464 (= (validRegex!4439 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))) e!1969549)))

(declare-fun b!3161400 () Bool)

(declare-fun e!1969551 () Bool)

(assert (=> b!3161400 (= e!1969548 e!1969551)))

(declare-fun res!1287131 () Bool)

(assert (=> b!3161400 (= res!1287131 (not (nullable!3330 (reg!10038 (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156))))))))

(assert (=> b!3161400 (=> (not res!1287131) (not e!1969551))))

(declare-fun b!3161404 () Bool)

(assert (=> b!3161404 (= e!1969551 call!228986)))

(declare-fun b!3161405 () Bool)

(declare-fun res!1287134 () Bool)

(assert (=> b!3161405 (=> res!1287134 e!1969552)))

(assert (=> b!3161405 (= res!1287134 (not ((_ is Concat!15030) (ite c!531636 (regOne!19931 r!13156) (regOne!19930 r!13156)))))))

(assert (=> b!3161405 (= e!1969550 e!1969552)))

(assert (= (and d!868464 (not res!1287132)) b!3161398))

(assert (= (and b!3161398 c!531698) b!3161400))

(assert (= (and b!3161398 (not c!531698)) b!3161397))

(assert (= (and b!3161400 res!1287131) b!3161404))

(assert (= (and b!3161397 c!531699) b!3161401))

(assert (= (and b!3161397 (not c!531699)) b!3161405))

(assert (= (and b!3161401 res!1287133) b!3161403))

(assert (= (and b!3161405 (not res!1287134)) b!3161399))

(assert (= (and b!3161399 res!1287130) b!3161402))

(assert (= (or b!3161401 b!3161399) bm!228981))

(assert (= (or b!3161403 b!3161402) bm!228980))

(assert (= (or b!3161404 bm!228980) bm!228982))

(declare-fun m!3425896 () Bool)

(assert (=> bm!228981 m!3425896))

(declare-fun m!3425898 () Bool)

(assert (=> bm!228982 m!3425898))

(declare-fun m!3425900 () Bool)

(assert (=> b!3161400 m!3425900))

(assert (=> bm!228923 d!868464))

(declare-fun b!3161406 () Bool)

(declare-fun e!1969557 () tuple2!34366)

(declare-fun e!1969556 () tuple2!34366)

(assert (=> b!3161406 (= e!1969557 e!1969556)))

(declare-fun c!531700 () Bool)

(assert (=> b!3161406 (= c!531700 ((_ is Union!9709) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(declare-fun b!3161407 () Bool)

(declare-fun lt!1062937 () tuple2!34366)

(declare-fun call!228988 () tuple2!34366)

(assert (=> b!3161407 (= lt!1062937 call!228988)))

(declare-fun e!1969553 () tuple2!34366)

(assert (=> b!3161407 (= e!1969553 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062937) (regTwo!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) EmptyLang!9709) (_2!20315 lt!1062937)))))

(declare-fun call!228989 () tuple2!34366)

(declare-fun c!531701 () Bool)

(declare-fun bm!228983 () Bool)

(assert (=> bm!228983 (= call!228989 (derivativeStepMem!19 (ite c!531700 (regOne!19931 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (ite c!531701 (reg!10038 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (regOne!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) a!2409 cache!347))))

(declare-fun b!3161408 () Bool)

(declare-fun c!531705 () Bool)

(assert (=> b!3161408 (= c!531705 ((_ is ElementMatch!9709) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(declare-fun e!1969558 () tuple2!34366)

(assert (=> b!3161408 (= e!1969558 e!1969557)))

(declare-fun bm!228984 () Bool)

(declare-fun call!228991 () tuple2!34366)

(assert (=> bm!228984 (= call!228991 call!228989)))

(declare-fun bm!228985 () Bool)

(declare-fun call!228990 () tuple2!34366)

(assert (=> bm!228985 (= call!228988 call!228990)))

(declare-fun e!1969555 () tuple2!34366)

(declare-fun b!3161409 () Bool)

(declare-fun lt!1062943 () tuple2!34366)

(assert (=> b!3161409 (= e!1969555 (tuple2!34367 (Concat!15030 (_1!20315 lt!1062943) (Star!9709 (reg!10038 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) (_2!20315 lt!1062943)))))

(assert (=> b!3161409 (= lt!1062943 call!228991)))

(declare-fun b!3161410 () Bool)

(declare-fun e!1969554 () tuple2!34366)

(declare-fun lt!1062941 () Option!6873)

(assert (=> b!3161410 (= e!1969554 (tuple2!34367 (v!35046 lt!1062941) cache!347))))

(declare-fun lt!1062940 () tuple2!34366)

(declare-fun c!531703 () Bool)

(declare-fun bm!228986 () Bool)

(declare-fun lt!1062939 () tuple2!34366)

(assert (=> bm!228986 (= call!228990 (derivativeStepMem!19 (ite c!531700 (regTwo!19931 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (ite c!531703 (regTwo!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) (regOne!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))) a!2409 (ite c!531700 (_2!20315 lt!1062940) (ite c!531703 (_2!20315 lt!1062939) cache!347))))))

(declare-fun d!868466 () Bool)

(declare-fun lt!1062938 () tuple2!34366)

(assert (=> d!868466 (= (_1!20315 lt!1062938) (derivativeStep!2880 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409))))

(assert (=> d!868466 (= lt!1062938 e!1969554)))

(declare-fun c!531702 () Bool)

(assert (=> d!868466 (= c!531702 ((_ is Some!6872) lt!1062941))))

(assert (=> d!868466 (= lt!1062941 (get!11196 cache!347 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409))))

(assert (=> d!868466 (validRegex!4439 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))

(assert (=> d!868466 (= (derivativeStepMem!19 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 cache!347) lt!1062938)))

(declare-fun b!3161411 () Bool)

(assert (=> b!3161411 (= e!1969557 (tuple2!34367 (ite (= a!2409 (c!531630 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) EmptyExpr!9709 EmptyLang!9709) cache!347))))

(declare-fun b!3161412 () Bool)

(declare-fun lt!1062942 () tuple2!34366)

(assert (=> b!3161412 (= lt!1062942 call!228988)))

(assert (=> b!3161412 (= lt!1062939 call!228991)))

(assert (=> b!3161412 (= e!1969553 (tuple2!34367 (Union!9709 (Concat!15030 (_1!20315 lt!1062939) (regTwo!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))) (_1!20315 lt!1062942)) (_2!20315 lt!1062942)))))

(declare-fun lt!1062936 () tuple2!34366)

(declare-fun b!3161413 () Bool)

(assert (=> b!3161413 (= e!1969554 (tuple2!34367 (_1!20315 lt!1062936) (_2!20316 (update!258 (_2!20315 lt!1062936) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409 (_1!20315 lt!1062936)))))))

(declare-fun c!531704 () Bool)

(assert (=> b!3161413 (= c!531704 (or ((_ is EmptyExpr!9709) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))) ((_ is EmptyLang!9709) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))))

(assert (=> b!3161413 (= lt!1062936 e!1969558)))

(declare-fun b!3161414 () Bool)

(assert (=> b!3161414 (= e!1969558 (tuple2!34367 EmptyLang!9709 cache!347))))

(declare-fun b!3161415 () Bool)

(declare-fun lt!1062944 () tuple2!34366)

(assert (=> b!3161415 (= lt!1062944 call!228990)))

(assert (=> b!3161415 (= lt!1062940 call!228989)))

(assert (=> b!3161415 (= e!1969556 (tuple2!34367 (Union!9709 (_1!20315 lt!1062940) (_1!20315 lt!1062944)) (_2!20315 lt!1062944)))))

(declare-fun b!3161416 () Bool)

(assert (=> b!3161416 (= e!1969555 e!1969553)))

(assert (=> b!3161416 (= c!531703 (nullable!3330 (regOne!19930 (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))))

(declare-fun b!3161417 () Bool)

(assert (=> b!3161417 (= c!531701 ((_ is Star!9709) (ite c!531655 (regOne!19931 (regOne!19931 r!13156)) (ite c!531656 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156))))))))

(assert (=> b!3161417 (= e!1969556 e!1969555)))

(assert (= (and d!868466 c!531702) b!3161410))

(assert (= (and d!868466 (not c!531702)) b!3161413))

(assert (= (and b!3161413 c!531704) b!3161414))

(assert (= (and b!3161413 (not c!531704)) b!3161408))

(assert (= (and b!3161408 c!531705) b!3161411))

(assert (= (and b!3161408 (not c!531705)) b!3161406))

(assert (= (and b!3161406 c!531700) b!3161415))

(assert (= (and b!3161406 (not c!531700)) b!3161417))

(assert (= (and b!3161417 c!531701) b!3161409))

(assert (= (and b!3161417 (not c!531701)) b!3161416))

(assert (= (and b!3161416 c!531703) b!3161412))

(assert (= (and b!3161416 (not c!531703)) b!3161407))

(assert (= (or b!3161412 b!3161407) bm!228985))

(assert (= (or b!3161409 b!3161412) bm!228984))

(assert (= (or b!3161415 bm!228984) bm!228983))

(assert (= (or b!3161415 bm!228985) bm!228986))

(declare-fun m!3425902 () Bool)

(assert (=> bm!228983 m!3425902))

(declare-fun m!3425904 () Bool)

(assert (=> b!3161413 m!3425904))

(declare-fun m!3425906 () Bool)

(assert (=> bm!228986 m!3425906))

(declare-fun m!3425908 () Bool)

(assert (=> b!3161416 m!3425908))

(declare-fun m!3425910 () Bool)

(assert (=> d!868466 m!3425910))

(declare-fun m!3425912 () Bool)

(assert (=> d!868466 m!3425912))

(declare-fun m!3425914 () Bool)

(assert (=> d!868466 m!3425914))

(assert (=> bm!228936 d!868466))

(assert (=> d!868434 d!868448))

(declare-fun d!868468 () Bool)

(assert (=> d!868468 (= (nullable!3330 (regOne!19930 (regOne!19931 r!13156))) (nullableFct!943 (regOne!19930 (regOne!19931 r!13156))))))

(declare-fun bs!539421 () Bool)

(assert (= bs!539421 d!868468))

(declare-fun m!3425916 () Bool)

(assert (=> bs!539421 m!3425916))

(assert (=> b!3161246 d!868468))

(declare-fun d!868470 () Bool)

(assert (=> d!868470 (= (nullable!3330 (reg!10038 r!13156)) (nullableFct!943 (reg!10038 r!13156)))))

(declare-fun bs!539422 () Bool)

(assert (= bs!539422 d!868470))

(declare-fun m!3425918 () Bool)

(assert (=> bs!539422 m!3425918))

(assert (=> b!3161185 d!868470))

(declare-fun b!3161418 () Bool)

(declare-fun e!1969560 () Regex!9709)

(declare-fun e!1969561 () Regex!9709)

(assert (=> b!3161418 (= e!1969560 e!1969561)))

(declare-fun c!531708 () Bool)

(assert (=> b!3161418 (= c!531708 ((_ is Star!9709) (regOne!19931 r!13156)))))

(declare-fun bm!228987 () Bool)

(declare-fun c!531709 () Bool)

(declare-fun call!228992 () Regex!9709)

(assert (=> bm!228987 (= call!228992 (derivativeStep!2880 (ite c!531709 (regTwo!19931 (regOne!19931 r!13156)) (ite c!531708 (reg!10038 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))) a!2409))))

(declare-fun b!3161419 () Bool)

(declare-fun e!1969562 () Regex!9709)

(declare-fun e!1969559 () Regex!9709)

(assert (=> b!3161419 (= e!1969562 e!1969559)))

(declare-fun c!531706 () Bool)

(assert (=> b!3161419 (= c!531706 ((_ is ElementMatch!9709) (regOne!19931 r!13156)))))

(declare-fun bm!228988 () Bool)

(declare-fun call!228995 () Regex!9709)

(assert (=> bm!228988 (= call!228995 call!228992)))

(declare-fun b!3161420 () Bool)

(declare-fun c!531710 () Bool)

(assert (=> b!3161420 (= c!531710 (nullable!3330 (regOne!19930 (regOne!19931 r!13156))))))

(declare-fun e!1969563 () Regex!9709)

(assert (=> b!3161420 (= e!1969561 e!1969563)))

(declare-fun b!3161422 () Bool)

(declare-fun call!228994 () Regex!9709)

(declare-fun call!228993 () Regex!9709)

(assert (=> b!3161422 (= e!1969563 (Union!9709 (Concat!15030 call!228993 (regTwo!19930 (regOne!19931 r!13156))) call!228994))))

(declare-fun b!3161423 () Bool)

(assert (=> b!3161423 (= e!1969559 (ite (= a!2409 (c!531630 (regOne!19931 r!13156))) EmptyExpr!9709 EmptyLang!9709))))

(declare-fun bm!228989 () Bool)

(assert (=> bm!228989 (= call!228994 (derivativeStep!2880 (ite c!531709 (regOne!19931 (regOne!19931 r!13156)) (regTwo!19930 (regOne!19931 r!13156))) a!2409))))

(declare-fun b!3161424 () Bool)

(assert (=> b!3161424 (= e!1969562 EmptyLang!9709)))

(declare-fun b!3161425 () Bool)

(assert (=> b!3161425 (= e!1969561 (Concat!15030 call!228995 (regOne!19931 r!13156)))))

(declare-fun b!3161426 () Bool)

(assert (=> b!3161426 (= c!531709 ((_ is Union!9709) (regOne!19931 r!13156)))))

(assert (=> b!3161426 (= e!1969559 e!1969560)))

(declare-fun b!3161427 () Bool)

(assert (=> b!3161427 (= e!1969560 (Union!9709 call!228994 call!228992))))

(declare-fun bm!228990 () Bool)

(assert (=> bm!228990 (= call!228993 call!228995)))

(declare-fun d!868472 () Bool)

(declare-fun lt!1062945 () Regex!9709)

(assert (=> d!868472 (validRegex!4439 lt!1062945)))

(assert (=> d!868472 (= lt!1062945 e!1969562)))

(declare-fun c!531707 () Bool)

(assert (=> d!868472 (= c!531707 (or ((_ is EmptyExpr!9709) (regOne!19931 r!13156)) ((_ is EmptyLang!9709) (regOne!19931 r!13156))))))

(assert (=> d!868472 (validRegex!4439 (regOne!19931 r!13156))))

(assert (=> d!868472 (= (derivativeStep!2880 (regOne!19931 r!13156) a!2409) lt!1062945)))

(declare-fun b!3161421 () Bool)

(assert (=> b!3161421 (= e!1969563 (Union!9709 (Concat!15030 call!228993 (regTwo!19930 (regOne!19931 r!13156))) EmptyLang!9709))))

(assert (= (and d!868472 c!531707) b!3161424))

(assert (= (and d!868472 (not c!531707)) b!3161419))

(assert (= (and b!3161419 c!531706) b!3161423))

(assert (= (and b!3161419 (not c!531706)) b!3161426))

(assert (= (and b!3161426 c!531709) b!3161427))

(assert (= (and b!3161426 (not c!531709)) b!3161418))

(assert (= (and b!3161418 c!531708) b!3161425))

(assert (= (and b!3161418 (not c!531708)) b!3161420))

(assert (= (and b!3161420 c!531710) b!3161422))

(assert (= (and b!3161420 (not c!531710)) b!3161421))

(assert (= (or b!3161422 b!3161421) bm!228990))

(assert (= (or b!3161425 bm!228990) bm!228988))

(assert (= (or b!3161427 bm!228988) bm!228987))

(assert (= (or b!3161427 b!3161422) bm!228989))

(declare-fun m!3425920 () Bool)

(assert (=> bm!228987 m!3425920))

(assert (=> b!3161420 m!3425781))

(declare-fun m!3425922 () Bool)

(assert (=> bm!228989 m!3425922))

(declare-fun m!3425924 () Bool)

(assert (=> d!868472 m!3425924))

(assert (=> d!868472 m!3425787))

(assert (=> d!868442 d!868472))

(declare-fun d!868474 () Bool)

(declare-fun e!1969565 () Bool)

(assert (=> d!868474 e!1969565))

(declare-fun res!1287135 () Bool)

(assert (=> d!868474 (=> res!1287135 e!1969565)))

(declare-fun lt!1062947 () Option!6873)

(assert (=> d!868474 (= res!1287135 (isEmpty!19747 lt!1062947))))

(declare-fun e!1969564 () Option!6873)

(assert (=> d!868474 (= lt!1062947 e!1969564)))

(declare-fun c!531711 () Bool)

(assert (=> d!868474 (= c!531711 (contains!6142 (cache!4174 cache!347) (tuple2!34363 (regOne!19931 r!13156) a!2409)))))

(assert (=> d!868474 (validRegex!4439 (regOne!19931 r!13156))))

(assert (=> d!868474 (= (get!11196 cache!347 (regOne!19931 r!13156) a!2409) lt!1062947)))

(declare-fun b!3161428 () Bool)

(assert (=> b!3161428 (= e!1969564 (Some!6872 (apply!7929 (cache!4174 cache!347) (tuple2!34363 (regOne!19931 r!13156) a!2409))))))

(declare-fun lt!1062946 () Unit!49756)

(assert (=> b!3161428 (= lt!1062946 (lemmaIfInCacheThenValid!45 cache!347 (regOne!19931 r!13156) a!2409))))

(declare-fun b!3161429 () Bool)

(assert (=> b!3161429 (= e!1969564 None!6872)))

(declare-fun b!3161430 () Bool)

(assert (=> b!3161430 (= e!1969565 (= (get!11197 lt!1062947) (derivativeStep!2880 (regOne!19931 r!13156) a!2409)))))

(assert (= (and d!868474 c!531711) b!3161428))

(assert (= (and d!868474 (not c!531711)) b!3161429))

(assert (= (and d!868474 (not res!1287135)) b!3161430))

(declare-fun m!3425926 () Bool)

(assert (=> d!868474 m!3425926))

(declare-fun m!3425928 () Bool)

(assert (=> d!868474 m!3425928))

(assert (=> d!868474 m!3425787))

(declare-fun m!3425930 () Bool)

(assert (=> b!3161428 m!3425930))

(declare-fun m!3425932 () Bool)

(assert (=> b!3161428 m!3425932))

(declare-fun m!3425934 () Bool)

(assert (=> b!3161430 m!3425934))

(assert (=> b!3161430 m!3425783))

(assert (=> d!868442 d!868474))

(declare-fun bm!228991 () Bool)

(declare-fun call!228998 () Bool)

(declare-fun call!228997 () Bool)

(assert (=> bm!228991 (= call!228998 call!228997)))

(declare-fun b!3161431 () Bool)

(declare-fun e!1969568 () Bool)

(declare-fun e!1969570 () Bool)

(assert (=> b!3161431 (= e!1969568 e!1969570)))

(declare-fun c!531713 () Bool)

(assert (=> b!3161431 (= c!531713 ((_ is Union!9709) (regOne!19931 r!13156)))))

(declare-fun b!3161432 () Bool)

(declare-fun e!1969569 () Bool)

(assert (=> b!3161432 (= e!1969569 e!1969568)))

(declare-fun c!531712 () Bool)

(assert (=> b!3161432 (= c!531712 ((_ is Star!9709) (regOne!19931 r!13156)))))

(declare-fun b!3161433 () Bool)

(declare-fun e!1969572 () Bool)

(declare-fun e!1969566 () Bool)

(assert (=> b!3161433 (= e!1969572 e!1969566)))

(declare-fun res!1287136 () Bool)

(assert (=> b!3161433 (=> (not res!1287136) (not e!1969566))))

(declare-fun call!228996 () Bool)

(assert (=> b!3161433 (= res!1287136 call!228996)))

(declare-fun bm!228992 () Bool)

(assert (=> bm!228992 (= call!228996 (validRegex!4439 (ite c!531713 (regOne!19931 (regOne!19931 r!13156)) (regOne!19930 (regOne!19931 r!13156)))))))

(declare-fun b!3161435 () Bool)

(declare-fun res!1287139 () Bool)

(declare-fun e!1969567 () Bool)

(assert (=> b!3161435 (=> (not res!1287139) (not e!1969567))))

(assert (=> b!3161435 (= res!1287139 call!228996)))

(assert (=> b!3161435 (= e!1969570 e!1969567)))

(declare-fun b!3161436 () Bool)

(assert (=> b!3161436 (= e!1969566 call!228998)))

(declare-fun b!3161437 () Bool)

(assert (=> b!3161437 (= e!1969567 call!228998)))

(declare-fun bm!228993 () Bool)

(assert (=> bm!228993 (= call!228997 (validRegex!4439 (ite c!531712 (reg!10038 (regOne!19931 r!13156)) (ite c!531713 (regTwo!19931 (regOne!19931 r!13156)) (regTwo!19930 (regOne!19931 r!13156))))))))

(declare-fun d!868476 () Bool)

(declare-fun res!1287138 () Bool)

(assert (=> d!868476 (=> res!1287138 e!1969569)))

(assert (=> d!868476 (= res!1287138 ((_ is ElementMatch!9709) (regOne!19931 r!13156)))))

(assert (=> d!868476 (= (validRegex!4439 (regOne!19931 r!13156)) e!1969569)))

(declare-fun b!3161434 () Bool)

(declare-fun e!1969571 () Bool)

(assert (=> b!3161434 (= e!1969568 e!1969571)))

(declare-fun res!1287137 () Bool)

(assert (=> b!3161434 (= res!1287137 (not (nullable!3330 (reg!10038 (regOne!19931 r!13156)))))))

(assert (=> b!3161434 (=> (not res!1287137) (not e!1969571))))

(declare-fun b!3161438 () Bool)

(assert (=> b!3161438 (= e!1969571 call!228997)))

(declare-fun b!3161439 () Bool)

(declare-fun res!1287140 () Bool)

(assert (=> b!3161439 (=> res!1287140 e!1969572)))

(assert (=> b!3161439 (= res!1287140 (not ((_ is Concat!15030) (regOne!19931 r!13156))))))

(assert (=> b!3161439 (= e!1969570 e!1969572)))

(assert (= (and d!868476 (not res!1287138)) b!3161432))

(assert (= (and b!3161432 c!531712) b!3161434))

(assert (= (and b!3161432 (not c!531712)) b!3161431))

(assert (= (and b!3161434 res!1287137) b!3161438))

(assert (= (and b!3161431 c!531713) b!3161435))

(assert (= (and b!3161431 (not c!531713)) b!3161439))

(assert (= (and b!3161435 res!1287139) b!3161437))

(assert (= (and b!3161439 (not res!1287140)) b!3161433))

(assert (= (and b!3161433 res!1287136) b!3161436))

(assert (= (or b!3161435 b!3161433) bm!228992))

(assert (= (or b!3161437 b!3161436) bm!228991))

(assert (= (or b!3161438 bm!228991) bm!228993))

(declare-fun m!3425936 () Bool)

(assert (=> bm!228992 m!3425936))

(declare-fun m!3425938 () Bool)

(assert (=> bm!228993 m!3425938))

(declare-fun m!3425940 () Bool)

(assert (=> b!3161434 m!3425940))

(assert (=> d!868442 d!868476))

(declare-fun bm!228994 () Bool)

(declare-fun call!229001 () Bool)

(declare-fun call!229000 () Bool)

(assert (=> bm!228994 (= call!229001 call!229000)))

(declare-fun b!3161440 () Bool)

(declare-fun e!1969575 () Bool)

(declare-fun e!1969577 () Bool)

(assert (=> b!3161440 (= e!1969575 e!1969577)))

(declare-fun c!531715 () Bool)

(assert (=> b!3161440 (= c!531715 ((_ is Union!9709) (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))

(declare-fun b!3161441 () Bool)

(declare-fun e!1969576 () Bool)

(assert (=> b!3161441 (= e!1969576 e!1969575)))

(declare-fun c!531714 () Bool)

(assert (=> b!3161441 (= c!531714 ((_ is Star!9709) (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))

(declare-fun b!3161442 () Bool)

(declare-fun e!1969579 () Bool)

(declare-fun e!1969573 () Bool)

(assert (=> b!3161442 (= e!1969579 e!1969573)))

(declare-fun res!1287141 () Bool)

(assert (=> b!3161442 (=> (not res!1287141) (not e!1969573))))

(declare-fun call!228999 () Bool)

(assert (=> b!3161442 (= res!1287141 call!228999)))

(declare-fun bm!228995 () Bool)

(assert (=> bm!228995 (= call!228999 (validRegex!4439 (ite c!531715 (regOne!19931 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))) (regOne!19930 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))))

(declare-fun b!3161444 () Bool)

(declare-fun res!1287144 () Bool)

(declare-fun e!1969574 () Bool)

(assert (=> b!3161444 (=> (not res!1287144) (not e!1969574))))

(assert (=> b!3161444 (= res!1287144 call!228999)))

(assert (=> b!3161444 (= e!1969577 e!1969574)))

(declare-fun b!3161445 () Bool)

(assert (=> b!3161445 (= e!1969573 call!229001)))

(declare-fun b!3161446 () Bool)

(assert (=> b!3161446 (= e!1969574 call!229001)))

(declare-fun bm!228996 () Bool)

(assert (=> bm!228996 (= call!229000 (validRegex!4439 (ite c!531714 (reg!10038 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))) (ite c!531715 (regTwo!19931 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))) (regTwo!19930 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156)))))))))))

(declare-fun d!868478 () Bool)

(declare-fun res!1287143 () Bool)

(assert (=> d!868478 (=> res!1287143 e!1969576)))

(assert (=> d!868478 (= res!1287143 ((_ is ElementMatch!9709) (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))

(assert (=> d!868478 (= (validRegex!4439 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))) e!1969576)))

(declare-fun b!3161443 () Bool)

(declare-fun e!1969578 () Bool)

(assert (=> b!3161443 (= e!1969575 e!1969578)))

(declare-fun res!1287142 () Bool)

(assert (=> b!3161443 (= res!1287142 (not (nullable!3330 (reg!10038 (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156))))))))))

(assert (=> b!3161443 (=> (not res!1287142) (not e!1969578))))

(declare-fun b!3161447 () Bool)

(assert (=> b!3161447 (= e!1969578 call!229000)))

(declare-fun b!3161448 () Bool)

(declare-fun res!1287145 () Bool)

(assert (=> b!3161448 (=> res!1287145 e!1969579)))

(assert (=> b!3161448 (= res!1287145 (not ((_ is Concat!15030) (ite c!531641 (reg!10038 (regTwo!19931 r!13156)) (ite c!531642 (regTwo!19931 (regTwo!19931 r!13156)) (regTwo!19930 (regTwo!19931 r!13156)))))))))

(assert (=> b!3161448 (= e!1969577 e!1969579)))

(assert (= (and d!868478 (not res!1287143)) b!3161441))

(assert (= (and b!3161441 c!531714) b!3161443))

(assert (= (and b!3161441 (not c!531714)) b!3161440))

(assert (= (and b!3161443 res!1287142) b!3161447))

(assert (= (and b!3161440 c!531715) b!3161444))

(assert (= (and b!3161440 (not c!531715)) b!3161448))

(assert (= (and b!3161444 res!1287144) b!3161446))

(assert (= (and b!3161448 (not res!1287145)) b!3161442))

(assert (= (and b!3161442 res!1287141) b!3161445))

(assert (= (or b!3161444 b!3161442) bm!228995))

(assert (= (or b!3161446 b!3161445) bm!228994))

(assert (= (or b!3161447 bm!228994) bm!228996))

(declare-fun m!3425942 () Bool)

(assert (=> bm!228995 m!3425942))

(declare-fun m!3425944 () Bool)

(assert (=> bm!228996 m!3425944))

(declare-fun m!3425946 () Bool)

(assert (=> b!3161443 m!3425946))

(assert (=> bm!228927 d!868478))

(declare-fun bs!539423 () Bool)

(declare-fun b!3161462 () Bool)

(assert (= bs!539423 (and b!3161462 b!3161386)))

(declare-fun lambda!115761 () Int)

(assert (=> bs!539423 (= lambda!115761 lambda!115754)))

(declare-fun e!1969586 () Regex!9709)

(declare-fun lt!1063019 () (_ BitVec 64))

(declare-fun get!11198 (Option!6875) tuple2!34364)

(assert (=> b!3161462 (= e!1969586 (_2!20314 (get!11198 (getPair!90 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1063019) (tuple2!34363 r!13156 a!2409)))))))

(assert (=> b!3161462 (= lt!1063019 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(declare-fun c!531724 () Bool)

(assert (=> b!3161462 (= c!531724 (not (contains!6143 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))) (tuple2!34371 lt!1063019 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1063019)))))))

(declare-fun lt!1063014 () Unit!49756)

(declare-fun e!1969588 () Unit!49756)

(assert (=> b!3161462 (= lt!1063014 e!1969588)))

(declare-fun lt!1063035 () Unit!49756)

(assert (=> b!3161462 (= lt!1063035 (forallContained!1068 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))) lambda!115761 (tuple2!34371 lt!1063019 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1063019))))))

(declare-fun lt!1063018 () ListLongMap!711)

(assert (=> b!3161462 (= lt!1063018 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))

(declare-fun lt!1063026 () Unit!49756)

(declare-fun lemmaGetPairGetSameValueAsMap!28 (ListLongMap!711 tuple2!34362 Regex!9709 Hashable!4046) Unit!49756)

(assert (=> b!3161462 (= lt!1063026 (lemmaGetPairGetSameValueAsMap!28 lt!1063018 (tuple2!34363 r!13156 a!2409) (_2!20314 (get!11198 (getPair!90 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1063019) (tuple2!34363 r!13156 a!2409)))) (hashF!6078 (cache!4174 cache!347))))))

(declare-fun lt!1063015 () Unit!49756)

(declare-fun lemmaInGenMapThenLongMapContainsHash!34 (ListLongMap!711 tuple2!34362 Hashable!4046) Unit!49756)

(assert (=> b!3161462 (= lt!1063015 (lemmaInGenMapThenLongMapContainsHash!34 lt!1063018 (tuple2!34363 r!13156 a!2409) (hashF!6078 (cache!4174 cache!347))))))

(assert (=> b!3161462 (contains!6145 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(declare-fun lt!1063021 () Unit!49756)

(assert (=> b!3161462 (= lt!1063021 lt!1063015)))

(declare-fun lt!1063016 () (_ BitVec 64))

(assert (=> b!3161462 (= lt!1063016 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(declare-fun lt!1063028 () List!35537)

(assert (=> b!3161462 (= lt!1063028 (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))))))

(declare-fun lt!1063008 () Unit!49756)

(declare-fun lemmaGetValueImpliesTupleContained!29 (ListLongMap!711 (_ BitVec 64) List!35537) Unit!49756)

(assert (=> b!3161462 (= lt!1063008 (lemmaGetValueImpliesTupleContained!29 lt!1063018 lt!1063016 lt!1063028))))

(assert (=> b!3161462 (contains!6143 (toList!2046 lt!1063018) (tuple2!34371 lt!1063016 lt!1063028))))

(declare-fun lt!1063012 () Unit!49756)

(assert (=> b!3161462 (= lt!1063012 lt!1063008)))

(declare-fun lt!1063022 () Unit!49756)

(assert (=> b!3161462 (= lt!1063022 (forallContained!1068 (toList!2046 lt!1063018) lambda!115761 (tuple2!34371 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)) (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))))))))

(declare-fun lt!1063032 () Unit!49756)

(declare-fun lemmaInGenMapThenGetPairDefined!28 (ListLongMap!711 tuple2!34362 Hashable!4046) Unit!49756)

(assert (=> b!3161462 (= lt!1063032 (lemmaInGenMapThenGetPairDefined!28 lt!1063018 (tuple2!34363 r!13156 a!2409) (hashF!6078 (cache!4174 cache!347))))))

(declare-fun lt!1063011 () Unit!49756)

(assert (=> b!3161462 (= lt!1063011 (lemmaInGenMapThenLongMapContainsHash!34 lt!1063018 (tuple2!34363 r!13156 a!2409) (hashF!6078 (cache!4174 cache!347))))))

(declare-fun lt!1063009 () Unit!49756)

(assert (=> b!3161462 (= lt!1063009 lt!1063011)))

(declare-fun lt!1063010 () (_ BitVec 64))

(assert (=> b!3161462 (= lt!1063010 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(declare-fun lt!1063017 () List!35537)

(assert (=> b!3161462 (= lt!1063017 (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))))))

(declare-fun lt!1063031 () Unit!49756)

(assert (=> b!3161462 (= lt!1063031 (lemmaGetValueImpliesTupleContained!29 lt!1063018 lt!1063010 lt!1063017))))

(assert (=> b!3161462 (contains!6143 (toList!2046 lt!1063018) (tuple2!34371 lt!1063010 lt!1063017))))

(declare-fun lt!1063037 () Unit!49756)

(assert (=> b!3161462 (= lt!1063037 lt!1063031)))

(declare-fun lt!1063036 () Unit!49756)

(assert (=> b!3161462 (= lt!1063036 (forallContained!1068 (toList!2046 lt!1063018) lambda!115761 (tuple2!34371 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)) (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))))))))

(assert (=> b!3161462 (isDefined!5415 (getPair!90 (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))) (tuple2!34363 r!13156 a!2409)))))

(declare-fun lt!1063029 () Unit!49756)

(assert (=> b!3161462 (= lt!1063029 lt!1063032)))

(declare-fun getValueByKey!168 (List!35537 tuple2!34362) Option!6873)

(assert (=> b!3161462 (= (_2!20314 (get!11198 (getPair!90 (apply!7931 lt!1063018 (hash!799 (hashF!6078 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))) (tuple2!34363 r!13156 a!2409)))) (get!11197 (getValueByKey!168 (toList!2045 (extractMap!228 (toList!2046 lt!1063018))) (tuple2!34363 r!13156 a!2409))))))

(declare-fun lt!1063027 () Unit!49756)

(assert (=> b!3161462 (= lt!1063027 lt!1063026)))

(declare-fun e!1969587 () Bool)

(declare-fun lt!1063023 () Regex!9709)

(declare-fun b!3161463 () Bool)

(assert (=> b!3161463 (= e!1969587 (= lt!1063023 (get!11197 (getValueByKey!168 (toList!2045 (map!7875 (cache!4174 cache!347))) (tuple2!34363 r!13156 a!2409)))))))

(declare-fun b!3161464 () Bool)

(declare-fun dynLambda!14354 (Int tuple2!34362) Regex!9709)

(assert (=> b!3161464 (= e!1969587 (= lt!1063023 (dynLambda!14354 (defaultValue!4207 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409))))))

(declare-fun b!3161465 () Bool)

(declare-fun Unit!49763 () Unit!49756)

(assert (=> b!3161465 (= e!1969588 Unit!49763)))

(declare-fun b!3161466 () Bool)

(assert (=> b!3161466 (= e!1969586 (dynLambda!14354 (defaultValue!4207 (cache!4174 cache!347)) (tuple2!34363 r!13156 a!2409)))))

(declare-fun b!3161461 () Bool)

(assert (=> b!3161461 false))

(declare-fun lt!1063024 () Unit!49756)

(declare-fun lt!1063020 () Unit!49756)

(assert (=> b!3161461 (= lt!1063024 lt!1063020)))

(declare-fun lt!1063013 () List!35538)

(declare-fun lt!1063025 () List!35537)

(assert (=> b!3161461 (contains!6143 lt!1063013 (tuple2!34371 lt!1063019 lt!1063025))))

(assert (=> b!3161461 (= lt!1063020 (lemmaGetValueByKeyImpliesContainsTuple!96 lt!1063013 lt!1063019 lt!1063025))))

(assert (=> b!3161461 (= lt!1063025 (apply!7930 (v!35045 (underlying!8490 (cache!4174 cache!347))) lt!1063019))))

(assert (=> b!3161461 (= lt!1063013 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))

(declare-fun lt!1063033 () Unit!49756)

(declare-fun lt!1063034 () Unit!49756)

(assert (=> b!3161461 (= lt!1063033 lt!1063034)))

(declare-fun lt!1063030 () List!35538)

(assert (=> b!3161461 (isDefined!5414 (getValueByKey!167 lt!1063030 lt!1063019))))

(assert (=> b!3161461 (= lt!1063034 (lemmaContainsKeyImpliesGetValueByKeyDefined!124 lt!1063030 lt!1063019))))

(assert (=> b!3161461 (= lt!1063030 (toList!2046 (map!7876 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))

(declare-fun Unit!49764 () Unit!49756)

(assert (=> b!3161461 (= e!1969588 Unit!49764)))

(declare-fun d!868480 () Bool)

(assert (=> d!868480 e!1969587))

(declare-fun c!531722 () Bool)

(assert (=> d!868480 (= c!531722 (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409)))))

(assert (=> d!868480 (= lt!1063023 e!1969586)))

(declare-fun c!531723 () Bool)

(assert (=> d!868480 (= c!531723 (not (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409))))))

(assert (=> d!868480 (valid!3218 (cache!4174 cache!347))))

(assert (=> d!868480 (= (apply!7929 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409)) lt!1063023)))

(assert (= (and d!868480 c!531723) b!3161466))

(assert (= (and d!868480 (not c!531723)) b!3161462))

(assert (= (and b!3161462 c!531724) b!3161461))

(assert (= (and b!3161462 (not c!531724)) b!3161465))

(assert (= (and d!868480 c!531722) b!3161463))

(assert (= (and d!868480 (not c!531722)) b!3161464))

(declare-fun b_lambda!86375 () Bool)

(assert (=> (not b_lambda!86375) (not b!3161464)))

(declare-fun t!234604 () Bool)

(declare-fun tb!155089 () Bool)

(assert (=> (and b!3161153 (= (defaultValue!4207 (cache!4174 cache!347)) (defaultValue!4207 (cache!4174 cache!347))) t!234604) tb!155089))

(assert (=> b!3161464 t!234604))

(declare-fun result!196778 () Bool)

(declare-fun b_and!209247 () Bool)

(assert (= b_and!209243 (and (=> t!234604 result!196778) b_and!209247)))

(declare-fun b_lambda!86377 () Bool)

(assert (=> (not b_lambda!86377) (not b!3161466)))

(assert (=> b!3161466 t!234604))

(declare-fun b_and!209249 () Bool)

(assert (= b_and!209247 (and (=> t!234604 result!196778) b_and!209249)))

(assert (=> b!3161462 m!3425856))

(declare-fun m!3425948 () Bool)

(assert (=> b!3161462 m!3425948))

(assert (=> b!3161462 m!3425848))

(declare-fun m!3425950 () Bool)

(assert (=> b!3161462 m!3425950))

(declare-fun m!3425952 () Bool)

(assert (=> b!3161462 m!3425952))

(assert (=> b!3161462 m!3425856))

(assert (=> b!3161462 m!3425950))

(declare-fun m!3425954 () Bool)

(assert (=> b!3161462 m!3425954))

(assert (=> b!3161462 m!3425954))

(declare-fun m!3425956 () Bool)

(assert (=> b!3161462 m!3425956))

(assert (=> b!3161462 m!3425856))

(declare-fun m!3425958 () Bool)

(assert (=> b!3161462 m!3425958))

(declare-fun m!3425960 () Bool)

(assert (=> b!3161462 m!3425960))

(assert (=> b!3161462 m!3425948))

(declare-fun m!3425962 () Bool)

(assert (=> b!3161462 m!3425962))

(declare-fun m!3425964 () Bool)

(assert (=> b!3161462 m!3425964))

(declare-fun m!3425966 () Bool)

(assert (=> b!3161462 m!3425966))

(declare-fun m!3425968 () Bool)

(assert (=> b!3161462 m!3425968))

(declare-fun m!3425970 () Bool)

(assert (=> b!3161462 m!3425970))

(declare-fun m!3425972 () Bool)

(assert (=> b!3161462 m!3425972))

(declare-fun m!3425974 () Bool)

(assert (=> b!3161462 m!3425974))

(declare-fun m!3425976 () Bool)

(assert (=> b!3161462 m!3425976))

(declare-fun m!3425978 () Bool)

(assert (=> b!3161462 m!3425978))

(assert (=> b!3161462 m!3425962))

(declare-fun m!3425980 () Bool)

(assert (=> b!3161462 m!3425980))

(declare-fun m!3425982 () Bool)

(assert (=> b!3161462 m!3425982))

(assert (=> b!3161462 m!3425962))

(declare-fun m!3425984 () Bool)

(assert (=> b!3161462 m!3425984))

(assert (=> b!3161462 m!3425976))

(declare-fun m!3425986 () Bool)

(assert (=> b!3161462 m!3425986))

(declare-fun m!3425988 () Bool)

(assert (=> b!3161462 m!3425988))

(assert (=> b!3161462 m!3425982))

(declare-fun m!3425990 () Bool)

(assert (=> b!3161464 m!3425990))

(assert (=> b!3161466 m!3425990))

(declare-fun m!3425992 () Bool)

(assert (=> b!3161461 m!3425992))

(assert (=> b!3161461 m!3425950))

(declare-fun m!3425994 () Bool)

(assert (=> b!3161461 m!3425994))

(assert (=> b!3161461 m!3425848))

(declare-fun m!3425996 () Bool)

(assert (=> b!3161461 m!3425996))

(assert (=> b!3161461 m!3425992))

(declare-fun m!3425998 () Bool)

(assert (=> b!3161461 m!3425998))

(declare-fun m!3426000 () Bool)

(assert (=> b!3161461 m!3426000))

(assert (=> d!868480 m!3425757))

(assert (=> d!868480 m!3425812))

(assert (=> b!3161463 m!3425814))

(declare-fun m!3426002 () Bool)

(assert (=> b!3161463 m!3426002))

(assert (=> b!3161463 m!3426002))

(declare-fun m!3426004 () Bool)

(assert (=> b!3161463 m!3426004))

(assert (=> b!3161200 d!868480))

(declare-fun bs!539424 () Bool)

(declare-fun b!3161477 () Bool)

(assert (= bs!539424 (and b!3161477 b!3161322)))

(declare-fun lambda!115764 () Int)

(assert (=> bs!539424 (= lambda!115764 lambda!115750)))

(declare-fun bs!539425 () Bool)

(assert (= bs!539425 (and b!3161477 b!3161333)))

(assert (=> bs!539425 (= lambda!115764 lambda!115751)))

(declare-fun d!868482 () Bool)

(declare-fun e!1969601 () Bool)

(assert (=> d!868482 e!1969601))

(declare-fun res!1287153 () Bool)

(assert (=> d!868482 (=> res!1287153 e!1969601)))

(assert (=> d!868482 (= res!1287153 (not (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409))))))

(declare-fun lt!1063059 () Unit!49756)

(declare-fun e!1969603 () Unit!49756)

(assert (=> d!868482 (= lt!1063059 e!1969603)))

(declare-fun c!531728 () Bool)

(assert (=> d!868482 (= c!531728 (contains!6142 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409)))))

(assert (=> d!868482 (validCacheMap!45 (cache!4174 cache!347))))

(assert (=> d!868482 (= (lemmaIfInCacheThenValid!45 cache!347 r!13156 a!2409) lt!1063059)))

(declare-fun lt!1063060 () Unit!49756)

(assert (=> b!3161477 (= e!1969603 lt!1063060)))

(declare-fun lt!1063057 () tuple2!34362)

(assert (=> b!3161477 (= lt!1063057 (tuple2!34363 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!42 (MutableMap!4036 tuple2!34362 Int) Unit!49756)

(assert (=> b!3161477 (= lt!1063060 (lemmaForallPairsThenForLookup!42 (cache!4174 cache!347) lt!1063057 lambda!115764))))

(declare-fun lt!1063056 () tuple2!34364)

(assert (=> b!3161477 (= lt!1063056 (tuple2!34365 lt!1063057 (apply!7929 (cache!4174 cache!347) lt!1063057)))))

(declare-fun lt!1063061 () Regex!9709)

(assert (=> b!3161477 (= lt!1063061 (apply!7929 (cache!4174 cache!347) lt!1063057))))

(declare-fun res!1287152 () Bool)

(assert (=> b!3161477 (= res!1287152 (validRegex!4439 (_1!20313 lt!1063057)))))

(declare-fun e!1969602 () Bool)

(assert (=> b!3161477 (=> (not res!1287152) (not e!1969602))))

(assert (=> b!3161477 e!1969602))

(declare-fun b!3161480 () Bool)

(assert (=> b!3161480 (= e!1969601 (= (derivativeStep!2880 r!13156 a!2409) (apply!7929 (cache!4174 cache!347) (tuple2!34363 r!13156 a!2409))))))

(declare-fun b!3161478 () Bool)

(declare-fun Unit!49765 () Unit!49756)

(assert (=> b!3161478 (= e!1969603 Unit!49765)))

(declare-fun b!3161479 () Bool)

(declare-fun lt!1063058 () tuple2!34362)

(assert (=> b!3161479 (= lt!1063058 lt!1063057)))

(declare-fun lt!1063055 () Regex!9709)

(assert (=> b!3161479 (= lt!1063055 (apply!7929 (cache!4174 cache!347) lt!1063057))))

(declare-fun lt!1063054 () Regex!9709)

(assert (=> b!3161479 (= lt!1063054 (apply!7929 (cache!4174 cache!347) lt!1063057))))

(assert (=> b!3161479 (= e!1969602 (= (apply!7929 (cache!4174 cache!347) lt!1063057) (derivativeStep!2880 (_1!20313 lt!1063057) (_2!20313 lt!1063057))))))

(assert (= (and d!868482 c!531728) b!3161477))

(assert (= (and d!868482 (not c!531728)) b!3161478))

(assert (= (and b!3161477 res!1287152) b!3161479))

(assert (= (and d!868482 (not res!1287153)) b!3161480))

(assert (=> d!868482 m!3425757))

(assert (=> d!868482 m!3425753))

(declare-fun m!3426006 () Bool)

(assert (=> b!3161477 m!3426006))

(declare-fun m!3426008 () Bool)

(assert (=> b!3161477 m!3426008))

(declare-fun m!3426010 () Bool)

(assert (=> b!3161477 m!3426010))

(assert (=> b!3161480 m!3425765))

(assert (=> b!3161480 m!3425759))

(assert (=> b!3161479 m!3426008))

(declare-fun m!3426012 () Bool)

(assert (=> b!3161479 m!3426012))

(assert (=> b!3161200 d!868482))

(declare-fun bs!539426 () Bool)

(declare-fun d!868484 () Bool)

(assert (= bs!539426 (and d!868484 b!3161322)))

(declare-fun lambda!115767 () Int)

(assert (=> bs!539426 (= lambda!115767 lambda!115750)))

(declare-fun bs!539427 () Bool)

(assert (= bs!539427 (and d!868484 b!3161333)))

(assert (=> bs!539427 (= lambda!115767 lambda!115751)))

(declare-fun bs!539428 () Bool)

(assert (= bs!539428 (and d!868484 b!3161477)))

(assert (=> bs!539428 (= lambda!115767 lambda!115764)))

(declare-fun lt!1063070 () tuple2!34368)

(assert (=> d!868484 (validCacheMap!45 (cache!4174 (_2!20316 lt!1063070)))))

(declare-fun Unit!49766 () Unit!49756)

(declare-datatypes ((tuple2!34372 0))(
  ( (tuple2!34373 (_1!20318 Bool) (_2!20318 MutableMap!4036)) )
))
(declare-fun update!259 (MutableMap!4036 tuple2!34362 Regex!9709) tuple2!34372)

(assert (=> d!868484 (= lt!1063070 (tuple2!34369 Unit!49766 (Cache!343 (_2!20318 (update!259 (cache!4174 (_2!20315 lt!1062855)) (tuple2!34363 (regOne!19931 r!13156) a!2409) (_1!20315 lt!1062855))))))))

(declare-fun lt!1063071 () Unit!49756)

(declare-fun lt!1063073 () Unit!49756)

(assert (=> d!868484 (= lt!1063071 lt!1063073)))

(declare-fun lt!1063072 () tuple2!34362)

(assert (=> d!868484 (forall!7140 (toList!2045 (map!7875 (_2!20318 (update!259 (cache!4174 (_2!20315 lt!1062855)) lt!1063072 (_1!20315 lt!1062855))))) lambda!115767)))

(declare-fun lemmaUpdatePreservesForallPairs!26 (MutableMap!4036 tuple2!34362 Regex!9709 Int) Unit!49756)

(assert (=> d!868484 (= lt!1063073 (lemmaUpdatePreservesForallPairs!26 (cache!4174 (_2!20315 lt!1062855)) lt!1063072 (_1!20315 lt!1062855) lambda!115767))))

(assert (=> d!868484 (= lt!1063072 (tuple2!34363 (regOne!19931 r!13156) a!2409))))

(assert (=> d!868484 (validCacheMap!45 (cache!4174 (_2!20315 lt!1062855)))))

(assert (=> d!868484 (= (update!258 (_2!20315 lt!1062855) (regOne!19931 r!13156) a!2409 (_1!20315 lt!1062855)) lt!1063070)))

(declare-fun bs!539429 () Bool)

(assert (= bs!539429 d!868484))

(declare-fun m!3426014 () Bool)

(assert (=> bs!539429 m!3426014))

(declare-fun m!3426016 () Bool)

(assert (=> bs!539429 m!3426016))

(declare-fun m!3426018 () Bool)

(assert (=> bs!539429 m!3426018))

(declare-fun m!3426020 () Bool)

(assert (=> bs!539429 m!3426020))

(declare-fun m!3426022 () Bool)

(assert (=> bs!539429 m!3426022))

(declare-fun m!3426024 () Bool)

(assert (=> bs!539429 m!3426024))

(declare-fun m!3426026 () Bool)

(assert (=> bs!539429 m!3426026))

(assert (=> b!3161243 d!868484))

(declare-fun b!3161485 () Bool)

(declare-fun e!1969606 () Bool)

(declare-fun tp!994678 () Bool)

(assert (=> b!3161485 (= e!1969606 tp!994678)))

(declare-fun b!3161483 () Bool)

(assert (=> b!3161483 (= e!1969606 tp_is_empty!16981)))

(assert (=> b!3161286 (= tp!994662 e!1969606)))

(declare-fun b!3161486 () Bool)

(declare-fun tp!994682 () Bool)

(declare-fun tp!994680 () Bool)

(assert (=> b!3161486 (= e!1969606 (and tp!994682 tp!994680))))

(declare-fun b!3161484 () Bool)

(declare-fun tp!994679 () Bool)

(declare-fun tp!994681 () Bool)

(assert (=> b!3161484 (= e!1969606 (and tp!994679 tp!994681))))

(assert (= (and b!3161286 ((_ is ElementMatch!9709) (reg!10038 (regOne!19931 r!13156)))) b!3161483))

(assert (= (and b!3161286 ((_ is Concat!15030) (reg!10038 (regOne!19931 r!13156)))) b!3161484))

(assert (= (and b!3161286 ((_ is Star!9709) (reg!10038 (regOne!19931 r!13156)))) b!3161485))

(assert (= (and b!3161286 ((_ is Union!9709) (reg!10038 (regOne!19931 r!13156)))) b!3161486))

(declare-fun b!3161489 () Bool)

(declare-fun e!1969607 () Bool)

(declare-fun tp!994683 () Bool)

(assert (=> b!3161489 (= e!1969607 tp!994683)))

(declare-fun b!3161487 () Bool)

(assert (=> b!3161487 (= e!1969607 tp_is_empty!16981)))

(assert (=> b!3161287 (= tp!994666 e!1969607)))

(declare-fun b!3161490 () Bool)

(declare-fun tp!994687 () Bool)

(declare-fun tp!994685 () Bool)

(assert (=> b!3161490 (= e!1969607 (and tp!994687 tp!994685))))

(declare-fun b!3161488 () Bool)

(declare-fun tp!994684 () Bool)

(declare-fun tp!994686 () Bool)

(assert (=> b!3161488 (= e!1969607 (and tp!994684 tp!994686))))

(assert (= (and b!3161287 ((_ is ElementMatch!9709) (regOne!19931 (regOne!19931 r!13156)))) b!3161487))

(assert (= (and b!3161287 ((_ is Concat!15030) (regOne!19931 (regOne!19931 r!13156)))) b!3161488))

(assert (= (and b!3161287 ((_ is Star!9709) (regOne!19931 (regOne!19931 r!13156)))) b!3161489))

(assert (= (and b!3161287 ((_ is Union!9709) (regOne!19931 (regOne!19931 r!13156)))) b!3161490))

(declare-fun b!3161493 () Bool)

(declare-fun e!1969608 () Bool)

(declare-fun tp!994688 () Bool)

(assert (=> b!3161493 (= e!1969608 tp!994688)))

(declare-fun b!3161491 () Bool)

(assert (=> b!3161491 (= e!1969608 tp_is_empty!16981)))

(assert (=> b!3161287 (= tp!994664 e!1969608)))

(declare-fun b!3161494 () Bool)

(declare-fun tp!994692 () Bool)

(declare-fun tp!994690 () Bool)

(assert (=> b!3161494 (= e!1969608 (and tp!994692 tp!994690))))

(declare-fun b!3161492 () Bool)

(declare-fun tp!994689 () Bool)

(declare-fun tp!994691 () Bool)

(assert (=> b!3161492 (= e!1969608 (and tp!994689 tp!994691))))

(assert (= (and b!3161287 ((_ is ElementMatch!9709) (regTwo!19931 (regOne!19931 r!13156)))) b!3161491))

(assert (= (and b!3161287 ((_ is Concat!15030) (regTwo!19931 (regOne!19931 r!13156)))) b!3161492))

(assert (= (and b!3161287 ((_ is Star!9709) (regTwo!19931 (regOne!19931 r!13156)))) b!3161493))

(assert (= (and b!3161287 ((_ is Union!9709) (regTwo!19931 (regOne!19931 r!13156)))) b!3161494))

(declare-fun b!3161497 () Bool)

(declare-fun e!1969609 () Bool)

(declare-fun tp!994693 () Bool)

(assert (=> b!3161497 (= e!1969609 tp!994693)))

(declare-fun b!3161495 () Bool)

(assert (=> b!3161495 (= e!1969609 tp_is_empty!16981)))

(assert (=> b!3161279 (= tp!994654 e!1969609)))

(declare-fun b!3161498 () Bool)

(declare-fun tp!994697 () Bool)

(declare-fun tp!994695 () Bool)

(assert (=> b!3161498 (= e!1969609 (and tp!994697 tp!994695))))

(declare-fun b!3161496 () Bool)

(declare-fun tp!994694 () Bool)

(declare-fun tp!994696 () Bool)

(assert (=> b!3161496 (= e!1969609 (and tp!994694 tp!994696))))

(assert (= (and b!3161279 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18740))))) b!3161495))

(assert (= (and b!3161279 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 mapValue!18740))))) b!3161496))

(assert (= (and b!3161279 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18740))))) b!3161497))

(assert (= (and b!3161279 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18740))))) b!3161498))

(declare-fun b!3161501 () Bool)

(declare-fun e!1969610 () Bool)

(declare-fun tp!994698 () Bool)

(assert (=> b!3161501 (= e!1969610 tp!994698)))

(declare-fun b!3161499 () Bool)

(assert (=> b!3161499 (= e!1969610 tp_is_empty!16981)))

(assert (=> b!3161279 (= tp!994655 e!1969610)))

(declare-fun b!3161502 () Bool)

(declare-fun tp!994702 () Bool)

(declare-fun tp!994700 () Bool)

(assert (=> b!3161502 (= e!1969610 (and tp!994702 tp!994700))))

(declare-fun b!3161500 () Bool)

(declare-fun tp!994699 () Bool)

(declare-fun tp!994701 () Bool)

(assert (=> b!3161500 (= e!1969610 (and tp!994699 tp!994701))))

(assert (= (and b!3161279 ((_ is ElementMatch!9709) (_2!20314 (h!40833 mapValue!18740)))) b!3161499))

(assert (= (and b!3161279 ((_ is Concat!15030) (_2!20314 (h!40833 mapValue!18740)))) b!3161500))

(assert (= (and b!3161279 ((_ is Star!9709) (_2!20314 (h!40833 mapValue!18740)))) b!3161501))

(assert (= (and b!3161279 ((_ is Union!9709) (_2!20314 (h!40833 mapValue!18740)))) b!3161502))

(declare-fun e!1969611 () Bool)

(declare-fun tp!994704 () Bool)

(declare-fun tp!994705 () Bool)

(declare-fun tp!994703 () Bool)

(declare-fun b!3161503 () Bool)

(assert (=> b!3161503 (= e!1969611 (and tp!994703 tp_is_empty!16981 tp!994704 tp!994705))))

(assert (=> b!3161279 (= tp!994656 e!1969611)))

(assert (= (and b!3161279 ((_ is Cons!35413) (t!234602 mapValue!18740))) b!3161503))

(declare-fun b!3161506 () Bool)

(declare-fun e!1969612 () Bool)

(declare-fun tp!994706 () Bool)

(assert (=> b!3161506 (= e!1969612 tp!994706)))

(declare-fun b!3161504 () Bool)

(assert (=> b!3161504 (= e!1969612 tp_is_empty!16981)))

(assert (=> b!3161285 (= tp!994663 e!1969612)))

(declare-fun b!3161507 () Bool)

(declare-fun tp!994710 () Bool)

(declare-fun tp!994708 () Bool)

(assert (=> b!3161507 (= e!1969612 (and tp!994710 tp!994708))))

(declare-fun b!3161505 () Bool)

(declare-fun tp!994707 () Bool)

(declare-fun tp!994709 () Bool)

(assert (=> b!3161505 (= e!1969612 (and tp!994707 tp!994709))))

(assert (= (and b!3161285 ((_ is ElementMatch!9709) (regOne!19930 (regOne!19931 r!13156)))) b!3161504))

(assert (= (and b!3161285 ((_ is Concat!15030) (regOne!19930 (regOne!19931 r!13156)))) b!3161505))

(assert (= (and b!3161285 ((_ is Star!9709) (regOne!19930 (regOne!19931 r!13156)))) b!3161506))

(assert (= (and b!3161285 ((_ is Union!9709) (regOne!19930 (regOne!19931 r!13156)))) b!3161507))

(declare-fun b!3161510 () Bool)

(declare-fun e!1969613 () Bool)

(declare-fun tp!994711 () Bool)

(assert (=> b!3161510 (= e!1969613 tp!994711)))

(declare-fun b!3161508 () Bool)

(assert (=> b!3161508 (= e!1969613 tp_is_empty!16981)))

(assert (=> b!3161285 (= tp!994665 e!1969613)))

(declare-fun b!3161511 () Bool)

(declare-fun tp!994715 () Bool)

(declare-fun tp!994713 () Bool)

(assert (=> b!3161511 (= e!1969613 (and tp!994715 tp!994713))))

(declare-fun b!3161509 () Bool)

(declare-fun tp!994712 () Bool)

(declare-fun tp!994714 () Bool)

(assert (=> b!3161509 (= e!1969613 (and tp!994712 tp!994714))))

(assert (= (and b!3161285 ((_ is ElementMatch!9709) (regTwo!19930 (regOne!19931 r!13156)))) b!3161508))

(assert (= (and b!3161285 ((_ is Concat!15030) (regTwo!19930 (regOne!19931 r!13156)))) b!3161509))

(assert (= (and b!3161285 ((_ is Star!9709) (regTwo!19930 (regOne!19931 r!13156)))) b!3161510))

(assert (= (and b!3161285 ((_ is Union!9709) (regTwo!19930 (regOne!19931 r!13156)))) b!3161511))

(declare-fun b!3161514 () Bool)

(declare-fun e!1969614 () Bool)

(declare-fun tp!994716 () Bool)

(assert (=> b!3161514 (= e!1969614 tp!994716)))

(declare-fun b!3161512 () Bool)

(assert (=> b!3161512 (= e!1969614 tp_is_empty!16981)))

(assert (=> b!3161293 (= tp!994675 e!1969614)))

(declare-fun b!3161515 () Bool)

(declare-fun tp!994720 () Bool)

(declare-fun tp!994718 () Bool)

(assert (=> b!3161515 (= e!1969614 (and tp!994720 tp!994718))))

(declare-fun b!3161513 () Bool)

(declare-fun tp!994717 () Bool)

(declare-fun tp!994719 () Bool)

(assert (=> b!3161513 (= e!1969614 (and tp!994717 tp!994719))))

(assert (= (and b!3161293 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161512))

(assert (= (and b!3161293 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161513))

(assert (= (and b!3161293 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161514))

(assert (= (and b!3161293 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161515))

(declare-fun b!3161518 () Bool)

(declare-fun e!1969615 () Bool)

(declare-fun tp!994721 () Bool)

(assert (=> b!3161518 (= e!1969615 tp!994721)))

(declare-fun b!3161516 () Bool)

(assert (=> b!3161516 (= e!1969615 tp_is_empty!16981)))

(assert (=> b!3161293 (= tp!994676 e!1969615)))

(declare-fun b!3161519 () Bool)

(declare-fun tp!994725 () Bool)

(declare-fun tp!994723 () Bool)

(assert (=> b!3161519 (= e!1969615 (and tp!994725 tp!994723))))

(declare-fun b!3161517 () Bool)

(declare-fun tp!994722 () Bool)

(declare-fun tp!994724 () Bool)

(assert (=> b!3161517 (= e!1969615 (and tp!994722 tp!994724))))

(assert (= (and b!3161293 ((_ is ElementMatch!9709) (_2!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161516))

(assert (= (and b!3161293 ((_ is Concat!15030) (_2!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161517))

(assert (= (and b!3161293 ((_ is Star!9709) (_2!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161518))

(assert (= (and b!3161293 ((_ is Union!9709) (_2!20314 (h!40833 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161519))

(declare-fun tp!994728 () Bool)

(declare-fun tp!994726 () Bool)

(declare-fun e!1969616 () Bool)

(declare-fun tp!994727 () Bool)

(declare-fun b!3161520 () Bool)

(assert (=> b!3161520 (= e!1969616 (and tp!994726 tp_is_empty!16981 tp!994727 tp!994728))))

(assert (=> b!3161293 (= tp!994677 e!1969616)))

(assert (= (and b!3161293 ((_ is Cons!35413) (t!234602 (minValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))) b!3161520))

(declare-fun b!3161531 () Bool)

(declare-fun e!1969625 () Bool)

(declare-fun lt!1063076 () MutLongMap!4130)

(assert (=> b!3161531 (= e!1969625 ((_ is LongMap!4130) lt!1063076))))

(assert (=> b!3161531 (= lt!1063076 (v!35045 (underlying!8490 (cache!4174 (_2!20315 (derivativeStepMem!19 (regOne!19931 r!13156) a!2409 cache!347))))))))

(declare-fun b!3161530 () Bool)

(declare-fun e!1969624 () Bool)

(assert (=> b!3161530 (= e!1969624 e!1969625)))

(declare-fun b!3161529 () Bool)

(declare-fun e!1969623 () Bool)

(assert (=> b!3161529 (= e!1969623 e!1969624)))

(assert (=> d!868442 (= true e!1969623)))

(assert (= b!3161530 b!3161531))

(assert (= (and b!3161529 ((_ is HashMap!4036) (cache!4174 (_2!20315 (derivativeStepMem!19 (regOne!19931 r!13156) a!2409 cache!347))))) b!3161530))

(assert (= d!868442 b!3161529))

(declare-fun b!3161534 () Bool)

(declare-fun e!1969626 () Bool)

(declare-fun tp!994729 () Bool)

(assert (=> b!3161534 (= e!1969626 tp!994729)))

(declare-fun b!3161532 () Bool)

(assert (=> b!3161532 (= e!1969626 tp_is_empty!16981)))

(assert (=> b!3161263 (= tp!994620 e!1969626)))

(declare-fun b!3161535 () Bool)

(declare-fun tp!994733 () Bool)

(declare-fun tp!994731 () Bool)

(assert (=> b!3161535 (= e!1969626 (and tp!994733 tp!994731))))

(declare-fun b!3161533 () Bool)

(declare-fun tp!994730 () Bool)

(declare-fun tp!994732 () Bool)

(assert (=> b!3161533 (= e!1969626 (and tp!994730 tp!994732))))

(assert (= (and b!3161263 ((_ is ElementMatch!9709) (regOne!19930 (regTwo!19930 r!13156)))) b!3161532))

(assert (= (and b!3161263 ((_ is Concat!15030) (regOne!19930 (regTwo!19930 r!13156)))) b!3161533))

(assert (= (and b!3161263 ((_ is Star!9709) (regOne!19930 (regTwo!19930 r!13156)))) b!3161534))

(assert (= (and b!3161263 ((_ is Union!9709) (regOne!19930 (regTwo!19930 r!13156)))) b!3161535))

(declare-fun b!3161538 () Bool)

(declare-fun e!1969627 () Bool)

(declare-fun tp!994734 () Bool)

(assert (=> b!3161538 (= e!1969627 tp!994734)))

(declare-fun b!3161536 () Bool)

(assert (=> b!3161536 (= e!1969627 tp_is_empty!16981)))

(assert (=> b!3161263 (= tp!994622 e!1969627)))

(declare-fun b!3161539 () Bool)

(declare-fun tp!994738 () Bool)

(declare-fun tp!994736 () Bool)

(assert (=> b!3161539 (= e!1969627 (and tp!994738 tp!994736))))

(declare-fun b!3161537 () Bool)

(declare-fun tp!994735 () Bool)

(declare-fun tp!994737 () Bool)

(assert (=> b!3161537 (= e!1969627 (and tp!994735 tp!994737))))

(assert (= (and b!3161263 ((_ is ElementMatch!9709) (regTwo!19930 (regTwo!19930 r!13156)))) b!3161536))

(assert (= (and b!3161263 ((_ is Concat!15030) (regTwo!19930 (regTwo!19930 r!13156)))) b!3161537))

(assert (= (and b!3161263 ((_ is Star!9709) (regTwo!19930 (regTwo!19930 r!13156)))) b!3161538))

(assert (= (and b!3161263 ((_ is Union!9709) (regTwo!19930 (regTwo!19930 r!13156)))) b!3161539))

(declare-fun b!3161542 () Bool)

(declare-fun e!1969628 () Bool)

(declare-fun tp!994739 () Bool)

(assert (=> b!3161542 (= e!1969628 tp!994739)))

(declare-fun b!3161540 () Bool)

(assert (=> b!3161540 (= e!1969628 tp_is_empty!16981)))

(assert (=> b!3161292 (= tp!994672 e!1969628)))

(declare-fun b!3161543 () Bool)

(declare-fun tp!994743 () Bool)

(declare-fun tp!994741 () Bool)

(assert (=> b!3161543 (= e!1969628 (and tp!994743 tp!994741))))

(declare-fun b!3161541 () Bool)

(declare-fun tp!994740 () Bool)

(declare-fun tp!994742 () Bool)

(assert (=> b!3161541 (= e!1969628 (and tp!994740 tp!994742))))

(assert (= (and b!3161292 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161540))

(assert (= (and b!3161292 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161541))

(assert (= (and b!3161292 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161542))

(assert (= (and b!3161292 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))))) b!3161543))

(declare-fun b!3161546 () Bool)

(declare-fun e!1969629 () Bool)

(declare-fun tp!994744 () Bool)

(assert (=> b!3161546 (= e!1969629 tp!994744)))

(declare-fun b!3161544 () Bool)

(assert (=> b!3161544 (= e!1969629 tp_is_empty!16981)))

(assert (=> b!3161292 (= tp!994673 e!1969629)))

(declare-fun b!3161547 () Bool)

(declare-fun tp!994748 () Bool)

(declare-fun tp!994746 () Bool)

(assert (=> b!3161547 (= e!1969629 (and tp!994748 tp!994746))))

(declare-fun b!3161545 () Bool)

(declare-fun tp!994745 () Bool)

(declare-fun tp!994747 () Bool)

(assert (=> b!3161545 (= e!1969629 (and tp!994745 tp!994747))))

(assert (= (and b!3161292 ((_ is ElementMatch!9709) (_2!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161544))

(assert (= (and b!3161292 ((_ is Concat!15030) (_2!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161545))

(assert (= (and b!3161292 ((_ is Star!9709) (_2!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161546))

(assert (= (and b!3161292 ((_ is Union!9709) (_2!20314 (h!40833 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347)))))))))) b!3161547))

(declare-fun tp!994749 () Bool)

(declare-fun b!3161548 () Bool)

(declare-fun tp!994750 () Bool)

(declare-fun tp!994751 () Bool)

(declare-fun e!1969630 () Bool)

(assert (=> b!3161548 (= e!1969630 (and tp!994749 tp_is_empty!16981 tp!994750 tp!994751))))

(assert (=> b!3161292 (= tp!994674 e!1969630)))

(assert (= (and b!3161292 ((_ is Cons!35413) (t!234602 (zeroValue!4389 (v!35044 (underlying!8489 (v!35045 (underlying!8490 (cache!4174 cache!347))))))))) b!3161548))

(declare-fun b!3161551 () Bool)

(declare-fun e!1969631 () Bool)

(declare-fun tp!994752 () Bool)

(assert (=> b!3161551 (= e!1969631 tp!994752)))

(declare-fun b!3161549 () Bool)

(assert (=> b!3161549 (= e!1969631 tp_is_empty!16981)))

(assert (=> b!3161264 (= tp!994619 e!1969631)))

(declare-fun b!3161552 () Bool)

(declare-fun tp!994756 () Bool)

(declare-fun tp!994754 () Bool)

(assert (=> b!3161552 (= e!1969631 (and tp!994756 tp!994754))))

(declare-fun b!3161550 () Bool)

(declare-fun tp!994753 () Bool)

(declare-fun tp!994755 () Bool)

(assert (=> b!3161550 (= e!1969631 (and tp!994753 tp!994755))))

(assert (= (and b!3161264 ((_ is ElementMatch!9709) (reg!10038 (regTwo!19930 r!13156)))) b!3161549))

(assert (= (and b!3161264 ((_ is Concat!15030) (reg!10038 (regTwo!19930 r!13156)))) b!3161550))

(assert (= (and b!3161264 ((_ is Star!9709) (reg!10038 (regTwo!19930 r!13156)))) b!3161551))

(assert (= (and b!3161264 ((_ is Union!9709) (reg!10038 (regTwo!19930 r!13156)))) b!3161552))

(declare-fun b!3161555 () Bool)

(declare-fun e!1969632 () Bool)

(declare-fun tp!994757 () Bool)

(assert (=> b!3161555 (= e!1969632 tp!994757)))

(declare-fun b!3161553 () Bool)

(assert (=> b!3161553 (= e!1969632 tp_is_empty!16981)))

(assert (=> b!3161278 (= tp!994652 e!1969632)))

(declare-fun b!3161556 () Bool)

(declare-fun tp!994761 () Bool)

(declare-fun tp!994759 () Bool)

(assert (=> b!3161556 (= e!1969632 (and tp!994761 tp!994759))))

(declare-fun b!3161554 () Bool)

(declare-fun tp!994758 () Bool)

(declare-fun tp!994760 () Bool)

(assert (=> b!3161554 (= e!1969632 (and tp!994758 tp!994760))))

(assert (= (and b!3161278 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18743))))) b!3161553))

(assert (= (and b!3161278 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 mapDefault!18743))))) b!3161554))

(assert (= (and b!3161278 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18743))))) b!3161555))

(assert (= (and b!3161278 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18743))))) b!3161556))

(declare-fun b!3161559 () Bool)

(declare-fun e!1969633 () Bool)

(declare-fun tp!994762 () Bool)

(assert (=> b!3161559 (= e!1969633 tp!994762)))

(declare-fun b!3161557 () Bool)

(assert (=> b!3161557 (= e!1969633 tp_is_empty!16981)))

(assert (=> b!3161278 (= tp!994650 e!1969633)))

(declare-fun b!3161560 () Bool)

(declare-fun tp!994766 () Bool)

(declare-fun tp!994764 () Bool)

(assert (=> b!3161560 (= e!1969633 (and tp!994766 tp!994764))))

(declare-fun b!3161558 () Bool)

(declare-fun tp!994763 () Bool)

(declare-fun tp!994765 () Bool)

(assert (=> b!3161558 (= e!1969633 (and tp!994763 tp!994765))))

(assert (= (and b!3161278 ((_ is ElementMatch!9709) (_2!20314 (h!40833 mapDefault!18743)))) b!3161557))

(assert (= (and b!3161278 ((_ is Concat!15030) (_2!20314 (h!40833 mapDefault!18743)))) b!3161558))

(assert (= (and b!3161278 ((_ is Star!9709) (_2!20314 (h!40833 mapDefault!18743)))) b!3161559))

(assert (= (and b!3161278 ((_ is Union!9709) (_2!20314 (h!40833 mapDefault!18743)))) b!3161560))

(declare-fun tp!994767 () Bool)

(declare-fun e!1969634 () Bool)

(declare-fun b!3161561 () Bool)

(declare-fun tp!994769 () Bool)

(declare-fun tp!994768 () Bool)

(assert (=> b!3161561 (= e!1969634 (and tp!994767 tp_is_empty!16981 tp!994768 tp!994769))))

(assert (=> b!3161278 (= tp!994651 e!1969634)))

(assert (= (and b!3161278 ((_ is Cons!35413) (t!234602 mapDefault!18743))) b!3161561))

(declare-fun b!3161564 () Bool)

(declare-fun e!1969635 () Bool)

(declare-fun tp!994770 () Bool)

(assert (=> b!3161564 (= e!1969635 tp!994770)))

(declare-fun b!3161562 () Bool)

(assert (=> b!3161562 (= e!1969635 tp_is_empty!16981)))

(assert (=> b!3161270 (= tp!994630 e!1969635)))

(declare-fun b!3161565 () Bool)

(declare-fun tp!994774 () Bool)

(declare-fun tp!994772 () Bool)

(assert (=> b!3161565 (= e!1969635 (and tp!994774 tp!994772))))

(declare-fun b!3161563 () Bool)

(declare-fun tp!994771 () Bool)

(declare-fun tp!994773 () Bool)

(assert (=> b!3161563 (= e!1969635 (and tp!994771 tp!994773))))

(assert (= (and b!3161270 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18740))))) b!3161562))

(assert (= (and b!3161270 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 mapDefault!18740))))) b!3161563))

(assert (= (and b!3161270 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18740))))) b!3161564))

(assert (= (and b!3161270 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 mapDefault!18740))))) b!3161565))

(declare-fun b!3161568 () Bool)

(declare-fun e!1969636 () Bool)

(declare-fun tp!994775 () Bool)

(assert (=> b!3161568 (= e!1969636 tp!994775)))

(declare-fun b!3161566 () Bool)

(assert (=> b!3161566 (= e!1969636 tp_is_empty!16981)))

(assert (=> b!3161270 (= tp!994631 e!1969636)))

(declare-fun b!3161569 () Bool)

(declare-fun tp!994779 () Bool)

(declare-fun tp!994777 () Bool)

(assert (=> b!3161569 (= e!1969636 (and tp!994779 tp!994777))))

(declare-fun b!3161567 () Bool)

(declare-fun tp!994776 () Bool)

(declare-fun tp!994778 () Bool)

(assert (=> b!3161567 (= e!1969636 (and tp!994776 tp!994778))))

(assert (= (and b!3161270 ((_ is ElementMatch!9709) (_2!20314 (h!40833 mapDefault!18740)))) b!3161566))

(assert (= (and b!3161270 ((_ is Concat!15030) (_2!20314 (h!40833 mapDefault!18740)))) b!3161567))

(assert (= (and b!3161270 ((_ is Star!9709) (_2!20314 (h!40833 mapDefault!18740)))) b!3161568))

(assert (= (and b!3161270 ((_ is Union!9709) (_2!20314 (h!40833 mapDefault!18740)))) b!3161569))

(declare-fun tp!994780 () Bool)

(declare-fun tp!994782 () Bool)

(declare-fun b!3161570 () Bool)

(declare-fun e!1969637 () Bool)

(declare-fun tp!994781 () Bool)

(assert (=> b!3161570 (= e!1969637 (and tp!994780 tp_is_empty!16981 tp!994781 tp!994782))))

(assert (=> b!3161270 (= tp!994632 e!1969637)))

(assert (= (and b!3161270 ((_ is Cons!35413) (t!234602 mapDefault!18740))) b!3161570))

(declare-fun b!3161573 () Bool)

(declare-fun e!1969638 () Bool)

(declare-fun tp!994783 () Bool)

(assert (=> b!3161573 (= e!1969638 tp!994783)))

(declare-fun b!3161571 () Bool)

(assert (=> b!3161571 (= e!1969638 tp_is_empty!16981)))

(assert (=> b!3161265 (= tp!994623 e!1969638)))

(declare-fun b!3161574 () Bool)

(declare-fun tp!994787 () Bool)

(declare-fun tp!994785 () Bool)

(assert (=> b!3161574 (= e!1969638 (and tp!994787 tp!994785))))

(declare-fun b!3161572 () Bool)

(declare-fun tp!994784 () Bool)

(declare-fun tp!994786 () Bool)

(assert (=> b!3161572 (= e!1969638 (and tp!994784 tp!994786))))

(assert (= (and b!3161265 ((_ is ElementMatch!9709) (regOne!19931 (regTwo!19930 r!13156)))) b!3161571))

(assert (= (and b!3161265 ((_ is Concat!15030) (regOne!19931 (regTwo!19930 r!13156)))) b!3161572))

(assert (= (and b!3161265 ((_ is Star!9709) (regOne!19931 (regTwo!19930 r!13156)))) b!3161573))

(assert (= (and b!3161265 ((_ is Union!9709) (regOne!19931 (regTwo!19930 r!13156)))) b!3161574))

(declare-fun b!3161577 () Bool)

(declare-fun e!1969639 () Bool)

(declare-fun tp!994788 () Bool)

(assert (=> b!3161577 (= e!1969639 tp!994788)))

(declare-fun b!3161575 () Bool)

(assert (=> b!3161575 (= e!1969639 tp_is_empty!16981)))

(assert (=> b!3161265 (= tp!994621 e!1969639)))

(declare-fun b!3161578 () Bool)

(declare-fun tp!994792 () Bool)

(declare-fun tp!994790 () Bool)

(assert (=> b!3161578 (= e!1969639 (and tp!994792 tp!994790))))

(declare-fun b!3161576 () Bool)

(declare-fun tp!994789 () Bool)

(declare-fun tp!994791 () Bool)

(assert (=> b!3161576 (= e!1969639 (and tp!994789 tp!994791))))

(assert (= (and b!3161265 ((_ is ElementMatch!9709) (regTwo!19931 (regTwo!19930 r!13156)))) b!3161575))

(assert (= (and b!3161265 ((_ is Concat!15030) (regTwo!19931 (regTwo!19930 r!13156)))) b!3161576))

(assert (= (and b!3161265 ((_ is Star!9709) (regTwo!19931 (regTwo!19930 r!13156)))) b!3161577))

(assert (= (and b!3161265 ((_ is Union!9709) (regTwo!19931 (regTwo!19930 r!13156)))) b!3161578))

(declare-fun tp!994793 () Bool)

(declare-fun tp!994794 () Bool)

(declare-fun e!1969640 () Bool)

(declare-fun b!3161579 () Bool)

(declare-fun tp!994799 () Bool)

(assert (=> b!3161579 (= e!1969640 (and tp!994799 tp_is_empty!16981 tp!994794 tp!994793))))

(declare-fun tp!994798 () Bool)

(declare-fun b!3161580 () Bool)

(declare-fun tp!994796 () Bool)

(declare-fun tp!994797 () Bool)

(declare-fun e!1969641 () Bool)

(assert (=> b!3161580 (= e!1969641 (and tp!994798 tp_is_empty!16981 tp!994796 tp!994797))))

(declare-fun condMapEmpty!18744 () Bool)

(declare-fun mapDefault!18744 () List!35537)

(assert (=> mapNonEmpty!18743 (= condMapEmpty!18744 (= mapRest!18743 ((as const (Array (_ BitVec 32) List!35537)) mapDefault!18744)))))

(declare-fun mapRes!18744 () Bool)

(assert (=> mapNonEmpty!18743 (= tp!994649 (and e!1969641 mapRes!18744))))

(declare-fun mapIsEmpty!18744 () Bool)

(assert (=> mapIsEmpty!18744 mapRes!18744))

(declare-fun mapNonEmpty!18744 () Bool)

(declare-fun tp!994795 () Bool)

(assert (=> mapNonEmpty!18744 (= mapRes!18744 (and tp!994795 e!1969640))))

(declare-fun mapKey!18744 () (_ BitVec 32))

(declare-fun mapRest!18744 () (Array (_ BitVec 32) List!35537))

(declare-fun mapValue!18744 () List!35537)

(assert (=> mapNonEmpty!18744 (= mapRest!18743 (store mapRest!18744 mapKey!18744 mapValue!18744))))

(assert (= (and mapNonEmpty!18743 condMapEmpty!18744) mapIsEmpty!18744))

(assert (= (and mapNonEmpty!18743 (not condMapEmpty!18744)) mapNonEmpty!18744))

(assert (= (and mapNonEmpty!18744 ((_ is Cons!35413) mapValue!18744)) b!3161579))

(assert (= (and mapNonEmpty!18743 ((_ is Cons!35413) mapDefault!18744)) b!3161580))

(declare-fun m!3426028 () Bool)

(assert (=> mapNonEmpty!18744 m!3426028))

(declare-fun b!3161583 () Bool)

(declare-fun e!1969642 () Bool)

(declare-fun tp!994800 () Bool)

(assert (=> b!3161583 (= e!1969642 tp!994800)))

(declare-fun b!3161581 () Bool)

(assert (=> b!3161581 (= e!1969642 tp_is_empty!16981)))

(assert (=> b!3161277 (= tp!994653 e!1969642)))

(declare-fun b!3161584 () Bool)

(declare-fun tp!994804 () Bool)

(declare-fun tp!994802 () Bool)

(assert (=> b!3161584 (= e!1969642 (and tp!994804 tp!994802))))

(declare-fun b!3161582 () Bool)

(declare-fun tp!994801 () Bool)

(declare-fun tp!994803 () Bool)

(assert (=> b!3161582 (= e!1969642 (and tp!994801 tp!994803))))

(assert (= (and b!3161277 ((_ is ElementMatch!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18743))))) b!3161581))

(assert (= (and b!3161277 ((_ is Concat!15030) (_1!20313 (_1!20314 (h!40833 mapValue!18743))))) b!3161582))

(assert (= (and b!3161277 ((_ is Star!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18743))))) b!3161583))

(assert (= (and b!3161277 ((_ is Union!9709) (_1!20313 (_1!20314 (h!40833 mapValue!18743))))) b!3161584))

(declare-fun b!3161587 () Bool)

(declare-fun e!1969643 () Bool)

(declare-fun tp!994805 () Bool)

(assert (=> b!3161587 (= e!1969643 tp!994805)))

(declare-fun b!3161585 () Bool)

(assert (=> b!3161585 (= e!1969643 tp_is_empty!16981)))

(assert (=> b!3161277 (= tp!994648 e!1969643)))

(declare-fun b!3161588 () Bool)

(declare-fun tp!994809 () Bool)

(declare-fun tp!994807 () Bool)

(assert (=> b!3161588 (= e!1969643 (and tp!994809 tp!994807))))

(declare-fun b!3161586 () Bool)

(declare-fun tp!994806 () Bool)

(declare-fun tp!994808 () Bool)

(assert (=> b!3161586 (= e!1969643 (and tp!994806 tp!994808))))

(assert (= (and b!3161277 ((_ is ElementMatch!9709) (_2!20314 (h!40833 mapValue!18743)))) b!3161585))

(assert (= (and b!3161277 ((_ is Concat!15030) (_2!20314 (h!40833 mapValue!18743)))) b!3161586))

(assert (= (and b!3161277 ((_ is Star!9709) (_2!20314 (h!40833 mapValue!18743)))) b!3161587))

(assert (= (and b!3161277 ((_ is Union!9709) (_2!20314 (h!40833 mapValue!18743)))) b!3161588))

(declare-fun e!1969644 () Bool)

(declare-fun tp!994812 () Bool)

(declare-fun tp!994811 () Bool)

(declare-fun tp!994810 () Bool)

(declare-fun b!3161589 () Bool)

(assert (=> b!3161589 (= e!1969644 (and tp!994810 tp_is_empty!16981 tp!994811 tp!994812))))

(assert (=> b!3161277 (= tp!994647 e!1969644)))

(assert (= (and b!3161277 ((_ is Cons!35413) (t!234602 mapValue!18743))) b!3161589))

(declare-fun b!3161592 () Bool)

(declare-fun e!1969645 () Bool)

(declare-fun tp!994813 () Bool)

(assert (=> b!3161592 (= e!1969645 tp!994813)))

(declare-fun b!3161590 () Bool)

(assert (=> b!3161590 (= e!1969645 tp_is_empty!16981)))

(assert (=> b!3161291 (= tp!994671 e!1969645)))

(declare-fun b!3161593 () Bool)

(declare-fun tp!994817 () Bool)

(declare-fun tp!994815 () Bool)

(assert (=> b!3161593 (= e!1969645 (and tp!994817 tp!994815))))

(declare-fun b!3161591 () Bool)

(declare-fun tp!994814 () Bool)

(declare-fun tp!994816 () Bool)

(assert (=> b!3161591 (= e!1969645 (and tp!994814 tp!994816))))

(assert (= (and b!3161291 ((_ is ElementMatch!9709) (regOne!19931 (regTwo!19931 r!13156)))) b!3161590))

(assert (= (and b!3161291 ((_ is Concat!15030) (regOne!19931 (regTwo!19931 r!13156)))) b!3161591))

(assert (= (and b!3161291 ((_ is Star!9709) (regOne!19931 (regTwo!19931 r!13156)))) b!3161592))

(assert (= (and b!3161291 ((_ is Union!9709) (regOne!19931 (regTwo!19931 r!13156)))) b!3161593))

(declare-fun b!3161596 () Bool)

(declare-fun e!1969646 () Bool)

(declare-fun tp!994818 () Bool)

(assert (=> b!3161596 (= e!1969646 tp!994818)))

(declare-fun b!3161594 () Bool)

(assert (=> b!3161594 (= e!1969646 tp_is_empty!16981)))

(assert (=> b!3161291 (= tp!994669 e!1969646)))

(declare-fun b!3161597 () Bool)

(declare-fun tp!994822 () Bool)

(declare-fun tp!994820 () Bool)

(assert (=> b!3161597 (= e!1969646 (and tp!994822 tp!994820))))

(declare-fun b!3161595 () Bool)

(declare-fun tp!994819 () Bool)

(declare-fun tp!994821 () Bool)

(assert (=> b!3161595 (= e!1969646 (and tp!994819 tp!994821))))

(assert (= (and b!3161291 ((_ is ElementMatch!9709) (regTwo!19931 (regTwo!19931 r!13156)))) b!3161594))

(assert (= (and b!3161291 ((_ is Concat!15030) (regTwo!19931 (regTwo!19931 r!13156)))) b!3161595))

(assert (= (and b!3161291 ((_ is Star!9709) (regTwo!19931 (regTwo!19931 r!13156)))) b!3161596))

(assert (= (and b!3161291 ((_ is Union!9709) (regTwo!19931 (regTwo!19931 r!13156)))) b!3161597))

(declare-fun b!3161600 () Bool)

(declare-fun e!1969647 () Bool)

(declare-fun tp!994823 () Bool)

(assert (=> b!3161600 (= e!1969647 tp!994823)))

(declare-fun b!3161598 () Bool)

(assert (=> b!3161598 (= e!1969647 tp_is_empty!16981)))

(assert (=> b!3161282 (= tp!994657 e!1969647)))

(declare-fun b!3161601 () Bool)

(declare-fun tp!994827 () Bool)

(declare-fun tp!994825 () Bool)

(assert (=> b!3161601 (= e!1969647 (and tp!994827 tp!994825))))

(declare-fun b!3161599 () Bool)

(declare-fun tp!994824 () Bool)

(declare-fun tp!994826 () Bool)

(assert (=> b!3161599 (= e!1969647 (and tp!994824 tp!994826))))

(assert (= (and b!3161282 ((_ is ElementMatch!9709) (reg!10038 (reg!10038 r!13156)))) b!3161598))

(assert (= (and b!3161282 ((_ is Concat!15030) (reg!10038 (reg!10038 r!13156)))) b!3161599))

(assert (= (and b!3161282 ((_ is Star!9709) (reg!10038 (reg!10038 r!13156)))) b!3161600))

(assert (= (and b!3161282 ((_ is Union!9709) (reg!10038 (reg!10038 r!13156)))) b!3161601))

(declare-fun b!3161604 () Bool)

(declare-fun e!1969648 () Bool)

(declare-fun tp!994828 () Bool)

(assert (=> b!3161604 (= e!1969648 tp!994828)))

(declare-fun b!3161602 () Bool)

(assert (=> b!3161602 (= e!1969648 tp_is_empty!16981)))

(assert (=> b!3161283 (= tp!994661 e!1969648)))

(declare-fun b!3161605 () Bool)

(declare-fun tp!994832 () Bool)

(declare-fun tp!994830 () Bool)

(assert (=> b!3161605 (= e!1969648 (and tp!994832 tp!994830))))

(declare-fun b!3161603 () Bool)

(declare-fun tp!994829 () Bool)

(declare-fun tp!994831 () Bool)

(assert (=> b!3161603 (= e!1969648 (and tp!994829 tp!994831))))

(assert (= (and b!3161283 ((_ is ElementMatch!9709) (regOne!19931 (reg!10038 r!13156)))) b!3161602))

(assert (= (and b!3161283 ((_ is Concat!15030) (regOne!19931 (reg!10038 r!13156)))) b!3161603))

(assert (= (and b!3161283 ((_ is Star!9709) (regOne!19931 (reg!10038 r!13156)))) b!3161604))

(assert (= (and b!3161283 ((_ is Union!9709) (regOne!19931 (reg!10038 r!13156)))) b!3161605))

(declare-fun b!3161608 () Bool)

(declare-fun e!1969649 () Bool)

(declare-fun tp!994833 () Bool)

(assert (=> b!3161608 (= e!1969649 tp!994833)))

(declare-fun b!3161606 () Bool)

(assert (=> b!3161606 (= e!1969649 tp_is_empty!16981)))

(assert (=> b!3161283 (= tp!994659 e!1969649)))

(declare-fun b!3161609 () Bool)

(declare-fun tp!994837 () Bool)

(declare-fun tp!994835 () Bool)

(assert (=> b!3161609 (= e!1969649 (and tp!994837 tp!994835))))

(declare-fun b!3161607 () Bool)

(declare-fun tp!994834 () Bool)

(declare-fun tp!994836 () Bool)

(assert (=> b!3161607 (= e!1969649 (and tp!994834 tp!994836))))

(assert (= (and b!3161283 ((_ is ElementMatch!9709) (regTwo!19931 (reg!10038 r!13156)))) b!3161606))

(assert (= (and b!3161283 ((_ is Concat!15030) (regTwo!19931 (reg!10038 r!13156)))) b!3161607))

(assert (= (and b!3161283 ((_ is Star!9709) (regTwo!19931 (reg!10038 r!13156)))) b!3161608))

(assert (= (and b!3161283 ((_ is Union!9709) (regTwo!19931 (reg!10038 r!13156)))) b!3161609))

(declare-fun b!3161612 () Bool)

(declare-fun e!1969650 () Bool)

(declare-fun tp!994838 () Bool)

(assert (=> b!3161612 (= e!1969650 tp!994838)))

(declare-fun b!3161610 () Bool)

(assert (=> b!3161610 (= e!1969650 tp_is_empty!16981)))

(assert (=> b!3161261 (= tp!994618 e!1969650)))

(declare-fun b!3161613 () Bool)

(declare-fun tp!994842 () Bool)

(declare-fun tp!994840 () Bool)

(assert (=> b!3161613 (= e!1969650 (and tp!994842 tp!994840))))

(declare-fun b!3161611 () Bool)

(declare-fun tp!994839 () Bool)

(declare-fun tp!994841 () Bool)

(assert (=> b!3161611 (= e!1969650 (and tp!994839 tp!994841))))

(assert (= (and b!3161261 ((_ is ElementMatch!9709) (regOne!19931 (regOne!19930 r!13156)))) b!3161610))

(assert (= (and b!3161261 ((_ is Concat!15030) (regOne!19931 (regOne!19930 r!13156)))) b!3161611))

(assert (= (and b!3161261 ((_ is Star!9709) (regOne!19931 (regOne!19930 r!13156)))) b!3161612))

(assert (= (and b!3161261 ((_ is Union!9709) (regOne!19931 (regOne!19930 r!13156)))) b!3161613))

(declare-fun b!3161616 () Bool)

(declare-fun e!1969651 () Bool)

(declare-fun tp!994843 () Bool)

(assert (=> b!3161616 (= e!1969651 tp!994843)))

(declare-fun b!3161614 () Bool)

(assert (=> b!3161614 (= e!1969651 tp_is_empty!16981)))

(assert (=> b!3161261 (= tp!994616 e!1969651)))

(declare-fun b!3161617 () Bool)

(declare-fun tp!994847 () Bool)

(declare-fun tp!994845 () Bool)

(assert (=> b!3161617 (= e!1969651 (and tp!994847 tp!994845))))

(declare-fun b!3161615 () Bool)

(declare-fun tp!994844 () Bool)

(declare-fun tp!994846 () Bool)

(assert (=> b!3161615 (= e!1969651 (and tp!994844 tp!994846))))

(assert (= (and b!3161261 ((_ is ElementMatch!9709) (regTwo!19931 (regOne!19930 r!13156)))) b!3161614))

(assert (= (and b!3161261 ((_ is Concat!15030) (regTwo!19931 (regOne!19930 r!13156)))) b!3161615))

(assert (= (and b!3161261 ((_ is Star!9709) (regTwo!19931 (regOne!19930 r!13156)))) b!3161616))

(assert (= (and b!3161261 ((_ is Union!9709) (regTwo!19931 (regOne!19930 r!13156)))) b!3161617))

(declare-fun b!3161620 () Bool)

(declare-fun e!1969652 () Bool)

(declare-fun tp!994848 () Bool)

(assert (=> b!3161620 (= e!1969652 tp!994848)))

(declare-fun b!3161618 () Bool)

(assert (=> b!3161618 (= e!1969652 tp_is_empty!16981)))

(assert (=> b!3161289 (= tp!994668 e!1969652)))

(declare-fun b!3161621 () Bool)

(declare-fun tp!994852 () Bool)

(declare-fun tp!994850 () Bool)

(assert (=> b!3161621 (= e!1969652 (and tp!994852 tp!994850))))

(declare-fun b!3161619 () Bool)

(declare-fun tp!994849 () Bool)

(declare-fun tp!994851 () Bool)

(assert (=> b!3161619 (= e!1969652 (and tp!994849 tp!994851))))

(assert (= (and b!3161289 ((_ is ElementMatch!9709) (regOne!19930 (regTwo!19931 r!13156)))) b!3161618))

(assert (= (and b!3161289 ((_ is Concat!15030) (regOne!19930 (regTwo!19931 r!13156)))) b!3161619))

(assert (= (and b!3161289 ((_ is Star!9709) (regOne!19930 (regTwo!19931 r!13156)))) b!3161620))

(assert (= (and b!3161289 ((_ is Union!9709) (regOne!19930 (regTwo!19931 r!13156)))) b!3161621))

(declare-fun b!3161624 () Bool)

(declare-fun e!1969653 () Bool)

(declare-fun tp!994853 () Bool)

(assert (=> b!3161624 (= e!1969653 tp!994853)))

(declare-fun b!3161622 () Bool)

(assert (=> b!3161622 (= e!1969653 tp_is_empty!16981)))

(assert (=> b!3161289 (= tp!994670 e!1969653)))

(declare-fun b!3161625 () Bool)

(declare-fun tp!994857 () Bool)

(declare-fun tp!994855 () Bool)

(assert (=> b!3161625 (= e!1969653 (and tp!994857 tp!994855))))

(declare-fun b!3161623 () Bool)

(declare-fun tp!994854 () Bool)

(declare-fun tp!994856 () Bool)

(assert (=> b!3161623 (= e!1969653 (and tp!994854 tp!994856))))

(assert (= (and b!3161289 ((_ is ElementMatch!9709) (regTwo!19930 (regTwo!19931 r!13156)))) b!3161622))

(assert (= (and b!3161289 ((_ is Concat!15030) (regTwo!19930 (regTwo!19931 r!13156)))) b!3161623))

(assert (= (and b!3161289 ((_ is Star!9709) (regTwo!19930 (regTwo!19931 r!13156)))) b!3161624))

(assert (= (and b!3161289 ((_ is Union!9709) (regTwo!19930 (regTwo!19931 r!13156)))) b!3161625))

(declare-fun b!3161628 () Bool)

(declare-fun e!1969654 () Bool)

(declare-fun tp!994858 () Bool)

(assert (=> b!3161628 (= e!1969654 tp!994858)))

(declare-fun b!3161626 () Bool)

(assert (=> b!3161626 (= e!1969654 tp_is_empty!16981)))

(assert (=> b!3161281 (= tp!994658 e!1969654)))

(declare-fun b!3161629 () Bool)

(declare-fun tp!994862 () Bool)

(declare-fun tp!994860 () Bool)

(assert (=> b!3161629 (= e!1969654 (and tp!994862 tp!994860))))

(declare-fun b!3161627 () Bool)

(declare-fun tp!994859 () Bool)

(declare-fun tp!994861 () Bool)

(assert (=> b!3161627 (= e!1969654 (and tp!994859 tp!994861))))

(assert (= (and b!3161281 ((_ is ElementMatch!9709) (regOne!19930 (reg!10038 r!13156)))) b!3161626))

(assert (= (and b!3161281 ((_ is Concat!15030) (regOne!19930 (reg!10038 r!13156)))) b!3161627))

(assert (= (and b!3161281 ((_ is Star!9709) (regOne!19930 (reg!10038 r!13156)))) b!3161628))

(assert (= (and b!3161281 ((_ is Union!9709) (regOne!19930 (reg!10038 r!13156)))) b!3161629))

(declare-fun b!3161632 () Bool)

(declare-fun e!1969655 () Bool)

(declare-fun tp!994863 () Bool)

(assert (=> b!3161632 (= e!1969655 tp!994863)))

(declare-fun b!3161630 () Bool)

(assert (=> b!3161630 (= e!1969655 tp_is_empty!16981)))

(assert (=> b!3161281 (= tp!994660 e!1969655)))

(declare-fun b!3161633 () Bool)

(declare-fun tp!994867 () Bool)

(declare-fun tp!994865 () Bool)

(assert (=> b!3161633 (= e!1969655 (and tp!994867 tp!994865))))

(declare-fun b!3161631 () Bool)

(declare-fun tp!994864 () Bool)

(declare-fun tp!994866 () Bool)

(assert (=> b!3161631 (= e!1969655 (and tp!994864 tp!994866))))

(assert (= (and b!3161281 ((_ is ElementMatch!9709) (regTwo!19930 (reg!10038 r!13156)))) b!3161630))

(assert (= (and b!3161281 ((_ is Concat!15030) (regTwo!19930 (reg!10038 r!13156)))) b!3161631))

(assert (= (and b!3161281 ((_ is Star!9709) (regTwo!19930 (reg!10038 r!13156)))) b!3161632))

(assert (= (and b!3161281 ((_ is Union!9709) (regTwo!19930 (reg!10038 r!13156)))) b!3161633))

(declare-fun b!3161636 () Bool)

(declare-fun e!1969656 () Bool)

(declare-fun tp!994868 () Bool)

(assert (=> b!3161636 (= e!1969656 tp!994868)))

(declare-fun b!3161634 () Bool)

(assert (=> b!3161634 (= e!1969656 tp_is_empty!16981)))

(assert (=> b!3161290 (= tp!994667 e!1969656)))

(declare-fun b!3161637 () Bool)

(declare-fun tp!994872 () Bool)

(declare-fun tp!994870 () Bool)

(assert (=> b!3161637 (= e!1969656 (and tp!994872 tp!994870))))

(declare-fun b!3161635 () Bool)

(declare-fun tp!994869 () Bool)

(declare-fun tp!994871 () Bool)

(assert (=> b!3161635 (= e!1969656 (and tp!994869 tp!994871))))

(assert (= (and b!3161290 ((_ is ElementMatch!9709) (reg!10038 (regTwo!19931 r!13156)))) b!3161634))

(assert (= (and b!3161290 ((_ is Concat!15030) (reg!10038 (regTwo!19931 r!13156)))) b!3161635))

(assert (= (and b!3161290 ((_ is Star!9709) (reg!10038 (regTwo!19931 r!13156)))) b!3161636))

(assert (= (and b!3161290 ((_ is Union!9709) (reg!10038 (regTwo!19931 r!13156)))) b!3161637))

(declare-fun b!3161640 () Bool)

(declare-fun e!1969657 () Bool)

(declare-fun tp!994873 () Bool)

(assert (=> b!3161640 (= e!1969657 tp!994873)))

(declare-fun b!3161638 () Bool)

(assert (=> b!3161638 (= e!1969657 tp_is_empty!16981)))

(assert (=> b!3161259 (= tp!994615 e!1969657)))

(declare-fun b!3161641 () Bool)

(declare-fun tp!994877 () Bool)

(declare-fun tp!994875 () Bool)

(assert (=> b!3161641 (= e!1969657 (and tp!994877 tp!994875))))

(declare-fun b!3161639 () Bool)

(declare-fun tp!994874 () Bool)

(declare-fun tp!994876 () Bool)

(assert (=> b!3161639 (= e!1969657 (and tp!994874 tp!994876))))

(assert (= (and b!3161259 ((_ is ElementMatch!9709) (regOne!19930 (regOne!19930 r!13156)))) b!3161638))

(assert (= (and b!3161259 ((_ is Concat!15030) (regOne!19930 (regOne!19930 r!13156)))) b!3161639))

(assert (= (and b!3161259 ((_ is Star!9709) (regOne!19930 (regOne!19930 r!13156)))) b!3161640))

(assert (= (and b!3161259 ((_ is Union!9709) (regOne!19930 (regOne!19930 r!13156)))) b!3161641))

(declare-fun b!3161644 () Bool)

(declare-fun e!1969658 () Bool)

(declare-fun tp!994878 () Bool)

(assert (=> b!3161644 (= e!1969658 tp!994878)))

(declare-fun b!3161642 () Bool)

(assert (=> b!3161642 (= e!1969658 tp_is_empty!16981)))

(assert (=> b!3161259 (= tp!994617 e!1969658)))

(declare-fun b!3161645 () Bool)

(declare-fun tp!994882 () Bool)

(declare-fun tp!994880 () Bool)

(assert (=> b!3161645 (= e!1969658 (and tp!994882 tp!994880))))

(declare-fun b!3161643 () Bool)

(declare-fun tp!994879 () Bool)

(declare-fun tp!994881 () Bool)

(assert (=> b!3161643 (= e!1969658 (and tp!994879 tp!994881))))

(assert (= (and b!3161259 ((_ is ElementMatch!9709) (regTwo!19930 (regOne!19930 r!13156)))) b!3161642))

(assert (= (and b!3161259 ((_ is Concat!15030) (regTwo!19930 (regOne!19930 r!13156)))) b!3161643))

(assert (= (and b!3161259 ((_ is Star!9709) (regTwo!19930 (regOne!19930 r!13156)))) b!3161644))

(assert (= (and b!3161259 ((_ is Union!9709) (regTwo!19930 (regOne!19930 r!13156)))) b!3161645))

(declare-fun b!3161648 () Bool)

(declare-fun e!1969659 () Bool)

(declare-fun tp!994883 () Bool)

(assert (=> b!3161648 (= e!1969659 tp!994883)))

(declare-fun b!3161646 () Bool)

(assert (=> b!3161646 (= e!1969659 tp_is_empty!16981)))

(assert (=> b!3161260 (= tp!994614 e!1969659)))

(declare-fun b!3161649 () Bool)

(declare-fun tp!994887 () Bool)

(declare-fun tp!994885 () Bool)

(assert (=> b!3161649 (= e!1969659 (and tp!994887 tp!994885))))

(declare-fun b!3161647 () Bool)

(declare-fun tp!994884 () Bool)

(declare-fun tp!994886 () Bool)

(assert (=> b!3161647 (= e!1969659 (and tp!994884 tp!994886))))

(assert (= (and b!3161260 ((_ is ElementMatch!9709) (reg!10038 (regOne!19930 r!13156)))) b!3161646))

(assert (= (and b!3161260 ((_ is Concat!15030) (reg!10038 (regOne!19930 r!13156)))) b!3161647))

(assert (= (and b!3161260 ((_ is Star!9709) (reg!10038 (regOne!19930 r!13156)))) b!3161648))

(assert (= (and b!3161260 ((_ is Union!9709) (reg!10038 (regOne!19930 r!13156)))) b!3161649))

(declare-fun b_lambda!86379 () Bool)

(assert (= b_lambda!86375 (or (and b!3161153 b_free!83001) b_lambda!86379)))

(declare-fun b_lambda!86381 () Bool)

(assert (= b_lambda!86377 (or (and b!3161153 b_free!83001) b_lambda!86381)))

(check-sat (not b!3161554) (not b_lambda!86379) (not bm!228946) (not b!3161517) (not b!3161497) (not b_next!83705) (not b!3161534) (not bm!228987) (not b!3161510) (not b!3161595) (not d!868474) (not b!3161625) (not b!3161541) (not b!3161593) (not b!3161580) (not b!3161535) (not d!868482) (not bm!228977) (not b!3161519) (not b!3161604) (not b!3161648) (not b!3161568) (not bm!228941) (not b!3161608) (not b!3161624) (not b!3161628) (not b!3161616) (not b!3161518) (not b!3161635) (not d!868484) (not bm!228979) (not b!3161502) (not b!3161313) (not b!3161588) (not b!3161485) (not b!3161509) (not b!3161484) (not b!3161555) (not bm!228976) (not b!3161576) (not b!3161533) (not b!3161641) (not b!3161563) (not bm!228978) (not b!3161547) (not b_next!83707) b_and!209245 (not b!3161629) (not b!3161644) (not b!3161310) (not b!3161586) (not mapNonEmpty!18744) (not d!868472) (not b!3161612) (not b!3161428) (not bm!228983) (not tb!155089) (not b!3161615) (not b!3161607) (not b!3161462) (not b!3161639) (not b!3161620) (not b!3161539) (not b!3161556) (not b!3161494) (not b!3161503) (not b!3161582) (not bm!228982) (not b!3161617) b_and!209249 (not bm!228986) (not b!3161463) (not b!3161333) (not b!3161434) (not b!3161565) (not b!3161552) (not b!3161599) (not b!3161321) (not b!3161479) (not b!3161493) (not b!3161322) (not b!3161567) (not b!3161605) (not b!3161550) (not b!3161480) (not b!3161520) (not b!3161637) (not b!3161513) (not b!3161551) (not b!3161390) (not b!3161572) (not b!3161546) (not d!868462) (not b!3161632) (not b!3161477) (not b!3161537) (not b!3161592) (not b!3161545) (not b!3161613) (not b!3161583) (not b!3161643) (not bm!228975) (not b!3161633) (not b!3161589) (not d!868466) (not b!3161506) (not b!3161559) (not b!3161389) (not bm!228958) (not b!3161564) (not bm!228989) (not b!3161569) (not b!3161591) tp_is_empty!16981 (not b!3161623) (not b!3161391) (not b!3161326) (not b!3161548) (not b!3161507) (not b!3161631) (not b!3161416) (not bm!228942) (not b!3161498) (not b!3161600) (not b!3161574) (not b!3161489) (not b!3161640) (not b!3161560) (not b!3161492) (not d!868458) (not b!3161596) (not b!3161488) (not b!3161647) (not bm!228995) (not b!3161573) (not b!3161413) (not b!3161505) (not b!3161387) (not b!3161486) (not b!3161542) (not d!868454) (not b!3161621) (not d!868468) (not b!3161501) (not b!3161603) (not b!3161386) (not d!868452) (not b!3161627) (not b!3161578) (not b!3161609) (not bm!228949) (not b!3161558) (not b_lambda!86381) (not b!3161430) (not bm!228992) (not bm!228960) (not b!3161538) (not b!3161636) (not b!3161579) (not b!3161543) (not bm!228948) (not b!3161577) (not b!3161420) (not b!3161297) (not b!3161356) (not b!3161514) (not bm!228974) (not b!3161619) (not b!3161515) (not b!3161511) (not b!3161601) (not b!3161400) (not bm!228993) (not d!868446) (not b!3161597) (not b!3161500) (not b!3161584) (not d!868480) (not b!3161443) (not b!3161645) (not b!3161461) (not b!3161611) (not b!3161649) (not bm!228943) (not b!3161496) (not b!3161587) (not b!3161570) (not b!3161332) (not b!3161490) (not d!868470) (not bm!228996) (not d!868448) (not bm!228981) (not b!3161561))
(check-sat b_and!209249 b_and!209245 (not b_next!83707) (not b_next!83705))
