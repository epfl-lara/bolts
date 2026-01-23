; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110860 () Bool)

(assert start!110860)

(declare-fun b!1257122 () Bool)

(declare-fun b_free!29747 () Bool)

(declare-fun b_next!30451 () Bool)

(assert (=> b!1257122 (= b_free!29747 (not b_next!30451))))

(declare-fun tp!370592 () Bool)

(declare-fun b_and!84891 () Bool)

(assert (=> b!1257122 (= tp!370592 b_and!84891)))

(declare-fun b!1257121 () Bool)

(declare-fun e!800148 () Bool)

(declare-fun e!800146 () Bool)

(assert (=> b!1257121 (= e!800148 e!800146)))

(declare-datatypes ((V!2953 0))(
  ( (V!2954 (val!4186 Int)) )
))
(declare-datatypes ((array!4642 0))(
  ( (array!4643 (arr!2069 (Array (_ BitVec 32) V!2953)) (size!9960 (_ BitVec 32))) )
))
(declare-datatypes ((array!4644 0))(
  ( (array!4645 (arr!2070 (Array (_ BitVec 32) (_ BitVec 64))) (size!9961 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2616 0))(
  ( (LongMapFixedSize!2617 (defaultEntry!1668 Int) (mask!4118 (_ BitVec 32)) (extraKeys!1555 (_ BitVec 32)) (zeroValue!1565 V!2953) (minValue!1565 V!2953) (_size!2702 (_ BitVec 32)) (_keys!1602 array!4644) (_values!1587 array!4642) (_vacant!1369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5127 0))(
  ( (Cell!5128 (v!20780 LongMapFixedSize!2616)) )
))
(declare-datatypes ((MutLongMap!1308 0))(
  ( (LongMap!1308 (underlying!2826 Cell!5127)) (MutLongMapExt!1307 (__x!8202 Int)) )
))
(declare-fun thiss!47507 () MutLongMap!1308)

(declare-fun e!800150 () Bool)

(declare-fun tp_is_empty!6511 () Bool)

(declare-fun array_inv!1505 (array!4644) Bool)

(declare-fun array_inv!1506 (array!4642) Bool)

(assert (=> b!1257122 (= e!800146 (and tp!370592 tp_is_empty!6511 (array_inv!1505 (_keys!1602 (v!20780 (underlying!2826 thiss!47507)))) (array_inv!1506 (_values!1587 (v!20780 (underlying!2826 thiss!47507)))) e!800150))))

(declare-fun mapIsEmpty!6283 () Bool)

(declare-fun mapRes!6283 () Bool)

(assert (=> mapIsEmpty!6283 mapRes!6283))

(declare-fun res!556586 () Bool)

(declare-fun e!800147 () Bool)

(assert (=> start!110860 (=> (not res!556586) (not e!800147))))

(get-info :version)

(assert (=> start!110860 (= res!556586 ((_ is MutLongMapExt!1307) thiss!47507))))

(assert (=> start!110860 e!800147))

(declare-fun e!800149 () Bool)

(assert (=> start!110860 e!800149))

(assert (=> start!110860 true))

(assert (=> start!110860 tp_is_empty!6511))

(declare-fun b!1257123 () Bool)

(declare-fun res!556584 () Bool)

(assert (=> b!1257123 (=> (not res!556584) (not e!800147))))

(declare-fun valid!1048 (MutLongMap!1308) Bool)

(assert (=> b!1257123 (= res!556584 (valid!1048 thiss!47507))))

(declare-fun b!1257124 () Bool)

(assert (=> b!1257124 (= e!800149 e!800148)))

(declare-fun b!1257125 () Bool)

(declare-fun e!800152 () Bool)

(assert (=> b!1257125 (= e!800147 e!800152)))

(declare-fun res!556585 () Bool)

(assert (=> b!1257125 (=> (not res!556585) (not e!800152))))

(declare-datatypes ((tuple2!12482 0))(
  ( (tuple2!12483 (_1!7089 Bool) (_2!7089 MutLongMap!1308)) )
))
(declare-fun lt!420810 () tuple2!12482)

(assert (=> b!1257125 (= res!556585 ((_ is MutLongMapExt!1307) (_2!7089 lt!420810)))))

(declare-fun key!7089 () (_ BitVec 64))

(declare-fun v!11771 () V!2953)

(declare-fun choose!7873 (MutLongMap!1308 (_ BitVec 64) V!2953) tuple2!12482)

(assert (=> b!1257125 (= lt!420810 (choose!7873 thiss!47507 key!7089 v!11771))))

(declare-fun mapNonEmpty!6283 () Bool)

(declare-fun tp!370591 () Bool)

(assert (=> mapNonEmpty!6283 (= mapRes!6283 (and tp!370591 tp_is_empty!6511))))

(declare-fun mapRest!6283 () (Array (_ BitVec 32) V!2953))

(declare-fun mapValue!6283 () V!2953)

(declare-fun mapKey!6283 () (_ BitVec 32))

(assert (=> mapNonEmpty!6283 (= (arr!2069 (_values!1587 (v!20780 (underlying!2826 thiss!47507)))) (store mapRest!6283 mapKey!6283 mapValue!6283))))

(declare-fun b!1257126 () Bool)

(assert (=> b!1257126 (= e!800152 false)))

(declare-fun lt!420809 () Bool)

(assert (=> b!1257126 (= lt!420809 (valid!1048 (_2!7089 lt!420810)))))

(declare-fun b!1257127 () Bool)

(assert (=> b!1257127 (= e!800150 (and tp_is_empty!6511 mapRes!6283))))

(declare-fun condMapEmpty!6283 () Bool)

(declare-fun mapDefault!6283 () V!2953)

(assert (=> b!1257127 (= condMapEmpty!6283 (= (arr!2069 (_values!1587 (v!20780 (underlying!2826 thiss!47507)))) ((as const (Array (_ BitVec 32) V!2953)) mapDefault!6283)))))

(assert (= (and start!110860 res!556586) b!1257123))

(assert (= (and b!1257123 res!556584) b!1257125))

(assert (= (and b!1257125 res!556585) b!1257126))

(assert (= (and b!1257127 condMapEmpty!6283) mapIsEmpty!6283))

(assert (= (and b!1257127 (not condMapEmpty!6283)) mapNonEmpty!6283))

(assert (= b!1257122 b!1257127))

(assert (= b!1257121 b!1257122))

(assert (= b!1257124 b!1257121))

(assert (= (and start!110860 ((_ is LongMap!1308) thiss!47507)) b!1257124))

(declare-fun m!1415301 () Bool)

(assert (=> mapNonEmpty!6283 m!1415301))

(declare-fun m!1415303 () Bool)

(assert (=> b!1257122 m!1415303))

(declare-fun m!1415305 () Bool)

(assert (=> b!1257122 m!1415305))

(declare-fun m!1415307 () Bool)

(assert (=> b!1257123 m!1415307))

(declare-fun m!1415309 () Bool)

(assert (=> b!1257126 m!1415309))

(declare-fun m!1415311 () Bool)

(assert (=> b!1257125 m!1415311))

(check-sat (not mapNonEmpty!6283) (not b!1257123) (not b!1257126) (not b_next!30451) (not b!1257122) (not b!1257125) b_and!84891 tp_is_empty!6511)
(check-sat b_and!84891 (not b_next!30451))
