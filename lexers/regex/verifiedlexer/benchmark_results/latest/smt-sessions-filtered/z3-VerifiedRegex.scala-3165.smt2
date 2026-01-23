; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185490 () Bool)

(assert start!185490)

(declare-fun b!1858506 () Bool)

(declare-fun b_free!51961 () Bool)

(declare-fun b_next!52665 () Bool)

(assert (=> b!1858506 (= b_free!51961 (not b_next!52665))))

(declare-fun tp!529826 () Bool)

(declare-fun b_and!144219 () Bool)

(assert (=> b!1858506 (= tp!529826 b_and!144219)))

(declare-fun mapNonEmpty!8835 () Bool)

(declare-fun mapRes!8835 () Bool)

(declare-fun tp!529825 () Bool)

(declare-fun tp_is_empty!8567 () Bool)

(assert (=> mapNonEmpty!8835 (= mapRes!8835 (and tp!529825 tp_is_empty!8567))))

(declare-datatypes ((V!3868 0))(
  ( (V!3869 (val!5886 Int)) )
))
(declare-datatypes ((array!6523 0))(
  ( (array!6524 (arr!2898 (Array (_ BitVec 32) (_ BitVec 64))) (size!16283 (_ BitVec 32))) )
))
(declare-datatypes ((array!6525 0))(
  ( (array!6526 (arr!2899 (Array (_ BitVec 32) V!3868)) (size!16284 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3800 0))(
  ( (LongMapFixedSize!3801 (defaultEntry!2265 Int) (mask!5614 (_ BitVec 32)) (extraKeys!2148 (_ BitVec 32)) (zeroValue!2158 V!3868) (minValue!2158 V!3868) (_size!3878 (_ BitVec 32)) (_keys!2197 array!6523) (_values!2180 array!6525) (_vacant!1961 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7479 0))(
  ( (Cell!7480 (v!26044 LongMapFixedSize!3800)) )
))
(declare-datatypes ((MutLongMap!1900 0))(
  ( (LongMap!1900 (underlying!4018 Cell!7479)) (MutLongMapExt!1899 (__x!12969 Int)) )
))
(declare-fun thiss!47603 () MutLongMap!1900)

(declare-fun mapKey!8835 () (_ BitVec 32))

(declare-fun mapValue!8835 () V!3868)

(declare-fun mapRest!8835 () (Array (_ BitVec 32) V!3868))

(assert (=> mapNonEmpty!8835 (= (arr!2899 (_values!2180 (v!26044 (underlying!4018 thiss!47603)))) (store mapRest!8835 mapKey!8835 mapValue!8835))))

(declare-fun res!832523 () Bool)

(declare-fun e!1186791 () Bool)

(assert (=> start!185490 (=> (not res!832523) (not e!1186791))))

(declare-fun valid!1521 (MutLongMap!1900) Bool)

(assert (=> start!185490 (= res!832523 (valid!1521 thiss!47603))))

(assert (=> start!185490 e!1186791))

(declare-fun e!1186788 () Bool)

(assert (=> start!185490 e!1186788))

(assert (=> start!185490 true))

(declare-fun b!1858501 () Bool)

(declare-fun e!1186792 () Bool)

(assert (=> b!1858501 (= e!1186788 e!1186792)))

(declare-fun b!1858502 () Bool)

(declare-fun res!832522 () Bool)

(assert (=> b!1858502 (=> (not res!832522) (not e!1186791))))

(get-info :version)

(assert (=> b!1858502 (= res!832522 (not ((_ is LongMap!1900) thiss!47603)))))

(declare-fun mapIsEmpty!8835 () Bool)

(assert (=> mapIsEmpty!8835 mapRes!8835))

(declare-fun b!1858503 () Bool)

(declare-fun e!1186789 () Bool)

(assert (=> b!1858503 (= e!1186789 (and tp_is_empty!8567 mapRes!8835))))

(declare-fun condMapEmpty!8835 () Bool)

(declare-fun mapDefault!8835 () V!3868)

(assert (=> b!1858503 (= condMapEmpty!8835 (= (arr!2899 (_values!2180 (v!26044 (underlying!4018 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3868)) mapDefault!8835)))))

(declare-fun b!1858504 () Bool)

(declare-fun e!1186790 () Bool)

(assert (=> b!1858504 (= e!1186792 e!1186790)))

(declare-fun b!1858505 () Bool)

(assert (=> b!1858505 (= e!1186791 false)))

(declare-fun lt!717205 () Bool)

(declare-fun key!7122 () (_ BitVec 64))

(declare-datatypes ((tuple2!19850 0))(
  ( (tuple2!19851 (_1!11352 Bool) (_2!11352 MutLongMap!1900)) )
))
(declare-fun remove!51 (MutLongMap!1900 (_ BitVec 64)) tuple2!19850)

(assert (=> b!1858505 (= lt!717205 (valid!1521 (_2!11352 (remove!51 thiss!47603 key!7122))))))

(declare-fun array_inv!2085 (array!6523) Bool)

(declare-fun array_inv!2086 (array!6525) Bool)

(assert (=> b!1858506 (= e!1186790 (and tp!529826 tp_is_empty!8567 (array_inv!2085 (_keys!2197 (v!26044 (underlying!4018 thiss!47603)))) (array_inv!2086 (_values!2180 (v!26044 (underlying!4018 thiss!47603)))) e!1186789))))

(assert (= (and start!185490 res!832523) b!1858502))

(assert (= (and b!1858502 res!832522) b!1858505))

(assert (= (and b!1858503 condMapEmpty!8835) mapIsEmpty!8835))

(assert (= (and b!1858503 (not condMapEmpty!8835)) mapNonEmpty!8835))

(assert (= b!1858506 b!1858503))

(assert (= b!1858504 b!1858506))

(assert (= b!1858501 b!1858504))

(assert (= (and start!185490 ((_ is LongMap!1900) thiss!47603)) b!1858501))

(declare-fun m!2282029 () Bool)

(assert (=> mapNonEmpty!8835 m!2282029))

(declare-fun m!2282031 () Bool)

(assert (=> start!185490 m!2282031))

(declare-fun m!2282033 () Bool)

(assert (=> b!1858505 m!2282033))

(declare-fun m!2282035 () Bool)

(assert (=> b!1858505 m!2282035))

(declare-fun m!2282037 () Bool)

(assert (=> b!1858506 m!2282037))

(declare-fun m!2282039 () Bool)

(assert (=> b!1858506 m!2282039))

(check-sat (not b!1858505) (not b_next!52665) b_and!144219 (not start!185490) (not mapNonEmpty!8835) (not b!1858506) tp_is_empty!8567)
(check-sat b_and!144219 (not b_next!52665))
