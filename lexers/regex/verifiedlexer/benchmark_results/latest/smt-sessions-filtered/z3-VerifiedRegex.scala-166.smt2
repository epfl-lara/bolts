; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2048 () Bool)

(assert start!2048)

(declare-fun b!36903 () Bool)

(declare-fun b_free!565 () Bool)

(declare-fun b_next!565 () Bool)

(assert (=> b!36903 (= b_free!565 (not b_next!565))))

(declare-fun tp!25575 () Bool)

(declare-fun b_and!599 () Bool)

(assert (=> b!36903 (= tp!25575 b_and!599)))

(declare-fun b!36899 () Bool)

(declare-fun b_free!567 () Bool)

(declare-fun b_next!567 () Bool)

(assert (=> b!36899 (= b_free!567 (not b_next!567))))

(declare-fun tp!25572 () Bool)

(declare-fun b_and!601 () Bool)

(assert (=> b!36899 (= tp!25572 b_and!601)))

(declare-fun b!36897 () Bool)

(declare-fun res!28263 () Bool)

(declare-fun e!18149 () Bool)

(assert (=> b!36897 (=> (not res!28263) (not e!18149))))

(declare-datatypes ((C!1388 0))(
  ( (C!1389 (val!213 Int)) )
))
(declare-datatypes ((List!413 0))(
  ( (Nil!411) (Cons!411 (h!5807 C!1388) (t!15249 List!413)) )
))
(declare-fun input!6011 () List!413)

(declare-fun isEmpty!93 (List!413) Bool)

(assert (=> b!36897 (= res!28263 (not (isEmpty!93 input!6011)))))

(declare-fun mapIsEmpty!383 () Bool)

(declare-fun mapRes!383 () Bool)

(assert (=> mapIsEmpty!383 mapRes!383))

(declare-fun b!36898 () Bool)

(declare-fun e!18141 () Bool)

(declare-fun e!18143 () Bool)

(assert (=> b!36898 (= e!18141 e!18143)))

(declare-fun e!18150 () Bool)

(declare-fun e!18145 () Bool)

(assert (=> b!36899 (= e!18150 (and e!18145 tp!25572))))

(declare-fun b!36900 () Bool)

(declare-fun e!18148 () Bool)

(declare-fun tp_is_empty!379 () Bool)

(declare-fun tp!25568 () Bool)

(assert (=> b!36900 (= e!18148 (and tp_is_empty!379 tp!25568))))

(declare-fun b!36901 () Bool)

(declare-fun e!18147 () Bool)

(assert (=> b!36901 (= e!18147 e!18150)))

(declare-fun res!28266 () Bool)

(assert (=> start!2048 (=> (not res!28266) (not e!18149))))

(declare-datatypes ((Regex!177 0))(
  ( (ElementMatch!177 (c!15568 C!1388)) (Concat!296 (regOne!866 Regex!177) (regTwo!866 Regex!177)) (EmptyExpr!177) (Star!177 (reg!506 Regex!177)) (EmptyLang!177) (Union!177 (regOne!867 Regex!177) (regTwo!867 Regex!177)) )
))
(declare-fun r!13380 () Regex!177)

(declare-fun validRegex!14 (Regex!177) Bool)

(assert (=> start!2048 (= res!28266 (validRegex!14 r!13380))))

(assert (=> start!2048 e!18149))

(declare-fun e!18139 () Bool)

(assert (=> start!2048 e!18139))

(declare-datatypes ((tuple2!392 0))(
  ( (tuple2!393 (_1!262 Regex!177) (_2!262 C!1388)) )
))
(declare-datatypes ((tuple2!394 0))(
  ( (tuple2!395 (_1!263 tuple2!392) (_2!263 Regex!177)) )
))
(declare-datatypes ((List!414 0))(
  ( (Nil!412) (Cons!412 (h!5808 tuple2!394) (t!15250 List!414)) )
))
(declare-datatypes ((array!384 0))(
  ( (array!385 (arr!204 (Array (_ BitVec 32) List!414)) (size!460 (_ BitVec 32))) )
))
(declare-datatypes ((array!386 0))(
  ( (array!387 (arr!205 (Array (_ BitVec 32) (_ BitVec 64))) (size!461 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!226 0))(
  ( (LongMapFixedSize!227 (defaultEntry!451 Int) (mask!803 (_ BitVec 32)) (extraKeys!359 (_ BitVec 32)) (zeroValue!369 List!414) (minValue!369 List!414) (_size!358 (_ BitVec 32)) (_keys!404 array!386) (_values!391 array!384) (_vacant!173 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!109 0))(
  ( (HashableExt!108 (__x!761 Int)) )
))
(declare-datatypes ((Cell!441 0))(
  ( (Cell!442 (v!12196 LongMapFixedSize!226)) )
))
(declare-datatypes ((MutLongMap!113 0))(
  ( (LongMap!113 (underlying!421 Cell!441)) (MutLongMapExt!112 (__x!762 Int)) )
))
(declare-datatypes ((Cell!443 0))(
  ( (Cell!444 (v!12197 MutLongMap!113)) )
))
(declare-datatypes ((MutableMap!109 0))(
  ( (MutableMapExt!108 (__x!763 Int)) (HashMap!109 (underlying!422 Cell!443) (hashF!1977 Hashable!109) (_size!359 (_ BitVec 32)) (defaultValue!258 Int)) )
))
(declare-datatypes ((Cache!26 0))(
  ( (Cache!27 (cache!590 MutableMap!109)) )
))
(declare-fun cache!443 () Cache!26)

(declare-fun inv!716 (Cache!26) Bool)

(assert (=> start!2048 (and (inv!716 cache!443) e!18147)))

(assert (=> start!2048 e!18148))

(declare-fun b!36902 () Bool)

(declare-fun tp!25573 () Bool)

(assert (=> b!36902 (= e!18139 tp!25573)))

(declare-fun e!18140 () Bool)

(declare-fun e!18146 () Bool)

(declare-fun tp!25566 () Bool)

(declare-fun tp!25574 () Bool)

(declare-fun array_inv!122 (array!386) Bool)

(declare-fun array_inv!123 (array!384) Bool)

(assert (=> b!36903 (= e!18146 (and tp!25575 tp!25566 tp!25574 (array_inv!122 (_keys!404 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) (array_inv!123 (_values!391 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) e!18140))))

(declare-fun mapNonEmpty!383 () Bool)

(declare-fun tp!25571 () Bool)

(declare-fun tp!25567 () Bool)

(assert (=> mapNonEmpty!383 (= mapRes!383 (and tp!25571 tp!25567))))

(declare-fun mapRest!383 () (Array (_ BitVec 32) List!414))

(declare-fun mapValue!383 () List!414)

(declare-fun mapKey!383 () (_ BitVec 32))

(assert (=> mapNonEmpty!383 (= (arr!204 (_values!391 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) (store mapRest!383 mapKey!383 mapValue!383))))

(declare-fun b!36904 () Bool)

(declare-fun tp!25565 () Bool)

(declare-fun tp!25563 () Bool)

(assert (=> b!36904 (= e!18139 (and tp!25565 tp!25563))))

(declare-fun b!36905 () Bool)

(declare-fun tp!25564 () Bool)

(declare-fun tp!25570 () Bool)

(assert (=> b!36905 (= e!18139 (and tp!25564 tp!25570))))

(declare-fun b!36906 () Bool)

(declare-fun e!18144 () Bool)

(declare-datatypes ((tuple2!396 0))(
  ( (tuple2!397 (_1!264 Regex!177) (_2!264 Cache!26)) )
))
(declare-fun lt!3126 () tuple2!396)

(declare-fun valid!121 (Cache!26) Bool)

(assert (=> b!36906 (= e!18144 (not (valid!121 (_2!264 lt!3126))))))

(declare-fun b!36907 () Bool)

(assert (=> b!36907 (= e!18143 e!18146)))

(declare-fun b!36908 () Bool)

(declare-fun tp!25569 () Bool)

(assert (=> b!36908 (= e!18140 (and tp!25569 mapRes!383))))

(declare-fun condMapEmpty!383 () Bool)

(declare-fun mapDefault!383 () List!414)

(assert (=> b!36908 (= condMapEmpty!383 (= (arr!204 (_values!391 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) ((as const (Array (_ BitVec 32) List!414)) mapDefault!383)))))

(declare-fun b!36909 () Bool)

(declare-fun lt!3125 () MutLongMap!113)

(get-info :version)

(assert (=> b!36909 (= e!18145 (and e!18141 ((_ is LongMap!113) lt!3125)))))

(assert (=> b!36909 (= lt!3125 (v!12197 (underlying!422 (cache!590 cache!443))))))

(declare-fun b!36910 () Bool)

(assert (=> b!36910 (= e!18139 tp_is_empty!379)))

(declare-fun b!36911 () Bool)

(assert (=> b!36911 (= e!18149 e!18144)))

(declare-fun res!28264 () Bool)

(assert (=> b!36911 (=> (not res!28264) (not e!18144))))

(assert (=> b!36911 (= res!28264 (validRegex!14 (_1!264 lt!3126)))))

(declare-fun derivativeStepMem!6 (Regex!177 C!1388 Cache!26) tuple2!396)

(declare-fun head!334 (List!413) C!1388)

(assert (=> b!36911 (= lt!3126 (derivativeStepMem!6 r!13380 (head!334 input!6011) cache!443))))

(declare-fun b!36912 () Bool)

(declare-fun res!28265 () Bool)

(assert (=> b!36912 (=> (not res!28265) (not e!18149))))

(assert (=> b!36912 (= res!28265 (valid!121 cache!443))))

(assert (= (and start!2048 res!28266) b!36912))

(assert (= (and b!36912 res!28265) b!36897))

(assert (= (and b!36897 res!28263) b!36911))

(assert (= (and b!36911 res!28264) b!36906))

(assert (= (and start!2048 ((_ is ElementMatch!177) r!13380)) b!36910))

(assert (= (and start!2048 ((_ is Concat!296) r!13380)) b!36905))

(assert (= (and start!2048 ((_ is Star!177) r!13380)) b!36902))

(assert (= (and start!2048 ((_ is Union!177) r!13380)) b!36904))

(assert (= (and b!36908 condMapEmpty!383) mapIsEmpty!383))

(assert (= (and b!36908 (not condMapEmpty!383)) mapNonEmpty!383))

(assert (= b!36903 b!36908))

(assert (= b!36907 b!36903))

(assert (= b!36898 b!36907))

(assert (= (and b!36909 ((_ is LongMap!113) (v!12197 (underlying!422 (cache!590 cache!443))))) b!36898))

(assert (= b!36899 b!36909))

(assert (= (and b!36901 ((_ is HashMap!109) (cache!590 cache!443))) b!36899))

(assert (= start!2048 b!36901))

(assert (= (and start!2048 ((_ is Cons!411) input!6011)) b!36900))

(declare-fun m!11993 () Bool)

(assert (=> b!36897 m!11993))

(declare-fun m!11995 () Bool)

(assert (=> b!36903 m!11995))

(declare-fun m!11997 () Bool)

(assert (=> b!36903 m!11997))

(declare-fun m!11999 () Bool)

(assert (=> mapNonEmpty!383 m!11999))

(declare-fun m!12001 () Bool)

(assert (=> b!36906 m!12001))

(declare-fun m!12003 () Bool)

(assert (=> b!36911 m!12003))

(declare-fun m!12005 () Bool)

(assert (=> b!36911 m!12005))

(assert (=> b!36911 m!12005))

(declare-fun m!12007 () Bool)

(assert (=> b!36911 m!12007))

(declare-fun m!12009 () Bool)

(assert (=> b!36912 m!12009))

(declare-fun m!12011 () Bool)

(assert (=> start!2048 m!12011))

(declare-fun m!12013 () Bool)

(assert (=> start!2048 m!12013))

(check-sat b_and!601 (not b_next!565) b_and!599 (not b!36908) (not b!36900) (not b!36903) (not b!36912) tp_is_empty!379 (not b!36905) (not b!36906) (not b_next!567) (not b!36911) (not b!36897) (not start!2048) (not b!36904) (not mapNonEmpty!383) (not b!36902))
(check-sat b_and!599 b_and!601 (not b_next!565) (not b_next!567))
(get-model)

(declare-fun d!3939 () Bool)

(declare-fun validCacheMap!4 (MutableMap!109) Bool)

(assert (=> d!3939 (= (valid!121 (_2!264 lt!3126)) (validCacheMap!4 (cache!590 (_2!264 lt!3126))))))

(declare-fun bs!4976 () Bool)

(assert (= bs!4976 d!3939))

(declare-fun m!12015 () Bool)

(assert (=> bs!4976 m!12015))

(assert (=> b!36906 d!3939))

(declare-fun d!3941 () Bool)

(assert (=> d!3941 (= (isEmpty!93 input!6011) ((_ is Nil!411) input!6011))))

(assert (=> b!36897 d!3941))

(declare-fun b!36931 () Bool)

(declare-fun res!28278 () Bool)

(declare-fun e!18171 () Bool)

(assert (=> b!36931 (=> (not res!28278) (not e!18171))))

(declare-fun call!2764 () Bool)

(assert (=> b!36931 (= res!28278 call!2764)))

(declare-fun e!18165 () Bool)

(assert (=> b!36931 (= e!18165 e!18171)))

(declare-fun b!36932 () Bool)

(declare-fun res!28277 () Bool)

(declare-fun e!18170 () Bool)

(assert (=> b!36932 (=> res!28277 e!18170)))

(assert (=> b!36932 (= res!28277 (not ((_ is Concat!296) (_1!264 lt!3126))))))

(assert (=> b!36932 (= e!18165 e!18170)))

(declare-fun b!36933 () Bool)

(declare-fun e!18166 () Bool)

(declare-fun e!18169 () Bool)

(assert (=> b!36933 (= e!18166 e!18169)))

(declare-fun res!28281 () Bool)

(declare-fun nullable!11 (Regex!177) Bool)

(assert (=> b!36933 (= res!28281 (not (nullable!11 (reg!506 (_1!264 lt!3126)))))))

(assert (=> b!36933 (=> (not res!28281) (not e!18169))))

(declare-fun b!36934 () Bool)

(declare-fun call!2762 () Bool)

(assert (=> b!36934 (= e!18171 call!2762)))

(declare-fun bm!2758 () Bool)

(declare-fun call!2763 () Bool)

(assert (=> bm!2758 (= call!2762 call!2763)))

(declare-fun b!36935 () Bool)

(declare-fun e!18168 () Bool)

(assert (=> b!36935 (= e!18168 e!18166)))

(declare-fun c!15573 () Bool)

(assert (=> b!36935 (= c!15573 ((_ is Star!177) (_1!264 lt!3126)))))

(declare-fun bm!2759 () Bool)

(declare-fun c!15574 () Bool)

(assert (=> bm!2759 (= call!2763 (validRegex!14 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))

(declare-fun b!36936 () Bool)

(assert (=> b!36936 (= e!18169 call!2763)))

(declare-fun b!36937 () Bool)

(declare-fun e!18167 () Bool)

(assert (=> b!36937 (= e!18167 call!2762)))

(declare-fun bm!2757 () Bool)

(assert (=> bm!2757 (= call!2764 (validRegex!14 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))

(declare-fun d!3943 () Bool)

(declare-fun res!28280 () Bool)

(assert (=> d!3943 (=> res!28280 e!18168)))

(assert (=> d!3943 (= res!28280 ((_ is ElementMatch!177) (_1!264 lt!3126)))))

(assert (=> d!3943 (= (validRegex!14 (_1!264 lt!3126)) e!18168)))

(declare-fun b!36938 () Bool)

(assert (=> b!36938 (= e!18170 e!18167)))

(declare-fun res!28279 () Bool)

(assert (=> b!36938 (=> (not res!28279) (not e!18167))))

(assert (=> b!36938 (= res!28279 call!2764)))

(declare-fun b!36939 () Bool)

(assert (=> b!36939 (= e!18166 e!18165)))

(assert (=> b!36939 (= c!15574 ((_ is Union!177) (_1!264 lt!3126)))))

(assert (= (and d!3943 (not res!28280)) b!36935))

(assert (= (and b!36935 c!15573) b!36933))

(assert (= (and b!36935 (not c!15573)) b!36939))

(assert (= (and b!36933 res!28281) b!36936))

(assert (= (and b!36939 c!15574) b!36931))

(assert (= (and b!36939 (not c!15574)) b!36932))

(assert (= (and b!36931 res!28278) b!36934))

(assert (= (and b!36932 (not res!28277)) b!36938))

(assert (= (and b!36938 res!28279) b!36937))

(assert (= (or b!36931 b!36938) bm!2757))

(assert (= (or b!36934 b!36937) bm!2758))

(assert (= (or b!36936 bm!2758) bm!2759))

(declare-fun m!12017 () Bool)

(assert (=> b!36933 m!12017))

(declare-fun m!12019 () Bool)

(assert (=> bm!2759 m!12019))

(declare-fun m!12021 () Bool)

(assert (=> bm!2757 m!12021))

(assert (=> b!36911 d!3943))

(declare-fun c!15592 () Bool)

(declare-fun call!2775 () tuple2!396)

(declare-fun bm!2768 () Bool)

(declare-fun c!15589 () Bool)

(declare-fun lt!3149 () tuple2!396)

(assert (=> bm!2768 (= call!2775 (derivativeStepMem!6 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011) (ite c!15592 (_2!264 lt!3149) cache!443)))))

(declare-fun b!36964 () Bool)

(declare-fun lt!3152 () tuple2!396)

(declare-fun call!2774 () tuple2!396)

(assert (=> b!36964 (= lt!3152 call!2774)))

(declare-fun lt!3153 () tuple2!396)

(declare-fun call!2773 () tuple2!396)

(assert (=> b!36964 (= lt!3153 call!2773)))

(declare-fun e!18185 () tuple2!396)

(assert (=> b!36964 (= e!18185 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3153) (regTwo!866 r!13380)) (_1!264 lt!3152)) (_2!264 lt!3152)))))

(declare-fun b!36965 () Bool)

(declare-fun e!18187 () tuple2!396)

(declare-fun lt!3145 () tuple2!396)

(declare-datatypes ((Unit!204 0))(
  ( (Unit!205) )
))
(declare-datatypes ((tuple2!398 0))(
  ( (tuple2!399 (_1!265 Unit!204) (_2!265 Cache!26)) )
))
(declare-fun update!15 (Cache!26 Regex!177 C!1388 Regex!177) tuple2!398)

(assert (=> b!36965 (= e!18187 (tuple2!397 (_1!264 lt!3145) (_2!265 (update!15 (_2!264 lt!3145) r!13380 (head!334 input!6011) (_1!264 lt!3145)))))))

(declare-fun c!15588 () Bool)

(assert (=> b!36965 (= c!15588 (or ((_ is EmptyExpr!177) r!13380) ((_ is EmptyLang!177) r!13380)))))

(declare-fun e!18184 () tuple2!396)

(assert (=> b!36965 (= lt!3145 e!18184)))

(declare-fun b!36966 () Bool)

(declare-fun e!18188 () tuple2!396)

(assert (=> b!36966 (= e!18188 e!18185)))

(declare-fun c!15591 () Bool)

(assert (=> b!36966 (= c!15591 (nullable!11 (regOne!866 r!13380)))))

(declare-fun b!36967 () Bool)

(declare-datatypes ((Option!48 0))(
  ( (None!47) (Some!47 (v!12198 Regex!177)) )
))
(declare-fun lt!3148 () Option!48)

(assert (=> b!36967 (= e!18187 (tuple2!397 (v!12198 lt!3148) cache!443))))

(declare-fun b!36968 () Bool)

(declare-fun c!15587 () Bool)

(assert (=> b!36968 (= c!15587 ((_ is ElementMatch!177) r!13380))))

(declare-fun e!18186 () tuple2!396)

(assert (=> b!36968 (= e!18184 e!18186)))

(declare-fun bm!2770 () Bool)

(declare-fun call!2776 () tuple2!396)

(assert (=> bm!2770 (= call!2776 call!2775)))

(declare-fun b!36969 () Bool)

(assert (=> b!36969 (= c!15589 ((_ is Star!177) r!13380))))

(declare-fun e!18189 () tuple2!396)

(assert (=> b!36969 (= e!18189 e!18188)))

(declare-fun b!36970 () Bool)

(assert (=> b!36970 (= e!18186 (tuple2!397 (ite (= (head!334 input!6011) (c!15568 r!13380)) EmptyExpr!177 EmptyLang!177) cache!443))))

(declare-fun b!36971 () Bool)

(declare-fun lt!3146 () tuple2!396)

(assert (=> b!36971 (= lt!3146 call!2775)))

(assert (=> b!36971 (= lt!3149 call!2774)))

(assert (=> b!36971 (= e!18189 (tuple2!397 (Union!177 (_1!264 lt!3149) (_1!264 lt!3146)) (_2!264 lt!3146)))))

(declare-fun b!36972 () Bool)

(declare-fun lt!3147 () tuple2!396)

(assert (=> b!36972 (= e!18188 (tuple2!397 (Concat!296 (_1!264 lt!3147) (Star!177 (reg!506 r!13380))) (_2!264 lt!3147)))))

(assert (=> b!36972 (= lt!3147 call!2776)))

(declare-fun b!36973 () Bool)

(declare-fun lt!3151 () tuple2!396)

(assert (=> b!36973 (= lt!3151 call!2773)))

(assert (=> b!36973 (= e!18185 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3151) (regTwo!866 r!13380)) EmptyLang!177) (_2!264 lt!3151)))))

(declare-fun bm!2771 () Bool)

(assert (=> bm!2771 (= call!2774 (derivativeStepMem!6 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)) (head!334 input!6011) (ite c!15592 cache!443 (_2!264 lt!3153))))))

(declare-fun b!36974 () Bool)

(assert (=> b!36974 (= e!18184 (tuple2!397 EmptyLang!177 cache!443))))

(declare-fun b!36975 () Bool)

(assert (=> b!36975 (= e!18186 e!18189)))

(assert (=> b!36975 (= c!15592 ((_ is Union!177) r!13380))))

(declare-fun d!3945 () Bool)

(declare-fun lt!3150 () tuple2!396)

(declare-fun derivativeStep!3 (Regex!177 C!1388) Regex!177)

(assert (=> d!3945 (= (_1!264 lt!3150) (derivativeStep!3 r!13380 (head!334 input!6011)))))

(assert (=> d!3945 (= lt!3150 e!18187)))

(declare-fun c!15590 () Bool)

(assert (=> d!3945 (= c!15590 ((_ is Some!47) lt!3148))))

(declare-fun get!191 (Cache!26 Regex!177 C!1388) Option!48)

(assert (=> d!3945 (= lt!3148 (get!191 cache!443 r!13380 (head!334 input!6011)))))

(assert (=> d!3945 (validRegex!14 r!13380)))

(assert (=> d!3945 (= (derivativeStepMem!6 r!13380 (head!334 input!6011) cache!443) lt!3150)))

(declare-fun bm!2769 () Bool)

(assert (=> bm!2769 (= call!2773 call!2776)))

(assert (= (and d!3945 c!15590) b!36967))

(assert (= (and d!3945 (not c!15590)) b!36965))

(assert (= (and b!36965 c!15588) b!36974))

(assert (= (and b!36965 (not c!15588)) b!36968))

(assert (= (and b!36968 c!15587) b!36970))

(assert (= (and b!36968 (not c!15587)) b!36975))

(assert (= (and b!36975 c!15592) b!36971))

(assert (= (and b!36975 (not c!15592)) b!36969))

(assert (= (and b!36969 c!15589) b!36972))

(assert (= (and b!36969 (not c!15589)) b!36966))

(assert (= (and b!36966 c!15591) b!36964))

(assert (= (and b!36966 (not c!15591)) b!36973))

(assert (= (or b!36964 b!36973) bm!2769))

(assert (= (or b!36972 bm!2769) bm!2770))

(assert (= (or b!36971 bm!2770) bm!2768))

(assert (= (or b!36971 b!36964) bm!2771))

(declare-fun m!12023 () Bool)

(assert (=> b!36966 m!12023))

(assert (=> bm!2771 m!12005))

(declare-fun m!12025 () Bool)

(assert (=> bm!2771 m!12025))

(assert (=> b!36965 m!12005))

(declare-fun m!12027 () Bool)

(assert (=> b!36965 m!12027))

(assert (=> bm!2768 m!12005))

(declare-fun m!12029 () Bool)

(assert (=> bm!2768 m!12029))

(assert (=> d!3945 m!12005))

(declare-fun m!12031 () Bool)

(assert (=> d!3945 m!12031))

(assert (=> d!3945 m!12005))

(declare-fun m!12033 () Bool)

(assert (=> d!3945 m!12033))

(assert (=> d!3945 m!12011))

(assert (=> b!36911 d!3945))

(declare-fun d!3947 () Bool)

(assert (=> d!3947 (= (head!334 input!6011) (h!5807 input!6011))))

(assert (=> b!36911 d!3947))

(declare-fun b!36976 () Bool)

(declare-fun res!28283 () Bool)

(declare-fun e!18196 () Bool)

(assert (=> b!36976 (=> (not res!28283) (not e!18196))))

(declare-fun call!2779 () Bool)

(assert (=> b!36976 (= res!28283 call!2779)))

(declare-fun e!18190 () Bool)

(assert (=> b!36976 (= e!18190 e!18196)))

(declare-fun b!36977 () Bool)

(declare-fun res!28282 () Bool)

(declare-fun e!18195 () Bool)

(assert (=> b!36977 (=> res!28282 e!18195)))

(assert (=> b!36977 (= res!28282 (not ((_ is Concat!296) r!13380)))))

(assert (=> b!36977 (= e!18190 e!18195)))

(declare-fun b!36978 () Bool)

(declare-fun e!18191 () Bool)

(declare-fun e!18194 () Bool)

(assert (=> b!36978 (= e!18191 e!18194)))

(declare-fun res!28286 () Bool)

(assert (=> b!36978 (= res!28286 (not (nullable!11 (reg!506 r!13380))))))

(assert (=> b!36978 (=> (not res!28286) (not e!18194))))

(declare-fun b!36979 () Bool)

(declare-fun call!2777 () Bool)

(assert (=> b!36979 (= e!18196 call!2777)))

(declare-fun bm!2773 () Bool)

(declare-fun call!2778 () Bool)

(assert (=> bm!2773 (= call!2777 call!2778)))

(declare-fun b!36980 () Bool)

(declare-fun e!18193 () Bool)

(assert (=> b!36980 (= e!18193 e!18191)))

(declare-fun c!15593 () Bool)

(assert (=> b!36980 (= c!15593 ((_ is Star!177) r!13380))))

(declare-fun bm!2774 () Bool)

(declare-fun c!15594 () Bool)

(assert (=> bm!2774 (= call!2778 (validRegex!14 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))

(declare-fun b!36981 () Bool)

(assert (=> b!36981 (= e!18194 call!2778)))

(declare-fun b!36982 () Bool)

(declare-fun e!18192 () Bool)

(assert (=> b!36982 (= e!18192 call!2777)))

(declare-fun bm!2772 () Bool)

(assert (=> bm!2772 (= call!2779 (validRegex!14 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))

(declare-fun d!3949 () Bool)

(declare-fun res!28285 () Bool)

(assert (=> d!3949 (=> res!28285 e!18193)))

(assert (=> d!3949 (= res!28285 ((_ is ElementMatch!177) r!13380))))

(assert (=> d!3949 (= (validRegex!14 r!13380) e!18193)))

(declare-fun b!36983 () Bool)

(assert (=> b!36983 (= e!18195 e!18192)))

(declare-fun res!28284 () Bool)

(assert (=> b!36983 (=> (not res!28284) (not e!18192))))

(assert (=> b!36983 (= res!28284 call!2779)))

(declare-fun b!36984 () Bool)

(assert (=> b!36984 (= e!18191 e!18190)))

(assert (=> b!36984 (= c!15594 ((_ is Union!177) r!13380))))

(assert (= (and d!3949 (not res!28285)) b!36980))

(assert (= (and b!36980 c!15593) b!36978))

(assert (= (and b!36980 (not c!15593)) b!36984))

(assert (= (and b!36978 res!28286) b!36981))

(assert (= (and b!36984 c!15594) b!36976))

(assert (= (and b!36984 (not c!15594)) b!36977))

(assert (= (and b!36976 res!28283) b!36979))

(assert (= (and b!36977 (not res!28282)) b!36983))

(assert (= (and b!36983 res!28284) b!36982))

(assert (= (or b!36976 b!36983) bm!2772))

(assert (= (or b!36979 b!36982) bm!2773))

(assert (= (or b!36981 bm!2773) bm!2774))

(declare-fun m!12035 () Bool)

(assert (=> b!36978 m!12035))

(declare-fun m!12037 () Bool)

(assert (=> bm!2774 m!12037))

(declare-fun m!12039 () Bool)

(assert (=> bm!2772 m!12039))

(assert (=> start!2048 d!3949))

(declare-fun d!3951 () Bool)

(declare-fun res!28289 () Bool)

(declare-fun e!18199 () Bool)

(assert (=> d!3951 (=> (not res!28289) (not e!18199))))

(assert (=> d!3951 (= res!28289 ((_ is HashMap!109) (cache!590 cache!443)))))

(assert (=> d!3951 (= (inv!716 cache!443) e!18199)))

(declare-fun b!36987 () Bool)

(assert (=> b!36987 (= e!18199 (validCacheMap!4 (cache!590 cache!443)))))

(assert (= (and d!3951 res!28289) b!36987))

(declare-fun m!12041 () Bool)

(assert (=> b!36987 m!12041))

(assert (=> start!2048 d!3951))

(declare-fun d!3953 () Bool)

(assert (=> d!3953 (= (array_inv!122 (_keys!404 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) (bvsge (size!461 (_keys!404 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36903 d!3953))

(declare-fun d!3955 () Bool)

(assert (=> d!3955 (= (array_inv!123 (_values!391 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) (bvsge (size!460 (_values!391 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36903 d!3955))

(declare-fun d!3957 () Bool)

(assert (=> d!3957 (= (valid!121 cache!443) (validCacheMap!4 (cache!590 cache!443)))))

(declare-fun bs!4977 () Bool)

(assert (= bs!4977 d!3957))

(assert (=> bs!4977 m!12041))

(assert (=> b!36912 d!3957))

(declare-fun e!18202 () Bool)

(assert (=> b!36905 (= tp!25564 e!18202)))

(declare-fun b!36999 () Bool)

(declare-fun tp!25588 () Bool)

(declare-fun tp!25590 () Bool)

(assert (=> b!36999 (= e!18202 (and tp!25588 tp!25590))))

(declare-fun b!36998 () Bool)

(assert (=> b!36998 (= e!18202 tp_is_empty!379)))

(declare-fun b!37000 () Bool)

(declare-fun tp!25586 () Bool)

(assert (=> b!37000 (= e!18202 tp!25586)))

(declare-fun b!37001 () Bool)

(declare-fun tp!25587 () Bool)

(declare-fun tp!25589 () Bool)

(assert (=> b!37001 (= e!18202 (and tp!25587 tp!25589))))

(assert (= (and b!36905 ((_ is ElementMatch!177) (regOne!866 r!13380))) b!36998))

(assert (= (and b!36905 ((_ is Concat!296) (regOne!866 r!13380))) b!36999))

(assert (= (and b!36905 ((_ is Star!177) (regOne!866 r!13380))) b!37000))

(assert (= (and b!36905 ((_ is Union!177) (regOne!866 r!13380))) b!37001))

(declare-fun e!18203 () Bool)

(assert (=> b!36905 (= tp!25570 e!18203)))

(declare-fun b!37003 () Bool)

(declare-fun tp!25593 () Bool)

(declare-fun tp!25595 () Bool)

(assert (=> b!37003 (= e!18203 (and tp!25593 tp!25595))))

(declare-fun b!37002 () Bool)

(assert (=> b!37002 (= e!18203 tp_is_empty!379)))

(declare-fun b!37004 () Bool)

(declare-fun tp!25591 () Bool)

(assert (=> b!37004 (= e!18203 tp!25591)))

(declare-fun b!37005 () Bool)

(declare-fun tp!25592 () Bool)

(declare-fun tp!25594 () Bool)

(assert (=> b!37005 (= e!18203 (and tp!25592 tp!25594))))

(assert (= (and b!36905 ((_ is ElementMatch!177) (regTwo!866 r!13380))) b!37002))

(assert (= (and b!36905 ((_ is Concat!296) (regTwo!866 r!13380))) b!37003))

(assert (= (and b!36905 ((_ is Star!177) (regTwo!866 r!13380))) b!37004))

(assert (= (and b!36905 ((_ is Union!177) (regTwo!866 r!13380))) b!37005))

(declare-fun b!37010 () Bool)

(declare-fun tp!25602 () Bool)

(declare-fun e!18206 () Bool)

(declare-fun tp!25604 () Bool)

(declare-fun tp!25603 () Bool)

(assert (=> b!37010 (= e!18206 (and tp!25602 tp_is_empty!379 tp!25603 tp!25604))))

(assert (=> b!36903 (= tp!25566 e!18206)))

(assert (= (and b!36903 ((_ is Cons!412) (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))) b!37010))

(declare-fun e!18207 () Bool)

(declare-fun tp!25607 () Bool)

(declare-fun b!37011 () Bool)

(declare-fun tp!25606 () Bool)

(declare-fun tp!25605 () Bool)

(assert (=> b!37011 (= e!18207 (and tp!25605 tp_is_empty!379 tp!25606 tp!25607))))

(assert (=> b!36903 (= tp!25574 e!18207)))

(assert (= (and b!36903 ((_ is Cons!412) (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))) b!37011))

(declare-fun e!18208 () Bool)

(assert (=> b!36902 (= tp!25573 e!18208)))

(declare-fun b!37013 () Bool)

(declare-fun tp!25610 () Bool)

(declare-fun tp!25612 () Bool)

(assert (=> b!37013 (= e!18208 (and tp!25610 tp!25612))))

(declare-fun b!37012 () Bool)

(assert (=> b!37012 (= e!18208 tp_is_empty!379)))

(declare-fun b!37014 () Bool)

(declare-fun tp!25608 () Bool)

(assert (=> b!37014 (= e!18208 tp!25608)))

(declare-fun b!37015 () Bool)

(declare-fun tp!25609 () Bool)

(declare-fun tp!25611 () Bool)

(assert (=> b!37015 (= e!18208 (and tp!25609 tp!25611))))

(assert (= (and b!36902 ((_ is ElementMatch!177) (reg!506 r!13380))) b!37012))

(assert (= (and b!36902 ((_ is Concat!296) (reg!506 r!13380))) b!37013))

(assert (= (and b!36902 ((_ is Star!177) (reg!506 r!13380))) b!37014))

(assert (= (and b!36902 ((_ is Union!177) (reg!506 r!13380))) b!37015))

(declare-fun e!18214 () Bool)

(declare-fun tp!25633 () Bool)

(declare-fun b!37022 () Bool)

(declare-fun tp!25628 () Bool)

(declare-fun tp!25629 () Bool)

(assert (=> b!37022 (= e!18214 (and tp!25633 tp_is_empty!379 tp!25629 tp!25628))))

(declare-fun b!37023 () Bool)

(declare-fun e!18213 () Bool)

(declare-fun tp!25631 () Bool)

(declare-fun tp!25627 () Bool)

(declare-fun tp!25630 () Bool)

(assert (=> b!37023 (= e!18213 (and tp!25631 tp_is_empty!379 tp!25627 tp!25630))))

(declare-fun mapNonEmpty!386 () Bool)

(declare-fun mapRes!386 () Bool)

(declare-fun tp!25632 () Bool)

(assert (=> mapNonEmpty!386 (= mapRes!386 (and tp!25632 e!18214))))

(declare-fun mapValue!386 () List!414)

(declare-fun mapRest!386 () (Array (_ BitVec 32) List!414))

(declare-fun mapKey!386 () (_ BitVec 32))

(assert (=> mapNonEmpty!386 (= mapRest!383 (store mapRest!386 mapKey!386 mapValue!386))))

(declare-fun mapIsEmpty!386 () Bool)

(assert (=> mapIsEmpty!386 mapRes!386))

(declare-fun condMapEmpty!386 () Bool)

(declare-fun mapDefault!386 () List!414)

(assert (=> mapNonEmpty!383 (= condMapEmpty!386 (= mapRest!383 ((as const (Array (_ BitVec 32) List!414)) mapDefault!386)))))

(assert (=> mapNonEmpty!383 (= tp!25571 (and e!18213 mapRes!386))))

(assert (= (and mapNonEmpty!383 condMapEmpty!386) mapIsEmpty!386))

(assert (= (and mapNonEmpty!383 (not condMapEmpty!386)) mapNonEmpty!386))

(assert (= (and mapNonEmpty!386 ((_ is Cons!412) mapValue!386)) b!37022))

(assert (= (and mapNonEmpty!383 ((_ is Cons!412) mapDefault!386)) b!37023))

(declare-fun m!12043 () Bool)

(assert (=> mapNonEmpty!386 m!12043))

(declare-fun tp!25634 () Bool)

(declare-fun tp!25636 () Bool)

(declare-fun e!18215 () Bool)

(declare-fun tp!25635 () Bool)

(declare-fun b!37024 () Bool)

(assert (=> b!37024 (= e!18215 (and tp!25634 tp_is_empty!379 tp!25635 tp!25636))))

(assert (=> mapNonEmpty!383 (= tp!25567 e!18215)))

(assert (= (and mapNonEmpty!383 ((_ is Cons!412) mapValue!383)) b!37024))

(declare-fun e!18216 () Bool)

(declare-fun tp!25639 () Bool)

(declare-fun b!37025 () Bool)

(declare-fun tp!25638 () Bool)

(declare-fun tp!25637 () Bool)

(assert (=> b!37025 (= e!18216 (and tp!25637 tp_is_empty!379 tp!25638 tp!25639))))

(assert (=> b!36908 (= tp!25569 e!18216)))

(assert (= (and b!36908 ((_ is Cons!412) mapDefault!383)) b!37025))

(declare-fun b!37030 () Bool)

(declare-fun e!18219 () Bool)

(declare-fun tp!25642 () Bool)

(assert (=> b!37030 (= e!18219 (and tp_is_empty!379 tp!25642))))

(assert (=> b!36900 (= tp!25568 e!18219)))

(assert (= (and b!36900 ((_ is Cons!411) (t!15249 input!6011))) b!37030))

(declare-fun e!18220 () Bool)

(assert (=> b!36904 (= tp!25565 e!18220)))

(declare-fun b!37032 () Bool)

(declare-fun tp!25645 () Bool)

(declare-fun tp!25647 () Bool)

(assert (=> b!37032 (= e!18220 (and tp!25645 tp!25647))))

(declare-fun b!37031 () Bool)

(assert (=> b!37031 (= e!18220 tp_is_empty!379)))

(declare-fun b!37033 () Bool)

(declare-fun tp!25643 () Bool)

(assert (=> b!37033 (= e!18220 tp!25643)))

(declare-fun b!37034 () Bool)

(declare-fun tp!25644 () Bool)

(declare-fun tp!25646 () Bool)

(assert (=> b!37034 (= e!18220 (and tp!25644 tp!25646))))

(assert (= (and b!36904 ((_ is ElementMatch!177) (regOne!867 r!13380))) b!37031))

(assert (= (and b!36904 ((_ is Concat!296) (regOne!867 r!13380))) b!37032))

(assert (= (and b!36904 ((_ is Star!177) (regOne!867 r!13380))) b!37033))

(assert (= (and b!36904 ((_ is Union!177) (regOne!867 r!13380))) b!37034))

(declare-fun e!18221 () Bool)

(assert (=> b!36904 (= tp!25563 e!18221)))

(declare-fun b!37036 () Bool)

(declare-fun tp!25650 () Bool)

(declare-fun tp!25652 () Bool)

(assert (=> b!37036 (= e!18221 (and tp!25650 tp!25652))))

(declare-fun b!37035 () Bool)

(assert (=> b!37035 (= e!18221 tp_is_empty!379)))

(declare-fun b!37037 () Bool)

(declare-fun tp!25648 () Bool)

(assert (=> b!37037 (= e!18221 tp!25648)))

(declare-fun b!37038 () Bool)

(declare-fun tp!25649 () Bool)

(declare-fun tp!25651 () Bool)

(assert (=> b!37038 (= e!18221 (and tp!25649 tp!25651))))

(assert (= (and b!36904 ((_ is ElementMatch!177) (regTwo!867 r!13380))) b!37035))

(assert (= (and b!36904 ((_ is Concat!296) (regTwo!867 r!13380))) b!37036))

(assert (= (and b!36904 ((_ is Star!177) (regTwo!867 r!13380))) b!37037))

(assert (= (and b!36904 ((_ is Union!177) (regTwo!867 r!13380))) b!37038))

(check-sat (not mapNonEmpty!386) (not b!36933) (not d!3939) (not d!3945) (not b!37037) (not b_next!567) (not b!37038) (not b!37023) (not b!37001) (not b!37036) (not b!36978) b_and!601 (not b!37005) (not b_next!565) (not b!37034) (not b!37003) (not b!37030) (not b!37014) (not bm!2759) b_and!599 (not b!37010) (not b!37015) (not bm!2774) (not bm!2768) (not b!37011) (not d!3957) (not bm!2757) (not b!37033) (not b!36987) tp_is_empty!379 (not bm!2772) (not b!37032) (not b!37022) (not b!37000) (not bm!2771) (not b!36966) (not b!37024) (not b!36999) (not b!37013) (not b!37025) (not b!36965) (not b!37004))
(check-sat b_and!599 b_and!601 (not b_next!565) (not b_next!567))
(get-model)

(declare-fun b!37039 () Bool)

(declare-fun res!28291 () Bool)

(declare-fun e!18228 () Bool)

(assert (=> b!37039 (=> (not res!28291) (not e!18228))))

(declare-fun call!2782 () Bool)

(assert (=> b!37039 (= res!28291 call!2782)))

(declare-fun e!18222 () Bool)

(assert (=> b!37039 (= e!18222 e!18228)))

(declare-fun b!37040 () Bool)

(declare-fun res!28290 () Bool)

(declare-fun e!18227 () Bool)

(assert (=> b!37040 (=> res!28290 e!18227)))

(assert (=> b!37040 (= res!28290 (not ((_ is Concat!296) (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380)))))))

(assert (=> b!37040 (= e!18222 e!18227)))

(declare-fun b!37041 () Bool)

(declare-fun e!18223 () Bool)

(declare-fun e!18226 () Bool)

(assert (=> b!37041 (= e!18223 e!18226)))

(declare-fun res!28294 () Bool)

(assert (=> b!37041 (= res!28294 (not (nullable!11 (reg!506 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))))

(assert (=> b!37041 (=> (not res!28294) (not e!18226))))

(declare-fun b!37042 () Bool)

(declare-fun call!2780 () Bool)

(assert (=> b!37042 (= e!18228 call!2780)))

(declare-fun bm!2776 () Bool)

(declare-fun call!2781 () Bool)

(assert (=> bm!2776 (= call!2780 call!2781)))

(declare-fun b!37043 () Bool)

(declare-fun e!18225 () Bool)

(assert (=> b!37043 (= e!18225 e!18223)))

(declare-fun c!15595 () Bool)

(assert (=> b!37043 (= c!15595 ((_ is Star!177) (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))

(declare-fun bm!2777 () Bool)

(declare-fun c!15596 () Bool)

(assert (=> bm!2777 (= call!2781 (validRegex!14 (ite c!15595 (reg!506 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))) (ite c!15596 (regTwo!867 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))) (regTwo!866 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380)))))))))

(declare-fun b!37044 () Bool)

(assert (=> b!37044 (= e!18226 call!2781)))

(declare-fun b!37045 () Bool)

(declare-fun e!18224 () Bool)

(assert (=> b!37045 (= e!18224 call!2780)))

(declare-fun bm!2775 () Bool)

(assert (=> bm!2775 (= call!2782 (validRegex!14 (ite c!15596 (regOne!867 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))) (regOne!866 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))))

(declare-fun d!3959 () Bool)

(declare-fun res!28293 () Bool)

(assert (=> d!3959 (=> res!28293 e!18225)))

(assert (=> d!3959 (= res!28293 ((_ is ElementMatch!177) (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))

(assert (=> d!3959 (= (validRegex!14 (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))) e!18225)))

(declare-fun b!37046 () Bool)

(assert (=> b!37046 (= e!18227 e!18224)))

(declare-fun res!28292 () Bool)

(assert (=> b!37046 (=> (not res!28292) (not e!18224))))

(assert (=> b!37046 (= res!28292 call!2782)))

(declare-fun b!37047 () Bool)

(assert (=> b!37047 (= e!18223 e!18222)))

(assert (=> b!37047 (= c!15596 ((_ is Union!177) (ite c!15594 (regOne!867 r!13380) (regOne!866 r!13380))))))

(assert (= (and d!3959 (not res!28293)) b!37043))

(assert (= (and b!37043 c!15595) b!37041))

(assert (= (and b!37043 (not c!15595)) b!37047))

(assert (= (and b!37041 res!28294) b!37044))

(assert (= (and b!37047 c!15596) b!37039))

(assert (= (and b!37047 (not c!15596)) b!37040))

(assert (= (and b!37039 res!28291) b!37042))

(assert (= (and b!37040 (not res!28290)) b!37046))

(assert (= (and b!37046 res!28292) b!37045))

(assert (= (or b!37039 b!37046) bm!2775))

(assert (= (or b!37042 b!37045) bm!2776))

(assert (= (or b!37044 bm!2776) bm!2777))

(declare-fun m!12045 () Bool)

(assert (=> b!37041 m!12045))

(declare-fun m!12047 () Bool)

(assert (=> bm!2777 m!12047))

(declare-fun m!12049 () Bool)

(assert (=> bm!2775 m!12049))

(assert (=> bm!2772 d!3959))

(declare-fun c!15599 () Bool)

(declare-fun lt!3158 () tuple2!396)

(declare-fun call!2785 () tuple2!396)

(declare-fun c!15602 () Bool)

(declare-fun bm!2778 () Bool)

(assert (=> bm!2778 (= call!2785 (derivativeStepMem!6 (ite c!15602 (regTwo!867 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))) (ite c!15599 (reg!506 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))) (regOne!866 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))))) (head!334 input!6011) (ite c!15602 (_2!264 lt!3158) (ite c!15592 (_2!264 lt!3149) cache!443))))))

(declare-fun b!37048 () Bool)

(declare-fun lt!3161 () tuple2!396)

(declare-fun call!2784 () tuple2!396)

(assert (=> b!37048 (= lt!3161 call!2784)))

(declare-fun lt!3162 () tuple2!396)

(declare-fun call!2783 () tuple2!396)

(assert (=> b!37048 (= lt!3162 call!2783)))

(declare-fun e!18230 () tuple2!396)

(assert (=> b!37048 (= e!18230 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3162) (regTwo!866 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))) (_1!264 lt!3161)) (_2!264 lt!3161)))))

(declare-fun lt!3154 () tuple2!396)

(declare-fun e!18232 () tuple2!396)

(declare-fun b!37049 () Bool)

(assert (=> b!37049 (= e!18232 (tuple2!397 (_1!264 lt!3154) (_2!265 (update!15 (_2!264 lt!3154) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011) (_1!264 lt!3154)))))))

(declare-fun c!15598 () Bool)

(assert (=> b!37049 (= c!15598 (or ((_ is EmptyExpr!177) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))) ((_ is EmptyLang!177) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))))))

(declare-fun e!18229 () tuple2!396)

(assert (=> b!37049 (= lt!3154 e!18229)))

(declare-fun b!37050 () Bool)

(declare-fun e!18233 () tuple2!396)

(assert (=> b!37050 (= e!18233 e!18230)))

(declare-fun c!15601 () Bool)

(assert (=> b!37050 (= c!15601 (nullable!11 (regOne!866 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))))))

(declare-fun lt!3157 () Option!48)

(declare-fun b!37051 () Bool)

(assert (=> b!37051 (= e!18232 (tuple2!397 (v!12198 lt!3157) (ite c!15592 (_2!264 lt!3149) cache!443)))))

(declare-fun b!37052 () Bool)

(declare-fun c!15597 () Bool)

(assert (=> b!37052 (= c!15597 ((_ is ElementMatch!177) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))))))

(declare-fun e!18231 () tuple2!396)

(assert (=> b!37052 (= e!18229 e!18231)))

(declare-fun bm!2780 () Bool)

(declare-fun call!2786 () tuple2!396)

(assert (=> bm!2780 (= call!2786 call!2785)))

(declare-fun b!37053 () Bool)

(assert (=> b!37053 (= c!15599 ((_ is Star!177) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))))))

(declare-fun e!18234 () tuple2!396)

(assert (=> b!37053 (= e!18234 e!18233)))

(declare-fun b!37054 () Bool)

(assert (=> b!37054 (= e!18231 (tuple2!397 (ite (= (head!334 input!6011) (c!15568 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))) EmptyExpr!177 EmptyLang!177) (ite c!15592 (_2!264 lt!3149) cache!443)))))

(declare-fun b!37055 () Bool)

(declare-fun lt!3155 () tuple2!396)

(assert (=> b!37055 (= lt!3155 call!2785)))

(assert (=> b!37055 (= lt!3158 call!2784)))

(assert (=> b!37055 (= e!18234 (tuple2!397 (Union!177 (_1!264 lt!3158) (_1!264 lt!3155)) (_2!264 lt!3155)))))

(declare-fun b!37056 () Bool)

(declare-fun lt!3156 () tuple2!396)

(assert (=> b!37056 (= e!18233 (tuple2!397 (Concat!296 (_1!264 lt!3156) (Star!177 (reg!506 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))))) (_2!264 lt!3156)))))

(assert (=> b!37056 (= lt!3156 call!2786)))

(declare-fun b!37057 () Bool)

(declare-fun lt!3160 () tuple2!396)

(assert (=> b!37057 (= lt!3160 call!2783)))

(assert (=> b!37057 (= e!18230 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3160) (regTwo!866 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))) EmptyLang!177) (_2!264 lt!3160)))))

(declare-fun bm!2781 () Bool)

(assert (=> bm!2781 (= call!2784 (derivativeStepMem!6 (ite c!15602 (regOne!867 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))) (regTwo!866 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))) (head!334 input!6011) (ite c!15602 (ite c!15592 (_2!264 lt!3149) cache!443) (_2!264 lt!3162))))))

(declare-fun b!37058 () Bool)

(assert (=> b!37058 (= e!18229 (tuple2!397 EmptyLang!177 (ite c!15592 (_2!264 lt!3149) cache!443)))))

(declare-fun b!37059 () Bool)

(assert (=> b!37059 (= e!18231 e!18234)))

(assert (=> b!37059 (= c!15602 ((_ is Union!177) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380)))))))

(declare-fun d!3961 () Bool)

(declare-fun lt!3159 () tuple2!396)

(assert (=> d!3961 (= (_1!264 lt!3159) (derivativeStep!3 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011)))))

(assert (=> d!3961 (= lt!3159 e!18232)))

(declare-fun c!15600 () Bool)

(assert (=> d!3961 (= c!15600 ((_ is Some!47) lt!3157))))

(assert (=> d!3961 (= lt!3157 (get!191 (ite c!15592 (_2!264 lt!3149) cache!443) (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011)))))

(assert (=> d!3961 (validRegex!14 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))))))

(assert (=> d!3961 (= (derivativeStepMem!6 (ite c!15592 (regTwo!867 r!13380) (ite c!15589 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011) (ite c!15592 (_2!264 lt!3149) cache!443)) lt!3159)))

(declare-fun bm!2779 () Bool)

(assert (=> bm!2779 (= call!2783 call!2786)))

(assert (= (and d!3961 c!15600) b!37051))

(assert (= (and d!3961 (not c!15600)) b!37049))

(assert (= (and b!37049 c!15598) b!37058))

(assert (= (and b!37049 (not c!15598)) b!37052))

(assert (= (and b!37052 c!15597) b!37054))

(assert (= (and b!37052 (not c!15597)) b!37059))

(assert (= (and b!37059 c!15602) b!37055))

(assert (= (and b!37059 (not c!15602)) b!37053))

(assert (= (and b!37053 c!15599) b!37056))

(assert (= (and b!37053 (not c!15599)) b!37050))

(assert (= (and b!37050 c!15601) b!37048))

(assert (= (and b!37050 (not c!15601)) b!37057))

(assert (= (or b!37048 b!37057) bm!2779))

(assert (= (or b!37056 bm!2779) bm!2780))

(assert (= (or b!37055 bm!2780) bm!2778))

(assert (= (or b!37055 b!37048) bm!2781))

(declare-fun m!12051 () Bool)

(assert (=> b!37050 m!12051))

(assert (=> bm!2781 m!12005))

(declare-fun m!12053 () Bool)

(assert (=> bm!2781 m!12053))

(assert (=> b!37049 m!12005))

(declare-fun m!12055 () Bool)

(assert (=> b!37049 m!12055))

(assert (=> bm!2778 m!12005))

(declare-fun m!12057 () Bool)

(assert (=> bm!2778 m!12057))

(assert (=> d!3961 m!12005))

(declare-fun m!12059 () Bool)

(assert (=> d!3961 m!12059))

(assert (=> d!3961 m!12005))

(declare-fun m!12061 () Bool)

(assert (=> d!3961 m!12061))

(declare-fun m!12063 () Bool)

(assert (=> d!3961 m!12063))

(assert (=> bm!2768 d!3961))

(declare-fun d!3963 () Bool)

(declare-fun nullableFct!8 (Regex!177) Bool)

(assert (=> d!3963 (= (nullable!11 (reg!506 r!13380)) (nullableFct!8 (reg!506 r!13380)))))

(declare-fun bs!4978 () Bool)

(assert (= bs!4978 d!3963))

(declare-fun m!12065 () Bool)

(assert (=> bs!4978 m!12065))

(assert (=> b!36978 d!3963))

(declare-fun b!37060 () Bool)

(declare-fun res!28296 () Bool)

(declare-fun e!18241 () Bool)

(assert (=> b!37060 (=> (not res!28296) (not e!18241))))

(declare-fun call!2789 () Bool)

(assert (=> b!37060 (= res!28296 call!2789)))

(declare-fun e!18235 () Bool)

(assert (=> b!37060 (= e!18235 e!18241)))

(declare-fun b!37061 () Bool)

(declare-fun res!28295 () Bool)

(declare-fun e!18240 () Bool)

(assert (=> b!37061 (=> res!28295 e!18240)))

(assert (=> b!37061 (= res!28295 (not ((_ is Concat!296) (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126))))))))

(assert (=> b!37061 (= e!18235 e!18240)))

(declare-fun b!37062 () Bool)

(declare-fun e!18236 () Bool)

(declare-fun e!18239 () Bool)

(assert (=> b!37062 (= e!18236 e!18239)))

(declare-fun res!28299 () Bool)

(assert (=> b!37062 (= res!28299 (not (nullable!11 (reg!506 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))))

(assert (=> b!37062 (=> (not res!28299) (not e!18239))))

(declare-fun b!37063 () Bool)

(declare-fun call!2787 () Bool)

(assert (=> b!37063 (= e!18241 call!2787)))

(declare-fun bm!2783 () Bool)

(declare-fun call!2788 () Bool)

(assert (=> bm!2783 (= call!2787 call!2788)))

(declare-fun b!37064 () Bool)

(declare-fun e!18238 () Bool)

(assert (=> b!37064 (= e!18238 e!18236)))

(declare-fun c!15603 () Bool)

(assert (=> b!37064 (= c!15603 ((_ is Star!177) (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))

(declare-fun c!15604 () Bool)

(declare-fun bm!2784 () Bool)

(assert (=> bm!2784 (= call!2788 (validRegex!14 (ite c!15603 (reg!506 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))) (ite c!15604 (regTwo!867 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))) (regTwo!866 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126))))))))))

(declare-fun b!37065 () Bool)

(assert (=> b!37065 (= e!18239 call!2788)))

(declare-fun b!37066 () Bool)

(declare-fun e!18237 () Bool)

(assert (=> b!37066 (= e!18237 call!2787)))

(declare-fun bm!2782 () Bool)

(assert (=> bm!2782 (= call!2789 (validRegex!14 (ite c!15604 (regOne!867 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))) (regOne!866 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))))

(declare-fun d!3965 () Bool)

(declare-fun res!28298 () Bool)

(assert (=> d!3965 (=> res!28298 e!18238)))

(assert (=> d!3965 (= res!28298 ((_ is ElementMatch!177) (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))

(assert (=> d!3965 (= (validRegex!14 (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))) e!18238)))

(declare-fun b!37067 () Bool)

(assert (=> b!37067 (= e!18240 e!18237)))

(declare-fun res!28297 () Bool)

(assert (=> b!37067 (=> (not res!28297) (not e!18237))))

(assert (=> b!37067 (= res!28297 call!2789)))

(declare-fun b!37068 () Bool)

(assert (=> b!37068 (= e!18236 e!18235)))

(assert (=> b!37068 (= c!15604 ((_ is Union!177) (ite c!15574 (regOne!867 (_1!264 lt!3126)) (regOne!866 (_1!264 lt!3126)))))))

(assert (= (and d!3965 (not res!28298)) b!37064))

(assert (= (and b!37064 c!15603) b!37062))

(assert (= (and b!37064 (not c!15603)) b!37068))

(assert (= (and b!37062 res!28299) b!37065))

(assert (= (and b!37068 c!15604) b!37060))

(assert (= (and b!37068 (not c!15604)) b!37061))

(assert (= (and b!37060 res!28296) b!37063))

(assert (= (and b!37061 (not res!28295)) b!37067))

(assert (= (and b!37067 res!28297) b!37066))

(assert (= (or b!37060 b!37067) bm!2782))

(assert (= (or b!37063 b!37066) bm!2783))

(assert (= (or b!37065 bm!2783) bm!2784))

(declare-fun m!12067 () Bool)

(assert (=> b!37062 m!12067))

(declare-fun m!12069 () Bool)

(assert (=> bm!2784 m!12069))

(declare-fun m!12071 () Bool)

(assert (=> bm!2782 m!12071))

(assert (=> bm!2757 d!3965))

(declare-fun d!3967 () Bool)

(declare-fun lt!3171 () tuple2!398)

(assert (=> d!3967 (validCacheMap!4 (cache!590 (_2!265 lt!3171)))))

(declare-fun Unit!206 () Unit!204)

(declare-datatypes ((tuple2!400 0))(
  ( (tuple2!401 (_1!266 Bool) (_2!266 MutableMap!109)) )
))
(declare-fun update!16 (MutableMap!109 tuple2!392 Regex!177) tuple2!400)

(assert (=> d!3967 (= lt!3171 (tuple2!399 Unit!206 (Cache!27 (_2!266 (update!16 (cache!590 (_2!264 lt!3145)) (tuple2!393 r!13380 (head!334 input!6011)) (_1!264 lt!3145))))))))

(declare-fun lt!3172 () Unit!204)

(declare-fun lt!3174 () Unit!204)

(assert (=> d!3967 (= lt!3172 lt!3174)))

(declare-fun lt!3173 () tuple2!392)

(declare-fun lambda!631 () Int)

(declare-fun forall!51 (List!414 Int) Bool)

(declare-datatypes ((ListMap!41 0))(
  ( (ListMap!42 (toList!171 List!414)) )
))
(declare-fun map!217 (MutableMap!109) ListMap!41)

(assert (=> d!3967 (forall!51 (toList!171 (map!217 (_2!266 (update!16 (cache!590 (_2!264 lt!3145)) lt!3173 (_1!264 lt!3145))))) lambda!631)))

(declare-fun lemmaUpdatePreservesForallPairs!2 (MutableMap!109 tuple2!392 Regex!177 Int) Unit!204)

(assert (=> d!3967 (= lt!3174 (lemmaUpdatePreservesForallPairs!2 (cache!590 (_2!264 lt!3145)) lt!3173 (_1!264 lt!3145) lambda!631))))

(assert (=> d!3967 (= lt!3173 (tuple2!393 r!13380 (head!334 input!6011)))))

(assert (=> d!3967 (validCacheMap!4 (cache!590 (_2!264 lt!3145)))))

(assert (=> d!3967 (= (update!15 (_2!264 lt!3145) r!13380 (head!334 input!6011) (_1!264 lt!3145)) lt!3171)))

(declare-fun bs!4979 () Bool)

(assert (= bs!4979 d!3967))

(declare-fun m!12073 () Bool)

(assert (=> bs!4979 m!12073))

(declare-fun m!12075 () Bool)

(assert (=> bs!4979 m!12075))

(declare-fun m!12077 () Bool)

(assert (=> bs!4979 m!12077))

(declare-fun m!12079 () Bool)

(assert (=> bs!4979 m!12079))

(declare-fun m!12081 () Bool)

(assert (=> bs!4979 m!12081))

(declare-fun m!12083 () Bool)

(assert (=> bs!4979 m!12083))

(declare-fun m!12085 () Bool)

(assert (=> bs!4979 m!12085))

(assert (=> b!36965 d!3967))

(declare-fun bs!4980 () Bool)

(declare-fun b!37078 () Bool)

(assert (= bs!4980 (and b!37078 d!3967)))

(declare-fun lambda!634 () Int)

(assert (=> bs!4980 (= lambda!634 lambda!631)))

(declare-fun d!3969 () Bool)

(declare-fun res!28309 () Bool)

(declare-fun e!18248 () Bool)

(assert (=> d!3969 (=> (not res!28309) (not e!18248))))

(declare-fun valid!122 (MutableMap!109) Bool)

(assert (=> d!3969 (= res!28309 (valid!122 (cache!590 cache!443)))))

(assert (=> d!3969 (= (validCacheMap!4 (cache!590 cache!443)) e!18248)))

(declare-fun b!37077 () Bool)

(declare-fun res!28310 () Bool)

(assert (=> b!37077 (=> (not res!28310) (not e!18248))))

(declare-fun invariantList!20 (List!414) Bool)

(assert (=> b!37077 (= res!28310 (invariantList!20 (toList!171 (map!217 (cache!590 cache!443)))))))

(assert (=> b!37078 (= e!18248 (forall!51 (toList!171 (map!217 (cache!590 cache!443))) lambda!634))))

(assert (= (and d!3969 res!28309) b!37077))

(assert (= (and b!37077 res!28310) b!37078))

(declare-fun m!12088 () Bool)

(assert (=> d!3969 m!12088))

(declare-fun m!12090 () Bool)

(assert (=> b!37077 m!12090))

(declare-fun m!12092 () Bool)

(assert (=> b!37077 m!12092))

(assert (=> b!37078 m!12090))

(declare-fun m!12094 () Bool)

(assert (=> b!37078 m!12094))

(assert (=> d!3957 d!3969))

(declare-fun d!3971 () Bool)

(assert (=> d!3971 (= (nullable!11 (regOne!866 r!13380)) (nullableFct!8 (regOne!866 r!13380)))))

(declare-fun bs!4981 () Bool)

(assert (= bs!4981 d!3971))

(declare-fun m!12096 () Bool)

(assert (=> bs!4981 m!12096))

(assert (=> b!36966 d!3971))

(declare-fun c!15611 () Bool)

(declare-fun lt!3179 () tuple2!396)

(declare-fun bm!2785 () Bool)

(declare-fun call!2792 () tuple2!396)

(declare-fun c!15608 () Bool)

(assert (=> bm!2785 (= call!2792 (derivativeStepMem!6 (ite c!15611 (regTwo!867 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))) (ite c!15608 (reg!506 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))) (regOne!866 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))))) (head!334 input!6011) (ite c!15611 (_2!264 lt!3179) (ite c!15592 cache!443 (_2!264 lt!3153)))))))

(declare-fun b!37079 () Bool)

(declare-fun lt!3182 () tuple2!396)

(declare-fun call!2791 () tuple2!396)

(assert (=> b!37079 (= lt!3182 call!2791)))

(declare-fun lt!3183 () tuple2!396)

(declare-fun call!2790 () tuple2!396)

(assert (=> b!37079 (= lt!3183 call!2790)))

(declare-fun e!18250 () tuple2!396)

(assert (=> b!37079 (= e!18250 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3183) (regTwo!866 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))) (_1!264 lt!3182)) (_2!264 lt!3182)))))

(declare-fun lt!3175 () tuple2!396)

(declare-fun b!37080 () Bool)

(declare-fun e!18252 () tuple2!396)

(assert (=> b!37080 (= e!18252 (tuple2!397 (_1!264 lt!3175) (_2!265 (update!15 (_2!264 lt!3175) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)) (head!334 input!6011) (_1!264 lt!3175)))))))

(declare-fun c!15607 () Bool)

(assert (=> b!37080 (= c!15607 (or ((_ is EmptyExpr!177) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))) ((_ is EmptyLang!177) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))))))

(declare-fun e!18249 () tuple2!396)

(assert (=> b!37080 (= lt!3175 e!18249)))

(declare-fun b!37081 () Bool)

(declare-fun e!18253 () tuple2!396)

(assert (=> b!37081 (= e!18253 e!18250)))

(declare-fun c!15610 () Bool)

(assert (=> b!37081 (= c!15610 (nullable!11 (regOne!866 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))))))

(declare-fun b!37082 () Bool)

(declare-fun lt!3178 () Option!48)

(assert (=> b!37082 (= e!18252 (tuple2!397 (v!12198 lt!3178) (ite c!15592 cache!443 (_2!264 lt!3153))))))

(declare-fun b!37083 () Bool)

(declare-fun c!15606 () Bool)

(assert (=> b!37083 (= c!15606 ((_ is ElementMatch!177) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))))))

(declare-fun e!18251 () tuple2!396)

(assert (=> b!37083 (= e!18249 e!18251)))

(declare-fun bm!2787 () Bool)

(declare-fun call!2793 () tuple2!396)

(assert (=> bm!2787 (= call!2793 call!2792)))

(declare-fun b!37084 () Bool)

(assert (=> b!37084 (= c!15608 ((_ is Star!177) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))))))

(declare-fun e!18254 () tuple2!396)

(assert (=> b!37084 (= e!18254 e!18253)))

(declare-fun b!37085 () Bool)

(assert (=> b!37085 (= e!18251 (tuple2!397 (ite (= (head!334 input!6011) (c!15568 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))) EmptyExpr!177 EmptyLang!177) (ite c!15592 cache!443 (_2!264 lt!3153))))))

(declare-fun b!37086 () Bool)

(declare-fun lt!3176 () tuple2!396)

(assert (=> b!37086 (= lt!3176 call!2792)))

(assert (=> b!37086 (= lt!3179 call!2791)))

(assert (=> b!37086 (= e!18254 (tuple2!397 (Union!177 (_1!264 lt!3179) (_1!264 lt!3176)) (_2!264 lt!3176)))))

(declare-fun b!37087 () Bool)

(declare-fun lt!3177 () tuple2!396)

(assert (=> b!37087 (= e!18253 (tuple2!397 (Concat!296 (_1!264 lt!3177) (Star!177 (reg!506 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))))) (_2!264 lt!3177)))))

(assert (=> b!37087 (= lt!3177 call!2793)))

(declare-fun b!37088 () Bool)

(declare-fun lt!3181 () tuple2!396)

(assert (=> b!37088 (= lt!3181 call!2790)))

(assert (=> b!37088 (= e!18250 (tuple2!397 (Union!177 (Concat!296 (_1!264 lt!3181) (regTwo!866 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))) EmptyLang!177) (_2!264 lt!3181)))))

(declare-fun bm!2788 () Bool)

(assert (=> bm!2788 (= call!2791 (derivativeStepMem!6 (ite c!15611 (regOne!867 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))) (regTwo!866 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))) (head!334 input!6011) (ite c!15611 (ite c!15592 cache!443 (_2!264 lt!3153)) (_2!264 lt!3183))))))

(declare-fun b!37089 () Bool)

(assert (=> b!37089 (= e!18249 (tuple2!397 EmptyLang!177 (ite c!15592 cache!443 (_2!264 lt!3153))))))

(declare-fun b!37090 () Bool)

(assert (=> b!37090 (= e!18251 e!18254)))

(assert (=> b!37090 (= c!15611 ((_ is Union!177) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380))))))

(declare-fun d!3973 () Bool)

(declare-fun lt!3180 () tuple2!396)

(assert (=> d!3973 (= (_1!264 lt!3180) (derivativeStep!3 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)) (head!334 input!6011)))))

(assert (=> d!3973 (= lt!3180 e!18252)))

(declare-fun c!15609 () Bool)

(assert (=> d!3973 (= c!15609 ((_ is Some!47) lt!3178))))

(assert (=> d!3973 (= lt!3178 (get!191 (ite c!15592 cache!443 (_2!264 lt!3153)) (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)) (head!334 input!6011)))))

(assert (=> d!3973 (validRegex!14 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)))))

(assert (=> d!3973 (= (derivativeStepMem!6 (ite c!15592 (regOne!867 r!13380) (regTwo!866 r!13380)) (head!334 input!6011) (ite c!15592 cache!443 (_2!264 lt!3153))) lt!3180)))

(declare-fun bm!2786 () Bool)

(assert (=> bm!2786 (= call!2790 call!2793)))

(assert (= (and d!3973 c!15609) b!37082))

(assert (= (and d!3973 (not c!15609)) b!37080))

(assert (= (and b!37080 c!15607) b!37089))

(assert (= (and b!37080 (not c!15607)) b!37083))

(assert (= (and b!37083 c!15606) b!37085))

(assert (= (and b!37083 (not c!15606)) b!37090))

(assert (= (and b!37090 c!15611) b!37086))

(assert (= (and b!37090 (not c!15611)) b!37084))

(assert (= (and b!37084 c!15608) b!37087))

(assert (= (and b!37084 (not c!15608)) b!37081))

(assert (= (and b!37081 c!15610) b!37079))

(assert (= (and b!37081 (not c!15610)) b!37088))

(assert (= (or b!37079 b!37088) bm!2786))

(assert (= (or b!37087 bm!2786) bm!2787))

(assert (= (or b!37086 bm!2787) bm!2785))

(assert (= (or b!37086 b!37079) bm!2788))

(declare-fun m!12098 () Bool)

(assert (=> b!37081 m!12098))

(assert (=> bm!2788 m!12005))

(declare-fun m!12100 () Bool)

(assert (=> bm!2788 m!12100))

(assert (=> b!37080 m!12005))

(declare-fun m!12102 () Bool)

(assert (=> b!37080 m!12102))

(assert (=> bm!2785 m!12005))

(declare-fun m!12104 () Bool)

(assert (=> bm!2785 m!12104))

(assert (=> d!3973 m!12005))

(declare-fun m!12106 () Bool)

(assert (=> d!3973 m!12106))

(assert (=> d!3973 m!12005))

(declare-fun m!12108 () Bool)

(assert (=> d!3973 m!12108))

(declare-fun m!12110 () Bool)

(assert (=> d!3973 m!12110))

(assert (=> bm!2771 d!3973))

(declare-fun bs!4982 () Bool)

(declare-fun b!37092 () Bool)

(assert (= bs!4982 (and b!37092 d!3967)))

(declare-fun lambda!635 () Int)

(assert (=> bs!4982 (= lambda!635 lambda!631)))

(declare-fun bs!4983 () Bool)

(assert (= bs!4983 (and b!37092 b!37078)))

(assert (=> bs!4983 (= lambda!635 lambda!634)))

(declare-fun d!3975 () Bool)

(declare-fun res!28311 () Bool)

(declare-fun e!18255 () Bool)

(assert (=> d!3975 (=> (not res!28311) (not e!18255))))

(assert (=> d!3975 (= res!28311 (valid!122 (cache!590 (_2!264 lt!3126))))))

(assert (=> d!3975 (= (validCacheMap!4 (cache!590 (_2!264 lt!3126))) e!18255)))

(declare-fun b!37091 () Bool)

(declare-fun res!28312 () Bool)

(assert (=> b!37091 (=> (not res!28312) (not e!18255))))

(assert (=> b!37091 (= res!28312 (invariantList!20 (toList!171 (map!217 (cache!590 (_2!264 lt!3126))))))))

(assert (=> b!37092 (= e!18255 (forall!51 (toList!171 (map!217 (cache!590 (_2!264 lt!3126)))) lambda!635))))

(assert (= (and d!3975 res!28311) b!37091))

(assert (= (and b!37091 res!28312) b!37092))

(declare-fun m!12112 () Bool)

(assert (=> d!3975 m!12112))

(declare-fun m!12114 () Bool)

(assert (=> b!37091 m!12114))

(declare-fun m!12116 () Bool)

(assert (=> b!37091 m!12116))

(assert (=> b!37092 m!12114))

(declare-fun m!12118 () Bool)

(assert (=> b!37092 m!12118))

(assert (=> d!3939 d!3975))

(declare-fun d!3977 () Bool)

(assert (=> d!3977 (= (nullable!11 (reg!506 (_1!264 lt!3126))) (nullableFct!8 (reg!506 (_1!264 lt!3126))))))

(declare-fun bs!4984 () Bool)

(assert (= bs!4984 d!3977))

(declare-fun m!12120 () Bool)

(assert (=> bs!4984 m!12120))

(assert (=> b!36933 d!3977))

(declare-fun b!37093 () Bool)

(declare-fun res!28314 () Bool)

(declare-fun e!18262 () Bool)

(assert (=> b!37093 (=> (not res!28314) (not e!18262))))

(declare-fun call!2796 () Bool)

(assert (=> b!37093 (= res!28314 call!2796)))

(declare-fun e!18256 () Bool)

(assert (=> b!37093 (= e!18256 e!18262)))

(declare-fun b!37094 () Bool)

(declare-fun res!28313 () Bool)

(declare-fun e!18261 () Bool)

(assert (=> b!37094 (=> res!28313 e!18261)))

(assert (=> b!37094 (= res!28313 (not ((_ is Concat!296) (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380))))))))

(assert (=> b!37094 (= e!18256 e!18261)))

(declare-fun b!37095 () Bool)

(declare-fun e!18257 () Bool)

(declare-fun e!18260 () Bool)

(assert (=> b!37095 (= e!18257 e!18260)))

(declare-fun res!28317 () Bool)

(assert (=> b!37095 (= res!28317 (not (nullable!11 (reg!506 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))))

(assert (=> b!37095 (=> (not res!28317) (not e!18260))))

(declare-fun b!37096 () Bool)

(declare-fun call!2794 () Bool)

(assert (=> b!37096 (= e!18262 call!2794)))

(declare-fun bm!2790 () Bool)

(declare-fun call!2795 () Bool)

(assert (=> bm!2790 (= call!2794 call!2795)))

(declare-fun b!37097 () Bool)

(declare-fun e!18259 () Bool)

(assert (=> b!37097 (= e!18259 e!18257)))

(declare-fun c!15612 () Bool)

(assert (=> b!37097 (= c!15612 ((_ is Star!177) (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))

(declare-fun bm!2791 () Bool)

(declare-fun c!15613 () Bool)

(assert (=> bm!2791 (= call!2795 (validRegex!14 (ite c!15612 (reg!506 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))) (ite c!15613 (regTwo!867 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))) (regTwo!866 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380))))))))))

(declare-fun b!37098 () Bool)

(assert (=> b!37098 (= e!18260 call!2795)))

(declare-fun b!37099 () Bool)

(declare-fun e!18258 () Bool)

(assert (=> b!37099 (= e!18258 call!2794)))

(declare-fun bm!2789 () Bool)

(assert (=> bm!2789 (= call!2796 (validRegex!14 (ite c!15613 (regOne!867 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))) (regOne!866 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))))

(declare-fun d!3979 () Bool)

(declare-fun res!28316 () Bool)

(assert (=> d!3979 (=> res!28316 e!18259)))

(assert (=> d!3979 (= res!28316 ((_ is ElementMatch!177) (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))

(assert (=> d!3979 (= (validRegex!14 (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))) e!18259)))

(declare-fun b!37100 () Bool)

(assert (=> b!37100 (= e!18261 e!18258)))

(declare-fun res!28315 () Bool)

(assert (=> b!37100 (=> (not res!28315) (not e!18258))))

(assert (=> b!37100 (= res!28315 call!2796)))

(declare-fun b!37101 () Bool)

(assert (=> b!37101 (= e!18257 e!18256)))

(assert (=> b!37101 (= c!15613 ((_ is Union!177) (ite c!15593 (reg!506 r!13380) (ite c!15594 (regTwo!867 r!13380) (regTwo!866 r!13380)))))))

(assert (= (and d!3979 (not res!28316)) b!37097))

(assert (= (and b!37097 c!15612) b!37095))

(assert (= (and b!37097 (not c!15612)) b!37101))

(assert (= (and b!37095 res!28317) b!37098))

(assert (= (and b!37101 c!15613) b!37093))

(assert (= (and b!37101 (not c!15613)) b!37094))

(assert (= (and b!37093 res!28314) b!37096))

(assert (= (and b!37094 (not res!28313)) b!37100))

(assert (= (and b!37100 res!28315) b!37099))

(assert (= (or b!37093 b!37100) bm!2789))

(assert (= (or b!37096 b!37099) bm!2790))

(assert (= (or b!37098 bm!2790) bm!2791))

(declare-fun m!12122 () Bool)

(assert (=> b!37095 m!12122))

(declare-fun m!12124 () Bool)

(assert (=> bm!2791 m!12124))

(declare-fun m!12126 () Bool)

(assert (=> bm!2789 m!12126))

(assert (=> bm!2774 d!3979))

(assert (=> b!36987 d!3969))

(declare-fun b!37102 () Bool)

(declare-fun res!28319 () Bool)

(declare-fun e!18269 () Bool)

(assert (=> b!37102 (=> (not res!28319) (not e!18269))))

(declare-fun call!2799 () Bool)

(assert (=> b!37102 (= res!28319 call!2799)))

(declare-fun e!18263 () Bool)

(assert (=> b!37102 (= e!18263 e!18269)))

(declare-fun b!37103 () Bool)

(declare-fun res!28318 () Bool)

(declare-fun e!18268 () Bool)

(assert (=> b!37103 (=> res!28318 e!18268)))

(assert (=> b!37103 (= res!28318 (not ((_ is Concat!296) (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126)))))))))

(assert (=> b!37103 (= e!18263 e!18268)))

(declare-fun b!37104 () Bool)

(declare-fun e!18264 () Bool)

(declare-fun e!18267 () Bool)

(assert (=> b!37104 (= e!18264 e!18267)))

(declare-fun res!28322 () Bool)

(assert (=> b!37104 (= res!28322 (not (nullable!11 (reg!506 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))))

(assert (=> b!37104 (=> (not res!28322) (not e!18267))))

(declare-fun b!37105 () Bool)

(declare-fun call!2797 () Bool)

(assert (=> b!37105 (= e!18269 call!2797)))

(declare-fun bm!2793 () Bool)

(declare-fun call!2798 () Bool)

(assert (=> bm!2793 (= call!2797 call!2798)))

(declare-fun b!37106 () Bool)

(declare-fun e!18266 () Bool)

(assert (=> b!37106 (= e!18266 e!18264)))

(declare-fun c!15614 () Bool)

(assert (=> b!37106 (= c!15614 ((_ is Star!177) (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))

(declare-fun c!15615 () Bool)

(declare-fun bm!2794 () Bool)

(assert (=> bm!2794 (= call!2798 (validRegex!14 (ite c!15614 (reg!506 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))) (ite c!15615 (regTwo!867 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))) (regTwo!866 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126)))))))))))

(declare-fun b!37107 () Bool)

(assert (=> b!37107 (= e!18267 call!2798)))

(declare-fun b!37108 () Bool)

(declare-fun e!18265 () Bool)

(assert (=> b!37108 (= e!18265 call!2797)))

(declare-fun bm!2792 () Bool)

(assert (=> bm!2792 (= call!2799 (validRegex!14 (ite c!15615 (regOne!867 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))) (regOne!866 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))))

(declare-fun d!3981 () Bool)

(declare-fun res!28321 () Bool)

(assert (=> d!3981 (=> res!28321 e!18266)))

(assert (=> d!3981 (= res!28321 ((_ is ElementMatch!177) (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))

(assert (=> d!3981 (= (validRegex!14 (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))) e!18266)))

(declare-fun b!37109 () Bool)

(assert (=> b!37109 (= e!18268 e!18265)))

(declare-fun res!28320 () Bool)

(assert (=> b!37109 (=> (not res!28320) (not e!18265))))

(assert (=> b!37109 (= res!28320 call!2799)))

(declare-fun b!37110 () Bool)

(assert (=> b!37110 (= e!18264 e!18263)))

(assert (=> b!37110 (= c!15615 ((_ is Union!177) (ite c!15573 (reg!506 (_1!264 lt!3126)) (ite c!15574 (regTwo!867 (_1!264 lt!3126)) (regTwo!866 (_1!264 lt!3126))))))))

(assert (= (and d!3981 (not res!28321)) b!37106))

(assert (= (and b!37106 c!15614) b!37104))

(assert (= (and b!37106 (not c!15614)) b!37110))

(assert (= (and b!37104 res!28322) b!37107))

(assert (= (and b!37110 c!15615) b!37102))

(assert (= (and b!37110 (not c!15615)) b!37103))

(assert (= (and b!37102 res!28319) b!37105))

(assert (= (and b!37103 (not res!28318)) b!37109))

(assert (= (and b!37109 res!28320) b!37108))

(assert (= (or b!37102 b!37109) bm!2792))

(assert (= (or b!37105 b!37108) bm!2793))

(assert (= (or b!37107 bm!2793) bm!2794))

(declare-fun m!12128 () Bool)

(assert (=> b!37104 m!12128))

(declare-fun m!12130 () Bool)

(assert (=> bm!2794 m!12130))

(declare-fun m!12132 () Bool)

(assert (=> bm!2792 m!12132))

(assert (=> bm!2759 d!3981))

(declare-fun call!2810 () Regex!177)

(declare-fun call!2808 () Regex!177)

(declare-fun b!37131 () Bool)

(declare-fun e!18281 () Regex!177)

(assert (=> b!37131 (= e!18281 (Union!177 (Concat!296 call!2810 (regTwo!866 r!13380)) call!2808))))

(declare-fun b!37132 () Bool)

(declare-fun e!18284 () Regex!177)

(declare-fun call!2811 () Regex!177)

(declare-fun call!2809 () Regex!177)

(assert (=> b!37132 (= e!18284 (Union!177 call!2811 call!2809))))

(declare-fun b!37133 () Bool)

(declare-fun e!18280 () Regex!177)

(declare-fun e!18282 () Regex!177)

(assert (=> b!37133 (= e!18280 e!18282)))

(declare-fun c!15628 () Bool)

(assert (=> b!37133 (= c!15628 ((_ is ElementMatch!177) r!13380))))

(declare-fun bm!2803 () Bool)

(declare-fun c!15627 () Bool)

(declare-fun c!15626 () Bool)

(assert (=> bm!2803 (= call!2809 (derivativeStep!3 (ite c!15627 (regTwo!867 r!13380) (ite c!15626 (reg!506 r!13380) (regOne!866 r!13380))) (head!334 input!6011)))))

(declare-fun d!3983 () Bool)

(declare-fun lt!3186 () Regex!177)

(assert (=> d!3983 (validRegex!14 lt!3186)))

(assert (=> d!3983 (= lt!3186 e!18280)))

(declare-fun c!15629 () Bool)

(assert (=> d!3983 (= c!15629 (or ((_ is EmptyExpr!177) r!13380) ((_ is EmptyLang!177) r!13380)))))

(assert (=> d!3983 (validRegex!14 r!13380)))

(assert (=> d!3983 (= (derivativeStep!3 r!13380 (head!334 input!6011)) lt!3186)))

(declare-fun c!15630 () Bool)

(declare-fun bm!2804 () Bool)

(assert (=> bm!2804 (= call!2811 (derivativeStep!3 (ite c!15627 (regOne!867 r!13380) (ite c!15630 (regTwo!866 r!13380) (regOne!866 r!13380))) (head!334 input!6011)))))

(declare-fun b!37134 () Bool)

(declare-fun e!18283 () Regex!177)

(assert (=> b!37134 (= e!18283 (Concat!296 call!2810 r!13380))))

(declare-fun b!37135 () Bool)

(assert (=> b!37135 (= e!18284 e!18283)))

(assert (=> b!37135 (= c!15626 ((_ is Star!177) r!13380))))

(declare-fun b!37136 () Bool)

(assert (=> b!37136 (= e!18282 (ite (= (head!334 input!6011) (c!15568 r!13380)) EmptyExpr!177 EmptyLang!177))))

(declare-fun bm!2805 () Bool)

(assert (=> bm!2805 (= call!2810 call!2809)))

(declare-fun b!37137 () Bool)

(assert (=> b!37137 (= c!15627 ((_ is Union!177) r!13380))))

(assert (=> b!37137 (= e!18282 e!18284)))

(declare-fun bm!2806 () Bool)

(assert (=> bm!2806 (= call!2808 call!2811)))

(declare-fun b!37138 () Bool)

(assert (=> b!37138 (= c!15630 (nullable!11 (regOne!866 r!13380)))))

(assert (=> b!37138 (= e!18283 e!18281)))

(declare-fun b!37139 () Bool)

(assert (=> b!37139 (= e!18280 EmptyLang!177)))

(declare-fun b!37140 () Bool)

(assert (=> b!37140 (= e!18281 (Union!177 (Concat!296 call!2808 (regTwo!866 r!13380)) EmptyLang!177))))

(assert (= (and d!3983 c!15629) b!37139))

(assert (= (and d!3983 (not c!15629)) b!37133))

(assert (= (and b!37133 c!15628) b!37136))

(assert (= (and b!37133 (not c!15628)) b!37137))

(assert (= (and b!37137 c!15627) b!37132))

(assert (= (and b!37137 (not c!15627)) b!37135))

(assert (= (and b!37135 c!15626) b!37134))

(assert (= (and b!37135 (not c!15626)) b!37138))

(assert (= (and b!37138 c!15630) b!37131))

(assert (= (and b!37138 (not c!15630)) b!37140))

(assert (= (or b!37131 b!37140) bm!2806))

(assert (= (or b!37134 b!37131) bm!2805))

(assert (= (or b!37132 bm!2805) bm!2803))

(assert (= (or b!37132 bm!2806) bm!2804))

(assert (=> bm!2803 m!12005))

(declare-fun m!12134 () Bool)

(assert (=> bm!2803 m!12134))

(declare-fun m!12136 () Bool)

(assert (=> d!3983 m!12136))

(assert (=> d!3983 m!12011))

(assert (=> bm!2804 m!12005))

(declare-fun m!12138 () Bool)

(assert (=> bm!2804 m!12138))

(assert (=> b!37138 m!12023))

(assert (=> d!3945 d!3983))

(declare-fun d!3985 () Bool)

(declare-fun e!18289 () Bool)

(assert (=> d!3985 e!18289))

(declare-fun res!28325 () Bool)

(assert (=> d!3985 (=> res!28325 e!18289)))

(declare-fun lt!3192 () Option!48)

(declare-fun isEmpty!94 (Option!48) Bool)

(assert (=> d!3985 (= res!28325 (isEmpty!94 lt!3192))))

(declare-fun e!18290 () Option!48)

(assert (=> d!3985 (= lt!3192 e!18290)))

(declare-fun c!15634 () Bool)

(declare-fun contains!29 (MutableMap!109 tuple2!392) Bool)

(assert (=> d!3985 (= c!15634 (contains!29 (cache!590 cache!443) (tuple2!393 r!13380 (head!334 input!6011))))))

(assert (=> d!3985 (validRegex!14 r!13380)))

(assert (=> d!3985 (= (get!191 cache!443 r!13380 (head!334 input!6011)) lt!3192)))

(declare-fun b!37147 () Bool)

(declare-fun apply!20 (MutableMap!109 tuple2!392) Regex!177)

(assert (=> b!37147 (= e!18290 (Some!47 (apply!20 (cache!590 cache!443) (tuple2!393 r!13380 (head!334 input!6011)))))))

(declare-fun lt!3191 () Unit!204)

(declare-fun lemmaIfInCacheThenValid!6 (Cache!26 Regex!177 C!1388) Unit!204)

(assert (=> b!37147 (= lt!3191 (lemmaIfInCacheThenValid!6 cache!443 r!13380 (head!334 input!6011)))))

(declare-fun b!37148 () Bool)

(assert (=> b!37148 (= e!18290 None!47)))

(declare-fun b!37149 () Bool)

(declare-fun get!192 (Option!48) Regex!177)

(assert (=> b!37149 (= e!18289 (= (get!192 lt!3192) (derivativeStep!3 r!13380 (head!334 input!6011))))))

(assert (= (and d!3985 c!15634) b!37147))

(assert (= (and d!3985 (not c!15634)) b!37148))

(assert (= (and d!3985 (not res!28325)) b!37149))

(declare-fun m!12140 () Bool)

(assert (=> d!3985 m!12140))

(declare-fun m!12142 () Bool)

(assert (=> d!3985 m!12142))

(assert (=> d!3985 m!12011))

(declare-fun m!12144 () Bool)

(assert (=> b!37147 m!12144))

(assert (=> b!37147 m!12005))

(declare-fun m!12146 () Bool)

(assert (=> b!37147 m!12146))

(declare-fun m!12148 () Bool)

(assert (=> b!37149 m!12148))

(assert (=> b!37149 m!12005))

(assert (=> b!37149 m!12031))

(assert (=> d!3945 d!3985))

(assert (=> d!3945 d!3949))

(declare-fun e!18291 () Bool)

(assert (=> b!37032 (= tp!25645 e!18291)))

(declare-fun b!37151 () Bool)

(declare-fun tp!25655 () Bool)

(declare-fun tp!25657 () Bool)

(assert (=> b!37151 (= e!18291 (and tp!25655 tp!25657))))

(declare-fun b!37150 () Bool)

(assert (=> b!37150 (= e!18291 tp_is_empty!379)))

(declare-fun b!37152 () Bool)

(declare-fun tp!25653 () Bool)

(assert (=> b!37152 (= e!18291 tp!25653)))

(declare-fun b!37153 () Bool)

(declare-fun tp!25654 () Bool)

(declare-fun tp!25656 () Bool)

(assert (=> b!37153 (= e!18291 (and tp!25654 tp!25656))))

(assert (= (and b!37032 ((_ is ElementMatch!177) (regOne!866 (regOne!867 r!13380)))) b!37150))

(assert (= (and b!37032 ((_ is Concat!296) (regOne!866 (regOne!867 r!13380)))) b!37151))

(assert (= (and b!37032 ((_ is Star!177) (regOne!866 (regOne!867 r!13380)))) b!37152))

(assert (= (and b!37032 ((_ is Union!177) (regOne!866 (regOne!867 r!13380)))) b!37153))

(declare-fun e!18292 () Bool)

(assert (=> b!37032 (= tp!25647 e!18292)))

(declare-fun b!37155 () Bool)

(declare-fun tp!25660 () Bool)

(declare-fun tp!25662 () Bool)

(assert (=> b!37155 (= e!18292 (and tp!25660 tp!25662))))

(declare-fun b!37154 () Bool)

(assert (=> b!37154 (= e!18292 tp_is_empty!379)))

(declare-fun b!37156 () Bool)

(declare-fun tp!25658 () Bool)

(assert (=> b!37156 (= e!18292 tp!25658)))

(declare-fun b!37157 () Bool)

(declare-fun tp!25659 () Bool)

(declare-fun tp!25661 () Bool)

(assert (=> b!37157 (= e!18292 (and tp!25659 tp!25661))))

(assert (= (and b!37032 ((_ is ElementMatch!177) (regTwo!866 (regOne!867 r!13380)))) b!37154))

(assert (= (and b!37032 ((_ is Concat!296) (regTwo!866 (regOne!867 r!13380)))) b!37155))

(assert (= (and b!37032 ((_ is Star!177) (regTwo!866 (regOne!867 r!13380)))) b!37156))

(assert (= (and b!37032 ((_ is Union!177) (regTwo!866 (regOne!867 r!13380)))) b!37157))

(declare-fun e!18293 () Bool)

(assert (=> b!37033 (= tp!25643 e!18293)))

(declare-fun b!37159 () Bool)

(declare-fun tp!25665 () Bool)

(declare-fun tp!25667 () Bool)

(assert (=> b!37159 (= e!18293 (and tp!25665 tp!25667))))

(declare-fun b!37158 () Bool)

(assert (=> b!37158 (= e!18293 tp_is_empty!379)))

(declare-fun b!37160 () Bool)

(declare-fun tp!25663 () Bool)

(assert (=> b!37160 (= e!18293 tp!25663)))

(declare-fun b!37161 () Bool)

(declare-fun tp!25664 () Bool)

(declare-fun tp!25666 () Bool)

(assert (=> b!37161 (= e!18293 (and tp!25664 tp!25666))))

(assert (= (and b!37033 ((_ is ElementMatch!177) (reg!506 (regOne!867 r!13380)))) b!37158))

(assert (= (and b!37033 ((_ is Concat!296) (reg!506 (regOne!867 r!13380)))) b!37159))

(assert (= (and b!37033 ((_ is Star!177) (reg!506 (regOne!867 r!13380)))) b!37160))

(assert (= (and b!37033 ((_ is Union!177) (reg!506 (regOne!867 r!13380)))) b!37161))

(declare-fun e!18294 () Bool)

(assert (=> b!37034 (= tp!25644 e!18294)))

(declare-fun b!37163 () Bool)

(declare-fun tp!25670 () Bool)

(declare-fun tp!25672 () Bool)

(assert (=> b!37163 (= e!18294 (and tp!25670 tp!25672))))

(declare-fun b!37162 () Bool)

(assert (=> b!37162 (= e!18294 tp_is_empty!379)))

(declare-fun b!37164 () Bool)

(declare-fun tp!25668 () Bool)

(assert (=> b!37164 (= e!18294 tp!25668)))

(declare-fun b!37165 () Bool)

(declare-fun tp!25669 () Bool)

(declare-fun tp!25671 () Bool)

(assert (=> b!37165 (= e!18294 (and tp!25669 tp!25671))))

(assert (= (and b!37034 ((_ is ElementMatch!177) (regOne!867 (regOne!867 r!13380)))) b!37162))

(assert (= (and b!37034 ((_ is Concat!296) (regOne!867 (regOne!867 r!13380)))) b!37163))

(assert (= (and b!37034 ((_ is Star!177) (regOne!867 (regOne!867 r!13380)))) b!37164))

(assert (= (and b!37034 ((_ is Union!177) (regOne!867 (regOne!867 r!13380)))) b!37165))

(declare-fun e!18295 () Bool)

(assert (=> b!37034 (= tp!25646 e!18295)))

(declare-fun b!37167 () Bool)

(declare-fun tp!25675 () Bool)

(declare-fun tp!25677 () Bool)

(assert (=> b!37167 (= e!18295 (and tp!25675 tp!25677))))

(declare-fun b!37166 () Bool)

(assert (=> b!37166 (= e!18295 tp_is_empty!379)))

(declare-fun b!37168 () Bool)

(declare-fun tp!25673 () Bool)

(assert (=> b!37168 (= e!18295 tp!25673)))

(declare-fun b!37169 () Bool)

(declare-fun tp!25674 () Bool)

(declare-fun tp!25676 () Bool)

(assert (=> b!37169 (= e!18295 (and tp!25674 tp!25676))))

(assert (= (and b!37034 ((_ is ElementMatch!177) (regTwo!867 (regOne!867 r!13380)))) b!37166))

(assert (= (and b!37034 ((_ is Concat!296) (regTwo!867 (regOne!867 r!13380)))) b!37167))

(assert (= (and b!37034 ((_ is Star!177) (regTwo!867 (regOne!867 r!13380)))) b!37168))

(assert (= (and b!37034 ((_ is Union!177) (regTwo!867 (regOne!867 r!13380)))) b!37169))

(declare-fun e!18296 () Bool)

(assert (=> b!36999 (= tp!25588 e!18296)))

(declare-fun b!37171 () Bool)

(declare-fun tp!25680 () Bool)

(declare-fun tp!25682 () Bool)

(assert (=> b!37171 (= e!18296 (and tp!25680 tp!25682))))

(declare-fun b!37170 () Bool)

(assert (=> b!37170 (= e!18296 tp_is_empty!379)))

(declare-fun b!37172 () Bool)

(declare-fun tp!25678 () Bool)

(assert (=> b!37172 (= e!18296 tp!25678)))

(declare-fun b!37173 () Bool)

(declare-fun tp!25679 () Bool)

(declare-fun tp!25681 () Bool)

(assert (=> b!37173 (= e!18296 (and tp!25679 tp!25681))))

(assert (= (and b!36999 ((_ is ElementMatch!177) (regOne!866 (regOne!866 r!13380)))) b!37170))

(assert (= (and b!36999 ((_ is Concat!296) (regOne!866 (regOne!866 r!13380)))) b!37171))

(assert (= (and b!36999 ((_ is Star!177) (regOne!866 (regOne!866 r!13380)))) b!37172))

(assert (= (and b!36999 ((_ is Union!177) (regOne!866 (regOne!866 r!13380)))) b!37173))

(declare-fun e!18297 () Bool)

(assert (=> b!36999 (= tp!25590 e!18297)))

(declare-fun b!37175 () Bool)

(declare-fun tp!25685 () Bool)

(declare-fun tp!25687 () Bool)

(assert (=> b!37175 (= e!18297 (and tp!25685 tp!25687))))

(declare-fun b!37174 () Bool)

(assert (=> b!37174 (= e!18297 tp_is_empty!379)))

(declare-fun b!37176 () Bool)

(declare-fun tp!25683 () Bool)

(assert (=> b!37176 (= e!18297 tp!25683)))

(declare-fun b!37177 () Bool)

(declare-fun tp!25684 () Bool)

(declare-fun tp!25686 () Bool)

(assert (=> b!37177 (= e!18297 (and tp!25684 tp!25686))))

(assert (= (and b!36999 ((_ is ElementMatch!177) (regTwo!866 (regOne!866 r!13380)))) b!37174))

(assert (= (and b!36999 ((_ is Concat!296) (regTwo!866 (regOne!866 r!13380)))) b!37175))

(assert (= (and b!36999 ((_ is Star!177) (regTwo!866 (regOne!866 r!13380)))) b!37176))

(assert (= (and b!36999 ((_ is Union!177) (regTwo!866 (regOne!866 r!13380)))) b!37177))

(declare-fun e!18298 () Bool)

(assert (=> b!37001 (= tp!25587 e!18298)))

(declare-fun b!37179 () Bool)

(declare-fun tp!25690 () Bool)

(declare-fun tp!25692 () Bool)

(assert (=> b!37179 (= e!18298 (and tp!25690 tp!25692))))

(declare-fun b!37178 () Bool)

(assert (=> b!37178 (= e!18298 tp_is_empty!379)))

(declare-fun b!37180 () Bool)

(declare-fun tp!25688 () Bool)

(assert (=> b!37180 (= e!18298 tp!25688)))

(declare-fun b!37181 () Bool)

(declare-fun tp!25689 () Bool)

(declare-fun tp!25691 () Bool)

(assert (=> b!37181 (= e!18298 (and tp!25689 tp!25691))))

(assert (= (and b!37001 ((_ is ElementMatch!177) (regOne!867 (regOne!866 r!13380)))) b!37178))

(assert (= (and b!37001 ((_ is Concat!296) (regOne!867 (regOne!866 r!13380)))) b!37179))

(assert (= (and b!37001 ((_ is Star!177) (regOne!867 (regOne!866 r!13380)))) b!37180))

(assert (= (and b!37001 ((_ is Union!177) (regOne!867 (regOne!866 r!13380)))) b!37181))

(declare-fun e!18299 () Bool)

(assert (=> b!37001 (= tp!25589 e!18299)))

(declare-fun b!37183 () Bool)

(declare-fun tp!25695 () Bool)

(declare-fun tp!25697 () Bool)

(assert (=> b!37183 (= e!18299 (and tp!25695 tp!25697))))

(declare-fun b!37182 () Bool)

(assert (=> b!37182 (= e!18299 tp_is_empty!379)))

(declare-fun b!37184 () Bool)

(declare-fun tp!25693 () Bool)

(assert (=> b!37184 (= e!18299 tp!25693)))

(declare-fun b!37185 () Bool)

(declare-fun tp!25694 () Bool)

(declare-fun tp!25696 () Bool)

(assert (=> b!37185 (= e!18299 (and tp!25694 tp!25696))))

(assert (= (and b!37001 ((_ is ElementMatch!177) (regTwo!867 (regOne!866 r!13380)))) b!37182))

(assert (= (and b!37001 ((_ is Concat!296) (regTwo!867 (regOne!866 r!13380)))) b!37183))

(assert (= (and b!37001 ((_ is Star!177) (regTwo!867 (regOne!866 r!13380)))) b!37184))

(assert (= (and b!37001 ((_ is Union!177) (regTwo!867 (regOne!866 r!13380)))) b!37185))

(declare-fun e!18300 () Bool)

(assert (=> b!37000 (= tp!25586 e!18300)))

(declare-fun b!37187 () Bool)

(declare-fun tp!25700 () Bool)

(declare-fun tp!25702 () Bool)

(assert (=> b!37187 (= e!18300 (and tp!25700 tp!25702))))

(declare-fun b!37186 () Bool)

(assert (=> b!37186 (= e!18300 tp_is_empty!379)))

(declare-fun b!37188 () Bool)

(declare-fun tp!25698 () Bool)

(assert (=> b!37188 (= e!18300 tp!25698)))

(declare-fun b!37189 () Bool)

(declare-fun tp!25699 () Bool)

(declare-fun tp!25701 () Bool)

(assert (=> b!37189 (= e!18300 (and tp!25699 tp!25701))))

(assert (= (and b!37000 ((_ is ElementMatch!177) (reg!506 (regOne!866 r!13380)))) b!37186))

(assert (= (and b!37000 ((_ is Concat!296) (reg!506 (regOne!866 r!13380)))) b!37187))

(assert (= (and b!37000 ((_ is Star!177) (reg!506 (regOne!866 r!13380)))) b!37188))

(assert (= (and b!37000 ((_ is Union!177) (reg!506 (regOne!866 r!13380)))) b!37189))

(declare-fun e!18301 () Bool)

(assert (=> b!37013 (= tp!25610 e!18301)))

(declare-fun b!37191 () Bool)

(declare-fun tp!25705 () Bool)

(declare-fun tp!25707 () Bool)

(assert (=> b!37191 (= e!18301 (and tp!25705 tp!25707))))

(declare-fun b!37190 () Bool)

(assert (=> b!37190 (= e!18301 tp_is_empty!379)))

(declare-fun b!37192 () Bool)

(declare-fun tp!25703 () Bool)

(assert (=> b!37192 (= e!18301 tp!25703)))

(declare-fun b!37193 () Bool)

(declare-fun tp!25704 () Bool)

(declare-fun tp!25706 () Bool)

(assert (=> b!37193 (= e!18301 (and tp!25704 tp!25706))))

(assert (= (and b!37013 ((_ is ElementMatch!177) (regOne!866 (reg!506 r!13380)))) b!37190))

(assert (= (and b!37013 ((_ is Concat!296) (regOne!866 (reg!506 r!13380)))) b!37191))

(assert (= (and b!37013 ((_ is Star!177) (regOne!866 (reg!506 r!13380)))) b!37192))

(assert (= (and b!37013 ((_ is Union!177) (regOne!866 (reg!506 r!13380)))) b!37193))

(declare-fun e!18302 () Bool)

(assert (=> b!37013 (= tp!25612 e!18302)))

(declare-fun b!37195 () Bool)

(declare-fun tp!25710 () Bool)

(declare-fun tp!25712 () Bool)

(assert (=> b!37195 (= e!18302 (and tp!25710 tp!25712))))

(declare-fun b!37194 () Bool)

(assert (=> b!37194 (= e!18302 tp_is_empty!379)))

(declare-fun b!37196 () Bool)

(declare-fun tp!25708 () Bool)

(assert (=> b!37196 (= e!18302 tp!25708)))

(declare-fun b!37197 () Bool)

(declare-fun tp!25709 () Bool)

(declare-fun tp!25711 () Bool)

(assert (=> b!37197 (= e!18302 (and tp!25709 tp!25711))))

(assert (= (and b!37013 ((_ is ElementMatch!177) (regTwo!866 (reg!506 r!13380)))) b!37194))

(assert (= (and b!37013 ((_ is Concat!296) (regTwo!866 (reg!506 r!13380)))) b!37195))

(assert (= (and b!37013 ((_ is Star!177) (regTwo!866 (reg!506 r!13380)))) b!37196))

(assert (= (and b!37013 ((_ is Union!177) (regTwo!866 (reg!506 r!13380)))) b!37197))

(declare-fun e!18303 () Bool)

(assert (=> b!37022 (= tp!25633 e!18303)))

(declare-fun b!37199 () Bool)

(declare-fun tp!25715 () Bool)

(declare-fun tp!25717 () Bool)

(assert (=> b!37199 (= e!18303 (and tp!25715 tp!25717))))

(declare-fun b!37198 () Bool)

(assert (=> b!37198 (= e!18303 tp_is_empty!379)))

(declare-fun b!37200 () Bool)

(declare-fun tp!25713 () Bool)

(assert (=> b!37200 (= e!18303 tp!25713)))

(declare-fun b!37201 () Bool)

(declare-fun tp!25714 () Bool)

(declare-fun tp!25716 () Bool)

(assert (=> b!37201 (= e!18303 (and tp!25714 tp!25716))))

(assert (= (and b!37022 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 mapValue!386))))) b!37198))

(assert (= (and b!37022 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 mapValue!386))))) b!37199))

(assert (= (and b!37022 ((_ is Star!177) (_1!262 (_1!263 (h!5808 mapValue!386))))) b!37200))

(assert (= (and b!37022 ((_ is Union!177) (_1!262 (_1!263 (h!5808 mapValue!386))))) b!37201))

(declare-fun e!18304 () Bool)

(assert (=> b!37022 (= tp!25629 e!18304)))

(declare-fun b!37203 () Bool)

(declare-fun tp!25720 () Bool)

(declare-fun tp!25722 () Bool)

(assert (=> b!37203 (= e!18304 (and tp!25720 tp!25722))))

(declare-fun b!37202 () Bool)

(assert (=> b!37202 (= e!18304 tp_is_empty!379)))

(declare-fun b!37204 () Bool)

(declare-fun tp!25718 () Bool)

(assert (=> b!37204 (= e!18304 tp!25718)))

(declare-fun b!37205 () Bool)

(declare-fun tp!25719 () Bool)

(declare-fun tp!25721 () Bool)

(assert (=> b!37205 (= e!18304 (and tp!25719 tp!25721))))

(assert (= (and b!37022 ((_ is ElementMatch!177) (_2!263 (h!5808 mapValue!386)))) b!37202))

(assert (= (and b!37022 ((_ is Concat!296) (_2!263 (h!5808 mapValue!386)))) b!37203))

(assert (= (and b!37022 ((_ is Star!177) (_2!263 (h!5808 mapValue!386)))) b!37204))

(assert (= (and b!37022 ((_ is Union!177) (_2!263 (h!5808 mapValue!386)))) b!37205))

(declare-fun tp!25724 () Bool)

(declare-fun tp!25723 () Bool)

(declare-fun e!18305 () Bool)

(declare-fun tp!25725 () Bool)

(declare-fun b!37206 () Bool)

(assert (=> b!37206 (= e!18305 (and tp!25723 tp_is_empty!379 tp!25724 tp!25725))))

(assert (=> b!37022 (= tp!25628 e!18305)))

(assert (= (and b!37022 ((_ is Cons!412) (t!15250 mapValue!386))) b!37206))

(declare-fun tp!25728 () Bool)

(declare-fun e!18307 () Bool)

(declare-fun tp!25727 () Bool)

(declare-fun b!37207 () Bool)

(declare-fun tp!25732 () Bool)

(assert (=> b!37207 (= e!18307 (and tp!25732 tp_is_empty!379 tp!25728 tp!25727))))

(declare-fun tp!25730 () Bool)

(declare-fun tp!25729 () Bool)

(declare-fun e!18306 () Bool)

(declare-fun b!37208 () Bool)

(declare-fun tp!25726 () Bool)

(assert (=> b!37208 (= e!18306 (and tp!25730 tp_is_empty!379 tp!25726 tp!25729))))

(declare-fun mapNonEmpty!387 () Bool)

(declare-fun mapRes!387 () Bool)

(declare-fun tp!25731 () Bool)

(assert (=> mapNonEmpty!387 (= mapRes!387 (and tp!25731 e!18307))))

(declare-fun mapRest!387 () (Array (_ BitVec 32) List!414))

(declare-fun mapValue!387 () List!414)

(declare-fun mapKey!387 () (_ BitVec 32))

(assert (=> mapNonEmpty!387 (= mapRest!386 (store mapRest!387 mapKey!387 mapValue!387))))

(declare-fun mapIsEmpty!387 () Bool)

(assert (=> mapIsEmpty!387 mapRes!387))

(declare-fun condMapEmpty!387 () Bool)

(declare-fun mapDefault!387 () List!414)

(assert (=> mapNonEmpty!386 (= condMapEmpty!387 (= mapRest!386 ((as const (Array (_ BitVec 32) List!414)) mapDefault!387)))))

(assert (=> mapNonEmpty!386 (= tp!25632 (and e!18306 mapRes!387))))

(assert (= (and mapNonEmpty!386 condMapEmpty!387) mapIsEmpty!387))

(assert (= (and mapNonEmpty!386 (not condMapEmpty!387)) mapNonEmpty!387))

(assert (= (and mapNonEmpty!387 ((_ is Cons!412) mapValue!387)) b!37207))

(assert (= (and mapNonEmpty!386 ((_ is Cons!412) mapDefault!387)) b!37208))

(declare-fun m!12150 () Bool)

(assert (=> mapNonEmpty!387 m!12150))

(declare-fun e!18308 () Bool)

(assert (=> b!37014 (= tp!25608 e!18308)))

(declare-fun b!37210 () Bool)

(declare-fun tp!25735 () Bool)

(declare-fun tp!25737 () Bool)

(assert (=> b!37210 (= e!18308 (and tp!25735 tp!25737))))

(declare-fun b!37209 () Bool)

(assert (=> b!37209 (= e!18308 tp_is_empty!379)))

(declare-fun b!37211 () Bool)

(declare-fun tp!25733 () Bool)

(assert (=> b!37211 (= e!18308 tp!25733)))

(declare-fun b!37212 () Bool)

(declare-fun tp!25734 () Bool)

(declare-fun tp!25736 () Bool)

(assert (=> b!37212 (= e!18308 (and tp!25734 tp!25736))))

(assert (= (and b!37014 ((_ is ElementMatch!177) (reg!506 (reg!506 r!13380)))) b!37209))

(assert (= (and b!37014 ((_ is Concat!296) (reg!506 (reg!506 r!13380)))) b!37210))

(assert (= (and b!37014 ((_ is Star!177) (reg!506 (reg!506 r!13380)))) b!37211))

(assert (= (and b!37014 ((_ is Union!177) (reg!506 (reg!506 r!13380)))) b!37212))

(declare-fun e!18309 () Bool)

(assert (=> b!37023 (= tp!25631 e!18309)))

(declare-fun b!37214 () Bool)

(declare-fun tp!25740 () Bool)

(declare-fun tp!25742 () Bool)

(assert (=> b!37214 (= e!18309 (and tp!25740 tp!25742))))

(declare-fun b!37213 () Bool)

(assert (=> b!37213 (= e!18309 tp_is_empty!379)))

(declare-fun b!37215 () Bool)

(declare-fun tp!25738 () Bool)

(assert (=> b!37215 (= e!18309 tp!25738)))

(declare-fun b!37216 () Bool)

(declare-fun tp!25739 () Bool)

(declare-fun tp!25741 () Bool)

(assert (=> b!37216 (= e!18309 (and tp!25739 tp!25741))))

(assert (= (and b!37023 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 mapDefault!386))))) b!37213))

(assert (= (and b!37023 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 mapDefault!386))))) b!37214))

(assert (= (and b!37023 ((_ is Star!177) (_1!262 (_1!263 (h!5808 mapDefault!386))))) b!37215))

(assert (= (and b!37023 ((_ is Union!177) (_1!262 (_1!263 (h!5808 mapDefault!386))))) b!37216))

(declare-fun e!18310 () Bool)

(assert (=> b!37023 (= tp!25627 e!18310)))

(declare-fun b!37218 () Bool)

(declare-fun tp!25745 () Bool)

(declare-fun tp!25747 () Bool)

(assert (=> b!37218 (= e!18310 (and tp!25745 tp!25747))))

(declare-fun b!37217 () Bool)

(assert (=> b!37217 (= e!18310 tp_is_empty!379)))

(declare-fun b!37219 () Bool)

(declare-fun tp!25743 () Bool)

(assert (=> b!37219 (= e!18310 tp!25743)))

(declare-fun b!37220 () Bool)

(declare-fun tp!25744 () Bool)

(declare-fun tp!25746 () Bool)

(assert (=> b!37220 (= e!18310 (and tp!25744 tp!25746))))

(assert (= (and b!37023 ((_ is ElementMatch!177) (_2!263 (h!5808 mapDefault!386)))) b!37217))

(assert (= (and b!37023 ((_ is Concat!296) (_2!263 (h!5808 mapDefault!386)))) b!37218))

(assert (= (and b!37023 ((_ is Star!177) (_2!263 (h!5808 mapDefault!386)))) b!37219))

(assert (= (and b!37023 ((_ is Union!177) (_2!263 (h!5808 mapDefault!386)))) b!37220))

(declare-fun tp!25750 () Bool)

(declare-fun e!18311 () Bool)

(declare-fun tp!25748 () Bool)

(declare-fun b!37221 () Bool)

(declare-fun tp!25749 () Bool)

(assert (=> b!37221 (= e!18311 (and tp!25748 tp_is_empty!379 tp!25749 tp!25750))))

(assert (=> b!37023 (= tp!25630 e!18311)))

(assert (= (and b!37023 ((_ is Cons!412) (t!15250 mapDefault!386))) b!37221))

(declare-fun b!37232 () Bool)

(declare-fun e!18320 () Bool)

(declare-fun lt!3195 () MutLongMap!113)

(assert (=> b!37232 (= e!18320 ((_ is LongMap!113) lt!3195))))

(assert (=> b!37232 (= lt!3195 (v!12197 (underlying!422 (cache!590 (_2!264 (derivativeStepMem!6 r!13380 (head!334 input!6011) cache!443))))))))

(declare-fun b!37231 () Bool)

(declare-fun e!18319 () Bool)

(assert (=> b!37231 (= e!18319 e!18320)))

(declare-fun b!37230 () Bool)

(declare-fun e!18318 () Bool)

(assert (=> b!37230 (= e!18318 e!18319)))

(assert (=> d!3945 (= true e!18318)))

(assert (= b!37231 b!37232))

(assert (= (and b!37230 ((_ is HashMap!109) (cache!590 (_2!264 (derivativeStepMem!6 r!13380 (head!334 input!6011) cache!443))))) b!37231))

(assert (= d!3945 b!37230))

(declare-fun e!18321 () Bool)

(assert (=> b!37015 (= tp!25609 e!18321)))

(declare-fun b!37234 () Bool)

(declare-fun tp!25753 () Bool)

(declare-fun tp!25755 () Bool)

(assert (=> b!37234 (= e!18321 (and tp!25753 tp!25755))))

(declare-fun b!37233 () Bool)

(assert (=> b!37233 (= e!18321 tp_is_empty!379)))

(declare-fun b!37235 () Bool)

(declare-fun tp!25751 () Bool)

(assert (=> b!37235 (= e!18321 tp!25751)))

(declare-fun b!37236 () Bool)

(declare-fun tp!25752 () Bool)

(declare-fun tp!25754 () Bool)

(assert (=> b!37236 (= e!18321 (and tp!25752 tp!25754))))

(assert (= (and b!37015 ((_ is ElementMatch!177) (regOne!867 (reg!506 r!13380)))) b!37233))

(assert (= (and b!37015 ((_ is Concat!296) (regOne!867 (reg!506 r!13380)))) b!37234))

(assert (= (and b!37015 ((_ is Star!177) (regOne!867 (reg!506 r!13380)))) b!37235))

(assert (= (and b!37015 ((_ is Union!177) (regOne!867 (reg!506 r!13380)))) b!37236))

(declare-fun e!18322 () Bool)

(assert (=> b!37015 (= tp!25611 e!18322)))

(declare-fun b!37238 () Bool)

(declare-fun tp!25758 () Bool)

(declare-fun tp!25760 () Bool)

(assert (=> b!37238 (= e!18322 (and tp!25758 tp!25760))))

(declare-fun b!37237 () Bool)

(assert (=> b!37237 (= e!18322 tp_is_empty!379)))

(declare-fun b!37239 () Bool)

(declare-fun tp!25756 () Bool)

(assert (=> b!37239 (= e!18322 tp!25756)))

(declare-fun b!37240 () Bool)

(declare-fun tp!25757 () Bool)

(declare-fun tp!25759 () Bool)

(assert (=> b!37240 (= e!18322 (and tp!25757 tp!25759))))

(assert (= (and b!37015 ((_ is ElementMatch!177) (regTwo!867 (reg!506 r!13380)))) b!37237))

(assert (= (and b!37015 ((_ is Concat!296) (regTwo!867 (reg!506 r!13380)))) b!37238))

(assert (= (and b!37015 ((_ is Star!177) (regTwo!867 (reg!506 r!13380)))) b!37239))

(assert (= (and b!37015 ((_ is Union!177) (regTwo!867 (reg!506 r!13380)))) b!37240))

(declare-fun e!18323 () Bool)

(assert (=> b!37036 (= tp!25650 e!18323)))

(declare-fun b!37242 () Bool)

(declare-fun tp!25763 () Bool)

(declare-fun tp!25765 () Bool)

(assert (=> b!37242 (= e!18323 (and tp!25763 tp!25765))))

(declare-fun b!37241 () Bool)

(assert (=> b!37241 (= e!18323 tp_is_empty!379)))

(declare-fun b!37243 () Bool)

(declare-fun tp!25761 () Bool)

(assert (=> b!37243 (= e!18323 tp!25761)))

(declare-fun b!37244 () Bool)

(declare-fun tp!25762 () Bool)

(declare-fun tp!25764 () Bool)

(assert (=> b!37244 (= e!18323 (and tp!25762 tp!25764))))

(assert (= (and b!37036 ((_ is ElementMatch!177) (regOne!866 (regTwo!867 r!13380)))) b!37241))

(assert (= (and b!37036 ((_ is Concat!296) (regOne!866 (regTwo!867 r!13380)))) b!37242))

(assert (= (and b!37036 ((_ is Star!177) (regOne!866 (regTwo!867 r!13380)))) b!37243))

(assert (= (and b!37036 ((_ is Union!177) (regOne!866 (regTwo!867 r!13380)))) b!37244))

(declare-fun e!18324 () Bool)

(assert (=> b!37036 (= tp!25652 e!18324)))

(declare-fun b!37246 () Bool)

(declare-fun tp!25768 () Bool)

(declare-fun tp!25770 () Bool)

(assert (=> b!37246 (= e!18324 (and tp!25768 tp!25770))))

(declare-fun b!37245 () Bool)

(assert (=> b!37245 (= e!18324 tp_is_empty!379)))

(declare-fun b!37247 () Bool)

(declare-fun tp!25766 () Bool)

(assert (=> b!37247 (= e!18324 tp!25766)))

(declare-fun b!37248 () Bool)

(declare-fun tp!25767 () Bool)

(declare-fun tp!25769 () Bool)

(assert (=> b!37248 (= e!18324 (and tp!25767 tp!25769))))

(assert (= (and b!37036 ((_ is ElementMatch!177) (regTwo!866 (regTwo!867 r!13380)))) b!37245))

(assert (= (and b!37036 ((_ is Concat!296) (regTwo!866 (regTwo!867 r!13380)))) b!37246))

(assert (= (and b!37036 ((_ is Star!177) (regTwo!866 (regTwo!867 r!13380)))) b!37247))

(assert (= (and b!37036 ((_ is Union!177) (regTwo!866 (regTwo!867 r!13380)))) b!37248))

(declare-fun e!18325 () Bool)

(assert (=> b!37038 (= tp!25649 e!18325)))

(declare-fun b!37250 () Bool)

(declare-fun tp!25773 () Bool)

(declare-fun tp!25775 () Bool)

(assert (=> b!37250 (= e!18325 (and tp!25773 tp!25775))))

(declare-fun b!37249 () Bool)

(assert (=> b!37249 (= e!18325 tp_is_empty!379)))

(declare-fun b!37251 () Bool)

(declare-fun tp!25771 () Bool)

(assert (=> b!37251 (= e!18325 tp!25771)))

(declare-fun b!37252 () Bool)

(declare-fun tp!25772 () Bool)

(declare-fun tp!25774 () Bool)

(assert (=> b!37252 (= e!18325 (and tp!25772 tp!25774))))

(assert (= (and b!37038 ((_ is ElementMatch!177) (regOne!867 (regTwo!867 r!13380)))) b!37249))

(assert (= (and b!37038 ((_ is Concat!296) (regOne!867 (regTwo!867 r!13380)))) b!37250))

(assert (= (and b!37038 ((_ is Star!177) (regOne!867 (regTwo!867 r!13380)))) b!37251))

(assert (= (and b!37038 ((_ is Union!177) (regOne!867 (regTwo!867 r!13380)))) b!37252))

(declare-fun e!18326 () Bool)

(assert (=> b!37038 (= tp!25651 e!18326)))

(declare-fun b!37254 () Bool)

(declare-fun tp!25778 () Bool)

(declare-fun tp!25780 () Bool)

(assert (=> b!37254 (= e!18326 (and tp!25778 tp!25780))))

(declare-fun b!37253 () Bool)

(assert (=> b!37253 (= e!18326 tp_is_empty!379)))

(declare-fun b!37255 () Bool)

(declare-fun tp!25776 () Bool)

(assert (=> b!37255 (= e!18326 tp!25776)))

(declare-fun b!37256 () Bool)

(declare-fun tp!25777 () Bool)

(declare-fun tp!25779 () Bool)

(assert (=> b!37256 (= e!18326 (and tp!25777 tp!25779))))

(assert (= (and b!37038 ((_ is ElementMatch!177) (regTwo!867 (regTwo!867 r!13380)))) b!37253))

(assert (= (and b!37038 ((_ is Concat!296) (regTwo!867 (regTwo!867 r!13380)))) b!37254))

(assert (= (and b!37038 ((_ is Star!177) (regTwo!867 (regTwo!867 r!13380)))) b!37255))

(assert (= (and b!37038 ((_ is Union!177) (regTwo!867 (regTwo!867 r!13380)))) b!37256))

(declare-fun e!18327 () Bool)

(assert (=> b!37037 (= tp!25648 e!18327)))

(declare-fun b!37258 () Bool)

(declare-fun tp!25783 () Bool)

(declare-fun tp!25785 () Bool)

(assert (=> b!37258 (= e!18327 (and tp!25783 tp!25785))))

(declare-fun b!37257 () Bool)

(assert (=> b!37257 (= e!18327 tp_is_empty!379)))

(declare-fun b!37259 () Bool)

(declare-fun tp!25781 () Bool)

(assert (=> b!37259 (= e!18327 tp!25781)))

(declare-fun b!37260 () Bool)

(declare-fun tp!25782 () Bool)

(declare-fun tp!25784 () Bool)

(assert (=> b!37260 (= e!18327 (and tp!25782 tp!25784))))

(assert (= (and b!37037 ((_ is ElementMatch!177) (reg!506 (regTwo!867 r!13380)))) b!37257))

(assert (= (and b!37037 ((_ is Concat!296) (reg!506 (regTwo!867 r!13380)))) b!37258))

(assert (= (and b!37037 ((_ is Star!177) (reg!506 (regTwo!867 r!13380)))) b!37259))

(assert (= (and b!37037 ((_ is Union!177) (reg!506 (regTwo!867 r!13380)))) b!37260))

(declare-fun b!37261 () Bool)

(declare-fun e!18328 () Bool)

(declare-fun tp!25786 () Bool)

(assert (=> b!37261 (= e!18328 (and tp_is_empty!379 tp!25786))))

(assert (=> b!37030 (= tp!25642 e!18328)))

(assert (= (and b!37030 ((_ is Cons!411) (t!15249 (t!15249 input!6011)))) b!37261))

(declare-fun e!18329 () Bool)

(assert (=> b!37003 (= tp!25593 e!18329)))

(declare-fun b!37263 () Bool)

(declare-fun tp!25789 () Bool)

(declare-fun tp!25791 () Bool)

(assert (=> b!37263 (= e!18329 (and tp!25789 tp!25791))))

(declare-fun b!37262 () Bool)

(assert (=> b!37262 (= e!18329 tp_is_empty!379)))

(declare-fun b!37264 () Bool)

(declare-fun tp!25787 () Bool)

(assert (=> b!37264 (= e!18329 tp!25787)))

(declare-fun b!37265 () Bool)

(declare-fun tp!25788 () Bool)

(declare-fun tp!25790 () Bool)

(assert (=> b!37265 (= e!18329 (and tp!25788 tp!25790))))

(assert (= (and b!37003 ((_ is ElementMatch!177) (regOne!866 (regTwo!866 r!13380)))) b!37262))

(assert (= (and b!37003 ((_ is Concat!296) (regOne!866 (regTwo!866 r!13380)))) b!37263))

(assert (= (and b!37003 ((_ is Star!177) (regOne!866 (regTwo!866 r!13380)))) b!37264))

(assert (= (and b!37003 ((_ is Union!177) (regOne!866 (regTwo!866 r!13380)))) b!37265))

(declare-fun e!18330 () Bool)

(assert (=> b!37003 (= tp!25595 e!18330)))

(declare-fun b!37267 () Bool)

(declare-fun tp!25794 () Bool)

(declare-fun tp!25796 () Bool)

(assert (=> b!37267 (= e!18330 (and tp!25794 tp!25796))))

(declare-fun b!37266 () Bool)

(assert (=> b!37266 (= e!18330 tp_is_empty!379)))

(declare-fun b!37268 () Bool)

(declare-fun tp!25792 () Bool)

(assert (=> b!37268 (= e!18330 tp!25792)))

(declare-fun b!37269 () Bool)

(declare-fun tp!25793 () Bool)

(declare-fun tp!25795 () Bool)

(assert (=> b!37269 (= e!18330 (and tp!25793 tp!25795))))

(assert (= (and b!37003 ((_ is ElementMatch!177) (regTwo!866 (regTwo!866 r!13380)))) b!37266))

(assert (= (and b!37003 ((_ is Concat!296) (regTwo!866 (regTwo!866 r!13380)))) b!37267))

(assert (= (and b!37003 ((_ is Star!177) (regTwo!866 (regTwo!866 r!13380)))) b!37268))

(assert (= (and b!37003 ((_ is Union!177) (regTwo!866 (regTwo!866 r!13380)))) b!37269))

(declare-fun e!18331 () Bool)

(assert (=> b!37004 (= tp!25591 e!18331)))

(declare-fun b!37271 () Bool)

(declare-fun tp!25799 () Bool)

(declare-fun tp!25801 () Bool)

(assert (=> b!37271 (= e!18331 (and tp!25799 tp!25801))))

(declare-fun b!37270 () Bool)

(assert (=> b!37270 (= e!18331 tp_is_empty!379)))

(declare-fun b!37272 () Bool)

(declare-fun tp!25797 () Bool)

(assert (=> b!37272 (= e!18331 tp!25797)))

(declare-fun b!37273 () Bool)

(declare-fun tp!25798 () Bool)

(declare-fun tp!25800 () Bool)

(assert (=> b!37273 (= e!18331 (and tp!25798 tp!25800))))

(assert (= (and b!37004 ((_ is ElementMatch!177) (reg!506 (regTwo!866 r!13380)))) b!37270))

(assert (= (and b!37004 ((_ is Concat!296) (reg!506 (regTwo!866 r!13380)))) b!37271))

(assert (= (and b!37004 ((_ is Star!177) (reg!506 (regTwo!866 r!13380)))) b!37272))

(assert (= (and b!37004 ((_ is Union!177) (reg!506 (regTwo!866 r!13380)))) b!37273))

(declare-fun e!18332 () Bool)

(assert (=> b!37024 (= tp!25634 e!18332)))

(declare-fun b!37275 () Bool)

(declare-fun tp!25804 () Bool)

(declare-fun tp!25806 () Bool)

(assert (=> b!37275 (= e!18332 (and tp!25804 tp!25806))))

(declare-fun b!37274 () Bool)

(assert (=> b!37274 (= e!18332 tp_is_empty!379)))

(declare-fun b!37276 () Bool)

(declare-fun tp!25802 () Bool)

(assert (=> b!37276 (= e!18332 tp!25802)))

(declare-fun b!37277 () Bool)

(declare-fun tp!25803 () Bool)

(declare-fun tp!25805 () Bool)

(assert (=> b!37277 (= e!18332 (and tp!25803 tp!25805))))

(assert (= (and b!37024 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 mapValue!383))))) b!37274))

(assert (= (and b!37024 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 mapValue!383))))) b!37275))

(assert (= (and b!37024 ((_ is Star!177) (_1!262 (_1!263 (h!5808 mapValue!383))))) b!37276))

(assert (= (and b!37024 ((_ is Union!177) (_1!262 (_1!263 (h!5808 mapValue!383))))) b!37277))

(declare-fun e!18333 () Bool)

(assert (=> b!37024 (= tp!25635 e!18333)))

(declare-fun b!37279 () Bool)

(declare-fun tp!25809 () Bool)

(declare-fun tp!25811 () Bool)

(assert (=> b!37279 (= e!18333 (and tp!25809 tp!25811))))

(declare-fun b!37278 () Bool)

(assert (=> b!37278 (= e!18333 tp_is_empty!379)))

(declare-fun b!37280 () Bool)

(declare-fun tp!25807 () Bool)

(assert (=> b!37280 (= e!18333 tp!25807)))

(declare-fun b!37281 () Bool)

(declare-fun tp!25808 () Bool)

(declare-fun tp!25810 () Bool)

(assert (=> b!37281 (= e!18333 (and tp!25808 tp!25810))))

(assert (= (and b!37024 ((_ is ElementMatch!177) (_2!263 (h!5808 mapValue!383)))) b!37278))

(assert (= (and b!37024 ((_ is Concat!296) (_2!263 (h!5808 mapValue!383)))) b!37279))

(assert (= (and b!37024 ((_ is Star!177) (_2!263 (h!5808 mapValue!383)))) b!37280))

(assert (= (and b!37024 ((_ is Union!177) (_2!263 (h!5808 mapValue!383)))) b!37281))

(declare-fun b!37282 () Bool)

(declare-fun tp!25813 () Bool)

(declare-fun e!18334 () Bool)

(declare-fun tp!25812 () Bool)

(declare-fun tp!25814 () Bool)

(assert (=> b!37282 (= e!18334 (and tp!25812 tp_is_empty!379 tp!25813 tp!25814))))

(assert (=> b!37024 (= tp!25636 e!18334)))

(assert (= (and b!37024 ((_ is Cons!412) (t!15250 mapValue!383))) b!37282))

(declare-fun e!18335 () Bool)

(assert (=> b!37010 (= tp!25602 e!18335)))

(declare-fun b!37284 () Bool)

(declare-fun tp!25817 () Bool)

(declare-fun tp!25819 () Bool)

(assert (=> b!37284 (= e!18335 (and tp!25817 tp!25819))))

(declare-fun b!37283 () Bool)

(assert (=> b!37283 (= e!18335 tp_is_empty!379)))

(declare-fun b!37285 () Bool)

(declare-fun tp!25815 () Bool)

(assert (=> b!37285 (= e!18335 tp!25815)))

(declare-fun b!37286 () Bool)

(declare-fun tp!25816 () Bool)

(declare-fun tp!25818 () Bool)

(assert (=> b!37286 (= e!18335 (and tp!25816 tp!25818))))

(assert (= (and b!37010 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37283))

(assert (= (and b!37010 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37284))

(assert (= (and b!37010 ((_ is Star!177) (_1!262 (_1!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37285))

(assert (= (and b!37010 ((_ is Union!177) (_1!262 (_1!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37286))

(declare-fun e!18336 () Bool)

(assert (=> b!37010 (= tp!25603 e!18336)))

(declare-fun b!37288 () Bool)

(declare-fun tp!25822 () Bool)

(declare-fun tp!25824 () Bool)

(assert (=> b!37288 (= e!18336 (and tp!25822 tp!25824))))

(declare-fun b!37287 () Bool)

(assert (=> b!37287 (= e!18336 tp_is_empty!379)))

(declare-fun b!37289 () Bool)

(declare-fun tp!25820 () Bool)

(assert (=> b!37289 (= e!18336 tp!25820)))

(declare-fun b!37290 () Bool)

(declare-fun tp!25821 () Bool)

(declare-fun tp!25823 () Bool)

(assert (=> b!37290 (= e!18336 (and tp!25821 tp!25823))))

(assert (= (and b!37010 ((_ is ElementMatch!177) (_2!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37287))

(assert (= (and b!37010 ((_ is Concat!296) (_2!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37288))

(assert (= (and b!37010 ((_ is Star!177) (_2!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37289))

(assert (= (and b!37010 ((_ is Union!177) (_2!263 (h!5808 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37290))

(declare-fun tp!25827 () Bool)

(declare-fun tp!25826 () Bool)

(declare-fun e!18337 () Bool)

(declare-fun tp!25825 () Bool)

(declare-fun b!37291 () Bool)

(assert (=> b!37291 (= e!18337 (and tp!25825 tp_is_empty!379 tp!25826 tp!25827))))

(assert (=> b!37010 (= tp!25604 e!18337)))

(assert (= (and b!37010 ((_ is Cons!412) (t!15250 (zeroValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))) b!37291))

(declare-fun e!18338 () Bool)

(assert (=> b!37005 (= tp!25592 e!18338)))

(declare-fun b!37293 () Bool)

(declare-fun tp!25830 () Bool)

(declare-fun tp!25832 () Bool)

(assert (=> b!37293 (= e!18338 (and tp!25830 tp!25832))))

(declare-fun b!37292 () Bool)

(assert (=> b!37292 (= e!18338 tp_is_empty!379)))

(declare-fun b!37294 () Bool)

(declare-fun tp!25828 () Bool)

(assert (=> b!37294 (= e!18338 tp!25828)))

(declare-fun b!37295 () Bool)

(declare-fun tp!25829 () Bool)

(declare-fun tp!25831 () Bool)

(assert (=> b!37295 (= e!18338 (and tp!25829 tp!25831))))

(assert (= (and b!37005 ((_ is ElementMatch!177) (regOne!867 (regTwo!866 r!13380)))) b!37292))

(assert (= (and b!37005 ((_ is Concat!296) (regOne!867 (regTwo!866 r!13380)))) b!37293))

(assert (= (and b!37005 ((_ is Star!177) (regOne!867 (regTwo!866 r!13380)))) b!37294))

(assert (= (and b!37005 ((_ is Union!177) (regOne!867 (regTwo!866 r!13380)))) b!37295))

(declare-fun e!18339 () Bool)

(assert (=> b!37005 (= tp!25594 e!18339)))

(declare-fun b!37297 () Bool)

(declare-fun tp!25835 () Bool)

(declare-fun tp!25837 () Bool)

(assert (=> b!37297 (= e!18339 (and tp!25835 tp!25837))))

(declare-fun b!37296 () Bool)

(assert (=> b!37296 (= e!18339 tp_is_empty!379)))

(declare-fun b!37298 () Bool)

(declare-fun tp!25833 () Bool)

(assert (=> b!37298 (= e!18339 tp!25833)))

(declare-fun b!37299 () Bool)

(declare-fun tp!25834 () Bool)

(declare-fun tp!25836 () Bool)

(assert (=> b!37299 (= e!18339 (and tp!25834 tp!25836))))

(assert (= (and b!37005 ((_ is ElementMatch!177) (regTwo!867 (regTwo!866 r!13380)))) b!37296))

(assert (= (and b!37005 ((_ is Concat!296) (regTwo!867 (regTwo!866 r!13380)))) b!37297))

(assert (= (and b!37005 ((_ is Star!177) (regTwo!867 (regTwo!866 r!13380)))) b!37298))

(assert (= (and b!37005 ((_ is Union!177) (regTwo!867 (regTwo!866 r!13380)))) b!37299))

(declare-fun e!18340 () Bool)

(assert (=> b!37025 (= tp!25637 e!18340)))

(declare-fun b!37301 () Bool)

(declare-fun tp!25840 () Bool)

(declare-fun tp!25842 () Bool)

(assert (=> b!37301 (= e!18340 (and tp!25840 tp!25842))))

(declare-fun b!37300 () Bool)

(assert (=> b!37300 (= e!18340 tp_is_empty!379)))

(declare-fun b!37302 () Bool)

(declare-fun tp!25838 () Bool)

(assert (=> b!37302 (= e!18340 tp!25838)))

(declare-fun b!37303 () Bool)

(declare-fun tp!25839 () Bool)

(declare-fun tp!25841 () Bool)

(assert (=> b!37303 (= e!18340 (and tp!25839 tp!25841))))

(assert (= (and b!37025 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 mapDefault!383))))) b!37300))

(assert (= (and b!37025 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 mapDefault!383))))) b!37301))

(assert (= (and b!37025 ((_ is Star!177) (_1!262 (_1!263 (h!5808 mapDefault!383))))) b!37302))

(assert (= (and b!37025 ((_ is Union!177) (_1!262 (_1!263 (h!5808 mapDefault!383))))) b!37303))

(declare-fun e!18341 () Bool)

(assert (=> b!37025 (= tp!25638 e!18341)))

(declare-fun b!37305 () Bool)

(declare-fun tp!25845 () Bool)

(declare-fun tp!25847 () Bool)

(assert (=> b!37305 (= e!18341 (and tp!25845 tp!25847))))

(declare-fun b!37304 () Bool)

(assert (=> b!37304 (= e!18341 tp_is_empty!379)))

(declare-fun b!37306 () Bool)

(declare-fun tp!25843 () Bool)

(assert (=> b!37306 (= e!18341 tp!25843)))

(declare-fun b!37307 () Bool)

(declare-fun tp!25844 () Bool)

(declare-fun tp!25846 () Bool)

(assert (=> b!37307 (= e!18341 (and tp!25844 tp!25846))))

(assert (= (and b!37025 ((_ is ElementMatch!177) (_2!263 (h!5808 mapDefault!383)))) b!37304))

(assert (= (and b!37025 ((_ is Concat!296) (_2!263 (h!5808 mapDefault!383)))) b!37305))

(assert (= (and b!37025 ((_ is Star!177) (_2!263 (h!5808 mapDefault!383)))) b!37306))

(assert (= (and b!37025 ((_ is Union!177) (_2!263 (h!5808 mapDefault!383)))) b!37307))

(declare-fun tp!25848 () Bool)

(declare-fun b!37308 () Bool)

(declare-fun e!18342 () Bool)

(declare-fun tp!25849 () Bool)

(declare-fun tp!25850 () Bool)

(assert (=> b!37308 (= e!18342 (and tp!25848 tp_is_empty!379 tp!25849 tp!25850))))

(assert (=> b!37025 (= tp!25639 e!18342)))

(assert (= (and b!37025 ((_ is Cons!412) (t!15250 mapDefault!383))) b!37308))

(declare-fun e!18343 () Bool)

(assert (=> b!37011 (= tp!25605 e!18343)))

(declare-fun b!37310 () Bool)

(declare-fun tp!25853 () Bool)

(declare-fun tp!25855 () Bool)

(assert (=> b!37310 (= e!18343 (and tp!25853 tp!25855))))

(declare-fun b!37309 () Bool)

(assert (=> b!37309 (= e!18343 tp_is_empty!379)))

(declare-fun b!37311 () Bool)

(declare-fun tp!25851 () Bool)

(assert (=> b!37311 (= e!18343 tp!25851)))

(declare-fun b!37312 () Bool)

(declare-fun tp!25852 () Bool)

(declare-fun tp!25854 () Bool)

(assert (=> b!37312 (= e!18343 (and tp!25852 tp!25854))))

(assert (= (and b!37011 ((_ is ElementMatch!177) (_1!262 (_1!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37309))

(assert (= (and b!37011 ((_ is Concat!296) (_1!262 (_1!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37310))

(assert (= (and b!37011 ((_ is Star!177) (_1!262 (_1!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37311))

(assert (= (and b!37011 ((_ is Union!177) (_1!262 (_1!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))))) b!37312))

(declare-fun e!18344 () Bool)

(assert (=> b!37011 (= tp!25606 e!18344)))

(declare-fun b!37314 () Bool)

(declare-fun tp!25858 () Bool)

(declare-fun tp!25860 () Bool)

(assert (=> b!37314 (= e!18344 (and tp!25858 tp!25860))))

(declare-fun b!37313 () Bool)

(assert (=> b!37313 (= e!18344 tp_is_empty!379)))

(declare-fun b!37315 () Bool)

(declare-fun tp!25856 () Bool)

(assert (=> b!37315 (= e!18344 tp!25856)))

(declare-fun b!37316 () Bool)

(declare-fun tp!25857 () Bool)

(declare-fun tp!25859 () Bool)

(assert (=> b!37316 (= e!18344 (and tp!25857 tp!25859))))

(assert (= (and b!37011 ((_ is ElementMatch!177) (_2!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37313))

(assert (= (and b!37011 ((_ is Concat!296) (_2!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37314))

(assert (= (and b!37011 ((_ is Star!177) (_2!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37315))

(assert (= (and b!37011 ((_ is Union!177) (_2!263 (h!5808 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443)))))))))) b!37316))

(declare-fun b!37317 () Bool)

(declare-fun e!18345 () Bool)

(declare-fun tp!25861 () Bool)

(declare-fun tp!25862 () Bool)

(declare-fun tp!25863 () Bool)

(assert (=> b!37317 (= e!18345 (and tp!25861 tp_is_empty!379 tp!25862 tp!25863))))

(assert (=> b!37011 (= tp!25607 e!18345)))

(assert (= (and b!37011 ((_ is Cons!412) (t!15250 (minValue!369 (v!12196 (underlying!421 (v!12197 (underlying!422 (cache!590 cache!443))))))))) b!37317))

(check-sat (not bm!2777) (not b!37180) (not d!3961) b_and!601 (not b!37164) (not b!37184) (not b!37306) (not b!37271) (not b_next!565) (not b!37177) (not b!37220) (not b!37163) (not b!37273) (not b!37211) (not b!37080) (not bm!2794) (not b!37212) (not b!37295) (not d!3985) (not b!37301) (not b!37151) (not b!37181) (not b!37050) (not b!37149) (not b!37183) (not b!37152) (not d!3963) (not b!37312) (not b!37192) (not b!37264) (not b!37200) (not b!37196) (not b!37303) (not b!37248) (not b!37247) (not bm!2792) (not b!37201) (not b!37172) (not d!3977) (not b!37189) (not b!37302) (not b!37081) (not b!37195) (not b!37104) (not b!37193) (not b!37272) (not b!37185) (not bm!2788) (not b!37160) (not b!37256) (not bm!2789) (not b!37240) (not b!37258) (not b!37268) (not b!37187) (not b!37147) (not b!37204) (not b!37176) (not b!37207) (not d!3973) (not b!37167) b_and!599 (not d!3975) (not b!37165) (not b!37155) (not b!37199) (not b!37291) (not b!37216) (not b!37188) (not bm!2784) (not b!37242) (not b!37169) (not b!37244) (not b!37208) (not b!37203) (not b!37308) (not b!37062) (not b!37159) (not b!37236) (not b!37077) (not b!37219) (not b!37191) (not d!3983) (not b!37297) (not b!37293) (not bm!2782) (not b!37284) (not b!37310) (not b!37205) (not b!37265) (not b!37298) (not b!37157) (not b!37294) (not b!37092) (not bm!2791) (not b!37307) (not b!37041) (not b!37288) (not b!37049) (not mapNonEmpty!387) (not b!37277) tp_is_empty!379 (not b!37251) (not b!37210) (not d!3971) (not b!37095) (not b!37235) (not bm!2804) (not b!37153) (not b!37197) (not b!37254) (not b!37091) (not b!37267) (not b!37282) (not b_next!567) (not bm!2778) (not b!37314) (not b!37279) (not bm!2803) (not b!37173) (not b!37286) (not b!37078) (not b!37259) (not b!37260) (not b!37218) (not b!37138) (not b!37315) (not b!37252) (not b!37246) (not b!37238) (not b!37281) (not b!37156) (not b!37179) (not b!37214) (not b!37261) (not b!37250) (not b!37280) (not b!37317) (not bm!2785) (not b!37311) (not b!37239) (not d!3967) (not bm!2781) (not bm!2775) (not b!37175) (not b!37161) (not d!3969) (not b!37289) (not b!37276) (not b!37290) (not b!37215) (not b!37269) (not b!37316) (not b!37171) (not b!37234) (not b!37275) (not b!37299) (not b!37221) (not b!37305) (not b!37263) (not b!37206) (not b!37255) (not b!37168) (not b!37285) (not b!37243))
(check-sat b_and!599 b_and!601 (not b_next!565) (not b_next!567))
