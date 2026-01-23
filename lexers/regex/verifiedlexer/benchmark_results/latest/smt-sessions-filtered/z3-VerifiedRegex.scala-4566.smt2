; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241482 () Bool)

(assert start!241482)

(declare-fun b!2475954 () Bool)

(declare-fun b_free!71865 () Bool)

(declare-fun b_next!72569 () Bool)

(assert (=> b!2475954 (= b_free!71865 (not b_next!72569))))

(declare-fun tp!791842 () Bool)

(declare-fun b_and!188089 () Bool)

(assert (=> b!2475954 (= tp!791842 b_and!188089)))

(declare-fun b!2475950 () Bool)

(declare-fun b_free!71867 () Bool)

(declare-fun b_next!72571 () Bool)

(assert (=> b!2475950 (= b_free!71867 (not b_next!72571))))

(declare-fun tp!791839 () Bool)

(declare-fun b_and!188091 () Bool)

(assert (=> b!2475950 (= tp!791839 b_and!188091)))

(declare-fun b!2475949 () Bool)

(declare-fun res!1048298 () Bool)

(declare-fun e!1570852 () Bool)

(assert (=> b!2475949 (=> (not res!1048298) (not e!1570852))))

(declare-datatypes ((array!11433 0))(
  ( (array!11434 (arr!5094 (Array (_ BitVec 32) (_ BitVec 64))) (size!22513 (_ BitVec 32))) )
))
(declare-datatypes ((K!5215 0))(
  ( (K!5216 (val!8647 Int)) )
))
(declare-datatypes ((V!5417 0))(
  ( (V!5418 (val!8648 Int)) )
))
(declare-datatypes ((tuple2!28276 0))(
  ( (tuple2!28277 (_1!16679 K!5215) (_2!16679 V!5417)) )
))
(declare-datatypes ((List!29019 0))(
  ( (Nil!28919) (Cons!28919 (h!34320 tuple2!28276) (t!210654 List!29019)) )
))
(declare-datatypes ((array!11435 0))(
  ( (array!11436 (arr!5095 (Array (_ BitVec 32) List!29019)) (size!22514 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6504 0))(
  ( (LongMapFixedSize!6505 (defaultEntry!3626 Int) (mask!8367 (_ BitVec 32)) (extraKeys!3500 (_ BitVec 32)) (zeroValue!3510 List!29019) (minValue!3510 List!29019) (_size!6551 (_ BitVec 32)) (_keys!3549 array!11433) (_values!3532 array!11435) (_vacant!3313 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12825 0))(
  ( (Cell!12826 (v!31168 LongMapFixedSize!6504)) )
))
(declare-datatypes ((MutLongMap!3252 0))(
  ( (LongMap!3252 (underlying!6711 Cell!12825)) (MutLongMapExt!3251 (__x!18662 Int)) )
))
(declare-datatypes ((Cell!12827 0))(
  ( (Cell!12828 (v!31169 MutLongMap!3252)) )
))
(declare-datatypes ((Hashable!3162 0))(
  ( (HashableExt!3161 (__x!18663 Int)) )
))
(declare-datatypes ((MutableMap!3162 0))(
  ( (MutableMapExt!3161 (__x!18664 Int)) (HashMap!3162 (underlying!6712 Cell!12827) (hashF!5093 Hashable!3162) (_size!6552 (_ BitVec 32)) (defaultValue!3324 Int)) )
))
(declare-datatypes ((tuple2!28278 0))(
  ( (tuple2!28279 (_1!16680 Bool) (_2!16680 MutableMap!3162)) )
))
(declare-fun lt!884191 () tuple2!28278)

(assert (=> b!2475949 (= res!1048298 (not (_1!16680 lt!884191)))))

(declare-fun e!1570846 () Bool)

(declare-fun e!1570848 () Bool)

(assert (=> b!2475950 (= e!1570846 (and e!1570848 tp!791839))))

(declare-fun b!2475951 () Bool)

(declare-fun e!1570854 () Bool)

(declare-fun lt!884190 () MutLongMap!3252)

(get-info :version)

(assert (=> b!2475951 (= e!1570848 (and e!1570854 ((_ is LongMap!3252) lt!884190)))))

(declare-fun thiss!47892 () MutableMap!3162)

(assert (=> b!2475951 (= lt!884190 (v!31169 (underlying!6712 thiss!47892)))))

(declare-fun mapNonEmpty!15165 () Bool)

(declare-fun mapRes!15165 () Bool)

(declare-fun tp!791843 () Bool)

(declare-fun tp!791840 () Bool)

(assert (=> mapNonEmpty!15165 (= mapRes!15165 (and tp!791843 tp!791840))))

(declare-fun mapRest!15165 () (Array (_ BitVec 32) List!29019))

(declare-fun mapKey!15165 () (_ BitVec 32))

(declare-fun mapValue!15165 () List!29019)

(assert (=> mapNonEmpty!15165 (= (arr!5095 (_values!3532 (v!31168 (underlying!6711 (v!31169 (underlying!6712 thiss!47892)))))) (store mapRest!15165 mapKey!15165 mapValue!15165))))

(declare-fun b!2475952 () Bool)

(declare-fun e!1570847 () Bool)

(declare-fun tp!791838 () Bool)

(assert (=> b!2475952 (= e!1570847 (and tp!791838 mapRes!15165))))

(declare-fun condMapEmpty!15165 () Bool)

(declare-fun mapDefault!15165 () List!29019)

(assert (=> b!2475952 (= condMapEmpty!15165 (= (arr!5095 (_values!3532 (v!31168 (underlying!6711 (v!31169 (underlying!6712 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29019)) mapDefault!15165)))))

(declare-fun b!2475953 () Bool)

(declare-fun e!1570850 () Bool)

(assert (=> b!2475953 (= e!1570854 e!1570850)))

(declare-fun res!1048299 () Bool)

(declare-fun e!1570851 () Bool)

(assert (=> start!241482 (=> (not res!1048299) (not e!1570851))))

(declare-fun valid!2449 (MutableMap!3162) Bool)

(assert (=> start!241482 (= res!1048299 (valid!2449 thiss!47892))))

(assert (=> start!241482 e!1570851))

(assert (=> start!241482 e!1570846))

(declare-fun tp_is_empty!11995 () Bool)

(assert (=> start!241482 tp_is_empty!11995))

(declare-fun e!1570849 () Bool)

(declare-fun tp!791841 () Bool)

(declare-fun tp!791837 () Bool)

(declare-fun array_inv!3653 (array!11433) Bool)

(declare-fun array_inv!3654 (array!11435) Bool)

(assert (=> b!2475954 (= e!1570849 (and tp!791842 tp!791841 tp!791837 (array_inv!3653 (_keys!3549 (v!31168 (underlying!6711 (v!31169 (underlying!6712 thiss!47892)))))) (array_inv!3654 (_values!3532 (v!31168 (underlying!6711 (v!31169 (underlying!6712 thiss!47892)))))) e!1570847))))

(declare-fun b!2475955 () Bool)

(assert (=> b!2475955 (= e!1570852 false)))

(declare-datatypes ((ListMap!923 0))(
  ( (ListMap!924 (toList!1437 List!29019)) )
))
(declare-fun lt!884192 () ListMap!923)

(declare-fun abstractMap!111 (MutableMap!3162) ListMap!923)

(assert (=> b!2475955 (= lt!884192 (abstractMap!111 (_2!16680 lt!884191)))))

(declare-fun b!2475956 () Bool)

(assert (=> b!2475956 (= e!1570851 e!1570852)))

(declare-fun res!1048301 () Bool)

(assert (=> b!2475956 (=> (not res!1048301) (not e!1570852))))

(assert (=> b!2475956 (= res!1048301 (valid!2449 (_2!16680 lt!884191)))))

(declare-fun key!7256 () K!5215)

(declare-fun remove!66 (MutableMap!3162 K!5215) tuple2!28278)

(assert (=> b!2475956 (= lt!884191 (remove!66 thiss!47892 key!7256))))

(declare-fun b!2475957 () Bool)

(declare-fun res!1048300 () Bool)

(assert (=> b!2475957 (=> (not res!1048300) (not e!1570851))))

(assert (=> b!2475957 (= res!1048300 ((_ is MutableMapExt!3161) thiss!47892))))

(declare-fun mapIsEmpty!15165 () Bool)

(assert (=> mapIsEmpty!15165 mapRes!15165))

(declare-fun b!2475958 () Bool)

(assert (=> b!2475958 (= e!1570850 e!1570849)))

(assert (= (and start!241482 res!1048299) b!2475957))

(assert (= (and b!2475957 res!1048300) b!2475956))

(assert (= (and b!2475956 res!1048301) b!2475949))

(assert (= (and b!2475949 res!1048298) b!2475955))

(assert (= (and b!2475952 condMapEmpty!15165) mapIsEmpty!15165))

(assert (= (and b!2475952 (not condMapEmpty!15165)) mapNonEmpty!15165))

(assert (= b!2475954 b!2475952))

(assert (= b!2475958 b!2475954))

(assert (= b!2475953 b!2475958))

(assert (= (and b!2475951 ((_ is LongMap!3252) (v!31169 (underlying!6712 thiss!47892)))) b!2475953))

(assert (= b!2475950 b!2475951))

(assert (= (and start!241482 ((_ is HashMap!3162) thiss!47892)) b!2475950))

(declare-fun m!2844077 () Bool)

(assert (=> b!2475955 m!2844077))

(declare-fun m!2844079 () Bool)

(assert (=> start!241482 m!2844079))

(declare-fun m!2844081 () Bool)

(assert (=> b!2475954 m!2844081))

(declare-fun m!2844083 () Bool)

(assert (=> b!2475954 m!2844083))

(declare-fun m!2844085 () Bool)

(assert (=> mapNonEmpty!15165 m!2844085))

(declare-fun m!2844087 () Bool)

(assert (=> b!2475956 m!2844087))

(declare-fun m!2844089 () Bool)

(assert (=> b!2475956 m!2844089))

(check-sat (not b!2475956) b_and!188091 (not start!241482) (not b!2475952) (not b_next!72571) (not b!2475954) b_and!188089 tp_is_empty!11995 (not mapNonEmpty!15165) (not b_next!72569) (not b!2475955))
(check-sat b_and!188091 b_and!188089 (not b_next!72571) (not b_next!72569))
