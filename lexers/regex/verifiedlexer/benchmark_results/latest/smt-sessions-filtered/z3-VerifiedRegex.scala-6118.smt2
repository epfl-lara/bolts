; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297110 () Bool)

(assert start!297110)

(declare-fun b!3172345 () Bool)

(declare-fun b_free!83313 () Bool)

(declare-fun b_next!84017 () Bool)

(assert (=> b!3172345 (= b_free!83313 (not b_next!84017))))

(declare-fun tp!1001976 () Bool)

(declare-fun b_and!209591 () Bool)

(assert (=> b!3172345 (= tp!1001976 b_and!209591)))

(declare-fun b!3172346 () Bool)

(declare-fun b_free!83315 () Bool)

(declare-fun b_next!84019 () Bool)

(assert (=> b!3172346 (= b_free!83315 (not b_next!84019))))

(declare-fun tp!1001974 () Bool)

(declare-fun b_and!209593 () Bool)

(assert (=> b!3172346 (= tp!1001974 b_and!209593)))

(declare-fun b!3172334 () Bool)

(declare-fun e!1975802 () Bool)

(declare-fun tp_is_empty!17137 () Bool)

(assert (=> b!3172334 (= e!1975802 tp_is_empty!17137)))

(declare-fun b!3172336 () Bool)

(declare-fun e!1975805 () Bool)

(declare-fun e!1975804 () Bool)

(assert (=> b!3172336 (= e!1975805 e!1975804)))

(declare-fun b!3172337 () Bool)

(declare-fun res!1289323 () Bool)

(declare-fun e!1975808 () Bool)

(assert (=> b!3172337 (=> (not res!1289323) (not e!1975808))))

(declare-datatypes ((C!19760 0))(
  ( (C!19761 (val!11916 Int)) )
))
(declare-datatypes ((Regex!9787 0))(
  ( (ElementMatch!9787 (c!533313 C!19760)) (Concat!15108 (regOne!20086 Regex!9787) (regTwo!20086 Regex!9787)) (EmptyExpr!9787) (Star!9787 (reg!10116 Regex!9787)) (EmptyLang!9787) (Union!9787 (regOne!20087 Regex!9787) (regTwo!20087 Regex!9787)) )
))
(declare-datatypes ((tuple2!34806 0))(
  ( (tuple2!34807 (_1!20535 Regex!9787) (_2!20535 C!19760)) )
))
(declare-datatypes ((tuple2!34808 0))(
  ( (tuple2!34809 (_1!20536 tuple2!34806) (_2!20536 Regex!9787)) )
))
(declare-datatypes ((List!35633 0))(
  ( (Nil!35509) (Cons!35509 (h!40929 tuple2!34808) (t!234716 List!35633)) )
))
(declare-datatypes ((array!15074 0))(
  ( (array!15075 (arr!6706 (Array (_ BitVec 32) (_ BitVec 64))) (size!26792 (_ BitVec 32))) )
))
(declare-datatypes ((array!15076 0))(
  ( (array!15077 (arr!6707 (Array (_ BitVec 32) List!35633)) (size!26793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8416 0))(
  ( (LongMapFixedSize!8417 (defaultEntry!4593 Int) (mask!10895 (_ BitVec 32)) (extraKeys!4457 (_ BitVec 32)) (zeroValue!4467 List!35633) (minValue!4467 List!35633) (_size!8459 (_ BitVec 32)) (_keys!4508 array!15074) (_values!4489 array!15076) (_vacant!4269 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16641 0))(
  ( (Cell!16642 (v!35259 LongMapFixedSize!8416)) )
))
(declare-datatypes ((MutLongMap!4208 0))(
  ( (LongMap!4208 (underlying!8645 Cell!16641)) (MutLongMapExt!4207 (__x!22730 Int)) )
))
(declare-datatypes ((Cell!16643 0))(
  ( (Cell!16644 (v!35260 MutLongMap!4208)) )
))
(declare-datatypes ((Hashable!4124 0))(
  ( (HashableExt!4123 (__x!22731 Int)) )
))
(declare-datatypes ((MutableMap!4114 0))(
  ( (MutableMapExt!4113 (__x!22732 Int)) (HashMap!4114 (underlying!8646 Cell!16643) (hashF!6156 Hashable!4124) (_size!8460 (_ BitVec 32)) (defaultValue!4285 Int)) )
))
(declare-datatypes ((Cache!498 0))(
  ( (Cache!499 (cache!4260 MutableMap!4114)) )
))
(declare-fun thiss!28499 () Cache!498)

(declare-fun validCacheMap!91 (MutableMap!4114) Bool)

(assert (=> b!3172337 (= res!1289323 (validCacheMap!91 (cache!4260 thiss!28499)))))

(declare-fun b!3172338 () Bool)

(declare-fun tp!1001973 () Bool)

(assert (=> b!3172338 (= e!1975802 tp!1001973)))

(declare-fun mapNonEmpty!19070 () Bool)

(declare-fun mapRes!19070 () Bool)

(declare-fun tp!1001978 () Bool)

(declare-fun tp!1001981 () Bool)

(assert (=> mapNonEmpty!19070 (= mapRes!19070 (and tp!1001978 tp!1001981))))

(declare-fun mapValue!19070 () List!35633)

(declare-fun mapRest!19070 () (Array (_ BitVec 32) List!35633))

(declare-fun mapKey!19070 () (_ BitVec 32))

(assert (=> mapNonEmpty!19070 (= (arr!6707 (_values!4489 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) (store mapRest!19070 mapKey!19070 mapValue!19070))))

(declare-fun b!3172339 () Bool)

(declare-fun tp!1001977 () Bool)

(declare-fun tp!1001982 () Bool)

(assert (=> b!3172339 (= e!1975802 (and tp!1001977 tp!1001982))))

(declare-fun b!3172340 () Bool)

(declare-fun e!1975811 () Bool)

(declare-fun e!1975809 () Bool)

(assert (=> b!3172340 (= e!1975811 e!1975809)))

(declare-fun b!3172341 () Bool)

(declare-fun e!1975807 () Bool)

(declare-fun e!1975803 () Bool)

(assert (=> b!3172341 (= e!1975807 e!1975803)))

(declare-fun res!1289321 () Bool)

(assert (=> b!3172341 (=> (not res!1289321) (not e!1975803))))

(declare-datatypes ((Option!6924 0))(
  ( (None!6923) (Some!6923 (v!35261 Regex!9787)) )
))
(declare-fun lt!1066556 () Option!6924)

(declare-fun isEmpty!19767 (Option!6924) Bool)

(assert (=> b!3172341 (= res!1289321 (not (isEmpty!19767 lt!1066556)))))

(declare-fun lt!1066553 () tuple2!34806)

(declare-fun apply!7973 (MutableMap!4114 tuple2!34806) Regex!9787)

(assert (=> b!3172341 (= lt!1066556 (Some!6923 (apply!7973 (cache!4260 thiss!28499) lt!1066553)))))

(declare-fun c!6988 () C!19760)

(declare-fun r!4721 () Regex!9787)

(declare-datatypes ((Unit!49981 0))(
  ( (Unit!49982) )
))
(declare-fun lt!1066555 () Unit!49981)

(declare-fun lemmaIfInCacheThenValid!64 (Cache!498 Regex!9787 C!19760) Unit!49981)

(assert (=> b!3172341 (= lt!1066555 (lemmaIfInCacheThenValid!64 thiss!28499 r!4721 c!6988))))

(declare-fun b!3172342 () Bool)

(declare-fun tp!1001980 () Bool)

(declare-fun tp!1001975 () Bool)

(assert (=> b!3172342 (= e!1975802 (and tp!1001980 tp!1001975))))

(declare-fun b!3172343 () Bool)

(declare-fun e!1975812 () Bool)

(declare-fun lt!1066554 () MutLongMap!4208)

(get-info :version)

(assert (=> b!3172343 (= e!1975812 (and e!1975811 ((_ is LongMap!4208) lt!1066554)))))

(assert (=> b!3172343 (= lt!1066554 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))

(declare-fun b!3172335 () Bool)

(declare-fun isDefined!5436 (Option!6924) Bool)

(assert (=> b!3172335 (= e!1975803 (not (isDefined!5436 lt!1066556)))))

(declare-fun res!1289320 () Bool)

(assert (=> start!297110 (=> (not res!1289320) (not e!1975808))))

(declare-fun validRegex!4494 (Regex!9787) Bool)

(assert (=> start!297110 (= res!1289320 (validRegex!4494 r!4721))))

(assert (=> start!297110 e!1975808))

(assert (=> start!297110 e!1975802))

(declare-fun inv!48224 (Cache!498) Bool)

(assert (=> start!297110 (and (inv!48224 thiss!28499) e!1975805)))

(assert (=> start!297110 tp_is_empty!17137))

(declare-fun b!3172344 () Bool)

(assert (=> b!3172344 (= e!1975808 e!1975807)))

(declare-fun res!1289322 () Bool)

(assert (=> b!3172344 (=> (not res!1289322) (not e!1975807))))

(declare-fun contains!6219 (MutableMap!4114 tuple2!34806) Bool)

(assert (=> b!3172344 (= res!1289322 (contains!6219 (cache!4260 thiss!28499) lt!1066553))))

(assert (=> b!3172344 (= lt!1066553 (tuple2!34807 r!4721 c!6988))))

(declare-fun tp!1001979 () Bool)

(declare-fun e!1975806 () Bool)

(declare-fun e!1975810 () Bool)

(declare-fun tp!1001971 () Bool)

(declare-fun array_inv!4808 (array!15074) Bool)

(declare-fun array_inv!4809 (array!15076) Bool)

(assert (=> b!3172345 (= e!1975810 (and tp!1001976 tp!1001979 tp!1001971 (array_inv!4808 (_keys!4508 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) (array_inv!4809 (_values!4489 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) e!1975806))))

(declare-fun mapIsEmpty!19070 () Bool)

(assert (=> mapIsEmpty!19070 mapRes!19070))

(assert (=> b!3172346 (= e!1975804 (and e!1975812 tp!1001974))))

(declare-fun b!3172347 () Bool)

(declare-fun tp!1001972 () Bool)

(assert (=> b!3172347 (= e!1975806 (and tp!1001972 mapRes!19070))))

(declare-fun condMapEmpty!19070 () Bool)

(declare-fun mapDefault!19070 () List!35633)

(assert (=> b!3172347 (= condMapEmpty!19070 (= (arr!6707 (_values!4489 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35633)) mapDefault!19070)))))

(declare-fun b!3172348 () Bool)

(assert (=> b!3172348 (= e!1975809 e!1975810)))

(assert (= (and start!297110 res!1289320) b!3172337))

(assert (= (and b!3172337 res!1289323) b!3172344))

(assert (= (and b!3172344 res!1289322) b!3172341))

(assert (= (and b!3172341 res!1289321) b!3172335))

(assert (= (and start!297110 ((_ is ElementMatch!9787) r!4721)) b!3172334))

(assert (= (and start!297110 ((_ is Concat!15108) r!4721)) b!3172342))

(assert (= (and start!297110 ((_ is Star!9787) r!4721)) b!3172338))

(assert (= (and start!297110 ((_ is Union!9787) r!4721)) b!3172339))

(assert (= (and b!3172347 condMapEmpty!19070) mapIsEmpty!19070))

(assert (= (and b!3172347 (not condMapEmpty!19070)) mapNonEmpty!19070))

(assert (= b!3172345 b!3172347))

(assert (= b!3172348 b!3172345))

(assert (= b!3172340 b!3172348))

(assert (= (and b!3172343 ((_ is LongMap!4208) (v!35260 (underlying!8646 (cache!4260 thiss!28499))))) b!3172340))

(assert (= b!3172346 b!3172343))

(assert (= (and b!3172336 ((_ is HashMap!4114) (cache!4260 thiss!28499))) b!3172346))

(assert (= start!297110 b!3172336))

(declare-fun m!3430602 () Bool)

(assert (=> b!3172337 m!3430602))

(declare-fun m!3430604 () Bool)

(assert (=> start!297110 m!3430604))

(declare-fun m!3430606 () Bool)

(assert (=> start!297110 m!3430606))

(declare-fun m!3430608 () Bool)

(assert (=> b!3172335 m!3430608))

(declare-fun m!3430610 () Bool)

(assert (=> b!3172344 m!3430610))

(declare-fun m!3430612 () Bool)

(assert (=> b!3172341 m!3430612))

(declare-fun m!3430614 () Bool)

(assert (=> b!3172341 m!3430614))

(declare-fun m!3430616 () Bool)

(assert (=> b!3172341 m!3430616))

(declare-fun m!3430618 () Bool)

(assert (=> b!3172345 m!3430618))

(declare-fun m!3430620 () Bool)

(assert (=> b!3172345 m!3430620))

(declare-fun m!3430622 () Bool)

(assert (=> mapNonEmpty!19070 m!3430622))

(check-sat (not b_next!84017) (not b!3172337) (not b!3172342) b_and!209593 (not mapNonEmpty!19070) (not b!3172344) tp_is_empty!17137 (not b!3172347) b_and!209591 (not b!3172335) (not start!297110) (not b_next!84019) (not b!3172338) (not b!3172345) (not b!3172341) (not b!3172339))
(check-sat b_and!209593 b_and!209591 (not b_next!84017) (not b_next!84019))
(get-model)

(declare-fun d!869307 () Bool)

(assert (=> d!869307 (= (array_inv!4808 (_keys!4508 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) (bvsge (size!26792 (_keys!4508 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172345 d!869307))

(declare-fun d!869309 () Bool)

(assert (=> d!869309 (= (array_inv!4809 (_values!4489 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) (bvsge (size!26793 (_values!4489 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172345 d!869309))

(declare-fun d!869311 () Bool)

(assert (=> d!869311 (= (isDefined!5436 lt!1066556) (not (isEmpty!19767 lt!1066556)))))

(declare-fun bs!539621 () Bool)

(assert (= bs!539621 d!869311))

(assert (=> bs!539621 m!3430612))

(assert (=> b!3172335 d!869311))

(declare-fun d!869313 () Bool)

(declare-fun res!1289330 () Bool)

(declare-fun e!1975817 () Bool)

(assert (=> d!869313 (=> (not res!1289330) (not e!1975817))))

(declare-fun valid!3281 (MutableMap!4114) Bool)

(assert (=> d!869313 (= res!1289330 (valid!3281 (cache!4260 thiss!28499)))))

(assert (=> d!869313 (= (validCacheMap!91 (cache!4260 thiss!28499)) e!1975817)))

(declare-fun b!3172355 () Bool)

(declare-fun res!1289331 () Bool)

(assert (=> b!3172355 (=> (not res!1289331) (not e!1975817))))

(declare-fun invariantList!496 (List!35633) Bool)

(declare-datatypes ((ListMap!1347 0))(
  ( (ListMap!1348 (toList!2091 List!35633)) )
))
(declare-fun map!7960 (MutableMap!4114) ListMap!1347)

(assert (=> b!3172355 (= res!1289331 (invariantList!496 (toList!2091 (map!7960 (cache!4260 thiss!28499)))))))

(declare-fun b!3172356 () Bool)

(declare-fun lambda!116065 () Int)

(declare-fun forall!7177 (List!35633 Int) Bool)

(assert (=> b!3172356 (= e!1975817 (forall!7177 (toList!2091 (map!7960 (cache!4260 thiss!28499))) lambda!116065))))

(assert (= (and d!869313 res!1289330) b!3172355))

(assert (= (and b!3172355 res!1289331) b!3172356))

(declare-fun m!3430625 () Bool)

(assert (=> d!869313 m!3430625))

(declare-fun m!3430627 () Bool)

(assert (=> b!3172355 m!3430627))

(declare-fun m!3430629 () Bool)

(assert (=> b!3172355 m!3430629))

(assert (=> b!3172356 m!3430627))

(declare-fun m!3430631 () Bool)

(assert (=> b!3172356 m!3430631))

(assert (=> b!3172337 d!869313))

(declare-fun d!869315 () Bool)

(assert (=> d!869315 (= (isEmpty!19767 lt!1066556) (not ((_ is Some!6923) lt!1066556)))))

(assert (=> b!3172341 d!869315))

(declare-fun lt!1066641 () (_ BitVec 64))

(declare-fun e!1975824 () Regex!9787)

(declare-fun b!3172369 () Bool)

(declare-datatypes ((Option!6925 0))(
  ( (None!6924) (Some!6924 (v!35262 tuple2!34808)) )
))
(declare-fun get!11289 (Option!6925) tuple2!34808)

(declare-fun getPair!101 (List!35633 tuple2!34806) Option!6925)

(declare-fun apply!7974 (MutLongMap!4208 (_ BitVec 64)) List!35633)

(assert (=> b!3172369 (= e!1975824 (_2!20536 (get!11289 (getPair!101 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066641) lt!1066553))))))

(declare-fun hash!814 (Hashable!4124 tuple2!34806) (_ BitVec 64))

(assert (=> b!3172369 (= lt!1066641 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun c!533320 () Bool)

(declare-datatypes ((tuple2!34810 0))(
  ( (tuple2!34811 (_1!20537 (_ BitVec 64)) (_2!20537 List!35633)) )
))
(declare-datatypes ((List!35634 0))(
  ( (Nil!35510) (Cons!35510 (h!40930 tuple2!34810) (t!234719 List!35634)) )
))
(declare-fun contains!6220 (List!35634 tuple2!34810) Bool)

(declare-datatypes ((ListLongMap!747 0))(
  ( (ListLongMap!748 (toList!2092 List!35634)) )
))
(declare-fun map!7961 (MutLongMap!4208) ListLongMap!747)

(assert (=> b!3172369 (= c!533320 (not (contains!6220 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))) (tuple2!34811 lt!1066641 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066641)))))))

(declare-fun lt!1066617 () Unit!49981)

(declare-fun e!1975826 () Unit!49981)

(assert (=> b!3172369 (= lt!1066617 e!1975826)))

(declare-fun lt!1066618 () Unit!49981)

(declare-fun lambda!116072 () Int)

(declare-fun forallContained!1079 (List!35634 Int tuple2!34810) Unit!49981)

(assert (=> b!3172369 (= lt!1066618 (forallContained!1079 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))) lambda!116072 (tuple2!34811 lt!1066641 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066641))))))

(declare-fun lt!1066644 () ListLongMap!747)

(assert (=> b!3172369 (= lt!1066644 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499)))))))

(declare-fun lt!1066631 () Unit!49981)

(declare-fun lemmaGetPairGetSameValueAsMap!37 (ListLongMap!747 tuple2!34806 Regex!9787 Hashable!4124) Unit!49981)

(assert (=> b!3172369 (= lt!1066631 (lemmaGetPairGetSameValueAsMap!37 lt!1066644 lt!1066553 (_2!20536 (get!11289 (getPair!101 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066641) lt!1066553))) (hashF!6156 (cache!4260 thiss!28499))))))

(declare-fun lt!1066632 () Unit!49981)

(declare-fun lemmaInGenMapThenLongMapContainsHash!43 (ListLongMap!747 tuple2!34806 Hashable!4124) Unit!49981)

(assert (=> b!3172369 (= lt!1066632 (lemmaInGenMapThenLongMapContainsHash!43 lt!1066644 lt!1066553 (hashF!6156 (cache!4260 thiss!28499))))))

(declare-fun contains!6221 (ListLongMap!747 (_ BitVec 64)) Bool)

(assert (=> b!3172369 (contains!6221 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun lt!1066628 () Unit!49981)

(assert (=> b!3172369 (= lt!1066628 lt!1066632)))

(declare-fun lt!1066646 () (_ BitVec 64))

(assert (=> b!3172369 (= lt!1066646 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun lt!1066640 () List!35633)

(declare-fun apply!7975 (ListLongMap!747 (_ BitVec 64)) List!35633)

(assert (=> b!3172369 (= lt!1066640 (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)))))

(declare-fun lt!1066638 () Unit!49981)

(declare-fun lemmaGetValueImpliesTupleContained!38 (ListLongMap!747 (_ BitVec 64) List!35633) Unit!49981)

(assert (=> b!3172369 (= lt!1066638 (lemmaGetValueImpliesTupleContained!38 lt!1066644 lt!1066646 lt!1066640))))

(assert (=> b!3172369 (contains!6220 (toList!2092 lt!1066644) (tuple2!34811 lt!1066646 lt!1066640))))

(declare-fun lt!1066619 () Unit!49981)

(assert (=> b!3172369 (= lt!1066619 lt!1066638)))

(declare-fun lt!1066633 () Unit!49981)

(assert (=> b!3172369 (= lt!1066633 (forallContained!1079 (toList!2092 lt!1066644) lambda!116072 (tuple2!34811 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553) (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)))))))

(declare-fun lt!1066622 () Unit!49981)

(declare-fun lemmaInGenMapThenGetPairDefined!37 (ListLongMap!747 tuple2!34806 Hashable!4124) Unit!49981)

(assert (=> b!3172369 (= lt!1066622 (lemmaInGenMapThenGetPairDefined!37 lt!1066644 lt!1066553 (hashF!6156 (cache!4260 thiss!28499))))))

(declare-fun lt!1066642 () Unit!49981)

(assert (=> b!3172369 (= lt!1066642 (lemmaInGenMapThenLongMapContainsHash!43 lt!1066644 lt!1066553 (hashF!6156 (cache!4260 thiss!28499))))))

(declare-fun lt!1066643 () Unit!49981)

(assert (=> b!3172369 (= lt!1066643 lt!1066642)))

(declare-fun lt!1066620 () (_ BitVec 64))

(assert (=> b!3172369 (= lt!1066620 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun lt!1066623 () List!35633)

(assert (=> b!3172369 (= lt!1066623 (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)))))

(declare-fun lt!1066625 () Unit!49981)

(assert (=> b!3172369 (= lt!1066625 (lemmaGetValueImpliesTupleContained!38 lt!1066644 lt!1066620 lt!1066623))))

(assert (=> b!3172369 (contains!6220 (toList!2092 lt!1066644) (tuple2!34811 lt!1066620 lt!1066623))))

(declare-fun lt!1066629 () Unit!49981)

(assert (=> b!3172369 (= lt!1066629 lt!1066625)))

(declare-fun lt!1066621 () Unit!49981)

(assert (=> b!3172369 (= lt!1066621 (forallContained!1079 (toList!2092 lt!1066644) lambda!116072 (tuple2!34811 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553) (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)))))))

(declare-fun isDefined!5437 (Option!6925) Bool)

(assert (=> b!3172369 (isDefined!5437 (getPair!101 (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)) lt!1066553))))

(declare-fun lt!1066639 () Unit!49981)

(assert (=> b!3172369 (= lt!1066639 lt!1066622)))

(declare-fun get!11290 (Option!6924) Regex!9787)

(declare-fun getValueByKey!187 (List!35633 tuple2!34806) Option!6924)

(declare-fun extractMap!244 (List!35634) ListMap!1347)

(assert (=> b!3172369 (= (_2!20536 (get!11289 (getPair!101 (apply!7975 lt!1066644 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553)) lt!1066553))) (get!11290 (getValueByKey!187 (toList!2091 (extractMap!244 (toList!2092 lt!1066644))) lt!1066553)))))

(declare-fun lt!1066637 () Unit!49981)

(assert (=> b!3172369 (= lt!1066637 lt!1066631)))

(declare-fun b!3172370 () Bool)

(declare-fun dynLambda!14369 (Int tuple2!34806) Regex!9787)

(assert (=> b!3172370 (= e!1975824 (dynLambda!14369 (defaultValue!4285 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun d!869317 () Bool)

(declare-fun e!1975825 () Bool)

(assert (=> d!869317 e!1975825))

(declare-fun c!533321 () Bool)

(assert (=> d!869317 (= c!533321 (contains!6219 (cache!4260 thiss!28499) lt!1066553))))

(declare-fun lt!1066635 () Regex!9787)

(assert (=> d!869317 (= lt!1066635 e!1975824)))

(declare-fun c!533322 () Bool)

(assert (=> d!869317 (= c!533322 (not (contains!6219 (cache!4260 thiss!28499) lt!1066553)))))

(assert (=> d!869317 (valid!3281 (cache!4260 thiss!28499))))

(assert (=> d!869317 (= (apply!7973 (cache!4260 thiss!28499) lt!1066553) lt!1066635)))

(declare-fun b!3172371 () Bool)

(assert (=> b!3172371 (= e!1975825 (= lt!1066635 (get!11290 (getValueByKey!187 (toList!2091 (map!7960 (cache!4260 thiss!28499))) lt!1066553))))))

(declare-fun b!3172372 () Bool)

(assert (=> b!3172372 false))

(declare-fun lt!1066627 () Unit!49981)

(declare-fun lt!1066636 () Unit!49981)

(assert (=> b!3172372 (= lt!1066627 lt!1066636)))

(declare-fun lt!1066624 () List!35634)

(declare-fun lt!1066630 () List!35633)

(assert (=> b!3172372 (contains!6220 lt!1066624 (tuple2!34811 lt!1066641 lt!1066630))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!107 (List!35634 (_ BitVec 64) List!35633) Unit!49981)

(assert (=> b!3172372 (= lt!1066636 (lemmaGetValueByKeyImpliesContainsTuple!107 lt!1066624 lt!1066641 lt!1066630))))

(assert (=> b!3172372 (= lt!1066630 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066641))))

(assert (=> b!3172372 (= lt!1066624 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))))

(declare-fun lt!1066626 () Unit!49981)

(declare-fun lt!1066634 () Unit!49981)

(assert (=> b!3172372 (= lt!1066626 lt!1066634)))

(declare-fun lt!1066645 () List!35634)

(declare-datatypes ((Option!6926 0))(
  ( (None!6925) (Some!6925 (v!35263 List!35633)) )
))
(declare-fun isDefined!5438 (Option!6926) Bool)

(declare-fun getValueByKey!188 (List!35634 (_ BitVec 64)) Option!6926)

(assert (=> b!3172372 (isDefined!5438 (getValueByKey!188 lt!1066645 lt!1066641))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!135 (List!35634 (_ BitVec 64)) Unit!49981)

(assert (=> b!3172372 (= lt!1066634 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 lt!1066645 lt!1066641))))

(assert (=> b!3172372 (= lt!1066645 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))))

(declare-fun Unit!49983 () Unit!49981)

(assert (=> b!3172372 (= e!1975826 Unit!49983)))

(declare-fun b!3172373 () Bool)

(assert (=> b!3172373 (= e!1975825 (= lt!1066635 (dynLambda!14369 (defaultValue!4285 (cache!4260 thiss!28499)) lt!1066553)))))

(declare-fun b!3172374 () Bool)

(declare-fun Unit!49984 () Unit!49981)

(assert (=> b!3172374 (= e!1975826 Unit!49984)))

(assert (= (and d!869317 c!533322) b!3172370))

(assert (= (and d!869317 (not c!533322)) b!3172369))

(assert (= (and b!3172369 c!533320) b!3172372))

(assert (= (and b!3172369 (not c!533320)) b!3172374))

(assert (= (and d!869317 c!533321) b!3172371))

(assert (= (and d!869317 (not c!533321)) b!3172373))

(declare-fun b_lambda!86471 () Bool)

(assert (=> (not b_lambda!86471) (not b!3172370)))

(declare-fun t!234718 () Bool)

(declare-fun tb!155107 () Bool)

(assert (=> (and b!3172346 (= (defaultValue!4285 (cache!4260 thiss!28499)) (defaultValue!4285 (cache!4260 thiss!28499))) t!234718) tb!155107))

(assert (=> b!3172370 t!234718))

(declare-fun result!196974 () Bool)

(declare-fun b_and!209595 () Bool)

(assert (= b_and!209593 (and (=> t!234718 result!196974) b_and!209595)))

(declare-fun b_lambda!86473 () Bool)

(assert (=> (not b_lambda!86473) (not b!3172373)))

(assert (=> b!3172373 t!234718))

(declare-fun b_and!209597 () Bool)

(assert (= b_and!209595 (and (=> t!234718 result!196974) b_and!209597)))

(declare-fun m!3430633 () Bool)

(assert (=> b!3172370 m!3430633))

(assert (=> b!3172371 m!3430627))

(declare-fun m!3430635 () Bool)

(assert (=> b!3172371 m!3430635))

(assert (=> b!3172371 m!3430635))

(declare-fun m!3430637 () Bool)

(assert (=> b!3172371 m!3430637))

(declare-fun m!3430639 () Bool)

(assert (=> b!3172369 m!3430639))

(declare-fun m!3430641 () Bool)

(assert (=> b!3172369 m!3430641))

(declare-fun m!3430643 () Bool)

(assert (=> b!3172369 m!3430643))

(declare-fun m!3430645 () Bool)

(assert (=> b!3172369 m!3430645))

(assert (=> b!3172369 m!3430641))

(declare-fun m!3430647 () Bool)

(assert (=> b!3172369 m!3430647))

(declare-fun m!3430649 () Bool)

(assert (=> b!3172369 m!3430649))

(assert (=> b!3172369 m!3430643))

(declare-fun m!3430651 () Bool)

(assert (=> b!3172369 m!3430651))

(declare-fun m!3430653 () Bool)

(assert (=> b!3172369 m!3430653))

(declare-fun m!3430655 () Bool)

(assert (=> b!3172369 m!3430655))

(declare-fun m!3430657 () Bool)

(assert (=> b!3172369 m!3430657))

(assert (=> b!3172369 m!3430657))

(declare-fun m!3430659 () Bool)

(assert (=> b!3172369 m!3430659))

(declare-fun m!3430661 () Bool)

(assert (=> b!3172369 m!3430661))

(declare-fun m!3430663 () Bool)

(assert (=> b!3172369 m!3430663))

(assert (=> b!3172369 m!3430651))

(declare-fun m!3430665 () Bool)

(assert (=> b!3172369 m!3430665))

(assert (=> b!3172369 m!3430659))

(declare-fun m!3430667 () Bool)

(assert (=> b!3172369 m!3430667))

(declare-fun m!3430669 () Bool)

(assert (=> b!3172369 m!3430669))

(assert (=> b!3172369 m!3430653))

(declare-fun m!3430671 () Bool)

(assert (=> b!3172369 m!3430671))

(declare-fun m!3430673 () Bool)

(assert (=> b!3172369 m!3430673))

(declare-fun m!3430675 () Bool)

(assert (=> b!3172369 m!3430675))

(assert (=> b!3172369 m!3430641))

(declare-fun m!3430677 () Bool)

(assert (=> b!3172369 m!3430677))

(assert (=> b!3172369 m!3430661))

(assert (=> b!3172369 m!3430651))

(declare-fun m!3430679 () Bool)

(assert (=> b!3172369 m!3430679))

(declare-fun m!3430681 () Bool)

(assert (=> b!3172369 m!3430681))

(declare-fun m!3430683 () Bool)

(assert (=> b!3172369 m!3430683))

(assert (=> b!3172373 m!3430633))

(assert (=> d!869317 m!3430610))

(assert (=> d!869317 m!3430625))

(declare-fun m!3430685 () Bool)

(assert (=> b!3172372 m!3430685))

(declare-fun m!3430687 () Bool)

(assert (=> b!3172372 m!3430687))

(assert (=> b!3172372 m!3430657))

(declare-fun m!3430689 () Bool)

(assert (=> b!3172372 m!3430689))

(assert (=> b!3172372 m!3430687))

(declare-fun m!3430691 () Bool)

(assert (=> b!3172372 m!3430691))

(declare-fun m!3430693 () Bool)

(assert (=> b!3172372 m!3430693))

(assert (=> b!3172372 m!3430663))

(assert (=> b!3172341 d!869317))

(declare-fun bs!539622 () Bool)

(declare-fun b!3172385 () Bool)

(assert (= bs!539622 (and b!3172385 b!3172356)))

(declare-fun lambda!116075 () Int)

(assert (=> bs!539622 (= lambda!116075 lambda!116065)))

(declare-fun e!1975841 () Bool)

(declare-fun b!3172388 () Bool)

(declare-fun derivativeStep!2915 (Regex!9787 C!19760) Regex!9787)

(assert (=> b!3172388 (= e!1975841 (= (derivativeStep!2915 r!4721 c!6988) (apply!7973 (cache!4260 thiss!28499) (tuple2!34807 r!4721 c!6988))))))

(declare-fun e!1975840 () Unit!49981)

(declare-fun lt!1066670 () Unit!49981)

(assert (=> b!3172385 (= e!1975840 lt!1066670)))

(declare-fun lt!1066668 () tuple2!34806)

(assert (=> b!3172385 (= lt!1066668 (tuple2!34807 r!4721 c!6988))))

(declare-fun lemmaForallPairsThenForLookup!53 (MutableMap!4114 tuple2!34806 Int) Unit!49981)

(assert (=> b!3172385 (= lt!1066670 (lemmaForallPairsThenForLookup!53 (cache!4260 thiss!28499) lt!1066668 lambda!116075))))

(declare-fun lt!1066664 () tuple2!34808)

(assert (=> b!3172385 (= lt!1066664 (tuple2!34809 lt!1066668 (apply!7973 (cache!4260 thiss!28499) lt!1066668)))))

(declare-fun lt!1066667 () Regex!9787)

(assert (=> b!3172385 (= lt!1066667 (apply!7973 (cache!4260 thiss!28499) lt!1066668))))

(declare-fun res!1289338 () Bool)

(assert (=> b!3172385 (= res!1289338 (validRegex!4494 (_1!20535 lt!1066668)))))

(declare-fun e!1975839 () Bool)

(assert (=> b!3172385 (=> (not res!1289338) (not e!1975839))))

(assert (=> b!3172385 e!1975839))

(declare-fun d!869319 () Bool)

(assert (=> d!869319 e!1975841))

(declare-fun res!1289339 () Bool)

(assert (=> d!869319 (=> res!1289339 e!1975841)))

(assert (=> d!869319 (= res!1289339 (not (contains!6219 (cache!4260 thiss!28499) (tuple2!34807 r!4721 c!6988))))))

(declare-fun lt!1066665 () Unit!49981)

(assert (=> d!869319 (= lt!1066665 e!1975840)))

(declare-fun c!533326 () Bool)

(assert (=> d!869319 (= c!533326 (contains!6219 (cache!4260 thiss!28499) (tuple2!34807 r!4721 c!6988)))))

(assert (=> d!869319 (validCacheMap!91 (cache!4260 thiss!28499))))

(assert (=> d!869319 (= (lemmaIfInCacheThenValid!64 thiss!28499 r!4721 c!6988) lt!1066665)))

(declare-fun b!3172387 () Bool)

(declare-fun lt!1066669 () tuple2!34806)

(assert (=> b!3172387 (= lt!1066669 lt!1066668)))

(declare-fun lt!1066666 () Regex!9787)

(assert (=> b!3172387 (= lt!1066666 (apply!7973 (cache!4260 thiss!28499) lt!1066668))))

(declare-fun lt!1066663 () Regex!9787)

(assert (=> b!3172387 (= lt!1066663 (apply!7973 (cache!4260 thiss!28499) lt!1066668))))

(assert (=> b!3172387 (= e!1975839 (= (apply!7973 (cache!4260 thiss!28499) lt!1066668) (derivativeStep!2915 (_1!20535 lt!1066668) (_2!20535 lt!1066668))))))

(declare-fun b!3172386 () Bool)

(declare-fun Unit!49985 () Unit!49981)

(assert (=> b!3172386 (= e!1975840 Unit!49985)))

(assert (= (and d!869319 c!533326) b!3172385))

(assert (= (and d!869319 (not c!533326)) b!3172386))

(assert (= (and b!3172385 res!1289338) b!3172387))

(assert (= (and d!869319 (not res!1289339)) b!3172388))

(declare-fun m!3430695 () Bool)

(assert (=> b!3172388 m!3430695))

(declare-fun m!3430697 () Bool)

(assert (=> b!3172388 m!3430697))

(declare-fun m!3430699 () Bool)

(assert (=> b!3172385 m!3430699))

(declare-fun m!3430701 () Bool)

(assert (=> b!3172385 m!3430701))

(declare-fun m!3430703 () Bool)

(assert (=> b!3172385 m!3430703))

(declare-fun m!3430705 () Bool)

(assert (=> d!869319 m!3430705))

(assert (=> d!869319 m!3430602))

(assert (=> b!3172387 m!3430701))

(declare-fun m!3430707 () Bool)

(assert (=> b!3172387 m!3430707))

(assert (=> b!3172341 d!869319))

(declare-fun b!3172407 () Bool)

(declare-fun e!1975862 () Bool)

(declare-fun e!1975858 () Bool)

(assert (=> b!3172407 (= e!1975862 e!1975858)))

(declare-fun c!533332 () Bool)

(assert (=> b!3172407 (= c!533332 ((_ is Union!9787) r!4721))))

(declare-fun b!3172408 () Bool)

(declare-fun res!1289354 () Bool)

(declare-fun e!1975857 () Bool)

(assert (=> b!3172408 (=> res!1289354 e!1975857)))

(assert (=> b!3172408 (= res!1289354 (not ((_ is Concat!15108) r!4721)))))

(assert (=> b!3172408 (= e!1975858 e!1975857)))

(declare-fun b!3172409 () Bool)

(declare-fun e!1975856 () Bool)

(declare-fun call!230560 () Bool)

(assert (=> b!3172409 (= e!1975856 call!230560)))

(declare-fun d!869321 () Bool)

(declare-fun res!1289352 () Bool)

(declare-fun e!1975859 () Bool)

(assert (=> d!869321 (=> res!1289352 e!1975859)))

(assert (=> d!869321 (= res!1289352 ((_ is ElementMatch!9787) r!4721))))

(assert (=> d!869321 (= (validRegex!4494 r!4721) e!1975859)))

(declare-fun b!3172410 () Bool)

(declare-fun e!1975861 () Bool)

(assert (=> b!3172410 (= e!1975861 call!230560)))

(declare-fun b!3172411 () Bool)

(declare-fun e!1975860 () Bool)

(assert (=> b!3172411 (= e!1975862 e!1975860)))

(declare-fun res!1289353 () Bool)

(declare-fun nullable!3364 (Regex!9787) Bool)

(assert (=> b!3172411 (= res!1289353 (not (nullable!3364 (reg!10116 r!4721))))))

(assert (=> b!3172411 (=> (not res!1289353) (not e!1975860))))

(declare-fun b!3172412 () Bool)

(declare-fun res!1289351 () Bool)

(assert (=> b!3172412 (=> (not res!1289351) (not e!1975861))))

(declare-fun call!230559 () Bool)

(assert (=> b!3172412 (= res!1289351 call!230559)))

(assert (=> b!3172412 (= e!1975858 e!1975861)))

(declare-fun b!3172413 () Bool)

(declare-fun call!230558 () Bool)

(assert (=> b!3172413 (= e!1975860 call!230558)))

(declare-fun bm!230553 () Bool)

(assert (=> bm!230553 (= call!230560 (validRegex!4494 (ite c!533332 (regTwo!20087 r!4721) (regTwo!20086 r!4721))))))

(declare-fun bm!230554 () Bool)

(declare-fun c!533331 () Bool)

(assert (=> bm!230554 (= call!230558 (validRegex!4494 (ite c!533331 (reg!10116 r!4721) (ite c!533332 (regOne!20087 r!4721) (regOne!20086 r!4721)))))))

(declare-fun b!3172414 () Bool)

(assert (=> b!3172414 (= e!1975857 e!1975856)))

(declare-fun res!1289350 () Bool)

(assert (=> b!3172414 (=> (not res!1289350) (not e!1975856))))

(assert (=> b!3172414 (= res!1289350 call!230559)))

(declare-fun bm!230555 () Bool)

(assert (=> bm!230555 (= call!230559 call!230558)))

(declare-fun b!3172415 () Bool)

(assert (=> b!3172415 (= e!1975859 e!1975862)))

(assert (=> b!3172415 (= c!533331 ((_ is Star!9787) r!4721))))

(assert (= (and d!869321 (not res!1289352)) b!3172415))

(assert (= (and b!3172415 c!533331) b!3172411))

(assert (= (and b!3172415 (not c!533331)) b!3172407))

(assert (= (and b!3172411 res!1289353) b!3172413))

(assert (= (and b!3172407 c!533332) b!3172412))

(assert (= (and b!3172407 (not c!533332)) b!3172408))

(assert (= (and b!3172412 res!1289351) b!3172410))

(assert (= (and b!3172408 (not res!1289354)) b!3172414))

(assert (= (and b!3172414 res!1289350) b!3172409))

(assert (= (or b!3172412 b!3172414) bm!230555))

(assert (= (or b!3172410 b!3172409) bm!230553))

(assert (= (or b!3172413 bm!230555) bm!230554))

(declare-fun m!3430709 () Bool)

(assert (=> b!3172411 m!3430709))

(declare-fun m!3430711 () Bool)

(assert (=> bm!230553 m!3430711))

(declare-fun m!3430713 () Bool)

(assert (=> bm!230554 m!3430713))

(assert (=> start!297110 d!869321))

(declare-fun d!869323 () Bool)

(declare-fun res!1289357 () Bool)

(declare-fun e!1975865 () Bool)

(assert (=> d!869323 (=> (not res!1289357) (not e!1975865))))

(assert (=> d!869323 (= res!1289357 ((_ is HashMap!4114) (cache!4260 thiss!28499)))))

(assert (=> d!869323 (= (inv!48224 thiss!28499) e!1975865)))

(declare-fun b!3172418 () Bool)

(assert (=> b!3172418 (= e!1975865 (validCacheMap!91 (cache!4260 thiss!28499)))))

(assert (= (and d!869323 res!1289357) b!3172418))

(assert (=> b!3172418 m!3430602))

(assert (=> start!297110 d!869323))

(declare-fun bs!539623 () Bool)

(declare-fun b!3172446 () Bool)

(assert (= bs!539623 (and b!3172446 b!3172369)))

(declare-fun lambda!116078 () Int)

(assert (=> bs!539623 (= lambda!116078 lambda!116072)))

(declare-fun e!1975880 () Bool)

(declare-fun lt!1066721 () (_ BitVec 64))

(declare-fun b!3172441 () Bool)

(assert (=> b!3172441 (= e!1975880 (isDefined!5437 (getPair!101 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721) lt!1066553)))))

(declare-fun b!3172442 () Bool)

(assert (=> b!3172442 false))

(declare-fun lt!1066712 () Unit!49981)

(declare-fun lt!1066720 () Unit!49981)

(assert (=> b!3172442 (= lt!1066712 lt!1066720)))

(declare-fun lt!1066717 () List!35634)

(declare-fun lt!1066715 () List!35633)

(assert (=> b!3172442 (contains!6220 lt!1066717 (tuple2!34811 lt!1066721 lt!1066715))))

(assert (=> b!3172442 (= lt!1066720 (lemmaGetValueByKeyImpliesContainsTuple!107 lt!1066717 lt!1066721 lt!1066715))))

(assert (=> b!3172442 (= lt!1066715 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721))))

(assert (=> b!3172442 (= lt!1066717 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))))

(declare-fun lt!1066718 () Unit!49981)

(declare-fun lt!1066722 () Unit!49981)

(assert (=> b!3172442 (= lt!1066718 lt!1066722)))

(declare-fun lt!1066713 () List!35634)

(assert (=> b!3172442 (isDefined!5438 (getValueByKey!188 lt!1066713 lt!1066721))))

(assert (=> b!3172442 (= lt!1066722 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 lt!1066713 lt!1066721))))

(assert (=> b!3172442 (= lt!1066713 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))))

(declare-fun lt!1066714 () Unit!49981)

(declare-fun lt!1066719 () Unit!49981)

(assert (=> b!3172442 (= lt!1066714 lt!1066719)))

(declare-fun lt!1066728 () List!35634)

(declare-fun containsKey!203 (List!35634 (_ BitVec 64)) Bool)

(assert (=> b!3172442 (containsKey!203 lt!1066728 lt!1066721)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!102 (List!35634 (_ BitVec 64)) Unit!49981)

(assert (=> b!3172442 (= lt!1066719 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!102 lt!1066728 lt!1066721))))

(assert (=> b!3172442 (= lt!1066728 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))))))

(declare-fun e!1975882 () Unit!49981)

(declare-fun Unit!49986 () Unit!49981)

(assert (=> b!3172442 (= e!1975882 Unit!49986)))

(declare-fun bm!230568 () Bool)

(declare-fun call!230574 () (_ BitVec 64))

(assert (=> bm!230568 (= call!230574 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(declare-fun b!3172443 () Bool)

(declare-fun e!1975885 () Bool)

(declare-fun call!230578 () Bool)

(assert (=> b!3172443 (= e!1975885 call!230578)))

(declare-fun call!230576 () Bool)

(declare-fun bm!230569 () Bool)

(declare-fun call!230575 () ListLongMap!747)

(declare-fun c!533341 () Bool)

(declare-fun lt!1066724 () ListLongMap!747)

(assert (=> bm!230569 (= call!230576 (contains!6221 (ite c!533341 lt!1066724 call!230575) call!230574))))

(declare-fun bm!230570 () Bool)

(declare-fun call!230577 () Option!6925)

(declare-fun call!230573 () List!35633)

(assert (=> bm!230570 (= call!230577 (getPair!101 call!230573 lt!1066553))))

(declare-fun bm!230571 () Bool)

(assert (=> bm!230571 (= call!230575 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499)))))))

(declare-fun b!3172445 () Bool)

(declare-fun e!1975881 () Unit!49981)

(declare-fun lt!1066725 () Unit!49981)

(assert (=> b!3172445 (= e!1975881 lt!1066725)))

(assert (=> b!3172445 (= lt!1066724 call!230575)))

(declare-fun lemmaInGenericMapThenInLongMap!101 (ListLongMap!747 tuple2!34806 Hashable!4124) Unit!49981)

(assert (=> b!3172445 (= lt!1066725 (lemmaInGenericMapThenInLongMap!101 lt!1066724 lt!1066553 (hashF!6156 (cache!4260 thiss!28499))))))

(declare-fun res!1289364 () Bool)

(assert (=> b!3172445 (= res!1289364 call!230576)))

(declare-fun e!1975886 () Bool)

(assert (=> b!3172445 (=> (not res!1289364) (not e!1975886))))

(assert (=> b!3172445 e!1975886))

(declare-fun e!1975883 () Unit!49981)

(assert (=> b!3172446 (= e!1975883 (forallContained!1079 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))) lambda!116078 (tuple2!34811 lt!1066721 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721))))))

(declare-fun c!533344 () Bool)

(assert (=> b!3172446 (= c!533344 (not (contains!6220 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499))))) (tuple2!34811 lt!1066721 (apply!7974 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721)))))))

(declare-fun lt!1066729 () Unit!49981)

(assert (=> b!3172446 (= lt!1066729 e!1975882)))

(declare-fun b!3172447 () Bool)

(declare-fun Unit!49987 () Unit!49981)

(assert (=> b!3172447 (= e!1975883 Unit!49987)))

(declare-fun b!3172448 () Bool)

(declare-fun Unit!49988 () Unit!49981)

(assert (=> b!3172448 (= e!1975882 Unit!49988)))

(declare-fun b!3172449 () Bool)

(declare-fun e!1975884 () Unit!49981)

(assert (=> b!3172449 (= e!1975881 e!1975884)))

(declare-fun res!1289365 () Bool)

(assert (=> b!3172449 (= res!1289365 call!230576)))

(assert (=> b!3172449 (=> (not res!1289365) (not e!1975885))))

(declare-fun c!533343 () Bool)

(assert (=> b!3172449 (= c!533343 e!1975885)))

(declare-fun b!3172444 () Bool)

(assert (=> b!3172444 (= e!1975886 call!230578)))

(declare-fun d!869325 () Bool)

(declare-fun lt!1066727 () Bool)

(declare-fun contains!6222 (ListMap!1347 tuple2!34806) Bool)

(assert (=> d!869325 (= lt!1066727 (contains!6222 (map!7960 (cache!4260 thiss!28499)) lt!1066553))))

(assert (=> d!869325 (= lt!1066727 e!1975880)))

(declare-fun res!1289366 () Bool)

(assert (=> d!869325 (=> (not res!1289366) (not e!1975880))))

(declare-fun contains!6223 (MutLongMap!4208 (_ BitVec 64)) Bool)

(assert (=> d!869325 (= res!1289366 (contains!6223 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721))))

(declare-fun lt!1066723 () Unit!49981)

(assert (=> d!869325 (= lt!1066723 e!1975881)))

(assert (=> d!869325 (= c!533341 (contains!6222 (extractMap!244 (toList!2092 (map!7961 (v!35260 (underlying!8646 (cache!4260 thiss!28499)))))) lt!1066553))))

(declare-fun lt!1066730 () Unit!49981)

(assert (=> d!869325 (= lt!1066730 e!1975883)))

(declare-fun c!533342 () Bool)

(assert (=> d!869325 (= c!533342 (contains!6223 (v!35260 (underlying!8646 (cache!4260 thiss!28499))) lt!1066721))))

(assert (=> d!869325 (= lt!1066721 (hash!814 (hashF!6156 (cache!4260 thiss!28499)) lt!1066553))))

(assert (=> d!869325 (valid!3281 (cache!4260 thiss!28499))))

(assert (=> d!869325 (= (contains!6219 (cache!4260 thiss!28499) lt!1066553) lt!1066727)))

(declare-fun bm!230572 () Bool)

(assert (=> bm!230572 (= call!230578 (isDefined!5437 call!230577))))

(declare-fun b!3172450 () Bool)

(declare-fun Unit!49989 () Unit!49981)

(assert (=> b!3172450 (= e!1975884 Unit!49989)))

(declare-fun b!3172451 () Bool)

(assert (=> b!3172451 false))

(declare-fun lt!1066726 () Unit!49981)

(declare-fun lt!1066711 () Unit!49981)

(assert (=> b!3172451 (= lt!1066726 lt!1066711)))

(declare-fun lt!1066716 () ListLongMap!747)

(assert (=> b!3172451 (contains!6222 (extractMap!244 (toList!2092 lt!1066716)) lt!1066553)))

(declare-fun lemmaInLongMapThenInGenericMap!101 (ListLongMap!747 tuple2!34806 Hashable!4124) Unit!49981)

(assert (=> b!3172451 (= lt!1066711 (lemmaInLongMapThenInGenericMap!101 lt!1066716 lt!1066553 (hashF!6156 (cache!4260 thiss!28499))))))

(assert (=> b!3172451 (= lt!1066716 call!230575)))

(declare-fun Unit!49990 () Unit!49981)

(assert (=> b!3172451 (= e!1975884 Unit!49990)))

(declare-fun bm!230573 () Bool)

(assert (=> bm!230573 (= call!230573 (apply!7975 (ite c!533341 lt!1066724 call!230575) call!230574))))

(assert (= (and d!869325 c!533342) b!3172446))

(assert (= (and d!869325 (not c!533342)) b!3172447))

(assert (= (and b!3172446 c!533344) b!3172442))

(assert (= (and b!3172446 (not c!533344)) b!3172448))

(assert (= (and d!869325 c!533341) b!3172445))

(assert (= (and d!869325 (not c!533341)) b!3172449))

(assert (= (and b!3172445 res!1289364) b!3172444))

(assert (= (and b!3172449 res!1289365) b!3172443))

(assert (= (and b!3172449 c!533343) b!3172451))

(assert (= (and b!3172449 (not c!533343)) b!3172450))

(assert (= (or b!3172445 b!3172444 b!3172449 b!3172443) bm!230568))

(assert (= (or b!3172445 b!3172449 b!3172443 b!3172451) bm!230571))

(assert (= (or b!3172445 b!3172449) bm!230569))

(assert (= (or b!3172444 b!3172443) bm!230573))

(assert (= (or b!3172444 b!3172443) bm!230570))

(assert (= (or b!3172444 b!3172443) bm!230572))

(assert (= (and d!869325 res!1289366) b!3172441))

(declare-fun m!3430715 () Bool)

(assert (=> bm!230572 m!3430715))

(declare-fun m!3430717 () Bool)

(assert (=> b!3172451 m!3430717))

(assert (=> b!3172451 m!3430717))

(declare-fun m!3430719 () Bool)

(assert (=> b!3172451 m!3430719))

(declare-fun m!3430721 () Bool)

(assert (=> b!3172451 m!3430721))

(declare-fun m!3430723 () Bool)

(assert (=> d!869325 m!3430723))

(assert (=> d!869325 m!3430627))

(declare-fun m!3430725 () Bool)

(assert (=> d!869325 m!3430725))

(assert (=> d!869325 m!3430663))

(declare-fun m!3430727 () Bool)

(assert (=> d!869325 m!3430727))

(assert (=> d!869325 m!3430627))

(assert (=> d!869325 m!3430641))

(assert (=> d!869325 m!3430723))

(declare-fun m!3430729 () Bool)

(assert (=> d!869325 m!3430729))

(assert (=> d!869325 m!3430625))

(declare-fun m!3430731 () Bool)

(assert (=> bm!230569 m!3430731))

(assert (=> b!3172446 m!3430663))

(declare-fun m!3430733 () Bool)

(assert (=> b!3172446 m!3430733))

(declare-fun m!3430735 () Bool)

(assert (=> b!3172446 m!3430735))

(declare-fun m!3430737 () Bool)

(assert (=> b!3172446 m!3430737))

(declare-fun m!3430739 () Bool)

(assert (=> bm!230573 m!3430739))

(declare-fun m!3430741 () Bool)

(assert (=> b!3172445 m!3430741))

(assert (=> b!3172441 m!3430733))

(assert (=> b!3172441 m!3430733))

(declare-fun m!3430743 () Bool)

(assert (=> b!3172441 m!3430743))

(assert (=> b!3172441 m!3430743))

(declare-fun m!3430745 () Bool)

(assert (=> b!3172441 m!3430745))

(assert (=> bm!230571 m!3430663))

(declare-fun m!3430747 () Bool)

(assert (=> bm!230570 m!3430747))

(assert (=> bm!230568 m!3430641))

(declare-fun m!3430749 () Bool)

(assert (=> b!3172442 m!3430749))

(declare-fun m!3430751 () Bool)

(assert (=> b!3172442 m!3430751))

(assert (=> b!3172442 m!3430663))

(declare-fun m!3430753 () Bool)

(assert (=> b!3172442 m!3430753))

(declare-fun m!3430755 () Bool)

(assert (=> b!3172442 m!3430755))

(assert (=> b!3172442 m!3430751))

(declare-fun m!3430757 () Bool)

(assert (=> b!3172442 m!3430757))

(assert (=> b!3172442 m!3430733))

(declare-fun m!3430759 () Bool)

(assert (=> b!3172442 m!3430759))

(declare-fun m!3430761 () Bool)

(assert (=> b!3172442 m!3430761))

(assert (=> b!3172344 d!869325))

(declare-fun tp!1001991 () Bool)

(declare-fun tp!1001989 () Bool)

(declare-fun b!3172456 () Bool)

(declare-fun tp!1001990 () Bool)

(declare-fun e!1975889 () Bool)

(assert (=> b!3172456 (= e!1975889 (and tp!1001989 tp_is_empty!17137 tp!1001990 tp!1001991))))

(assert (=> b!3172345 (= tp!1001979 e!1975889)))

(assert (= (and b!3172345 ((_ is Cons!35509) (zeroValue!4467 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499)))))))) b!3172456))

(declare-fun e!1975890 () Bool)

(declare-fun tp!1001994 () Bool)

(declare-fun tp!1001992 () Bool)

(declare-fun b!3172457 () Bool)

(declare-fun tp!1001993 () Bool)

(assert (=> b!3172457 (= e!1975890 (and tp!1001992 tp_is_empty!17137 tp!1001993 tp!1001994))))

(assert (=> b!3172345 (= tp!1001971 e!1975890)))

(assert (= (and b!3172345 ((_ is Cons!35509) (minValue!4467 (v!35259 (underlying!8645 (v!35260 (underlying!8646 (cache!4260 thiss!28499)))))))) b!3172457))

(declare-fun b!3172458 () Bool)

(declare-fun tp!1001995 () Bool)

(declare-fun e!1975891 () Bool)

(declare-fun tp!1001997 () Bool)

(declare-fun tp!1001996 () Bool)

(assert (=> b!3172458 (= e!1975891 (and tp!1001995 tp_is_empty!17137 tp!1001996 tp!1001997))))

(assert (=> b!3172347 (= tp!1001972 e!1975891)))

(assert (= (and b!3172347 ((_ is Cons!35509) mapDefault!19070)) b!3172458))

(declare-fun b!3172471 () Bool)

(declare-fun e!1975894 () Bool)

(declare-fun tp!1002010 () Bool)

(assert (=> b!3172471 (= e!1975894 tp!1002010)))

(declare-fun b!3172472 () Bool)

(declare-fun tp!1002012 () Bool)

(declare-fun tp!1002011 () Bool)

(assert (=> b!3172472 (= e!1975894 (and tp!1002012 tp!1002011))))

(assert (=> b!3172338 (= tp!1001973 e!1975894)))

(declare-fun b!3172470 () Bool)

(declare-fun tp!1002009 () Bool)

(declare-fun tp!1002008 () Bool)

(assert (=> b!3172470 (= e!1975894 (and tp!1002009 tp!1002008))))

(declare-fun b!3172469 () Bool)

(assert (=> b!3172469 (= e!1975894 tp_is_empty!17137)))

(assert (= (and b!3172338 ((_ is ElementMatch!9787) (reg!10116 r!4721))) b!3172469))

(assert (= (and b!3172338 ((_ is Concat!15108) (reg!10116 r!4721))) b!3172470))

(assert (= (and b!3172338 ((_ is Star!9787) (reg!10116 r!4721))) b!3172471))

(assert (= (and b!3172338 ((_ is Union!9787) (reg!10116 r!4721))) b!3172472))

(declare-fun b!3172475 () Bool)

(declare-fun e!1975895 () Bool)

(declare-fun tp!1002015 () Bool)

(assert (=> b!3172475 (= e!1975895 tp!1002015)))

(declare-fun b!3172476 () Bool)

(declare-fun tp!1002017 () Bool)

(declare-fun tp!1002016 () Bool)

(assert (=> b!3172476 (= e!1975895 (and tp!1002017 tp!1002016))))

(assert (=> b!3172342 (= tp!1001980 e!1975895)))

(declare-fun b!3172474 () Bool)

(declare-fun tp!1002014 () Bool)

(declare-fun tp!1002013 () Bool)

(assert (=> b!3172474 (= e!1975895 (and tp!1002014 tp!1002013))))

(declare-fun b!3172473 () Bool)

(assert (=> b!3172473 (= e!1975895 tp_is_empty!17137)))

(assert (= (and b!3172342 ((_ is ElementMatch!9787) (regOne!20086 r!4721))) b!3172473))

(assert (= (and b!3172342 ((_ is Concat!15108) (regOne!20086 r!4721))) b!3172474))

(assert (= (and b!3172342 ((_ is Star!9787) (regOne!20086 r!4721))) b!3172475))

(assert (= (and b!3172342 ((_ is Union!9787) (regOne!20086 r!4721))) b!3172476))

(declare-fun b!3172479 () Bool)

(declare-fun e!1975896 () Bool)

(declare-fun tp!1002020 () Bool)

(assert (=> b!3172479 (= e!1975896 tp!1002020)))

(declare-fun b!3172480 () Bool)

(declare-fun tp!1002022 () Bool)

(declare-fun tp!1002021 () Bool)

(assert (=> b!3172480 (= e!1975896 (and tp!1002022 tp!1002021))))

(assert (=> b!3172342 (= tp!1001975 e!1975896)))

(declare-fun b!3172478 () Bool)

(declare-fun tp!1002019 () Bool)

(declare-fun tp!1002018 () Bool)

(assert (=> b!3172478 (= e!1975896 (and tp!1002019 tp!1002018))))

(declare-fun b!3172477 () Bool)

(assert (=> b!3172477 (= e!1975896 tp_is_empty!17137)))

(assert (= (and b!3172342 ((_ is ElementMatch!9787) (regTwo!20086 r!4721))) b!3172477))

(assert (= (and b!3172342 ((_ is Concat!15108) (regTwo!20086 r!4721))) b!3172478))

(assert (= (and b!3172342 ((_ is Star!9787) (regTwo!20086 r!4721))) b!3172479))

(assert (= (and b!3172342 ((_ is Union!9787) (regTwo!20086 r!4721))) b!3172480))

(declare-fun b!3172483 () Bool)

(declare-fun e!1975897 () Bool)

(declare-fun tp!1002025 () Bool)

(assert (=> b!3172483 (= e!1975897 tp!1002025)))

(declare-fun b!3172484 () Bool)

(declare-fun tp!1002027 () Bool)

(declare-fun tp!1002026 () Bool)

(assert (=> b!3172484 (= e!1975897 (and tp!1002027 tp!1002026))))

(assert (=> b!3172339 (= tp!1001977 e!1975897)))

(declare-fun b!3172482 () Bool)

(declare-fun tp!1002024 () Bool)

(declare-fun tp!1002023 () Bool)

(assert (=> b!3172482 (= e!1975897 (and tp!1002024 tp!1002023))))

(declare-fun b!3172481 () Bool)

(assert (=> b!3172481 (= e!1975897 tp_is_empty!17137)))

(assert (= (and b!3172339 ((_ is ElementMatch!9787) (regOne!20087 r!4721))) b!3172481))

(assert (= (and b!3172339 ((_ is Concat!15108) (regOne!20087 r!4721))) b!3172482))

(assert (= (and b!3172339 ((_ is Star!9787) (regOne!20087 r!4721))) b!3172483))

(assert (= (and b!3172339 ((_ is Union!9787) (regOne!20087 r!4721))) b!3172484))

(declare-fun b!3172487 () Bool)

(declare-fun e!1975898 () Bool)

(declare-fun tp!1002030 () Bool)

(assert (=> b!3172487 (= e!1975898 tp!1002030)))

(declare-fun b!3172488 () Bool)

(declare-fun tp!1002032 () Bool)

(declare-fun tp!1002031 () Bool)

(assert (=> b!3172488 (= e!1975898 (and tp!1002032 tp!1002031))))

(assert (=> b!3172339 (= tp!1001982 e!1975898)))

(declare-fun b!3172486 () Bool)

(declare-fun tp!1002029 () Bool)

(declare-fun tp!1002028 () Bool)

(assert (=> b!3172486 (= e!1975898 (and tp!1002029 tp!1002028))))

(declare-fun b!3172485 () Bool)

(assert (=> b!3172485 (= e!1975898 tp_is_empty!17137)))

(assert (= (and b!3172339 ((_ is ElementMatch!9787) (regTwo!20087 r!4721))) b!3172485))

(assert (= (and b!3172339 ((_ is Concat!15108) (regTwo!20087 r!4721))) b!3172486))

(assert (= (and b!3172339 ((_ is Star!9787) (regTwo!20087 r!4721))) b!3172487))

(assert (= (and b!3172339 ((_ is Union!9787) (regTwo!20087 r!4721))) b!3172488))

(declare-fun mapNonEmpty!19073 () Bool)

(declare-fun mapRes!19073 () Bool)

(declare-fun tp!1002052 () Bool)

(declare-fun e!1975903 () Bool)

(assert (=> mapNonEmpty!19073 (= mapRes!19073 (and tp!1002052 e!1975903))))

(declare-fun mapRest!19073 () (Array (_ BitVec 32) List!35633))

(declare-fun mapKey!19073 () (_ BitVec 32))

(declare-fun mapValue!19073 () List!35633)

(assert (=> mapNonEmpty!19073 (= mapRest!19070 (store mapRest!19073 mapKey!19073 mapValue!19073))))

(declare-fun tp!1002053 () Bool)

(declare-fun tp!1002048 () Bool)

(declare-fun b!3172495 () Bool)

(declare-fun tp!1002047 () Bool)

(assert (=> b!3172495 (= e!1975903 (and tp!1002053 tp_is_empty!17137 tp!1002047 tp!1002048))))

(declare-fun b!3172496 () Bool)

(declare-fun tp!1002050 () Bool)

(declare-fun tp!1002051 () Bool)

(declare-fun tp!1002049 () Bool)

(declare-fun e!1975904 () Bool)

(assert (=> b!3172496 (= e!1975904 (and tp!1002049 tp_is_empty!17137 tp!1002050 tp!1002051))))

(declare-fun mapIsEmpty!19073 () Bool)

(assert (=> mapIsEmpty!19073 mapRes!19073))

(declare-fun condMapEmpty!19073 () Bool)

(declare-fun mapDefault!19073 () List!35633)

(assert (=> mapNonEmpty!19070 (= condMapEmpty!19073 (= mapRest!19070 ((as const (Array (_ BitVec 32) List!35633)) mapDefault!19073)))))

(assert (=> mapNonEmpty!19070 (= tp!1001978 (and e!1975904 mapRes!19073))))

(assert (= (and mapNonEmpty!19070 condMapEmpty!19073) mapIsEmpty!19073))

(assert (= (and mapNonEmpty!19070 (not condMapEmpty!19073)) mapNonEmpty!19073))

(assert (= (and mapNonEmpty!19073 ((_ is Cons!35509) mapValue!19073)) b!3172495))

(assert (= (and mapNonEmpty!19070 ((_ is Cons!35509) mapDefault!19073)) b!3172496))

(declare-fun m!3430763 () Bool)

(assert (=> mapNonEmpty!19073 m!3430763))

(declare-fun e!1975905 () Bool)

(declare-fun tp!1002055 () Bool)

(declare-fun b!3172497 () Bool)

(declare-fun tp!1002056 () Bool)

(declare-fun tp!1002054 () Bool)

(assert (=> b!3172497 (= e!1975905 (and tp!1002054 tp_is_empty!17137 tp!1002055 tp!1002056))))

(assert (=> mapNonEmpty!19070 (= tp!1001981 e!1975905)))

(assert (= (and mapNonEmpty!19070 ((_ is Cons!35509) mapValue!19070)) b!3172497))

(declare-fun b_lambda!86475 () Bool)

(assert (= b_lambda!86473 (or (and b!3172346 b_free!83315) b_lambda!86475)))

(declare-fun b_lambda!86477 () Bool)

(assert (= b_lambda!86471 (or (and b!3172346 b_free!83315) b_lambda!86477)))

(check-sat (not bm!230570) (not b_next!84017) (not b!3172387) (not d!869319) (not b!3172442) (not b!3172475) (not b!3172476) (not b!3172445) (not mapNonEmpty!19073) (not b!3172355) (not b_next!84019) (not b!3172372) (not b!3172486) (not b!3172356) (not b!3172496) (not bm!230571) (not b_lambda!86475) (not b!3172446) (not bm!230568) (not b!3172456) (not b!3172480) (not bm!230569) (not b!3172385) (not b_lambda!86477) (not b!3172483) (not b!3172457) (not b!3172411) (not tb!155107) (not b!3172441) (not d!869317) (not b!3172418) (not bm!230572) (not d!869325) (not d!869311) tp_is_empty!17137 (not b!3172484) (not b!3172472) (not bm!230553) (not b!3172495) (not b!3172470) b_and!209591 (not b!3172458) (not b!3172497) (not b!3172478) (not b!3172479) (not b!3172369) (not b!3172488) (not b!3172388) (not d!869313) (not b!3172482) (not b!3172474) (not b!3172371) (not bm!230573) (not b!3172487) (not b!3172451) (not b!3172471) b_and!209597 (not bm!230554))
(check-sat b_and!209597 b_and!209591 (not b_next!84017) (not b_next!84019))
