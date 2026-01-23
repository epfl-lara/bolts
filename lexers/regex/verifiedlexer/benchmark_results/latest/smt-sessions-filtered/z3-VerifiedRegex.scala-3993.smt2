; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217176 () Bool)

(assert start!217176)

(declare-fun b!2225422 () Bool)

(declare-fun b_free!64521 () Bool)

(declare-fun b_next!65225 () Bool)

(assert (=> b!2225422 (= b_free!64521 (not b_next!65225))))

(declare-fun tp!695126 () Bool)

(declare-fun b_and!174509 () Bool)

(assert (=> b!2225422 (= tp!695126 b_and!174509)))

(declare-fun b!2225430 () Bool)

(declare-fun b_free!64523 () Bool)

(declare-fun b_next!65227 () Bool)

(assert (=> b!2225430 (= b_free!64523 (not b_next!65227))))

(declare-fun tp!695120 () Bool)

(declare-fun b_and!174511 () Bool)

(assert (=> b!2225430 (= tp!695120 b_and!174511)))

(declare-fun b!2225421 () Bool)

(declare-fun res!954403 () Bool)

(declare-fun e!1422129 () Bool)

(assert (=> b!2225421 (=> (not res!954403) (not e!1422129))))

(declare-datatypes ((C!12900 0))(
  ( (C!12901 (val!7498 Int)) )
))
(declare-datatypes ((Regex!6377 0))(
  ( (ElementMatch!6377 (c!355224 C!12900)) (Concat!10715 (regOne!13266 Regex!6377) (regTwo!13266 Regex!6377)) (EmptyExpr!6377) (Star!6377 (reg!6706 Regex!6377)) (EmptyLang!6377) (Union!6377 (regOne!13267 Regex!6377) (regTwo!13267 Regex!6377)) )
))
(declare-datatypes ((List!26224 0))(
  ( (Nil!26130) (Cons!26130 (h!31531 Regex!6377) (t!199636 List!26224)) )
))
(declare-datatypes ((Context!3850 0))(
  ( (Context!3851 (exprs!2425 List!26224)) )
))
(declare-fun ctx!44 () Context!3850)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun res!14206 () (InoxSet Context!3850))

(declare-fun a!962 () C!12900)

(declare-fun derivationStepZipperUp!38 (Context!3850 C!12900) (InoxSet Context!3850))

(assert (=> b!2225421 (= res!954403 (= res!14206 (derivationStepZipperUp!38 ctx!44 a!962)))))

(declare-fun e!1422130 () Bool)

(declare-fun tp!695122 () Bool)

(declare-datatypes ((tuple2!25430 0))(
  ( (tuple2!25431 (_1!15099 Context!3850) (_2!15099 C!12900)) )
))
(declare-datatypes ((tuple2!25432 0))(
  ( (tuple2!25433 (_1!15100 tuple2!25430) (_2!15100 (InoxSet Context!3850))) )
))
(declare-datatypes ((List!26225 0))(
  ( (Nil!26131) (Cons!26131 (h!31532 tuple2!25432) (t!199637 List!26225)) )
))
(declare-datatypes ((array!10378 0))(
  ( (array!10379 (arr!4617 (Array (_ BitVec 32) (_ BitVec 64))) (size!20398 (_ BitVec 32))) )
))
(declare-datatypes ((array!10380 0))(
  ( (array!10381 (arr!4618 (Array (_ BitVec 32) List!26225)) (size!20399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6030 0))(
  ( (LongMapFixedSize!6031 (defaultEntry!3380 Int) (mask!7557 (_ BitVec 32)) (extraKeys!3263 (_ BitVec 32)) (zeroValue!3273 List!26225) (minValue!3273 List!26225) (_size!6077 (_ BitVec 32)) (_keys!3312 array!10378) (_values!3295 array!10380) (_vacant!3076 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11877 0))(
  ( (Cell!11878 (v!29694 LongMapFixedSize!6030)) )
))
(declare-datatypes ((MutLongMap!3015 0))(
  ( (LongMap!3015 (underlying!6231 Cell!11877)) (MutLongMapExt!3014 (__x!17271 Int)) )
))
(declare-datatypes ((Cell!11879 0))(
  ( (Cell!11880 (v!29695 MutLongMap!3015)) )
))
(declare-datatypes ((Hashable!2925 0))(
  ( (HashableExt!2924 (__x!17272 Int)) )
))
(declare-datatypes ((MutableMap!2925 0))(
  ( (MutableMapExt!2924 (__x!17273 Int)) (HashMap!2925 (underlying!6232 Cell!11879) (hashF!4848 Hashable!2925) (_size!6078 (_ BitVec 32)) (defaultValue!3087 Int)) )
))
(declare-datatypes ((CacheUp!1972 0))(
  ( (CacheUp!1973 (cache!3306 MutableMap!2925)) )
))
(declare-fun thiss!28682 () CacheUp!1972)

(declare-fun e!1422127 () Bool)

(declare-fun tp!695124 () Bool)

(declare-fun array_inv!3317 (array!10378) Bool)

(declare-fun array_inv!3318 (array!10380) Bool)

(assert (=> b!2225422 (= e!1422127 (and tp!695126 tp!695124 tp!695122 (array_inv!3317 (_keys!3312 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) (array_inv!3318 (_values!3295 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) e!1422130))))

(declare-fun b!2225423 () Bool)

(declare-fun e!1422126 () Bool)

(declare-fun tp!695123 () Bool)

(assert (=> b!2225423 (= e!1422126 tp!695123)))

(declare-fun b!2225424 () Bool)

(declare-fun tp!695125 () Bool)

(declare-fun mapRes!14217 () Bool)

(assert (=> b!2225424 (= e!1422130 (and tp!695125 mapRes!14217))))

(declare-fun condMapEmpty!14217 () Bool)

(declare-fun mapDefault!14217 () List!26225)

(assert (=> b!2225424 (= condMapEmpty!14217 (= (arr!4618 (_values!3295 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26225)) mapDefault!14217)))))

(declare-fun mapIsEmpty!14217 () Bool)

(assert (=> mapIsEmpty!14217 mapRes!14217))

(declare-fun b!2225425 () Bool)

(declare-fun e!1422133 () Bool)

(declare-fun e!1422128 () Bool)

(declare-fun lt!829844 () MutLongMap!3015)

(get-info :version)

(assert (=> b!2225425 (= e!1422133 (and e!1422128 ((_ is LongMap!3015) lt!829844)))))

(assert (=> b!2225425 (= lt!829844 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))

(declare-fun setElem!19832 () Context!3850)

(declare-fun e!1422131 () Bool)

(declare-fun setRes!19832 () Bool)

(declare-fun tp!695128 () Bool)

(declare-fun setNonEmpty!19832 () Bool)

(declare-fun inv!35477 (Context!3850) Bool)

(assert (=> setNonEmpty!19832 (= setRes!19832 (and tp!695128 (inv!35477 setElem!19832) e!1422131))))

(declare-fun setRest!19832 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19832 (= res!14206 ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19832 true) setRest!19832))))

(declare-fun b!2225426 () Bool)

(declare-fun e!1422132 () Bool)

(declare-fun e!1422134 () Bool)

(assert (=> b!2225426 (= e!1422132 e!1422134)))

(declare-fun b!2225427 () Bool)

(declare-fun tp!695127 () Bool)

(assert (=> b!2225427 (= e!1422131 tp!695127)))

(declare-fun b!2225428 () Bool)

(declare-fun e!1422124 () Bool)

(assert (=> b!2225428 (= e!1422128 e!1422124)))

(declare-fun mapNonEmpty!14217 () Bool)

(declare-fun tp!695121 () Bool)

(declare-fun tp!695119 () Bool)

(assert (=> mapNonEmpty!14217 (= mapRes!14217 (and tp!695121 tp!695119))))

(declare-fun mapRest!14217 () (Array (_ BitVec 32) List!26225))

(declare-fun mapValue!14217 () List!26225)

(declare-fun mapKey!14217 () (_ BitVec 32))

(assert (=> mapNonEmpty!14217 (= (arr!4618 (_values!3295 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) (store mapRest!14217 mapKey!14217 mapValue!14217))))

(declare-fun res!954404 () Bool)

(assert (=> start!217176 (=> (not res!954404) (not e!1422129))))

(declare-fun validCacheMapUp!288 (MutableMap!2925) Bool)

(assert (=> start!217176 (= res!954404 (validCacheMapUp!288 (cache!3306 thiss!28682)))))

(assert (=> start!217176 e!1422129))

(declare-fun inv!35478 (CacheUp!1972) Bool)

(assert (=> start!217176 (and (inv!35478 thiss!28682) e!1422132)))

(declare-fun condSetEmpty!19832 () Bool)

(assert (=> start!217176 (= condSetEmpty!19832 (= res!14206 ((as const (Array Context!3850 Bool)) false)))))

(assert (=> start!217176 setRes!19832))

(assert (=> start!217176 (and (inv!35477 ctx!44) e!1422126)))

(declare-fun tp_is_empty!9979 () Bool)

(assert (=> start!217176 tp_is_empty!9979))

(declare-fun setIsEmpty!19832 () Bool)

(assert (=> setIsEmpty!19832 setRes!19832))

(declare-fun b!2225429 () Bool)

(assert (=> b!2225429 (= e!1422124 e!1422127)))

(assert (=> b!2225430 (= e!1422134 (and e!1422133 tp!695120))))

(declare-fun b!2225431 () Bool)

(declare-datatypes ((tuple2!25434 0))(
  ( (tuple2!25435 (_1!15101 Bool) (_2!15101 MutableMap!2925)) )
))
(declare-fun lt!829843 () tuple2!25434)

(assert (=> b!2225431 (= e!1422129 (not (validCacheMapUp!288 (_2!15101 lt!829843))))))

(declare-fun lambda!84172 () Int)

(declare-fun forall!5340 (List!26225 Int) Bool)

(declare-datatypes ((ListMap!789 0))(
  ( (ListMap!790 (toList!1321 List!26225)) )
))
(declare-fun map!5331 (MutableMap!2925) ListMap!789)

(assert (=> b!2225431 (forall!5340 (toList!1321 (map!5331 (_2!15101 lt!829843))) lambda!84172)))

(declare-fun lt!829842 () tuple2!25430)

(declare-fun update!129 (MutableMap!2925 tuple2!25430 (InoxSet Context!3850)) tuple2!25434)

(assert (=> b!2225431 (= lt!829843 (update!129 (cache!3306 thiss!28682) lt!829842 res!14206))))

(declare-datatypes ((Unit!39120 0))(
  ( (Unit!39121) )
))
(declare-fun lt!829841 () Unit!39120)

(declare-fun lemmaUpdatePreservesForallPairs!18 (MutableMap!2925 tuple2!25430 (InoxSet Context!3850) Int) Unit!39120)

(assert (=> b!2225431 (= lt!829841 (lemmaUpdatePreservesForallPairs!18 (cache!3306 thiss!28682) lt!829842 res!14206 lambda!84172))))

(assert (=> b!2225431 (= lt!829842 (tuple2!25431 ctx!44 a!962))))

(assert (= (and start!217176 res!954404) b!2225421))

(assert (= (and b!2225421 res!954403) b!2225431))

(assert (= (and b!2225424 condMapEmpty!14217) mapIsEmpty!14217))

(assert (= (and b!2225424 (not condMapEmpty!14217)) mapNonEmpty!14217))

(assert (= b!2225422 b!2225424))

(assert (= b!2225429 b!2225422))

(assert (= b!2225428 b!2225429))

(assert (= (and b!2225425 ((_ is LongMap!3015) (v!29695 (underlying!6232 (cache!3306 thiss!28682))))) b!2225428))

(assert (= b!2225430 b!2225425))

(assert (= (and b!2225426 ((_ is HashMap!2925) (cache!3306 thiss!28682))) b!2225430))

(assert (= start!217176 b!2225426))

(assert (= (and start!217176 condSetEmpty!19832) setIsEmpty!19832))

(assert (= (and start!217176 (not condSetEmpty!19832)) setNonEmpty!19832))

(assert (= setNonEmpty!19832 b!2225427))

(assert (= start!217176 b!2225423))

(declare-fun m!2665114 () Bool)

(assert (=> b!2225421 m!2665114))

(declare-fun m!2665116 () Bool)

(assert (=> b!2225422 m!2665116))

(declare-fun m!2665118 () Bool)

(assert (=> b!2225422 m!2665118))

(declare-fun m!2665120 () Bool)

(assert (=> start!217176 m!2665120))

(declare-fun m!2665122 () Bool)

(assert (=> start!217176 m!2665122))

(declare-fun m!2665124 () Bool)

(assert (=> start!217176 m!2665124))

(declare-fun m!2665126 () Bool)

(assert (=> setNonEmpty!19832 m!2665126))

(declare-fun m!2665128 () Bool)

(assert (=> b!2225431 m!2665128))

(declare-fun m!2665130 () Bool)

(assert (=> b!2225431 m!2665130))

(declare-fun m!2665132 () Bool)

(assert (=> b!2225431 m!2665132))

(declare-fun m!2665134 () Bool)

(assert (=> b!2225431 m!2665134))

(declare-fun m!2665136 () Bool)

(assert (=> b!2225431 m!2665136))

(declare-fun m!2665138 () Bool)

(assert (=> mapNonEmpty!14217 m!2665138))

(check-sat tp_is_empty!9979 (not b!2225423) b_and!174511 (not b!2225422) (not mapNonEmpty!14217) (not start!217176) (not b!2225424) (not b!2225427) (not b_next!65227) (not b!2225421) b_and!174509 (not b!2225431) (not setNonEmpty!19832) (not b_next!65225))
(check-sat b_and!174511 b_and!174509 (not b_next!65227) (not b_next!65225))
(get-model)

(declare-fun d!664516 () Bool)

(declare-fun res!954409 () Bool)

(declare-fun e!1422139 () Bool)

(assert (=> d!664516 (=> res!954409 e!1422139)))

(assert (=> d!664516 (= res!954409 ((_ is Nil!26131) (toList!1321 (map!5331 (_2!15101 lt!829843)))))))

(assert (=> d!664516 (= (forall!5340 (toList!1321 (map!5331 (_2!15101 lt!829843))) lambda!84172) e!1422139)))

(declare-fun b!2225436 () Bool)

(declare-fun e!1422140 () Bool)

(assert (=> b!2225436 (= e!1422139 e!1422140)))

(declare-fun res!954410 () Bool)

(assert (=> b!2225436 (=> (not res!954410) (not e!1422140))))

(declare-fun dynLambda!11518 (Int tuple2!25432) Bool)

(assert (=> b!2225436 (= res!954410 (dynLambda!11518 lambda!84172 (h!31532 (toList!1321 (map!5331 (_2!15101 lt!829843))))))))

(declare-fun b!2225437 () Bool)

(assert (=> b!2225437 (= e!1422140 (forall!5340 (t!199637 (toList!1321 (map!5331 (_2!15101 lt!829843)))) lambda!84172))))

(assert (= (and d!664516 (not res!954409)) b!2225436))

(assert (= (and b!2225436 res!954410) b!2225437))

(declare-fun b_lambda!71629 () Bool)

(assert (=> (not b_lambda!71629) (not b!2225436)))

(declare-fun m!2665140 () Bool)

(assert (=> b!2225436 m!2665140))

(declare-fun m!2665142 () Bool)

(assert (=> b!2225437 m!2665142))

(assert (=> b!2225431 d!664516))

(declare-fun bs!453517 () Bool)

(declare-fun b!2225482 () Bool)

(declare-fun b!2225488 () Bool)

(assert (= bs!453517 (and b!2225482 b!2225488)))

(declare-fun lambda!84182 () Int)

(declare-fun lambda!84181 () Int)

(assert (=> bs!453517 (= lambda!84182 lambda!84181)))

(declare-fun bm!133225 () Bool)

(declare-fun lt!829978 () (_ BitVec 64))

(declare-fun call!133254 () Unit!39120)

(declare-fun lt!829961 () List!26225)

(declare-fun lt!829974 () List!26225)

(declare-fun c!355243 () Bool)

(declare-fun lt!830001 () (_ BitVec 64))

(declare-fun lemmaRemovePairForKeyPreservesHash!29 (List!26225 tuple2!25430 (_ BitVec 64) Hashable!2925) Unit!39120)

(assert (=> bm!133225 (= call!133254 (lemmaRemovePairForKeyPreservesHash!29 (ite c!355243 lt!829974 lt!829961) lt!829842 (ite c!355243 lt!829978 lt!830001) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun b!2225476 () Bool)

(declare-fun call!133235 () ListMap!789)

(declare-fun lt!829991 () ListMap!789)

(assert (=> b!2225476 (= call!133235 lt!829991)))

(declare-fun lt!829973 () Unit!39120)

(declare-fun Unit!39122 () Unit!39120)

(assert (=> b!2225476 (= lt!829973 Unit!39122)))

(declare-fun call!133259 () Bool)

(assert (=> b!2225476 call!133259))

(declare-fun e!1422170 () Unit!39120)

(declare-fun Unit!39123 () Unit!39120)

(assert (=> b!2225476 (= e!1422170 Unit!39123)))

(declare-fun call!133240 () List!26225)

(declare-fun bm!133226 () Bool)

(declare-fun apply!6463 (MutLongMap!3015 (_ BitVec 64)) List!26225)

(assert (=> bm!133226 (= call!133240 (apply!6463 (v!29695 (underlying!6232 (cache!3306 thiss!28682))) (ite c!355243 lt!829978 lt!830001)))))

(declare-fun b!2225477 () Bool)

(declare-fun call!133250 () ListMap!789)

(assert (=> b!2225477 (= call!133250 lt!829991)))

(declare-fun lt!829955 () Unit!39120)

(declare-fun Unit!39124 () Unit!39120)

(assert (=> b!2225477 (= lt!829955 Unit!39124)))

(assert (=> b!2225477 call!133259))

(declare-fun e!1422163 () Unit!39120)

(declare-fun Unit!39125 () Unit!39120)

(assert (=> b!2225477 (= e!1422163 Unit!39125)))

(declare-fun bm!133227 () Bool)

(declare-fun call!133236 () Bool)

(declare-fun call!133253 () List!26225)

(declare-fun allKeysSameHash!33 (List!26225 (_ BitVec 64) Hashable!2925) Bool)

(assert (=> bm!133227 (= call!133236 (allKeysSameHash!33 call!133253 (ite c!355243 lt!829978 lt!830001) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun bm!133228 () Bool)

(declare-fun call!133243 () ListMap!789)

(declare-datatypes ((tuple2!25436 0))(
  ( (tuple2!25437 (_1!15102 (_ BitVec 64)) (_2!15102 List!26225)) )
))
(declare-datatypes ((List!26226 0))(
  ( (Nil!26132) (Cons!26132 (h!31533 tuple2!25436) (t!199638 List!26226)) )
))
(declare-datatypes ((ListLongMap!307 0))(
  ( (ListLongMap!308 (toList!1322 List!26226)) )
))
(declare-fun lt!829997 () ListLongMap!307)

(declare-fun extractMap!100 (List!26226) ListMap!789)

(assert (=> bm!133228 (= call!133243 (extractMap!100 (toList!1322 lt!829997)))))

(declare-fun bm!133229 () Bool)

(declare-fun call!133231 () ListMap!789)

(assert (=> bm!133229 (= call!133235 call!133231)))

(declare-fun b!2225478 () Bool)

(declare-fun e!1422169 () Unit!39120)

(declare-fun lt!829986 () Unit!39120)

(assert (=> b!2225478 (= e!1422169 lt!829986)))

(declare-fun lt!829957 () Unit!39120)

(declare-fun call!133256 () Unit!39120)

(assert (=> b!2225478 (= lt!829957 call!133256)))

(declare-fun call!133238 () Bool)

(assert (=> b!2225478 call!133238))

(declare-fun lt!829982 () Unit!39120)

(assert (=> b!2225478 (= lt!829982 lt!829957)))

(assert (=> b!2225478 (= lt!829986 call!133254)))

(assert (=> b!2225478 call!133236))

(declare-fun bm!133230 () Bool)

(declare-fun lt!829975 () ListMap!789)

(declare-fun call!133242 () Bool)

(declare-fun lt!829959 () ListMap!789)

(declare-fun contains!4365 (ListMap!789 tuple2!25430) Bool)

(assert (=> bm!133230 (= call!133242 (contains!4365 (ite c!355243 lt!829959 lt!829975) lt!829842))))

(declare-fun lt!829965 () ListLongMap!307)

(declare-fun call!133248 () Bool)

(declare-fun bm!133231 () Bool)

(declare-fun lt!829958 () ListLongMap!307)

(declare-fun forall!5341 (List!26226 Int) Bool)

(assert (=> bm!133231 (= call!133248 (forall!5341 (ite c!355243 (toList!1322 lt!829965) (toList!1322 lt!829958)) (ite c!355243 lambda!84181 lambda!84182)))))

(declare-fun call!133233 () Unit!39120)

(declare-fun lt!830000 () ListMap!789)

(declare-fun bm!133232 () Bool)

(declare-fun lt!829985 () ListMap!789)

(declare-fun lemmaEquivalentThenSameContains!10 (ListMap!789 ListMap!789 tuple2!25430) Unit!39120)

(assert (=> bm!133232 (= call!133233 (lemmaEquivalentThenSameContains!10 (ite c!355243 lt!829985 lt!830000) (ite c!355243 lt!829959 lt!829975) lt!829842))))

(declare-fun b!2225479 () Bool)

(declare-fun e!1422166 () Bool)

(declare-fun call!133258 () Bool)

(assert (=> b!2225479 (= e!1422166 call!133258)))

(declare-fun bm!133233 () Bool)

(declare-fun allKeysSameHashInMap!100 (ListLongMap!307 Hashable!2925) Bool)

(assert (=> bm!133233 (= call!133258 (allKeysSameHashInMap!100 (ite c!355243 lt!829965 lt!829958) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun bm!133234 () Bool)

(declare-fun call!133237 () Bool)

(declare-fun call!133241 () ListMap!789)

(declare-fun eq!50 (ListMap!789 ListMap!789) Bool)

(assert (=> bm!133234 (= call!133237 (eq!50 (ite c!355243 call!133235 call!133250) call!133241))))

(declare-fun b!2225480 () Bool)

(declare-fun e!1422171 () Bool)

(declare-fun e!1422173 () Bool)

(assert (=> b!2225480 (= e!1422171 e!1422173)))

(declare-fun res!954424 () Bool)

(declare-fun call!133234 () ListMap!789)

(assert (=> b!2225480 (= res!954424 (contains!4365 call!133234 lt!829842))))

(assert (=> b!2225480 (=> (not res!954424) (not e!1422173))))

(declare-fun b!2225481 () Bool)

(declare-fun e!1422167 () List!26225)

(assert (=> b!2225481 (= e!1422167 Nil!26131)))

(declare-fun bm!133235 () Bool)

(declare-fun call!133244 () Bool)

(declare-fun call!133232 () ListMap!789)

(declare-fun call!133255 () ListMap!789)

(assert (=> bm!133235 (= call!133244 (eq!50 call!133232 call!133255))))

(assert (=> b!2225482 (contains!4365 call!133250 lt!829842)))

(declare-fun lt!829987 () Unit!39120)

(declare-fun Unit!39126 () Unit!39120)

(assert (=> b!2225482 (= lt!829987 Unit!39126)))

(assert (=> b!2225482 (contains!4365 call!133241 lt!829842)))

(declare-fun lt!829993 () Unit!39120)

(declare-fun lt!829994 () Unit!39120)

(assert (=> b!2225482 (= lt!829993 lt!829994)))

(declare-fun call!133239 () Bool)

(assert (=> b!2225482 (= call!133239 call!133242)))

(assert (=> b!2225482 (= lt!829994 call!133233)))

(assert (=> b!2225482 (= lt!829975 call!133241)))

(assert (=> b!2225482 (= lt!830000 call!133250)))

(declare-fun lt!830002 () Unit!39120)

(declare-fun Unit!39127 () Unit!39120)

(assert (=> b!2225482 (= lt!830002 Unit!39127)))

(assert (=> b!2225482 call!133237))

(declare-fun lt!829984 () Unit!39120)

(declare-fun Unit!39128 () Unit!39120)

(assert (=> b!2225482 (= lt!829984 Unit!39128)))

(declare-fun call!133260 () Bool)

(assert (=> b!2225482 call!133260))

(declare-fun lt!829979 () Unit!39120)

(declare-fun Unit!39129 () Unit!39120)

(assert (=> b!2225482 (= lt!829979 Unit!39129)))

(declare-fun call!133247 () Bool)

(assert (=> b!2225482 call!133247))

(declare-fun lt!829964 () Unit!39120)

(declare-fun lt!829956 () Unit!39120)

(assert (=> b!2225482 (= lt!829964 lt!829956)))

(assert (=> b!2225482 call!133244))

(declare-fun lt!830004 () List!26225)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!10 (ListLongMap!307 (_ BitVec 64) List!26225 tuple2!25430 (InoxSet Context!3850) Hashable!2925) Unit!39120)

(assert (=> b!2225482 (= lt!829956 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!10 lt!829997 lt!830001 lt!830004 lt!829842 res!14206 (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun lt!830007 () Unit!39120)

(declare-fun lt!829977 () Unit!39120)

(assert (=> b!2225482 (= lt!830007 lt!829977)))

(assert (=> b!2225482 e!1422166))

(declare-fun res!954421 () Bool)

(assert (=> b!2225482 (=> (not res!954421) (not e!1422166))))

(assert (=> b!2225482 (= res!954421 call!133248)))

(declare-fun call!133257 () ListLongMap!307)

(assert (=> b!2225482 (= lt!829958 call!133257)))

(declare-fun call!133245 () Unit!39120)

(assert (=> b!2225482 (= lt!829977 call!133245)))

(declare-fun lt!829967 () Unit!39120)

(assert (=> b!2225482 (= lt!829967 e!1422169)))

(declare-fun c!355244 () Bool)

(declare-fun isEmpty!14881 (List!26225) Bool)

(assert (=> b!2225482 (= c!355244 (not (isEmpty!14881 lt!829961)))))

(declare-fun Unit!39130 () Unit!39120)

(assert (=> b!2225482 (= e!1422163 Unit!39130)))

(declare-fun bm!133236 () Bool)

(declare-fun removePairForKey!29 (List!26225 tuple2!25430) List!26225)

(assert (=> bm!133236 (= call!133253 (removePairForKey!29 (ite c!355243 lt!829974 lt!829961) lt!829842))))

(declare-fun bm!133237 () Bool)

(declare-fun call!133249 () ListMap!789)

(assert (=> bm!133237 (= call!133249 (map!5331 (cache!3306 thiss!28682)))))

(declare-fun b!2225483 () Bool)

(declare-fun res!954422 () Bool)

(declare-fun e!1422165 () Bool)

(assert (=> b!2225483 (=> (not res!954422) (not e!1422165))))

(declare-fun lt!829989 () tuple2!25434)

(declare-fun valid!2316 (MutableMap!2925) Bool)

(assert (=> b!2225483 (= res!954422 (valid!2316 (_2!15101 lt!829989)))))

(declare-fun bm!133238 () Bool)

(declare-fun +!53 (ListMap!789 tuple2!25432) ListMap!789)

(assert (=> bm!133238 (= call!133241 (+!53 lt!829991 (tuple2!25433 lt!829842 res!14206)))))

(declare-fun bm!133239 () Bool)

(assert (=> bm!133239 (= call!133238 (allKeysSameHash!33 (ite c!355243 lt!829974 lt!829961) (ite c!355243 lt!829978 lt!830001) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun lt!830009 () List!26225)

(declare-fun bm!133240 () Bool)

(declare-datatypes ((tuple2!25438 0))(
  ( (tuple2!25439 (_1!15103 Bool) (_2!15103 MutLongMap!3015)) )
))
(declare-fun call!133251 () tuple2!25438)

(declare-fun update!130 (MutLongMap!3015 (_ BitVec 64) List!26225) tuple2!25438)

(assert (=> bm!133240 (= call!133251 (update!130 (v!29695 (underlying!6232 (cache!3306 thiss!28682))) (ite c!355243 lt!829978 lt!830001) (ite c!355243 lt!830009 lt!830004)))))

(declare-fun b!2225484 () Bool)

(assert (=> b!2225484 (= e!1422165 e!1422171)))

(declare-fun c!355242 () Bool)

(assert (=> b!2225484 (= c!355242 (_1!15101 lt!829989))))

(declare-fun b!2225485 () Bool)

(declare-fun e!1422172 () ListMap!789)

(assert (=> b!2225485 (= e!1422172 call!133249)))

(declare-fun bm!133241 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!29 (List!26226 (_ BitVec 64) List!26225 Hashable!2925) Unit!39120)

(assert (=> bm!133241 (= call!133256 (lemmaInLongMapAllKeySameHashThenForTuple!29 (toList!1322 lt!829997) (ite c!355243 lt!829978 lt!830001) (ite c!355243 lt!829974 lt!829961) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun bm!133242 () Bool)

(assert (=> bm!133242 (= call!133239 (contains!4365 (ite c!355243 lt!829985 lt!830000) lt!829842))))

(declare-fun b!2225486 () Bool)

(declare-fun call!133230 () Bool)

(assert (=> b!2225486 (= e!1422173 call!133230)))

(declare-fun b!2225487 () Bool)

(assert (=> b!2225487 (= e!1422167 call!133240)))

(assert (=> b!2225488 call!133237))

(declare-fun lt!829966 () Unit!39120)

(declare-fun Unit!39131 () Unit!39120)

(assert (=> b!2225488 (= lt!829966 Unit!39131)))

(assert (=> b!2225488 call!133260))

(declare-fun lt!830006 () Unit!39120)

(declare-fun Unit!39132 () Unit!39120)

(assert (=> b!2225488 (= lt!830006 Unit!39132)))

(assert (=> b!2225488 call!133247))

(declare-fun lt!829969 () Unit!39120)

(declare-fun lt!829983 () Unit!39120)

(assert (=> b!2225488 (= lt!829969 lt!829983)))

(assert (=> b!2225488 (= call!133239 call!133242)))

(assert (=> b!2225488 (= lt!829983 call!133233)))

(assert (=> b!2225488 (= lt!829959 call!133241)))

(assert (=> b!2225488 (= lt!829985 call!133235)))

(declare-fun lt!829971 () Unit!39120)

(declare-fun lt!829996 () Unit!39120)

(assert (=> b!2225488 (= lt!829971 lt!829996)))

(assert (=> b!2225488 call!133244))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!10 (ListLongMap!307 (_ BitVec 64) List!26225 tuple2!25430 (InoxSet Context!3850) Hashable!2925) Unit!39120)

(assert (=> b!2225488 (= lt!829996 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!10 lt!829997 lt!829978 lt!830009 lt!829842 res!14206 (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun lt!829972 () Unit!39120)

(declare-fun lt!829962 () Unit!39120)

(assert (=> b!2225488 (= lt!829972 lt!829962)))

(declare-fun e!1422168 () Bool)

(assert (=> b!2225488 e!1422168))

(declare-fun res!954425 () Bool)

(assert (=> b!2225488 (=> (not res!954425) (not e!1422168))))

(assert (=> b!2225488 (= res!954425 call!133248)))

(assert (=> b!2225488 (= lt!829965 call!133257)))

(assert (=> b!2225488 (= lt!829962 call!133245)))

(declare-fun lt!830008 () Unit!39120)

(declare-fun Unit!39133 () Unit!39120)

(assert (=> b!2225488 (= lt!830008 Unit!39133)))

(declare-fun noDuplicateKeys!35 (List!26225) Bool)

(assert (=> b!2225488 (noDuplicateKeys!35 lt!830009)))

(declare-fun lt!829968 () Unit!39120)

(declare-fun Unit!39134 () Unit!39120)

(assert (=> b!2225488 (= lt!829968 Unit!39134)))

(declare-fun containsKey!71 (List!26225 tuple2!25430) Bool)

(assert (=> b!2225488 (not (containsKey!71 call!133253 lt!829842))))

(declare-fun lt!829992 () Unit!39120)

(declare-fun Unit!39135 () Unit!39120)

(assert (=> b!2225488 (= lt!829992 Unit!39135)))

(declare-fun lt!829988 () Unit!39120)

(declare-fun lt!829998 () Unit!39120)

(assert (=> b!2225488 (= lt!829988 lt!829998)))

(assert (=> b!2225488 (noDuplicateKeys!35 call!133253)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!29 (List!26225 tuple2!25430) Unit!39120)

(assert (=> b!2225488 (= lt!829998 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!29 lt!829974 lt!829842))))

(declare-fun lt!829995 () Unit!39120)

(declare-fun lt!829960 () Unit!39120)

(assert (=> b!2225488 (= lt!829995 lt!829960)))

(assert (=> b!2225488 call!133236))

(assert (=> b!2225488 (= lt!829960 call!133254)))

(declare-fun lt!829990 () Unit!39120)

(declare-fun lt!830005 () Unit!39120)

(assert (=> b!2225488 (= lt!829990 lt!830005)))

(assert (=> b!2225488 call!133238))

(assert (=> b!2225488 (= lt!830005 call!133256)))

(declare-fun Unit!39136 () Unit!39120)

(assert (=> b!2225488 (= e!1422170 Unit!39136)))

(declare-fun bm!133243 () Bool)

(assert (=> bm!133243 (= call!133230 (eq!50 call!133234 e!1422172))))

(declare-fun c!355245 () Bool)

(assert (=> bm!133243 (= c!355245 c!355242)))

(declare-fun bm!133244 () Bool)

(declare-fun call!133246 () (_ BitVec 64))

(declare-fun hash!569 (Hashable!2925 tuple2!25430) (_ BitVec 64))

(assert (=> bm!133244 (= call!133246 (hash!569 (hashF!4848 (cache!3306 thiss!28682)) lt!829842))))

(declare-fun lt!829981 () MutableMap!2925)

(declare-fun bm!133245 () Bool)

(declare-fun lt!829963 () MutableMap!2925)

(assert (=> bm!133245 (= call!133231 (map!5331 (ite c!355243 lt!829963 lt!829981)))))

(declare-fun call!133252 () ListLongMap!307)

(declare-fun bm!133246 () Bool)

(assert (=> bm!133246 (= call!133247 (forall!5341 (toList!1322 call!133252) (ite c!355243 lambda!84181 lambda!84182)))))

(declare-fun bm!133247 () Bool)

(assert (=> bm!133247 (= call!133255 (+!53 call!133243 (tuple2!25433 lt!829842 res!14206)))))

(declare-fun lt!829980 () tuple2!25438)

(declare-fun e!1422164 () tuple2!25434)

(declare-fun b!2225489 () Bool)

(declare-datatypes ((tuple2!25440 0))(
  ( (tuple2!25441 (_1!15104 Unit!39120) (_2!15104 MutableMap!2925)) )
))
(declare-fun Unit!39137 () Unit!39120)

(declare-fun Unit!39138 () Unit!39120)

(assert (=> b!2225489 (= e!1422164 (tuple2!25435 (_1!15103 lt!829980) (_2!15104 (ite (_1!15103 lt!829980) (tuple2!25441 Unit!39137 (HashMap!2925 (Cell!11880 (_2!15103 lt!829980)) (hashF!4848 (cache!3306 thiss!28682)) (bvadd (_size!6078 (cache!3306 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3087 (cache!3306 thiss!28682)))) (tuple2!25441 Unit!39138 lt!829981)))))))

(assert (=> b!2225489 (= lt!830001 call!133246)))

(declare-fun c!355240 () Bool)

(declare-fun contains!4366 (MutLongMap!3015 (_ BitVec 64)) Bool)

(assert (=> b!2225489 (= c!355240 (contains!4366 (v!29695 (underlying!6232 (cache!3306 thiss!28682))) lt!830001))))

(assert (=> b!2225489 (= lt!829961 e!1422167)))

(assert (=> b!2225489 (= lt!830004 (Cons!26131 (tuple2!25433 lt!829842 res!14206) lt!829961))))

(assert (=> b!2225489 (= lt!829980 call!133251)))

(assert (=> b!2225489 (= lt!829981 (HashMap!2925 (Cell!11880 (_2!15103 lt!829980)) (hashF!4848 (cache!3306 thiss!28682)) (_size!6078 (cache!3306 thiss!28682)) (defaultValue!3087 (cache!3306 thiss!28682))))))

(declare-fun c!355241 () Bool)

(assert (=> b!2225489 (= c!355241 (_1!15103 lt!829980))))

(declare-fun lt!830003 () Unit!39120)

(assert (=> b!2225489 (= lt!830003 e!1422163)))

(declare-fun bm!133248 () Bool)

(assert (=> bm!133248 (= call!133260 (allKeysSameHashInMap!100 call!133252 (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun bm!133249 () Bool)

(assert (=> bm!133249 (= call!133259 (valid!2316 (ite c!355243 lt!829963 lt!829981)))))

(declare-fun bm!133250 () Bool)

(assert (=> bm!133250 (= call!133234 (map!5331 (_2!15101 lt!829989)))))

(declare-fun bm!133251 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!29 (ListLongMap!307 (_ BitVec 64) List!26225 Hashable!2925) Unit!39120)

(assert (=> bm!133251 (= call!133245 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!29 lt!829997 (ite c!355243 lt!829978 lt!830001) (ite c!355243 lt!830009 lt!830004) (hashF!4848 (cache!3306 thiss!28682))))))

(declare-fun bm!133252 () Bool)

(declare-fun +!54 (ListLongMap!307 tuple2!25436) ListLongMap!307)

(assert (=> bm!133252 (= call!133257 (+!54 lt!829997 (ite c!355243 (tuple2!25437 lt!829978 lt!830009) (tuple2!25437 lt!830001 lt!830004))))))

(declare-fun bm!133253 () Bool)

(assert (=> bm!133253 (= call!133232 (extractMap!100 (toList!1322 call!133257)))))

(declare-fun b!2225490 () Bool)

(assert (=> b!2225490 (= e!1422171 call!133230)))

(declare-fun b!2225491 () Bool)

(assert (=> b!2225491 (= e!1422172 (+!53 call!133249 (tuple2!25433 lt!829842 res!14206)))))

(declare-fun d!664518 () Bool)

(assert (=> d!664518 e!1422165))

(declare-fun res!954423 () Bool)

(assert (=> d!664518 (=> (not res!954423) (not e!1422165))))

(assert (=> d!664518 (= res!954423 ((_ is HashMap!2925) (_2!15101 lt!829989)))))

(declare-fun lt!829970 () tuple2!25434)

(assert (=> d!664518 (= lt!829989 (tuple2!25435 (_1!15101 lt!829970) (_2!15101 lt!829970)))))

(assert (=> d!664518 (= lt!829970 e!1422164)))

(declare-fun contains!4367 (MutableMap!2925 tuple2!25430) Bool)

(assert (=> d!664518 (= c!355243 (contains!4367 (cache!3306 thiss!28682) lt!829842))))

(declare-fun map!5332 (MutLongMap!3015) ListLongMap!307)

(assert (=> d!664518 (= lt!829997 (map!5332 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))

(assert (=> d!664518 (= lt!829991 (map!5331 (cache!3306 thiss!28682)))))

(assert (=> d!664518 (valid!2316 (cache!3306 thiss!28682))))

(assert (=> d!664518 (= (update!129 (cache!3306 thiss!28682) lt!829842 res!14206) lt!829989)))

(declare-fun b!2225492 () Bool)

(declare-fun Unit!39139 () Unit!39120)

(assert (=> b!2225492 (= e!1422169 Unit!39139)))

(declare-fun lt!829976 () tuple2!25438)

(declare-fun b!2225493 () Bool)

(declare-fun Unit!39140 () Unit!39120)

(declare-fun Unit!39141 () Unit!39120)

(assert (=> b!2225493 (= e!1422164 (tuple2!25435 (_1!15103 lt!829976) (_2!15104 (ite false (tuple2!25441 Unit!39140 (HashMap!2925 (Cell!11880 (_2!15103 lt!829976)) (hashF!4848 (cache!3306 thiss!28682)) (bvadd (_size!6078 (cache!3306 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3087 (cache!3306 thiss!28682)))) (tuple2!25441 Unit!39141 lt!829963)))))))

(assert (=> b!2225493 (= lt!829978 call!133246)))

(assert (=> b!2225493 (= lt!829974 call!133240)))

(assert (=> b!2225493 (= lt!830009 (Cons!26131 (tuple2!25433 lt!829842 res!14206) call!133253))))

(assert (=> b!2225493 (= lt!829976 call!133251)))

(assert (=> b!2225493 (= lt!829963 (HashMap!2925 (Cell!11880 (_2!15103 lt!829976)) (hashF!4848 (cache!3306 thiss!28682)) (_size!6078 (cache!3306 thiss!28682)) (defaultValue!3087 (cache!3306 thiss!28682))))))

(declare-fun c!355239 () Bool)

(assert (=> b!2225493 (= c!355239 (_1!15103 lt!829976))))

(declare-fun lt!829999 () Unit!39120)

(assert (=> b!2225493 (= lt!829999 e!1422170)))

(declare-fun bm!133254 () Bool)

(assert (=> bm!133254 (= call!133250 call!133231)))

(declare-fun b!2225494 () Bool)

(assert (=> b!2225494 (= e!1422168 call!133258)))

(declare-fun bm!133255 () Bool)

(assert (=> bm!133255 (= call!133252 (map!5332 (ite c!355243 (_2!15103 lt!829976) (_2!15103 lt!829980))))))

(assert (= (and d!664518 c!355243) b!2225493))

(assert (= (and d!664518 (not c!355243)) b!2225489))

(assert (= (and b!2225493 c!355239) b!2225488))

(assert (= (and b!2225493 (not c!355239)) b!2225476))

(assert (= (and b!2225488 res!954425) b!2225494))

(assert (= (or b!2225488 b!2225476) bm!133229))

(assert (= (and b!2225489 c!355240) b!2225487))

(assert (= (and b!2225489 (not c!355240)) b!2225481))

(assert (= (and b!2225489 c!355241) b!2225482))

(assert (= (and b!2225489 (not c!355241)) b!2225477))

(assert (= (and b!2225482 c!355244) b!2225478))

(assert (= (and b!2225482 (not c!355244)) b!2225492))

(assert (= (and b!2225482 res!954421) b!2225479))

(assert (= (or b!2225482 b!2225477) bm!133254))

(assert (= (or b!2225494 b!2225479) bm!133233))

(assert (= (or b!2225488 b!2225482) bm!133251))

(assert (= (or b!2225488 b!2225482) bm!133242))

(assert (= (or b!2225493 b!2225489) bm!133244))

(assert (= (or b!2225493 b!2225489) bm!133240))

(assert (= (or b!2225488 b!2225482) bm!133238))

(assert (= (or b!2225488 b!2225482) bm!133252))

(assert (= (or b!2225476 b!2225477) bm!133249))

(assert (= (or b!2225488 b!2225482) bm!133228))

(assert (= (or b!2225488 b!2225482) bm!133232))

(assert (= (or bm!133229 bm!133254) bm!133245))

(assert (= (or b!2225488 b!2225482) bm!133255))

(assert (= (or b!2225488 b!2225482) bm!133230))

(assert (= (or b!2225488 b!2225478) bm!133225))

(assert (= (or b!2225488 b!2225482) bm!133231))

(assert (= (or b!2225488 b!2225493 b!2225478) bm!133236))

(assert (= (or b!2225488 b!2225478) bm!133239))

(assert (= (or b!2225493 b!2225487) bm!133226))

(assert (= (or b!2225488 b!2225478) bm!133241))

(assert (= (or b!2225488 b!2225478) bm!133227))

(assert (= (or b!2225488 b!2225482) bm!133247))

(assert (= (or b!2225488 b!2225482) bm!133248))

(assert (= (or b!2225488 b!2225482) bm!133253))

(assert (= (or b!2225488 b!2225482) bm!133246))

(assert (= (or b!2225488 b!2225482) bm!133234))

(assert (= (or b!2225488 b!2225482) bm!133235))

(assert (= (and d!664518 res!954423) b!2225483))

(assert (= (and b!2225483 res!954422) b!2225484))

(assert (= (and b!2225484 c!355242) b!2225480))

(assert (= (and b!2225484 (not c!355242)) b!2225490))

(assert (= (and b!2225480 res!954424) b!2225486))

(assert (= (or b!2225480 b!2225486 b!2225490) bm!133250))

(assert (= (or b!2225486 b!2225490) bm!133237))

(assert (= (or b!2225486 b!2225490) bm!133243))

(assert (= (and bm!133243 c!355245) b!2225491))

(assert (= (and bm!133243 (not c!355245)) b!2225485))

(declare-fun m!2665144 () Bool)

(assert (=> b!2225482 m!2665144))

(declare-fun m!2665146 () Bool)

(assert (=> b!2225482 m!2665146))

(declare-fun m!2665148 () Bool)

(assert (=> b!2225482 m!2665148))

(declare-fun m!2665150 () Bool)

(assert (=> b!2225482 m!2665150))

(declare-fun m!2665152 () Bool)

(assert (=> bm!133245 m!2665152))

(declare-fun m!2665154 () Bool)

(assert (=> bm!133244 m!2665154))

(declare-fun m!2665156 () Bool)

(assert (=> bm!133255 m!2665156))

(declare-fun m!2665158 () Bool)

(assert (=> bm!133253 m!2665158))

(declare-fun m!2665160 () Bool)

(assert (=> bm!133235 m!2665160))

(declare-fun m!2665162 () Bool)

(assert (=> bm!133239 m!2665162))

(declare-fun m!2665164 () Bool)

(assert (=> bm!133226 m!2665164))

(declare-fun m!2665166 () Bool)

(assert (=> bm!133237 m!2665166))

(declare-fun m!2665168 () Bool)

(assert (=> b!2225483 m!2665168))

(declare-fun m!2665170 () Bool)

(assert (=> bm!133231 m!2665170))

(declare-fun m!2665172 () Bool)

(assert (=> bm!133249 m!2665172))

(declare-fun m!2665174 () Bool)

(assert (=> bm!133241 m!2665174))

(declare-fun m!2665176 () Bool)

(assert (=> bm!133251 m!2665176))

(declare-fun m!2665178 () Bool)

(assert (=> bm!133246 m!2665178))

(declare-fun m!2665180 () Bool)

(assert (=> bm!133236 m!2665180))

(declare-fun m!2665182 () Bool)

(assert (=> bm!133252 m!2665182))

(declare-fun m!2665184 () Bool)

(assert (=> bm!133243 m!2665184))

(declare-fun m!2665186 () Bool)

(assert (=> bm!133227 m!2665186))

(declare-fun m!2665188 () Bool)

(assert (=> bm!133228 m!2665188))

(declare-fun m!2665190 () Bool)

(assert (=> bm!133232 m!2665190))

(declare-fun m!2665192 () Bool)

(assert (=> bm!133233 m!2665192))

(declare-fun m!2665194 () Bool)

(assert (=> bm!133240 m!2665194))

(declare-fun m!2665196 () Bool)

(assert (=> bm!133238 m!2665196))

(declare-fun m!2665198 () Bool)

(assert (=> bm!133242 m!2665198))

(declare-fun m!2665200 () Bool)

(assert (=> bm!133247 m!2665200))

(declare-fun m!2665202 () Bool)

(assert (=> bm!133225 m!2665202))

(declare-fun m!2665204 () Bool)

(assert (=> bm!133230 m!2665204))

(declare-fun m!2665206 () Bool)

(assert (=> d!664518 m!2665206))

(declare-fun m!2665208 () Bool)

(assert (=> d!664518 m!2665208))

(assert (=> d!664518 m!2665166))

(declare-fun m!2665210 () Bool)

(assert (=> d!664518 m!2665210))

(declare-fun m!2665212 () Bool)

(assert (=> bm!133248 m!2665212))

(declare-fun m!2665214 () Bool)

(assert (=> b!2225491 m!2665214))

(declare-fun m!2665216 () Bool)

(assert (=> b!2225489 m!2665216))

(declare-fun m!2665218 () Bool)

(assert (=> b!2225480 m!2665218))

(declare-fun m!2665220 () Bool)

(assert (=> bm!133234 m!2665220))

(declare-fun m!2665222 () Bool)

(assert (=> bm!133250 m!2665222))

(declare-fun m!2665224 () Bool)

(assert (=> b!2225488 m!2665224))

(declare-fun m!2665226 () Bool)

(assert (=> b!2225488 m!2665226))

(declare-fun m!2665228 () Bool)

(assert (=> b!2225488 m!2665228))

(declare-fun m!2665230 () Bool)

(assert (=> b!2225488 m!2665230))

(declare-fun m!2665232 () Bool)

(assert (=> b!2225488 m!2665232))

(assert (=> b!2225431 d!664518))

(declare-fun d!664520 () Bool)

(declare-fun e!1422176 () Bool)

(assert (=> d!664520 e!1422176))

(declare-fun res!954428 () Bool)

(assert (=> d!664520 (=> (not res!954428) (not e!1422176))))

(assert (=> d!664520 (= res!954428 (and (or (not ((_ is HashMap!2925) (cache!3306 thiss!28682))) ((_ is HashMap!2925) (cache!3306 thiss!28682))) ((_ is HashMap!2925) (cache!3306 thiss!28682))))))

(declare-fun lt!830024 () Unit!39120)

(declare-fun choose!13111 (MutableMap!2925 tuple2!25430 (InoxSet Context!3850) Int) Unit!39120)

(assert (=> d!664520 (= lt!830024 (choose!13111 (cache!3306 thiss!28682) lt!829842 res!14206 lambda!84172))))

(assert (=> d!664520 (valid!2316 (cache!3306 thiss!28682))))

(assert (=> d!664520 (= (lemmaUpdatePreservesForallPairs!18 (cache!3306 thiss!28682) lt!829842 res!14206 lambda!84172) lt!830024)))

(declare-fun b!2225497 () Bool)

(declare-fun lt!830022 () MutableMap!2925)

(assert (=> b!2225497 (= e!1422176 (forall!5340 (toList!1321 (map!5331 lt!830022)) lambda!84172))))

(assert (=> b!2225497 ((_ is HashMap!2925) lt!830022)))

(declare-fun lt!830027 () MutableMap!2925)

(assert (=> b!2225497 (= lt!830022 lt!830027)))

(assert (=> b!2225497 ((_ is HashMap!2925) lt!830027)))

(declare-fun lt!830025 () MutableMap!2925)

(assert (=> b!2225497 (= lt!830027 lt!830025)))

(assert (=> b!2225497 ((_ is HashMap!2925) lt!830025)))

(declare-fun lt!830026 () tuple2!25434)

(assert (=> b!2225497 (= lt!830025 (_2!15101 lt!830026))))

(assert (=> b!2225497 ((_ is HashMap!2925) (_2!15101 lt!830026))))

(declare-fun lt!830023 () tuple2!25434)

(assert (=> b!2225497 (= lt!830026 lt!830023)))

(assert (=> b!2225497 ((_ is HashMap!2925) (_2!15101 lt!830023))))

(assert (=> b!2225497 (= lt!830023 (update!129 (cache!3306 thiss!28682) lt!829842 res!14206))))

(assert (= (and d!664520 res!954428) b!2225497))

(declare-fun m!2665234 () Bool)

(assert (=> d!664520 m!2665234))

(assert (=> d!664520 m!2665210))

(declare-fun m!2665236 () Bool)

(assert (=> b!2225497 m!2665236))

(declare-fun m!2665238 () Bool)

(assert (=> b!2225497 m!2665238))

(assert (=> b!2225497 m!2665136))

(assert (=> b!2225431 d!664520))

(declare-fun d!664522 () Bool)

(declare-fun lt!830030 () ListMap!789)

(declare-fun invariantList!356 (List!26225) Bool)

(assert (=> d!664522 (invariantList!356 (toList!1321 lt!830030))))

(assert (=> d!664522 (= lt!830030 (extractMap!100 (toList!1322 (map!5332 (v!29695 (underlying!6232 (_2!15101 lt!829843)))))))))

(assert (=> d!664522 (valid!2316 (_2!15101 lt!829843))))

(assert (=> d!664522 (= (map!5331 (_2!15101 lt!829843)) lt!830030)))

(declare-fun bs!453518 () Bool)

(assert (= bs!453518 d!664522))

(declare-fun m!2665240 () Bool)

(assert (=> bs!453518 m!2665240))

(declare-fun m!2665242 () Bool)

(assert (=> bs!453518 m!2665242))

(declare-fun m!2665244 () Bool)

(assert (=> bs!453518 m!2665244))

(declare-fun m!2665246 () Bool)

(assert (=> bs!453518 m!2665246))

(assert (=> b!2225431 d!664522))

(declare-fun bs!453519 () Bool)

(declare-fun b!2225503 () Bool)

(assert (= bs!453519 (and b!2225503 b!2225431)))

(declare-fun lambda!84185 () Int)

(assert (=> bs!453519 (= lambda!84185 lambda!84172)))

(declare-fun d!664524 () Bool)

(declare-fun res!954433 () Bool)

(declare-fun e!1422179 () Bool)

(assert (=> d!664524 (=> (not res!954433) (not e!1422179))))

(assert (=> d!664524 (= res!954433 (valid!2316 (_2!15101 lt!829843)))))

(assert (=> d!664524 (= (validCacheMapUp!288 (_2!15101 lt!829843)) e!1422179)))

(declare-fun b!2225502 () Bool)

(declare-fun res!954434 () Bool)

(assert (=> b!2225502 (=> (not res!954434) (not e!1422179))))

(assert (=> b!2225502 (= res!954434 (invariantList!356 (toList!1321 (map!5331 (_2!15101 lt!829843)))))))

(assert (=> b!2225503 (= e!1422179 (forall!5340 (toList!1321 (map!5331 (_2!15101 lt!829843))) lambda!84185))))

(assert (= (and d!664524 res!954433) b!2225502))

(assert (= (and b!2225502 res!954434) b!2225503))

(assert (=> d!664524 m!2665246))

(assert (=> b!2225502 m!2665134))

(declare-fun m!2665249 () Bool)

(assert (=> b!2225502 m!2665249))

(assert (=> b!2225503 m!2665134))

(declare-fun m!2665251 () Bool)

(assert (=> b!2225503 m!2665251))

(assert (=> b!2225431 d!664524))

(declare-fun b!2225514 () Bool)

(declare-fun e!1422187 () Bool)

(declare-fun nullable!1740 (Regex!6377) Bool)

(assert (=> b!2225514 (= e!1422187 (nullable!1740 (h!31531 (exprs!2425 ctx!44))))))

(declare-fun b!2225515 () Bool)

(declare-fun e!1422186 () (InoxSet Context!3850))

(assert (=> b!2225515 (= e!1422186 ((as const (Array Context!3850 Bool)) false))))

(declare-fun d!664526 () Bool)

(declare-fun c!355251 () Bool)

(assert (=> d!664526 (= c!355251 e!1422187)))

(declare-fun res!954437 () Bool)

(assert (=> d!664526 (=> (not res!954437) (not e!1422187))))

(assert (=> d!664526 (= res!954437 ((_ is Cons!26130) (exprs!2425 ctx!44)))))

(declare-fun e!1422188 () (InoxSet Context!3850))

(assert (=> d!664526 (= (derivationStepZipperUp!38 ctx!44 a!962) e!1422188)))

(declare-fun bm!133258 () Bool)

(declare-fun call!133263 () (InoxSet Context!3850))

(declare-fun derivationStepZipperDown!31 (Regex!6377 Context!3850 C!12900) (InoxSet Context!3850))

(assert (=> bm!133258 (= call!133263 (derivationStepZipperDown!31 (h!31531 (exprs!2425 ctx!44)) (Context!3851 (t!199636 (exprs!2425 ctx!44))) a!962))))

(declare-fun b!2225516 () Bool)

(assert (=> b!2225516 (= e!1422186 call!133263)))

(declare-fun b!2225517 () Bool)

(assert (=> b!2225517 (= e!1422188 e!1422186)))

(declare-fun c!355250 () Bool)

(assert (=> b!2225517 (= c!355250 ((_ is Cons!26130) (exprs!2425 ctx!44)))))

(declare-fun b!2225518 () Bool)

(assert (=> b!2225518 (= e!1422188 ((_ map or) call!133263 (derivationStepZipperUp!38 (Context!3851 (t!199636 (exprs!2425 ctx!44))) a!962)))))

(assert (= (and d!664526 res!954437) b!2225514))

(assert (= (and d!664526 c!355251) b!2225518))

(assert (= (and d!664526 (not c!355251)) b!2225517))

(assert (= (and b!2225517 c!355250) b!2225516))

(assert (= (and b!2225517 (not c!355250)) b!2225515))

(assert (= (or b!2225518 b!2225516) bm!133258))

(declare-fun m!2665253 () Bool)

(assert (=> b!2225514 m!2665253))

(declare-fun m!2665255 () Bool)

(assert (=> bm!133258 m!2665255))

(declare-fun m!2665257 () Bool)

(assert (=> b!2225518 m!2665257))

(assert (=> b!2225421 d!664526))

(declare-fun d!664528 () Bool)

(assert (=> d!664528 (= (array_inv!3317 (_keys!3312 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) (bvsge (size!20398 (_keys!3312 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225422 d!664528))

(declare-fun d!664530 () Bool)

(assert (=> d!664530 (= (array_inv!3318 (_values!3295 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) (bvsge (size!20399 (_values!3295 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225422 d!664530))

(declare-fun d!664532 () Bool)

(declare-fun lambda!84188 () Int)

(declare-fun forall!5342 (List!26224 Int) Bool)

(assert (=> d!664532 (= (inv!35477 setElem!19832) (forall!5342 (exprs!2425 setElem!19832) lambda!84188))))

(declare-fun bs!453520 () Bool)

(assert (= bs!453520 d!664532))

(declare-fun m!2665259 () Bool)

(assert (=> bs!453520 m!2665259))

(assert (=> setNonEmpty!19832 d!664532))

(declare-fun bs!453521 () Bool)

(declare-fun b!2225520 () Bool)

(assert (= bs!453521 (and b!2225520 b!2225431)))

(declare-fun lambda!84189 () Int)

(assert (=> bs!453521 (= lambda!84189 lambda!84172)))

(declare-fun bs!453522 () Bool)

(assert (= bs!453522 (and b!2225520 b!2225503)))

(assert (=> bs!453522 (= lambda!84189 lambda!84185)))

(declare-fun d!664534 () Bool)

(declare-fun res!954438 () Bool)

(declare-fun e!1422189 () Bool)

(assert (=> d!664534 (=> (not res!954438) (not e!1422189))))

(assert (=> d!664534 (= res!954438 (valid!2316 (cache!3306 thiss!28682)))))

(assert (=> d!664534 (= (validCacheMapUp!288 (cache!3306 thiss!28682)) e!1422189)))

(declare-fun b!2225519 () Bool)

(declare-fun res!954439 () Bool)

(assert (=> b!2225519 (=> (not res!954439) (not e!1422189))))

(assert (=> b!2225519 (= res!954439 (invariantList!356 (toList!1321 (map!5331 (cache!3306 thiss!28682)))))))

(assert (=> b!2225520 (= e!1422189 (forall!5340 (toList!1321 (map!5331 (cache!3306 thiss!28682))) lambda!84189))))

(assert (= (and d!664534 res!954438) b!2225519))

(assert (= (and b!2225519 res!954439) b!2225520))

(assert (=> d!664534 m!2665210))

(assert (=> b!2225519 m!2665166))

(declare-fun m!2665261 () Bool)

(assert (=> b!2225519 m!2665261))

(assert (=> b!2225520 m!2665166))

(declare-fun m!2665263 () Bool)

(assert (=> b!2225520 m!2665263))

(assert (=> start!217176 d!664534))

(declare-fun d!664536 () Bool)

(declare-fun res!954442 () Bool)

(declare-fun e!1422192 () Bool)

(assert (=> d!664536 (=> (not res!954442) (not e!1422192))))

(assert (=> d!664536 (= res!954442 ((_ is HashMap!2925) (cache!3306 thiss!28682)))))

(assert (=> d!664536 (= (inv!35478 thiss!28682) e!1422192)))

(declare-fun b!2225523 () Bool)

(assert (=> b!2225523 (= e!1422192 (validCacheMapUp!288 (cache!3306 thiss!28682)))))

(assert (= (and d!664536 res!954442) b!2225523))

(assert (=> b!2225523 m!2665120))

(assert (=> start!217176 d!664536))

(declare-fun bs!453523 () Bool)

(declare-fun d!664538 () Bool)

(assert (= bs!453523 (and d!664538 d!664532)))

(declare-fun lambda!84190 () Int)

(assert (=> bs!453523 (= lambda!84190 lambda!84188)))

(assert (=> d!664538 (= (inv!35477 ctx!44) (forall!5342 (exprs!2425 ctx!44) lambda!84190))))

(declare-fun bs!453524 () Bool)

(assert (= bs!453524 d!664538))

(declare-fun m!2665265 () Bool)

(assert (=> bs!453524 m!2665265))

(assert (=> start!217176 d!664538))

(declare-fun b!2225528 () Bool)

(declare-fun e!1422195 () Bool)

(declare-fun tp!695133 () Bool)

(declare-fun tp!695134 () Bool)

(assert (=> b!2225528 (= e!1422195 (and tp!695133 tp!695134))))

(assert (=> b!2225427 (= tp!695127 e!1422195)))

(assert (= (and b!2225427 ((_ is Cons!26130) (exprs!2425 setElem!19832))) b!2225528))

(declare-fun b!2225543 () Bool)

(declare-fun e!1422208 () Bool)

(declare-fun tp!695154 () Bool)

(assert (=> b!2225543 (= e!1422208 tp!695154)))

(declare-fun b!2225544 () Bool)

(declare-fun e!1422213 () Bool)

(declare-fun tp!695159 () Bool)

(assert (=> b!2225544 (= e!1422213 tp!695159)))

(declare-fun setIsEmpty!19837 () Bool)

(declare-fun setRes!19838 () Bool)

(assert (=> setIsEmpty!19837 setRes!19838))

(declare-fun b!2225545 () Bool)

(declare-fun e!1422209 () Bool)

(declare-fun tp!695158 () Bool)

(assert (=> b!2225545 (= e!1422209 tp!695158)))

(declare-fun b!2225546 () Bool)

(declare-fun e!1422211 () Bool)

(declare-fun tp!695156 () Bool)

(assert (=> b!2225546 (= e!1422211 tp!695156)))

(declare-fun mapDefault!14220 () List!26225)

(declare-fun e!1422212 () Bool)

(declare-fun tp!695155 () Bool)

(declare-fun b!2225547 () Bool)

(assert (=> b!2225547 (= e!1422212 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 mapDefault!14220)))) e!1422211 tp_is_empty!9979 setRes!19838 tp!695155))))

(declare-fun condSetEmpty!19837 () Bool)

(assert (=> b!2225547 (= condSetEmpty!19837 (= (_2!15100 (h!31532 mapDefault!14220)) ((as const (Array Context!3850 Bool)) false)))))

(declare-fun mapNonEmpty!14220 () Bool)

(declare-fun mapRes!14220 () Bool)

(declare-fun tp!695153 () Bool)

(declare-fun e!1422210 () Bool)

(assert (=> mapNonEmpty!14220 (= mapRes!14220 (and tp!695153 e!1422210))))

(declare-fun mapValue!14220 () List!26225)

(declare-fun mapRest!14220 () (Array (_ BitVec 32) List!26225))

(declare-fun mapKey!14220 () (_ BitVec 32))

(assert (=> mapNonEmpty!14220 (= mapRest!14217 (store mapRest!14220 mapKey!14220 mapValue!14220))))

(declare-fun condMapEmpty!14220 () Bool)

(assert (=> mapNonEmpty!14217 (= condMapEmpty!14220 (= mapRest!14217 ((as const (Array (_ BitVec 32) List!26225)) mapDefault!14220)))))

(assert (=> mapNonEmpty!14217 (= tp!695121 (and e!1422212 mapRes!14220))))

(declare-fun mapIsEmpty!14220 () Bool)

(assert (=> mapIsEmpty!14220 mapRes!14220))

(declare-fun setRes!19837 () Bool)

(declare-fun setElem!19838 () Context!3850)

(declare-fun tp!695157 () Bool)

(declare-fun setNonEmpty!19837 () Bool)

(assert (=> setNonEmpty!19837 (= setRes!19837 (and tp!695157 (inv!35477 setElem!19838) e!1422208))))

(declare-fun setRest!19837 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19837 (= (_2!15100 (h!31532 mapValue!14220)) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19838 true) setRest!19837))))

(declare-fun tp!695161 () Bool)

(declare-fun setElem!19837 () Context!3850)

(declare-fun setNonEmpty!19838 () Bool)

(assert (=> setNonEmpty!19838 (= setRes!19838 (and tp!695161 (inv!35477 setElem!19837) e!1422209))))

(declare-fun setRest!19838 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19838 (= (_2!15100 (h!31532 mapDefault!14220)) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19837 true) setRest!19838))))

(declare-fun tp!695160 () Bool)

(declare-fun b!2225548 () Bool)

(assert (=> b!2225548 (= e!1422210 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 mapValue!14220)))) e!1422213 tp_is_empty!9979 setRes!19837 tp!695160))))

(declare-fun condSetEmpty!19838 () Bool)

(assert (=> b!2225548 (= condSetEmpty!19838 (= (_2!15100 (h!31532 mapValue!14220)) ((as const (Array Context!3850 Bool)) false)))))

(declare-fun setIsEmpty!19838 () Bool)

(assert (=> setIsEmpty!19838 setRes!19837))

(assert (= (and mapNonEmpty!14217 condMapEmpty!14220) mapIsEmpty!14220))

(assert (= (and mapNonEmpty!14217 (not condMapEmpty!14220)) mapNonEmpty!14220))

(assert (= b!2225548 b!2225544))

(assert (= (and b!2225548 condSetEmpty!19838) setIsEmpty!19838))

(assert (= (and b!2225548 (not condSetEmpty!19838)) setNonEmpty!19837))

(assert (= setNonEmpty!19837 b!2225543))

(assert (= (and mapNonEmpty!14220 ((_ is Cons!26131) mapValue!14220)) b!2225548))

(assert (= b!2225547 b!2225546))

(assert (= (and b!2225547 condSetEmpty!19837) setIsEmpty!19837))

(assert (= (and b!2225547 (not condSetEmpty!19837)) setNonEmpty!19838))

(assert (= setNonEmpty!19838 b!2225545))

(assert (= (and mapNonEmpty!14217 ((_ is Cons!26131) mapDefault!14220)) b!2225547))

(declare-fun m!2665267 () Bool)

(assert (=> b!2225548 m!2665267))

(declare-fun m!2665269 () Bool)

(assert (=> setNonEmpty!19838 m!2665269))

(declare-fun m!2665271 () Bool)

(assert (=> mapNonEmpty!14220 m!2665271))

(declare-fun m!2665273 () Bool)

(assert (=> b!2225547 m!2665273))

(declare-fun m!2665275 () Bool)

(assert (=> setNonEmpty!19837 m!2665275))

(declare-fun b!2225558 () Bool)

(declare-fun e!1422221 () Bool)

(declare-fun tp!695171 () Bool)

(assert (=> b!2225558 (= e!1422221 tp!695171)))

(declare-fun e!1422220 () Bool)

(declare-fun setNonEmpty!19841 () Bool)

(declare-fun tp!695173 () Bool)

(declare-fun setElem!19841 () Context!3850)

(declare-fun setRes!19841 () Bool)

(assert (=> setNonEmpty!19841 (= setRes!19841 (and tp!695173 (inv!35477 setElem!19841) e!1422220))))

(declare-fun setRest!19841 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19841 (= (_2!15100 (h!31532 mapValue!14217)) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19841 true) setRest!19841))))

(declare-fun setIsEmpty!19841 () Bool)

(assert (=> setIsEmpty!19841 setRes!19841))

(declare-fun b!2225559 () Bool)

(declare-fun tp!695172 () Bool)

(assert (=> b!2225559 (= e!1422220 tp!695172)))

(declare-fun tp!695170 () Bool)

(declare-fun b!2225557 () Bool)

(declare-fun e!1422222 () Bool)

(assert (=> b!2225557 (= e!1422222 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 mapValue!14217)))) e!1422221 tp_is_empty!9979 setRes!19841 tp!695170))))

(declare-fun condSetEmpty!19841 () Bool)

(assert (=> b!2225557 (= condSetEmpty!19841 (= (_2!15100 (h!31532 mapValue!14217)) ((as const (Array Context!3850 Bool)) false)))))

(assert (=> mapNonEmpty!14217 (= tp!695119 e!1422222)))

(assert (= b!2225557 b!2225558))

(assert (= (and b!2225557 condSetEmpty!19841) setIsEmpty!19841))

(assert (= (and b!2225557 (not condSetEmpty!19841)) setNonEmpty!19841))

(assert (= setNonEmpty!19841 b!2225559))

(assert (= (and mapNonEmpty!14217 ((_ is Cons!26131) mapValue!14217)) b!2225557))

(declare-fun m!2665277 () Bool)

(assert (=> setNonEmpty!19841 m!2665277))

(declare-fun m!2665279 () Bool)

(assert (=> b!2225557 m!2665279))

(declare-fun b!2225561 () Bool)

(declare-fun e!1422224 () Bool)

(declare-fun tp!695175 () Bool)

(assert (=> b!2225561 (= e!1422224 tp!695175)))

(declare-fun setNonEmpty!19842 () Bool)

(declare-fun setElem!19842 () Context!3850)

(declare-fun setRes!19842 () Bool)

(declare-fun e!1422223 () Bool)

(declare-fun tp!695177 () Bool)

(assert (=> setNonEmpty!19842 (= setRes!19842 (and tp!695177 (inv!35477 setElem!19842) e!1422223))))

(declare-fun setRest!19842 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19842 (= (_2!15100 (h!31532 (zeroValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19842 true) setRest!19842))))

(declare-fun setIsEmpty!19842 () Bool)

(assert (=> setIsEmpty!19842 setRes!19842))

(declare-fun b!2225562 () Bool)

(declare-fun tp!695176 () Bool)

(assert (=> b!2225562 (= e!1422223 tp!695176)))

(declare-fun b!2225560 () Bool)

(declare-fun tp!695174 () Bool)

(declare-fun e!1422225 () Bool)

(assert (=> b!2225560 (= e!1422225 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 (zeroValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))))) e!1422224 tp_is_empty!9979 setRes!19842 tp!695174))))

(declare-fun condSetEmpty!19842 () Bool)

(assert (=> b!2225560 (= condSetEmpty!19842 (= (_2!15100 (h!31532 (zeroValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) ((as const (Array Context!3850 Bool)) false)))))

(assert (=> b!2225422 (= tp!695124 e!1422225)))

(assert (= b!2225560 b!2225561))

(assert (= (and b!2225560 condSetEmpty!19842) setIsEmpty!19842))

(assert (= (and b!2225560 (not condSetEmpty!19842)) setNonEmpty!19842))

(assert (= setNonEmpty!19842 b!2225562))

(assert (= (and b!2225422 ((_ is Cons!26131) (zeroValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) b!2225560))

(declare-fun m!2665281 () Bool)

(assert (=> setNonEmpty!19842 m!2665281))

(declare-fun m!2665283 () Bool)

(assert (=> b!2225560 m!2665283))

(declare-fun b!2225564 () Bool)

(declare-fun e!1422227 () Bool)

(declare-fun tp!695179 () Bool)

(assert (=> b!2225564 (= e!1422227 tp!695179)))

(declare-fun setRes!19843 () Bool)

(declare-fun tp!695181 () Bool)

(declare-fun e!1422226 () Bool)

(declare-fun setElem!19843 () Context!3850)

(declare-fun setNonEmpty!19843 () Bool)

(assert (=> setNonEmpty!19843 (= setRes!19843 (and tp!695181 (inv!35477 setElem!19843) e!1422226))))

(declare-fun setRest!19843 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19843 (= (_2!15100 (h!31532 (minValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19843 true) setRest!19843))))

(declare-fun setIsEmpty!19843 () Bool)

(assert (=> setIsEmpty!19843 setRes!19843))

(declare-fun b!2225565 () Bool)

(declare-fun tp!695180 () Bool)

(assert (=> b!2225565 (= e!1422226 tp!695180)))

(declare-fun tp!695178 () Bool)

(declare-fun e!1422228 () Bool)

(declare-fun b!2225563 () Bool)

(assert (=> b!2225563 (= e!1422228 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 (minValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))))) e!1422227 tp_is_empty!9979 setRes!19843 tp!695178))))

(declare-fun condSetEmpty!19843 () Bool)

(assert (=> b!2225563 (= condSetEmpty!19843 (= (_2!15100 (h!31532 (minValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) ((as const (Array Context!3850 Bool)) false)))))

(assert (=> b!2225422 (= tp!695122 e!1422228)))

(assert (= b!2225563 b!2225564))

(assert (= (and b!2225563 condSetEmpty!19843) setIsEmpty!19843))

(assert (= (and b!2225563 (not condSetEmpty!19843)) setNonEmpty!19843))

(assert (= setNonEmpty!19843 b!2225565))

(assert (= (and b!2225422 ((_ is Cons!26131) (minValue!3273 (v!29694 (underlying!6231 (v!29695 (underlying!6232 (cache!3306 thiss!28682)))))))) b!2225563))

(declare-fun m!2665285 () Bool)

(assert (=> setNonEmpty!19843 m!2665285))

(declare-fun m!2665287 () Bool)

(assert (=> b!2225563 m!2665287))

(declare-fun condSetEmpty!19846 () Bool)

(assert (=> setNonEmpty!19832 (= condSetEmpty!19846 (= setRest!19832 ((as const (Array Context!3850 Bool)) false)))))

(declare-fun setRes!19846 () Bool)

(assert (=> setNonEmpty!19832 (= tp!695128 setRes!19846)))

(declare-fun setIsEmpty!19846 () Bool)

(assert (=> setIsEmpty!19846 setRes!19846))

(declare-fun e!1422231 () Bool)

(declare-fun setElem!19846 () Context!3850)

(declare-fun setNonEmpty!19846 () Bool)

(declare-fun tp!695187 () Bool)

(assert (=> setNonEmpty!19846 (= setRes!19846 (and tp!695187 (inv!35477 setElem!19846) e!1422231))))

(declare-fun setRest!19846 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19846 (= setRest!19832 ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19846 true) setRest!19846))))

(declare-fun b!2225570 () Bool)

(declare-fun tp!695186 () Bool)

(assert (=> b!2225570 (= e!1422231 tp!695186)))

(assert (= (and setNonEmpty!19832 condSetEmpty!19846) setIsEmpty!19846))

(assert (= (and setNonEmpty!19832 (not condSetEmpty!19846)) setNonEmpty!19846))

(assert (= setNonEmpty!19846 b!2225570))

(declare-fun m!2665289 () Bool)

(assert (=> setNonEmpty!19846 m!2665289))

(declare-fun b!2225571 () Bool)

(declare-fun e!1422232 () Bool)

(declare-fun tp!695188 () Bool)

(declare-fun tp!695189 () Bool)

(assert (=> b!2225571 (= e!1422232 (and tp!695188 tp!695189))))

(assert (=> b!2225423 (= tp!695123 e!1422232)))

(assert (= (and b!2225423 ((_ is Cons!26130) (exprs!2425 ctx!44))) b!2225571))

(declare-fun b!2225573 () Bool)

(declare-fun e!1422234 () Bool)

(declare-fun tp!695191 () Bool)

(assert (=> b!2225573 (= e!1422234 tp!695191)))

(declare-fun setRes!19847 () Bool)

(declare-fun e!1422233 () Bool)

(declare-fun tp!695193 () Bool)

(declare-fun setNonEmpty!19847 () Bool)

(declare-fun setElem!19847 () Context!3850)

(assert (=> setNonEmpty!19847 (= setRes!19847 (and tp!695193 (inv!35477 setElem!19847) e!1422233))))

(declare-fun setRest!19847 () (InoxSet Context!3850))

(assert (=> setNonEmpty!19847 (= (_2!15100 (h!31532 mapDefault!14217)) ((_ map or) (store ((as const (Array Context!3850 Bool)) false) setElem!19847 true) setRest!19847))))

(declare-fun setIsEmpty!19847 () Bool)

(assert (=> setIsEmpty!19847 setRes!19847))

(declare-fun b!2225574 () Bool)

(declare-fun tp!695192 () Bool)

(assert (=> b!2225574 (= e!1422233 tp!695192)))

(declare-fun b!2225572 () Bool)

(declare-fun tp!695190 () Bool)

(declare-fun e!1422235 () Bool)

(assert (=> b!2225572 (= e!1422235 (and (inv!35477 (_1!15099 (_1!15100 (h!31532 mapDefault!14217)))) e!1422234 tp_is_empty!9979 setRes!19847 tp!695190))))

(declare-fun condSetEmpty!19847 () Bool)

(assert (=> b!2225572 (= condSetEmpty!19847 (= (_2!15100 (h!31532 mapDefault!14217)) ((as const (Array Context!3850 Bool)) false)))))

(assert (=> b!2225424 (= tp!695125 e!1422235)))

(assert (= b!2225572 b!2225573))

(assert (= (and b!2225572 condSetEmpty!19847) setIsEmpty!19847))

(assert (= (and b!2225572 (not condSetEmpty!19847)) setNonEmpty!19847))

(assert (= setNonEmpty!19847 b!2225574))

(assert (= (and b!2225424 ((_ is Cons!26131) mapDefault!14217)) b!2225572))

(declare-fun m!2665291 () Bool)

(assert (=> setNonEmpty!19847 m!2665291))

(declare-fun m!2665293 () Bool)

(assert (=> b!2225572 m!2665293))

(declare-fun b_lambda!71631 () Bool)

(assert (= b_lambda!71629 (or b!2225431 b_lambda!71631)))

(declare-fun bs!453525 () Bool)

(declare-fun d!664540 () Bool)

(assert (= bs!453525 (and d!664540 b!2225431)))

(assert (=> bs!453525 (= (dynLambda!11518 lambda!84172 (h!31532 (toList!1321 (map!5331 (_2!15101 lt!829843))))) (= (_2!15100 (h!31532 (toList!1321 (map!5331 (_2!15101 lt!829843))))) (derivationStepZipperUp!38 (_1!15099 (_1!15100 (h!31532 (toList!1321 (map!5331 (_2!15101 lt!829843)))))) (_2!15099 (_1!15100 (h!31532 (toList!1321 (map!5331 (_2!15101 lt!829843)))))))))))

(declare-fun m!2665295 () Bool)

(assert (=> bs!453525 m!2665295))

(assert (=> b!2225436 d!664540))

(check-sat (not mapNonEmpty!14220) (not b!2225518) (not b!2225574) (not bm!133239) tp_is_empty!9979 (not setNonEmpty!19847) (not b!2225559) (not b!2225562) (not b!2225570) (not d!664524) (not bm!133237) (not bm!133253) (not bm!133244) (not b!2225489) (not b!2225482) (not bm!133242) (not bm!133243) b_and!174509 (not bm!133225) (not setNonEmpty!19843) (not b_next!65225) (not bm!133250) (not setNonEmpty!19837) (not d!664520) (not b!2225571) (not bm!133255) (not b_lambda!71631) (not b!2225546) (not b!2225480) (not setNonEmpty!19838) b_and!174511 (not b!2225545) (not bm!133232) (not b!2225528) (not bm!133252) (not b!2225543) (not b!2225520) (not bm!133231) (not d!664538) (not bm!133228) (not bm!133234) (not d!664522) (not b!2225547) (not b!2225519) (not bm!133235) (not bm!133240) (not b!2225572) (not b!2225558) (not d!664518) (not b!2225483) (not bm!133230) (not bm!133241) (not bm!133226) (not b!2225563) (not b!2225557) (not setNonEmpty!19842) (not bm!133246) (not bm!133258) (not b!2225573) (not setNonEmpty!19846) (not b!2225514) (not bm!133245) (not bm!133251) (not bm!133233) (not bm!133247) (not b!2225544) (not setNonEmpty!19841) (not b!2225503) (not b_next!65227) (not bm!133249) (not d!664532) (not b!2225523) (not b!2225502) (not b!2225491) (not bm!133238) (not b!2225437) (not bs!453525) (not b!2225497) (not b!2225564) (not b!2225565) (not d!664534) (not b!2225561) (not b!2225548) (not bm!133248) (not bm!133236) (not b!2225488) (not b!2225560) (not bm!133227))
(check-sat b_and!174511 b_and!174509 (not b_next!65227) (not b_next!65225))
