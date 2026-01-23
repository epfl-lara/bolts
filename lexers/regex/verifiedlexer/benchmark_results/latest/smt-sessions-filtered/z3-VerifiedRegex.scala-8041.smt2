; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416352 () Bool)

(assert start!416352)

(declare-fun b!4324369 () Bool)

(declare-fun b_free!129011 () Bool)

(declare-fun b_next!129715 () Bool)

(assert (=> b!4324369 (= b_free!129011 (not b_next!129715))))

(declare-fun tp!1327240 () Bool)

(declare-fun b_and!340585 () Bool)

(assert (=> b!4324369 (= tp!1327240 b_and!340585)))

(declare-fun b!4324368 () Bool)

(declare-fun b_free!129013 () Bool)

(declare-fun b_next!129717 () Bool)

(assert (=> b!4324368 (= b_free!129013 (not b_next!129717))))

(declare-fun tp!1327239 () Bool)

(declare-fun b_and!340587 () Bool)

(assert (=> b!4324368 (= tp!1327239 b_and!340587)))

(declare-fun mapNonEmpty!21231 () Bool)

(declare-fun mapRes!21231 () Bool)

(declare-fun tp!1327241 () Bool)

(declare-fun tp!1327242 () Bool)

(assert (=> mapNonEmpty!21231 (= mapRes!21231 (and tp!1327241 tp!1327242))))

(declare-datatypes ((K!9654 0))(
  ( (K!9655 (val!15981 Int)) )
))
(declare-datatypes ((V!9856 0))(
  ( (V!9857 (val!15982 Int)) )
))
(declare-datatypes ((tuple2!47254 0))(
  ( (tuple2!47255 (_1!26915 K!9654) (_2!26915 V!9856)) )
))
(declare-datatypes ((List!48527 0))(
  ( (Nil!48403) (Cons!48403 (h!53867 tuple2!47254) (t!355421 List!48527)) )
))
(declare-fun mapValue!21231 () List!48527)

(declare-fun mapKey!21231 () (_ BitVec 32))

(declare-fun mapRest!21231 () (Array (_ BitVec 32) List!48527))

(declare-datatypes ((array!17280 0))(
  ( (array!17281 (arr!7711 (Array (_ BitVec 32) (_ BitVec 64))) (size!35750 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4679 0))(
  ( (HashableExt!4678 (__x!30314 Int)) )
))
(declare-datatypes ((array!17282 0))(
  ( (array!17283 (arr!7712 (Array (_ BitVec 32) List!48527)) (size!35751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9526 0))(
  ( (LongMapFixedSize!9527 (defaultEntry!5168 Int) (mask!13407 (_ BitVec 32)) (extraKeys!5028 (_ BitVec 32)) (zeroValue!5040 List!48527) (minValue!5040 List!48527) (_size!9571 (_ BitVec 32)) (_keys!5089 array!17280) (_values!5064 array!17282) (_vacant!4826 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18861 0))(
  ( (Cell!18862 (v!42818 LongMapFixedSize!9526)) )
))
(declare-datatypes ((MutLongMap!4763 0))(
  ( (LongMap!4763 (underlying!9755 Cell!18861)) (MutLongMapExt!4762 (__x!30315 Int)) )
))
(declare-datatypes ((Cell!18863 0))(
  ( (Cell!18864 (v!42819 MutLongMap!4763)) )
))
(declare-datatypes ((MutableMap!4669 0))(
  ( (MutableMapExt!4668 (__x!30316 Int)) (HashMap!4669 (underlying!9756 Cell!18863) (hashF!6961 Hashable!4679) (_size!9572 (_ BitVec 32)) (defaultValue!4840 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4669)

(assert (=> mapNonEmpty!21231 (= (arr!7712 (_values!5064 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) (store mapRest!21231 mapKey!21231 mapValue!21231))))

(declare-fun res!1772242 () Bool)

(declare-fun e!2690520 () Bool)

(assert (=> start!416352 (=> (not res!1772242) (not e!2690520))))

(get-info :version)

(assert (=> start!416352 (= res!1772242 ((_ is HashMap!4669) thiss!42308))))

(assert (=> start!416352 e!2690520))

(declare-fun e!2690522 () Bool)

(assert (=> start!416352 e!2690522))

(declare-fun tp_is_empty!24149 () Bool)

(assert (=> start!416352 tp_is_empty!24149))

(declare-fun tp_is_empty!24151 () Bool)

(assert (=> start!416352 tp_is_empty!24151))

(declare-fun b!4324363 () Bool)

(declare-fun e!2690525 () Bool)

(declare-fun tp!1327238 () Bool)

(assert (=> b!4324363 (= e!2690525 (and tp!1327238 mapRes!21231))))

(declare-fun condMapEmpty!21231 () Bool)

(declare-fun mapDefault!21231 () List!48527)

(assert (=> b!4324363 (= condMapEmpty!21231 (= (arr!7712 (_values!5064 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48527)) mapDefault!21231)))))

(declare-fun b!4324364 () Bool)

(declare-fun res!1772238 () Bool)

(assert (=> b!4324364 (=> (not res!1772238) (not e!2690520))))

(declare-fun valid!3777 (MutableMap!4669) Bool)

(assert (=> b!4324364 (= res!1772238 (valid!3777 thiss!42308))))

(declare-fun b!4324365 () Bool)

(declare-fun e!2690526 () Bool)

(assert (=> b!4324365 (= e!2690520 e!2690526)))

(declare-fun res!1772240 () Bool)

(assert (=> b!4324365 (=> (not res!1772240) (not e!2690526))))

(declare-fun key!2048 () K!9654)

(declare-fun contains!10465 (MutableMap!4669 K!9654) Bool)

(assert (=> b!4324365 (= res!1772240 (not (contains!10465 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47256 0))(
  ( (tuple2!47257 (_1!26916 (_ BitVec 64)) (_2!26916 List!48527)) )
))
(declare-datatypes ((List!48528 0))(
  ( (Nil!48404) (Cons!48404 (h!53868 tuple2!47256) (t!355422 List!48528)) )
))
(declare-datatypes ((ListLongMap!1191 0))(
  ( (ListLongMap!1192 (toList!2574 List!48528)) )
))
(declare-fun lt!1541674 () ListLongMap!1191)

(declare-fun map!10433 (MutLongMap!4763) ListLongMap!1191)

(assert (=> b!4324365 (= lt!1541674 (map!10433 (v!42819 (underlying!9756 thiss!42308))))))

(declare-datatypes ((ListMap!1851 0))(
  ( (ListMap!1852 (toList!2575 List!48527)) )
))
(declare-fun lt!1541673 () ListMap!1851)

(declare-fun map!10434 (MutableMap!4669) ListMap!1851)

(assert (=> b!4324365 (= lt!1541673 (map!10434 thiss!42308))))

(declare-fun b!4324366 () Bool)

(declare-fun e!2690518 () Bool)

(declare-fun e!2690528 () Bool)

(assert (=> b!4324366 (= e!2690518 e!2690528)))

(declare-fun b!4324367 () Bool)

(declare-fun e!2690521 () Bool)

(declare-datatypes ((tuple2!47258 0))(
  ( (tuple2!47259 (_1!26917 Bool) (_2!26917 MutLongMap!4763)) )
))
(declare-fun lt!1541668 () tuple2!47258)

(declare-fun lambda!134131 () Int)

(declare-fun forall!8826 (List!48528 Int) Bool)

(assert (=> b!4324367 (= e!2690521 (not (forall!8826 (toList!2574 (map!10433 (_2!26917 lt!1541668))) lambda!134131)))))

(declare-fun lt!1541678 () ListLongMap!1191)

(declare-fun lt!1541672 () tuple2!47254)

(declare-fun eq!156 (ListMap!1851 ListMap!1851) Bool)

(declare-fun extractMap!376 (List!48528) ListMap!1851)

(declare-fun +!344 (ListMap!1851 tuple2!47254) ListMap!1851)

(assert (=> b!4324367 (eq!156 (extractMap!376 (toList!2574 lt!1541678)) (+!344 (extractMap!376 (toList!2574 lt!1541674)) lt!1541672))))

(declare-fun v!9179 () V!9856)

(declare-fun lt!1541677 () (_ BitVec 64))

(declare-fun lt!1541676 () List!48527)

(declare-datatypes ((Unit!67928 0))(
  ( (Unit!67929) )
))
(declare-fun lt!1541670 () Unit!67928)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!61 (ListLongMap!1191 (_ BitVec 64) List!48527 K!9654 V!9856 Hashable!4679) Unit!67928)

(assert (=> b!4324367 (= lt!1541670 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!61 lt!1541674 lt!1541677 lt!1541676 key!2048 v!9179 (hashF!6961 thiss!42308)))))

(declare-fun e!2690516 () Bool)

(assert (=> b!4324367 e!2690516))

(declare-fun res!1772239 () Bool)

(assert (=> b!4324367 (=> (not res!1772239) (not e!2690516))))

(assert (=> b!4324367 (= res!1772239 (forall!8826 (toList!2574 lt!1541678) lambda!134131))))

(declare-fun +!345 (ListLongMap!1191 tuple2!47256) ListLongMap!1191)

(assert (=> b!4324367 (= lt!1541678 (+!345 lt!1541674 (tuple2!47257 lt!1541677 lt!1541676)))))

(declare-fun lt!1541671 () Unit!67928)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!189 (ListLongMap!1191 (_ BitVec 64) List!48527 Hashable!4679) Unit!67928)

(assert (=> b!4324367 (= lt!1541671 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!189 lt!1541674 lt!1541677 lt!1541676 (hashF!6961 thiss!42308)))))

(declare-fun lt!1541667 () Unit!67928)

(declare-fun e!2690527 () Unit!67928)

(assert (=> b!4324367 (= lt!1541667 e!2690527)))

(declare-fun c!735685 () Bool)

(declare-fun lt!1541666 () List!48527)

(declare-fun isEmpty!28133 (List!48527) Bool)

(assert (=> b!4324367 (= c!735685 (not (isEmpty!28133 lt!1541666)))))

(declare-fun e!2690517 () Bool)

(assert (=> b!4324368 (= e!2690522 (and e!2690517 tp!1327239))))

(declare-fun tp!1327237 () Bool)

(declare-fun tp!1327243 () Bool)

(declare-fun array_inv!5555 (array!17280) Bool)

(declare-fun array_inv!5556 (array!17282) Bool)

(assert (=> b!4324369 (= e!2690528 (and tp!1327240 tp!1327243 tp!1327237 (array_inv!5555 (_keys!5089 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) (array_inv!5556 (_values!5064 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) e!2690525))))

(declare-fun b!4324370 () Bool)

(declare-fun e!2690524 () Bool)

(declare-fun lt!1541679 () MutLongMap!4763)

(assert (=> b!4324370 (= e!2690517 (and e!2690524 ((_ is LongMap!4763) lt!1541679)))))

(assert (=> b!4324370 (= lt!1541679 (v!42819 (underlying!9756 thiss!42308)))))

(declare-fun b!4324371 () Bool)

(declare-fun Unit!67930 () Unit!67928)

(assert (=> b!4324371 (= e!2690527 Unit!67930)))

(declare-fun b!4324372 () Bool)

(assert (=> b!4324372 (= e!2690526 e!2690521)))

(declare-fun res!1772241 () Bool)

(assert (=> b!4324372 (=> (not res!1772241) (not e!2690521))))

(assert (=> b!4324372 (= res!1772241 (_1!26917 lt!1541668))))

(declare-fun update!541 (MutLongMap!4763 (_ BitVec 64) List!48527) tuple2!47258)

(assert (=> b!4324372 (= lt!1541668 (update!541 (v!42819 (underlying!9756 thiss!42308)) lt!1541677 lt!1541676))))

(assert (=> b!4324372 (= lt!1541676 (Cons!48403 lt!1541672 lt!1541666))))

(assert (=> b!4324372 (= lt!1541672 (tuple2!47255 key!2048 v!9179))))

(declare-fun e!2690523 () List!48527)

(assert (=> b!4324372 (= lt!1541666 e!2690523)))

(declare-fun c!735684 () Bool)

(declare-fun contains!10466 (MutLongMap!4763 (_ BitVec 64)) Bool)

(assert (=> b!4324372 (= c!735684 (contains!10466 (v!42819 (underlying!9756 thiss!42308)) lt!1541677))))

(declare-fun hash!1205 (Hashable!4679 K!9654) (_ BitVec 64))

(assert (=> b!4324372 (= lt!1541677 (hash!1205 (hashF!6961 thiss!42308) key!2048))))

(declare-fun b!4324373 () Bool)

(declare-fun allKeysSameHashInMap!396 (ListLongMap!1191 Hashable!4679) Bool)

(assert (=> b!4324373 (= e!2690516 (allKeysSameHashInMap!396 lt!1541678 (hashF!6961 thiss!42308)))))

(declare-fun b!4324374 () Bool)

(declare-fun apply!11156 (MutLongMap!4763 (_ BitVec 64)) List!48527)

(assert (=> b!4324374 (= e!2690523 (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541677))))

(declare-fun b!4324375 () Bool)

(assert (=> b!4324375 (= e!2690524 e!2690518)))

(declare-fun mapIsEmpty!21231 () Bool)

(assert (=> mapIsEmpty!21231 mapRes!21231))

(declare-fun b!4324376 () Bool)

(assert (=> b!4324376 (= e!2690523 Nil!48403)))

(declare-fun b!4324377 () Bool)

(declare-fun lt!1541669 () Unit!67928)

(assert (=> b!4324377 (= e!2690527 lt!1541669)))

(declare-fun lt!1541675 () Unit!67928)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!239 (List!48528 (_ BitVec 64) List!48527 Hashable!4679) Unit!67928)

(assert (=> b!4324377 (= lt!1541675 (lemmaInLongMapAllKeySameHashThenForTuple!239 (toList!2574 lt!1541674) lt!1541677 lt!1541666 (hashF!6961 thiss!42308)))))

(declare-fun allKeysSameHash!254 (List!48527 (_ BitVec 64) Hashable!4679) Bool)

(assert (=> b!4324377 (allKeysSameHash!254 lt!1541666 lt!1541677 (hashF!6961 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!230 (List!48527 K!9654 (_ BitVec 64) Hashable!4679) Unit!67928)

(assert (=> b!4324377 (= lt!1541669 (lemmaRemovePairForKeyPreservesHash!230 lt!1541666 key!2048 lt!1541677 (hashF!6961 thiss!42308)))))

(declare-fun removePairForKey!277 (List!48527 K!9654) List!48527)

(assert (=> b!4324377 (allKeysSameHash!254 (removePairForKey!277 lt!1541666 key!2048) lt!1541677 (hashF!6961 thiss!42308))))

(assert (= (and start!416352 res!1772242) b!4324364))

(assert (= (and b!4324364 res!1772238) b!4324365))

(assert (= (and b!4324365 res!1772240) b!4324372))

(assert (= (and b!4324372 c!735684) b!4324374))

(assert (= (and b!4324372 (not c!735684)) b!4324376))

(assert (= (and b!4324372 res!1772241) b!4324367))

(assert (= (and b!4324367 c!735685) b!4324377))

(assert (= (and b!4324367 (not c!735685)) b!4324371))

(assert (= (and b!4324367 res!1772239) b!4324373))

(assert (= (and b!4324363 condMapEmpty!21231) mapIsEmpty!21231))

(assert (= (and b!4324363 (not condMapEmpty!21231)) mapNonEmpty!21231))

(assert (= b!4324369 b!4324363))

(assert (= b!4324366 b!4324369))

(assert (= b!4324375 b!4324366))

(assert (= (and b!4324370 ((_ is LongMap!4763) (v!42819 (underlying!9756 thiss!42308)))) b!4324375))

(assert (= b!4324368 b!4324370))

(assert (= (and start!416352 ((_ is HashMap!4669) thiss!42308)) b!4324368))

(declare-fun m!4918919 () Bool)

(assert (=> b!4324369 m!4918919))

(declare-fun m!4918921 () Bool)

(assert (=> b!4324369 m!4918921))

(declare-fun m!4918923 () Bool)

(assert (=> b!4324367 m!4918923))

(declare-fun m!4918925 () Bool)

(assert (=> b!4324367 m!4918925))

(declare-fun m!4918927 () Bool)

(assert (=> b!4324367 m!4918927))

(assert (=> b!4324367 m!4918925))

(declare-fun m!4918929 () Bool)

(assert (=> b!4324367 m!4918929))

(declare-fun m!4918931 () Bool)

(assert (=> b!4324367 m!4918931))

(declare-fun m!4918933 () Bool)

(assert (=> b!4324367 m!4918933))

(declare-fun m!4918935 () Bool)

(assert (=> b!4324367 m!4918935))

(declare-fun m!4918937 () Bool)

(assert (=> b!4324367 m!4918937))

(declare-fun m!4918939 () Bool)

(assert (=> b!4324367 m!4918939))

(declare-fun m!4918941 () Bool)

(assert (=> b!4324367 m!4918941))

(assert (=> b!4324367 m!4918941))

(assert (=> b!4324367 m!4918929))

(declare-fun m!4918943 () Bool)

(assert (=> b!4324367 m!4918943))

(declare-fun m!4918945 () Bool)

(assert (=> mapNonEmpty!21231 m!4918945))

(declare-fun m!4918947 () Bool)

(assert (=> b!4324377 m!4918947))

(declare-fun m!4918949 () Bool)

(assert (=> b!4324377 m!4918949))

(declare-fun m!4918951 () Bool)

(assert (=> b!4324377 m!4918951))

(declare-fun m!4918953 () Bool)

(assert (=> b!4324377 m!4918953))

(declare-fun m!4918955 () Bool)

(assert (=> b!4324377 m!4918955))

(assert (=> b!4324377 m!4918951))

(declare-fun m!4918957 () Bool)

(assert (=> b!4324373 m!4918957))

(declare-fun m!4918959 () Bool)

(assert (=> b!4324374 m!4918959))

(declare-fun m!4918961 () Bool)

(assert (=> b!4324372 m!4918961))

(declare-fun m!4918963 () Bool)

(assert (=> b!4324372 m!4918963))

(declare-fun m!4918965 () Bool)

(assert (=> b!4324372 m!4918965))

(declare-fun m!4918967 () Bool)

(assert (=> b!4324364 m!4918967))

(declare-fun m!4918969 () Bool)

(assert (=> b!4324365 m!4918969))

(declare-fun m!4918971 () Bool)

(assert (=> b!4324365 m!4918971))

(declare-fun m!4918973 () Bool)

(assert (=> b!4324365 m!4918973))

(check-sat tp_is_empty!24151 (not b_next!129717) (not b!4324363) (not b!4324374) (not b!4324372) b_and!340587 b_and!340585 (not b!4324367) (not b!4324364) (not b_next!129715) (not b!4324377) tp_is_empty!24149 (not b!4324365) (not mapNonEmpty!21231) (not b!4324369) (not b!4324373))
(check-sat b_and!340585 b_and!340587 (not b_next!129717) (not b_next!129715))
(get-model)

(declare-fun bs!607131 () Bool)

(declare-fun b!4324402 () Bool)

(assert (= bs!607131 (and b!4324402 b!4324367)))

(declare-fun lambda!134134 () Int)

(assert (=> bs!607131 (= lambda!134134 lambda!134131)))

(declare-fun b!4324400 () Bool)

(assert (=> b!4324400 false))

(declare-fun lt!1541730 () Unit!67928)

(declare-fun lt!1541722 () Unit!67928)

(assert (=> b!4324400 (= lt!1541730 lt!1541722)))

(declare-fun lt!1541734 () ListLongMap!1191)

(declare-fun contains!10467 (ListMap!1851 K!9654) Bool)

(assert (=> b!4324400 (contains!10467 (extractMap!376 (toList!2574 lt!1541734)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!166 (ListLongMap!1191 K!9654 Hashable!4679) Unit!67928)

(assert (=> b!4324400 (= lt!1541722 (lemmaInLongMapThenInGenericMap!166 lt!1541734 key!2048 (hashF!6961 thiss!42308)))))

(declare-fun call!300047 () ListLongMap!1191)

(assert (=> b!4324400 (= lt!1541734 call!300047)))

(declare-fun e!2690548 () Unit!67928)

(declare-fun Unit!67931 () Unit!67928)

(assert (=> b!4324400 (= e!2690548 Unit!67931)))

(declare-fun b!4324401 () Bool)

(declare-fun e!2690544 () Unit!67928)

(declare-fun Unit!67932 () Unit!67928)

(assert (=> b!4324401 (= e!2690544 Unit!67932)))

(declare-fun call!300046 () (_ BitVec 64))

(declare-fun lt!1541724 () ListLongMap!1191)

(declare-fun bm!300037 () Bool)

(declare-fun call!300042 () Bool)

(declare-fun c!735697 () Bool)

(declare-fun contains!10468 (ListLongMap!1191 (_ BitVec 64)) Bool)

(assert (=> bm!300037 (= call!300042 (contains!10468 (ite c!735697 lt!1541724 call!300047) call!300046))))

(declare-fun bm!300038 () Bool)

(declare-fun call!300044 () Bool)

(declare-datatypes ((Option!10312 0))(
  ( (None!10311) (Some!10311 (v!42824 tuple2!47254)) )
))
(declare-fun call!300045 () Option!10312)

(declare-fun isDefined!7613 (Option!10312) Bool)

(assert (=> bm!300038 (= call!300044 (isDefined!7613 call!300045))))

(declare-fun lt!1541725 () (_ BitVec 64))

(declare-fun e!2690549 () Unit!67928)

(declare-fun forallContained!1540 (List!48528 Int tuple2!47256) Unit!67928)

(assert (=> b!4324402 (= e!2690549 (forallContained!1540 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))) lambda!134134 (tuple2!47257 lt!1541725 (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541725))))))

(declare-fun c!735694 () Bool)

(declare-fun contains!10469 (List!48528 tuple2!47256) Bool)

(assert (=> b!4324402 (= c!735694 (not (contains!10469 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))) (tuple2!47257 lt!1541725 (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541725)))))))

(declare-fun lt!1541732 () Unit!67928)

(assert (=> b!4324402 (= lt!1541732 e!2690544)))

(declare-fun e!2690543 () Bool)

(declare-fun b!4324403 () Bool)

(declare-fun getPair!166 (List!48527 K!9654) Option!10312)

(assert (=> b!4324403 (= e!2690543 (isDefined!7613 (getPair!166 (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541725) key!2048)))))

(declare-fun b!4324404 () Bool)

(declare-fun e!2690546 () Bool)

(assert (=> b!4324404 (= e!2690546 call!300044)))

(declare-fun bm!300039 () Bool)

(assert (=> bm!300039 (= call!300046 (hash!1205 (hashF!6961 thiss!42308) key!2048))))

(declare-fun b!4324405 () Bool)

(declare-fun Unit!67933 () Unit!67928)

(assert (=> b!4324405 (= e!2690548 Unit!67933)))

(declare-fun bm!300040 () Bool)

(assert (=> bm!300040 (= call!300047 (map!10433 (v!42819 (underlying!9756 thiss!42308))))))

(declare-fun b!4324406 () Bool)

(declare-fun e!2690545 () Unit!67928)

(declare-fun lt!1541728 () Unit!67928)

(assert (=> b!4324406 (= e!2690545 lt!1541728)))

(assert (=> b!4324406 (= lt!1541724 call!300047)))

(declare-fun lemmaInGenericMapThenInLongMap!166 (ListLongMap!1191 K!9654 Hashable!4679) Unit!67928)

(assert (=> b!4324406 (= lt!1541728 (lemmaInGenericMapThenInLongMap!166 lt!1541724 key!2048 (hashF!6961 thiss!42308)))))

(declare-fun res!1772251 () Bool)

(assert (=> b!4324406 (= res!1772251 call!300042)))

(assert (=> b!4324406 (=> (not res!1772251) (not e!2690546))))

(assert (=> b!4324406 e!2690546))

(declare-fun d!1271552 () Bool)

(declare-fun lt!1541731 () Bool)

(assert (=> d!1271552 (= lt!1541731 (contains!10467 (map!10434 thiss!42308) key!2048))))

(assert (=> d!1271552 (= lt!1541731 e!2690543)))

(declare-fun res!1772249 () Bool)

(assert (=> d!1271552 (=> (not res!1772249) (not e!2690543))))

(assert (=> d!1271552 (= res!1772249 (contains!10466 (v!42819 (underlying!9756 thiss!42308)) lt!1541725))))

(declare-fun lt!1541727 () Unit!67928)

(assert (=> d!1271552 (= lt!1541727 e!2690545)))

(assert (=> d!1271552 (= c!735697 (contains!10467 (extractMap!376 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308))))) key!2048))))

(declare-fun lt!1541720 () Unit!67928)

(assert (=> d!1271552 (= lt!1541720 e!2690549)))

(declare-fun c!735695 () Bool)

(assert (=> d!1271552 (= c!735695 (contains!10466 (v!42819 (underlying!9756 thiss!42308)) lt!1541725))))

(assert (=> d!1271552 (= lt!1541725 (hash!1205 (hashF!6961 thiss!42308) key!2048))))

(assert (=> d!1271552 (valid!3777 thiss!42308)))

(assert (=> d!1271552 (= (contains!10465 thiss!42308 key!2048) lt!1541731)))

(declare-fun bm!300041 () Bool)

(declare-fun call!300043 () List!48527)

(assert (=> bm!300041 (= call!300045 (getPair!166 call!300043 key!2048))))

(declare-fun bm!300042 () Bool)

(declare-fun apply!11157 (ListLongMap!1191 (_ BitVec 64)) List!48527)

(assert (=> bm!300042 (= call!300043 (apply!11157 (ite c!735697 lt!1541724 call!300047) call!300046))))

(declare-fun b!4324407 () Bool)

(assert (=> b!4324407 (= e!2690545 e!2690548)))

(declare-fun res!1772250 () Bool)

(assert (=> b!4324407 (= res!1772250 call!300042)))

(declare-fun e!2690547 () Bool)

(assert (=> b!4324407 (=> (not res!1772250) (not e!2690547))))

(declare-fun c!735696 () Bool)

(assert (=> b!4324407 (= c!735696 e!2690547)))

(declare-fun b!4324408 () Bool)

(declare-fun Unit!67934 () Unit!67928)

(assert (=> b!4324408 (= e!2690549 Unit!67934)))

(declare-fun b!4324409 () Bool)

(assert (=> b!4324409 false))

(declare-fun lt!1541737 () Unit!67928)

(declare-fun lt!1541726 () Unit!67928)

(assert (=> b!4324409 (= lt!1541737 lt!1541726)))

(declare-fun lt!1541721 () List!48528)

(declare-fun lt!1541729 () List!48527)

(assert (=> b!4324409 (contains!10469 lt!1541721 (tuple2!47257 lt!1541725 lt!1541729))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!178 (List!48528 (_ BitVec 64) List!48527) Unit!67928)

(assert (=> b!4324409 (= lt!1541726 (lemmaGetValueByKeyImpliesContainsTuple!178 lt!1541721 lt!1541725 lt!1541729))))

(assert (=> b!4324409 (= lt!1541729 (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541725))))

(assert (=> b!4324409 (= lt!1541721 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))))))

(declare-fun lt!1541735 () Unit!67928)

(declare-fun lt!1541723 () Unit!67928)

(assert (=> b!4324409 (= lt!1541735 lt!1541723)))

(declare-fun lt!1541736 () List!48528)

(declare-datatypes ((Option!10313 0))(
  ( (None!10312) (Some!10312 (v!42825 List!48527)) )
))
(declare-fun isDefined!7614 (Option!10313) Bool)

(declare-fun getValueByKey!305 (List!48528 (_ BitVec 64)) Option!10313)

(assert (=> b!4324409 (isDefined!7614 (getValueByKey!305 lt!1541736 lt!1541725))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!224 (List!48528 (_ BitVec 64)) Unit!67928)

(assert (=> b!4324409 (= lt!1541723 (lemmaContainsKeyImpliesGetValueByKeyDefined!224 lt!1541736 lt!1541725))))

(assert (=> b!4324409 (= lt!1541736 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))))))

(declare-fun lt!1541739 () Unit!67928)

(declare-fun lt!1541733 () Unit!67928)

(assert (=> b!4324409 (= lt!1541739 lt!1541733)))

(declare-fun lt!1541738 () List!48528)

(declare-fun containsKey!412 (List!48528 (_ BitVec 64)) Bool)

(assert (=> b!4324409 (containsKey!412 lt!1541738 lt!1541725)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!167 (List!48528 (_ BitVec 64)) Unit!67928)

(assert (=> b!4324409 (= lt!1541733 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!167 lt!1541738 lt!1541725))))

(assert (=> b!4324409 (= lt!1541738 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))))))

(declare-fun Unit!67935 () Unit!67928)

(assert (=> b!4324409 (= e!2690544 Unit!67935)))

(declare-fun b!4324410 () Bool)

(assert (=> b!4324410 (= e!2690547 call!300044)))

(assert (= (and d!1271552 c!735695) b!4324402))

(assert (= (and d!1271552 (not c!735695)) b!4324408))

(assert (= (and b!4324402 c!735694) b!4324409))

(assert (= (and b!4324402 (not c!735694)) b!4324401))

(assert (= (and d!1271552 c!735697) b!4324406))

(assert (= (and d!1271552 (not c!735697)) b!4324407))

(assert (= (and b!4324406 res!1772251) b!4324404))

(assert (= (and b!4324407 res!1772250) b!4324410))

(assert (= (and b!4324407 c!735696) b!4324400))

(assert (= (and b!4324407 (not c!735696)) b!4324405))

(assert (= (or b!4324406 b!4324407 b!4324410 b!4324400) bm!300040))

(assert (= (or b!4324406 b!4324404 b!4324407 b!4324410) bm!300039))

(assert (= (or b!4324404 b!4324410) bm!300042))

(assert (= (or b!4324406 b!4324407) bm!300037))

(assert (= (or b!4324404 b!4324410) bm!300041))

(assert (= (or b!4324404 b!4324410) bm!300038))

(assert (= (and d!1271552 res!1772249) b!4324403))

(declare-fun m!4918975 () Bool)

(assert (=> b!4324400 m!4918975))

(assert (=> b!4324400 m!4918975))

(declare-fun m!4918977 () Bool)

(assert (=> b!4324400 m!4918977))

(declare-fun m!4918979 () Bool)

(assert (=> b!4324400 m!4918979))

(declare-fun m!4918981 () Bool)

(assert (=> bm!300041 m!4918981))

(declare-fun m!4918983 () Bool)

(assert (=> bm!300042 m!4918983))

(assert (=> bm!300040 m!4918971))

(assert (=> b!4324402 m!4918971))

(declare-fun m!4918985 () Bool)

(assert (=> b!4324402 m!4918985))

(declare-fun m!4918987 () Bool)

(assert (=> b!4324402 m!4918987))

(declare-fun m!4918989 () Bool)

(assert (=> b!4324402 m!4918989))

(assert (=> bm!300039 m!4918965))

(declare-fun m!4918991 () Bool)

(assert (=> b!4324409 m!4918991))

(declare-fun m!4918993 () Bool)

(assert (=> b!4324409 m!4918993))

(declare-fun m!4918995 () Bool)

(assert (=> b!4324409 m!4918995))

(declare-fun m!4918997 () Bool)

(assert (=> b!4324409 m!4918997))

(assert (=> b!4324409 m!4918985))

(declare-fun m!4918999 () Bool)

(assert (=> b!4324409 m!4918999))

(declare-fun m!4919001 () Bool)

(assert (=> b!4324409 m!4919001))

(assert (=> b!4324409 m!4918971))

(declare-fun m!4919003 () Bool)

(assert (=> b!4324409 m!4919003))

(assert (=> b!4324409 m!4918991))

(assert (=> d!1271552 m!4918965))

(declare-fun m!4919005 () Bool)

(assert (=> d!1271552 m!4919005))

(declare-fun m!4919007 () Bool)

(assert (=> d!1271552 m!4919007))

(declare-fun m!4919009 () Bool)

(assert (=> d!1271552 m!4919009))

(assert (=> d!1271552 m!4918973))

(assert (=> d!1271552 m!4918973))

(declare-fun m!4919011 () Bool)

(assert (=> d!1271552 m!4919011))

(assert (=> d!1271552 m!4918967))

(assert (=> d!1271552 m!4919007))

(assert (=> d!1271552 m!4918971))

(assert (=> b!4324403 m!4918985))

(assert (=> b!4324403 m!4918985))

(declare-fun m!4919013 () Bool)

(assert (=> b!4324403 m!4919013))

(assert (=> b!4324403 m!4919013))

(declare-fun m!4919015 () Bool)

(assert (=> b!4324403 m!4919015))

(declare-fun m!4919017 () Bool)

(assert (=> bm!300037 m!4919017))

(declare-fun m!4919019 () Bool)

(assert (=> bm!300038 m!4919019))

(declare-fun m!4919021 () Bool)

(assert (=> b!4324406 m!4919021))

(assert (=> b!4324365 d!1271552))

(declare-fun d!1271554 () Bool)

(declare-fun map!10435 (LongMapFixedSize!9526) ListLongMap!1191)

(assert (=> d!1271554 (= (map!10433 (v!42819 (underlying!9756 thiss!42308))) (map!10435 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308))))))))

(declare-fun bs!607132 () Bool)

(assert (= bs!607132 d!1271554))

(declare-fun m!4919023 () Bool)

(assert (=> bs!607132 m!4919023))

(assert (=> b!4324365 d!1271554))

(declare-fun d!1271556 () Bool)

(declare-fun lt!1541742 () ListMap!1851)

(declare-fun invariantList!605 (List!48527) Bool)

(assert (=> d!1271556 (invariantList!605 (toList!2575 lt!1541742))))

(assert (=> d!1271556 (= lt!1541742 (extractMap!376 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308))))))))

(assert (=> d!1271556 (valid!3777 thiss!42308)))

(assert (=> d!1271556 (= (map!10434 thiss!42308) lt!1541742)))

(declare-fun bs!607133 () Bool)

(assert (= bs!607133 d!1271556))

(declare-fun m!4919025 () Bool)

(assert (=> bs!607133 m!4919025))

(assert (=> bs!607133 m!4918971))

(assert (=> bs!607133 m!4919007))

(assert (=> bs!607133 m!4918967))

(assert (=> b!4324365 d!1271556))

(declare-fun bs!607134 () Bool)

(declare-fun b!4324415 () Bool)

(assert (= bs!607134 (and b!4324415 b!4324367)))

(declare-fun lambda!134137 () Int)

(assert (=> bs!607134 (= lambda!134137 lambda!134131)))

(declare-fun bs!607135 () Bool)

(assert (= bs!607135 (and b!4324415 b!4324402)))

(assert (=> bs!607135 (= lambda!134137 lambda!134134)))

(declare-fun d!1271558 () Bool)

(declare-fun res!1772256 () Bool)

(declare-fun e!2690552 () Bool)

(assert (=> d!1271558 (=> (not res!1772256) (not e!2690552))))

(declare-fun valid!3778 (MutLongMap!4763) Bool)

(assert (=> d!1271558 (= res!1772256 (valid!3778 (v!42819 (underlying!9756 thiss!42308))))))

(assert (=> d!1271558 (= (valid!3777 thiss!42308) e!2690552)))

(declare-fun res!1772257 () Bool)

(assert (=> b!4324415 (=> (not res!1772257) (not e!2690552))))

(assert (=> b!4324415 (= res!1772257 (forall!8826 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))) lambda!134137))))

(declare-fun b!4324416 () Bool)

(assert (=> b!4324416 (= e!2690552 (allKeysSameHashInMap!396 (map!10433 (v!42819 (underlying!9756 thiss!42308))) (hashF!6961 thiss!42308)))))

(assert (= (and d!1271558 res!1772256) b!4324415))

(assert (= (and b!4324415 res!1772257) b!4324416))

(declare-fun m!4919027 () Bool)

(assert (=> d!1271558 m!4919027))

(assert (=> b!4324415 m!4918971))

(declare-fun m!4919029 () Bool)

(assert (=> b!4324415 m!4919029))

(assert (=> b!4324416 m!4918971))

(assert (=> b!4324416 m!4918971))

(declare-fun m!4919031 () Bool)

(assert (=> b!4324416 m!4919031))

(assert (=> b!4324364 d!1271558))

(declare-fun bs!607136 () Bool)

(declare-fun d!1271560 () Bool)

(assert (= bs!607136 (and d!1271560 b!4324367)))

(declare-fun lambda!134140 () Int)

(assert (=> bs!607136 (not (= lambda!134140 lambda!134131))))

(declare-fun bs!607137 () Bool)

(assert (= bs!607137 (and d!1271560 b!4324402)))

(assert (=> bs!607137 (not (= lambda!134140 lambda!134134))))

(declare-fun bs!607138 () Bool)

(assert (= bs!607138 (and d!1271560 b!4324415)))

(assert (=> bs!607138 (not (= lambda!134140 lambda!134137))))

(assert (=> d!1271560 true))

(assert (=> d!1271560 (allKeysSameHash!254 lt!1541666 lt!1541677 (hashF!6961 thiss!42308))))

(declare-fun lt!1541745 () Unit!67928)

(declare-fun choose!26436 (List!48528 (_ BitVec 64) List!48527 Hashable!4679) Unit!67928)

(assert (=> d!1271560 (= lt!1541745 (choose!26436 (toList!2574 lt!1541674) lt!1541677 lt!1541666 (hashF!6961 thiss!42308)))))

(assert (=> d!1271560 (forall!8826 (toList!2574 lt!1541674) lambda!134140)))

(assert (=> d!1271560 (= (lemmaInLongMapAllKeySameHashThenForTuple!239 (toList!2574 lt!1541674) lt!1541677 lt!1541666 (hashF!6961 thiss!42308)) lt!1541745)))

(declare-fun bs!607139 () Bool)

(assert (= bs!607139 d!1271560))

(assert (=> bs!607139 m!4918949))

(declare-fun m!4919033 () Bool)

(assert (=> bs!607139 m!4919033))

(declare-fun m!4919035 () Bool)

(assert (=> bs!607139 m!4919035))

(assert (=> b!4324377 d!1271560))

(declare-fun d!1271562 () Bool)

(assert (=> d!1271562 (allKeysSameHash!254 (removePairForKey!277 lt!1541666 key!2048) lt!1541677 (hashF!6961 thiss!42308))))

(declare-fun lt!1541748 () Unit!67928)

(declare-fun choose!26437 (List!48527 K!9654 (_ BitVec 64) Hashable!4679) Unit!67928)

(assert (=> d!1271562 (= lt!1541748 (choose!26437 lt!1541666 key!2048 lt!1541677 (hashF!6961 thiss!42308)))))

(declare-fun noDuplicateKeys!266 (List!48527) Bool)

(assert (=> d!1271562 (noDuplicateKeys!266 lt!1541666)))

(assert (=> d!1271562 (= (lemmaRemovePairForKeyPreservesHash!230 lt!1541666 key!2048 lt!1541677 (hashF!6961 thiss!42308)) lt!1541748)))

(declare-fun bs!607140 () Bool)

(assert (= bs!607140 d!1271562))

(assert (=> bs!607140 m!4918951))

(assert (=> bs!607140 m!4918951))

(assert (=> bs!607140 m!4918953))

(declare-fun m!4919037 () Bool)

(assert (=> bs!607140 m!4919037))

(declare-fun m!4919039 () Bool)

(assert (=> bs!607140 m!4919039))

(assert (=> b!4324377 d!1271562))

(declare-fun d!1271564 () Bool)

(assert (=> d!1271564 true))

(assert (=> d!1271564 true))

(declare-fun lambda!134143 () Int)

(declare-fun forall!8827 (List!48527 Int) Bool)

(assert (=> d!1271564 (= (allKeysSameHash!254 (removePairForKey!277 lt!1541666 key!2048) lt!1541677 (hashF!6961 thiss!42308)) (forall!8827 (removePairForKey!277 lt!1541666 key!2048) lambda!134143))))

(declare-fun bs!607141 () Bool)

(assert (= bs!607141 d!1271564))

(assert (=> bs!607141 m!4918951))

(declare-fun m!4919041 () Bool)

(assert (=> bs!607141 m!4919041))

(assert (=> b!4324377 d!1271564))

(declare-fun d!1271566 () Bool)

(declare-fun lt!1541751 () List!48527)

(declare-fun containsKey!413 (List!48527 K!9654) Bool)

(assert (=> d!1271566 (not (containsKey!413 lt!1541751 key!2048))))

(declare-fun e!2690557 () List!48527)

(assert (=> d!1271566 (= lt!1541751 e!2690557)))

(declare-fun c!735702 () Bool)

(assert (=> d!1271566 (= c!735702 (and ((_ is Cons!48403) lt!1541666) (= (_1!26915 (h!53867 lt!1541666)) key!2048)))))

(assert (=> d!1271566 (noDuplicateKeys!266 lt!1541666)))

(assert (=> d!1271566 (= (removePairForKey!277 lt!1541666 key!2048) lt!1541751)))

(declare-fun b!4324432 () Bool)

(declare-fun e!2690558 () List!48527)

(assert (=> b!4324432 (= e!2690557 e!2690558)))

(declare-fun c!735703 () Bool)

(assert (=> b!4324432 (= c!735703 ((_ is Cons!48403) lt!1541666))))

(declare-fun b!4324431 () Bool)

(assert (=> b!4324431 (= e!2690557 (t!355421 lt!1541666))))

(declare-fun b!4324434 () Bool)

(assert (=> b!4324434 (= e!2690558 Nil!48403)))

(declare-fun b!4324433 () Bool)

(assert (=> b!4324433 (= e!2690558 (Cons!48403 (h!53867 lt!1541666) (removePairForKey!277 (t!355421 lt!1541666) key!2048)))))

(assert (= (and d!1271566 c!735702) b!4324431))

(assert (= (and d!1271566 (not c!735702)) b!4324432))

(assert (= (and b!4324432 c!735703) b!4324433))

(assert (= (and b!4324432 (not c!735703)) b!4324434))

(declare-fun m!4919043 () Bool)

(assert (=> d!1271566 m!4919043))

(assert (=> d!1271566 m!4919039))

(declare-fun m!4919045 () Bool)

(assert (=> b!4324433 m!4919045))

(assert (=> b!4324377 d!1271566))

(declare-fun bs!607142 () Bool)

(declare-fun d!1271568 () Bool)

(assert (= bs!607142 (and d!1271568 d!1271564)))

(declare-fun lambda!134144 () Int)

(assert (=> bs!607142 (= lambda!134144 lambda!134143)))

(assert (=> d!1271568 true))

(assert (=> d!1271568 true))

(assert (=> d!1271568 (= (allKeysSameHash!254 lt!1541666 lt!1541677 (hashF!6961 thiss!42308)) (forall!8827 lt!1541666 lambda!134144))))

(declare-fun bs!607143 () Bool)

(assert (= bs!607143 d!1271568))

(declare-fun m!4919047 () Bool)

(assert (=> bs!607143 m!4919047))

(assert (=> b!4324377 d!1271568))

(declare-fun bs!607144 () Bool)

(declare-fun d!1271570 () Bool)

(assert (= bs!607144 (and d!1271570 b!4324367)))

(declare-fun lambda!134147 () Int)

(assert (=> bs!607144 (not (= lambda!134147 lambda!134131))))

(declare-fun bs!607145 () Bool)

(assert (= bs!607145 (and d!1271570 b!4324402)))

(assert (=> bs!607145 (not (= lambda!134147 lambda!134134))))

(declare-fun bs!607146 () Bool)

(assert (= bs!607146 (and d!1271570 b!4324415)))

(assert (=> bs!607146 (not (= lambda!134147 lambda!134137))))

(declare-fun bs!607147 () Bool)

(assert (= bs!607147 (and d!1271570 d!1271560)))

(assert (=> bs!607147 (= lambda!134147 lambda!134140)))

(assert (=> d!1271570 true))

(assert (=> d!1271570 (= (allKeysSameHashInMap!396 lt!1541678 (hashF!6961 thiss!42308)) (forall!8826 (toList!2574 lt!1541678) lambda!134147))))

(declare-fun bs!607148 () Bool)

(assert (= bs!607148 d!1271570))

(declare-fun m!4919049 () Bool)

(assert (=> bs!607148 m!4919049))

(assert (=> b!4324373 d!1271570))

(declare-fun bm!300047 () Bool)

(declare-fun call!300053 () ListLongMap!1191)

(declare-fun lt!1541760 () tuple2!47258)

(assert (=> bm!300047 (= call!300053 (map!10433 (_2!26917 lt!1541760)))))

(declare-fun b!4324453 () Bool)

(declare-fun e!2690570 () tuple2!47258)

(declare-fun lt!1541761 () tuple2!47258)

(assert (=> b!4324453 (= e!2690570 (tuple2!47259 false (_2!26917 lt!1541761)))))

(declare-fun b!4324454 () Bool)

(declare-fun e!2690569 () tuple2!47258)

(assert (=> b!4324454 (= e!2690569 (tuple2!47259 true (v!42819 (underlying!9756 thiss!42308))))))

(declare-fun b!4324455 () Bool)

(declare-fun lt!1541762 () tuple2!47258)

(assert (=> b!4324455 (= e!2690569 (tuple2!47259 (_1!26917 lt!1541762) (_2!26917 lt!1541762)))))

(declare-fun repack!88 (MutLongMap!4763) tuple2!47258)

(assert (=> b!4324455 (= lt!1541762 (repack!88 (v!42819 (underlying!9756 thiss!42308))))))

(declare-fun b!4324456 () Bool)

(declare-fun e!2690572 () Bool)

(declare-fun e!2690571 () Bool)

(assert (=> b!4324456 (= e!2690572 e!2690571)))

(declare-fun c!735711 () Bool)

(assert (=> b!4324456 (= c!735711 (_1!26917 lt!1541760))))

(declare-fun b!4324457 () Bool)

(declare-fun res!1772265 () Bool)

(assert (=> b!4324457 (=> (not res!1772265) (not e!2690572))))

(assert (=> b!4324457 (= res!1772265 (valid!3778 (_2!26917 lt!1541760)))))

(declare-fun b!4324458 () Bool)

(declare-fun call!300052 () ListLongMap!1191)

(assert (=> b!4324458 (= e!2690571 (= call!300053 call!300052))))

(declare-fun b!4324459 () Bool)

(declare-fun e!2690573 () Bool)

(assert (=> b!4324459 (= e!2690573 (= call!300053 (+!345 call!300052 (tuple2!47257 lt!1541677 lt!1541676))))))

(declare-fun b!4324460 () Bool)

(declare-datatypes ((tuple2!47260 0))(
  ( (tuple2!47261 (_1!26918 Bool) (_2!26918 LongMapFixedSize!9526)) )
))
(declare-fun lt!1541763 () tuple2!47260)

(assert (=> b!4324460 (= e!2690570 (tuple2!47259 (_1!26918 lt!1541763) (LongMap!4763 (Cell!18862 (_2!26918 lt!1541763)))))))

(declare-fun update!542 (LongMapFixedSize!9526 (_ BitVec 64) List!48527) tuple2!47260)

(assert (=> b!4324460 (= lt!1541763 (update!542 (v!42818 (underlying!9755 (_2!26917 lt!1541761))) lt!1541677 lt!1541676))))

(declare-fun d!1271572 () Bool)

(assert (=> d!1271572 e!2690572))

(declare-fun res!1772264 () Bool)

(assert (=> d!1271572 (=> (not res!1772264) (not e!2690572))))

(assert (=> d!1271572 (= res!1772264 ((_ is LongMap!4763) (_2!26917 lt!1541760)))))

(assert (=> d!1271572 (= lt!1541760 e!2690570)))

(declare-fun c!735710 () Bool)

(assert (=> d!1271572 (= c!735710 (_1!26917 lt!1541761))))

(assert (=> d!1271572 (= lt!1541761 e!2690569)))

(declare-fun c!735712 () Bool)

(declare-fun imbalanced!84 (MutLongMap!4763) Bool)

(assert (=> d!1271572 (= c!735712 (imbalanced!84 (v!42819 (underlying!9756 thiss!42308))))))

(assert (=> d!1271572 (valid!3778 (v!42819 (underlying!9756 thiss!42308)))))

(assert (=> d!1271572 (= (update!541 (v!42819 (underlying!9756 thiss!42308)) lt!1541677 lt!1541676) lt!1541760)))

(declare-fun b!4324461 () Bool)

(assert (=> b!4324461 (= e!2690571 e!2690573)))

(declare-fun res!1772266 () Bool)

(assert (=> b!4324461 (= res!1772266 (contains!10468 call!300053 lt!1541677))))

(assert (=> b!4324461 (=> (not res!1772266) (not e!2690573))))

(declare-fun bm!300048 () Bool)

(assert (=> bm!300048 (= call!300052 (map!10433 (v!42819 (underlying!9756 thiss!42308))))))

(assert (= (and d!1271572 c!735712) b!4324455))

(assert (= (and d!1271572 (not c!735712)) b!4324454))

(assert (= (and d!1271572 c!735710) b!4324460))

(assert (= (and d!1271572 (not c!735710)) b!4324453))

(assert (= (and d!1271572 res!1772264) b!4324457))

(assert (= (and b!4324457 res!1772265) b!4324456))

(assert (= (and b!4324456 c!735711) b!4324461))

(assert (= (and b!4324456 (not c!735711)) b!4324458))

(assert (= (and b!4324461 res!1772266) b!4324459))

(assert (= (or b!4324459 b!4324458) bm!300048))

(assert (= (or b!4324461 b!4324459 b!4324458) bm!300047))

(assert (=> bm!300048 m!4918971))

(declare-fun m!4919051 () Bool)

(assert (=> b!4324460 m!4919051))

(declare-fun m!4919053 () Bool)

(assert (=> b!4324461 m!4919053))

(declare-fun m!4919055 () Bool)

(assert (=> b!4324455 m!4919055))

(declare-fun m!4919057 () Bool)

(assert (=> b!4324457 m!4919057))

(declare-fun m!4919059 () Bool)

(assert (=> bm!300047 m!4919059))

(declare-fun m!4919061 () Bool)

(assert (=> b!4324459 m!4919061))

(declare-fun m!4919063 () Bool)

(assert (=> d!1271572 m!4919063))

(assert (=> d!1271572 m!4919027))

(assert (=> b!4324372 d!1271572))

(declare-fun d!1271574 () Bool)

(declare-fun lt!1541766 () Bool)

(assert (=> d!1271574 (= lt!1541766 (contains!10468 (map!10433 (v!42819 (underlying!9756 thiss!42308))) lt!1541677))))

(declare-fun contains!10470 (LongMapFixedSize!9526 (_ BitVec 64)) Bool)

(assert (=> d!1271574 (= lt!1541766 (contains!10470 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))) lt!1541677))))

(assert (=> d!1271574 (valid!3778 (v!42819 (underlying!9756 thiss!42308)))))

(assert (=> d!1271574 (= (contains!10466 (v!42819 (underlying!9756 thiss!42308)) lt!1541677) lt!1541766)))

(declare-fun bs!607149 () Bool)

(assert (= bs!607149 d!1271574))

(assert (=> bs!607149 m!4918971))

(assert (=> bs!607149 m!4918971))

(declare-fun m!4919065 () Bool)

(assert (=> bs!607149 m!4919065))

(declare-fun m!4919067 () Bool)

(assert (=> bs!607149 m!4919067))

(assert (=> bs!607149 m!4919027))

(assert (=> b!4324372 d!1271574))

(declare-fun d!1271576 () Bool)

(declare-fun hash!1210 (Hashable!4679 K!9654) (_ BitVec 64))

(assert (=> d!1271576 (= (hash!1205 (hashF!6961 thiss!42308) key!2048) (hash!1210 (hashF!6961 thiss!42308) key!2048))))

(declare-fun bs!607150 () Bool)

(assert (= bs!607150 d!1271576))

(declare-fun m!4919069 () Bool)

(assert (=> bs!607150 m!4919069))

(assert (=> b!4324372 d!1271576))

(declare-fun bs!607151 () Bool)

(declare-fun d!1271578 () Bool)

(assert (= bs!607151 (and d!1271578 b!4324367)))

(declare-fun lambda!134150 () Int)

(assert (=> bs!607151 (= lambda!134150 lambda!134131)))

(declare-fun bs!607152 () Bool)

(assert (= bs!607152 (and d!1271578 d!1271560)))

(assert (=> bs!607152 (not (= lambda!134150 lambda!134140))))

(declare-fun bs!607153 () Bool)

(assert (= bs!607153 (and d!1271578 b!4324402)))

(assert (=> bs!607153 (= lambda!134150 lambda!134134)))

(declare-fun bs!607154 () Bool)

(assert (= bs!607154 (and d!1271578 b!4324415)))

(assert (=> bs!607154 (= lambda!134150 lambda!134137)))

(declare-fun bs!607155 () Bool)

(assert (= bs!607155 (and d!1271578 d!1271570)))

(assert (=> bs!607155 (not (= lambda!134150 lambda!134147))))

(declare-fun lt!1541769 () ListMap!1851)

(assert (=> d!1271578 (invariantList!605 (toList!2575 lt!1541769))))

(declare-fun e!2690576 () ListMap!1851)

(assert (=> d!1271578 (= lt!1541769 e!2690576)))

(declare-fun c!735715 () Bool)

(assert (=> d!1271578 (= c!735715 ((_ is Cons!48404) (toList!2574 lt!1541674)))))

(assert (=> d!1271578 (forall!8826 (toList!2574 lt!1541674) lambda!134150)))

(assert (=> d!1271578 (= (extractMap!376 (toList!2574 lt!1541674)) lt!1541769)))

(declare-fun b!4324466 () Bool)

(declare-fun addToMapMapFromBucket!55 (List!48527 ListMap!1851) ListMap!1851)

(assert (=> b!4324466 (= e!2690576 (addToMapMapFromBucket!55 (_2!26916 (h!53868 (toList!2574 lt!1541674))) (extractMap!376 (t!355422 (toList!2574 lt!1541674)))))))

(declare-fun b!4324467 () Bool)

(assert (=> b!4324467 (= e!2690576 (ListMap!1852 Nil!48403))))

(assert (= (and d!1271578 c!735715) b!4324466))

(assert (= (and d!1271578 (not c!735715)) b!4324467))

(declare-fun m!4919071 () Bool)

(assert (=> d!1271578 m!4919071))

(declare-fun m!4919073 () Bool)

(assert (=> d!1271578 m!4919073))

(declare-fun m!4919075 () Bool)

(assert (=> b!4324466 m!4919075))

(assert (=> b!4324466 m!4919075))

(declare-fun m!4919077 () Bool)

(assert (=> b!4324466 m!4919077))

(assert (=> b!4324367 d!1271578))

(declare-fun d!1271580 () Bool)

(assert (=> d!1271580 (= (isEmpty!28133 lt!1541666) ((_ is Nil!48403) lt!1541666))))

(assert (=> b!4324367 d!1271580))

(declare-fun bs!607156 () Bool)

(declare-fun d!1271582 () Bool)

(assert (= bs!607156 (and d!1271582 b!4324367)))

(declare-fun lambda!134153 () Int)

(assert (=> bs!607156 (= lambda!134153 lambda!134131)))

(declare-fun bs!607157 () Bool)

(assert (= bs!607157 (and d!1271582 d!1271560)))

(assert (=> bs!607157 (not (= lambda!134153 lambda!134140))))

(declare-fun bs!607158 () Bool)

(assert (= bs!607158 (and d!1271582 b!4324402)))

(assert (=> bs!607158 (= lambda!134153 lambda!134134)))

(declare-fun bs!607159 () Bool)

(assert (= bs!607159 (and d!1271582 d!1271578)))

(assert (=> bs!607159 (= lambda!134153 lambda!134150)))

(declare-fun bs!607160 () Bool)

(assert (= bs!607160 (and d!1271582 b!4324415)))

(assert (=> bs!607160 (= lambda!134153 lambda!134137)))

(declare-fun bs!607161 () Bool)

(assert (= bs!607161 (and d!1271582 d!1271570)))

(assert (=> bs!607161 (not (= lambda!134153 lambda!134147))))

(assert (=> d!1271582 (eq!156 (extractMap!376 (toList!2574 (+!345 lt!1541674 (tuple2!47257 lt!1541677 lt!1541676)))) (+!344 (extractMap!376 (toList!2574 lt!1541674)) (tuple2!47255 key!2048 v!9179)))))

(declare-fun lt!1541772 () Unit!67928)

(declare-fun choose!26438 (ListLongMap!1191 (_ BitVec 64) List!48527 K!9654 V!9856 Hashable!4679) Unit!67928)

(assert (=> d!1271582 (= lt!1541772 (choose!26438 lt!1541674 lt!1541677 lt!1541676 key!2048 v!9179 (hashF!6961 thiss!42308)))))

(assert (=> d!1271582 (forall!8826 (toList!2574 lt!1541674) lambda!134153)))

(assert (=> d!1271582 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!61 lt!1541674 lt!1541677 lt!1541676 key!2048 v!9179 (hashF!6961 thiss!42308)) lt!1541772)))

(declare-fun bs!607162 () Bool)

(assert (= bs!607162 d!1271582))

(declare-fun m!4919079 () Bool)

(assert (=> bs!607162 m!4919079))

(declare-fun m!4919081 () Bool)

(assert (=> bs!607162 m!4919081))

(declare-fun m!4919083 () Bool)

(assert (=> bs!607162 m!4919083))

(assert (=> bs!607162 m!4919079))

(declare-fun m!4919085 () Bool)

(assert (=> bs!607162 m!4919085))

(declare-fun m!4919087 () Bool)

(assert (=> bs!607162 m!4919087))

(assert (=> bs!607162 m!4918927))

(assert (=> bs!607162 m!4918925))

(assert (=> bs!607162 m!4918925))

(assert (=> bs!607162 m!4919085))

(assert (=> b!4324367 d!1271582))

(declare-fun bs!607163 () Bool)

(declare-fun d!1271584 () Bool)

(assert (= bs!607163 (and d!1271584 b!4324367)))

(declare-fun lambda!134158 () Int)

(assert (=> bs!607163 (= lambda!134158 lambda!134131)))

(declare-fun bs!607164 () Bool)

(assert (= bs!607164 (and d!1271584 d!1271560)))

(assert (=> bs!607164 (not (= lambda!134158 lambda!134140))))

(declare-fun bs!607165 () Bool)

(assert (= bs!607165 (and d!1271584 d!1271582)))

(assert (=> bs!607165 (= lambda!134158 lambda!134153)))

(declare-fun bs!607166 () Bool)

(assert (= bs!607166 (and d!1271584 b!4324402)))

(assert (=> bs!607166 (= lambda!134158 lambda!134134)))

(declare-fun bs!607167 () Bool)

(assert (= bs!607167 (and d!1271584 d!1271578)))

(assert (=> bs!607167 (= lambda!134158 lambda!134150)))

(declare-fun bs!607168 () Bool)

(assert (= bs!607168 (and d!1271584 b!4324415)))

(assert (=> bs!607168 (= lambda!134158 lambda!134137)))

(declare-fun bs!607169 () Bool)

(assert (= bs!607169 (and d!1271584 d!1271570)))

(assert (=> bs!607169 (not (= lambda!134158 lambda!134147))))

(declare-fun e!2690579 () Bool)

(assert (=> d!1271584 e!2690579))

(declare-fun res!1772269 () Bool)

(assert (=> d!1271584 (=> (not res!1772269) (not e!2690579))))

(declare-fun lt!1541778 () ListLongMap!1191)

(assert (=> d!1271584 (= res!1772269 (forall!8826 (toList!2574 lt!1541778) lambda!134158))))

(assert (=> d!1271584 (= lt!1541778 (+!345 lt!1541674 (tuple2!47257 lt!1541677 lt!1541676)))))

(declare-fun lt!1541777 () Unit!67928)

(declare-fun choose!26439 (ListLongMap!1191 (_ BitVec 64) List!48527 Hashable!4679) Unit!67928)

(assert (=> d!1271584 (= lt!1541777 (choose!26439 lt!1541674 lt!1541677 lt!1541676 (hashF!6961 thiss!42308)))))

(assert (=> d!1271584 (forall!8826 (toList!2574 lt!1541674) lambda!134158)))

(assert (=> d!1271584 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!189 lt!1541674 lt!1541677 lt!1541676 (hashF!6961 thiss!42308)) lt!1541777)))

(declare-fun b!4324470 () Bool)

(assert (=> b!4324470 (= e!2690579 (allKeysSameHashInMap!396 lt!1541778 (hashF!6961 thiss!42308)))))

(assert (= (and d!1271584 res!1772269) b!4324470))

(declare-fun m!4919089 () Bool)

(assert (=> d!1271584 m!4919089))

(assert (=> d!1271584 m!4918927))

(declare-fun m!4919091 () Bool)

(assert (=> d!1271584 m!4919091))

(declare-fun m!4919093 () Bool)

(assert (=> d!1271584 m!4919093))

(declare-fun m!4919095 () Bool)

(assert (=> b!4324470 m!4919095))

(assert (=> b!4324367 d!1271584))

(declare-fun d!1271586 () Bool)

(declare-fun e!2690582 () Bool)

(assert (=> d!1271586 e!2690582))

(declare-fun res!1772275 () Bool)

(assert (=> d!1271586 (=> (not res!1772275) (not e!2690582))))

(declare-fun lt!1541790 () ListLongMap!1191)

(assert (=> d!1271586 (= res!1772275 (contains!10468 lt!1541790 (_1!26916 (tuple2!47257 lt!1541677 lt!1541676))))))

(declare-fun lt!1541789 () List!48528)

(assert (=> d!1271586 (= lt!1541790 (ListLongMap!1192 lt!1541789))))

(declare-fun lt!1541788 () Unit!67928)

(declare-fun lt!1541787 () Unit!67928)

(assert (=> d!1271586 (= lt!1541788 lt!1541787)))

(assert (=> d!1271586 (= (getValueByKey!305 lt!1541789 (_1!26916 (tuple2!47257 lt!1541677 lt!1541676))) (Some!10312 (_2!26916 (tuple2!47257 lt!1541677 lt!1541676))))))

(declare-fun lemmaContainsTupThenGetReturnValue!100 (List!48528 (_ BitVec 64) List!48527) Unit!67928)

(assert (=> d!1271586 (= lt!1541787 (lemmaContainsTupThenGetReturnValue!100 lt!1541789 (_1!26916 (tuple2!47257 lt!1541677 lt!1541676)) (_2!26916 (tuple2!47257 lt!1541677 lt!1541676))))))

(declare-fun insertStrictlySorted!60 (List!48528 (_ BitVec 64) List!48527) List!48528)

(assert (=> d!1271586 (= lt!1541789 (insertStrictlySorted!60 (toList!2574 lt!1541674) (_1!26916 (tuple2!47257 lt!1541677 lt!1541676)) (_2!26916 (tuple2!47257 lt!1541677 lt!1541676))))))

(assert (=> d!1271586 (= (+!345 lt!1541674 (tuple2!47257 lt!1541677 lt!1541676)) lt!1541790)))

(declare-fun b!4324475 () Bool)

(declare-fun res!1772274 () Bool)

(assert (=> b!4324475 (=> (not res!1772274) (not e!2690582))))

(assert (=> b!4324475 (= res!1772274 (= (getValueByKey!305 (toList!2574 lt!1541790) (_1!26916 (tuple2!47257 lt!1541677 lt!1541676))) (Some!10312 (_2!26916 (tuple2!47257 lt!1541677 lt!1541676)))))))

(declare-fun b!4324476 () Bool)

(assert (=> b!4324476 (= e!2690582 (contains!10469 (toList!2574 lt!1541790) (tuple2!47257 lt!1541677 lt!1541676)))))

(assert (= (and d!1271586 res!1772275) b!4324475))

(assert (= (and b!4324475 res!1772274) b!4324476))

(declare-fun m!4919097 () Bool)

(assert (=> d!1271586 m!4919097))

(declare-fun m!4919099 () Bool)

(assert (=> d!1271586 m!4919099))

(declare-fun m!4919101 () Bool)

(assert (=> d!1271586 m!4919101))

(declare-fun m!4919103 () Bool)

(assert (=> d!1271586 m!4919103))

(declare-fun m!4919105 () Bool)

(assert (=> b!4324475 m!4919105))

(declare-fun m!4919107 () Bool)

(assert (=> b!4324476 m!4919107))

(assert (=> b!4324367 d!1271586))

(declare-fun bs!607170 () Bool)

(declare-fun d!1271588 () Bool)

(assert (= bs!607170 (and d!1271588 d!1271584)))

(declare-fun lambda!134159 () Int)

(assert (=> bs!607170 (= lambda!134159 lambda!134158)))

(declare-fun bs!607171 () Bool)

(assert (= bs!607171 (and d!1271588 b!4324367)))

(assert (=> bs!607171 (= lambda!134159 lambda!134131)))

(declare-fun bs!607172 () Bool)

(assert (= bs!607172 (and d!1271588 d!1271560)))

(assert (=> bs!607172 (not (= lambda!134159 lambda!134140))))

(declare-fun bs!607173 () Bool)

(assert (= bs!607173 (and d!1271588 d!1271582)))

(assert (=> bs!607173 (= lambda!134159 lambda!134153)))

(declare-fun bs!607174 () Bool)

(assert (= bs!607174 (and d!1271588 b!4324402)))

(assert (=> bs!607174 (= lambda!134159 lambda!134134)))

(declare-fun bs!607175 () Bool)

(assert (= bs!607175 (and d!1271588 d!1271578)))

(assert (=> bs!607175 (= lambda!134159 lambda!134150)))

(declare-fun bs!607176 () Bool)

(assert (= bs!607176 (and d!1271588 b!4324415)))

(assert (=> bs!607176 (= lambda!134159 lambda!134137)))

(declare-fun bs!607177 () Bool)

(assert (= bs!607177 (and d!1271588 d!1271570)))

(assert (=> bs!607177 (not (= lambda!134159 lambda!134147))))

(declare-fun lt!1541791 () ListMap!1851)

(assert (=> d!1271588 (invariantList!605 (toList!2575 lt!1541791))))

(declare-fun e!2690583 () ListMap!1851)

(assert (=> d!1271588 (= lt!1541791 e!2690583)))

(declare-fun c!735716 () Bool)

(assert (=> d!1271588 (= c!735716 ((_ is Cons!48404) (toList!2574 lt!1541678)))))

(assert (=> d!1271588 (forall!8826 (toList!2574 lt!1541678) lambda!134159)))

(assert (=> d!1271588 (= (extractMap!376 (toList!2574 lt!1541678)) lt!1541791)))

(declare-fun b!4324477 () Bool)

(assert (=> b!4324477 (= e!2690583 (addToMapMapFromBucket!55 (_2!26916 (h!53868 (toList!2574 lt!1541678))) (extractMap!376 (t!355422 (toList!2574 lt!1541678)))))))

(declare-fun b!4324478 () Bool)

(assert (=> b!4324478 (= e!2690583 (ListMap!1852 Nil!48403))))

(assert (= (and d!1271588 c!735716) b!4324477))

(assert (= (and d!1271588 (not c!735716)) b!4324478))

(declare-fun m!4919109 () Bool)

(assert (=> d!1271588 m!4919109))

(declare-fun m!4919111 () Bool)

(assert (=> d!1271588 m!4919111))

(declare-fun m!4919113 () Bool)

(assert (=> b!4324477 m!4919113))

(assert (=> b!4324477 m!4919113))

(declare-fun m!4919115 () Bool)

(assert (=> b!4324477 m!4919115))

(assert (=> b!4324367 d!1271588))

(declare-fun d!1271590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7575 (List!48527) (InoxSet tuple2!47254))

(assert (=> d!1271590 (= (eq!156 (extractMap!376 (toList!2574 lt!1541678)) (+!344 (extractMap!376 (toList!2574 lt!1541674)) lt!1541672)) (= (content!7575 (toList!2575 (extractMap!376 (toList!2574 lt!1541678)))) (content!7575 (toList!2575 (+!344 (extractMap!376 (toList!2574 lt!1541674)) lt!1541672)))))))

(declare-fun bs!607178 () Bool)

(assert (= bs!607178 d!1271590))

(declare-fun m!4919117 () Bool)

(assert (=> bs!607178 m!4919117))

(declare-fun m!4919119 () Bool)

(assert (=> bs!607178 m!4919119))

(assert (=> b!4324367 d!1271590))

(declare-fun d!1271592 () Bool)

(assert (=> d!1271592 (= (map!10433 (_2!26917 lt!1541668)) (map!10435 (v!42818 (underlying!9755 (_2!26917 lt!1541668)))))))

(declare-fun bs!607179 () Bool)

(assert (= bs!607179 d!1271592))

(declare-fun m!4919121 () Bool)

(assert (=> bs!607179 m!4919121))

(assert (=> b!4324367 d!1271592))

(declare-fun d!1271594 () Bool)

(declare-fun e!2690586 () Bool)

(assert (=> d!1271594 e!2690586))

(declare-fun res!1772281 () Bool)

(assert (=> d!1271594 (=> (not res!1772281) (not e!2690586))))

(declare-fun lt!1541800 () ListMap!1851)

(assert (=> d!1271594 (= res!1772281 (contains!10467 lt!1541800 (_1!26915 lt!1541672)))))

(declare-fun lt!1541802 () List!48527)

(assert (=> d!1271594 (= lt!1541800 (ListMap!1852 lt!1541802))))

(declare-fun lt!1541801 () Unit!67928)

(declare-fun lt!1541803 () Unit!67928)

(assert (=> d!1271594 (= lt!1541801 lt!1541803)))

(declare-datatypes ((Option!10314 0))(
  ( (None!10313) (Some!10313 (v!42826 V!9856)) )
))
(declare-fun getValueByKey!306 (List!48527 K!9654) Option!10314)

(assert (=> d!1271594 (= (getValueByKey!306 lt!1541802 (_1!26915 lt!1541672)) (Some!10313 (_2!26915 lt!1541672)))))

(declare-fun lemmaContainsTupThenGetReturnValue!101 (List!48527 K!9654 V!9856) Unit!67928)

(assert (=> d!1271594 (= lt!1541803 (lemmaContainsTupThenGetReturnValue!101 lt!1541802 (_1!26915 lt!1541672) (_2!26915 lt!1541672)))))

(declare-fun insertNoDuplicatedKeys!49 (List!48527 K!9654 V!9856) List!48527)

(assert (=> d!1271594 (= lt!1541802 (insertNoDuplicatedKeys!49 (toList!2575 (extractMap!376 (toList!2574 lt!1541674))) (_1!26915 lt!1541672) (_2!26915 lt!1541672)))))

(assert (=> d!1271594 (= (+!344 (extractMap!376 (toList!2574 lt!1541674)) lt!1541672) lt!1541800)))

(declare-fun b!4324483 () Bool)

(declare-fun res!1772280 () Bool)

(assert (=> b!4324483 (=> (not res!1772280) (not e!2690586))))

(assert (=> b!4324483 (= res!1772280 (= (getValueByKey!306 (toList!2575 lt!1541800) (_1!26915 lt!1541672)) (Some!10313 (_2!26915 lt!1541672))))))

(declare-fun b!4324484 () Bool)

(declare-fun contains!10471 (List!48527 tuple2!47254) Bool)

(assert (=> b!4324484 (= e!2690586 (contains!10471 (toList!2575 lt!1541800) lt!1541672))))

(assert (= (and d!1271594 res!1772281) b!4324483))

(assert (= (and b!4324483 res!1772280) b!4324484))

(declare-fun m!4919123 () Bool)

(assert (=> d!1271594 m!4919123))

(declare-fun m!4919125 () Bool)

(assert (=> d!1271594 m!4919125))

(declare-fun m!4919127 () Bool)

(assert (=> d!1271594 m!4919127))

(declare-fun m!4919129 () Bool)

(assert (=> d!1271594 m!4919129))

(declare-fun m!4919131 () Bool)

(assert (=> b!4324483 m!4919131))

(declare-fun m!4919133 () Bool)

(assert (=> b!4324484 m!4919133))

(assert (=> b!4324367 d!1271594))

(declare-fun d!1271596 () Bool)

(declare-fun res!1772286 () Bool)

(declare-fun e!2690591 () Bool)

(assert (=> d!1271596 (=> res!1772286 e!2690591)))

(assert (=> d!1271596 (= res!1772286 ((_ is Nil!48404) (toList!2574 lt!1541678)))))

(assert (=> d!1271596 (= (forall!8826 (toList!2574 lt!1541678) lambda!134131) e!2690591)))

(declare-fun b!4324489 () Bool)

(declare-fun e!2690592 () Bool)

(assert (=> b!4324489 (= e!2690591 e!2690592)))

(declare-fun res!1772287 () Bool)

(assert (=> b!4324489 (=> (not res!1772287) (not e!2690592))))

(declare-fun dynLambda!20516 (Int tuple2!47256) Bool)

(assert (=> b!4324489 (= res!1772287 (dynLambda!20516 lambda!134131 (h!53868 (toList!2574 lt!1541678))))))

(declare-fun b!4324490 () Bool)

(assert (=> b!4324490 (= e!2690592 (forall!8826 (t!355422 (toList!2574 lt!1541678)) lambda!134131))))

(assert (= (and d!1271596 (not res!1772286)) b!4324489))

(assert (= (and b!4324489 res!1772287) b!4324490))

(declare-fun b_lambda!127491 () Bool)

(assert (=> (not b_lambda!127491) (not b!4324489)))

(declare-fun m!4919135 () Bool)

(assert (=> b!4324489 m!4919135))

(declare-fun m!4919137 () Bool)

(assert (=> b!4324490 m!4919137))

(assert (=> b!4324367 d!1271596))

(declare-fun d!1271598 () Bool)

(declare-fun res!1772288 () Bool)

(declare-fun e!2690593 () Bool)

(assert (=> d!1271598 (=> res!1772288 e!2690593)))

(assert (=> d!1271598 (= res!1772288 ((_ is Nil!48404) (toList!2574 (map!10433 (_2!26917 lt!1541668)))))))

(assert (=> d!1271598 (= (forall!8826 (toList!2574 (map!10433 (_2!26917 lt!1541668))) lambda!134131) e!2690593)))

(declare-fun b!4324491 () Bool)

(declare-fun e!2690594 () Bool)

(assert (=> b!4324491 (= e!2690593 e!2690594)))

(declare-fun res!1772289 () Bool)

(assert (=> b!4324491 (=> (not res!1772289) (not e!2690594))))

(assert (=> b!4324491 (= res!1772289 (dynLambda!20516 lambda!134131 (h!53868 (toList!2574 (map!10433 (_2!26917 lt!1541668))))))))

(declare-fun b!4324492 () Bool)

(assert (=> b!4324492 (= e!2690594 (forall!8826 (t!355422 (toList!2574 (map!10433 (_2!26917 lt!1541668)))) lambda!134131))))

(assert (= (and d!1271598 (not res!1772288)) b!4324491))

(assert (= (and b!4324491 res!1772289) b!4324492))

(declare-fun b_lambda!127493 () Bool)

(assert (=> (not b_lambda!127493) (not b!4324491)))

(declare-fun m!4919139 () Bool)

(assert (=> b!4324491 m!4919139))

(declare-fun m!4919141 () Bool)

(assert (=> b!4324492 m!4919141))

(assert (=> b!4324367 d!1271598))

(declare-fun d!1271600 () Bool)

(declare-fun e!2690597 () Bool)

(assert (=> d!1271600 e!2690597))

(declare-fun c!735719 () Bool)

(assert (=> d!1271600 (= c!735719 (contains!10466 (v!42819 (underlying!9756 thiss!42308)) lt!1541677))))

(declare-fun lt!1541806 () List!48527)

(declare-fun apply!11158 (LongMapFixedSize!9526 (_ BitVec 64)) List!48527)

(assert (=> d!1271600 (= lt!1541806 (apply!11158 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))) lt!1541677))))

(assert (=> d!1271600 (valid!3778 (v!42819 (underlying!9756 thiss!42308)))))

(assert (=> d!1271600 (= (apply!11156 (v!42819 (underlying!9756 thiss!42308)) lt!1541677) lt!1541806)))

(declare-fun b!4324497 () Bool)

(declare-fun get!15686 (Option!10313) List!48527)

(assert (=> b!4324497 (= e!2690597 (= lt!1541806 (get!15686 (getValueByKey!305 (toList!2574 (map!10433 (v!42819 (underlying!9756 thiss!42308)))) lt!1541677))))))

(declare-fun b!4324498 () Bool)

(declare-fun dynLambda!20517 (Int (_ BitVec 64)) List!48527)

(assert (=> b!4324498 (= e!2690597 (= lt!1541806 (dynLambda!20517 (defaultEntry!5168 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308))))) lt!1541677)))))

(assert (=> b!4324498 ((_ is LongMap!4763) (v!42819 (underlying!9756 thiss!42308)))))

(assert (= (and d!1271600 c!735719) b!4324497))

(assert (= (and d!1271600 (not c!735719)) b!4324498))

(declare-fun b_lambda!127495 () Bool)

(assert (=> (not b_lambda!127495) (not b!4324498)))

(declare-fun t!355424 () Bool)

(declare-fun tb!257379 () Bool)

(assert (=> (and b!4324369 (= (defaultEntry!5168 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308))))) (defaultEntry!5168 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) t!355424) tb!257379))

(assert (=> b!4324498 t!355424))

(declare-fun result!314908 () Bool)

(declare-fun b_and!340589 () Bool)

(assert (= b_and!340585 (and (=> t!355424 result!314908) b_and!340589)))

(assert (=> d!1271600 m!4918963))

(declare-fun m!4919143 () Bool)

(assert (=> d!1271600 m!4919143))

(assert (=> d!1271600 m!4919027))

(assert (=> b!4324497 m!4918971))

(declare-fun m!4919145 () Bool)

(assert (=> b!4324497 m!4919145))

(assert (=> b!4324497 m!4919145))

(declare-fun m!4919147 () Bool)

(assert (=> b!4324497 m!4919147))

(declare-fun m!4919149 () Bool)

(assert (=> b!4324498 m!4919149))

(assert (=> b!4324374 d!1271600))

(declare-fun d!1271602 () Bool)

(assert (=> d!1271602 (= (array_inv!5555 (_keys!5089 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) (bvsge (size!35750 (_keys!5089 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324369 d!1271602))

(declare-fun d!1271604 () Bool)

(assert (=> d!1271604 (= (array_inv!5556 (_values!5064 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) (bvsge (size!35751 (_values!5064 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324369 d!1271604))

(declare-fun tp!1327250 () Bool)

(declare-fun e!2690603 () Bool)

(declare-fun b!4324505 () Bool)

(assert (=> b!4324505 (= e!2690603 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327250))))

(declare-fun condMapEmpty!21234 () Bool)

(declare-fun mapDefault!21234 () List!48527)

(assert (=> mapNonEmpty!21231 (= condMapEmpty!21234 (= mapRest!21231 ((as const (Array (_ BitVec 32) List!48527)) mapDefault!21234)))))

(declare-fun e!2690602 () Bool)

(declare-fun mapRes!21234 () Bool)

(assert (=> mapNonEmpty!21231 (= tp!1327241 (and e!2690602 mapRes!21234))))

(declare-fun mapIsEmpty!21234 () Bool)

(assert (=> mapIsEmpty!21234 mapRes!21234))

(declare-fun mapNonEmpty!21234 () Bool)

(declare-fun tp!1327251 () Bool)

(assert (=> mapNonEmpty!21234 (= mapRes!21234 (and tp!1327251 e!2690603))))

(declare-fun mapKey!21234 () (_ BitVec 32))

(declare-fun mapRest!21234 () (Array (_ BitVec 32) List!48527))

(declare-fun mapValue!21234 () List!48527)

(assert (=> mapNonEmpty!21234 (= mapRest!21231 (store mapRest!21234 mapKey!21234 mapValue!21234))))

(declare-fun tp!1327252 () Bool)

(declare-fun b!4324506 () Bool)

(assert (=> b!4324506 (= e!2690602 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327252))))

(assert (= (and mapNonEmpty!21231 condMapEmpty!21234) mapIsEmpty!21234))

(assert (= (and mapNonEmpty!21231 (not condMapEmpty!21234)) mapNonEmpty!21234))

(assert (= (and mapNonEmpty!21234 ((_ is Cons!48403) mapValue!21234)) b!4324505))

(assert (= (and mapNonEmpty!21231 ((_ is Cons!48403) mapDefault!21234)) b!4324506))

(declare-fun m!4919151 () Bool)

(assert (=> mapNonEmpty!21234 m!4919151))

(declare-fun tp!1327255 () Bool)

(declare-fun b!4324511 () Bool)

(declare-fun e!2690606 () Bool)

(assert (=> b!4324511 (= e!2690606 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327255))))

(assert (=> mapNonEmpty!21231 (= tp!1327242 e!2690606)))

(assert (= (and mapNonEmpty!21231 ((_ is Cons!48403) mapValue!21231)) b!4324511))

(declare-fun e!2690607 () Bool)

(declare-fun tp!1327256 () Bool)

(declare-fun b!4324512 () Bool)

(assert (=> b!4324512 (= e!2690607 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327256))))

(assert (=> b!4324369 (= tp!1327243 e!2690607)))

(assert (= (and b!4324369 ((_ is Cons!48403) (zeroValue!5040 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308))))))) b!4324512))

(declare-fun e!2690608 () Bool)

(declare-fun b!4324513 () Bool)

(declare-fun tp!1327257 () Bool)

(assert (=> b!4324513 (= e!2690608 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327257))))

(assert (=> b!4324369 (= tp!1327237 e!2690608)))

(assert (= (and b!4324369 ((_ is Cons!48403) (minValue!5040 (v!42818 (underlying!9755 (v!42819 (underlying!9756 thiss!42308))))))) b!4324513))

(declare-fun tp!1327258 () Bool)

(declare-fun b!4324514 () Bool)

(declare-fun e!2690609 () Bool)

(assert (=> b!4324514 (= e!2690609 (and tp_is_empty!24149 tp_is_empty!24151 tp!1327258))))

(assert (=> b!4324363 (= tp!1327238 e!2690609)))

(assert (= (and b!4324363 ((_ is Cons!48403) mapDefault!21231)) b!4324514))

(declare-fun b_lambda!127497 () Bool)

(assert (= b_lambda!127491 (or b!4324367 b_lambda!127497)))

(declare-fun bs!607180 () Bool)

(declare-fun d!1271606 () Bool)

(assert (= bs!607180 (and d!1271606 b!4324367)))

(assert (=> bs!607180 (= (dynLambda!20516 lambda!134131 (h!53868 (toList!2574 lt!1541678))) (noDuplicateKeys!266 (_2!26916 (h!53868 (toList!2574 lt!1541678)))))))

(declare-fun m!4919153 () Bool)

(assert (=> bs!607180 m!4919153))

(assert (=> b!4324489 d!1271606))

(declare-fun b_lambda!127499 () Bool)

(assert (= b_lambda!127495 (or (and b!4324369 b_free!129011) b_lambda!127499)))

(declare-fun b_lambda!127501 () Bool)

(assert (= b_lambda!127493 (or b!4324367 b_lambda!127501)))

(declare-fun bs!607181 () Bool)

(declare-fun d!1271608 () Bool)

(assert (= bs!607181 (and d!1271608 b!4324367)))

(assert (=> bs!607181 (= (dynLambda!20516 lambda!134131 (h!53868 (toList!2574 (map!10433 (_2!26917 lt!1541668))))) (noDuplicateKeys!266 (_2!26916 (h!53868 (toList!2574 (map!10433 (_2!26917 lt!1541668)))))))))

(declare-fun m!4919155 () Bool)

(assert (=> bs!607181 m!4919155))

(assert (=> b!4324491 d!1271608))

(check-sat (not d!1271590) (not tb!257379) (not b!4324461) (not b!4324483) (not b!4324492) (not b!4324511) (not d!1271556) (not b!4324466) (not bm!300047) tp_is_empty!24149 (not b!4324484) (not b!4324476) (not b!4324477) (not d!1271570) (not d!1271578) (not bm!300048) (not d!1271576) tp_is_empty!24151 (not b_next!129717) (not b!4324455) (not b!4324512) (not d!1271560) (not bs!607180) (not d!1271566) (not b!4324402) (not d!1271584) (not bm!300041) (not b!4324460) (not b!4324433) (not d!1271574) (not b!4324406) (not d!1271564) (not d!1271582) (not d!1271554) (not b!4324409) (not b!4324514) (not b!4324475) b_and!340587 (not d!1271586) (not bm!300039) (not b!4324403) (not b_lambda!127497) (not d!1271594) (not b_lambda!127499) (not bm!300037) (not d!1271568) (not d!1271572) (not b!4324506) (not b!4324497) (not b!4324400) (not b!4324490) (not bm!300038) (not mapNonEmpty!21234) (not d!1271588) (not b_next!129715) (not bs!607181) b_and!340589 (not b!4324416) (not d!1271558) (not d!1271592) (not b!4324457) (not b!4324470) (not b!4324415) (not d!1271552) (not b!4324459) (not bm!300042) (not d!1271600) (not b!4324505) (not b_lambda!127501) (not d!1271562) (not b!4324513) (not bm!300040))
(check-sat b_and!340589 b_and!340587 (not b_next!129717) (not b_next!129715))
