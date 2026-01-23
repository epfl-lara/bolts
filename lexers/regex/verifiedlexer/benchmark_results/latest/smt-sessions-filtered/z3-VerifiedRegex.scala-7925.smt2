; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412984 () Bool)

(assert start!412984)

(declare-fun b!4300917 () Bool)

(declare-fun b_free!128083 () Bool)

(declare-fun b_next!128787 () Bool)

(assert (=> b!4300917 (= b_free!128083 (not b_next!128787))))

(declare-fun tp!1321386 () Bool)

(declare-fun b_and!339455 () Bool)

(assert (=> b!4300917 (= tp!1321386 b_and!339455)))

(declare-fun b!4300916 () Bool)

(declare-fun b_free!128085 () Bool)

(declare-fun b_next!128789 () Bool)

(assert (=> b!4300916 (= b_free!128085 (not b_next!128789))))

(declare-fun tp!1321390 () Bool)

(declare-fun b_and!339457 () Bool)

(assert (=> b!4300916 (= tp!1321390 b_and!339457)))

(declare-fun b!4300912 () Bool)

(declare-fun e!2673449 () Bool)

(declare-fun e!2673448 () Bool)

(assert (=> b!4300912 (= e!2673449 e!2673448)))

(declare-fun b!4300913 () Bool)

(declare-fun e!2673447 () Bool)

(declare-fun tp!1321388 () Bool)

(declare-fun mapRes!20352 () Bool)

(assert (=> b!4300913 (= e!2673447 (and tp!1321388 mapRes!20352))))

(declare-fun condMapEmpty!20352 () Bool)

(declare-datatypes ((V!9276 0))(
  ( (V!9277 (val!15517 Int)) )
))
(declare-datatypes ((K!9074 0))(
  ( (K!9075 (val!15518 Int)) )
))
(declare-datatypes ((tuple2!45960 0))(
  ( (tuple2!45961 (_1!26259 K!9074) (_2!26259 V!9276)) )
))
(declare-datatypes ((List!48081 0))(
  ( (Nil!47957) (Cons!47957 (h!53377 tuple2!45960) (t!354844 List!48081)) )
))
(declare-datatypes ((array!16238 0))(
  ( (array!16239 (arr!7247 (Array (_ BitVec 32) (_ BitVec 64))) (size!35286 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4447 0))(
  ( (HashableExt!4446 (__x!29618 Int)) )
))
(declare-datatypes ((array!16240 0))(
  ( (array!16241 (arr!7248 (Array (_ BitVec 32) List!48081)) (size!35287 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9062 0))(
  ( (LongMapFixedSize!9063 (defaultEntry!4916 Int) (mask!13025 (_ BitVec 32)) (extraKeys!4780 (_ BitVec 32)) (zeroValue!4790 List!48081) (minValue!4790 List!48081) (_size!9105 (_ BitVec 32)) (_keys!4831 array!16238) (_values!4812 array!16240) (_vacant!4592 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17933 0))(
  ( (Cell!17934 (v!41935 LongMapFixedSize!9062)) )
))
(declare-datatypes ((MutLongMap!4531 0))(
  ( (LongMap!4531 (underlying!9291 Cell!17933)) (MutLongMapExt!4530 (__x!29619 Int)) )
))
(declare-datatypes ((Cell!17935 0))(
  ( (Cell!17936 (v!41936 MutLongMap!4531)) )
))
(declare-datatypes ((MutableMap!4437 0))(
  ( (MutableMapExt!4436 (__x!29620 Int)) (HashMap!4437 (underlying!9292 Cell!17935) (hashF!6479 Hashable!4447) (_size!9106 (_ BitVec 32)) (defaultValue!4608 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4437)

(declare-fun mapDefault!20352 () List!48081)

(assert (=> b!4300913 (= condMapEmpty!20352 (= (arr!7248 (_values!4812 (v!41935 (underlying!9291 (v!41936 (underlying!9292 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48081)) mapDefault!20352)))))

(declare-fun b!4300914 () Bool)

(declare-fun res!1762735 () Bool)

(declare-fun e!2673446 () Bool)

(assert (=> b!4300914 (=> (not res!1762735) (not e!2673446))))

(declare-fun valid!3515 (MutableMap!4437) Bool)

(assert (=> b!4300914 (= res!1762735 (valid!3515 thiss!42308))))

(declare-fun mapIsEmpty!20352 () Bool)

(assert (=> mapIsEmpty!20352 mapRes!20352))

(declare-fun b!4300915 () Bool)

(declare-fun e!2673442 () Bool)

(declare-fun e!2673445 () Bool)

(declare-fun lt!1523129 () MutLongMap!4531)

(get-info :version)

(assert (=> b!4300915 (= e!2673442 (and e!2673445 ((_ is LongMap!4531) lt!1523129)))))

(assert (=> b!4300915 (= lt!1523129 (v!41936 (underlying!9292 thiss!42308)))))

(declare-fun e!2673444 () Bool)

(assert (=> b!4300916 (= e!2673444 (and e!2673442 tp!1321390))))

(declare-fun tp!1321384 () Bool)

(declare-fun tp!1321387 () Bool)

(declare-fun array_inv!5193 (array!16238) Bool)

(declare-fun array_inv!5194 (array!16240) Bool)

(assert (=> b!4300917 (= e!2673448 (and tp!1321386 tp!1321387 tp!1321384 (array_inv!5193 (_keys!4831 (v!41935 (underlying!9291 (v!41936 (underlying!9292 thiss!42308)))))) (array_inv!5194 (_values!4812 (v!41935 (underlying!9291 (v!41936 (underlying!9292 thiss!42308)))))) e!2673447))))

(declare-fun res!1762734 () Bool)

(assert (=> start!412984 (=> (not res!1762734) (not e!2673446))))

(assert (=> start!412984 (= res!1762734 ((_ is HashMap!4437) thiss!42308))))

(assert (=> start!412984 e!2673446))

(assert (=> start!412984 e!2673444))

(declare-fun b!4300911 () Bool)

(assert (=> b!4300911 (= e!2673445 e!2673449)))

(declare-fun b!4300918 () Bool)

(assert (=> b!4300918 (= e!2673446 (not ((_ is LongMap!4531) (v!41936 (underlying!9292 thiss!42308)))))))

(declare-datatypes ((ListMap!1495 0))(
  ( (ListMap!1496 (toList!2208 List!48081)) )
))
(declare-fun lt!1523130 () ListMap!1495)

(declare-fun map!9915 (MutableMap!4437) ListMap!1495)

(assert (=> b!4300918 (= lt!1523130 (map!9915 thiss!42308))))

(declare-fun mapNonEmpty!20352 () Bool)

(declare-fun tp!1321389 () Bool)

(declare-fun tp!1321385 () Bool)

(assert (=> mapNonEmpty!20352 (= mapRes!20352 (and tp!1321389 tp!1321385))))

(declare-fun mapRest!20352 () (Array (_ BitVec 32) List!48081))

(declare-fun mapKey!20352 () (_ BitVec 32))

(declare-fun mapValue!20352 () List!48081)

(assert (=> mapNonEmpty!20352 (= (arr!7248 (_values!4812 (v!41935 (underlying!9291 (v!41936 (underlying!9292 thiss!42308)))))) (store mapRest!20352 mapKey!20352 mapValue!20352))))

(assert (= (and start!412984 res!1762734) b!4300914))

(assert (= (and b!4300914 res!1762735) b!4300918))

(assert (= (and b!4300913 condMapEmpty!20352) mapIsEmpty!20352))

(assert (= (and b!4300913 (not condMapEmpty!20352)) mapNonEmpty!20352))

(assert (= b!4300917 b!4300913))

(assert (= b!4300912 b!4300917))

(assert (= b!4300911 b!4300912))

(assert (= (and b!4300915 ((_ is LongMap!4531) (v!41936 (underlying!9292 thiss!42308)))) b!4300911))

(assert (= b!4300916 b!4300915))

(assert (= (and start!412984 ((_ is HashMap!4437) thiss!42308)) b!4300916))

(declare-fun m!4893233 () Bool)

(assert (=> b!4300914 m!4893233))

(declare-fun m!4893235 () Bool)

(assert (=> b!4300917 m!4893235))

(declare-fun m!4893237 () Bool)

(assert (=> b!4300917 m!4893237))

(declare-fun m!4893239 () Bool)

(assert (=> b!4300918 m!4893239))

(declare-fun m!4893241 () Bool)

(assert (=> mapNonEmpty!20352 m!4893241))

(check-sat (not b_next!128789) (not b_next!128787) (not mapNonEmpty!20352) (not b!4300914) b_and!339455 (not b!4300918) (not b!4300913) (not b!4300917) b_and!339457)
(check-sat b_and!339455 b_and!339457 (not b_next!128789) (not b_next!128787))
