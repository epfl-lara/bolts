; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217908 () Bool)

(assert start!217908)

(declare-fun b!2235930 () Bool)

(declare-fun b_free!64849 () Bool)

(declare-fun b_next!65553 () Bool)

(assert (=> b!2235930 (= b_free!64849 (not b_next!65553))))

(declare-fun tp!702744 () Bool)

(declare-fun b_and!174837 () Bool)

(assert (=> b!2235930 (= tp!702744 b_and!174837)))

(declare-fun b!2235928 () Bool)

(declare-fun b_free!64851 () Bool)

(declare-fun b_next!65555 () Bool)

(assert (=> b!2235928 (= b_free!64851 (not b_next!65555))))

(declare-fun tp!702746 () Bool)

(declare-fun b_and!174839 () Bool)

(assert (=> b!2235928 (= tp!702746 b_and!174839)))

(declare-fun b!2235920 () Bool)

(declare-fun e!1429051 () Bool)

(declare-fun e!1429045 () Bool)

(declare-datatypes ((C!13064 0))(
  ( (C!13065 (val!7580 Int)) )
))
(declare-datatypes ((Regex!6459 0))(
  ( (ElementMatch!6459 (c!356355 C!13064)) (Concat!10797 (regOne!13430 Regex!6459) (regTwo!13430 Regex!6459)) (EmptyExpr!6459) (Star!6459 (reg!6788 Regex!6459)) (EmptyLang!6459) (Union!6459 (regOne!13431 Regex!6459) (regTwo!13431 Regex!6459)) )
))
(declare-datatypes ((List!26396 0))(
  ( (Nil!26302) (Cons!26302 (h!31703 Regex!6459) (t!199816 List!26396)) )
))
(declare-datatypes ((Context!4014 0))(
  ( (Context!4015 (exprs!2507 List!26396)) )
))
(declare-datatypes ((tuple3!3990 0))(
  ( (tuple3!3991 (_1!15313 Regex!6459) (_2!15313 Context!4014) (_3!2465 C!13064)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25696 0))(
  ( (tuple2!25697 (_1!15314 tuple3!3990) (_2!15314 (InoxSet Context!4014))) )
))
(declare-datatypes ((array!10764 0))(
  ( (array!10765 (arr!4781 (Array (_ BitVec 32) (_ BitVec 64))) (size!20562 (_ BitVec 32))) )
))
(declare-datatypes ((List!26397 0))(
  ( (Nil!26303) (Cons!26303 (h!31704 tuple2!25696) (t!199817 List!26397)) )
))
(declare-datatypes ((array!10766 0))(
  ( (array!10767 (arr!4782 (Array (_ BitVec 32) List!26397)) (size!20563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6194 0))(
  ( (LongMapFixedSize!6195 (defaultEntry!3462 Int) (mask!7680 (_ BitVec 32)) (extraKeys!3345 (_ BitVec 32)) (zeroValue!3355 List!26397) (minValue!3355 List!26397) (_size!6241 (_ BitVec 32)) (_keys!3394 array!10764) (_values!3377 array!10766) (_vacant!3158 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12205 0))(
  ( (Cell!12206 (v!29905 LongMapFixedSize!6194)) )
))
(declare-datatypes ((MutLongMap!3097 0))(
  ( (LongMap!3097 (underlying!6395 Cell!12205)) (MutLongMapExt!3096 (__x!17517 Int)) )
))
(declare-fun lt!831624 () MutLongMap!3097)

(get-info :version)

(assert (=> b!2235920 (= e!1429051 (and e!1429045 ((_ is LongMap!3097) lt!831624)))))

(declare-datatypes ((Cell!12207 0))(
  ( (Cell!12208 (v!29906 MutLongMap!3097)) )
))
(declare-datatypes ((Hashable!3007 0))(
  ( (HashableExt!3006 (__x!17518 Int)) )
))
(declare-datatypes ((MutableMap!3007 0))(
  ( (MutableMapExt!3006 (__x!17519 Int)) (HashMap!3007 (underlying!6396 Cell!12207) (hashF!4930 Hashable!3007) (_size!6242 (_ BitVec 32)) (defaultValue!3169 Int)) )
))
(declare-datatypes ((CacheDown!2060 0))(
  ( (CacheDown!2061 (cache!3388 MutableMap!3007)) )
))
(declare-fun thiss!28797 () CacheDown!2060)

(assert (=> b!2235920 (= lt!831624 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))

(declare-fun b!2235921 () Bool)

(declare-fun e!1429047 () Bool)

(declare-fun tp!702736 () Bool)

(assert (=> b!2235921 (= e!1429047 tp!702736)))

(declare-fun b!2235922 () Bool)

(declare-fun e!1429054 () Bool)

(declare-fun tp!702745 () Bool)

(assert (=> b!2235922 (= e!1429054 tp!702745)))

(declare-fun b!2235923 () Bool)

(declare-fun e!1429049 () Bool)

(declare-fun e!1429046 () Bool)

(assert (=> b!2235923 (= e!1429049 e!1429046)))

(declare-fun b!2235924 () Bool)

(assert (=> b!2235924 (= e!1429045 e!1429049)))

(declare-fun mapNonEmpty!14555 () Bool)

(declare-fun mapRes!14555 () Bool)

(declare-fun tp!702741 () Bool)

(declare-fun tp!702747 () Bool)

(assert (=> mapNonEmpty!14555 (= mapRes!14555 (and tp!702741 tp!702747))))

(declare-fun mapValue!14555 () List!26397)

(declare-fun mapKey!14555 () (_ BitVec 32))

(declare-fun mapRest!14555 () (Array (_ BitVec 32) List!26397))

(assert (=> mapNonEmpty!14555 (= (arr!4782 (_values!3377 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) (store mapRest!14555 mapKey!14555 mapValue!14555))))

(declare-fun b!2235925 () Bool)

(declare-fun tp!702738 () Bool)

(declare-fun tp!702742 () Bool)

(assert (=> b!2235925 (= e!1429047 (and tp!702738 tp!702742))))

(declare-fun b!2235926 () Bool)

(declare-fun res!956687 () Bool)

(declare-fun e!1429050 () Bool)

(assert (=> b!2235926 (=> (not res!956687) (not e!1429050))))

(declare-fun r!4766 () Regex!6459)

(declare-fun validRegex!2424 (Regex!6459) Bool)

(assert (=> b!2235926 (= res!956687 (validRegex!2424 r!4766))))

(declare-fun b!2235927 () Bool)

(declare-fun tp_is_empty!10143 () Bool)

(assert (=> b!2235927 (= e!1429047 tp_is_empty!10143)))

(declare-fun tp!702740 () Bool)

(declare-fun e!1429055 () Bool)

(declare-fun tp!702743 () Bool)

(declare-fun array_inv!3433 (array!10764) Bool)

(declare-fun array_inv!3434 (array!10766) Bool)

(assert (=> b!2235928 (= e!1429046 (and tp!702746 tp!702743 tp!702740 (array_inv!3433 (_keys!3394 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) (array_inv!3434 (_values!3377 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) e!1429055))))

(declare-fun b!2235929 () Bool)

(assert (=> b!2235929 (= e!1429050 (not ((_ is HashMap!3007) (cache!3388 thiss!28797))))))

(declare-fun a!997 () C!13064)

(declare-fun ctx!52 () Context!4014)

(declare-datatypes ((Unit!39252 0))(
  ( (Unit!39253) )
))
(declare-fun lt!831623 () Unit!39252)

(declare-fun lemmaIfInCacheThenValid!28 (CacheDown!2060 Regex!6459 Context!4014 C!13064) Unit!39252)

(assert (=> b!2235929 (= lt!831623 (lemmaIfInCacheThenValid!28 thiss!28797 r!4766 ctx!52 a!997))))

(declare-fun e!1429053 () Bool)

(assert (=> b!2235930 (= e!1429053 (and e!1429051 tp!702744))))

(declare-fun b!2235931 () Bool)

(declare-fun res!956689 () Bool)

(assert (=> b!2235931 (=> (not res!956689) (not e!1429050))))

(declare-fun contains!4383 (MutableMap!3007 tuple3!3990) Bool)

(assert (=> b!2235931 (= res!956689 (contains!4383 (cache!3388 thiss!28797) (tuple3!3991 r!4766 ctx!52 a!997)))))

(declare-fun b!2235932 () Bool)

(declare-fun tp!702739 () Bool)

(assert (=> b!2235932 (= e!1429055 (and tp!702739 mapRes!14555))))

(declare-fun condMapEmpty!14555 () Bool)

(declare-fun mapDefault!14555 () List!26397)

(assert (=> b!2235932 (= condMapEmpty!14555 (= (arr!4782 (_values!3377 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26397)) mapDefault!14555)))))

(declare-fun b!2235933 () Bool)

(declare-fun tp!702737 () Bool)

(declare-fun tp!702748 () Bool)

(assert (=> b!2235933 (= e!1429047 (and tp!702737 tp!702748))))

(declare-fun res!956688 () Bool)

(assert (=> start!217908 (=> (not res!956688) (not e!1429050))))

(declare-fun validCacheMapDown!309 (MutableMap!3007) Bool)

(assert (=> start!217908 (= res!956688 (validCacheMapDown!309 (cache!3388 thiss!28797)))))

(assert (=> start!217908 e!1429050))

(declare-fun e!1429052 () Bool)

(declare-fun inv!35726 (CacheDown!2060) Bool)

(assert (=> start!217908 (and (inv!35726 thiss!28797) e!1429052)))

(assert (=> start!217908 e!1429047))

(declare-fun inv!35727 (Context!4014) Bool)

(assert (=> start!217908 (and (inv!35727 ctx!52) e!1429054)))

(assert (=> start!217908 tp_is_empty!10143))

(declare-fun b!2235934 () Bool)

(assert (=> b!2235934 (= e!1429052 e!1429053)))

(declare-fun mapIsEmpty!14555 () Bool)

(assert (=> mapIsEmpty!14555 mapRes!14555))

(assert (= (and start!217908 res!956688) b!2235926))

(assert (= (and b!2235926 res!956687) b!2235931))

(assert (= (and b!2235931 res!956689) b!2235929))

(assert (= (and b!2235932 condMapEmpty!14555) mapIsEmpty!14555))

(assert (= (and b!2235932 (not condMapEmpty!14555)) mapNonEmpty!14555))

(assert (= b!2235928 b!2235932))

(assert (= b!2235923 b!2235928))

(assert (= b!2235924 b!2235923))

(assert (= (and b!2235920 ((_ is LongMap!3097) (v!29906 (underlying!6396 (cache!3388 thiss!28797))))) b!2235924))

(assert (= b!2235930 b!2235920))

(assert (= (and b!2235934 ((_ is HashMap!3007) (cache!3388 thiss!28797))) b!2235930))

(assert (= start!217908 b!2235934))

(assert (= (and start!217908 ((_ is ElementMatch!6459) r!4766)) b!2235927))

(assert (= (and start!217908 ((_ is Concat!10797) r!4766)) b!2235925))

(assert (= (and start!217908 ((_ is Star!6459) r!4766)) b!2235921))

(assert (= (and start!217908 ((_ is Union!6459) r!4766)) b!2235933))

(assert (= start!217908 b!2235922))

(declare-fun m!2669979 () Bool)

(assert (=> b!2235929 m!2669979))

(declare-fun m!2669981 () Bool)

(assert (=> b!2235928 m!2669981))

(declare-fun m!2669983 () Bool)

(assert (=> b!2235928 m!2669983))

(declare-fun m!2669985 () Bool)

(assert (=> b!2235926 m!2669985))

(declare-fun m!2669987 () Bool)

(assert (=> b!2235931 m!2669987))

(declare-fun m!2669989 () Bool)

(assert (=> start!217908 m!2669989))

(declare-fun m!2669991 () Bool)

(assert (=> start!217908 m!2669991))

(declare-fun m!2669993 () Bool)

(assert (=> start!217908 m!2669993))

(declare-fun m!2669995 () Bool)

(assert (=> mapNonEmpty!14555 m!2669995))

(check-sat (not b!2235931) (not b!2235929) (not b!2235922) (not b!2235932) (not b_next!65555) b_and!174837 (not b!2235925) (not b!2235921) (not b!2235928) b_and!174839 (not start!217908) tp_is_empty!10143 (not b!2235926) (not b_next!65553) (not b!2235933) (not mapNonEmpty!14555))
(check-sat b_and!174839 b_and!174837 (not b_next!65555) (not b_next!65553))
(get-model)

(declare-fun b!2235953 () Bool)

(declare-fun e!1429076 () Bool)

(declare-fun call!134784 () Bool)

(assert (=> b!2235953 (= e!1429076 call!134784)))

(declare-fun b!2235954 () Bool)

(declare-fun e!1429073 () Bool)

(declare-fun e!1429070 () Bool)

(assert (=> b!2235954 (= e!1429073 e!1429070)))

(declare-fun res!956701 () Bool)

(declare-fun nullable!1782 (Regex!6459) Bool)

(assert (=> b!2235954 (= res!956701 (not (nullable!1782 (reg!6788 r!4766))))))

(assert (=> b!2235954 (=> (not res!956701) (not e!1429070))))

(declare-fun bm!134777 () Bool)

(declare-fun call!134782 () Bool)

(declare-fun call!134783 () Bool)

(assert (=> bm!134777 (= call!134782 call!134783)))

(declare-fun d!665431 () Bool)

(declare-fun res!956702 () Bool)

(declare-fun e!1429074 () Bool)

(assert (=> d!665431 (=> res!956702 e!1429074)))

(assert (=> d!665431 (= res!956702 ((_ is ElementMatch!6459) r!4766))))

(assert (=> d!665431 (= (validRegex!2424 r!4766) e!1429074)))

(declare-fun b!2235955 () Bool)

(assert (=> b!2235955 (= e!1429074 e!1429073)))

(declare-fun c!356360 () Bool)

(assert (=> b!2235955 (= c!356360 ((_ is Star!6459) r!4766))))

(declare-fun bm!134778 () Bool)

(declare-fun c!356361 () Bool)

(assert (=> bm!134778 (= call!134784 (validRegex!2424 (ite c!356361 (regTwo!13431 r!4766) (regTwo!13430 r!4766))))))

(declare-fun b!2235956 () Bool)

(assert (=> b!2235956 (= e!1429070 call!134783)))

(declare-fun b!2235957 () Bool)

(declare-fun e!1429071 () Bool)

(assert (=> b!2235957 (= e!1429071 call!134784)))

(declare-fun b!2235958 () Bool)

(declare-fun e!1429072 () Bool)

(assert (=> b!2235958 (= e!1429072 e!1429071)))

(declare-fun res!956700 () Bool)

(assert (=> b!2235958 (=> (not res!956700) (not e!1429071))))

(assert (=> b!2235958 (= res!956700 call!134782)))

(declare-fun b!2235959 () Bool)

(declare-fun res!956703 () Bool)

(assert (=> b!2235959 (=> (not res!956703) (not e!1429076))))

(assert (=> b!2235959 (= res!956703 call!134782)))

(declare-fun e!1429075 () Bool)

(assert (=> b!2235959 (= e!1429075 e!1429076)))

(declare-fun bm!134779 () Bool)

(assert (=> bm!134779 (= call!134783 (validRegex!2424 (ite c!356360 (reg!6788 r!4766) (ite c!356361 (regOne!13431 r!4766) (regOne!13430 r!4766)))))))

(declare-fun b!2235960 () Bool)

(assert (=> b!2235960 (= e!1429073 e!1429075)))

(assert (=> b!2235960 (= c!356361 ((_ is Union!6459) r!4766))))

(declare-fun b!2235961 () Bool)

(declare-fun res!956704 () Bool)

(assert (=> b!2235961 (=> res!956704 e!1429072)))

(assert (=> b!2235961 (= res!956704 (not ((_ is Concat!10797) r!4766)))))

(assert (=> b!2235961 (= e!1429075 e!1429072)))

(assert (= (and d!665431 (not res!956702)) b!2235955))

(assert (= (and b!2235955 c!356360) b!2235954))

(assert (= (and b!2235955 (not c!356360)) b!2235960))

(assert (= (and b!2235954 res!956701) b!2235956))

(assert (= (and b!2235960 c!356361) b!2235959))

(assert (= (and b!2235960 (not c!356361)) b!2235961))

(assert (= (and b!2235959 res!956703) b!2235953))

(assert (= (and b!2235961 (not res!956704)) b!2235958))

(assert (= (and b!2235958 res!956700) b!2235957))

(assert (= (or b!2235953 b!2235957) bm!134778))

(assert (= (or b!2235959 b!2235958) bm!134777))

(assert (= (or b!2235956 bm!134777) bm!134779))

(declare-fun m!2669997 () Bool)

(assert (=> b!2235954 m!2669997))

(declare-fun m!2669999 () Bool)

(assert (=> bm!134778 m!2669999))

(declare-fun m!2670001 () Bool)

(assert (=> bm!134779 m!2670001))

(assert (=> b!2235926 d!665431))

(declare-fun b!2235984 () Bool)

(declare-fun e!1429092 () Bool)

(declare-fun call!134797 () Bool)

(assert (=> b!2235984 (= e!1429092 call!134797)))

(declare-fun bm!134792 () Bool)

(declare-fun call!134798 () (_ BitVec 64))

(declare-fun hash!574 (Hashable!3007 tuple3!3990) (_ BitVec 64))

(assert (=> bm!134792 (= call!134798 (hash!574 (hashF!4930 (cache!3388 thiss!28797)) (tuple3!3991 r!4766 ctx!52 a!997)))))

(declare-datatypes ((tuple2!25698 0))(
  ( (tuple2!25699 (_1!15315 (_ BitVec 64)) (_2!15315 List!26397)) )
))
(declare-datatypes ((List!26398 0))(
  ( (Nil!26304) (Cons!26304 (h!31705 tuple2!25698) (t!199818 List!26398)) )
))
(declare-datatypes ((ListLongMap!323 0))(
  ( (ListLongMap!324 (toList!1351 List!26398)) )
))
(declare-fun call!134801 () ListLongMap!323)

(declare-fun call!134799 () Bool)

(declare-fun lt!831672 () ListLongMap!323)

(declare-fun bm!134793 () Bool)

(declare-fun c!356371 () Bool)

(declare-fun contains!4384 (ListLongMap!323 (_ BitVec 64)) Bool)

(assert (=> bm!134793 (= call!134799 (contains!4384 (ite c!356371 lt!831672 call!134801) call!134798))))

(declare-fun bm!134794 () Bool)

(declare-fun map!5402 (MutLongMap!3097) ListLongMap!323)

(assert (=> bm!134794 (= call!134801 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))

(declare-fun b!2235985 () Bool)

(declare-fun e!1429091 () Unit!39252)

(declare-fun lt!831677 () Unit!39252)

(assert (=> b!2235985 (= e!1429091 lt!831677)))

(assert (=> b!2235985 (= lt!831672 call!134801)))

(declare-fun lemmaInGenericMapThenInLongMap!27 (ListLongMap!323 tuple3!3990 Hashable!3007) Unit!39252)

(assert (=> b!2235985 (= lt!831677 (lemmaInGenericMapThenInLongMap!27 lt!831672 (tuple3!3991 r!4766 ctx!52 a!997) (hashF!4930 (cache!3388 thiss!28797))))))

(declare-fun res!956711 () Bool)

(assert (=> b!2235985 (= res!956711 call!134799)))

(declare-fun e!1429095 () Bool)

(assert (=> b!2235985 (=> (not res!956711) (not e!1429095))))

(assert (=> b!2235985 e!1429095))

(declare-fun call!134800 () List!26397)

(declare-datatypes ((Option!5114 0))(
  ( (None!5113) (Some!5113 (v!29907 tuple2!25696)) )
))
(declare-fun call!134802 () Option!5114)

(declare-fun bm!134795 () Bool)

(declare-fun getPair!27 (List!26397 tuple3!3990) Option!5114)

(assert (=> bm!134795 (= call!134802 (getPair!27 call!134800 (tuple3!3991 r!4766 ctx!52 a!997)))))

(declare-fun b!2235986 () Bool)

(assert (=> b!2235986 false))

(declare-fun lt!831675 () Unit!39252)

(declare-fun lt!831668 () Unit!39252)

(assert (=> b!2235986 (= lt!831675 lt!831668)))

(declare-fun lt!831669 () List!26398)

(declare-fun lt!831674 () (_ BitVec 64))

(declare-fun lt!831683 () List!26397)

(declare-fun contains!4385 (List!26398 tuple2!25698) Bool)

(assert (=> b!2235986 (contains!4385 lt!831669 (tuple2!25699 lt!831674 lt!831683))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!28 (List!26398 (_ BitVec 64) List!26397) Unit!39252)

(assert (=> b!2235986 (= lt!831668 (lemmaGetValueByKeyImpliesContainsTuple!28 lt!831669 lt!831674 lt!831683))))

(declare-fun apply!6468 (MutLongMap!3097 (_ BitVec 64)) List!26397)

(assert (=> b!2235986 (= lt!831683 (apply!6468 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674))))

(assert (=> b!2235986 (= lt!831669 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))))

(declare-fun lt!831682 () Unit!39252)

(declare-fun lt!831676 () Unit!39252)

(assert (=> b!2235986 (= lt!831682 lt!831676)))

(declare-fun lt!831678 () List!26398)

(declare-datatypes ((Option!5115 0))(
  ( (None!5114) (Some!5114 (v!29908 List!26397)) )
))
(declare-fun isDefined!4130 (Option!5115) Bool)

(declare-fun getValueByKey!71 (List!26398 (_ BitVec 64)) Option!5115)

(assert (=> b!2235986 (isDefined!4130 (getValueByKey!71 lt!831678 lt!831674))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!45 (List!26398 (_ BitVec 64)) Unit!39252)

(assert (=> b!2235986 (= lt!831676 (lemmaContainsKeyImpliesGetValueByKeyDefined!45 lt!831678 lt!831674))))

(assert (=> b!2235986 (= lt!831678 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))))

(declare-fun lt!831684 () Unit!39252)

(declare-fun lt!831671 () Unit!39252)

(assert (=> b!2235986 (= lt!831684 lt!831671)))

(declare-fun lt!831680 () List!26398)

(declare-fun containsKey!76 (List!26398 (_ BitVec 64)) Bool)

(assert (=> b!2235986 (containsKey!76 lt!831680 lt!831674)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!28 (List!26398 (_ BitVec 64)) Unit!39252)

(assert (=> b!2235986 (= lt!831671 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!28 lt!831680 lt!831674))))

(assert (=> b!2235986 (= lt!831680 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))))

(declare-fun e!1429097 () Unit!39252)

(declare-fun Unit!39254 () Unit!39252)

(assert (=> b!2235986 (= e!1429097 Unit!39254)))

(declare-fun bm!134796 () Bool)

(declare-fun apply!6469 (ListLongMap!323 (_ BitVec 64)) List!26397)

(assert (=> bm!134796 (= call!134800 (apply!6469 (ite c!356371 lt!831672 call!134801) call!134798))))

(declare-fun b!2235987 () Bool)

(declare-fun e!1429093 () Unit!39252)

(declare-fun Unit!39255 () Unit!39252)

(assert (=> b!2235987 (= e!1429093 Unit!39255)))

(declare-fun b!2235988 () Bool)

(assert (=> b!2235988 (= e!1429095 call!134797)))

(declare-fun b!2235989 () Bool)

(declare-fun e!1429096 () Bool)

(declare-fun isDefined!4131 (Option!5114) Bool)

(assert (=> b!2235989 (= e!1429096 (isDefined!4131 (getPair!27 (apply!6468 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674) (tuple3!3991 r!4766 ctx!52 a!997))))))

(declare-fun b!2235990 () Bool)

(assert (=> b!2235990 false))

(declare-fun lt!831665 () Unit!39252)

(declare-fun lt!831679 () Unit!39252)

(assert (=> b!2235990 (= lt!831665 lt!831679)))

(declare-fun lt!831670 () ListLongMap!323)

(declare-datatypes ((ListMap!833 0))(
  ( (ListMap!834 (toList!1352 List!26397)) )
))
(declare-fun contains!4386 (ListMap!833 tuple3!3990) Bool)

(declare-fun extractMap!107 (List!26398) ListMap!833)

(assert (=> b!2235990 (contains!4386 (extractMap!107 (toList!1351 lt!831670)) (tuple3!3991 r!4766 ctx!52 a!997))))

(declare-fun lemmaInLongMapThenInGenericMap!27 (ListLongMap!323 tuple3!3990 Hashable!3007) Unit!39252)

(assert (=> b!2235990 (= lt!831679 (lemmaInLongMapThenInGenericMap!27 lt!831670 (tuple3!3991 r!4766 ctx!52 a!997) (hashF!4930 (cache!3388 thiss!28797))))))

(assert (=> b!2235990 (= lt!831670 call!134801)))

(declare-fun Unit!39256 () Unit!39252)

(assert (=> b!2235990 (= e!1429093 Unit!39256)))

(declare-fun b!2235991 () Bool)

(declare-fun e!1429094 () Unit!39252)

(declare-fun Unit!39257 () Unit!39252)

(assert (=> b!2235991 (= e!1429094 Unit!39257)))

(declare-fun b!2235992 () Bool)

(assert (=> b!2235992 (= e!1429091 e!1429093)))

(declare-fun res!956713 () Bool)

(assert (=> b!2235992 (= res!956713 call!134799)))

(assert (=> b!2235992 (=> (not res!956713) (not e!1429092))))

(declare-fun c!356373 () Bool)

(assert (=> b!2235992 (= c!356373 e!1429092)))

(declare-fun lambda!84482 () Int)

(declare-fun b!2235993 () Bool)

(declare-fun forallContained!774 (List!26398 Int tuple2!25698) Unit!39252)

(assert (=> b!2235993 (= e!1429094 (forallContained!774 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))) lambda!84482 (tuple2!25699 lt!831674 (apply!6468 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674))))))

(declare-fun c!356372 () Bool)

(assert (=> b!2235993 (= c!356372 (not (contains!4385 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))) (tuple2!25699 lt!831674 (apply!6468 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674)))))))

(declare-fun lt!831667 () Unit!39252)

(assert (=> b!2235993 (= lt!831667 e!1429097)))

(declare-fun bm!134797 () Bool)

(assert (=> bm!134797 (= call!134797 (isDefined!4131 call!134802))))

(declare-fun b!2235994 () Bool)

(declare-fun Unit!39258 () Unit!39252)

(assert (=> b!2235994 (= e!1429097 Unit!39258)))

(declare-fun lt!831681 () Bool)

(declare-fun d!665433 () Bool)

(declare-fun map!5403 (MutableMap!3007) ListMap!833)

(assert (=> d!665433 (= lt!831681 (contains!4386 (map!5403 (cache!3388 thiss!28797)) (tuple3!3991 r!4766 ctx!52 a!997)))))

(assert (=> d!665433 (= lt!831681 e!1429096)))

(declare-fun res!956712 () Bool)

(assert (=> d!665433 (=> (not res!956712) (not e!1429096))))

(declare-fun contains!4387 (MutLongMap!3097 (_ BitVec 64)) Bool)

(assert (=> d!665433 (= res!956712 (contains!4387 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674))))

(declare-fun lt!831673 () Unit!39252)

(assert (=> d!665433 (= lt!831673 e!1429091)))

(assert (=> d!665433 (= c!356371 (contains!4386 (extractMap!107 (toList!1351 (map!5402 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))) (tuple3!3991 r!4766 ctx!52 a!997)))))

(declare-fun lt!831666 () Unit!39252)

(assert (=> d!665433 (= lt!831666 e!1429094)))

(declare-fun c!356370 () Bool)

(assert (=> d!665433 (= c!356370 (contains!4387 (v!29906 (underlying!6396 (cache!3388 thiss!28797))) lt!831674))))

(assert (=> d!665433 (= lt!831674 (hash!574 (hashF!4930 (cache!3388 thiss!28797)) (tuple3!3991 r!4766 ctx!52 a!997)))))

(declare-fun valid!2340 (MutableMap!3007) Bool)

(assert (=> d!665433 (valid!2340 (cache!3388 thiss!28797))))

(assert (=> d!665433 (= (contains!4383 (cache!3388 thiss!28797) (tuple3!3991 r!4766 ctx!52 a!997)) lt!831681)))

(assert (= (and d!665433 c!356370) b!2235993))

(assert (= (and d!665433 (not c!356370)) b!2235991))

(assert (= (and b!2235993 c!356372) b!2235986))

(assert (= (and b!2235993 (not c!356372)) b!2235994))

(assert (= (and d!665433 c!356371) b!2235985))

(assert (= (and d!665433 (not c!356371)) b!2235992))

(assert (= (and b!2235985 res!956711) b!2235988))

(assert (= (and b!2235992 res!956713) b!2235984))

(assert (= (and b!2235992 c!356373) b!2235990))

(assert (= (and b!2235992 (not c!356373)) b!2235987))

(assert (= (or b!2235985 b!2235988 b!2235992 b!2235984) bm!134792))

(assert (= (or b!2235985 b!2235992 b!2235984 b!2235990) bm!134794))

(assert (= (or b!2235985 b!2235992) bm!134793))

(assert (= (or b!2235988 b!2235984) bm!134796))

(assert (= (or b!2235988 b!2235984) bm!134795))

(assert (= (or b!2235988 b!2235984) bm!134797))

(assert (= (and d!665433 res!956712) b!2235989))

(declare-fun m!2670003 () Bool)

(assert (=> b!2235986 m!2670003))

(declare-fun m!2670005 () Bool)

(assert (=> b!2235986 m!2670005))

(assert (=> b!2235986 m!2670005))

(declare-fun m!2670007 () Bool)

(assert (=> b!2235986 m!2670007))

(declare-fun m!2670009 () Bool)

(assert (=> b!2235986 m!2670009))

(declare-fun m!2670011 () Bool)

(assert (=> b!2235986 m!2670011))

(declare-fun m!2670013 () Bool)

(assert (=> b!2235986 m!2670013))

(declare-fun m!2670015 () Bool)

(assert (=> b!2235986 m!2670015))

(declare-fun m!2670017 () Bool)

(assert (=> b!2235986 m!2670017))

(declare-fun m!2670019 () Bool)

(assert (=> b!2235986 m!2670019))

(declare-fun m!2670021 () Bool)

(assert (=> bm!134796 m!2670021))

(declare-fun m!2670023 () Bool)

(assert (=> bm!134793 m!2670023))

(declare-fun m!2670025 () Bool)

(assert (=> bm!134792 m!2670025))

(declare-fun m!2670027 () Bool)

(assert (=> d!665433 m!2670027))

(declare-fun m!2670029 () Bool)

(assert (=> d!665433 m!2670029))

(declare-fun m!2670031 () Bool)

(assert (=> d!665433 m!2670031))

(declare-fun m!2670033 () Bool)

(assert (=> d!665433 m!2670033))

(assert (=> d!665433 m!2670009))

(assert (=> d!665433 m!2670025))

(assert (=> d!665433 m!2670031))

(assert (=> d!665433 m!2670027))

(declare-fun m!2670035 () Bool)

(assert (=> d!665433 m!2670035))

(declare-fun m!2670037 () Bool)

(assert (=> d!665433 m!2670037))

(declare-fun m!2670039 () Bool)

(assert (=> b!2235990 m!2670039))

(assert (=> b!2235990 m!2670039))

(declare-fun m!2670041 () Bool)

(assert (=> b!2235990 m!2670041))

(declare-fun m!2670043 () Bool)

(assert (=> b!2235990 m!2670043))

(assert (=> b!2235993 m!2670009))

(assert (=> b!2235993 m!2670013))

(declare-fun m!2670045 () Bool)

(assert (=> b!2235993 m!2670045))

(declare-fun m!2670047 () Bool)

(assert (=> b!2235993 m!2670047))

(declare-fun m!2670049 () Bool)

(assert (=> b!2235985 m!2670049))

(assert (=> b!2235989 m!2670013))

(assert (=> b!2235989 m!2670013))

(declare-fun m!2670051 () Bool)

(assert (=> b!2235989 m!2670051))

(assert (=> b!2235989 m!2670051))

(declare-fun m!2670053 () Bool)

(assert (=> b!2235989 m!2670053))

(assert (=> bm!134794 m!2670009))

(declare-fun m!2670055 () Bool)

(assert (=> bm!134797 m!2670055))

(declare-fun m!2670057 () Bool)

(assert (=> bm!134795 m!2670057))

(assert (=> b!2235931 d!665433))

(declare-fun d!665435 () Bool)

(declare-fun e!1429115 () Bool)

(assert (=> d!665435 e!1429115))

(declare-fun res!956724 () Bool)

(assert (=> d!665435 (=> res!956724 e!1429115)))

(assert (=> d!665435 (= res!956724 (not (contains!4383 (cache!3388 thiss!28797) (tuple3!3991 r!4766 ctx!52 a!997))))))

(declare-fun lt!831704 () Unit!39252)

(declare-fun e!1429116 () Unit!39252)

(assert (=> d!665435 (= lt!831704 e!1429116)))

(declare-fun c!356376 () Bool)

(assert (=> d!665435 (= c!356376 (contains!4383 (cache!3388 thiss!28797) (tuple3!3991 r!4766 ctx!52 a!997)))))

(assert (=> d!665435 (validCacheMapDown!309 (cache!3388 thiss!28797))))

(assert (=> d!665435 (= (lemmaIfInCacheThenValid!28 thiss!28797 r!4766 ctx!52 a!997) lt!831704)))

(declare-fun b!2236007 () Bool)

(declare-fun Unit!39259 () Unit!39252)

(assert (=> b!2236007 (= e!1429116 Unit!39259)))

(declare-fun e!1429114 () Bool)

(declare-fun b!2236008 () Bool)

(declare-fun derivationStepZipperDown!67 (Regex!6459 Context!4014 C!13064) (InoxSet Context!4014))

(declare-fun apply!6470 (MutableMap!3007 tuple3!3990) (InoxSet Context!4014))

(assert (=> b!2236008 (= e!1429114 (= (derivationStepZipperDown!67 r!4766 ctx!52 a!997) (apply!6470 (cache!3388 thiss!28797) (tuple3!3991 r!4766 ctx!52 a!997))))))

(declare-fun b!2236009 () Bool)

(declare-fun lt!831711 () Unit!39252)

(assert (=> b!2236009 (= e!1429116 lt!831711)))

(declare-fun lt!831708 () tuple3!3990)

(assert (=> b!2236009 (= lt!831708 (tuple3!3991 r!4766 ctx!52 a!997))))

(declare-fun lambda!84485 () Int)

(declare-fun lemmaForallPairsThenForLookup!19 (MutableMap!3007 tuple3!3990 Int) Unit!39252)

(assert (=> b!2236009 (= lt!831711 (lemmaForallPairsThenForLookup!19 (cache!3388 thiss!28797) lt!831708 lambda!84485))))

(declare-fun lt!831709 () tuple2!25696)

(assert (=> b!2236009 (= lt!831709 (tuple2!25697 lt!831708 (apply!6470 (cache!3388 thiss!28797) lt!831708)))))

(declare-fun lt!831710 () (InoxSet Context!4014))

(assert (=> b!2236009 (= lt!831710 (apply!6470 (cache!3388 thiss!28797) lt!831708))))

(declare-fun res!956723 () Bool)

(assert (=> b!2236009 (= res!956723 (validRegex!2424 (_1!15313 lt!831708)))))

(declare-fun e!1429113 () Bool)

(assert (=> b!2236009 (=> (not res!956723) (not e!1429113))))

(assert (=> b!2236009 e!1429113))

(declare-fun b!2236010 () Bool)

(assert (=> b!2236010 (= e!1429115 e!1429114)))

(declare-fun res!956722 () Bool)

(assert (=> b!2236010 (=> (not res!956722) (not e!1429114))))

(assert (=> b!2236010 (= res!956722 (validRegex!2424 r!4766))))

(declare-fun b!2236011 () Bool)

(declare-fun lt!831707 () tuple3!3990)

(assert (=> b!2236011 (= lt!831707 lt!831708)))

(declare-fun lt!831705 () (InoxSet Context!4014))

(assert (=> b!2236011 (= lt!831705 (apply!6470 (cache!3388 thiss!28797) lt!831708))))

(declare-fun lt!831703 () (InoxSet Context!4014))

(assert (=> b!2236011 (= lt!831703 (apply!6470 (cache!3388 thiss!28797) lt!831708))))

(declare-fun lt!831706 () (InoxSet Context!4014))

(assert (=> b!2236011 (= lt!831706 (apply!6470 (cache!3388 thiss!28797) lt!831708))))

(assert (=> b!2236011 (= e!1429113 (= (apply!6470 (cache!3388 thiss!28797) lt!831708) (derivationStepZipperDown!67 (_1!15313 lt!831708) (_2!15313 lt!831708) (_3!2465 lt!831708))))))

(assert (= (and d!665435 c!356376) b!2236009))

(assert (= (and d!665435 (not c!356376)) b!2236007))

(assert (= (and b!2236009 res!956723) b!2236011))

(assert (= (and d!665435 (not res!956724)) b!2236010))

(assert (= (and b!2236010 res!956722) b!2236008))

(assert (=> b!2236010 m!2669985))

(assert (=> d!665435 m!2669987))

(assert (=> d!665435 m!2669989))

(declare-fun m!2670059 () Bool)

(assert (=> b!2236008 m!2670059))

(declare-fun m!2670061 () Bool)

(assert (=> b!2236008 m!2670061))

(declare-fun m!2670063 () Bool)

(assert (=> b!2236011 m!2670063))

(declare-fun m!2670065 () Bool)

(assert (=> b!2236011 m!2670065))

(declare-fun m!2670067 () Bool)

(assert (=> b!2236009 m!2670067))

(assert (=> b!2236009 m!2670063))

(declare-fun m!2670069 () Bool)

(assert (=> b!2236009 m!2670069))

(assert (=> b!2235929 d!665435))

(declare-fun d!665437 () Bool)

(assert (=> d!665437 (= (array_inv!3433 (_keys!3394 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) (bvsge (size!20562 (_keys!3394 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235928 d!665437))

(declare-fun d!665439 () Bool)

(assert (=> d!665439 (= (array_inv!3434 (_values!3377 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) (bvsge (size!20563 (_values!3377 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235928 d!665439))

(declare-fun bs!454204 () Bool)

(declare-fun b!2236019 () Bool)

(assert (= bs!454204 (and b!2236019 b!2236009)))

(declare-fun lambda!84488 () Int)

(assert (=> bs!454204 (= lambda!84488 lambda!84485)))

(declare-fun d!665441 () Bool)

(declare-fun res!956731 () Bool)

(declare-fun e!1429121 () Bool)

(assert (=> d!665441 (=> (not res!956731) (not e!1429121))))

(assert (=> d!665441 (= res!956731 (valid!2340 (cache!3388 thiss!28797)))))

(assert (=> d!665441 (= (validCacheMapDown!309 (cache!3388 thiss!28797)) e!1429121)))

(declare-fun b!2236018 () Bool)

(declare-fun res!956732 () Bool)

(assert (=> b!2236018 (=> (not res!956732) (not e!1429121))))

(declare-fun invariantList!371 (List!26397) Bool)

(assert (=> b!2236018 (= res!956732 (invariantList!371 (toList!1352 (map!5403 (cache!3388 thiss!28797)))))))

(declare-fun forall!5398 (List!26397 Int) Bool)

(assert (=> b!2236019 (= e!1429121 (forall!5398 (toList!1352 (map!5403 (cache!3388 thiss!28797))) lambda!84488))))

(assert (= (and d!665441 res!956731) b!2236018))

(assert (= (and b!2236018 res!956732) b!2236019))

(assert (=> d!665441 m!2670037))

(assert (=> b!2236018 m!2670027))

(declare-fun m!2670072 () Bool)

(assert (=> b!2236018 m!2670072))

(assert (=> b!2236019 m!2670027))

(declare-fun m!2670074 () Bool)

(assert (=> b!2236019 m!2670074))

(assert (=> start!217908 d!665441))

(declare-fun d!665443 () Bool)

(declare-fun res!956735 () Bool)

(declare-fun e!1429124 () Bool)

(assert (=> d!665443 (=> (not res!956735) (not e!1429124))))

(assert (=> d!665443 (= res!956735 ((_ is HashMap!3007) (cache!3388 thiss!28797)))))

(assert (=> d!665443 (= (inv!35726 thiss!28797) e!1429124)))

(declare-fun b!2236022 () Bool)

(assert (=> b!2236022 (= e!1429124 (validCacheMapDown!309 (cache!3388 thiss!28797)))))

(assert (= (and d!665443 res!956735) b!2236022))

(assert (=> b!2236022 m!2669989))

(assert (=> start!217908 d!665443))

(declare-fun d!665445 () Bool)

(declare-fun lambda!84491 () Int)

(declare-fun forall!5399 (List!26396 Int) Bool)

(assert (=> d!665445 (= (inv!35727 ctx!52) (forall!5399 (exprs!2507 ctx!52) lambda!84491))))

(declare-fun bs!454205 () Bool)

(assert (= bs!454205 d!665445))

(declare-fun m!2670076 () Bool)

(assert (=> bs!454205 m!2670076))

(assert (=> start!217908 d!665445))

(declare-fun b!2236035 () Bool)

(declare-fun e!1429127 () Bool)

(declare-fun tp!702759 () Bool)

(assert (=> b!2236035 (= e!1429127 tp!702759)))

(declare-fun b!2236036 () Bool)

(declare-fun tp!702763 () Bool)

(declare-fun tp!702760 () Bool)

(assert (=> b!2236036 (= e!1429127 (and tp!702763 tp!702760))))

(declare-fun b!2236034 () Bool)

(declare-fun tp!702761 () Bool)

(declare-fun tp!702762 () Bool)

(assert (=> b!2236034 (= e!1429127 (and tp!702761 tp!702762))))

(assert (=> b!2235921 (= tp!702736 e!1429127)))

(declare-fun b!2236033 () Bool)

(assert (=> b!2236033 (= e!1429127 tp_is_empty!10143)))

(assert (= (and b!2235921 ((_ is ElementMatch!6459) (reg!6788 r!4766))) b!2236033))

(assert (= (and b!2235921 ((_ is Concat!10797) (reg!6788 r!4766))) b!2236034))

(assert (= (and b!2235921 ((_ is Star!6459) (reg!6788 r!4766))) b!2236035))

(assert (= (and b!2235921 ((_ is Union!6459) (reg!6788 r!4766))) b!2236036))

(declare-fun b!2236039 () Bool)

(declare-fun e!1429128 () Bool)

(declare-fun tp!702764 () Bool)

(assert (=> b!2236039 (= e!1429128 tp!702764)))

(declare-fun b!2236040 () Bool)

(declare-fun tp!702768 () Bool)

(declare-fun tp!702765 () Bool)

(assert (=> b!2236040 (= e!1429128 (and tp!702768 tp!702765))))

(declare-fun b!2236038 () Bool)

(declare-fun tp!702766 () Bool)

(declare-fun tp!702767 () Bool)

(assert (=> b!2236038 (= e!1429128 (and tp!702766 tp!702767))))

(assert (=> b!2235925 (= tp!702738 e!1429128)))

(declare-fun b!2236037 () Bool)

(assert (=> b!2236037 (= e!1429128 tp_is_empty!10143)))

(assert (= (and b!2235925 ((_ is ElementMatch!6459) (regOne!13430 r!4766))) b!2236037))

(assert (= (and b!2235925 ((_ is Concat!10797) (regOne!13430 r!4766))) b!2236038))

(assert (= (and b!2235925 ((_ is Star!6459) (regOne!13430 r!4766))) b!2236039))

(assert (= (and b!2235925 ((_ is Union!6459) (regOne!13430 r!4766))) b!2236040))

(declare-fun b!2236043 () Bool)

(declare-fun e!1429129 () Bool)

(declare-fun tp!702769 () Bool)

(assert (=> b!2236043 (= e!1429129 tp!702769)))

(declare-fun b!2236044 () Bool)

(declare-fun tp!702773 () Bool)

(declare-fun tp!702770 () Bool)

(assert (=> b!2236044 (= e!1429129 (and tp!702773 tp!702770))))

(declare-fun b!2236042 () Bool)

(declare-fun tp!702771 () Bool)

(declare-fun tp!702772 () Bool)

(assert (=> b!2236042 (= e!1429129 (and tp!702771 tp!702772))))

(assert (=> b!2235925 (= tp!702742 e!1429129)))

(declare-fun b!2236041 () Bool)

(assert (=> b!2236041 (= e!1429129 tp_is_empty!10143)))

(assert (= (and b!2235925 ((_ is ElementMatch!6459) (regTwo!13430 r!4766))) b!2236041))

(assert (= (and b!2235925 ((_ is Concat!10797) (regTwo!13430 r!4766))) b!2236042))

(assert (= (and b!2235925 ((_ is Star!6459) (regTwo!13430 r!4766))) b!2236043))

(assert (= (and b!2235925 ((_ is Union!6459) (regTwo!13430 r!4766))) b!2236044))

(declare-fun e!1429143 () Bool)

(declare-fun setRes!20371 () Bool)

(declare-fun b!2236059 () Bool)

(declare-fun tp!702803 () Bool)

(declare-fun tp!702805 () Bool)

(declare-fun mapDefault!14558 () List!26397)

(declare-fun e!1429142 () Bool)

(assert (=> b!2236059 (= e!1429143 (and tp!702805 (inv!35727 (_2!15313 (_1!15314 (h!31704 mapDefault!14558)))) e!1429142 tp_is_empty!10143 setRes!20371 tp!702803))))

(declare-fun condSetEmpty!20370 () Bool)

(assert (=> b!2236059 (= condSetEmpty!20370 (= (_2!15314 (h!31704 mapDefault!14558)) ((as const (Array Context!4014 Bool)) false)))))

(declare-fun condMapEmpty!14558 () Bool)

(assert (=> mapNonEmpty!14555 (= condMapEmpty!14558 (= mapRest!14555 ((as const (Array (_ BitVec 32) List!26397)) mapDefault!14558)))))

(declare-fun mapRes!14558 () Bool)

(assert (=> mapNonEmpty!14555 (= tp!702741 (and e!1429143 mapRes!14558))))

(declare-fun b!2236060 () Bool)

(declare-fun e!1429145 () Bool)

(declare-fun tp!702798 () Bool)

(assert (=> b!2236060 (= e!1429145 tp!702798)))

(declare-fun mapNonEmpty!14558 () Bool)

(declare-fun tp!702806 () Bool)

(declare-fun e!1429146 () Bool)

(assert (=> mapNonEmpty!14558 (= mapRes!14558 (and tp!702806 e!1429146))))

(declare-fun mapValue!14558 () List!26397)

(declare-fun mapKey!14558 () (_ BitVec 32))

(declare-fun mapRest!14558 () (Array (_ BitVec 32) List!26397))

(assert (=> mapNonEmpty!14558 (= mapRest!14555 (store mapRest!14558 mapKey!14558 mapValue!14558))))

(declare-fun b!2236061 () Bool)

(declare-fun tp!702804 () Bool)

(assert (=> b!2236061 (= e!1429142 tp!702804)))

(declare-fun setIsEmpty!20370 () Bool)

(declare-fun setRes!20370 () Bool)

(assert (=> setIsEmpty!20370 setRes!20370))

(declare-fun tp!702796 () Bool)

(declare-fun setElem!20371 () Context!4014)

(declare-fun setNonEmpty!20370 () Bool)

(assert (=> setNonEmpty!20370 (= setRes!20371 (and tp!702796 (inv!35727 setElem!20371) e!1429145))))

(declare-fun setRest!20371 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20370 (= (_2!15314 (h!31704 mapDefault!14558)) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20371 true) setRest!20371))))

(declare-fun mapIsEmpty!14558 () Bool)

(assert (=> mapIsEmpty!14558 mapRes!14558))

(declare-fun setNonEmpty!20371 () Bool)

(declare-fun e!1429147 () Bool)

(declare-fun setElem!20370 () Context!4014)

(declare-fun tp!702802 () Bool)

(assert (=> setNonEmpty!20371 (= setRes!20370 (and tp!702802 (inv!35727 setElem!20370) e!1429147))))

(declare-fun setRest!20370 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20371 (= (_2!15314 (h!31704 mapValue!14558)) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20370 true) setRest!20370))))

(declare-fun b!2236062 () Bool)

(declare-fun e!1429144 () Bool)

(declare-fun tp!702797 () Bool)

(assert (=> b!2236062 (= e!1429144 tp!702797)))

(declare-fun setIsEmpty!20371 () Bool)

(assert (=> setIsEmpty!20371 setRes!20371))

(declare-fun b!2236063 () Bool)

(declare-fun tp!702800 () Bool)

(assert (=> b!2236063 (= e!1429147 tp!702800)))

(declare-fun b!2236064 () Bool)

(declare-fun tp!702799 () Bool)

(declare-fun tp!702801 () Bool)

(assert (=> b!2236064 (= e!1429146 (and tp!702801 (inv!35727 (_2!15313 (_1!15314 (h!31704 mapValue!14558)))) e!1429144 tp_is_empty!10143 setRes!20370 tp!702799))))

(declare-fun condSetEmpty!20371 () Bool)

(assert (=> b!2236064 (= condSetEmpty!20371 (= (_2!15314 (h!31704 mapValue!14558)) ((as const (Array Context!4014 Bool)) false)))))

(assert (= (and mapNonEmpty!14555 condMapEmpty!14558) mapIsEmpty!14558))

(assert (= (and mapNonEmpty!14555 (not condMapEmpty!14558)) mapNonEmpty!14558))

(assert (= b!2236064 b!2236062))

(assert (= (and b!2236064 condSetEmpty!20371) setIsEmpty!20370))

(assert (= (and b!2236064 (not condSetEmpty!20371)) setNonEmpty!20371))

(assert (= setNonEmpty!20371 b!2236063))

(assert (= (and mapNonEmpty!14558 ((_ is Cons!26303) mapValue!14558)) b!2236064))

(assert (= b!2236059 b!2236061))

(assert (= (and b!2236059 condSetEmpty!20370) setIsEmpty!20371))

(assert (= (and b!2236059 (not condSetEmpty!20370)) setNonEmpty!20370))

(assert (= setNonEmpty!20370 b!2236060))

(assert (= (and mapNonEmpty!14555 ((_ is Cons!26303) mapDefault!14558)) b!2236059))

(declare-fun m!2670078 () Bool)

(assert (=> mapNonEmpty!14558 m!2670078))

(declare-fun m!2670080 () Bool)

(assert (=> setNonEmpty!20370 m!2670080))

(declare-fun m!2670082 () Bool)

(assert (=> b!2236064 m!2670082))

(declare-fun m!2670084 () Bool)

(assert (=> setNonEmpty!20371 m!2670084))

(declare-fun m!2670086 () Bool)

(assert (=> b!2236059 m!2670086))

(declare-fun tp!702818 () Bool)

(declare-fun setElem!20374 () Context!4014)

(declare-fun setRes!20374 () Bool)

(declare-fun e!1429156 () Bool)

(declare-fun setNonEmpty!20374 () Bool)

(assert (=> setNonEmpty!20374 (= setRes!20374 (and tp!702818 (inv!35727 setElem!20374) e!1429156))))

(declare-fun setRest!20374 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20374 (= (_2!15314 (h!31704 mapValue!14555)) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20374 true) setRest!20374))))

(declare-fun e!1429155 () Bool)

(assert (=> mapNonEmpty!14555 (= tp!702747 e!1429155)))

(declare-fun b!2236073 () Bool)

(declare-fun e!1429154 () Bool)

(declare-fun tp!702819 () Bool)

(declare-fun tp!702820 () Bool)

(assert (=> b!2236073 (= e!1429155 (and tp!702820 (inv!35727 (_2!15313 (_1!15314 (h!31704 mapValue!14555)))) e!1429154 tp_is_empty!10143 setRes!20374 tp!702819))))

(declare-fun condSetEmpty!20374 () Bool)

(assert (=> b!2236073 (= condSetEmpty!20374 (= (_2!15314 (h!31704 mapValue!14555)) ((as const (Array Context!4014 Bool)) false)))))

(declare-fun b!2236074 () Bool)

(declare-fun tp!702821 () Bool)

(assert (=> b!2236074 (= e!1429154 tp!702821)))

(declare-fun b!2236075 () Bool)

(declare-fun tp!702817 () Bool)

(assert (=> b!2236075 (= e!1429156 tp!702817)))

(declare-fun setIsEmpty!20374 () Bool)

(assert (=> setIsEmpty!20374 setRes!20374))

(assert (= b!2236073 b!2236074))

(assert (= (and b!2236073 condSetEmpty!20374) setIsEmpty!20374))

(assert (= (and b!2236073 (not condSetEmpty!20374)) setNonEmpty!20374))

(assert (= setNonEmpty!20374 b!2236075))

(assert (= (and mapNonEmpty!14555 ((_ is Cons!26303) mapValue!14555)) b!2236073))

(declare-fun m!2670088 () Bool)

(assert (=> setNonEmpty!20374 m!2670088))

(declare-fun m!2670090 () Bool)

(assert (=> b!2236073 m!2670090))

(declare-fun setElem!20375 () Context!4014)

(declare-fun setRes!20375 () Bool)

(declare-fun e!1429159 () Bool)

(declare-fun setNonEmpty!20375 () Bool)

(declare-fun tp!702823 () Bool)

(assert (=> setNonEmpty!20375 (= setRes!20375 (and tp!702823 (inv!35727 setElem!20375) e!1429159))))

(declare-fun setRest!20375 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20375 (= (_2!15314 (h!31704 (zeroValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20375 true) setRest!20375))))

(declare-fun e!1429158 () Bool)

(assert (=> b!2235928 (= tp!702743 e!1429158)))

(declare-fun tp!702824 () Bool)

(declare-fun tp!702825 () Bool)

(declare-fun b!2236076 () Bool)

(declare-fun e!1429157 () Bool)

(assert (=> b!2236076 (= e!1429158 (and tp!702825 (inv!35727 (_2!15313 (_1!15314 (h!31704 (zeroValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))))) e!1429157 tp_is_empty!10143 setRes!20375 tp!702824))))

(declare-fun condSetEmpty!20375 () Bool)

(assert (=> b!2236076 (= condSetEmpty!20375 (= (_2!15314 (h!31704 (zeroValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) ((as const (Array Context!4014 Bool)) false)))))

(declare-fun b!2236077 () Bool)

(declare-fun tp!702826 () Bool)

(assert (=> b!2236077 (= e!1429157 tp!702826)))

(declare-fun b!2236078 () Bool)

(declare-fun tp!702822 () Bool)

(assert (=> b!2236078 (= e!1429159 tp!702822)))

(declare-fun setIsEmpty!20375 () Bool)

(assert (=> setIsEmpty!20375 setRes!20375))

(assert (= b!2236076 b!2236077))

(assert (= (and b!2236076 condSetEmpty!20375) setIsEmpty!20375))

(assert (= (and b!2236076 (not condSetEmpty!20375)) setNonEmpty!20375))

(assert (= setNonEmpty!20375 b!2236078))

(assert (= (and b!2235928 ((_ is Cons!26303) (zeroValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) b!2236076))

(declare-fun m!2670092 () Bool)

(assert (=> setNonEmpty!20375 m!2670092))

(declare-fun m!2670094 () Bool)

(assert (=> b!2236076 m!2670094))

(declare-fun setRes!20376 () Bool)

(declare-fun e!1429162 () Bool)

(declare-fun tp!702828 () Bool)

(declare-fun setElem!20376 () Context!4014)

(declare-fun setNonEmpty!20376 () Bool)

(assert (=> setNonEmpty!20376 (= setRes!20376 (and tp!702828 (inv!35727 setElem!20376) e!1429162))))

(declare-fun setRest!20376 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20376 (= (_2!15314 (h!31704 (minValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20376 true) setRest!20376))))

(declare-fun e!1429161 () Bool)

(assert (=> b!2235928 (= tp!702740 e!1429161)))

(declare-fun tp!702830 () Bool)

(declare-fun b!2236079 () Bool)

(declare-fun e!1429160 () Bool)

(declare-fun tp!702829 () Bool)

(assert (=> b!2236079 (= e!1429161 (and tp!702830 (inv!35727 (_2!15313 (_1!15314 (h!31704 (minValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))))) e!1429160 tp_is_empty!10143 setRes!20376 tp!702829))))

(declare-fun condSetEmpty!20376 () Bool)

(assert (=> b!2236079 (= condSetEmpty!20376 (= (_2!15314 (h!31704 (minValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) ((as const (Array Context!4014 Bool)) false)))))

(declare-fun b!2236080 () Bool)

(declare-fun tp!702831 () Bool)

(assert (=> b!2236080 (= e!1429160 tp!702831)))

(declare-fun b!2236081 () Bool)

(declare-fun tp!702827 () Bool)

(assert (=> b!2236081 (= e!1429162 tp!702827)))

(declare-fun setIsEmpty!20376 () Bool)

(assert (=> setIsEmpty!20376 setRes!20376))

(assert (= b!2236079 b!2236080))

(assert (= (and b!2236079 condSetEmpty!20376) setIsEmpty!20376))

(assert (= (and b!2236079 (not condSetEmpty!20376)) setNonEmpty!20376))

(assert (= setNonEmpty!20376 b!2236081))

(assert (= (and b!2235928 ((_ is Cons!26303) (minValue!3355 (v!29905 (underlying!6395 (v!29906 (underlying!6396 (cache!3388 thiss!28797)))))))) b!2236079))

(declare-fun m!2670096 () Bool)

(assert (=> setNonEmpty!20376 m!2670096))

(declare-fun m!2670098 () Bool)

(assert (=> b!2236079 m!2670098))

(declare-fun b!2236084 () Bool)

(declare-fun e!1429163 () Bool)

(declare-fun tp!702832 () Bool)

(assert (=> b!2236084 (= e!1429163 tp!702832)))

(declare-fun b!2236085 () Bool)

(declare-fun tp!702836 () Bool)

(declare-fun tp!702833 () Bool)

(assert (=> b!2236085 (= e!1429163 (and tp!702836 tp!702833))))

(declare-fun b!2236083 () Bool)

(declare-fun tp!702834 () Bool)

(declare-fun tp!702835 () Bool)

(assert (=> b!2236083 (= e!1429163 (and tp!702834 tp!702835))))

(assert (=> b!2235933 (= tp!702737 e!1429163)))

(declare-fun b!2236082 () Bool)

(assert (=> b!2236082 (= e!1429163 tp_is_empty!10143)))

(assert (= (and b!2235933 ((_ is ElementMatch!6459) (regOne!13431 r!4766))) b!2236082))

(assert (= (and b!2235933 ((_ is Concat!10797) (regOne!13431 r!4766))) b!2236083))

(assert (= (and b!2235933 ((_ is Star!6459) (regOne!13431 r!4766))) b!2236084))

(assert (= (and b!2235933 ((_ is Union!6459) (regOne!13431 r!4766))) b!2236085))

(declare-fun b!2236088 () Bool)

(declare-fun e!1429164 () Bool)

(declare-fun tp!702837 () Bool)

(assert (=> b!2236088 (= e!1429164 tp!702837)))

(declare-fun b!2236089 () Bool)

(declare-fun tp!702841 () Bool)

(declare-fun tp!702838 () Bool)

(assert (=> b!2236089 (= e!1429164 (and tp!702841 tp!702838))))

(declare-fun b!2236087 () Bool)

(declare-fun tp!702839 () Bool)

(declare-fun tp!702840 () Bool)

(assert (=> b!2236087 (= e!1429164 (and tp!702839 tp!702840))))

(assert (=> b!2235933 (= tp!702748 e!1429164)))

(declare-fun b!2236086 () Bool)

(assert (=> b!2236086 (= e!1429164 tp_is_empty!10143)))

(assert (= (and b!2235933 ((_ is ElementMatch!6459) (regTwo!13431 r!4766))) b!2236086))

(assert (= (and b!2235933 ((_ is Concat!10797) (regTwo!13431 r!4766))) b!2236087))

(assert (= (and b!2235933 ((_ is Star!6459) (regTwo!13431 r!4766))) b!2236088))

(assert (= (and b!2235933 ((_ is Union!6459) (regTwo!13431 r!4766))) b!2236089))

(declare-fun setElem!20377 () Context!4014)

(declare-fun e!1429167 () Bool)

(declare-fun tp!702843 () Bool)

(declare-fun setRes!20377 () Bool)

(declare-fun setNonEmpty!20377 () Bool)

(assert (=> setNonEmpty!20377 (= setRes!20377 (and tp!702843 (inv!35727 setElem!20377) e!1429167))))

(declare-fun setRest!20377 () (InoxSet Context!4014))

(assert (=> setNonEmpty!20377 (= (_2!15314 (h!31704 mapDefault!14555)) ((_ map or) (store ((as const (Array Context!4014 Bool)) false) setElem!20377 true) setRest!20377))))

(declare-fun e!1429166 () Bool)

(assert (=> b!2235932 (= tp!702739 e!1429166)))

(declare-fun tp!702845 () Bool)

(declare-fun b!2236090 () Bool)

(declare-fun tp!702844 () Bool)

(declare-fun e!1429165 () Bool)

(assert (=> b!2236090 (= e!1429166 (and tp!702845 (inv!35727 (_2!15313 (_1!15314 (h!31704 mapDefault!14555)))) e!1429165 tp_is_empty!10143 setRes!20377 tp!702844))))

(declare-fun condSetEmpty!20377 () Bool)

(assert (=> b!2236090 (= condSetEmpty!20377 (= (_2!15314 (h!31704 mapDefault!14555)) ((as const (Array Context!4014 Bool)) false)))))

(declare-fun b!2236091 () Bool)

(declare-fun tp!702846 () Bool)

(assert (=> b!2236091 (= e!1429165 tp!702846)))

(declare-fun b!2236092 () Bool)

(declare-fun tp!702842 () Bool)

(assert (=> b!2236092 (= e!1429167 tp!702842)))

(declare-fun setIsEmpty!20377 () Bool)

(assert (=> setIsEmpty!20377 setRes!20377))

(assert (= b!2236090 b!2236091))

(assert (= (and b!2236090 condSetEmpty!20377) setIsEmpty!20377))

(assert (= (and b!2236090 (not condSetEmpty!20377)) setNonEmpty!20377))

(assert (= setNonEmpty!20377 b!2236092))

(assert (= (and b!2235932 ((_ is Cons!26303) mapDefault!14555)) b!2236090))

(declare-fun m!2670100 () Bool)

(assert (=> setNonEmpty!20377 m!2670100))

(declare-fun m!2670102 () Bool)

(assert (=> b!2236090 m!2670102))

(declare-fun b!2236097 () Bool)

(declare-fun e!1429170 () Bool)

(declare-fun tp!702851 () Bool)

(declare-fun tp!702852 () Bool)

(assert (=> b!2236097 (= e!1429170 (and tp!702851 tp!702852))))

(assert (=> b!2235922 (= tp!702745 e!1429170)))

(assert (= (and b!2235922 ((_ is Cons!26302) (exprs!2507 ctx!52))) b!2236097))

(check-sat (not b!2236075) (not b!2236084) (not d!665441) (not b!2236080) (not b!2235993) (not b!2236061) (not b!2236035) (not b!2236010) (not b!2236034) (not b!2236039) (not setNonEmpty!20376) (not bm!134797) tp_is_empty!10143 (not setNonEmpty!20370) (not b!2236040) (not mapNonEmpty!14558) (not b!2236011) (not b!2236090) (not b_next!65553) (not b!2236059) (not bm!134792) (not b!2236062) (not b!2236091) (not b!2236089) (not setNonEmpty!20374) (not b!2236088) (not b!2236073) (not b!2236009) (not b!2236081) (not b!2235985) (not b!2235990) (not b!2236078) (not b!2236018) (not b!2236064) (not b!2236042) (not b!2236087) (not b_next!65555) (not b!2236022) (not bm!134793) (not d!665433) (not bm!134796) (not setNonEmpty!20377) (not b!2236083) (not b!2236076) (not b!2236043) (not b!2236019) (not b!2236044) b_and!174837 (not b!2235986) (not b!2236074) (not b!2235954) (not bm!134778) (not b!2236085) (not d!665445) (not b!2236038) (not b!2236092) (not bm!134795) (not b!2235989) (not setNonEmpty!20375) (not b!2236036) (not bm!134779) b_and!174839 (not setNonEmpty!20371) (not b!2236077) (not d!665435) (not b!2236063) (not b!2236060) (not bm!134794) (not b!2236008) (not b!2236079) (not b!2236097))
(check-sat b_and!174839 b_and!174837 (not b_next!65555) (not b_next!65553))
