; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413632 () Bool)

(assert start!413632)

(declare-fun b!4305368 () Bool)

(declare-fun b_free!128363 () Bool)

(declare-fun b_next!129067 () Bool)

(assert (=> b!4305368 (= b_free!128363 (not b_next!129067))))

(declare-fun tp!1323077 () Bool)

(declare-fun b_and!339763 () Bool)

(assert (=> b!4305368 (= tp!1323077 b_and!339763)))

(declare-fun b!4305365 () Bool)

(declare-fun b_free!128365 () Bool)

(declare-fun b_next!129069 () Bool)

(assert (=> b!4305365 (= b_free!128365 (not b_next!129069))))

(declare-fun tp!1323078 () Bool)

(declare-fun b_and!339765 () Bool)

(assert (=> b!4305365 (= tp!1323078 b_and!339765)))

(declare-fun b!4305382 () Bool)

(declare-fun e!2676984 () Bool)

(declare-fun e!2676981 () Bool)

(assert (=> b!4305382 (= e!2676984 e!2676981)))

(declare-fun b!4305383 () Bool)

(declare-fun e!2676980 () Bool)

(assert (=> b!4305383 (= e!2676980 true)))

(declare-fun b!4305355 () Bool)

(declare-fun e!2676982 () Bool)

(assert (=> b!4305355 e!2676982))

(declare-fun b!4305384 () Bool)

(declare-fun e!2676983 () Bool)

(assert (=> b!4305384 (= e!2676982 e!2676983)))

(declare-fun b!4305385 () Bool)

(assert (=> b!4305385 (= e!2676981 e!2676980)))

(declare-fun b!4305386 () Bool)

(declare-datatypes ((V!9451 0))(
  ( (V!9452 (val!15657 Int)) )
))
(declare-datatypes ((K!9249 0))(
  ( (K!9250 (val!15658 Int)) )
))
(declare-datatypes ((tuple2!46282 0))(
  ( (tuple2!46283 (_1!26420 K!9249) (_2!26420 V!9451)) )
))
(declare-datatypes ((List!48207 0))(
  ( (Nil!48083) (Cons!48083 (h!53510 tuple2!46282) (t!354992 List!48207)) )
))
(declare-datatypes ((array!16546 0))(
  ( (array!16547 (arr!7387 (Array (_ BitVec 32) (_ BitVec 64))) (size!35426 (_ BitVec 32))) )
))
(declare-datatypes ((array!16548 0))(
  ( (array!16549 (arr!7388 (Array (_ BitVec 32) List!48207)) (size!35427 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9202 0))(
  ( (LongMapFixedSize!9203 (defaultEntry!4986 Int) (mask!13130 (_ BitVec 32)) (extraKeys!4850 (_ BitVec 32)) (zeroValue!4860 List!48207) (minValue!4860 List!48207) (_size!9245 (_ BitVec 32)) (_keys!4901 array!16546) (_values!4882 array!16548) (_vacant!4662 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18213 0))(
  ( (Cell!18214 (v!42138 LongMapFixedSize!9202)) )
))
(declare-datatypes ((MutLongMap!4601 0))(
  ( (LongMap!4601 (underlying!9431 Cell!18213)) (MutLongMapExt!4600 (__x!29828 Int)) )
))
(declare-fun lt!1526633 () MutLongMap!4601)

(get-info :version)

(assert (=> b!4305386 (= e!2676983 (and e!2676984 ((_ is LongMap!4601) lt!1526633)))))

(declare-datatypes ((Hashable!4517 0))(
  ( (HashableExt!4516 (__x!29829 Int)) )
))
(declare-datatypes ((Cell!18215 0))(
  ( (Cell!18216 (v!42139 MutLongMap!4601)) )
))
(declare-datatypes ((MutableMap!4507 0))(
  ( (MutableMapExt!4506 (__x!29830 Int)) (HashMap!4507 (underlying!9432 Cell!18215) (hashF!6591 Hashable!4517) (_size!9246 (_ BitVec 32)) (defaultValue!4678 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4507)

(assert (=> b!4305386 (= lt!1526633 (v!42139 (underlying!9432 thiss!42308)))))

(assert (= b!4305385 b!4305383))

(assert (= b!4305382 b!4305385))

(assert (= (and b!4305386 ((_ is LongMap!4601) (v!42139 (underlying!9432 thiss!42308)))) b!4305382))

(assert (= b!4305384 b!4305386))

(assert (= (and b!4305355 ((_ is HashMap!4507) thiss!42308)) b!4305384))

(declare-fun lambda!132430 () Int)

(declare-fun order!25073 () Int)

(declare-fun order!25075 () Int)

(declare-fun dynLambda!20398 (Int Int) Int)

(declare-fun dynLambda!20399 (Int Int) Int)

(assert (=> b!4305383 (< (dynLambda!20398 order!25073 (defaultEntry!4986 (v!42138 (underlying!9431 (v!42139 (underlying!9432 thiss!42308)))))) (dynLambda!20399 order!25075 lambda!132430))))

(declare-fun order!25077 () Int)

(declare-fun dynLambda!20400 (Int Int) Int)

(assert (=> b!4305384 (< (dynLambda!20400 order!25077 (defaultValue!4678 thiss!42308)) (dynLambda!20399 order!25075 lambda!132430))))

(declare-fun res!1764644 () Bool)

(declare-fun e!2676964 () Bool)

(assert (=> b!4305355 (=> (not res!1764644) (not e!2676964))))

(declare-datatypes ((tuple2!46284 0))(
  ( (tuple2!46285 (_1!26421 (_ BitVec 64)) (_2!26421 List!48207)) )
))
(declare-datatypes ((List!48208 0))(
  ( (Nil!48084) (Cons!48084 (h!53511 tuple2!46284) (t!354993 List!48208)) )
))
(declare-datatypes ((ListLongMap!915 0))(
  ( (ListLongMap!916 (toList!2305 List!48208)) )
))
(declare-fun lt!1526628 () ListLongMap!915)

(declare-fun forall!8687 (List!48208 Int) Bool)

(assert (=> b!4305355 (= res!1764644 (forall!8687 (toList!2305 lt!1526628) lambda!132430))))

(declare-fun b!4305356 () Bool)

(declare-fun e!2676965 () List!48207)

(assert (=> b!4305356 (= e!2676965 Nil!48083)))

(declare-fun b!4305357 () Bool)

(declare-fun res!1764645 () Bool)

(declare-fun e!2676968 () Bool)

(assert (=> b!4305357 (=> (not res!1764645) (not e!2676968))))

(declare-fun valid!3589 (MutableMap!4507) Bool)

(assert (=> b!4305357 (= res!1764645 (valid!3589 thiss!42308))))

(declare-fun b!4305358 () Bool)

(assert (=> b!4305358 (= e!2676964 (not (forall!8687 (toList!2305 lt!1526628) lambda!132430)))))

(declare-fun res!1764642 () Bool)

(assert (=> start!413632 (=> (not res!1764642) (not e!2676968))))

(assert (=> start!413632 (= res!1764642 ((_ is HashMap!4507) thiss!42308))))

(assert (=> start!413632 e!2676968))

(declare-fun e!2676963 () Bool)

(assert (=> start!413632 e!2676963))

(declare-fun tp_is_empty!23525 () Bool)

(assert (=> start!413632 tp_is_empty!23525))

(declare-fun tp_is_empty!23527 () Bool)

(assert (=> start!413632 tp_is_empty!23527))

(declare-fun b!4305359 () Bool)

(declare-fun e!2676966 () Bool)

(assert (=> b!4305359 (= e!2676966 e!2676964)))

(declare-fun res!1764646 () Bool)

(assert (=> b!4305359 (=> (not res!1764646) (not e!2676964))))

(declare-fun lt!1526627 () (_ BitVec 64))

(declare-fun lt!1526629 () List!48207)

(declare-fun v!9179 () V!9451)

(declare-fun key!2048 () K!9249)

(declare-datatypes ((tuple2!46286 0))(
  ( (tuple2!46287 (_1!26422 Bool) (_2!26422 MutLongMap!4601)) )
))
(declare-fun update!385 (MutLongMap!4601 (_ BitVec 64) List!48207) tuple2!46286)

(assert (=> b!4305359 (= res!1764646 (_1!26422 (update!385 (v!42139 (underlying!9432 thiss!42308)) lt!1526627 (Cons!48083 (tuple2!46283 key!2048 v!9179) lt!1526629))))))

(assert (=> b!4305359 (= lt!1526629 e!2676965)))

(declare-fun c!732044 () Bool)

(declare-fun contains!10020 (MutLongMap!4601 (_ BitVec 64)) Bool)

(assert (=> b!4305359 (= c!732044 (contains!10020 (v!42139 (underlying!9432 thiss!42308)) lt!1526627))))

(declare-fun hash!925 (Hashable!4517 K!9249) (_ BitVec 64))

(assert (=> b!4305359 (= lt!1526627 (hash!925 (hashF!6591 thiss!42308) key!2048))))

(declare-fun b!4305360 () Bool)

(declare-fun e!2676960 () Bool)

(declare-fun e!2676962 () Bool)

(assert (=> b!4305360 (= e!2676960 e!2676962)))

(declare-fun b!4305361 () Bool)

(declare-fun e!2676967 () Bool)

(declare-fun lt!1526626 () MutLongMap!4601)

(assert (=> b!4305361 (= e!2676967 (and e!2676960 ((_ is LongMap!4601) lt!1526626)))))

(assert (=> b!4305361 (= lt!1526626 (v!42139 (underlying!9432 thiss!42308)))))

(declare-fun mapIsEmpty!20605 () Bool)

(declare-fun mapRes!20605 () Bool)

(assert (=> mapIsEmpty!20605 mapRes!20605))

(declare-fun mapNonEmpty!20605 () Bool)

(declare-fun tp!1323074 () Bool)

(declare-fun tp!1323080 () Bool)

(assert (=> mapNonEmpty!20605 (= mapRes!20605 (and tp!1323074 tp!1323080))))

(declare-fun mapValue!20605 () List!48207)

(declare-fun mapRest!20605 () (Array (_ BitVec 32) List!48207))

(declare-fun mapKey!20605 () (_ BitVec 32))

(assert (=> mapNonEmpty!20605 (= (arr!7388 (_values!4882 (v!42138 (underlying!9431 (v!42139 (underlying!9432 thiss!42308)))))) (store mapRest!20605 mapKey!20605 mapValue!20605))))

(declare-fun b!4305362 () Bool)

(declare-fun res!1764641 () Bool)

(assert (=> b!4305362 (=> (not res!1764641) (not e!2676964))))

(declare-fun isEmpty!28055 (List!48207) Bool)

(assert (=> b!4305362 (= res!1764641 (not (isEmpty!28055 lt!1526629)))))

(declare-fun b!4305363 () Bool)

(assert (=> b!4305363 (= e!2676968 e!2676966)))

(declare-fun res!1764643 () Bool)

(assert (=> b!4305363 (=> (not res!1764643) (not e!2676966))))

(declare-fun contains!10021 (MutableMap!4507 K!9249) Bool)

(assert (=> b!4305363 (= res!1764643 (not (contains!10021 thiss!42308 key!2048)))))

(declare-fun map!10055 (MutLongMap!4601) ListLongMap!915)

(assert (=> b!4305363 (= lt!1526628 (map!10055 (v!42139 (underlying!9432 thiss!42308))))))

(declare-datatypes ((ListMap!1589 0))(
  ( (ListMap!1590 (toList!2306 List!48207)) )
))
(declare-fun lt!1526630 () ListMap!1589)

(declare-fun map!10056 (MutableMap!4507) ListMap!1589)

(assert (=> b!4305363 (= lt!1526630 (map!10056 thiss!42308))))

(declare-fun b!4305364 () Bool)

(declare-fun res!1764640 () Bool)

(assert (=> b!4305364 (=> (not res!1764640) (not e!2676964))))

(declare-fun contains!10022 (List!48208 tuple2!46284) Bool)

(assert (=> b!4305364 (= res!1764640 (contains!10022 (toList!2305 lt!1526628) (tuple2!46285 lt!1526627 lt!1526629)))))

(assert (=> b!4305365 (= e!2676963 (and e!2676967 tp!1323078))))

(declare-fun b!4305366 () Bool)

(declare-fun apply!10950 (MutLongMap!4601 (_ BitVec 64)) List!48207)

(assert (=> b!4305366 (= e!2676965 (apply!10950 (v!42139 (underlying!9432 thiss!42308)) lt!1526627))))

(declare-fun b!4305367 () Bool)

(declare-fun e!2676959 () Bool)

(assert (=> b!4305367 (= e!2676962 e!2676959)))

(declare-fun tp!1323079 () Bool)

(declare-fun e!2676961 () Bool)

(declare-fun tp!1323075 () Bool)

(declare-fun array_inv!5299 (array!16546) Bool)

(declare-fun array_inv!5300 (array!16548) Bool)

(assert (=> b!4305368 (= e!2676959 (and tp!1323077 tp!1323075 tp!1323079 (array_inv!5299 (_keys!4901 (v!42138 (underlying!9431 (v!42139 (underlying!9432 thiss!42308)))))) (array_inv!5300 (_values!4882 (v!42138 (underlying!9431 (v!42139 (underlying!9432 thiss!42308)))))) e!2676961))))

(declare-fun b!4305369 () Bool)

(declare-fun tp!1323076 () Bool)

(assert (=> b!4305369 (= e!2676961 (and tp!1323076 mapRes!20605))))

(declare-fun condMapEmpty!20605 () Bool)

(declare-fun mapDefault!20605 () List!48207)

(assert (=> b!4305369 (= condMapEmpty!20605 (= (arr!7388 (_values!4882 (v!42138 (underlying!9431 (v!42139 (underlying!9432 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48207)) mapDefault!20605)))))

(assert (= (and start!413632 res!1764642) b!4305357))

(assert (= (and b!4305357 res!1764645) b!4305363))

(assert (= (and b!4305363 res!1764643) b!4305359))

(assert (= (and b!4305359 c!732044) b!4305366))

(assert (= (and b!4305359 (not c!732044)) b!4305356))

(assert (= (and b!4305359 res!1764646) b!4305362))

(assert (= (and b!4305362 res!1764641) b!4305355))

(assert (= (and b!4305355 res!1764644) b!4305364))

(assert (= (and b!4305364 res!1764640) b!4305358))

(assert (= (and b!4305369 condMapEmpty!20605) mapIsEmpty!20605))

(assert (= (and b!4305369 (not condMapEmpty!20605)) mapNonEmpty!20605))

(assert (= b!4305368 b!4305369))

(assert (= b!4305367 b!4305368))

(assert (= b!4305360 b!4305367))

(assert (= (and b!4305361 ((_ is LongMap!4601) (v!42139 (underlying!9432 thiss!42308)))) b!4305360))

(assert (= b!4305365 b!4305361))

(assert (= (and start!413632 ((_ is HashMap!4507) thiss!42308)) b!4305365))

(declare-fun m!4898171 () Bool)

(assert (=> b!4305366 m!4898171))

(declare-fun m!4898173 () Bool)

(assert (=> b!4305355 m!4898173))

(declare-fun m!4898175 () Bool)

(assert (=> b!4305362 m!4898175))

(declare-fun m!4898177 () Bool)

(assert (=> b!4305364 m!4898177))

(declare-fun m!4898179 () Bool)

(assert (=> b!4305357 m!4898179))

(assert (=> b!4305358 m!4898173))

(declare-fun m!4898181 () Bool)

(assert (=> b!4305359 m!4898181))

(declare-fun m!4898183 () Bool)

(assert (=> b!4305359 m!4898183))

(declare-fun m!4898185 () Bool)

(assert (=> b!4305359 m!4898185))

(declare-fun m!4898187 () Bool)

(assert (=> b!4305368 m!4898187))

(declare-fun m!4898189 () Bool)

(assert (=> b!4305368 m!4898189))

(declare-fun m!4898191 () Bool)

(assert (=> mapNonEmpty!20605 m!4898191))

(declare-fun m!4898193 () Bool)

(assert (=> b!4305363 m!4898193))

(declare-fun m!4898195 () Bool)

(assert (=> b!4305363 m!4898195))

(declare-fun m!4898197 () Bool)

(assert (=> b!4305363 m!4898197))

(check-sat b_and!339763 (not b!4305366) (not b!4305363) tp_is_empty!23525 (not b!4305364) b_and!339765 tp_is_empty!23527 (not b!4305359) (not b_next!129069) (not b!4305355) (not b!4305358) (not b!4305369) (not b!4305362) (not mapNonEmpty!20605) (not b!4305357) (not b_next!129067) (not b!4305368))
(check-sat b_and!339763 b_and!339765 (not b_next!129069) (not b_next!129067))
