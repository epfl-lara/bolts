; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297090 () Bool)

(assert start!297090)

(declare-fun b!3172115 () Bool)

(declare-fun b_free!83305 () Bool)

(declare-fun b_next!84009 () Bool)

(assert (=> b!3172115 (= b_free!83305 (not b_next!84009))))

(declare-fun tp!1001828 () Bool)

(declare-fun b_and!209583 () Bool)

(assert (=> b!3172115 (= tp!1001828 b_and!209583)))

(declare-fun b!3172109 () Bool)

(declare-fun b_free!83307 () Bool)

(declare-fun b_next!84011 () Bool)

(assert (=> b!3172109 (= b_free!83307 (not b_next!84011))))

(declare-fun tp!1001826 () Bool)

(declare-fun b_and!209585 () Bool)

(assert (=> b!3172109 (= tp!1001826 b_and!209585)))

(declare-fun b!3172107 () Bool)

(declare-fun e!1975644 () Bool)

(declare-fun tp_is_empty!17133 () Bool)

(assert (=> b!3172107 (= e!1975644 tp_is_empty!17133)))

(declare-fun res!1289248 () Bool)

(declare-fun e!1975653 () Bool)

(assert (=> start!297090 (=> (not res!1289248) (not e!1975653))))

(declare-datatypes ((C!19756 0))(
  ( (C!19757 (val!11914 Int)) )
))
(declare-datatypes ((Regex!9785 0))(
  ( (ElementMatch!9785 (c!533289 C!19756)) (Concat!15106 (regOne!20082 Regex!9785) (regTwo!20082 Regex!9785)) (EmptyExpr!9785) (Star!9785 (reg!10114 Regex!9785)) (EmptyLang!9785) (Union!9785 (regOne!20083 Regex!9785) (regTwo!20083 Regex!9785)) )
))
(declare-fun r!4721 () Regex!9785)

(declare-fun validRegex!4493 (Regex!9785) Bool)

(assert (=> start!297090 (= res!1289248 (validRegex!4493 r!4721))))

(assert (=> start!297090 e!1975653))

(assert (=> start!297090 e!1975644))

(declare-datatypes ((tuple2!34796 0))(
  ( (tuple2!34797 (_1!20530 Regex!9785) (_2!20530 C!19756)) )
))
(declare-datatypes ((tuple2!34798 0))(
  ( (tuple2!34799 (_1!20531 tuple2!34796) (_2!20531 Regex!9785)) )
))
(declare-datatypes ((List!35630 0))(
  ( (Nil!35506) (Cons!35506 (h!40926 tuple2!34798) (t!234713 List!35630)) )
))
(declare-datatypes ((array!15064 0))(
  ( (array!15065 (arr!6702 (Array (_ BitVec 32) (_ BitVec 64))) (size!26788 (_ BitVec 32))) )
))
(declare-datatypes ((array!15066 0))(
  ( (array!15067 (arr!6703 (Array (_ BitVec 32) List!35630)) (size!26789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8412 0))(
  ( (LongMapFixedSize!8413 (defaultEntry!4591 Int) (mask!10892 (_ BitVec 32)) (extraKeys!4455 (_ BitVec 32)) (zeroValue!4465 List!35630) (minValue!4465 List!35630) (_size!8455 (_ BitVec 32)) (_keys!4506 array!15064) (_values!4487 array!15066) (_vacant!4267 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16633 0))(
  ( (Cell!16634 (v!35253 LongMapFixedSize!8412)) )
))
(declare-datatypes ((MutLongMap!4206 0))(
  ( (LongMap!4206 (underlying!8641 Cell!16633)) (MutLongMapExt!4205 (__x!22724 Int)) )
))
(declare-datatypes ((Cell!16635 0))(
  ( (Cell!16636 (v!35254 MutLongMap!4206)) )
))
(declare-datatypes ((Hashable!4122 0))(
  ( (HashableExt!4121 (__x!22725 Int)) )
))
(declare-datatypes ((MutableMap!4112 0))(
  ( (MutableMapExt!4111 (__x!22726 Int)) (HashMap!4112 (underlying!8642 Cell!16635) (hashF!6154 Hashable!4122) (_size!8456 (_ BitVec 32)) (defaultValue!4283 Int)) )
))
(declare-datatypes ((Cache!494 0))(
  ( (Cache!495 (cache!4258 MutableMap!4112)) )
))
(declare-fun thiss!28499 () Cache!494)

(declare-fun e!1975643 () Bool)

(declare-fun inv!48220 (Cache!494) Bool)

(assert (=> start!297090 (and (inv!48220 thiss!28499) e!1975643)))

(assert (=> start!297090 tp_is_empty!17133))

(declare-fun b!3172108 () Bool)

(declare-fun res!1289247 () Bool)

(assert (=> b!3172108 (=> (not res!1289247) (not e!1975653))))

(declare-fun c!6988 () C!19756)

(declare-fun contains!6214 (MutableMap!4112 tuple2!34796) Bool)

(assert (=> b!3172108 (= res!1289247 (contains!6214 (cache!4258 thiss!28499) (tuple2!34797 r!4721 c!6988)))))

(declare-fun tp!1001836 () Bool)

(declare-fun e!1975645 () Bool)

(declare-fun tp!1001825 () Bool)

(declare-fun e!1975646 () Bool)

(declare-fun array_inv!4806 (array!15064) Bool)

(declare-fun array_inv!4807 (array!15066) Bool)

(assert (=> b!3172109 (= e!1975646 (and tp!1001826 tp!1001825 tp!1001836 (array_inv!4806 (_keys!4506 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) (array_inv!4807 (_values!4487 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) e!1975645))))

(declare-fun b!3172110 () Bool)

(declare-fun e!1975650 () Bool)

(assert (=> b!3172110 (= e!1975643 e!1975650)))

(declare-fun b!3172111 () Bool)

(declare-fun tp!1001834 () Bool)

(assert (=> b!3172111 (= e!1975644 tp!1001834)))

(declare-fun b!3172112 () Bool)

(declare-fun tp!1001835 () Bool)

(declare-fun mapRes!19061 () Bool)

(assert (=> b!3172112 (= e!1975645 (and tp!1001835 mapRes!19061))))

(declare-fun condMapEmpty!19061 () Bool)

(declare-fun mapDefault!19061 () List!35630)

(assert (=> b!3172112 (= condMapEmpty!19061 (= (arr!6703 (_values!4487 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35630)) mapDefault!19061)))))

(declare-fun b!3172113 () Bool)

(declare-fun res!1289250 () Bool)

(assert (=> b!3172113 (=> (not res!1289250) (not e!1975653))))

(declare-fun validCacheMap!90 (MutableMap!4112) Bool)

(assert (=> b!3172113 (= res!1289250 (validCacheMap!90 (cache!4258 thiss!28499)))))

(declare-fun b!3172114 () Bool)

(declare-fun e!1975652 () Bool)

(assert (=> b!3172114 (= e!1975653 e!1975652)))

(declare-fun res!1289249 () Bool)

(assert (=> b!3172114 (=> (not res!1289249) (not e!1975652))))

(get-info :version)

(assert (=> b!3172114 (= res!1289249 ((_ is HashMap!4112) (cache!4258 thiss!28499)))))

(declare-datatypes ((Unit!49973 0))(
  ( (Unit!49974) )
))
(declare-fun lt!1066447 () Unit!49973)

(declare-fun lemmaIfInCacheThenValid!63 (Cache!494 Regex!9785 C!19756) Unit!49973)

(assert (=> b!3172114 (= lt!1066447 (lemmaIfInCacheThenValid!63 thiss!28499 r!4721 c!6988))))

(declare-fun e!1975649 () Bool)

(assert (=> b!3172115 (= e!1975650 (and e!1975649 tp!1001828))))

(declare-fun b!3172116 () Bool)

(declare-fun e!1975647 () Bool)

(declare-fun e!1975651 () Bool)

(assert (=> b!3172116 (= e!1975647 e!1975651)))

(declare-fun b!3172117 () Bool)

(declare-fun tp!1001829 () Bool)

(declare-fun tp!1001830 () Bool)

(assert (=> b!3172117 (= e!1975644 (and tp!1001829 tp!1001830))))

(declare-fun mapIsEmpty!19061 () Bool)

(assert (=> mapIsEmpty!19061 mapRes!19061))

(declare-fun b!3172118 () Bool)

(declare-fun lt!1066448 () MutLongMap!4206)

(assert (=> b!3172118 (= e!1975649 (and e!1975647 ((_ is LongMap!4206) lt!1066448)))))

(assert (=> b!3172118 (= lt!1066448 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))

(declare-fun b!3172119 () Bool)

(assert (=> b!3172119 (= e!1975651 e!1975646)))

(declare-fun b!3172120 () Bool)

(declare-fun tp!1001827 () Bool)

(declare-fun tp!1001832 () Bool)

(assert (=> b!3172120 (= e!1975644 (and tp!1001827 tp!1001832))))

(declare-fun mapNonEmpty!19061 () Bool)

(declare-fun tp!1001833 () Bool)

(declare-fun tp!1001831 () Bool)

(assert (=> mapNonEmpty!19061 (= mapRes!19061 (and tp!1001833 tp!1001831))))

(declare-fun mapKey!19061 () (_ BitVec 32))

(declare-fun mapValue!19061 () List!35630)

(declare-fun mapRest!19061 () (Array (_ BitVec 32) List!35630))

(assert (=> mapNonEmpty!19061 (= (arr!6703 (_values!4487 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) (store mapRest!19061 mapKey!19061 mapValue!19061))))

(declare-fun b!3172121 () Bool)

(declare-fun valid!3279 (MutableMap!4112) Bool)

(assert (=> b!3172121 (= e!1975652 (not (valid!3279 (cache!4258 thiss!28499))))))

(assert (= (and start!297090 res!1289248) b!3172113))

(assert (= (and b!3172113 res!1289250) b!3172108))

(assert (= (and b!3172108 res!1289247) b!3172114))

(assert (= (and b!3172114 res!1289249) b!3172121))

(assert (= (and start!297090 ((_ is ElementMatch!9785) r!4721)) b!3172107))

(assert (= (and start!297090 ((_ is Concat!15106) r!4721)) b!3172117))

(assert (= (and start!297090 ((_ is Star!9785) r!4721)) b!3172111))

(assert (= (and start!297090 ((_ is Union!9785) r!4721)) b!3172120))

(assert (= (and b!3172112 condMapEmpty!19061) mapIsEmpty!19061))

(assert (= (and b!3172112 (not condMapEmpty!19061)) mapNonEmpty!19061))

(assert (= b!3172109 b!3172112))

(assert (= b!3172119 b!3172109))

(assert (= b!3172116 b!3172119))

(assert (= (and b!3172118 ((_ is LongMap!4206) (v!35254 (underlying!8642 (cache!4258 thiss!28499))))) b!3172116))

(assert (= b!3172115 b!3172118))

(assert (= (and b!3172110 ((_ is HashMap!4112) (cache!4258 thiss!28499))) b!3172115))

(assert (= start!297090 b!3172110))

(declare-fun m!3430477 () Bool)

(assert (=> b!3172121 m!3430477))

(declare-fun m!3430479 () Bool)

(assert (=> start!297090 m!3430479))

(declare-fun m!3430481 () Bool)

(assert (=> start!297090 m!3430481))

(declare-fun m!3430483 () Bool)

(assert (=> b!3172109 m!3430483))

(declare-fun m!3430485 () Bool)

(assert (=> b!3172109 m!3430485))

(declare-fun m!3430487 () Bool)

(assert (=> b!3172113 m!3430487))

(declare-fun m!3430489 () Bool)

(assert (=> b!3172108 m!3430489))

(declare-fun m!3430491 () Bool)

(assert (=> b!3172114 m!3430491))

(declare-fun m!3430493 () Bool)

(assert (=> mapNonEmpty!19061 m!3430493))

(check-sat tp_is_empty!17133 (not b!3172109) (not b!3172117) (not b!3172114) (not start!297090) (not b!3172108) (not b_next!84009) (not mapNonEmpty!19061) (not b!3172112) b_and!209583 (not b!3172120) (not b!3172121) (not b_next!84011) (not b!3172111) b_and!209585 (not b!3172113))
(check-sat b_and!209583 b_and!209585 (not b_next!84011) (not b_next!84009))
(get-model)

(declare-fun lt!1066506 () (_ BitVec 64))

(declare-fun b!3172144 () Bool)

(declare-fun lambda!116053 () Int)

(declare-fun e!1975669 () Unit!49973)

(declare-datatypes ((tuple2!34800 0))(
  ( (tuple2!34801 (_1!20532 (_ BitVec 64)) (_2!20532 List!35630)) )
))
(declare-datatypes ((List!35631 0))(
  ( (Nil!35507) (Cons!35507 (h!40927 tuple2!34800) (t!234714 List!35631)) )
))
(declare-fun forallContained!1078 (List!35631 Int tuple2!34800) Unit!49973)

(declare-datatypes ((ListLongMap!745 0))(
  ( (ListLongMap!746 (toList!2089 List!35631)) )
))
(declare-fun map!7957 (MutLongMap!4206) ListLongMap!745)

(declare-fun apply!7970 (MutLongMap!4206 (_ BitVec 64)) List!35630)

(assert (=> b!3172144 (= e!1975669 (forallContained!1078 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))) lambda!116053 (tuple2!34801 lt!1066506 (apply!7970 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506))))))

(declare-fun c!533300 () Bool)

(declare-fun contains!6215 (List!35631 tuple2!34800) Bool)

(assert (=> b!3172144 (= c!533300 (not (contains!6215 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))) (tuple2!34801 lt!1066506 (apply!7970 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506)))))))

(declare-fun lt!1066503 () Unit!49973)

(declare-fun e!1975670 () Unit!49973)

(assert (=> b!3172144 (= lt!1066503 e!1975670)))

(declare-fun call!230539 () List!35630)

(declare-fun c!533298 () Bool)

(declare-fun bm!230532 () Bool)

(declare-fun lt!1066501 () ListLongMap!745)

(declare-fun call!230542 () ListLongMap!745)

(declare-fun call!230538 () (_ BitVec 64))

(declare-fun apply!7971 (ListLongMap!745 (_ BitVec 64)) List!35630)

(assert (=> bm!230532 (= call!230539 (apply!7971 (ite c!533298 lt!1066501 call!230542) call!230538))))

(declare-fun bm!230533 () Bool)

(declare-fun hash!813 (Hashable!4122 tuple2!34796) (_ BitVec 64))

(assert (=> bm!230533 (= call!230538 (hash!813 (hashF!6154 (cache!4258 thiss!28499)) (tuple2!34797 r!4721 c!6988)))))

(declare-fun b!3172145 () Bool)

(declare-fun Unit!49975 () Unit!49973)

(assert (=> b!3172145 (= e!1975670 Unit!49975)))

(declare-fun bm!230534 () Bool)

(declare-fun call!230541 () Bool)

(declare-fun contains!6216 (ListLongMap!745 (_ BitVec 64)) Bool)

(assert (=> bm!230534 (= call!230541 (contains!6216 (ite c!533298 lt!1066501 call!230542) call!230538))))

(declare-fun b!3172146 () Bool)

(declare-fun e!1975668 () Bool)

(declare-datatypes ((Option!6922 0))(
  ( (None!6921) (Some!6921 (v!35255 tuple2!34798)) )
))
(declare-fun isDefined!5434 (Option!6922) Bool)

(declare-fun getPair!100 (List!35630 tuple2!34796) Option!6922)

(assert (=> b!3172146 (= e!1975668 (isDefined!5434 (getPair!100 (apply!7970 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506) (tuple2!34797 r!4721 c!6988))))))

(declare-fun b!3172147 () Bool)

(declare-fun e!1975674 () Unit!49973)

(declare-fun e!1975672 () Unit!49973)

(assert (=> b!3172147 (= e!1975674 e!1975672)))

(declare-fun res!1289257 () Bool)

(assert (=> b!3172147 (= res!1289257 call!230541)))

(declare-fun e!1975673 () Bool)

(assert (=> b!3172147 (=> (not res!1289257) (not e!1975673))))

(declare-fun c!533301 () Bool)

(assert (=> b!3172147 (= c!533301 e!1975673)))

(declare-fun b!3172148 () Bool)

(declare-fun call!230537 () Bool)

(assert (=> b!3172148 (= e!1975673 call!230537)))

(declare-fun b!3172149 () Bool)

(declare-fun Unit!49976 () Unit!49973)

(assert (=> b!3172149 (= e!1975672 Unit!49976)))

(declare-fun b!3172150 () Bool)

(declare-fun lt!1066498 () Unit!49973)

(assert (=> b!3172150 (= e!1975674 lt!1066498)))

(assert (=> b!3172150 (= lt!1066501 call!230542)))

(declare-fun lemmaInGenericMapThenInLongMap!100 (ListLongMap!745 tuple2!34796 Hashable!4122) Unit!49973)

(assert (=> b!3172150 (= lt!1066498 (lemmaInGenericMapThenInLongMap!100 lt!1066501 (tuple2!34797 r!4721 c!6988) (hashF!6154 (cache!4258 thiss!28499))))))

(declare-fun res!1289259 () Bool)

(assert (=> b!3172150 (= res!1289259 call!230541)))

(declare-fun e!1975671 () Bool)

(assert (=> b!3172150 (=> (not res!1289259) (not e!1975671))))

(assert (=> b!3172150 e!1975671))

(declare-fun call!230540 () Option!6922)

(declare-fun bm!230535 () Bool)

(assert (=> bm!230535 (= call!230540 (getPair!100 call!230539 (tuple2!34797 r!4721 c!6988)))))

(declare-fun bm!230536 () Bool)

(assert (=> bm!230536 (= call!230542 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))))))

(declare-fun b!3172152 () Bool)

(assert (=> b!3172152 (= e!1975671 call!230537)))

(declare-fun b!3172153 () Bool)

(assert (=> b!3172153 false))

(declare-fun lt!1066502 () Unit!49973)

(declare-fun lt!1066499 () Unit!49973)

(assert (=> b!3172153 (= lt!1066502 lt!1066499)))

(declare-fun lt!1066496 () List!35631)

(declare-fun lt!1066508 () List!35630)

(assert (=> b!3172153 (contains!6215 lt!1066496 (tuple2!34801 lt!1066506 lt!1066508))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!106 (List!35631 (_ BitVec 64) List!35630) Unit!49973)

(assert (=> b!3172153 (= lt!1066499 (lemmaGetValueByKeyImpliesContainsTuple!106 lt!1066496 lt!1066506 lt!1066508))))

(assert (=> b!3172153 (= lt!1066508 (apply!7970 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506))))

(assert (=> b!3172153 (= lt!1066496 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))))

(declare-fun lt!1066505 () Unit!49973)

(declare-fun lt!1066492 () Unit!49973)

(assert (=> b!3172153 (= lt!1066505 lt!1066492)))

(declare-fun lt!1066493 () List!35631)

(declare-datatypes ((Option!6923 0))(
  ( (None!6922) (Some!6922 (v!35256 List!35630)) )
))
(declare-fun isDefined!5435 (Option!6923) Bool)

(declare-fun getValueByKey!186 (List!35631 (_ BitVec 64)) Option!6923)

(assert (=> b!3172153 (isDefined!5435 (getValueByKey!186 lt!1066493 lt!1066506))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!134 (List!35631 (_ BitVec 64)) Unit!49973)

(assert (=> b!3172153 (= lt!1066492 (lemmaContainsKeyImpliesGetValueByKeyDefined!134 lt!1066493 lt!1066506))))

(assert (=> b!3172153 (= lt!1066493 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))))

(declare-fun lt!1066491 () Unit!49973)

(declare-fun lt!1066489 () Unit!49973)

(assert (=> b!3172153 (= lt!1066491 lt!1066489)))

(declare-fun lt!1066504 () List!35631)

(declare-fun containsKey!202 (List!35631 (_ BitVec 64)) Bool)

(assert (=> b!3172153 (containsKey!202 lt!1066504 lt!1066506)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!101 (List!35631 (_ BitVec 64)) Unit!49973)

(assert (=> b!3172153 (= lt!1066489 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!101 lt!1066504 lt!1066506))))

(assert (=> b!3172153 (= lt!1066504 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))))

(declare-fun Unit!49977 () Unit!49973)

(assert (=> b!3172153 (= e!1975670 Unit!49977)))

(declare-fun b!3172154 () Bool)

(declare-fun Unit!49978 () Unit!49973)

(assert (=> b!3172154 (= e!1975669 Unit!49978)))

(declare-fun bm!230537 () Bool)

(assert (=> bm!230537 (= call!230537 (isDefined!5434 call!230540))))

(declare-fun b!3172151 () Bool)

(assert (=> b!3172151 false))

(declare-fun lt!1066507 () Unit!49973)

(declare-fun lt!1066494 () Unit!49973)

(assert (=> b!3172151 (= lt!1066507 lt!1066494)))

(declare-fun lt!1066495 () ListLongMap!745)

(declare-datatypes ((ListMap!1345 0))(
  ( (ListMap!1346 (toList!2090 List!35630)) )
))
(declare-fun contains!6217 (ListMap!1345 tuple2!34796) Bool)

(declare-fun extractMap!243 (List!35631) ListMap!1345)

(assert (=> b!3172151 (contains!6217 (extractMap!243 (toList!2089 lt!1066495)) (tuple2!34797 r!4721 c!6988))))

(declare-fun lemmaInLongMapThenInGenericMap!100 (ListLongMap!745 tuple2!34796 Hashable!4122) Unit!49973)

(assert (=> b!3172151 (= lt!1066494 (lemmaInLongMapThenInGenericMap!100 lt!1066495 (tuple2!34797 r!4721 c!6988) (hashF!6154 (cache!4258 thiss!28499))))))

(assert (=> b!3172151 (= lt!1066495 call!230542)))

(declare-fun Unit!49979 () Unit!49973)

(assert (=> b!3172151 (= e!1975672 Unit!49979)))

(declare-fun d!869290 () Bool)

(declare-fun lt!1066497 () Bool)

(declare-fun map!7958 (MutableMap!4112) ListMap!1345)

(assert (=> d!869290 (= lt!1066497 (contains!6217 (map!7958 (cache!4258 thiss!28499)) (tuple2!34797 r!4721 c!6988)))))

(assert (=> d!869290 (= lt!1066497 e!1975668)))

(declare-fun res!1289258 () Bool)

(assert (=> d!869290 (=> (not res!1289258) (not e!1975668))))

(declare-fun contains!6218 (MutLongMap!4206 (_ BitVec 64)) Bool)

(assert (=> d!869290 (= res!1289258 (contains!6218 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506))))

(declare-fun lt!1066500 () Unit!49973)

(assert (=> d!869290 (= lt!1066500 e!1975674)))

(assert (=> d!869290 (= c!533298 (contains!6217 (extractMap!243 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))))) (tuple2!34797 r!4721 c!6988)))))

(declare-fun lt!1066490 () Unit!49973)

(assert (=> d!869290 (= lt!1066490 e!1975669)))

(declare-fun c!533299 () Bool)

(assert (=> d!869290 (= c!533299 (contains!6218 (v!35254 (underlying!8642 (cache!4258 thiss!28499))) lt!1066506))))

(assert (=> d!869290 (= lt!1066506 (hash!813 (hashF!6154 (cache!4258 thiss!28499)) (tuple2!34797 r!4721 c!6988)))))

(assert (=> d!869290 (valid!3279 (cache!4258 thiss!28499))))

(assert (=> d!869290 (= (contains!6214 (cache!4258 thiss!28499) (tuple2!34797 r!4721 c!6988)) lt!1066497)))

(assert (= (and d!869290 c!533299) b!3172144))

(assert (= (and d!869290 (not c!533299)) b!3172154))

(assert (= (and b!3172144 c!533300) b!3172153))

(assert (= (and b!3172144 (not c!533300)) b!3172145))

(assert (= (and d!869290 c!533298) b!3172150))

(assert (= (and d!869290 (not c!533298)) b!3172147))

(assert (= (and b!3172150 res!1289259) b!3172152))

(assert (= (and b!3172147 res!1289257) b!3172148))

(assert (= (and b!3172147 c!533301) b!3172151))

(assert (= (and b!3172147 (not c!533301)) b!3172149))

(assert (= (or b!3172150 b!3172147 b!3172148 b!3172151) bm!230536))

(assert (= (or b!3172150 b!3172152 b!3172147 b!3172148) bm!230533))

(assert (= (or b!3172152 b!3172148) bm!230532))

(assert (= (or b!3172150 b!3172147) bm!230534))

(assert (= (or b!3172152 b!3172148) bm!230535))

(assert (= (or b!3172152 b!3172148) bm!230537))

(assert (= (and d!869290 res!1289258) b!3172146))

(declare-fun m!3430495 () Bool)

(assert (=> b!3172146 m!3430495))

(assert (=> b!3172146 m!3430495))

(declare-fun m!3430497 () Bool)

(assert (=> b!3172146 m!3430497))

(assert (=> b!3172146 m!3430497))

(declare-fun m!3430499 () Bool)

(assert (=> b!3172146 m!3430499))

(assert (=> d!869290 m!3430477))

(declare-fun m!3430501 () Bool)

(assert (=> d!869290 m!3430501))

(assert (=> d!869290 m!3430501))

(declare-fun m!3430503 () Bool)

(assert (=> d!869290 m!3430503))

(declare-fun m!3430505 () Bool)

(assert (=> d!869290 m!3430505))

(declare-fun m!3430507 () Bool)

(assert (=> d!869290 m!3430507))

(declare-fun m!3430509 () Bool)

(assert (=> d!869290 m!3430509))

(declare-fun m!3430511 () Bool)

(assert (=> d!869290 m!3430511))

(declare-fun m!3430513 () Bool)

(assert (=> d!869290 m!3430513))

(assert (=> d!869290 m!3430509))

(declare-fun m!3430515 () Bool)

(assert (=> b!3172153 m!3430515))

(declare-fun m!3430517 () Bool)

(assert (=> b!3172153 m!3430517))

(declare-fun m!3430519 () Bool)

(assert (=> b!3172153 m!3430519))

(declare-fun m!3430521 () Bool)

(assert (=> b!3172153 m!3430521))

(assert (=> b!3172153 m!3430519))

(declare-fun m!3430523 () Bool)

(assert (=> b!3172153 m!3430523))

(assert (=> b!3172153 m!3430505))

(declare-fun m!3430525 () Bool)

(assert (=> b!3172153 m!3430525))

(assert (=> b!3172153 m!3430495))

(declare-fun m!3430527 () Bool)

(assert (=> b!3172153 m!3430527))

(declare-fun m!3430529 () Bool)

(assert (=> bm!230537 m!3430529))

(declare-fun m!3430531 () Bool)

(assert (=> bm!230532 m!3430531))

(declare-fun m!3430533 () Bool)

(assert (=> b!3172151 m!3430533))

(assert (=> b!3172151 m!3430533))

(declare-fun m!3430535 () Bool)

(assert (=> b!3172151 m!3430535))

(declare-fun m!3430537 () Bool)

(assert (=> b!3172151 m!3430537))

(assert (=> bm!230536 m!3430505))

(assert (=> bm!230533 m!3430507))

(declare-fun m!3430539 () Bool)

(assert (=> bm!230535 m!3430539))

(assert (=> b!3172144 m!3430505))

(assert (=> b!3172144 m!3430495))

(declare-fun m!3430541 () Bool)

(assert (=> b!3172144 m!3430541))

(declare-fun m!3430543 () Bool)

(assert (=> b!3172144 m!3430543))

(declare-fun m!3430545 () Bool)

(assert (=> bm!230534 m!3430545))

(declare-fun m!3430547 () Bool)

(assert (=> b!3172150 m!3430547))

(assert (=> b!3172108 d!869290))

(declare-fun d!869292 () Bool)

(declare-fun e!1975688 () Bool)

(assert (=> d!869292 e!1975688))

(declare-fun res!1289267 () Bool)

(assert (=> d!869292 (=> res!1289267 e!1975688)))

(assert (=> d!869292 (= res!1289267 (not (contains!6214 (cache!4258 thiss!28499) (tuple2!34797 r!4721 c!6988))))))

(declare-fun lt!1066526 () Unit!49973)

(declare-fun e!1975687 () Unit!49973)

(assert (=> d!869292 (= lt!1066526 e!1975687)))

(declare-fun c!533305 () Bool)

(assert (=> d!869292 (= c!533305 (contains!6214 (cache!4258 thiss!28499) (tuple2!34797 r!4721 c!6988)))))

(assert (=> d!869292 (validCacheMap!90 (cache!4258 thiss!28499))))

(assert (=> d!869292 (= (lemmaIfInCacheThenValid!63 thiss!28499 r!4721 c!6988) lt!1066526)))

(declare-fun b!3172167 () Bool)

(declare-fun lt!1066528 () tuple2!34796)

(declare-fun lt!1066531 () tuple2!34796)

(assert (=> b!3172167 (= lt!1066528 lt!1066531)))

(declare-fun lt!1066529 () Regex!9785)

(declare-fun apply!7972 (MutableMap!4112 tuple2!34796) Regex!9785)

(assert (=> b!3172167 (= lt!1066529 (apply!7972 (cache!4258 thiss!28499) lt!1066531))))

(declare-fun lt!1066530 () Regex!9785)

(assert (=> b!3172167 (= lt!1066530 (apply!7972 (cache!4258 thiss!28499) lt!1066531))))

(declare-fun e!1975689 () Bool)

(declare-fun derivativeStep!2914 (Regex!9785 C!19756) Regex!9785)

(assert (=> b!3172167 (= e!1975689 (= (apply!7972 (cache!4258 thiss!28499) lt!1066531) (derivativeStep!2914 (_1!20530 lt!1066531) (_2!20530 lt!1066531))))))

(declare-fun b!3172165 () Bool)

(declare-fun lt!1066527 () Unit!49973)

(assert (=> b!3172165 (= e!1975687 lt!1066527)))

(assert (=> b!3172165 (= lt!1066531 (tuple2!34797 r!4721 c!6988))))

(declare-fun lambda!116056 () Int)

(declare-fun lemmaForallPairsThenForLookup!52 (MutableMap!4112 tuple2!34796 Int) Unit!49973)

(assert (=> b!3172165 (= lt!1066527 (lemmaForallPairsThenForLookup!52 (cache!4258 thiss!28499) lt!1066531 lambda!116056))))

(declare-fun lt!1066525 () tuple2!34798)

(assert (=> b!3172165 (= lt!1066525 (tuple2!34799 lt!1066531 (apply!7972 (cache!4258 thiss!28499) lt!1066531)))))

(declare-fun lt!1066532 () Regex!9785)

(assert (=> b!3172165 (= lt!1066532 (apply!7972 (cache!4258 thiss!28499) lt!1066531))))

(declare-fun res!1289266 () Bool)

(assert (=> b!3172165 (= res!1289266 (validRegex!4493 (_1!20530 lt!1066531)))))

(assert (=> b!3172165 (=> (not res!1289266) (not e!1975689))))

(assert (=> b!3172165 e!1975689))

(declare-fun b!3172166 () Bool)

(declare-fun Unit!49980 () Unit!49973)

(assert (=> b!3172166 (= e!1975687 Unit!49980)))

(declare-fun b!3172168 () Bool)

(assert (=> b!3172168 (= e!1975688 (= (derivativeStep!2914 r!4721 c!6988) (apply!7972 (cache!4258 thiss!28499) (tuple2!34797 r!4721 c!6988))))))

(assert (= (and d!869292 c!533305) b!3172165))

(assert (= (and d!869292 (not c!533305)) b!3172166))

(assert (= (and b!3172165 res!1289266) b!3172167))

(assert (= (and d!869292 (not res!1289267)) b!3172168))

(assert (=> d!869292 m!3430489))

(assert (=> d!869292 m!3430487))

(declare-fun m!3430549 () Bool)

(assert (=> b!3172167 m!3430549))

(declare-fun m!3430551 () Bool)

(assert (=> b!3172167 m!3430551))

(declare-fun m!3430553 () Bool)

(assert (=> b!3172165 m!3430553))

(assert (=> b!3172165 m!3430549))

(declare-fun m!3430555 () Bool)

(assert (=> b!3172165 m!3430555))

(declare-fun m!3430557 () Bool)

(assert (=> b!3172168 m!3430557))

(declare-fun m!3430559 () Bool)

(assert (=> b!3172168 m!3430559))

(assert (=> b!3172114 d!869292))

(declare-fun d!869294 () Bool)

(assert (=> d!869294 (= (array_inv!4806 (_keys!4506 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) (bvsge (size!26788 (_keys!4506 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172109 d!869294))

(declare-fun d!869296 () Bool)

(assert (=> d!869296 (= (array_inv!4807 (_values!4487 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) (bvsge (size!26789 (_values!4487 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172109 d!869296))

(declare-fun b!3172187 () Bool)

(declare-fun e!1975704 () Bool)

(declare-fun call!230550 () Bool)

(assert (=> b!3172187 (= e!1975704 call!230550)))

(declare-fun d!869298 () Bool)

(declare-fun res!1289282 () Bool)

(declare-fun e!1975708 () Bool)

(assert (=> d!869298 (=> res!1289282 e!1975708)))

(assert (=> d!869298 (= res!1289282 ((_ is ElementMatch!9785) r!4721))))

(assert (=> d!869298 (= (validRegex!4493 r!4721) e!1975708)))

(declare-fun b!3172188 () Bool)

(declare-fun e!1975706 () Bool)

(assert (=> b!3172188 (= e!1975708 e!1975706)))

(declare-fun c!533311 () Bool)

(assert (=> b!3172188 (= c!533311 ((_ is Star!9785) r!4721))))

(declare-fun b!3172189 () Bool)

(declare-fun e!1975705 () Bool)

(declare-fun call!230549 () Bool)

(assert (=> b!3172189 (= e!1975705 call!230549)))

(declare-fun b!3172190 () Bool)

(declare-fun e!1975707 () Bool)

(declare-fun e!1975709 () Bool)

(assert (=> b!3172190 (= e!1975707 e!1975709)))

(declare-fun res!1289281 () Bool)

(assert (=> b!3172190 (=> (not res!1289281) (not e!1975709))))

(declare-fun call!230551 () Bool)

(assert (=> b!3172190 (= res!1289281 call!230551)))

(declare-fun b!3172191 () Bool)

(declare-fun res!1289279 () Bool)

(assert (=> b!3172191 (=> (not res!1289279) (not e!1975705))))

(assert (=> b!3172191 (= res!1289279 call!230551)))

(declare-fun e!1975710 () Bool)

(assert (=> b!3172191 (= e!1975710 e!1975705)))

(declare-fun bm!230544 () Bool)

(declare-fun c!533310 () Bool)

(assert (=> bm!230544 (= call!230551 (validRegex!4493 (ite c!533310 (regOne!20083 r!4721) (regOne!20082 r!4721))))))

(declare-fun bm!230545 () Bool)

(assert (=> bm!230545 (= call!230549 call!230550)))

(declare-fun b!3172192 () Bool)

(declare-fun res!1289280 () Bool)

(assert (=> b!3172192 (=> res!1289280 e!1975707)))

(assert (=> b!3172192 (= res!1289280 (not ((_ is Concat!15106) r!4721)))))

(assert (=> b!3172192 (= e!1975710 e!1975707)))

(declare-fun bm!230546 () Bool)

(assert (=> bm!230546 (= call!230550 (validRegex!4493 (ite c!533311 (reg!10114 r!4721) (ite c!533310 (regTwo!20083 r!4721) (regTwo!20082 r!4721)))))))

(declare-fun b!3172193 () Bool)

(assert (=> b!3172193 (= e!1975706 e!1975704)))

(declare-fun res!1289278 () Bool)

(declare-fun nullable!3363 (Regex!9785) Bool)

(assert (=> b!3172193 (= res!1289278 (not (nullable!3363 (reg!10114 r!4721))))))

(assert (=> b!3172193 (=> (not res!1289278) (not e!1975704))))

(declare-fun b!3172194 () Bool)

(assert (=> b!3172194 (= e!1975706 e!1975710)))

(assert (=> b!3172194 (= c!533310 ((_ is Union!9785) r!4721))))

(declare-fun b!3172195 () Bool)

(assert (=> b!3172195 (= e!1975709 call!230549)))

(assert (= (and d!869298 (not res!1289282)) b!3172188))

(assert (= (and b!3172188 c!533311) b!3172193))

(assert (= (and b!3172188 (not c!533311)) b!3172194))

(assert (= (and b!3172193 res!1289278) b!3172187))

(assert (= (and b!3172194 c!533310) b!3172191))

(assert (= (and b!3172194 (not c!533310)) b!3172192))

(assert (= (and b!3172191 res!1289279) b!3172189))

(assert (= (and b!3172192 (not res!1289280)) b!3172190))

(assert (= (and b!3172190 res!1289281) b!3172195))

(assert (= (or b!3172191 b!3172190) bm!230544))

(assert (= (or b!3172189 b!3172195) bm!230545))

(assert (= (or b!3172187 bm!230545) bm!230546))

(declare-fun m!3430561 () Bool)

(assert (=> bm!230544 m!3430561))

(declare-fun m!3430563 () Bool)

(assert (=> bm!230546 m!3430563))

(declare-fun m!3430565 () Bool)

(assert (=> b!3172193 m!3430565))

(assert (=> start!297090 d!869298))

(declare-fun d!869300 () Bool)

(declare-fun res!1289285 () Bool)

(declare-fun e!1975713 () Bool)

(assert (=> d!869300 (=> (not res!1289285) (not e!1975713))))

(assert (=> d!869300 (= res!1289285 ((_ is HashMap!4112) (cache!4258 thiss!28499)))))

(assert (=> d!869300 (= (inv!48220 thiss!28499) e!1975713)))

(declare-fun b!3172198 () Bool)

(assert (=> b!3172198 (= e!1975713 (validCacheMap!90 (cache!4258 thiss!28499)))))

(assert (= (and d!869300 res!1289285) b!3172198))

(assert (=> b!3172198 m!3430487))

(assert (=> start!297090 d!869300))

(declare-fun bs!539617 () Bool)

(declare-fun b!3172203 () Bool)

(assert (= bs!539617 (and b!3172203 b!3172144)))

(declare-fun lambda!116059 () Int)

(assert (=> bs!539617 (= lambda!116059 lambda!116053)))

(declare-fun d!869302 () Bool)

(declare-fun res!1289290 () Bool)

(declare-fun e!1975716 () Bool)

(assert (=> d!869302 (=> (not res!1289290) (not e!1975716))))

(declare-fun valid!3280 (MutLongMap!4206) Bool)

(assert (=> d!869302 (= res!1289290 (valid!3280 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))))))

(assert (=> d!869302 (= (valid!3279 (cache!4258 thiss!28499)) e!1975716)))

(declare-fun res!1289291 () Bool)

(assert (=> b!3172203 (=> (not res!1289291) (not e!1975716))))

(declare-fun forall!7175 (List!35631 Int) Bool)

(assert (=> b!3172203 (= res!1289291 (forall!7175 (toList!2089 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499))))) lambda!116059))))

(declare-fun b!3172204 () Bool)

(declare-fun allKeysSameHashInMap!246 (ListLongMap!745 Hashable!4122) Bool)

(assert (=> b!3172204 (= e!1975716 (allKeysSameHashInMap!246 (map!7957 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))) (hashF!6154 (cache!4258 thiss!28499))))))

(assert (= (and d!869302 res!1289290) b!3172203))

(assert (= (and b!3172203 res!1289291) b!3172204))

(declare-fun m!3430567 () Bool)

(assert (=> d!869302 m!3430567))

(assert (=> b!3172203 m!3430505))

(declare-fun m!3430569 () Bool)

(assert (=> b!3172203 m!3430569))

(assert (=> b!3172204 m!3430505))

(assert (=> b!3172204 m!3430505))

(declare-fun m!3430571 () Bool)

(assert (=> b!3172204 m!3430571))

(assert (=> b!3172121 d!869302))

(declare-fun bs!539618 () Bool)

(declare-fun b!3172212 () Bool)

(assert (= bs!539618 (and b!3172212 b!3172165)))

(declare-fun lambda!116062 () Int)

(assert (=> bs!539618 (= lambda!116062 lambda!116056)))

(declare-fun d!869304 () Bool)

(declare-fun res!1289298 () Bool)

(declare-fun e!1975721 () Bool)

(assert (=> d!869304 (=> (not res!1289298) (not e!1975721))))

(assert (=> d!869304 (= res!1289298 (valid!3279 (cache!4258 thiss!28499)))))

(assert (=> d!869304 (= (validCacheMap!90 (cache!4258 thiss!28499)) e!1975721)))

(declare-fun b!3172211 () Bool)

(declare-fun res!1289299 () Bool)

(assert (=> b!3172211 (=> (not res!1289299) (not e!1975721))))

(declare-fun invariantList!495 (List!35630) Bool)

(assert (=> b!3172211 (= res!1289299 (invariantList!495 (toList!2090 (map!7958 (cache!4258 thiss!28499)))))))

(declare-fun forall!7176 (List!35630 Int) Bool)

(assert (=> b!3172212 (= e!1975721 (forall!7176 (toList!2090 (map!7958 (cache!4258 thiss!28499))) lambda!116062))))

(assert (= (and d!869304 res!1289298) b!3172211))

(assert (= (and b!3172211 res!1289299) b!3172212))

(assert (=> d!869304 m!3430477))

(assert (=> b!3172211 m!3430509))

(declare-fun m!3430574 () Bool)

(assert (=> b!3172211 m!3430574))

(assert (=> b!3172212 m!3430509))

(declare-fun m!3430576 () Bool)

(assert (=> b!3172212 m!3430576))

(assert (=> b!3172113 d!869304))

(declare-fun tp!1001845 () Bool)

(declare-fun e!1975724 () Bool)

(declare-fun b!3172217 () Bool)

(declare-fun tp!1001843 () Bool)

(declare-fun tp!1001844 () Bool)

(assert (=> b!3172217 (= e!1975724 (and tp!1001843 tp_is_empty!17133 tp!1001844 tp!1001845))))

(assert (=> b!3172109 (= tp!1001825 e!1975724)))

(assert (= (and b!3172109 ((_ is Cons!35506) (zeroValue!4465 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))))))) b!3172217))

(declare-fun tp!1001846 () Bool)

(declare-fun tp!1001847 () Bool)

(declare-fun b!3172218 () Bool)

(declare-fun e!1975725 () Bool)

(declare-fun tp!1001848 () Bool)

(assert (=> b!3172218 (= e!1975725 (and tp!1001846 tp_is_empty!17133 tp!1001847 tp!1001848))))

(assert (=> b!3172109 (= tp!1001836 e!1975725)))

(assert (= (and b!3172109 ((_ is Cons!35506) (minValue!4465 (v!35253 (underlying!8641 (v!35254 (underlying!8642 (cache!4258 thiss!28499)))))))) b!3172218))

(declare-fun tp!1001850 () Bool)

(declare-fun tp!1001849 () Bool)

(declare-fun e!1975726 () Bool)

(declare-fun b!3172219 () Bool)

(declare-fun tp!1001851 () Bool)

(assert (=> b!3172219 (= e!1975726 (and tp!1001849 tp_is_empty!17133 tp!1001850 tp!1001851))))

(assert (=> b!3172112 (= tp!1001835 e!1975726)))

(assert (= (and b!3172112 ((_ is Cons!35506) mapDefault!19061)) b!3172219))

(declare-fun b!3172233 () Bool)

(declare-fun e!1975729 () Bool)

(declare-fun tp!1001865 () Bool)

(declare-fun tp!1001862 () Bool)

(assert (=> b!3172233 (= e!1975729 (and tp!1001865 tp!1001862))))

(declare-fun b!3172232 () Bool)

(declare-fun tp!1001864 () Bool)

(assert (=> b!3172232 (= e!1975729 tp!1001864)))

(assert (=> b!3172111 (= tp!1001834 e!1975729)))

(declare-fun b!3172231 () Bool)

(declare-fun tp!1001866 () Bool)

(declare-fun tp!1001863 () Bool)

(assert (=> b!3172231 (= e!1975729 (and tp!1001866 tp!1001863))))

(declare-fun b!3172230 () Bool)

(assert (=> b!3172230 (= e!1975729 tp_is_empty!17133)))

(assert (= (and b!3172111 ((_ is ElementMatch!9785) (reg!10114 r!4721))) b!3172230))

(assert (= (and b!3172111 ((_ is Concat!15106) (reg!10114 r!4721))) b!3172231))

(assert (= (and b!3172111 ((_ is Star!9785) (reg!10114 r!4721))) b!3172232))

(assert (= (and b!3172111 ((_ is Union!9785) (reg!10114 r!4721))) b!3172233))

(declare-fun tp!1001887 () Bool)

(declare-fun e!1975734 () Bool)

(declare-fun tp!1001882 () Bool)

(declare-fun b!3172240 () Bool)

(declare-fun tp!1001885 () Bool)

(assert (=> b!3172240 (= e!1975734 (and tp!1001885 tp_is_empty!17133 tp!1001887 tp!1001882))))

(declare-fun mapIsEmpty!19064 () Bool)

(declare-fun mapRes!19064 () Bool)

(assert (=> mapIsEmpty!19064 mapRes!19064))

(declare-fun condMapEmpty!19064 () Bool)

(declare-fun mapDefault!19064 () List!35630)

(assert (=> mapNonEmpty!19061 (= condMapEmpty!19064 (= mapRest!19061 ((as const (Array (_ BitVec 32) List!35630)) mapDefault!19064)))))

(declare-fun e!1975735 () Bool)

(assert (=> mapNonEmpty!19061 (= tp!1001833 (and e!1975735 mapRes!19064))))

(declare-fun mapNonEmpty!19064 () Bool)

(declare-fun tp!1001884 () Bool)

(assert (=> mapNonEmpty!19064 (= mapRes!19064 (and tp!1001884 e!1975734))))

(declare-fun mapRest!19064 () (Array (_ BitVec 32) List!35630))

(declare-fun mapKey!19064 () (_ BitVec 32))

(declare-fun mapValue!19064 () List!35630)

(assert (=> mapNonEmpty!19064 (= mapRest!19061 (store mapRest!19064 mapKey!19064 mapValue!19064))))

(declare-fun tp!1001881 () Bool)

(declare-fun tp!1001886 () Bool)

(declare-fun tp!1001883 () Bool)

(declare-fun b!3172241 () Bool)

(assert (=> b!3172241 (= e!1975735 (and tp!1001881 tp_is_empty!17133 tp!1001886 tp!1001883))))

(assert (= (and mapNonEmpty!19061 condMapEmpty!19064) mapIsEmpty!19064))

(assert (= (and mapNonEmpty!19061 (not condMapEmpty!19064)) mapNonEmpty!19064))

(assert (= (and mapNonEmpty!19064 ((_ is Cons!35506) mapValue!19064)) b!3172240))

(assert (= (and mapNonEmpty!19061 ((_ is Cons!35506) mapDefault!19064)) b!3172241))

(declare-fun m!3430578 () Bool)

(assert (=> mapNonEmpty!19064 m!3430578))

(declare-fun e!1975736 () Bool)

(declare-fun tp!1001888 () Bool)

(declare-fun tp!1001889 () Bool)

(declare-fun b!3172242 () Bool)

(declare-fun tp!1001890 () Bool)

(assert (=> b!3172242 (= e!1975736 (and tp!1001888 tp_is_empty!17133 tp!1001889 tp!1001890))))

(assert (=> mapNonEmpty!19061 (= tp!1001831 e!1975736)))

(assert (= (and mapNonEmpty!19061 ((_ is Cons!35506) mapValue!19061)) b!3172242))

(declare-fun b!3172246 () Bool)

(declare-fun e!1975737 () Bool)

(declare-fun tp!1001894 () Bool)

(declare-fun tp!1001891 () Bool)

(assert (=> b!3172246 (= e!1975737 (and tp!1001894 tp!1001891))))

(declare-fun b!3172245 () Bool)

(declare-fun tp!1001893 () Bool)

(assert (=> b!3172245 (= e!1975737 tp!1001893)))

(assert (=> b!3172117 (= tp!1001829 e!1975737)))

(declare-fun b!3172244 () Bool)

(declare-fun tp!1001895 () Bool)

(declare-fun tp!1001892 () Bool)

(assert (=> b!3172244 (= e!1975737 (and tp!1001895 tp!1001892))))

(declare-fun b!3172243 () Bool)

(assert (=> b!3172243 (= e!1975737 tp_is_empty!17133)))

(assert (= (and b!3172117 ((_ is ElementMatch!9785) (regOne!20082 r!4721))) b!3172243))

(assert (= (and b!3172117 ((_ is Concat!15106) (regOne!20082 r!4721))) b!3172244))

(assert (= (and b!3172117 ((_ is Star!9785) (regOne!20082 r!4721))) b!3172245))

(assert (= (and b!3172117 ((_ is Union!9785) (regOne!20082 r!4721))) b!3172246))

(declare-fun b!3172250 () Bool)

(declare-fun e!1975738 () Bool)

(declare-fun tp!1001899 () Bool)

(declare-fun tp!1001896 () Bool)

(assert (=> b!3172250 (= e!1975738 (and tp!1001899 tp!1001896))))

(declare-fun b!3172249 () Bool)

(declare-fun tp!1001898 () Bool)

(assert (=> b!3172249 (= e!1975738 tp!1001898)))

(assert (=> b!3172117 (= tp!1001830 e!1975738)))

(declare-fun b!3172248 () Bool)

(declare-fun tp!1001900 () Bool)

(declare-fun tp!1001897 () Bool)

(assert (=> b!3172248 (= e!1975738 (and tp!1001900 tp!1001897))))

(declare-fun b!3172247 () Bool)

(assert (=> b!3172247 (= e!1975738 tp_is_empty!17133)))

(assert (= (and b!3172117 ((_ is ElementMatch!9785) (regTwo!20082 r!4721))) b!3172247))

(assert (= (and b!3172117 ((_ is Concat!15106) (regTwo!20082 r!4721))) b!3172248))

(assert (= (and b!3172117 ((_ is Star!9785) (regTwo!20082 r!4721))) b!3172249))

(assert (= (and b!3172117 ((_ is Union!9785) (regTwo!20082 r!4721))) b!3172250))

(declare-fun b!3172254 () Bool)

(declare-fun e!1975739 () Bool)

(declare-fun tp!1001904 () Bool)

(declare-fun tp!1001901 () Bool)

(assert (=> b!3172254 (= e!1975739 (and tp!1001904 tp!1001901))))

(declare-fun b!3172253 () Bool)

(declare-fun tp!1001903 () Bool)

(assert (=> b!3172253 (= e!1975739 tp!1001903)))

(assert (=> b!3172120 (= tp!1001827 e!1975739)))

(declare-fun b!3172252 () Bool)

(declare-fun tp!1001905 () Bool)

(declare-fun tp!1001902 () Bool)

(assert (=> b!3172252 (= e!1975739 (and tp!1001905 tp!1001902))))

(declare-fun b!3172251 () Bool)

(assert (=> b!3172251 (= e!1975739 tp_is_empty!17133)))

(assert (= (and b!3172120 ((_ is ElementMatch!9785) (regOne!20083 r!4721))) b!3172251))

(assert (= (and b!3172120 ((_ is Concat!15106) (regOne!20083 r!4721))) b!3172252))

(assert (= (and b!3172120 ((_ is Star!9785) (regOne!20083 r!4721))) b!3172253))

(assert (= (and b!3172120 ((_ is Union!9785) (regOne!20083 r!4721))) b!3172254))

(declare-fun b!3172258 () Bool)

(declare-fun e!1975740 () Bool)

(declare-fun tp!1001909 () Bool)

(declare-fun tp!1001906 () Bool)

(assert (=> b!3172258 (= e!1975740 (and tp!1001909 tp!1001906))))

(declare-fun b!3172257 () Bool)

(declare-fun tp!1001908 () Bool)

(assert (=> b!3172257 (= e!1975740 tp!1001908)))

(assert (=> b!3172120 (= tp!1001832 e!1975740)))

(declare-fun b!3172256 () Bool)

(declare-fun tp!1001910 () Bool)

(declare-fun tp!1001907 () Bool)

(assert (=> b!3172256 (= e!1975740 (and tp!1001910 tp!1001907))))

(declare-fun b!3172255 () Bool)

(assert (=> b!3172255 (= e!1975740 tp_is_empty!17133)))

(assert (= (and b!3172120 ((_ is ElementMatch!9785) (regTwo!20083 r!4721))) b!3172255))

(assert (= (and b!3172120 ((_ is Concat!15106) (regTwo!20083 r!4721))) b!3172256))

(assert (= (and b!3172120 ((_ is Star!9785) (regTwo!20083 r!4721))) b!3172257))

(assert (= (and b!3172120 ((_ is Union!9785) (regTwo!20083 r!4721))) b!3172258))

(check-sat (not d!869304) (not b!3172232) (not b!3172240) (not b!3172144) (not b_next!84011) (not d!869302) (not bm!230534) (not b!3172252) (not b!3172204) (not b!3172246) (not bm!230544) (not bm!230535) (not b!3172245) (not b!3172211) (not b!3172257) tp_is_empty!17133 (not b!3172219) (not b!3172212) (not bm!230546) (not b!3172146) (not mapNonEmpty!19064) (not b!3172244) (not b!3172248) (not b!3172233) (not b!3172168) (not b!3172151) (not b!3172242) (not d!869290) (not b!3172256) (not b!3172165) (not b!3172218) (not b!3172258) (not b!3172253) (not b!3172150) (not bm!230537) (not b!3172203) (not bm!230533) (not b!3172254) (not b!3172193) (not b!3172217) (not b!3172231) (not b!3172250) (not bm!230536) b_and!209585 (not b!3172167) (not b!3172153) (not b_next!84009) (not b!3172249) (not bm!230532) (not d!869292) b_and!209583 (not b!3172241) (not b!3172198))
(check-sat b_and!209583 b_and!209585 (not b_next!84011) (not b_next!84009))
