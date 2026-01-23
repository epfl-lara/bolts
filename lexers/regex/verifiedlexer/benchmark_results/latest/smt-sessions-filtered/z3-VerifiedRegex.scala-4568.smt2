; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241490 () Bool)

(assert start!241490)

(declare-fun b!2476060 () Bool)

(declare-fun b_free!71881 () Bool)

(declare-fun b_next!72585 () Bool)

(assert (=> b!2476060 (= b_free!71881 (not b_next!72585))))

(declare-fun tp!791927 () Bool)

(declare-fun b_and!188105 () Bool)

(assert (=> b!2476060 (= tp!791927 b_and!188105)))

(declare-fun b!2476057 () Bool)

(declare-fun b_free!71883 () Bool)

(declare-fun b_next!72587 () Bool)

(assert (=> b!2476057 (= b_free!71883 (not b_next!72587))))

(declare-fun tp!791922 () Bool)

(declare-fun b_and!188107 () Bool)

(assert (=> b!2476057 (= tp!791922 b_and!188107)))

(declare-fun e!1570948 () Bool)

(declare-fun e!1570956 () Bool)

(assert (=> b!2476057 (= e!1570948 (and e!1570956 tp!791922))))

(declare-fun b!2476058 () Bool)

(declare-fun res!1048334 () Bool)

(declare-fun e!1570955 () Bool)

(assert (=> b!2476058 (=> (not res!1048334) (not e!1570955))))

(declare-datatypes ((array!11449 0))(
  ( (array!11450 (arr!5102 (Array (_ BitVec 32) (_ BitVec 64))) (size!22521 (_ BitVec 32))) )
))
(declare-datatypes ((K!5225 0))(
  ( (K!5226 (val!8655 Int)) )
))
(declare-datatypes ((V!5427 0))(
  ( (V!5428 (val!8656 Int)) )
))
(declare-datatypes ((tuple2!28290 0))(
  ( (tuple2!28291 (_1!16686 K!5225) (_2!16686 V!5427)) )
))
(declare-datatypes ((List!29023 0))(
  ( (Nil!28923) (Cons!28923 (h!34324 tuple2!28290) (t!210658 List!29023)) )
))
(declare-datatypes ((array!11451 0))(
  ( (array!11452 (arr!5103 (Array (_ BitVec 32) List!29023)) (size!22522 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6512 0))(
  ( (LongMapFixedSize!6513 (defaultEntry!3630 Int) (mask!8373 (_ BitVec 32)) (extraKeys!3504 (_ BitVec 32)) (zeroValue!3514 List!29023) (minValue!3514 List!29023) (_size!6559 (_ BitVec 32)) (_keys!3553 array!11449) (_values!3536 array!11451) (_vacant!3317 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12841 0))(
  ( (Cell!12842 (v!31176 LongMapFixedSize!6512)) )
))
(declare-datatypes ((MutLongMap!3256 0))(
  ( (LongMap!3256 (underlying!6719 Cell!12841)) (MutLongMapExt!3255 (__x!18674 Int)) )
))
(declare-datatypes ((Cell!12843 0))(
  ( (Cell!12844 (v!31177 MutLongMap!3256)) )
))
(declare-datatypes ((Hashable!3166 0))(
  ( (HashableExt!3165 (__x!18675 Int)) )
))
(declare-datatypes ((MutableMap!3166 0))(
  ( (MutableMapExt!3165 (__x!18676 Int)) (HashMap!3166 (underlying!6720 Cell!12843) (hashF!5097 Hashable!3166) (_size!6560 (_ BitVec 32)) (defaultValue!3328 Int)) )
))
(declare-datatypes ((tuple2!28292 0))(
  ( (tuple2!28293 (_1!16687 Bool) (_2!16687 MutableMap!3166)) )
))
(declare-fun lt!884221 () tuple2!28292)

(assert (=> b!2476058 (= res!1048334 (_1!16687 lt!884221))))

(declare-fun b!2476059 () Bool)

(declare-fun e!1570952 () Bool)

(declare-fun lt!884220 () MutLongMap!3256)

(get-info :version)

(assert (=> b!2476059 (= e!1570956 (and e!1570952 ((_ is LongMap!3256) lt!884220)))))

(declare-fun thiss!47892 () MutableMap!3166)

(assert (=> b!2476059 (= lt!884220 (v!31177 (underlying!6720 thiss!47892)))))

(declare-fun tp!791925 () Bool)

(declare-fun e!1570949 () Bool)

(declare-fun e!1570953 () Bool)

(declare-fun tp!791921 () Bool)

(declare-fun array_inv!3659 (array!11449) Bool)

(declare-fun array_inv!3660 (array!11451) Bool)

(assert (=> b!2476060 (= e!1570949 (and tp!791927 tp!791921 tp!791925 (array_inv!3659 (_keys!3553 (v!31176 (underlying!6719 (v!31177 (underlying!6720 thiss!47892)))))) (array_inv!3660 (_values!3536 (v!31176 (underlying!6719 (v!31177 (underlying!6720 thiss!47892)))))) e!1570953))))

(declare-fun b!2476061 () Bool)

(declare-fun res!1048336 () Bool)

(declare-fun e!1570951 () Bool)

(assert (=> b!2476061 (=> (not res!1048336) (not e!1570951))))

(assert (=> b!2476061 (= res!1048336 (not ((_ is MutableMapExt!3165) thiss!47892)))))

(declare-fun b!2476062 () Bool)

(declare-fun e!1570954 () Bool)

(assert (=> b!2476062 (= e!1570952 e!1570954)))

(declare-fun b!2476063 () Bool)

(assert (=> b!2476063 (= e!1570955 false)))

(declare-datatypes ((ListMap!925 0))(
  ( (ListMap!926 (toList!1438 List!29023)) )
))
(declare-fun lt!884222 () ListMap!925)

(declare-fun abstractMap!112 (MutableMap!3166) ListMap!925)

(assert (=> b!2476063 (= lt!884222 (abstractMap!112 (_2!16687 lt!884221)))))

(declare-fun b!2476064 () Bool)

(assert (=> b!2476064 (= e!1570954 e!1570949)))

(declare-fun mapIsEmpty!15177 () Bool)

(declare-fun mapRes!15177 () Bool)

(assert (=> mapIsEmpty!15177 mapRes!15177))

(declare-fun mapNonEmpty!15177 () Bool)

(declare-fun tp!791926 () Bool)

(declare-fun tp!791924 () Bool)

(assert (=> mapNonEmpty!15177 (= mapRes!15177 (and tp!791926 tp!791924))))

(declare-fun mapKey!15177 () (_ BitVec 32))

(declare-fun mapRest!15177 () (Array (_ BitVec 32) List!29023))

(declare-fun mapValue!15177 () List!29023)

(assert (=> mapNonEmpty!15177 (= (arr!5103 (_values!3536 (v!31176 (underlying!6719 (v!31177 (underlying!6720 thiss!47892)))))) (store mapRest!15177 mapKey!15177 mapValue!15177))))

(declare-fun res!1048337 () Bool)

(assert (=> start!241490 (=> (not res!1048337) (not e!1570951))))

(declare-fun valid!2453 (MutableMap!3166) Bool)

(assert (=> start!241490 (= res!1048337 (valid!2453 thiss!47892))))

(assert (=> start!241490 e!1570951))

(assert (=> start!241490 e!1570948))

(declare-fun tp_is_empty!12003 () Bool)

(assert (=> start!241490 tp_is_empty!12003))

(declare-fun b!2476065 () Bool)

(declare-fun tp!791923 () Bool)

(assert (=> b!2476065 (= e!1570953 (and tp!791923 mapRes!15177))))

(declare-fun condMapEmpty!15177 () Bool)

(declare-fun mapDefault!15177 () List!29023)

(assert (=> b!2476065 (= condMapEmpty!15177 (= (arr!5103 (_values!3536 (v!31176 (underlying!6719 (v!31177 (underlying!6720 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29023)) mapDefault!15177)))))

(declare-fun b!2476066 () Bool)

(assert (=> b!2476066 (= e!1570951 e!1570955)))

(declare-fun res!1048335 () Bool)

(assert (=> b!2476066 (=> (not res!1048335) (not e!1570955))))

(assert (=> b!2476066 (= res!1048335 (valid!2453 (_2!16687 lt!884221)))))

(declare-fun key!7256 () K!5225)

(declare-fun remove!69 (MutableMap!3166 K!5225) tuple2!28292)

(assert (=> b!2476066 (= lt!884221 (remove!69 thiss!47892 key!7256))))

(assert (= (and start!241490 res!1048337) b!2476061))

(assert (= (and b!2476061 res!1048336) b!2476066))

(assert (= (and b!2476066 res!1048335) b!2476058))

(assert (= (and b!2476058 res!1048334) b!2476063))

(assert (= (and b!2476065 condMapEmpty!15177) mapIsEmpty!15177))

(assert (= (and b!2476065 (not condMapEmpty!15177)) mapNonEmpty!15177))

(assert (= b!2476060 b!2476065))

(assert (= b!2476064 b!2476060))

(assert (= b!2476062 b!2476064))

(assert (= (and b!2476059 ((_ is LongMap!3256) (v!31177 (underlying!6720 thiss!47892)))) b!2476062))

(assert (= b!2476057 b!2476059))

(assert (= (and start!241490 ((_ is HashMap!3166) thiss!47892)) b!2476057))

(declare-fun m!2844129 () Bool)

(assert (=> b!2476066 m!2844129))

(declare-fun m!2844131 () Bool)

(assert (=> b!2476066 m!2844131))

(declare-fun m!2844133 () Bool)

(assert (=> start!241490 m!2844133))

(declare-fun m!2844135 () Bool)

(assert (=> mapNonEmpty!15177 m!2844135))

(declare-fun m!2844137 () Bool)

(assert (=> b!2476063 m!2844137))

(declare-fun m!2844139 () Bool)

(assert (=> b!2476060 m!2844139))

(declare-fun m!2844141 () Bool)

(assert (=> b!2476060 m!2844141))

(check-sat (not b!2476063) (not b_next!72585) (not b_next!72587) b_and!188105 (not b!2476066) (not b!2476065) (not mapNonEmpty!15177) (not b!2476060) tp_is_empty!12003 (not start!241490) b_and!188107)
(check-sat b_and!188107 b_and!188105 (not b_next!72587) (not b_next!72585))
