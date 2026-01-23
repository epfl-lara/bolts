; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48454 () Bool)

(assert start!48454)

(declare-fun b!528557 () Bool)

(declare-fun b_free!14069 () Bool)

(declare-fun b_next!14085 () Bool)

(assert (=> b!528557 (= b_free!14069 (not b_next!14085))))

(declare-fun tp!167884 () Bool)

(declare-fun b_and!51567 () Bool)

(assert (=> b!528557 (= tp!167884 b_and!51567)))

(declare-fun b!528550 () Bool)

(declare-fun b_free!14071 () Bool)

(declare-fun b_next!14087 () Bool)

(assert (=> b!528550 (= b_free!14071 (not b_next!14087))))

(declare-fun tp!167882 () Bool)

(declare-fun b_and!51569 () Bool)

(assert (=> b!528550 (= tp!167882 b_and!51569)))

(declare-fun b!528549 () Bool)

(declare-fun e!317924 () Bool)

(declare-fun tp_is_empty!2805 () Bool)

(assert (=> b!528549 (= e!317924 tp_is_empty!2805)))

(declare-fun b!528551 () Bool)

(declare-fun e!317930 () Bool)

(declare-datatypes ((C!3372 0))(
  ( (C!3373 (val!1912 Int)) )
))
(declare-datatypes ((Regex!1225 0))(
  ( (ElementMatch!1225 (c!101193 C!3372)) (Concat!2143 (regOne!2962 Regex!1225) (regTwo!2962 Regex!1225)) (EmptyExpr!1225) (Star!1225 (reg!1554 Regex!1225)) (EmptyLang!1225) (Union!1225 (regOne!2963 Regex!1225) (regTwo!2963 Regex!1225)) )
))
(declare-datatypes ((List!4991 0))(
  ( (Nil!4981) (Cons!4981 (h!10382 Regex!1225) (t!73612 List!4991)) )
))
(declare-datatypes ((Context!326 0))(
  ( (Context!327 (exprs!663 List!4991)) )
))
(declare-datatypes ((tuple3!420 0))(
  ( (tuple3!421 (_1!3334 Regex!1225) (_2!3334 Context!326) (_3!261 C!3372)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6146 0))(
  ( (tuple2!6147 (_1!3335 tuple3!420) (_2!3335 (InoxSet Context!326))) )
))
(declare-datatypes ((List!4992 0))(
  ( (Nil!4982) (Cons!4982 (h!10383 tuple2!6146) (t!73613 List!4992)) )
))
(declare-datatypes ((array!2307 0))(
  ( (array!2308 (arr!1049 (Array (_ BitVec 32) (_ BitVec 64))) (size!4066 (_ BitVec 32))) )
))
(declare-datatypes ((array!2309 0))(
  ( (array!2310 (arr!1050 (Array (_ BitVec 32) List!4992)) (size!4067 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1200 0))(
  ( (LongMapFixedSize!1201 (defaultEntry!956 Int) (mask!2084 (_ BitVec 32)) (extraKeys!847 (_ BitVec 32)) (zeroValue!857 List!4992) (minValue!857 List!4992) (_size!1309 (_ BitVec 32)) (_keys!894 array!2307) (_values!879 array!2309) (_vacant!661 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2341 0))(
  ( (Cell!2342 (v!16048 LongMapFixedSize!1200)) )
))
(declare-datatypes ((MutLongMap!600 0))(
  ( (LongMap!600 (underlying!1379 Cell!2341)) (MutLongMapExt!599 (__x!3725 Int)) )
))
(declare-datatypes ((Cell!2343 0))(
  ( (Cell!2344 (v!16049 MutLongMap!600)) )
))
(declare-datatypes ((Hashable!572 0))(
  ( (HashableExt!571 (__x!3726 Int)) )
))
(declare-datatypes ((MutableMap!572 0))(
  ( (MutableMapExt!571 (__x!3727 Int)) (HashMap!572 (underlying!1380 Cell!2343) (hashF!2480 Hashable!572) (_size!1310 (_ BitVec 32)) (defaultValue!723 Int)) )
))
(declare-datatypes ((CacheDown!228 0))(
  ( (CacheDown!229 (cache!959 MutableMap!572)) )
))
(declare-fun thiss!28792 () CacheDown!228)

(get-info :version)

(assert (=> b!528551 (= e!317930 (not ((_ is HashMap!572) (cache!959 thiss!28792))))))

(declare-fun b!528552 () Bool)

(declare-fun e!317929 () Bool)

(declare-fun tp!167881 () Bool)

(declare-fun mapRes!2369 () Bool)

(assert (=> b!528552 (= e!317929 (and tp!167881 mapRes!2369))))

(declare-fun condMapEmpty!2369 () Bool)

(declare-fun mapDefault!2369 () List!4992)

(assert (=> b!528552 (= condMapEmpty!2369 (= (arr!1050 (_values!879 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) ((as const (Array (_ BitVec 32) List!4992)) mapDefault!2369)))))

(declare-fun mapIsEmpty!2369 () Bool)

(assert (=> mapIsEmpty!2369 mapRes!2369))

(declare-fun mapNonEmpty!2369 () Bool)

(declare-fun tp!167879 () Bool)

(declare-fun tp!167883 () Bool)

(assert (=> mapNonEmpty!2369 (= mapRes!2369 (and tp!167879 tp!167883))))

(declare-fun mapRest!2369 () (Array (_ BitVec 32) List!4992))

(declare-fun mapValue!2369 () List!4992)

(declare-fun mapKey!2369 () (_ BitVec 32))

(assert (=> mapNonEmpty!2369 (= (arr!1050 (_values!879 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) (store mapRest!2369 mapKey!2369 mapValue!2369))))

(declare-fun b!528553 () Bool)

(declare-fun e!317925 () Bool)

(declare-fun e!317928 () Bool)

(assert (=> b!528553 (= e!317925 e!317928)))

(declare-fun b!528554 () Bool)

(declare-fun res!223290 () Bool)

(assert (=> b!528554 (=> (not res!223290) (not e!317930))))

(declare-fun r!4761 () Regex!1225)

(declare-fun validRegex!421 (Regex!1225) Bool)

(assert (=> b!528554 (= res!223290 (validRegex!421 r!4761))))

(declare-fun b!528555 () Bool)

(declare-fun tp!167886 () Bool)

(declare-fun tp!167878 () Bool)

(assert (=> b!528555 (= e!317924 (and tp!167886 tp!167878))))

(declare-fun b!528556 () Bool)

(declare-fun e!317926 () Bool)

(declare-fun lt!218291 () MutLongMap!600)

(assert (=> b!528556 (= e!317926 (and e!317925 ((_ is LongMap!600) lt!218291)))))

(assert (=> b!528556 (= lt!218291 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))

(declare-fun tp!167887 () Bool)

(declare-fun e!317931 () Bool)

(declare-fun tp!167885 () Bool)

(declare-fun array_inv!765 (array!2307) Bool)

(declare-fun array_inv!766 (array!2309) Bool)

(assert (=> b!528557 (= e!317931 (and tp!167884 tp!167885 tp!167887 (array_inv!765 (_keys!894 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) (array_inv!766 (_values!879 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) e!317929))))

(declare-fun b!528558 () Bool)

(declare-fun e!317927 () Bool)

(declare-fun e!317923 () Bool)

(assert (=> b!528558 (= e!317927 e!317923)))

(declare-fun b!528559 () Bool)

(declare-fun tp!167888 () Bool)

(declare-fun tp!167880 () Bool)

(assert (=> b!528559 (= e!317924 (and tp!167888 tp!167880))))

(assert (=> b!528550 (= e!317923 (and e!317926 tp!167882))))

(declare-fun res!223291 () Bool)

(assert (=> start!48454 (=> (not res!223291) (not e!317930))))

(declare-fun validCacheMapDown!37 (MutableMap!572) Bool)

(assert (=> start!48454 (= res!223291 (validCacheMapDown!37 (cache!959 thiss!28792)))))

(assert (=> start!48454 e!317930))

(declare-fun inv!6245 (CacheDown!228) Bool)

(assert (=> start!48454 (and (inv!6245 thiss!28792) e!317927)))

(assert (=> start!48454 e!317924))

(declare-fun b!528560 () Bool)

(assert (=> b!528560 (= e!317928 e!317931)))

(declare-fun b!528561 () Bool)

(declare-fun tp!167877 () Bool)

(assert (=> b!528561 (= e!317924 tp!167877)))

(assert (= (and start!48454 res!223291) b!528554))

(assert (= (and b!528554 res!223290) b!528551))

(assert (= (and b!528552 condMapEmpty!2369) mapIsEmpty!2369))

(assert (= (and b!528552 (not condMapEmpty!2369)) mapNonEmpty!2369))

(assert (= b!528557 b!528552))

(assert (= b!528560 b!528557))

(assert (= b!528553 b!528560))

(assert (= (and b!528556 ((_ is LongMap!600) (v!16049 (underlying!1380 (cache!959 thiss!28792))))) b!528553))

(assert (= b!528550 b!528556))

(assert (= (and b!528558 ((_ is HashMap!572) (cache!959 thiss!28792))) b!528550))

(assert (= start!48454 b!528558))

(assert (= (and start!48454 ((_ is ElementMatch!1225) r!4761)) b!528549))

(assert (= (and start!48454 ((_ is Concat!2143) r!4761)) b!528559))

(assert (= (and start!48454 ((_ is Star!1225) r!4761)) b!528561))

(assert (= (and start!48454 ((_ is Union!1225) r!4761)) b!528555))

(declare-fun m!774475 () Bool)

(assert (=> mapNonEmpty!2369 m!774475))

(declare-fun m!774477 () Bool)

(assert (=> b!528554 m!774477))

(declare-fun m!774479 () Bool)

(assert (=> b!528557 m!774479))

(declare-fun m!774481 () Bool)

(assert (=> b!528557 m!774481))

(declare-fun m!774483 () Bool)

(assert (=> start!48454 m!774483))

(declare-fun m!774485 () Bool)

(assert (=> start!48454 m!774485))

(check-sat (not b!528557) (not b_next!14087) (not b!528554) (not b_next!14085) (not mapNonEmpty!2369) b_and!51569 (not b!528552) b_and!51567 tp_is_empty!2805 (not start!48454) (not b!528559) (not b!528561) (not b!528555))
(check-sat b_and!51569 b_and!51567 (not b_next!14085) (not b_next!14087))
(get-model)

(declare-fun d!187943 () Bool)

(assert (=> d!187943 (= (array_inv!765 (_keys!894 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) (bvsge (size!4066 (_keys!894 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528557 d!187943))

(declare-fun d!187945 () Bool)

(assert (=> d!187945 (= (array_inv!766 (_values!879 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) (bvsge (size!4067 (_values!879 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528557 d!187945))

(declare-fun bm!38117 () Bool)

(declare-fun call!38123 () Bool)

(declare-fun c!101198 () Bool)

(assert (=> bm!38117 (= call!38123 (validRegex!421 (ite c!101198 (regOne!2963 r!4761) (regOne!2962 r!4761))))))

(declare-fun b!528580 () Bool)

(declare-fun e!317948 () Bool)

(declare-fun e!317951 () Bool)

(assert (=> b!528580 (= e!317948 e!317951)))

(declare-fun c!101199 () Bool)

(assert (=> b!528580 (= c!101199 ((_ is Star!1225) r!4761))))

(declare-fun b!528581 () Bool)

(declare-fun res!223304 () Bool)

(declare-fun e!317952 () Bool)

(assert (=> b!528581 (=> res!223304 e!317952)))

(assert (=> b!528581 (= res!223304 (not ((_ is Concat!2143) r!4761)))))

(declare-fun e!317950 () Bool)

(assert (=> b!528581 (= e!317950 e!317952)))

(declare-fun d!187947 () Bool)

(declare-fun res!223302 () Bool)

(assert (=> d!187947 (=> res!223302 e!317948)))

(assert (=> d!187947 (= res!223302 ((_ is ElementMatch!1225) r!4761))))

(assert (=> d!187947 (= (validRegex!421 r!4761) e!317948)))

(declare-fun bm!38118 () Bool)

(declare-fun call!38122 () Bool)

(declare-fun call!38124 () Bool)

(assert (=> bm!38118 (= call!38122 call!38124)))

(declare-fun b!528582 () Bool)

(declare-fun res!223306 () Bool)

(declare-fun e!317947 () Bool)

(assert (=> b!528582 (=> (not res!223306) (not e!317947))))

(assert (=> b!528582 (= res!223306 call!38123)))

(assert (=> b!528582 (= e!317950 e!317947)))

(declare-fun b!528583 () Bool)

(declare-fun e!317946 () Bool)

(assert (=> b!528583 (= e!317952 e!317946)))

(declare-fun res!223303 () Bool)

(assert (=> b!528583 (=> (not res!223303) (not e!317946))))

(assert (=> b!528583 (= res!223303 call!38123)))

(declare-fun bm!38119 () Bool)

(assert (=> bm!38119 (= call!38124 (validRegex!421 (ite c!101199 (reg!1554 r!4761) (ite c!101198 (regTwo!2963 r!4761) (regTwo!2962 r!4761)))))))

(declare-fun b!528584 () Bool)

(declare-fun e!317949 () Bool)

(assert (=> b!528584 (= e!317951 e!317949)))

(declare-fun res!223305 () Bool)

(declare-fun nullable!326 (Regex!1225) Bool)

(assert (=> b!528584 (= res!223305 (not (nullable!326 (reg!1554 r!4761))))))

(assert (=> b!528584 (=> (not res!223305) (not e!317949))))

(declare-fun b!528585 () Bool)

(assert (=> b!528585 (= e!317946 call!38122)))

(declare-fun b!528586 () Bool)

(assert (=> b!528586 (= e!317949 call!38124)))

(declare-fun b!528587 () Bool)

(assert (=> b!528587 (= e!317947 call!38122)))

(declare-fun b!528588 () Bool)

(assert (=> b!528588 (= e!317951 e!317950)))

(assert (=> b!528588 (= c!101198 ((_ is Union!1225) r!4761))))

(assert (= (and d!187947 (not res!223302)) b!528580))

(assert (= (and b!528580 c!101199) b!528584))

(assert (= (and b!528580 (not c!101199)) b!528588))

(assert (= (and b!528584 res!223305) b!528586))

(assert (= (and b!528588 c!101198) b!528582))

(assert (= (and b!528588 (not c!101198)) b!528581))

(assert (= (and b!528582 res!223306) b!528587))

(assert (= (and b!528581 (not res!223304)) b!528583))

(assert (= (and b!528583 res!223303) b!528585))

(assert (= (or b!528582 b!528583) bm!38117))

(assert (= (or b!528587 b!528585) bm!38118))

(assert (= (or b!528586 bm!38118) bm!38119))

(declare-fun m!774487 () Bool)

(assert (=> bm!38117 m!774487))

(declare-fun m!774489 () Bool)

(assert (=> bm!38119 m!774489))

(declare-fun m!774491 () Bool)

(assert (=> b!528584 m!774491))

(assert (=> b!528554 d!187947))

(declare-fun d!187949 () Bool)

(declare-fun res!223313 () Bool)

(declare-fun e!317957 () Bool)

(assert (=> d!187949 (=> (not res!223313) (not e!317957))))

(declare-fun valid!582 (MutableMap!572) Bool)

(assert (=> d!187949 (= res!223313 (valid!582 (cache!959 thiss!28792)))))

(assert (=> d!187949 (= (validCacheMapDown!37 (cache!959 thiss!28792)) e!317957)))

(declare-fun b!528595 () Bool)

(declare-fun res!223314 () Bool)

(assert (=> b!528595 (=> (not res!223314) (not e!317957))))

(declare-fun invariantList!107 (List!4992) Bool)

(declare-datatypes ((ListMap!263 0))(
  ( (ListMap!264 (toList!468 List!4992)) )
))
(declare-fun map!1145 (MutableMap!572) ListMap!263)

(assert (=> b!528595 (= res!223314 (invariantList!107 (toList!468 (map!1145 (cache!959 thiss!28792)))))))

(declare-fun b!528596 () Bool)

(declare-fun lambda!15345 () Int)

(declare-fun forall!1500 (List!4992 Int) Bool)

(assert (=> b!528596 (= e!317957 (forall!1500 (toList!468 (map!1145 (cache!959 thiss!28792))) lambda!15345))))

(assert (= (and d!187949 res!223313) b!528595))

(assert (= (and b!528595 res!223314) b!528596))

(declare-fun m!774494 () Bool)

(assert (=> d!187949 m!774494))

(declare-fun m!774496 () Bool)

(assert (=> b!528595 m!774496))

(declare-fun m!774498 () Bool)

(assert (=> b!528595 m!774498))

(assert (=> b!528596 m!774496))

(declare-fun m!774500 () Bool)

(assert (=> b!528596 m!774500))

(assert (=> start!48454 d!187949))

(declare-fun d!187951 () Bool)

(declare-fun res!223317 () Bool)

(declare-fun e!317960 () Bool)

(assert (=> d!187951 (=> (not res!223317) (not e!317960))))

(assert (=> d!187951 (= res!223317 ((_ is HashMap!572) (cache!959 thiss!28792)))))

(assert (=> d!187951 (= (inv!6245 thiss!28792) e!317960)))

(declare-fun b!528599 () Bool)

(assert (=> b!528599 (= e!317960 (validCacheMapDown!37 (cache!959 thiss!28792)))))

(assert (= (and d!187951 res!223317) b!528599))

(assert (=> b!528599 m!774483))

(assert (=> start!48454 d!187951))

(declare-fun b!528608 () Bool)

(declare-fun e!317967 () Bool)

(declare-fun tp!167899 () Bool)

(assert (=> b!528608 (= e!317967 tp!167899)))

(declare-fun tp!167900 () Bool)

(declare-fun setRes!2681 () Bool)

(declare-fun tp!167901 () Bool)

(declare-fun b!528609 () Bool)

(declare-fun e!317968 () Bool)

(declare-fun inv!6246 (Context!326) Bool)

(assert (=> b!528609 (= e!317968 (and tp!167900 (inv!6246 (_2!3334 (_1!3335 (h!10383 (zeroValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))))) e!317967 tp_is_empty!2805 setRes!2681 tp!167901))))

(declare-fun condSetEmpty!2681 () Bool)

(assert (=> b!528609 (= condSetEmpty!2681 (= (_2!3335 (h!10383 (zeroValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) ((as const (Array Context!326 Bool)) false)))))

(declare-fun setIsEmpty!2681 () Bool)

(assert (=> setIsEmpty!2681 setRes!2681))

(declare-fun b!528610 () Bool)

(declare-fun e!317969 () Bool)

(declare-fun tp!167903 () Bool)

(assert (=> b!528610 (= e!317969 tp!167903)))

(assert (=> b!528557 (= tp!167885 e!317968)))

(declare-fun setNonEmpty!2681 () Bool)

(declare-fun tp!167902 () Bool)

(declare-fun setElem!2681 () Context!326)

(assert (=> setNonEmpty!2681 (= setRes!2681 (and tp!167902 (inv!6246 setElem!2681) e!317969))))

(declare-fun setRest!2681 () (InoxSet Context!326))

(assert (=> setNonEmpty!2681 (= (_2!3335 (h!10383 (zeroValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2681 true) setRest!2681))))

(assert (= b!528609 b!528608))

(assert (= (and b!528609 condSetEmpty!2681) setIsEmpty!2681))

(assert (= (and b!528609 (not condSetEmpty!2681)) setNonEmpty!2681))

(assert (= setNonEmpty!2681 b!528610))

(assert (= (and b!528557 ((_ is Cons!4982) (zeroValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) b!528609))

(declare-fun m!774502 () Bool)

(assert (=> b!528609 m!774502))

(declare-fun m!774504 () Bool)

(assert (=> setNonEmpty!2681 m!774504))

(declare-fun b!528611 () Bool)

(declare-fun e!317970 () Bool)

(declare-fun tp!167904 () Bool)

(assert (=> b!528611 (= e!317970 tp!167904)))

(declare-fun tp!167906 () Bool)

(declare-fun e!317971 () Bool)

(declare-fun setRes!2682 () Bool)

(declare-fun b!528612 () Bool)

(declare-fun tp!167905 () Bool)

(assert (=> b!528612 (= e!317971 (and tp!167905 (inv!6246 (_2!3334 (_1!3335 (h!10383 (minValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))))) e!317970 tp_is_empty!2805 setRes!2682 tp!167906))))

(declare-fun condSetEmpty!2682 () Bool)

(assert (=> b!528612 (= condSetEmpty!2682 (= (_2!3335 (h!10383 (minValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) ((as const (Array Context!326 Bool)) false)))))

(declare-fun setIsEmpty!2682 () Bool)

(assert (=> setIsEmpty!2682 setRes!2682))

(declare-fun b!528613 () Bool)

(declare-fun e!317972 () Bool)

(declare-fun tp!167908 () Bool)

(assert (=> b!528613 (= e!317972 tp!167908)))

(assert (=> b!528557 (= tp!167887 e!317971)))

(declare-fun setNonEmpty!2682 () Bool)

(declare-fun setElem!2682 () Context!326)

(declare-fun tp!167907 () Bool)

(assert (=> setNonEmpty!2682 (= setRes!2682 (and tp!167907 (inv!6246 setElem!2682) e!317972))))

(declare-fun setRest!2682 () (InoxSet Context!326))

(assert (=> setNonEmpty!2682 (= (_2!3335 (h!10383 (minValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2682 true) setRest!2682))))

(assert (= b!528612 b!528611))

(assert (= (and b!528612 condSetEmpty!2682) setIsEmpty!2682))

(assert (= (and b!528612 (not condSetEmpty!2682)) setNonEmpty!2682))

(assert (= setNonEmpty!2682 b!528613))

(assert (= (and b!528557 ((_ is Cons!4982) (minValue!857 (v!16048 (underlying!1379 (v!16049 (underlying!1380 (cache!959 thiss!28792)))))))) b!528612))

(declare-fun m!774506 () Bool)

(assert (=> b!528612 m!774506))

(declare-fun m!774508 () Bool)

(assert (=> setNonEmpty!2682 m!774508))

(declare-fun mapIsEmpty!2372 () Bool)

(declare-fun mapRes!2372 () Bool)

(assert (=> mapIsEmpty!2372 mapRes!2372))

(declare-fun b!528628 () Bool)

(declare-fun e!317987 () Bool)

(declare-fun tp!167932 () Bool)

(assert (=> b!528628 (= e!317987 tp!167932)))

(declare-fun setIsEmpty!2687 () Bool)

(declare-fun setRes!2688 () Bool)

(assert (=> setIsEmpty!2687 setRes!2688))

(declare-fun setIsEmpty!2688 () Bool)

(declare-fun setRes!2687 () Bool)

(assert (=> setIsEmpty!2688 setRes!2687))

(declare-fun b!528629 () Bool)

(declare-fun e!317990 () Bool)

(declare-fun tp!167938 () Bool)

(assert (=> b!528629 (= e!317990 tp!167938)))

(declare-fun mapDefault!2372 () List!4992)

(declare-fun tp!167931 () Bool)

(declare-fun e!317989 () Bool)

(declare-fun tp!167933 () Bool)

(declare-fun b!528630 () Bool)

(declare-fun e!317988 () Bool)

(assert (=> b!528630 (= e!317988 (and tp!167931 (inv!6246 (_2!3334 (_1!3335 (h!10383 mapDefault!2372)))) e!317989 tp_is_empty!2805 setRes!2687 tp!167933))))

(declare-fun condSetEmpty!2688 () Bool)

(assert (=> b!528630 (= condSetEmpty!2688 (= (_2!3335 (h!10383 mapDefault!2372)) ((as const (Array Context!326 Bool)) false)))))

(declare-fun condMapEmpty!2372 () Bool)

(assert (=> mapNonEmpty!2369 (= condMapEmpty!2372 (= mapRest!2369 ((as const (Array (_ BitVec 32) List!4992)) mapDefault!2372)))))

(assert (=> mapNonEmpty!2369 (= tp!167879 (and e!317988 mapRes!2372))))

(declare-fun setElem!2687 () Context!326)

(declare-fun e!317986 () Bool)

(declare-fun tp!167939 () Bool)

(declare-fun setNonEmpty!2687 () Bool)

(assert (=> setNonEmpty!2687 (= setRes!2688 (and tp!167939 (inv!6246 setElem!2687) e!317986))))

(declare-fun mapValue!2372 () List!4992)

(declare-fun setRest!2688 () (InoxSet Context!326))

(assert (=> setNonEmpty!2687 (= (_2!3335 (h!10383 mapValue!2372)) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2687 true) setRest!2688))))

(declare-fun b!528631 () Bool)

(declare-fun tp!167941 () Bool)

(assert (=> b!528631 (= e!317989 tp!167941)))

(declare-fun b!528632 () Bool)

(declare-fun tp!167934 () Bool)

(assert (=> b!528632 (= e!317986 tp!167934)))

(declare-fun e!317985 () Bool)

(declare-fun tp!167935 () Bool)

(declare-fun tp!167936 () Bool)

(declare-fun b!528633 () Bool)

(assert (=> b!528633 (= e!317985 (and tp!167936 (inv!6246 (_2!3334 (_1!3335 (h!10383 mapValue!2372)))) e!317987 tp_is_empty!2805 setRes!2688 tp!167935))))

(declare-fun condSetEmpty!2687 () Bool)

(assert (=> b!528633 (= condSetEmpty!2687 (= (_2!3335 (h!10383 mapValue!2372)) ((as const (Array Context!326 Bool)) false)))))

(declare-fun mapNonEmpty!2372 () Bool)

(declare-fun tp!167937 () Bool)

(assert (=> mapNonEmpty!2372 (= mapRes!2372 (and tp!167937 e!317985))))

(declare-fun mapKey!2372 () (_ BitVec 32))

(declare-fun mapRest!2372 () (Array (_ BitVec 32) List!4992))

(assert (=> mapNonEmpty!2372 (= mapRest!2369 (store mapRest!2372 mapKey!2372 mapValue!2372))))

(declare-fun tp!167940 () Bool)

(declare-fun setElem!2688 () Context!326)

(declare-fun setNonEmpty!2688 () Bool)

(assert (=> setNonEmpty!2688 (= setRes!2687 (and tp!167940 (inv!6246 setElem!2688) e!317990))))

(declare-fun setRest!2687 () (InoxSet Context!326))

(assert (=> setNonEmpty!2688 (= (_2!3335 (h!10383 mapDefault!2372)) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2688 true) setRest!2687))))

(assert (= (and mapNonEmpty!2369 condMapEmpty!2372) mapIsEmpty!2372))

(assert (= (and mapNonEmpty!2369 (not condMapEmpty!2372)) mapNonEmpty!2372))

(assert (= b!528633 b!528628))

(assert (= (and b!528633 condSetEmpty!2687) setIsEmpty!2687))

(assert (= (and b!528633 (not condSetEmpty!2687)) setNonEmpty!2687))

(assert (= setNonEmpty!2687 b!528632))

(assert (= (and mapNonEmpty!2372 ((_ is Cons!4982) mapValue!2372)) b!528633))

(assert (= b!528630 b!528631))

(assert (= (and b!528630 condSetEmpty!2688) setIsEmpty!2688))

(assert (= (and b!528630 (not condSetEmpty!2688)) setNonEmpty!2688))

(assert (= setNonEmpty!2688 b!528629))

(assert (= (and mapNonEmpty!2369 ((_ is Cons!4982) mapDefault!2372)) b!528630))

(declare-fun m!774510 () Bool)

(assert (=> setNonEmpty!2688 m!774510))

(declare-fun m!774512 () Bool)

(assert (=> setNonEmpty!2687 m!774512))

(declare-fun m!774514 () Bool)

(assert (=> b!528630 m!774514))

(declare-fun m!774516 () Bool)

(assert (=> mapNonEmpty!2372 m!774516))

(declare-fun m!774518 () Bool)

(assert (=> b!528633 m!774518))

(declare-fun b!528634 () Bool)

(declare-fun e!317991 () Bool)

(declare-fun tp!167942 () Bool)

(assert (=> b!528634 (= e!317991 tp!167942)))

(declare-fun setRes!2689 () Bool)

(declare-fun e!317992 () Bool)

(declare-fun b!528635 () Bool)

(declare-fun tp!167944 () Bool)

(declare-fun tp!167943 () Bool)

(assert (=> b!528635 (= e!317992 (and tp!167943 (inv!6246 (_2!3334 (_1!3335 (h!10383 mapValue!2369)))) e!317991 tp_is_empty!2805 setRes!2689 tp!167944))))

(declare-fun condSetEmpty!2689 () Bool)

(assert (=> b!528635 (= condSetEmpty!2689 (= (_2!3335 (h!10383 mapValue!2369)) ((as const (Array Context!326 Bool)) false)))))

(declare-fun setIsEmpty!2689 () Bool)

(assert (=> setIsEmpty!2689 setRes!2689))

(declare-fun b!528636 () Bool)

(declare-fun e!317993 () Bool)

(declare-fun tp!167946 () Bool)

(assert (=> b!528636 (= e!317993 tp!167946)))

(assert (=> mapNonEmpty!2369 (= tp!167883 e!317992)))

(declare-fun setElem!2689 () Context!326)

(declare-fun tp!167945 () Bool)

(declare-fun setNonEmpty!2689 () Bool)

(assert (=> setNonEmpty!2689 (= setRes!2689 (and tp!167945 (inv!6246 setElem!2689) e!317993))))

(declare-fun setRest!2689 () (InoxSet Context!326))

(assert (=> setNonEmpty!2689 (= (_2!3335 (h!10383 mapValue!2369)) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2689 true) setRest!2689))))

(assert (= b!528635 b!528634))

(assert (= (and b!528635 condSetEmpty!2689) setIsEmpty!2689))

(assert (= (and b!528635 (not condSetEmpty!2689)) setNonEmpty!2689))

(assert (= setNonEmpty!2689 b!528636))

(assert (= (and mapNonEmpty!2369 ((_ is Cons!4982) mapValue!2369)) b!528635))

(declare-fun m!774520 () Bool)

(assert (=> b!528635 m!774520))

(declare-fun m!774522 () Bool)

(assert (=> setNonEmpty!2689 m!774522))

(declare-fun e!317996 () Bool)

(assert (=> b!528555 (= tp!167886 e!317996)))

(declare-fun b!528650 () Bool)

(declare-fun tp!167961 () Bool)

(declare-fun tp!167959 () Bool)

(assert (=> b!528650 (= e!317996 (and tp!167961 tp!167959))))

(declare-fun b!528648 () Bool)

(declare-fun tp!167960 () Bool)

(declare-fun tp!167958 () Bool)

(assert (=> b!528648 (= e!317996 (and tp!167960 tp!167958))))

(declare-fun b!528649 () Bool)

(declare-fun tp!167957 () Bool)

(assert (=> b!528649 (= e!317996 tp!167957)))

(declare-fun b!528647 () Bool)

(assert (=> b!528647 (= e!317996 tp_is_empty!2805)))

(assert (= (and b!528555 ((_ is ElementMatch!1225) (regOne!2963 r!4761))) b!528647))

(assert (= (and b!528555 ((_ is Concat!2143) (regOne!2963 r!4761))) b!528648))

(assert (= (and b!528555 ((_ is Star!1225) (regOne!2963 r!4761))) b!528649))

(assert (= (and b!528555 ((_ is Union!1225) (regOne!2963 r!4761))) b!528650))

(declare-fun e!317997 () Bool)

(assert (=> b!528555 (= tp!167878 e!317997)))

(declare-fun b!528654 () Bool)

(declare-fun tp!167966 () Bool)

(declare-fun tp!167964 () Bool)

(assert (=> b!528654 (= e!317997 (and tp!167966 tp!167964))))

(declare-fun b!528652 () Bool)

(declare-fun tp!167965 () Bool)

(declare-fun tp!167963 () Bool)

(assert (=> b!528652 (= e!317997 (and tp!167965 tp!167963))))

(declare-fun b!528653 () Bool)

(declare-fun tp!167962 () Bool)

(assert (=> b!528653 (= e!317997 tp!167962)))

(declare-fun b!528651 () Bool)

(assert (=> b!528651 (= e!317997 tp_is_empty!2805)))

(assert (= (and b!528555 ((_ is ElementMatch!1225) (regTwo!2963 r!4761))) b!528651))

(assert (= (and b!528555 ((_ is Concat!2143) (regTwo!2963 r!4761))) b!528652))

(assert (= (and b!528555 ((_ is Star!1225) (regTwo!2963 r!4761))) b!528653))

(assert (= (and b!528555 ((_ is Union!1225) (regTwo!2963 r!4761))) b!528654))

(declare-fun b!528655 () Bool)

(declare-fun e!317998 () Bool)

(declare-fun tp!167967 () Bool)

(assert (=> b!528655 (= e!317998 tp!167967)))

(declare-fun e!317999 () Bool)

(declare-fun tp!167968 () Bool)

(declare-fun setRes!2690 () Bool)

(declare-fun tp!167969 () Bool)

(declare-fun b!528656 () Bool)

(assert (=> b!528656 (= e!317999 (and tp!167968 (inv!6246 (_2!3334 (_1!3335 (h!10383 mapDefault!2369)))) e!317998 tp_is_empty!2805 setRes!2690 tp!167969))))

(declare-fun condSetEmpty!2690 () Bool)

(assert (=> b!528656 (= condSetEmpty!2690 (= (_2!3335 (h!10383 mapDefault!2369)) ((as const (Array Context!326 Bool)) false)))))

(declare-fun setIsEmpty!2690 () Bool)

(assert (=> setIsEmpty!2690 setRes!2690))

(declare-fun b!528657 () Bool)

(declare-fun e!318000 () Bool)

(declare-fun tp!167971 () Bool)

(assert (=> b!528657 (= e!318000 tp!167971)))

(assert (=> b!528552 (= tp!167881 e!317999)))

(declare-fun tp!167970 () Bool)

(declare-fun setNonEmpty!2690 () Bool)

(declare-fun setElem!2690 () Context!326)

(assert (=> setNonEmpty!2690 (= setRes!2690 (and tp!167970 (inv!6246 setElem!2690) e!318000))))

(declare-fun setRest!2690 () (InoxSet Context!326))

(assert (=> setNonEmpty!2690 (= (_2!3335 (h!10383 mapDefault!2369)) ((_ map or) (store ((as const (Array Context!326 Bool)) false) setElem!2690 true) setRest!2690))))

(assert (= b!528656 b!528655))

(assert (= (and b!528656 condSetEmpty!2690) setIsEmpty!2690))

(assert (= (and b!528656 (not condSetEmpty!2690)) setNonEmpty!2690))

(assert (= setNonEmpty!2690 b!528657))

(assert (= (and b!528552 ((_ is Cons!4982) mapDefault!2369)) b!528656))

(declare-fun m!774524 () Bool)

(assert (=> b!528656 m!774524))

(declare-fun m!774526 () Bool)

(assert (=> setNonEmpty!2690 m!774526))

(declare-fun e!318001 () Bool)

(assert (=> b!528561 (= tp!167877 e!318001)))

(declare-fun b!528661 () Bool)

(declare-fun tp!167976 () Bool)

(declare-fun tp!167974 () Bool)

(assert (=> b!528661 (= e!318001 (and tp!167976 tp!167974))))

(declare-fun b!528659 () Bool)

(declare-fun tp!167975 () Bool)

(declare-fun tp!167973 () Bool)

(assert (=> b!528659 (= e!318001 (and tp!167975 tp!167973))))

(declare-fun b!528660 () Bool)

(declare-fun tp!167972 () Bool)

(assert (=> b!528660 (= e!318001 tp!167972)))

(declare-fun b!528658 () Bool)

(assert (=> b!528658 (= e!318001 tp_is_empty!2805)))

(assert (= (and b!528561 ((_ is ElementMatch!1225) (reg!1554 r!4761))) b!528658))

(assert (= (and b!528561 ((_ is Concat!2143) (reg!1554 r!4761))) b!528659))

(assert (= (and b!528561 ((_ is Star!1225) (reg!1554 r!4761))) b!528660))

(assert (= (and b!528561 ((_ is Union!1225) (reg!1554 r!4761))) b!528661))

(declare-fun e!318002 () Bool)

(assert (=> b!528559 (= tp!167888 e!318002)))

(declare-fun b!528665 () Bool)

(declare-fun tp!167981 () Bool)

(declare-fun tp!167979 () Bool)

(assert (=> b!528665 (= e!318002 (and tp!167981 tp!167979))))

(declare-fun b!528663 () Bool)

(declare-fun tp!167980 () Bool)

(declare-fun tp!167978 () Bool)

(assert (=> b!528663 (= e!318002 (and tp!167980 tp!167978))))

(declare-fun b!528664 () Bool)

(declare-fun tp!167977 () Bool)

(assert (=> b!528664 (= e!318002 tp!167977)))

(declare-fun b!528662 () Bool)

(assert (=> b!528662 (= e!318002 tp_is_empty!2805)))

(assert (= (and b!528559 ((_ is ElementMatch!1225) (regOne!2962 r!4761))) b!528662))

(assert (= (and b!528559 ((_ is Concat!2143) (regOne!2962 r!4761))) b!528663))

(assert (= (and b!528559 ((_ is Star!1225) (regOne!2962 r!4761))) b!528664))

(assert (= (and b!528559 ((_ is Union!1225) (regOne!2962 r!4761))) b!528665))

(declare-fun e!318003 () Bool)

(assert (=> b!528559 (= tp!167880 e!318003)))

(declare-fun b!528669 () Bool)

(declare-fun tp!167986 () Bool)

(declare-fun tp!167984 () Bool)

(assert (=> b!528669 (= e!318003 (and tp!167986 tp!167984))))

(declare-fun b!528667 () Bool)

(declare-fun tp!167985 () Bool)

(declare-fun tp!167983 () Bool)

(assert (=> b!528667 (= e!318003 (and tp!167985 tp!167983))))

(declare-fun b!528668 () Bool)

(declare-fun tp!167982 () Bool)

(assert (=> b!528668 (= e!318003 tp!167982)))

(declare-fun b!528666 () Bool)

(assert (=> b!528666 (= e!318003 tp_is_empty!2805)))

(assert (= (and b!528559 ((_ is ElementMatch!1225) (regTwo!2962 r!4761))) b!528666))

(assert (= (and b!528559 ((_ is Concat!2143) (regTwo!2962 r!4761))) b!528667))

(assert (= (and b!528559 ((_ is Star!1225) (regTwo!2962 r!4761))) b!528668))

(assert (= (and b!528559 ((_ is Union!1225) (regTwo!2962 r!4761))) b!528669))

(check-sat (not setNonEmpty!2687) (not b!528657) (not b_next!14085) (not b!528595) (not setNonEmpty!2682) (not b!528630) (not b!528613) (not setNonEmpty!2688) (not b!528631) (not b!528661) (not b!528664) (not b!528655) (not b!528652) (not d!187949) (not b!528599) (not b!528634) (not b_next!14087) (not mapNonEmpty!2372) (not b!528649) (not b!528610) (not b!528660) (not b!528636) (not b!528659) (not b!528633) (not b!528665) (not setNonEmpty!2681) (not b!528648) (not bm!38117) b_and!51569 (not b!528632) (not setNonEmpty!2690) (not b!528667) (not b!528635) (not b!528584) (not b!528609) b_and!51567 (not b!528612) (not b!528628) (not b!528656) (not b!528669) (not b!528653) (not b!528650) (not b!528663) (not b!528608) (not setNonEmpty!2689) (not b!528596) (not b!528668) tp_is_empty!2805 (not bm!38119) (not b!528611) (not b!528654) (not b!528629))
(check-sat b_and!51569 b_and!51567 (not b_next!14085) (not b_next!14087))
