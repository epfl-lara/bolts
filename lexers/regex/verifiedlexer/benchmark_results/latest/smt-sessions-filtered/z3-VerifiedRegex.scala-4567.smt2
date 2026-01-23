; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241486 () Bool)

(assert start!241486)

(declare-fun b!2476003 () Bool)

(declare-fun b_free!71873 () Bool)

(declare-fun b_next!72577 () Bool)

(assert (=> b!2476003 (= b_free!71873 (not b_next!72577))))

(declare-fun tp!791882 () Bool)

(declare-fun b_and!188097 () Bool)

(assert (=> b!2476003 (= tp!791882 b_and!188097)))

(declare-fun b!2476004 () Bool)

(declare-fun b_free!71875 () Bool)

(declare-fun b_next!72579 () Bool)

(assert (=> b!2476004 (= b_free!71875 (not b_next!72579))))

(declare-fun tp!791884 () Bool)

(declare-fun b_and!188099 () Bool)

(assert (=> b!2476004 (= tp!791884 b_and!188099)))

(declare-fun mapNonEmpty!15171 () Bool)

(declare-fun mapRes!15171 () Bool)

(declare-fun tp!791885 () Bool)

(declare-fun tp!791881 () Bool)

(assert (=> mapNonEmpty!15171 (= mapRes!15171 (and tp!791885 tp!791881))))

(declare-datatypes ((K!5220 0))(
  ( (K!5221 (val!8651 Int)) )
))
(declare-datatypes ((V!5422 0))(
  ( (V!5423 (val!8652 Int)) )
))
(declare-datatypes ((tuple2!28282 0))(
  ( (tuple2!28283 (_1!16682 K!5220) (_2!16682 V!5422)) )
))
(declare-datatypes ((List!29021 0))(
  ( (Nil!28921) (Cons!28921 (h!34322 tuple2!28282) (t!210656 List!29021)) )
))
(declare-fun mapValue!15171 () List!29021)

(declare-datatypes ((array!11441 0))(
  ( (array!11442 (arr!5098 (Array (_ BitVec 32) (_ BitVec 64))) (size!22517 (_ BitVec 32))) )
))
(declare-datatypes ((array!11443 0))(
  ( (array!11444 (arr!5099 (Array (_ BitVec 32) List!29021)) (size!22518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6508 0))(
  ( (LongMapFixedSize!6509 (defaultEntry!3628 Int) (mask!8370 (_ BitVec 32)) (extraKeys!3502 (_ BitVec 32)) (zeroValue!3512 List!29021) (minValue!3512 List!29021) (_size!6555 (_ BitVec 32)) (_keys!3551 array!11441) (_values!3534 array!11443) (_vacant!3315 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12833 0))(
  ( (Cell!12834 (v!31172 LongMapFixedSize!6508)) )
))
(declare-datatypes ((MutLongMap!3254 0))(
  ( (LongMap!3254 (underlying!6715 Cell!12833)) (MutLongMapExt!3253 (__x!18668 Int)) )
))
(declare-datatypes ((Cell!12835 0))(
  ( (Cell!12836 (v!31173 MutLongMap!3254)) )
))
(declare-datatypes ((Hashable!3164 0))(
  ( (HashableExt!3163 (__x!18669 Int)) )
))
(declare-datatypes ((MutableMap!3164 0))(
  ( (MutableMapExt!3163 (__x!18670 Int)) (HashMap!3164 (underlying!6716 Cell!12835) (hashF!5095 Hashable!3164) (_size!6556 (_ BitVec 32)) (defaultValue!3326 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3164)

(declare-fun mapKey!15171 () (_ BitVec 32))

(declare-fun mapRest!15171 () (Array (_ BitVec 32) List!29021))

(assert (=> mapNonEmpty!15171 (= (arr!5099 (_values!3534 (v!31172 (underlying!6715 (v!31173 (underlying!6716 thiss!47892)))))) (store mapRest!15171 mapKey!15171 mapValue!15171))))

(declare-fun b!2475999 () Bool)

(declare-fun e!1570900 () Bool)

(assert (=> b!2475999 (= e!1570900 false)))

(declare-fun lt!884203 () Bool)

(declare-fun key!7256 () K!5220)

(declare-fun valid!2451 (MutableMap!3164) Bool)

(declare-datatypes ((tuple2!28284 0))(
  ( (tuple2!28285 (_1!16683 Bool) (_2!16683 MutableMap!3164)) )
))
(declare-fun remove!67 (MutableMap!3164 K!5220) tuple2!28284)

(assert (=> b!2475999 (= lt!884203 (valid!2451 (_2!16683 (remove!67 thiss!47892 key!7256))))))

(declare-fun b!2476000 () Bool)

(declare-fun e!1570895 () Bool)

(declare-fun tp!791879 () Bool)

(assert (=> b!2476000 (= e!1570895 (and tp!791879 mapRes!15171))))

(declare-fun condMapEmpty!15171 () Bool)

(declare-fun mapDefault!15171 () List!29021)

(assert (=> b!2476000 (= condMapEmpty!15171 (= (arr!5099 (_values!3534 (v!31172 (underlying!6715 (v!31173 (underlying!6716 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29021)) mapDefault!15171)))))

(declare-fun b!2476001 () Bool)

(declare-fun e!1570901 () Bool)

(declare-fun e!1570897 () Bool)

(declare-fun lt!884204 () MutLongMap!3254)

(get-info :version)

(assert (=> b!2476001 (= e!1570901 (and e!1570897 ((_ is LongMap!3254) lt!884204)))))

(assert (=> b!2476001 (= lt!884204 (v!31173 (underlying!6716 thiss!47892)))))

(declare-fun b!2476002 () Bool)

(declare-fun e!1570899 () Bool)

(assert (=> b!2476002 (= e!1570897 e!1570899)))

(declare-fun tp!791883 () Bool)

(declare-fun tp!791880 () Bool)

(declare-fun e!1570898 () Bool)

(declare-fun array_inv!3655 (array!11441) Bool)

(declare-fun array_inv!3656 (array!11443) Bool)

(assert (=> b!2476003 (= e!1570898 (and tp!791882 tp!791880 tp!791883 (array_inv!3655 (_keys!3551 (v!31172 (underlying!6715 (v!31173 (underlying!6716 thiss!47892)))))) (array_inv!3656 (_values!3534 (v!31172 (underlying!6715 (v!31173 (underlying!6716 thiss!47892)))))) e!1570895))))

(declare-fun mapIsEmpty!15171 () Bool)

(assert (=> mapIsEmpty!15171 mapRes!15171))

(declare-fun e!1570896 () Bool)

(assert (=> b!2476004 (= e!1570896 (and e!1570901 tp!791884))))

(declare-fun b!2476005 () Bool)

(declare-fun res!1048313 () Bool)

(assert (=> b!2476005 (=> (not res!1048313) (not e!1570900))))

(assert (=> b!2476005 (= res!1048313 (not ((_ is MutableMapExt!3163) thiss!47892)))))

(declare-fun b!2476006 () Bool)

(assert (=> b!2476006 (= e!1570899 e!1570898)))

(declare-fun res!1048312 () Bool)

(assert (=> start!241486 (=> (not res!1048312) (not e!1570900))))

(assert (=> start!241486 (= res!1048312 (valid!2451 thiss!47892))))

(assert (=> start!241486 e!1570900))

(assert (=> start!241486 e!1570896))

(declare-fun tp_is_empty!11999 () Bool)

(assert (=> start!241486 tp_is_empty!11999))

(assert (= (and start!241486 res!1048312) b!2476005))

(assert (= (and b!2476005 res!1048313) b!2475999))

(assert (= (and b!2476000 condMapEmpty!15171) mapIsEmpty!15171))

(assert (= (and b!2476000 (not condMapEmpty!15171)) mapNonEmpty!15171))

(assert (= b!2476003 b!2476000))

(assert (= b!2476006 b!2476003))

(assert (= b!2476002 b!2476006))

(assert (= (and b!2476001 ((_ is LongMap!3254) (v!31173 (underlying!6716 thiss!47892)))) b!2476002))

(assert (= b!2476004 b!2476001))

(assert (= (and start!241486 ((_ is HashMap!3164) thiss!47892)) b!2476004))

(declare-fun m!2844103 () Bool)

(assert (=> mapNonEmpty!15171 m!2844103))

(declare-fun m!2844105 () Bool)

(assert (=> b!2475999 m!2844105))

(declare-fun m!2844107 () Bool)

(assert (=> b!2475999 m!2844107))

(declare-fun m!2844109 () Bool)

(assert (=> b!2476003 m!2844109))

(declare-fun m!2844111 () Bool)

(assert (=> b!2476003 m!2844111))

(declare-fun m!2844113 () Bool)

(assert (=> start!241486 m!2844113))

(check-sat (not b!2475999) b_and!188099 (not start!241486) (not b!2476000) tp_is_empty!11999 (not b_next!72579) (not mapNonEmpty!15171) b_and!188097 (not b!2476003) (not b_next!72577))
(check-sat b_and!188099 b_and!188097 (not b_next!72579) (not b_next!72577))
