; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208246 () Bool)

(assert start!208246)

(declare-fun b!2146964 () Bool)

(declare-fun b_free!63333 () Bool)

(declare-fun b_next!64037 () Bool)

(assert (=> b!2146964 (= b_free!63333 (not b_next!64037))))

(declare-fun tp!665942 () Bool)

(declare-fun b_and!172921 () Bool)

(assert (=> b!2146964 (= tp!665942 b_and!172921)))

(declare-fun b!2146970 () Bool)

(declare-fun b_free!63335 () Bool)

(declare-fun b_next!64039 () Bool)

(assert (=> b!2146970 (= b_free!63335 (not b_next!64039))))

(declare-fun tp!665951 () Bool)

(declare-fun b_and!172923 () Bool)

(assert (=> b!2146970 (= tp!665951 b_and!172923)))

(declare-fun b!2146963 () Bool)

(declare-fun e!1372364 () Bool)

(declare-datatypes ((Option!4961 0))(
  ( (None!4960) (Some!4960 (v!29097 Int)) )
))
(declare-fun lt!799360 () Option!4961)

(declare-fun isDefined!4081 (Option!4961) Bool)

(assert (=> b!2146963 (= e!1372364 (isDefined!4081 lt!799360))))

(declare-fun tp!665948 () Bool)

(declare-datatypes ((array!9557 0))(
  ( (array!9558 (arr!4268 (Array (_ BitVec 32) (_ BitVec 64))) (size!19185 (_ BitVec 32))) )
))
(declare-datatypes ((C!11768 0))(
  ( (C!11769 (val!6870 Int)) )
))
(declare-datatypes ((Regex!5811 0))(
  ( (ElementMatch!5811 (c!340860 C!11768)) (Concat!10113 (regOne!12134 Regex!5811) (regTwo!12134 Regex!5811)) (EmptyExpr!5811) (Star!5811 (reg!6140 Regex!5811)) (EmptyLang!5811) (Union!5811 (regOne!12135 Regex!5811) (regTwo!12135 Regex!5811)) )
))
(declare-datatypes ((List!24589 0))(
  ( (Nil!24505) (Cons!24505 (h!29906 Regex!5811) (t!197123 List!24589)) )
))
(declare-datatypes ((Context!2762 0))(
  ( (Context!2763 (exprs!1881 List!24589)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3554 0))(
  ( (tuple3!3555 (_1!14434 (InoxSet Context!2762)) (_2!14434 Int) (_3!2247 Int)) )
))
(declare-datatypes ((tuple2!24374 0))(
  ( (tuple2!24375 (_1!14435 tuple3!3554) (_2!14435 Int)) )
))
(declare-datatypes ((List!24590 0))(
  ( (Nil!24506) (Cons!24506 (h!29907 tuple2!24374) (t!197124 List!24590)) )
))
(declare-datatypes ((array!9559 0))(
  ( (array!9560 (arr!4269 (Array (_ BitVec 32) List!24590)) (size!19186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5672 0))(
  ( (LongMapFixedSize!5673 (defaultEntry!3201 Int) (mask!7057 (_ BitVec 32)) (extraKeys!3084 (_ BitVec 32)) (zeroValue!3094 List!24590) (minValue!3094 List!24590) (_size!5723 (_ BitVec 32)) (_keys!3133 array!9557) (_values!3116 array!9559) (_vacant!2897 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11169 0))(
  ( (Cell!11170 (v!29098 LongMapFixedSize!5672)) )
))
(declare-datatypes ((MutLongMap!2836 0))(
  ( (LongMap!2836 (underlying!5867 Cell!11169)) (MutLongMapExt!2835 (__x!16684 Int)) )
))
(declare-datatypes ((Cell!11171 0))(
  ( (Cell!11172 (v!29099 MutLongMap!2836)) )
))
(declare-datatypes ((List!24591 0))(
  ( (Nil!24507) (Cons!24507 (h!29908 C!11768) (t!197125 List!24591)) )
))
(declare-datatypes ((IArray!15899 0))(
  ( (IArray!15900 (innerList!8007 List!24591)) )
))
(declare-datatypes ((Conc!7947 0))(
  ( (Node!7947 (left!18821 Conc!7947) (right!19151 Conc!7947) (csize!16124 Int) (cheight!8158 Int)) (Leaf!11620 (xs!10889 IArray!15899) (csize!16125 Int)) (Empty!7947) )
))
(declare-datatypes ((Hashable!2750 0))(
  ( (HashableExt!2749 (__x!16685 Int)) )
))
(declare-datatypes ((MutableMap!2750 0))(
  ( (MutableMapExt!2749 (__x!16686 Int)) (HashMap!2750 (underlying!5868 Cell!11171) (hashF!4673 Hashable!2750) (_size!5724 (_ BitVec 32)) (defaultValue!2912 Int)) )
))
(declare-datatypes ((BalanceConc!15656 0))(
  ( (BalanceConc!15657 (c!340861 Conc!7947)) )
))
(declare-datatypes ((CacheFurthestNullable!858 0))(
  ( (CacheFurthestNullable!859 (cache!3131 MutableMap!2750) (totalInput!3189 BalanceConc!15656)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!858)

(declare-fun tp!665944 () Bool)

(declare-fun e!1372366 () Bool)

(declare-fun e!1372353 () Bool)

(declare-fun array_inv!3054 (array!9557) Bool)

(declare-fun array_inv!3055 (array!9559) Bool)

(assert (=> b!2146964 (= e!1372366 (and tp!665942 tp!665948 tp!665944 (array_inv!3054 (_keys!3133 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) (array_inv!3055 (_values!3116 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) e!1372353))))

(declare-fun b!2146965 () Bool)

(declare-fun lt!799361 () Int)

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(declare-fun e!1372356 () Bool)

(declare-fun z!526 () (InoxSet Context!2762))

(declare-fun lt!799359 () tuple3!3554)

(declare-fun furthestNullablePosition!96 ((InoxSet Context!2762) Int BalanceConc!15656 Int Int) Int)

(declare-fun apply!5990 (MutableMap!2750 tuple3!3554) Int)

(assert (=> b!2146965 (= e!1372356 (= (furthestNullablePosition!96 z!526 from!960 (totalInput!3189 thiss!29173) lt!799361 lastNullablePos!99) (apply!5990 (cache!3131 thiss!29173) lt!799359)))))

(declare-fun mapNonEmpty!13475 () Bool)

(declare-fun mapRes!13475 () Bool)

(declare-fun tp!665943 () Bool)

(declare-fun tp!665949 () Bool)

(assert (=> mapNonEmpty!13475 (= mapRes!13475 (and tp!665943 tp!665949))))

(declare-fun mapValue!13475 () List!24590)

(declare-fun mapRest!13475 () (Array (_ BitVec 32) List!24590))

(declare-fun mapKey!13475 () (_ BitVec 32))

(assert (=> mapNonEmpty!13475 (= (arr!4269 (_values!3116 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) (store mapRest!13475 mapKey!13475 mapValue!13475))))

(declare-fun b!2146966 () Bool)

(declare-fun e!1372357 () Bool)

(assert (=> b!2146966 (= e!1372357 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2146967 () Bool)

(declare-fun e!1372360 () Bool)

(declare-fun e!1372365 () Bool)

(assert (=> b!2146967 (= e!1372360 e!1372365)))

(declare-fun res!926245 () Bool)

(assert (=> b!2146967 (=> (not res!926245) (not e!1372365))))

(declare-fun contains!4165 (MutableMap!2750 tuple3!3554) Bool)

(assert (=> b!2146967 (= res!926245 (contains!4165 (cache!3131 thiss!29173) lt!799359))))

(assert (=> b!2146967 (= lt!799359 (tuple3!3555 z!526 from!960 lastNullablePos!99))))

(declare-fun b!2146968 () Bool)

(declare-fun e!1372355 () Bool)

(declare-fun tp!665946 () Bool)

(assert (=> b!2146968 (= e!1372355 tp!665946)))

(declare-fun b!2146969 () Bool)

(declare-fun res!926240 () Bool)

(assert (=> b!2146969 (=> (not res!926240) (not e!1372360))))

(assert (=> b!2146969 (= res!926240 e!1372357)))

(declare-fun res!926246 () Bool)

(assert (=> b!2146969 (=> res!926246 e!1372357)))

(declare-fun nullableZipper!161 ((InoxSet Context!2762)) Bool)

(assert (=> b!2146969 (= res!926246 (not (nullableZipper!161 z!526)))))

(declare-fun e!1372362 () Bool)

(declare-fun e!1372359 () Bool)

(assert (=> b!2146970 (= e!1372362 (and e!1372359 tp!665951))))

(declare-fun b!2146971 () Bool)

(declare-fun tp!665947 () Bool)

(assert (=> b!2146971 (= e!1372353 (and tp!665947 mapRes!13475))))

(declare-fun condMapEmpty!13475 () Bool)

(declare-fun mapDefault!13475 () List!24590)

(assert (=> b!2146971 (= condMapEmpty!13475 (= (arr!4269 (_values!3116 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24590)) mapDefault!13475)))))

(declare-fun b!2146972 () Bool)

(declare-fun e!1372361 () Bool)

(declare-fun e!1372363 () Bool)

(declare-fun inv!32237 (BalanceConc!15656) Bool)

(assert (=> b!2146972 (= e!1372363 (and e!1372362 (inv!32237 (totalInput!3189 thiss!29173)) e!1372361))))

(declare-fun mapIsEmpty!13475 () Bool)

(assert (=> mapIsEmpty!13475 mapRes!13475))

(declare-fun b!2146973 () Bool)

(declare-fun e!1372367 () Bool)

(declare-fun lt!799362 () MutLongMap!2836)

(get-info :version)

(assert (=> b!2146973 (= e!1372359 (and e!1372367 ((_ is LongMap!2836) lt!799362)))))

(assert (=> b!2146973 (= lt!799362 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))

(declare-fun b!2146974 () Bool)

(declare-fun tp!665950 () Bool)

(declare-fun inv!32238 (Conc!7947) Bool)

(assert (=> b!2146974 (= e!1372361 (and (inv!32238 (c!340861 (totalInput!3189 thiss!29173))) tp!665950))))

(declare-fun b!2146975 () Bool)

(declare-fun e!1372368 () Bool)

(assert (=> b!2146975 (= e!1372368 e!1372356)))

(declare-fun res!926242 () Bool)

(assert (=> b!2146975 (=> (not res!926242) (not e!1372356))))

(assert (=> b!2146975 (= res!926242 (<= from!960 lt!799361))))

(declare-fun size!19187 (BalanceConc!15656) Int)

(assert (=> b!2146975 (= lt!799361 (size!19187 (totalInput!3189 thiss!29173)))))

(declare-fun b!2146976 () Bool)

(declare-fun e!1372354 () Bool)

(assert (=> b!2146976 (= e!1372354 e!1372366)))

(declare-fun b!2146977 () Bool)

(declare-fun res!926243 () Bool)

(assert (=> b!2146977 (=> (not res!926243) (not e!1372360))))

(declare-fun validCacheMapFurthestNullable!115 (MutableMap!2750 BalanceConc!15656) Bool)

(assert (=> b!2146977 (= res!926243 (validCacheMapFurthestNullable!115 (cache!3131 thiss!29173) (totalInput!3189 thiss!29173)))))

(declare-fun setRes!16852 () Bool)

(declare-fun setElem!16852 () Context!2762)

(declare-fun tp!665945 () Bool)

(declare-fun setNonEmpty!16852 () Bool)

(declare-fun inv!32239 (Context!2762) Bool)

(assert (=> setNonEmpty!16852 (= setRes!16852 (and tp!665945 (inv!32239 setElem!16852) e!1372355))))

(declare-fun setRest!16852 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16852 (= z!526 ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16852 true) setRest!16852))))

(declare-fun b!2146978 () Bool)

(assert (=> b!2146978 (= e!1372367 e!1372354)))

(declare-fun b!2146979 () Bool)

(assert (=> b!2146979 (= e!1372365 (not e!1372364))))

(declare-fun res!926241 () Bool)

(assert (=> b!2146979 (=> res!926241 e!1372364)))

(declare-fun isEmpty!14339 (Option!4961) Bool)

(assert (=> b!2146979 (= res!926241 (isEmpty!14339 lt!799360))))

(assert (=> b!2146979 (= lt!799360 (Some!4960 (apply!5990 (cache!3131 thiss!29173) lt!799359)))))

(assert (=> b!2146979 e!1372368))

(declare-fun res!926247 () Bool)

(assert (=> b!2146979 (=> (not res!926247) (not e!1372368))))

(assert (=> b!2146979 (= res!926247 (>= from!960 0))))

(declare-datatypes ((Unit!37740 0))(
  ( (Unit!37741) )
))
(declare-fun lt!799358 () Unit!37740)

(declare-fun lemmaIfInCacheThenValid!9 (CacheFurthestNullable!858 (InoxSet Context!2762) Int Int BalanceConc!15656) Unit!37740)

(assert (=> b!2146979 (= lt!799358 (lemmaIfInCacheThenValid!9 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3189 thiss!29173)))))

(declare-fun res!926244 () Bool)

(assert (=> start!208246 (=> (not res!926244) (not e!1372360))))

(assert (=> start!208246 (= res!926244 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208246 e!1372360))

(assert (=> start!208246 true))

(declare-fun condSetEmpty!16852 () Bool)

(assert (=> start!208246 (= condSetEmpty!16852 (= z!526 ((as const (Array Context!2762 Bool)) false)))))

(assert (=> start!208246 setRes!16852))

(declare-fun inv!32240 (CacheFurthestNullable!858) Bool)

(assert (=> start!208246 (and (inv!32240 thiss!29173) e!1372363)))

(declare-fun setIsEmpty!16852 () Bool)

(assert (=> setIsEmpty!16852 setRes!16852))

(assert (= (and start!208246 res!926244) b!2146969))

(assert (= (and b!2146969 (not res!926246)) b!2146966))

(assert (= (and b!2146969 res!926240) b!2146977))

(assert (= (and b!2146977 res!926243) b!2146967))

(assert (= (and b!2146967 res!926245) b!2146979))

(assert (= (and b!2146979 res!926247) b!2146975))

(assert (= (and b!2146975 res!926242) b!2146965))

(assert (= (and b!2146979 (not res!926241)) b!2146963))

(assert (= (and start!208246 condSetEmpty!16852) setIsEmpty!16852))

(assert (= (and start!208246 (not condSetEmpty!16852)) setNonEmpty!16852))

(assert (= setNonEmpty!16852 b!2146968))

(assert (= (and b!2146971 condMapEmpty!13475) mapIsEmpty!13475))

(assert (= (and b!2146971 (not condMapEmpty!13475)) mapNonEmpty!13475))

(assert (= b!2146964 b!2146971))

(assert (= b!2146976 b!2146964))

(assert (= b!2146978 b!2146976))

(assert (= (and b!2146973 ((_ is LongMap!2836) (v!29099 (underlying!5868 (cache!3131 thiss!29173))))) b!2146978))

(assert (= b!2146970 b!2146973))

(assert (= (and b!2146972 ((_ is HashMap!2750) (cache!3131 thiss!29173))) b!2146970))

(assert (= b!2146972 b!2146974))

(assert (= start!208246 b!2146972))

(declare-fun m!2590481 () Bool)

(assert (=> b!2146967 m!2590481))

(declare-fun m!2590483 () Bool)

(assert (=> start!208246 m!2590483))

(declare-fun m!2590485 () Bool)

(assert (=> b!2146969 m!2590485))

(declare-fun m!2590487 () Bool)

(assert (=> b!2146965 m!2590487))

(declare-fun m!2590489 () Bool)

(assert (=> b!2146965 m!2590489))

(declare-fun m!2590491 () Bool)

(assert (=> setNonEmpty!16852 m!2590491))

(declare-fun m!2590493 () Bool)

(assert (=> b!2146974 m!2590493))

(declare-fun m!2590495 () Bool)

(assert (=> b!2146972 m!2590495))

(declare-fun m!2590497 () Bool)

(assert (=> mapNonEmpty!13475 m!2590497))

(declare-fun m!2590499 () Bool)

(assert (=> b!2146979 m!2590499))

(assert (=> b!2146979 m!2590489))

(declare-fun m!2590501 () Bool)

(assert (=> b!2146979 m!2590501))

(declare-fun m!2590503 () Bool)

(assert (=> b!2146977 m!2590503))

(declare-fun m!2590505 () Bool)

(assert (=> b!2146964 m!2590505))

(declare-fun m!2590507 () Bool)

(assert (=> b!2146964 m!2590507))

(declare-fun m!2590509 () Bool)

(assert (=> b!2146975 m!2590509))

(declare-fun m!2590511 () Bool)

(assert (=> b!2146963 m!2590511))

(check-sat (not b!2146974) (not b!2146968) b_and!172921 (not b!2146964) (not b!2146972) (not mapNonEmpty!13475) (not b!2146979) (not b_next!64039) (not b_next!64037) (not b!2146977) (not b!2146965) (not setNonEmpty!16852) (not b!2146969) (not b!2146967) b_and!172923 (not start!208246) (not b!2146963) (not b!2146975) (not b!2146971))
(check-sat b_and!172923 b_and!172921 (not b_next!64039) (not b_next!64037))
(get-model)

(declare-fun d!645315 () Bool)

(assert (=> d!645315 (= (isEmpty!14339 lt!799360) (not ((_ is Some!4960) lt!799360)))))

(assert (=> b!2146979 d!645315))

(declare-fun lt!799443 () (_ BitVec 64))

(declare-fun b!2146993 () Bool)

(declare-fun e!1372376 () Int)

(declare-datatypes ((Option!4962 0))(
  ( (None!4961) (Some!4961 (v!29100 tuple2!24374)) )
))
(declare-fun get!7475 (Option!4962) tuple2!24374)

(declare-fun getPair!8 (List!24590 tuple3!3554) Option!4962)

(declare-fun apply!5991 (MutLongMap!2836 (_ BitVec 64)) List!24590)

(assert (=> b!2146993 (= e!1372376 (_2!14435 (get!7475 (getPair!8 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799443) lt!799359))))))

(declare-fun hash!543 (Hashable!2750 tuple3!3554) (_ BitVec 64))

(assert (=> b!2146993 (= lt!799443 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun c!340868 () Bool)

(declare-datatypes ((tuple2!24376 0))(
  ( (tuple2!24377 (_1!14436 (_ BitVec 64)) (_2!14436 List!24590)) )
))
(declare-datatypes ((List!24592 0))(
  ( (Nil!24508) (Cons!24508 (h!29909 tuple2!24376) (t!197128 List!24592)) )
))
(declare-fun contains!4166 (List!24592 tuple2!24376) Bool)

(declare-datatypes ((ListLongMap!239 0))(
  ( (ListLongMap!240 (toList!1088 List!24592)) )
))
(declare-fun map!4920 (MutLongMap!2836) ListLongMap!239)

(assert (=> b!2146993 (= c!340868 (not (contains!4166 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))) (tuple2!24377 lt!799443 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799443)))))))

(declare-fun lt!799430 () Unit!37740)

(declare-fun e!1372375 () Unit!37740)

(assert (=> b!2146993 (= lt!799430 e!1372375)))

(declare-fun lt!799438 () Unit!37740)

(declare-fun lambda!80645 () Int)

(declare-fun forallContained!755 (List!24592 Int tuple2!24376) Unit!37740)

(assert (=> b!2146993 (= lt!799438 (forallContained!755 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))) lambda!80645 (tuple2!24377 lt!799443 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799443))))))

(declare-fun lt!799424 () ListLongMap!239)

(assert (=> b!2146993 (= lt!799424 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173)))))))

(declare-fun lt!799450 () Unit!37740)

(declare-fun lemmaGetPairGetSameValueAsMap!3 (ListLongMap!239 tuple3!3554 Int Hashable!2750) Unit!37740)

(assert (=> b!2146993 (= lt!799450 (lemmaGetPairGetSameValueAsMap!3 lt!799424 lt!799359 (_2!14435 (get!7475 (getPair!8 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799443) lt!799359))) (hashF!4673 (cache!3131 thiss!29173))))))

(declare-fun lt!799448 () Unit!37740)

(declare-fun lemmaInGenMapThenLongMapContainsHash!3 (ListLongMap!239 tuple3!3554 Hashable!2750) Unit!37740)

(assert (=> b!2146993 (= lt!799448 (lemmaInGenMapThenLongMapContainsHash!3 lt!799424 lt!799359 (hashF!4673 (cache!3131 thiss!29173))))))

(declare-fun contains!4167 (ListLongMap!239 (_ BitVec 64)) Bool)

(assert (=> b!2146993 (contains!4167 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun lt!799444 () Unit!37740)

(assert (=> b!2146993 (= lt!799444 lt!799448)))

(declare-fun lt!799431 () (_ BitVec 64))

(assert (=> b!2146993 (= lt!799431 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun lt!799452 () List!24590)

(declare-fun apply!5992 (ListLongMap!239 (_ BitVec 64)) List!24590)

(assert (=> b!2146993 (= lt!799452 (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)))))

(declare-fun lt!799439 () Unit!37740)

(declare-fun lemmaGetValueImpliesTupleContained!4 (ListLongMap!239 (_ BitVec 64) List!24590) Unit!37740)

(assert (=> b!2146993 (= lt!799439 (lemmaGetValueImpliesTupleContained!4 lt!799424 lt!799431 lt!799452))))

(assert (=> b!2146993 (contains!4166 (toList!1088 lt!799424) (tuple2!24377 lt!799431 lt!799452))))

(declare-fun lt!799433 () Unit!37740)

(assert (=> b!2146993 (= lt!799433 lt!799439)))

(declare-fun lt!799425 () Unit!37740)

(assert (=> b!2146993 (= lt!799425 (forallContained!755 (toList!1088 lt!799424) lambda!80645 (tuple2!24377 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359) (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)))))))

(declare-fun lt!799427 () Unit!37740)

(declare-fun lemmaInGenMapThenGetPairDefined!3 (ListLongMap!239 tuple3!3554 Hashable!2750) Unit!37740)

(assert (=> b!2146993 (= lt!799427 (lemmaInGenMapThenGetPairDefined!3 lt!799424 lt!799359 (hashF!4673 (cache!3131 thiss!29173))))))

(declare-fun lt!799426 () Unit!37740)

(assert (=> b!2146993 (= lt!799426 (lemmaInGenMapThenLongMapContainsHash!3 lt!799424 lt!799359 (hashF!4673 (cache!3131 thiss!29173))))))

(declare-fun lt!799429 () Unit!37740)

(assert (=> b!2146993 (= lt!799429 lt!799426)))

(declare-fun lt!799441 () (_ BitVec 64))

(assert (=> b!2146993 (= lt!799441 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun lt!799449 () List!24590)

(assert (=> b!2146993 (= lt!799449 (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)))))

(declare-fun lt!799432 () Unit!37740)

(assert (=> b!2146993 (= lt!799432 (lemmaGetValueImpliesTupleContained!4 lt!799424 lt!799441 lt!799449))))

(assert (=> b!2146993 (contains!4166 (toList!1088 lt!799424) (tuple2!24377 lt!799441 lt!799449))))

(declare-fun lt!799445 () Unit!37740)

(assert (=> b!2146993 (= lt!799445 lt!799432)))

(declare-fun lt!799437 () Unit!37740)

(assert (=> b!2146993 (= lt!799437 (forallContained!755 (toList!1088 lt!799424) lambda!80645 (tuple2!24377 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359) (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)))))))

(declare-fun isDefined!4082 (Option!4962) Bool)

(assert (=> b!2146993 (isDefined!4082 (getPair!8 (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)) lt!799359))))

(declare-fun lt!799434 () Unit!37740)

(assert (=> b!2146993 (= lt!799434 lt!799427)))

(declare-fun get!7476 (Option!4961) Int)

(declare-fun getValueByKey!37 (List!24590 tuple3!3554) Option!4961)

(declare-datatypes ((ListMap!675 0))(
  ( (ListMap!676 (toList!1089 List!24590)) )
))
(declare-fun extractMap!71 (List!24592) ListMap!675)

(assert (=> b!2146993 (= (_2!14435 (get!7475 (getPair!8 (apply!5992 lt!799424 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359)) lt!799359))) (get!7476 (getValueByKey!37 (toList!1089 (extractMap!71 (toList!1088 lt!799424))) lt!799359)))))

(declare-fun lt!799442 () Unit!37740)

(assert (=> b!2146993 (= lt!799442 lt!799450)))

(declare-fun e!1372377 () Bool)

(declare-fun b!2146994 () Bool)

(declare-fun lt!799435 () Int)

(declare-fun dynLambda!11384 (Int tuple3!3554) Int)

(assert (=> b!2146994 (= e!1372377 (= lt!799435 (dynLambda!11384 (defaultValue!2912 (cache!3131 thiss!29173)) lt!799359)))))

(declare-fun b!2146995 () Bool)

(assert (=> b!2146995 false))

(declare-fun lt!799428 () Unit!37740)

(declare-fun lt!799440 () Unit!37740)

(assert (=> b!2146995 (= lt!799428 lt!799440)))

(declare-fun lt!799423 () List!24592)

(declare-fun lt!799447 () List!24590)

(assert (=> b!2146995 (contains!4166 lt!799423 (tuple2!24377 lt!799443 lt!799447))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!9 (List!24592 (_ BitVec 64) List!24590) Unit!37740)

(assert (=> b!2146995 (= lt!799440 (lemmaGetValueByKeyImpliesContainsTuple!9 lt!799423 lt!799443 lt!799447))))

(assert (=> b!2146995 (= lt!799447 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799443))))

(assert (=> b!2146995 (= lt!799423 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))

(declare-fun lt!799436 () Unit!37740)

(declare-fun lt!799451 () Unit!37740)

(assert (=> b!2146995 (= lt!799436 lt!799451)))

(declare-fun lt!799446 () List!24592)

(declare-datatypes ((Option!4963 0))(
  ( (None!4962) (Some!4962 (v!29101 List!24590)) )
))
(declare-fun isDefined!4083 (Option!4963) Bool)

(declare-fun getValueByKey!38 (List!24592 (_ BitVec 64)) Option!4963)

(assert (=> b!2146995 (isDefined!4083 (getValueByKey!38 lt!799446 lt!799443))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!25 (List!24592 (_ BitVec 64)) Unit!37740)

(assert (=> b!2146995 (= lt!799451 (lemmaContainsKeyImpliesGetValueByKeyDefined!25 lt!799446 lt!799443))))

(assert (=> b!2146995 (= lt!799446 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))

(declare-fun Unit!37742 () Unit!37740)

(assert (=> b!2146995 (= e!1372375 Unit!37742)))

(declare-fun b!2146996 () Bool)

(declare-fun map!4921 (MutableMap!2750) ListMap!675)

(assert (=> b!2146996 (= e!1372377 (= lt!799435 (get!7476 (getValueByKey!37 (toList!1089 (map!4921 (cache!3131 thiss!29173))) lt!799359))))))

(declare-fun b!2146997 () Bool)

(declare-fun Unit!37743 () Unit!37740)

(assert (=> b!2146997 (= e!1372375 Unit!37743)))

(declare-fun d!645317 () Bool)

(assert (=> d!645317 e!1372377))

(declare-fun c!340870 () Bool)

(assert (=> d!645317 (= c!340870 (contains!4165 (cache!3131 thiss!29173) lt!799359))))

(assert (=> d!645317 (= lt!799435 e!1372376)))

(declare-fun c!340869 () Bool)

(assert (=> d!645317 (= c!340869 (not (contains!4165 (cache!3131 thiss!29173) lt!799359)))))

(declare-fun valid!2208 (MutableMap!2750) Bool)

(assert (=> d!645317 (valid!2208 (cache!3131 thiss!29173))))

(assert (=> d!645317 (= (apply!5990 (cache!3131 thiss!29173) lt!799359) lt!799435)))

(declare-fun b!2146992 () Bool)

(assert (=> b!2146992 (= e!1372376 (dynLambda!11384 (defaultValue!2912 (cache!3131 thiss!29173)) lt!799359))))

(assert (= (and d!645317 c!340869) b!2146992))

(assert (= (and d!645317 (not c!340869)) b!2146993))

(assert (= (and b!2146993 c!340868) b!2146995))

(assert (= (and b!2146993 (not c!340868)) b!2146997))

(assert (= (and d!645317 c!340870) b!2146996))

(assert (= (and d!645317 (not c!340870)) b!2146994))

(declare-fun b_lambda!70753 () Bool)

(assert (=> (not b_lambda!70753) (not b!2146994)))

(declare-fun t!197127 () Bool)

(declare-fun tb!132287 () Bool)

(assert (=> (and b!2146970 (= (defaultValue!2912 (cache!3131 thiss!29173)) (defaultValue!2912 (cache!3131 thiss!29173))) t!197127) tb!132287))

(declare-fun result!159190 () Bool)

(assert (=> tb!132287 (= result!159190 true)))

(assert (=> b!2146994 t!197127))

(declare-fun b_and!172925 () Bool)

(assert (= b_and!172923 (and (=> t!197127 result!159190) b_and!172925)))

(declare-fun b_lambda!70755 () Bool)

(assert (=> (not b_lambda!70755) (not b!2146992)))

(assert (=> b!2146992 t!197127))

(declare-fun b_and!172927 () Bool)

(assert (= b_and!172925 (and (=> t!197127 result!159190) b_and!172927)))

(declare-fun m!2590513 () Bool)

(assert (=> b!2146995 m!2590513))

(declare-fun m!2590515 () Bool)

(assert (=> b!2146995 m!2590515))

(declare-fun m!2590517 () Bool)

(assert (=> b!2146995 m!2590517))

(declare-fun m!2590519 () Bool)

(assert (=> b!2146995 m!2590519))

(assert (=> b!2146995 m!2590519))

(declare-fun m!2590521 () Bool)

(assert (=> b!2146995 m!2590521))

(declare-fun m!2590523 () Bool)

(assert (=> b!2146995 m!2590523))

(declare-fun m!2590525 () Bool)

(assert (=> b!2146995 m!2590525))

(declare-fun m!2590527 () Bool)

(assert (=> b!2146994 m!2590527))

(assert (=> d!645317 m!2590481))

(declare-fun m!2590529 () Bool)

(assert (=> d!645317 m!2590529))

(declare-fun m!2590531 () Bool)

(assert (=> b!2146993 m!2590531))

(declare-fun m!2590533 () Bool)

(assert (=> b!2146993 m!2590533))

(assert (=> b!2146993 m!2590513))

(declare-fun m!2590535 () Bool)

(assert (=> b!2146993 m!2590535))

(declare-fun m!2590537 () Bool)

(assert (=> b!2146993 m!2590537))

(declare-fun m!2590539 () Bool)

(assert (=> b!2146993 m!2590539))

(declare-fun m!2590541 () Bool)

(assert (=> b!2146993 m!2590541))

(declare-fun m!2590543 () Bool)

(assert (=> b!2146993 m!2590543))

(declare-fun m!2590545 () Bool)

(assert (=> b!2146993 m!2590545))

(assert (=> b!2146993 m!2590513))

(assert (=> b!2146993 m!2590531))

(declare-fun m!2590547 () Bool)

(assert (=> b!2146993 m!2590547))

(assert (=> b!2146993 m!2590545))

(declare-fun m!2590549 () Bool)

(assert (=> b!2146993 m!2590549))

(declare-fun m!2590551 () Bool)

(assert (=> b!2146993 m!2590551))

(assert (=> b!2146993 m!2590545))

(declare-fun m!2590553 () Bool)

(assert (=> b!2146993 m!2590553))

(declare-fun m!2590555 () Bool)

(assert (=> b!2146993 m!2590555))

(declare-fun m!2590557 () Bool)

(assert (=> b!2146993 m!2590557))

(assert (=> b!2146993 m!2590555))

(assert (=> b!2146993 m!2590537))

(declare-fun m!2590559 () Bool)

(assert (=> b!2146993 m!2590559))

(declare-fun m!2590561 () Bool)

(assert (=> b!2146993 m!2590561))

(assert (=> b!2146993 m!2590517))

(declare-fun m!2590563 () Bool)

(assert (=> b!2146993 m!2590563))

(declare-fun m!2590565 () Bool)

(assert (=> b!2146993 m!2590565))

(declare-fun m!2590567 () Bool)

(assert (=> b!2146993 m!2590567))

(declare-fun m!2590569 () Bool)

(assert (=> b!2146993 m!2590569))

(assert (=> b!2146993 m!2590549))

(assert (=> b!2146993 m!2590563))

(assert (=> b!2146993 m!2590563))

(declare-fun m!2590571 () Bool)

(assert (=> b!2146993 m!2590571))

(assert (=> b!2146992 m!2590527))

(declare-fun m!2590573 () Bool)

(assert (=> b!2146996 m!2590573))

(declare-fun m!2590575 () Bool)

(assert (=> b!2146996 m!2590575))

(assert (=> b!2146996 m!2590575))

(declare-fun m!2590577 () Bool)

(assert (=> b!2146996 m!2590577))

(assert (=> b!2146979 d!645317))

(declare-fun d!645319 () Bool)

(declare-fun e!1372382 () Bool)

(assert (=> d!645319 e!1372382))

(declare-fun res!926254 () Bool)

(assert (=> d!645319 (=> res!926254 e!1372382)))

(assert (=> d!645319 (= res!926254 (not (contains!4165 (cache!3131 thiss!29173) (tuple3!3555 z!526 from!960 lastNullablePos!99))))))

(declare-fun lt!799455 () Unit!37740)

(declare-fun choose!12699 (CacheFurthestNullable!858 (InoxSet Context!2762) Int Int BalanceConc!15656) Unit!37740)

(assert (=> d!645319 (= lt!799455 (choose!12699 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3189 thiss!29173)))))

(assert (=> d!645319 (= (totalInput!3189 thiss!29173) (totalInput!3189 thiss!29173))))

(assert (=> d!645319 (= (lemmaIfInCacheThenValid!9 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3189 thiss!29173)) lt!799455)))

(declare-fun b!2147004 () Bool)

(declare-fun e!1372383 () Bool)

(assert (=> b!2147004 (= e!1372382 e!1372383)))

(declare-fun res!926255 () Bool)

(assert (=> b!2147004 (=> (not res!926255) (not e!1372383))))

(assert (=> b!2147004 (= res!926255 (>= from!960 0))))

(declare-fun b!2147005 () Bool)

(declare-fun res!926256 () Bool)

(assert (=> b!2147005 (=> (not res!926256) (not e!1372383))))

(assert (=> b!2147005 (= res!926256 (<= from!960 (size!19187 (totalInput!3189 thiss!29173))))))

(declare-fun b!2147006 () Bool)

(assert (=> b!2147006 (= e!1372383 (= (furthestNullablePosition!96 z!526 from!960 (totalInput!3189 thiss!29173) (size!19187 (totalInput!3189 thiss!29173)) lastNullablePos!99) (apply!5990 (cache!3131 thiss!29173) (tuple3!3555 z!526 from!960 lastNullablePos!99))))))

(assert (= (and d!645319 (not res!926254)) b!2147004))

(assert (= (and b!2147004 res!926255) b!2147005))

(assert (= (and b!2147005 res!926256) b!2147006))

(declare-fun m!2590579 () Bool)

(assert (=> d!645319 m!2590579))

(declare-fun m!2590581 () Bool)

(assert (=> d!645319 m!2590581))

(assert (=> b!2147005 m!2590509))

(assert (=> b!2147006 m!2590509))

(assert (=> b!2147006 m!2590509))

(declare-fun m!2590583 () Bool)

(assert (=> b!2147006 m!2590583))

(declare-fun m!2590585 () Bool)

(assert (=> b!2147006 m!2590585))

(assert (=> b!2146979 d!645319))

(declare-fun d!645321 () Bool)

(declare-fun lambda!80648 () Int)

(declare-fun exists!721 ((InoxSet Context!2762) Int) Bool)

(assert (=> d!645321 (= (nullableZipper!161 z!526) (exists!721 z!526 lambda!80648))))

(declare-fun bs!445460 () Bool)

(assert (= bs!445460 d!645321))

(declare-fun m!2590587 () Bool)

(assert (=> bs!445460 m!2590587))

(assert (=> b!2146969 d!645321))

(declare-fun b!2147012 () Bool)

(assert (=> b!2147012 true))

(declare-fun d!645323 () Bool)

(declare-fun res!926261 () Bool)

(declare-fun e!1372386 () Bool)

(assert (=> d!645323 (=> (not res!926261) (not e!1372386))))

(assert (=> d!645323 (= res!926261 (valid!2208 (cache!3131 thiss!29173)))))

(assert (=> d!645323 (= (validCacheMapFurthestNullable!115 (cache!3131 thiss!29173) (totalInput!3189 thiss!29173)) e!1372386)))

(declare-fun b!2147011 () Bool)

(declare-fun res!926262 () Bool)

(assert (=> b!2147011 (=> (not res!926262) (not e!1372386))))

(declare-fun invariantList!313 (List!24590) Bool)

(assert (=> b!2147011 (= res!926262 (invariantList!313 (toList!1089 (map!4921 (cache!3131 thiss!29173)))))))

(declare-fun lambda!80651 () Int)

(declare-fun forall!5003 (List!24590 Int) Bool)

(assert (=> b!2147012 (= e!1372386 (forall!5003 (toList!1089 (map!4921 (cache!3131 thiss!29173))) lambda!80651))))

(assert (= (and d!645323 res!926261) b!2147011))

(assert (= (and b!2147011 res!926262) b!2147012))

(assert (=> d!645323 m!2590529))

(assert (=> b!2147011 m!2590573))

(declare-fun m!2590590 () Bool)

(assert (=> b!2147011 m!2590590))

(assert (=> b!2147012 m!2590573))

(declare-fun m!2590592 () Bool)

(assert (=> b!2147012 m!2590592))

(assert (=> b!2146977 d!645323))

(declare-fun d!645325 () Bool)

(declare-fun lambda!80654 () Int)

(declare-fun forall!5004 (List!24589 Int) Bool)

(assert (=> d!645325 (= (inv!32239 setElem!16852) (forall!5004 (exprs!1881 setElem!16852) lambda!80654))))

(declare-fun bs!445461 () Bool)

(assert (= bs!445461 d!645325))

(declare-fun m!2590594 () Bool)

(assert (=> bs!445461 m!2590594))

(assert (=> setNonEmpty!16852 d!645325))

(declare-fun bs!445462 () Bool)

(declare-fun b!2147047 () Bool)

(assert (= bs!445462 (and b!2147047 b!2146993)))

(declare-fun lambda!80657 () Int)

(assert (=> bs!445462 (= lambda!80657 lambda!80645)))

(declare-fun b!2147037 () Bool)

(declare-fun e!1372402 () Bool)

(declare-fun call!128892 () Bool)

(assert (=> b!2147037 (= e!1372402 call!128892)))

(declare-fun d!645327 () Bool)

(declare-fun lt!799509 () Bool)

(declare-fun contains!4168 (ListMap!675 tuple3!3554) Bool)

(assert (=> d!645327 (= lt!799509 (contains!4168 (map!4921 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun e!1372401 () Bool)

(assert (=> d!645327 (= lt!799509 e!1372401)))

(declare-fun res!926269 () Bool)

(assert (=> d!645327 (=> (not res!926269) (not e!1372401))))

(declare-fun lt!799501 () (_ BitVec 64))

(declare-fun contains!4169 (MutLongMap!2836 (_ BitVec 64)) Bool)

(assert (=> d!645327 (= res!926269 (contains!4169 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501))))

(declare-fun lt!799506 () Unit!37740)

(declare-fun e!1372403 () Unit!37740)

(assert (=> d!645327 (= lt!799506 e!1372403)))

(declare-fun c!340883 () Bool)

(assert (=> d!645327 (= c!340883 (contains!4168 (extractMap!71 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173)))))) lt!799359))))

(declare-fun lt!799496 () Unit!37740)

(declare-fun e!1372404 () Unit!37740)

(assert (=> d!645327 (= lt!799496 e!1372404)))

(declare-fun c!340881 () Bool)

(assert (=> d!645327 (= c!340881 (contains!4169 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501))))

(assert (=> d!645327 (= lt!799501 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(assert (=> d!645327 (valid!2208 (cache!3131 thiss!29173))))

(assert (=> d!645327 (= (contains!4165 (cache!3131 thiss!29173) lt!799359) lt!799509)))

(declare-fun bm!128884 () Bool)

(declare-fun call!128891 () (_ BitVec 64))

(declare-fun call!128893 () ListLongMap!239)

(declare-fun call!128894 () List!24590)

(declare-fun lt!799515 () ListLongMap!239)

(assert (=> bm!128884 (= call!128894 (apply!5992 (ite c!340883 lt!799515 call!128893) call!128891))))

(declare-fun b!2147038 () Bool)

(declare-fun e!1372406 () Unit!37740)

(declare-fun Unit!37744 () Unit!37740)

(assert (=> b!2147038 (= e!1372406 Unit!37744)))

(declare-fun b!2147039 () Bool)

(assert (=> b!2147039 false))

(declare-fun lt!799498 () Unit!37740)

(declare-fun lt!799497 () Unit!37740)

(assert (=> b!2147039 (= lt!799498 lt!799497)))

(declare-fun lt!799502 () List!24592)

(declare-fun lt!799499 () List!24590)

(assert (=> b!2147039 (contains!4166 lt!799502 (tuple2!24377 lt!799501 lt!799499))))

(assert (=> b!2147039 (= lt!799497 (lemmaGetValueByKeyImpliesContainsTuple!9 lt!799502 lt!799501 lt!799499))))

(assert (=> b!2147039 (= lt!799499 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501))))

(assert (=> b!2147039 (= lt!799502 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))

(declare-fun lt!799512 () Unit!37740)

(declare-fun lt!799507 () Unit!37740)

(assert (=> b!2147039 (= lt!799512 lt!799507)))

(declare-fun lt!799513 () List!24592)

(assert (=> b!2147039 (isDefined!4083 (getValueByKey!38 lt!799513 lt!799501))))

(assert (=> b!2147039 (= lt!799507 (lemmaContainsKeyImpliesGetValueByKeyDefined!25 lt!799513 lt!799501))))

(assert (=> b!2147039 (= lt!799513 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))

(declare-fun lt!799508 () Unit!37740)

(declare-fun lt!799505 () Unit!37740)

(assert (=> b!2147039 (= lt!799508 lt!799505)))

(declare-fun lt!799503 () List!24592)

(declare-fun containsKey!44 (List!24592 (_ BitVec 64)) Bool)

(assert (=> b!2147039 (containsKey!44 lt!799503 lt!799501)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!9 (List!24592 (_ BitVec 64)) Unit!37740)

(assert (=> b!2147039 (= lt!799505 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!9 lt!799503 lt!799501))))

(assert (=> b!2147039 (= lt!799503 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))

(declare-fun Unit!37745 () Unit!37740)

(assert (=> b!2147039 (= e!1372406 Unit!37745)))

(declare-fun bm!128885 () Bool)

(assert (=> bm!128885 (= call!128893 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173)))))))

(declare-fun bm!128886 () Bool)

(declare-fun call!128890 () Bool)

(assert (=> bm!128886 (= call!128890 (contains!4167 (ite c!340883 lt!799515 call!128893) call!128891))))

(declare-fun b!2147040 () Bool)

(declare-fun e!1372405 () Unit!37740)

(assert (=> b!2147040 (= e!1372403 e!1372405)))

(declare-fun res!926271 () Bool)

(assert (=> b!2147040 (= res!926271 call!128890)))

(declare-fun e!1372407 () Bool)

(assert (=> b!2147040 (=> (not res!926271) (not e!1372407))))

(declare-fun c!340884 () Bool)

(assert (=> b!2147040 (= c!340884 e!1372407)))

(declare-fun b!2147041 () Bool)

(declare-fun Unit!37746 () Unit!37740)

(assert (=> b!2147041 (= e!1372404 Unit!37746)))

(declare-fun bm!128887 () Bool)

(declare-fun call!128889 () Option!4962)

(assert (=> bm!128887 (= call!128892 (isDefined!4082 call!128889))))

(declare-fun b!2147042 () Bool)

(assert (=> b!2147042 false))

(declare-fun lt!799514 () Unit!37740)

(declare-fun lt!799511 () Unit!37740)

(assert (=> b!2147042 (= lt!799514 lt!799511)))

(declare-fun lt!799510 () ListLongMap!239)

(assert (=> b!2147042 (contains!4168 (extractMap!71 (toList!1088 lt!799510)) lt!799359)))

(declare-fun lemmaInLongMapThenInGenericMap!8 (ListLongMap!239 tuple3!3554 Hashable!2750) Unit!37740)

(assert (=> b!2147042 (= lt!799511 (lemmaInLongMapThenInGenericMap!8 lt!799510 lt!799359 (hashF!4673 (cache!3131 thiss!29173))))))

(assert (=> b!2147042 (= lt!799510 call!128893)))

(declare-fun Unit!37747 () Unit!37740)

(assert (=> b!2147042 (= e!1372405 Unit!37747)))

(declare-fun b!2147043 () Bool)

(assert (=> b!2147043 (= e!1372401 (isDefined!4082 (getPair!8 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501) lt!799359)))))

(declare-fun bm!128888 () Bool)

(assert (=> bm!128888 (= call!128891 (hash!543 (hashF!4673 (cache!3131 thiss!29173)) lt!799359))))

(declare-fun b!2147044 () Bool)

(declare-fun lt!799504 () Unit!37740)

(assert (=> b!2147044 (= e!1372403 lt!799504)))

(assert (=> b!2147044 (= lt!799515 call!128893)))

(declare-fun lemmaInGenericMapThenInLongMap!8 (ListLongMap!239 tuple3!3554 Hashable!2750) Unit!37740)

(assert (=> b!2147044 (= lt!799504 (lemmaInGenericMapThenInLongMap!8 lt!799515 lt!799359 (hashF!4673 (cache!3131 thiss!29173))))))

(declare-fun res!926270 () Bool)

(assert (=> b!2147044 (= res!926270 call!128890)))

(assert (=> b!2147044 (=> (not res!926270) (not e!1372402))))

(assert (=> b!2147044 e!1372402))

(declare-fun b!2147045 () Bool)

(declare-fun Unit!37748 () Unit!37740)

(assert (=> b!2147045 (= e!1372405 Unit!37748)))

(declare-fun b!2147046 () Bool)

(assert (=> b!2147046 (= e!1372407 call!128892)))

(declare-fun bm!128889 () Bool)

(assert (=> bm!128889 (= call!128889 (getPair!8 call!128894 lt!799359))))

(assert (=> b!2147047 (= e!1372404 (forallContained!755 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))) lambda!80657 (tuple2!24377 lt!799501 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501))))))

(declare-fun c!340882 () Bool)

(assert (=> b!2147047 (= c!340882 (not (contains!4166 (toList!1088 (map!4920 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))) (tuple2!24377 lt!799501 (apply!5991 (v!29099 (underlying!5868 (cache!3131 thiss!29173))) lt!799501)))))))

(declare-fun lt!799500 () Unit!37740)

(assert (=> b!2147047 (= lt!799500 e!1372406)))

(assert (= (and d!645327 c!340881) b!2147047))

(assert (= (and d!645327 (not c!340881)) b!2147041))

(assert (= (and b!2147047 c!340882) b!2147039))

(assert (= (and b!2147047 (not c!340882)) b!2147038))

(assert (= (and d!645327 c!340883) b!2147044))

(assert (= (and d!645327 (not c!340883)) b!2147040))

(assert (= (and b!2147044 res!926270) b!2147037))

(assert (= (and b!2147040 res!926271) b!2147046))

(assert (= (and b!2147040 c!340884) b!2147042))

(assert (= (and b!2147040 (not c!340884)) b!2147045))

(assert (= (or b!2147044 b!2147037 b!2147040 b!2147046) bm!128888))

(assert (= (or b!2147044 b!2147040 b!2147046 b!2147042) bm!128885))

(assert (= (or b!2147037 b!2147046) bm!128884))

(assert (= (or b!2147044 b!2147040) bm!128886))

(assert (= (or b!2147037 b!2147046) bm!128889))

(assert (= (or b!2147037 b!2147046) bm!128887))

(assert (= (and d!645327 res!926269) b!2147043))

(assert (=> bm!128885 m!2590517))

(declare-fun m!2590596 () Bool)

(assert (=> bm!128887 m!2590596))

(declare-fun m!2590598 () Bool)

(assert (=> b!2147042 m!2590598))

(assert (=> b!2147042 m!2590598))

(declare-fun m!2590600 () Bool)

(assert (=> b!2147042 m!2590600))

(declare-fun m!2590602 () Bool)

(assert (=> b!2147042 m!2590602))

(assert (=> b!2147047 m!2590517))

(declare-fun m!2590604 () Bool)

(assert (=> b!2147047 m!2590604))

(declare-fun m!2590606 () Bool)

(assert (=> b!2147047 m!2590606))

(declare-fun m!2590608 () Bool)

(assert (=> b!2147047 m!2590608))

(declare-fun m!2590610 () Bool)

(assert (=> bm!128889 m!2590610))

(declare-fun m!2590612 () Bool)

(assert (=> bm!128884 m!2590612))

(assert (=> bm!128888 m!2590545))

(declare-fun m!2590614 () Bool)

(assert (=> bm!128886 m!2590614))

(assert (=> b!2147043 m!2590604))

(assert (=> b!2147043 m!2590604))

(declare-fun m!2590616 () Bool)

(assert (=> b!2147043 m!2590616))

(assert (=> b!2147043 m!2590616))

(declare-fun m!2590618 () Bool)

(assert (=> b!2147043 m!2590618))

(assert (=> d!645327 m!2590573))

(assert (=> d!645327 m!2590573))

(declare-fun m!2590620 () Bool)

(assert (=> d!645327 m!2590620))

(declare-fun m!2590622 () Bool)

(assert (=> d!645327 m!2590622))

(declare-fun m!2590624 () Bool)

(assert (=> d!645327 m!2590624))

(assert (=> d!645327 m!2590529))

(assert (=> d!645327 m!2590545))

(assert (=> d!645327 m!2590624))

(declare-fun m!2590626 () Bool)

(assert (=> d!645327 m!2590626))

(assert (=> d!645327 m!2590517))

(declare-fun m!2590628 () Bool)

(assert (=> b!2147044 m!2590628))

(assert (=> b!2147039 m!2590604))

(declare-fun m!2590630 () Bool)

(assert (=> b!2147039 m!2590630))

(declare-fun m!2590632 () Bool)

(assert (=> b!2147039 m!2590632))

(declare-fun m!2590634 () Bool)

(assert (=> b!2147039 m!2590634))

(declare-fun m!2590636 () Bool)

(assert (=> b!2147039 m!2590636))

(declare-fun m!2590638 () Bool)

(assert (=> b!2147039 m!2590638))

(assert (=> b!2147039 m!2590517))

(declare-fun m!2590640 () Bool)

(assert (=> b!2147039 m!2590640))

(assert (=> b!2147039 m!2590636))

(declare-fun m!2590642 () Bool)

(assert (=> b!2147039 m!2590642))

(assert (=> b!2146967 d!645327))

(declare-fun d!645329 () Bool)

(declare-fun lt!799518 () Int)

(declare-fun size!19188 (List!24591) Int)

(declare-fun list!9557 (BalanceConc!15656) List!24591)

(assert (=> d!645329 (= lt!799518 (size!19188 (list!9557 (totalInput!3189 thiss!29173))))))

(declare-fun size!19189 (Conc!7947) Int)

(assert (=> d!645329 (= lt!799518 (size!19189 (c!340861 (totalInput!3189 thiss!29173))))))

(assert (=> d!645329 (= (size!19187 (totalInput!3189 thiss!29173)) lt!799518)))

(declare-fun bs!445463 () Bool)

(assert (= bs!445463 d!645329))

(declare-fun m!2590644 () Bool)

(assert (=> bs!445463 m!2590644))

(assert (=> bs!445463 m!2590644))

(declare-fun m!2590646 () Bool)

(assert (=> bs!445463 m!2590646))

(declare-fun m!2590648 () Bool)

(assert (=> bs!445463 m!2590648))

(assert (=> b!2146975 d!645329))

(declare-fun d!645331 () Bool)

(declare-fun c!340887 () Bool)

(assert (=> d!645331 (= c!340887 ((_ is Node!7947) (c!340861 (totalInput!3189 thiss!29173))))))

(declare-fun e!1372412 () Bool)

(assert (=> d!645331 (= (inv!32238 (c!340861 (totalInput!3189 thiss!29173))) e!1372412)))

(declare-fun b!2147054 () Bool)

(declare-fun inv!32241 (Conc!7947) Bool)

(assert (=> b!2147054 (= e!1372412 (inv!32241 (c!340861 (totalInput!3189 thiss!29173))))))

(declare-fun b!2147055 () Bool)

(declare-fun e!1372413 () Bool)

(assert (=> b!2147055 (= e!1372412 e!1372413)))

(declare-fun res!926274 () Bool)

(assert (=> b!2147055 (= res!926274 (not ((_ is Leaf!11620) (c!340861 (totalInput!3189 thiss!29173)))))))

(assert (=> b!2147055 (=> res!926274 e!1372413)))

(declare-fun b!2147056 () Bool)

(declare-fun inv!32242 (Conc!7947) Bool)

(assert (=> b!2147056 (= e!1372413 (inv!32242 (c!340861 (totalInput!3189 thiss!29173))))))

(assert (= (and d!645331 c!340887) b!2147054))

(assert (= (and d!645331 (not c!340887)) b!2147055))

(assert (= (and b!2147055 (not res!926274)) b!2147056))

(declare-fun m!2590650 () Bool)

(assert (=> b!2147054 m!2590650))

(declare-fun m!2590652 () Bool)

(assert (=> b!2147056 m!2590652))

(assert (=> b!2146974 d!645331))

(declare-fun d!645333 () Bool)

(declare-fun res!926277 () Bool)

(declare-fun e!1372416 () Bool)

(assert (=> d!645333 (=> (not res!926277) (not e!1372416))))

(assert (=> d!645333 (= res!926277 ((_ is HashMap!2750) (cache!3131 thiss!29173)))))

(assert (=> d!645333 (= (inv!32240 thiss!29173) e!1372416)))

(declare-fun b!2147059 () Bool)

(assert (=> b!2147059 (= e!1372416 (validCacheMapFurthestNullable!115 (cache!3131 thiss!29173) (totalInput!3189 thiss!29173)))))

(assert (= (and d!645333 res!926277) b!2147059))

(assert (=> b!2147059 m!2590503))

(assert (=> start!208246 d!645333))

(declare-fun d!645335 () Bool)

(assert (=> d!645335 (= (array_inv!3054 (_keys!3133 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) (bvsge (size!19185 (_keys!3133 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146964 d!645335))

(declare-fun d!645337 () Bool)

(assert (=> d!645337 (= (array_inv!3055 (_values!3116 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) (bvsge (size!19186 (_values!3116 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146964 d!645337))

(declare-fun lt!799523 () (InoxSet Context!2762))

(declare-fun e!1372425 () Int)

(declare-fun b!2147070 () Bool)

(declare-fun e!1372424 () Int)

(assert (=> b!2147070 (= e!1372424 (furthestNullablePosition!96 lt!799523 (+ from!960 1) (totalInput!3189 thiss!29173) lt!799361 e!1372425))))

(declare-fun derivationStepZipper!102 ((InoxSet Context!2762) C!11768) (InoxSet Context!2762))

(declare-fun apply!5993 (BalanceConc!15656 Int) C!11768)

(assert (=> b!2147070 (= lt!799523 (derivationStepZipper!102 z!526 (apply!5993 (totalInput!3189 thiss!29173) from!960)))))

(declare-fun c!340892 () Bool)

(assert (=> b!2147070 (= c!340892 (nullableZipper!161 lt!799523))))

(declare-fun b!2147071 () Bool)

(assert (=> b!2147071 (= e!1372425 from!960)))

(declare-fun d!645339 () Bool)

(declare-fun lt!799524 () Int)

(assert (=> d!645339 (and (>= lt!799524 (- 1)) (< lt!799524 lt!799361) (>= lt!799524 lastNullablePos!99) (or (= lt!799524 lastNullablePos!99) (>= lt!799524 from!960)))))

(assert (=> d!645339 (= lt!799524 e!1372424)))

(declare-fun c!340893 () Bool)

(declare-fun e!1372423 () Bool)

(assert (=> d!645339 (= c!340893 e!1372423)))

(declare-fun res!926280 () Bool)

(assert (=> d!645339 (=> res!926280 e!1372423)))

(assert (=> d!645339 (= res!926280 (= from!960 lt!799361))))

(assert (=> d!645339 (and (>= from!960 0) (<= from!960 lt!799361))))

(assert (=> d!645339 (= (furthestNullablePosition!96 z!526 from!960 (totalInput!3189 thiss!29173) lt!799361 lastNullablePos!99) lt!799524)))

(declare-fun b!2147072 () Bool)

(assert (=> b!2147072 (= e!1372424 lastNullablePos!99)))

(declare-fun b!2147073 () Bool)

(declare-fun lostCauseZipper!135 ((InoxSet Context!2762)) Bool)

(assert (=> b!2147073 (= e!1372423 (lostCauseZipper!135 z!526))))

(declare-fun b!2147074 () Bool)

(assert (=> b!2147074 (= e!1372425 lastNullablePos!99)))

(assert (= (and d!645339 (not res!926280)) b!2147073))

(assert (= (and d!645339 c!340893) b!2147072))

(assert (= (and d!645339 (not c!340893)) b!2147070))

(assert (= (and b!2147070 c!340892) b!2147071))

(assert (= (and b!2147070 (not c!340892)) b!2147074))

(declare-fun m!2590654 () Bool)

(assert (=> b!2147070 m!2590654))

(declare-fun m!2590656 () Bool)

(assert (=> b!2147070 m!2590656))

(assert (=> b!2147070 m!2590656))

(declare-fun m!2590658 () Bool)

(assert (=> b!2147070 m!2590658))

(declare-fun m!2590660 () Bool)

(assert (=> b!2147070 m!2590660))

(declare-fun m!2590662 () Bool)

(assert (=> b!2147073 m!2590662))

(assert (=> b!2146965 d!645339))

(assert (=> b!2146965 d!645317))

(declare-fun d!645341 () Bool)

(assert (=> d!645341 (= (isDefined!4081 lt!799360) (not (isEmpty!14339 lt!799360)))))

(declare-fun bs!445464 () Bool)

(assert (= bs!445464 d!645341))

(assert (=> bs!445464 m!2590499))

(assert (=> b!2146963 d!645341))

(declare-fun d!645343 () Bool)

(declare-fun isBalanced!2467 (Conc!7947) Bool)

(assert (=> d!645343 (= (inv!32237 (totalInput!3189 thiss!29173)) (isBalanced!2467 (c!340861 (totalInput!3189 thiss!29173))))))

(declare-fun bs!445465 () Bool)

(assert (= bs!445465 d!645343))

(declare-fun m!2590664 () Bool)

(assert (=> bs!445465 m!2590664))

(assert (=> b!2146972 d!645343))

(declare-fun b!2147081 () Bool)

(declare-fun e!1372431 () Bool)

(declare-fun setRes!16855 () Bool)

(declare-fun tp!665959 () Bool)

(assert (=> b!2147081 (= e!1372431 (and setRes!16855 tp!665959))))

(declare-fun condSetEmpty!16855 () Bool)

(assert (=> b!2147081 (= condSetEmpty!16855 (= (_1!14434 (_1!14435 (h!29907 mapDefault!13475))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun e!1372430 () Bool)

(declare-fun tp!665958 () Bool)

(declare-fun setNonEmpty!16855 () Bool)

(declare-fun setElem!16855 () Context!2762)

(assert (=> setNonEmpty!16855 (= setRes!16855 (and tp!665958 (inv!32239 setElem!16855) e!1372430))))

(declare-fun setRest!16855 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16855 (= (_1!14434 (_1!14435 (h!29907 mapDefault!13475))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16855 true) setRest!16855))))

(declare-fun b!2147082 () Bool)

(declare-fun tp!665960 () Bool)

(assert (=> b!2147082 (= e!1372430 tp!665960)))

(assert (=> b!2146971 (= tp!665947 e!1372431)))

(declare-fun setIsEmpty!16855 () Bool)

(assert (=> setIsEmpty!16855 setRes!16855))

(assert (= (and b!2147081 condSetEmpty!16855) setIsEmpty!16855))

(assert (= (and b!2147081 (not condSetEmpty!16855)) setNonEmpty!16855))

(assert (= setNonEmpty!16855 b!2147082))

(assert (= (and b!2146971 ((_ is Cons!24506) mapDefault!13475)) b!2147081))

(declare-fun m!2590666 () Bool)

(assert (=> setNonEmpty!16855 m!2590666))

(declare-fun tp!665967 () Bool)

(declare-fun e!1372436 () Bool)

(declare-fun b!2147091 () Bool)

(declare-fun tp!665969 () Bool)

(assert (=> b!2147091 (= e!1372436 (and (inv!32238 (left!18821 (c!340861 (totalInput!3189 thiss!29173)))) tp!665967 (inv!32238 (right!19151 (c!340861 (totalInput!3189 thiss!29173)))) tp!665969))))

(declare-fun b!2147093 () Bool)

(declare-fun e!1372437 () Bool)

(declare-fun tp!665968 () Bool)

(assert (=> b!2147093 (= e!1372437 tp!665968)))

(declare-fun b!2147092 () Bool)

(declare-fun inv!32243 (IArray!15899) Bool)

(assert (=> b!2147092 (= e!1372436 (and (inv!32243 (xs!10889 (c!340861 (totalInput!3189 thiss!29173)))) e!1372437))))

(assert (=> b!2146974 (= tp!665950 (and (inv!32238 (c!340861 (totalInput!3189 thiss!29173))) e!1372436))))

(assert (= (and b!2146974 ((_ is Node!7947) (c!340861 (totalInput!3189 thiss!29173)))) b!2147091))

(assert (= b!2147092 b!2147093))

(assert (= (and b!2146974 ((_ is Leaf!11620) (c!340861 (totalInput!3189 thiss!29173)))) b!2147092))

(declare-fun m!2590668 () Bool)

(assert (=> b!2147091 m!2590668))

(declare-fun m!2590670 () Bool)

(assert (=> b!2147091 m!2590670))

(declare-fun m!2590672 () Bool)

(assert (=> b!2147092 m!2590672))

(assert (=> b!2146974 m!2590493))

(declare-fun mapNonEmpty!13478 () Bool)

(declare-fun mapRes!13478 () Bool)

(declare-fun tp!665984 () Bool)

(declare-fun e!1372447 () Bool)

(assert (=> mapNonEmpty!13478 (= mapRes!13478 (and tp!665984 e!1372447))))

(declare-fun mapKey!13478 () (_ BitVec 32))

(declare-fun mapRest!13478 () (Array (_ BitVec 32) List!24590))

(declare-fun mapValue!13478 () List!24590)

(assert (=> mapNonEmpty!13478 (= mapRest!13475 (store mapRest!13478 mapKey!13478 mapValue!13478))))

(declare-fun b!2147104 () Bool)

(declare-fun setRes!16860 () Bool)

(declare-fun tp!665987 () Bool)

(assert (=> b!2147104 (= e!1372447 (and setRes!16860 tp!665987))))

(declare-fun condSetEmpty!16860 () Bool)

(assert (=> b!2147104 (= condSetEmpty!16860 (= (_1!14434 (_1!14435 (h!29907 mapValue!13478))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun setIsEmpty!16860 () Bool)

(assert (=> setIsEmpty!16860 setRes!16860))

(declare-fun mapIsEmpty!13478 () Bool)

(assert (=> mapIsEmpty!13478 mapRes!13478))

(declare-fun b!2147105 () Bool)

(declare-fun e!1372449 () Bool)

(declare-fun tp!665989 () Bool)

(assert (=> b!2147105 (= e!1372449 tp!665989)))

(declare-fun setElem!16861 () Context!2762)

(declare-fun tp!665990 () Bool)

(declare-fun setRes!16861 () Bool)

(declare-fun setNonEmpty!16860 () Bool)

(assert (=> setNonEmpty!16860 (= setRes!16861 (and tp!665990 (inv!32239 setElem!16861) e!1372449))))

(declare-fun mapDefault!13478 () List!24590)

(declare-fun setRest!16860 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16860 (= (_1!14434 (_1!14435 (h!29907 mapDefault!13478))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16861 true) setRest!16860))))

(declare-fun condMapEmpty!13478 () Bool)

(assert (=> mapNonEmpty!13475 (= condMapEmpty!13478 (= mapRest!13475 ((as const (Array (_ BitVec 32) List!24590)) mapDefault!13478)))))

(declare-fun e!1372446 () Bool)

(assert (=> mapNonEmpty!13475 (= tp!665943 (and e!1372446 mapRes!13478))))

(declare-fun b!2147106 () Bool)

(declare-fun tp!665986 () Bool)

(assert (=> b!2147106 (= e!1372446 (and setRes!16861 tp!665986))))

(declare-fun condSetEmpty!16861 () Bool)

(assert (=> b!2147106 (= condSetEmpty!16861 (= (_1!14434 (_1!14435 (h!29907 mapDefault!13478))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun setElem!16860 () Context!2762)

(declare-fun tp!665988 () Bool)

(declare-fun e!1372448 () Bool)

(declare-fun setNonEmpty!16861 () Bool)

(assert (=> setNonEmpty!16861 (= setRes!16860 (and tp!665988 (inv!32239 setElem!16860) e!1372448))))

(declare-fun setRest!16861 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16861 (= (_1!14434 (_1!14435 (h!29907 mapValue!13478))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16860 true) setRest!16861))))

(declare-fun setIsEmpty!16861 () Bool)

(assert (=> setIsEmpty!16861 setRes!16861))

(declare-fun b!2147107 () Bool)

(declare-fun tp!665985 () Bool)

(assert (=> b!2147107 (= e!1372448 tp!665985)))

(assert (= (and mapNonEmpty!13475 condMapEmpty!13478) mapIsEmpty!13478))

(assert (= (and mapNonEmpty!13475 (not condMapEmpty!13478)) mapNonEmpty!13478))

(assert (= (and b!2147104 condSetEmpty!16860) setIsEmpty!16860))

(assert (= (and b!2147104 (not condSetEmpty!16860)) setNonEmpty!16861))

(assert (= setNonEmpty!16861 b!2147107))

(assert (= (and mapNonEmpty!13478 ((_ is Cons!24506) mapValue!13478)) b!2147104))

(assert (= (and b!2147106 condSetEmpty!16861) setIsEmpty!16861))

(assert (= (and b!2147106 (not condSetEmpty!16861)) setNonEmpty!16860))

(assert (= setNonEmpty!16860 b!2147105))

(assert (= (and mapNonEmpty!13475 ((_ is Cons!24506) mapDefault!13478)) b!2147106))

(declare-fun m!2590674 () Bool)

(assert (=> mapNonEmpty!13478 m!2590674))

(declare-fun m!2590676 () Bool)

(assert (=> setNonEmpty!16860 m!2590676))

(declare-fun m!2590678 () Bool)

(assert (=> setNonEmpty!16861 m!2590678))

(declare-fun b!2147108 () Bool)

(declare-fun e!1372451 () Bool)

(declare-fun setRes!16862 () Bool)

(declare-fun tp!665992 () Bool)

(assert (=> b!2147108 (= e!1372451 (and setRes!16862 tp!665992))))

(declare-fun condSetEmpty!16862 () Bool)

(assert (=> b!2147108 (= condSetEmpty!16862 (= (_1!14434 (_1!14435 (h!29907 mapValue!13475))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun e!1372450 () Bool)

(declare-fun tp!665991 () Bool)

(declare-fun setElem!16862 () Context!2762)

(declare-fun setNonEmpty!16862 () Bool)

(assert (=> setNonEmpty!16862 (= setRes!16862 (and tp!665991 (inv!32239 setElem!16862) e!1372450))))

(declare-fun setRest!16862 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16862 (= (_1!14434 (_1!14435 (h!29907 mapValue!13475))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16862 true) setRest!16862))))

(declare-fun b!2147109 () Bool)

(declare-fun tp!665993 () Bool)

(assert (=> b!2147109 (= e!1372450 tp!665993)))

(assert (=> mapNonEmpty!13475 (= tp!665949 e!1372451)))

(declare-fun setIsEmpty!16862 () Bool)

(assert (=> setIsEmpty!16862 setRes!16862))

(assert (= (and b!2147108 condSetEmpty!16862) setIsEmpty!16862))

(assert (= (and b!2147108 (not condSetEmpty!16862)) setNonEmpty!16862))

(assert (= setNonEmpty!16862 b!2147109))

(assert (= (and mapNonEmpty!13475 ((_ is Cons!24506) mapValue!13475)) b!2147108))

(declare-fun m!2590680 () Bool)

(assert (=> setNonEmpty!16862 m!2590680))

(declare-fun b!2147110 () Bool)

(declare-fun e!1372453 () Bool)

(declare-fun setRes!16863 () Bool)

(declare-fun tp!665995 () Bool)

(assert (=> b!2147110 (= e!1372453 (and setRes!16863 tp!665995))))

(declare-fun condSetEmpty!16863 () Bool)

(assert (=> b!2147110 (= condSetEmpty!16863 (= (_1!14434 (_1!14435 (h!29907 (zeroValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun setElem!16863 () Context!2762)

(declare-fun tp!665994 () Bool)

(declare-fun setNonEmpty!16863 () Bool)

(declare-fun e!1372452 () Bool)

(assert (=> setNonEmpty!16863 (= setRes!16863 (and tp!665994 (inv!32239 setElem!16863) e!1372452))))

(declare-fun setRest!16863 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16863 (= (_1!14434 (_1!14435 (h!29907 (zeroValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16863 true) setRest!16863))))

(declare-fun b!2147111 () Bool)

(declare-fun tp!665996 () Bool)

(assert (=> b!2147111 (= e!1372452 tp!665996)))

(assert (=> b!2146964 (= tp!665948 e!1372453)))

(declare-fun setIsEmpty!16863 () Bool)

(assert (=> setIsEmpty!16863 setRes!16863))

(assert (= (and b!2147110 condSetEmpty!16863) setIsEmpty!16863))

(assert (= (and b!2147110 (not condSetEmpty!16863)) setNonEmpty!16863))

(assert (= setNonEmpty!16863 b!2147111))

(assert (= (and b!2146964 ((_ is Cons!24506) (zeroValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173)))))))) b!2147110))

(declare-fun m!2590682 () Bool)

(assert (=> setNonEmpty!16863 m!2590682))

(declare-fun b!2147112 () Bool)

(declare-fun e!1372455 () Bool)

(declare-fun setRes!16864 () Bool)

(declare-fun tp!665998 () Bool)

(assert (=> b!2147112 (= e!1372455 (and setRes!16864 tp!665998))))

(declare-fun condSetEmpty!16864 () Bool)

(assert (=> b!2147112 (= condSetEmpty!16864 (= (_1!14434 (_1!14435 (h!29907 (minValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))) ((as const (Array Context!2762 Bool)) false)))))

(declare-fun setElem!16864 () Context!2762)

(declare-fun e!1372454 () Bool)

(declare-fun setNonEmpty!16864 () Bool)

(declare-fun tp!665997 () Bool)

(assert (=> setNonEmpty!16864 (= setRes!16864 (and tp!665997 (inv!32239 setElem!16864) e!1372454))))

(declare-fun setRest!16864 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16864 (= (_1!14434 (_1!14435 (h!29907 (minValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16864 true) setRest!16864))))

(declare-fun b!2147113 () Bool)

(declare-fun tp!665999 () Bool)

(assert (=> b!2147113 (= e!1372454 tp!665999)))

(assert (=> b!2146964 (= tp!665944 e!1372455)))

(declare-fun setIsEmpty!16864 () Bool)

(assert (=> setIsEmpty!16864 setRes!16864))

(assert (= (and b!2147112 condSetEmpty!16864) setIsEmpty!16864))

(assert (= (and b!2147112 (not condSetEmpty!16864)) setNonEmpty!16864))

(assert (= setNonEmpty!16864 b!2147113))

(assert (= (and b!2146964 ((_ is Cons!24506) (minValue!3094 (v!29098 (underlying!5867 (v!29099 (underlying!5868 (cache!3131 thiss!29173)))))))) b!2147112))

(declare-fun m!2590684 () Bool)

(assert (=> setNonEmpty!16864 m!2590684))

(declare-fun condSetEmpty!16867 () Bool)

(assert (=> setNonEmpty!16852 (= condSetEmpty!16867 (= setRest!16852 ((as const (Array Context!2762 Bool)) false)))))

(declare-fun setRes!16867 () Bool)

(assert (=> setNonEmpty!16852 (= tp!665945 setRes!16867)))

(declare-fun setIsEmpty!16867 () Bool)

(assert (=> setIsEmpty!16867 setRes!16867))

(declare-fun tp!666004 () Bool)

(declare-fun e!1372458 () Bool)

(declare-fun setNonEmpty!16867 () Bool)

(declare-fun setElem!16867 () Context!2762)

(assert (=> setNonEmpty!16867 (= setRes!16867 (and tp!666004 (inv!32239 setElem!16867) e!1372458))))

(declare-fun setRest!16867 () (InoxSet Context!2762))

(assert (=> setNonEmpty!16867 (= setRest!16852 ((_ map or) (store ((as const (Array Context!2762 Bool)) false) setElem!16867 true) setRest!16867))))

(declare-fun b!2147118 () Bool)

(declare-fun tp!666005 () Bool)

(assert (=> b!2147118 (= e!1372458 tp!666005)))

(assert (= (and setNonEmpty!16852 condSetEmpty!16867) setIsEmpty!16867))

(assert (= (and setNonEmpty!16852 (not condSetEmpty!16867)) setNonEmpty!16867))

(assert (= setNonEmpty!16867 b!2147118))

(declare-fun m!2590686 () Bool)

(assert (=> setNonEmpty!16867 m!2590686))

(declare-fun b!2147123 () Bool)

(declare-fun e!1372461 () Bool)

(declare-fun tp!666010 () Bool)

(declare-fun tp!666011 () Bool)

(assert (=> b!2147123 (= e!1372461 (and tp!666010 tp!666011))))

(assert (=> b!2146968 (= tp!665946 e!1372461)))

(assert (= (and b!2146968 ((_ is Cons!24505) (exprs!1881 setElem!16852))) b!2147123))

(declare-fun b_lambda!70757 () Bool)

(assert (= b_lambda!70755 (or (and b!2146970 b_free!63335) b_lambda!70757)))

(declare-fun b_lambda!70759 () Bool)

(assert (= b_lambda!70753 (or (and b!2146970 b_free!63335) b_lambda!70759)))

(check-sat (not bm!128888) (not bm!128884) (not bm!128889) (not b!2147091) (not b_lambda!70759) (not b!2147092) (not b!2147043) (not mapNonEmpty!13478) (not b_lambda!70757) (not d!645317) (not b!2147006) (not b!2146974) (not setNonEmpty!16862) (not bm!128885) (not b!2147056) (not b!2147106) (not b!2147011) (not d!645341) (not b!2146995) (not b!2147012) (not d!645343) (not b!2147110) (not d!645321) (not b!2147112) (not bm!128887) b_and!172921 (not b!2147039) (not setNonEmpty!16863) (not b!2147123) (not b!2147082) (not b!2147073) (not b!2147113) (not b!2147118) (not b!2146996) (not setNonEmpty!16860) (not d!645323) (not b!2147047) (not b!2146993) (not b!2147111) (not b!2147104) b_and!172927 (not b!2147042) (not b!2147105) (not d!645325) (not b!2147108) (not setNonEmpty!16864) (not d!645319) (not b_next!64039) (not bm!128886) (not b!2147081) (not b!2147005) (not setNonEmpty!16861) (not setNonEmpty!16855) (not b_next!64037) (not d!645327) (not b!2147044) (not b!2147059) (not b!2147107) (not b!2147070) (not b!2147054) (not b!2147093) (not b!2147109) (not d!645329) (not setNonEmpty!16867))
(check-sat b_and!172927 b_and!172921 (not b_next!64039) (not b_next!64037))
