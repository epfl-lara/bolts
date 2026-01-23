; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416720 () Bool)

(assert start!416720)

(declare-fun b!4326985 () Bool)

(declare-fun b_free!129109 () Bool)

(declare-fun b_next!129813 () Bool)

(assert (=> b!4326985 (= b_free!129109 (not b_next!129813))))

(declare-fun tp!1327838 () Bool)

(declare-fun b_and!340699 () Bool)

(assert (=> b!4326985 (= tp!1327838 b_and!340699)))

(declare-fun b!4326977 () Bool)

(declare-fun e!2692376 () Bool)

(declare-fun e!2692382 () Bool)

(assert (=> b!4326977 (= e!2692376 e!2692382)))

(declare-fun res!1773172 () Bool)

(assert (=> b!4326977 (=> (not res!1773172) (not e!2692382))))

(declare-datatypes ((V!9921 0))(
  ( (V!9922 (val!16030 Int)) )
))
(declare-datatypes ((array!17400 0))(
  ( (array!17401 (arr!7763 (Array (_ BitVec 32) V!9921)) (size!35803 (_ BitVec 32))) )
))
(declare-datatypes ((array!17402 0))(
  ( (array!17403 (arr!7764 (Array (_ BitVec 32) (_ BitVec 64))) (size!35804 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9578 0))(
  ( (LongMapFixedSize!9579 (defaultEntry!5195 Int) (mask!13448 (_ BitVec 32)) (extraKeys!5054 (_ BitVec 32)) (zeroValue!5066 V!9921) (minValue!5066 V!9921) (_size!9621 (_ BitVec 32)) (_keys!5116 array!17402) (_values!5090 array!17400) (_vacant!4853 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18959 0))(
  ( (Cell!18960 (v!42930 LongMapFixedSize!9578)) )
))
(declare-datatypes ((MutLongMap!4789 0))(
  ( (LongMap!4789 (underlying!9804 Cell!18959)) (MutLongMapExt!4788 (__x!30386 Int)) )
))
(declare-datatypes ((tuple2!47430 0))(
  ( (tuple2!47431 (_1!27004 Bool) (_2!27004 MutLongMap!4789)) )
))
(declare-fun lt!1544290 () tuple2!47430)

(assert (=> b!4326977 (= res!1773172 (_1!27004 lt!1544290))))

(declare-fun e!2692379 () tuple2!47430)

(assert (=> b!4326977 (= lt!1544290 e!2692379)))

(declare-fun c!736229 () Bool)

(declare-fun thiss!47260 () MutLongMap!4789)

(declare-fun imbalanced!94 (MutLongMap!4789) Bool)

(assert (=> b!4326977 (= c!736229 (imbalanced!94 thiss!47260))))

(declare-fun b!4326978 () Bool)

(declare-fun e!2692381 () Bool)

(declare-fun e!2692375 () Bool)

(assert (=> b!4326978 (= e!2692381 e!2692375)))

(declare-fun b!4326980 () Bool)

(assert (=> b!4326980 (= e!2692382 false)))

(declare-datatypes ((tuple2!47432 0))(
  ( (tuple2!47433 (_1!27005 Bool) (_2!27005 LongMapFixedSize!9578)) )
))
(declare-fun lt!1544291 () tuple2!47432)

(declare-fun v!11761 () V!9921)

(declare-fun key!7012 () (_ BitVec 64))

(declare-fun update!568 (LongMapFixedSize!9578 (_ BitVec 64) V!9921) tuple2!47432)

(assert (=> b!4326980 (= lt!1544291 (update!568 (v!42930 (underlying!9804 (_2!27004 lt!1544290))) key!7012 v!11761))))

(declare-fun b!4326981 () Bool)

(assert (=> b!4326981 (= e!2692379 (tuple2!47431 true thiss!47260))))

(declare-fun b!4326982 () Bool)

(declare-fun e!2692377 () Bool)

(assert (=> b!4326982 (= e!2692375 e!2692377)))

(declare-fun mapNonEmpty!21334 () Bool)

(declare-fun mapRes!21334 () Bool)

(declare-fun tp!1327837 () Bool)

(declare-fun tp_is_empty!24247 () Bool)

(assert (=> mapNonEmpty!21334 (= mapRes!21334 (and tp!1327837 tp_is_empty!24247))))

(declare-fun mapRest!21334 () (Array (_ BitVec 32) V!9921))

(declare-fun mapValue!21334 () V!9921)

(declare-fun mapKey!21334 () (_ BitVec 32))

(assert (=> mapNonEmpty!21334 (= (arr!7763 (_values!5090 (v!42930 (underlying!9804 thiss!47260)))) (store mapRest!21334 mapKey!21334 mapValue!21334))))

(declare-fun b!4326983 () Bool)

(declare-fun repack!98 (MutLongMap!4789) tuple2!47430)

(assert (=> b!4326983 (= e!2692379 (repack!98 thiss!47260))))

(declare-fun b!4326984 () Bool)

(declare-fun e!2692378 () Bool)

(assert (=> b!4326984 (= e!2692378 (and tp_is_empty!24247 mapRes!21334))))

(declare-fun condMapEmpty!21334 () Bool)

(declare-fun mapDefault!21334 () V!9921)

(assert (=> b!4326984 (= condMapEmpty!21334 (= (arr!7763 (_values!5090 (v!42930 (underlying!9804 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9921)) mapDefault!21334)))))

(declare-fun res!1773170 () Bool)

(assert (=> start!416720 (=> (not res!1773170) (not e!2692376))))

(get-info :version)

(assert (=> start!416720 (= res!1773170 ((_ is LongMap!4789) thiss!47260))))

(assert (=> start!416720 e!2692376))

(assert (=> start!416720 e!2692381))

(assert (=> start!416720 true))

(assert (=> start!416720 tp_is_empty!24247))

(declare-fun b!4326979 () Bool)

(declare-fun res!1773171 () Bool)

(assert (=> b!4326979 (=> (not res!1773171) (not e!2692376))))

(declare-fun valid!3808 (MutLongMap!4789) Bool)

(assert (=> b!4326979 (= res!1773171 (valid!3808 thiss!47260))))

(declare-fun mapIsEmpty!21334 () Bool)

(assert (=> mapIsEmpty!21334 mapRes!21334))

(declare-fun array_inv!5595 (array!17402) Bool)

(declare-fun array_inv!5596 (array!17400) Bool)

(assert (=> b!4326985 (= e!2692377 (and tp!1327838 tp_is_empty!24247 (array_inv!5595 (_keys!5116 (v!42930 (underlying!9804 thiss!47260)))) (array_inv!5596 (_values!5090 (v!42930 (underlying!9804 thiss!47260)))) e!2692378))))

(assert (= (and start!416720 res!1773170) b!4326979))

(assert (= (and b!4326979 res!1773171) b!4326977))

(assert (= (and b!4326977 c!736229) b!4326983))

(assert (= (and b!4326977 (not c!736229)) b!4326981))

(assert (= (and b!4326977 res!1773172) b!4326980))

(assert (= (and b!4326984 condMapEmpty!21334) mapIsEmpty!21334))

(assert (= (and b!4326984 (not condMapEmpty!21334)) mapNonEmpty!21334))

(assert (= b!4326985 b!4326984))

(assert (= b!4326982 b!4326985))

(assert (= b!4326978 b!4326982))

(assert (= (and start!416720 ((_ is LongMap!4789) thiss!47260)) b!4326978))

(declare-fun m!4922019 () Bool)

(assert (=> b!4326979 m!4922019))

(declare-fun m!4922021 () Bool)

(assert (=> mapNonEmpty!21334 m!4922021))

(declare-fun m!4922023 () Bool)

(assert (=> b!4326983 m!4922023))

(declare-fun m!4922025 () Bool)

(assert (=> b!4326977 m!4922025))

(declare-fun m!4922027 () Bool)

(assert (=> b!4326985 m!4922027))

(declare-fun m!4922029 () Bool)

(assert (=> b!4326985 m!4922029))

(declare-fun m!4922031 () Bool)

(assert (=> b!4326980 m!4922031))

(check-sat (not mapNonEmpty!21334) (not b!4326980) (not b_next!129813) b_and!340699 (not b!4326985) (not b!4326977) (not b!4326983) tp_is_empty!24247 (not b!4326979))
(check-sat b_and!340699 (not b_next!129813))
