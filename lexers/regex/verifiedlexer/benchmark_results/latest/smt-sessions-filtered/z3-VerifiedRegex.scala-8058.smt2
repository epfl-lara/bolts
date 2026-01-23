; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416736 () Bool)

(assert start!416736)

(declare-fun b!4327203 () Bool)

(declare-fun b_free!129125 () Bool)

(declare-fun b_next!129829 () Bool)

(assert (=> b!4327203 (= b_free!129125 (not b_next!129829))))

(declare-fun tp!1327886 () Bool)

(declare-fun b_and!340715 () Bool)

(assert (=> b!4327203 (= tp!1327886 b_and!340715)))

(declare-fun b!4327199 () Bool)

(declare-fun e!2692569 () Bool)

(declare-fun tp_is_empty!24263 () Bool)

(declare-fun mapRes!21358 () Bool)

(assert (=> b!4327199 (= e!2692569 (and tp_is_empty!24263 mapRes!21358))))

(declare-fun condMapEmpty!21358 () Bool)

(declare-datatypes ((V!9941 0))(
  ( (V!9942 (val!16038 Int)) )
))
(declare-datatypes ((array!17432 0))(
  ( (array!17433 (arr!7779 (Array (_ BitVec 32) V!9941)) (size!35819 (_ BitVec 32))) )
))
(declare-datatypes ((array!17434 0))(
  ( (array!17435 (arr!7780 (Array (_ BitVec 32) (_ BitVec 64))) (size!35820 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9594 0))(
  ( (LongMapFixedSize!9595 (defaultEntry!5203 Int) (mask!13460 (_ BitVec 32)) (extraKeys!5062 (_ BitVec 32)) (zeroValue!5074 V!9941) (minValue!5074 V!9941) (_size!9629 (_ BitVec 32)) (_keys!5124 array!17434) (_values!5098 array!17432) (_vacant!4861 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18975 0))(
  ( (Cell!18976 (v!42962 LongMapFixedSize!9594)) )
))
(declare-datatypes ((MutLongMap!4797 0))(
  ( (LongMap!4797 (underlying!9812 Cell!18975)) (MutLongMapExt!4796 (__x!30394 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4797)

(declare-fun mapDefault!21358 () V!9941)

(assert (=> b!4327199 (= condMapEmpty!21358 (= (arr!7779 (_values!5098 (v!42962 (underlying!9812 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9941)) mapDefault!21358)))))

(declare-fun mapIsEmpty!21358 () Bool)

(assert (=> mapIsEmpty!21358 mapRes!21358))

(declare-fun b!4327200 () Bool)

(declare-fun res!1773250 () Bool)

(declare-fun e!2692570 () Bool)

(assert (=> b!4327200 (=> (not res!1773250) (not e!2692570))))

(declare-fun valid!3815 (MutLongMap!4797) Bool)

(assert (=> b!4327200 (= res!1773250 (valid!3815 thiss!47260))))

(declare-fun res!1773249 () Bool)

(assert (=> start!416736 (=> (not res!1773249) (not e!2692570))))

(get-info :version)

(assert (=> start!416736 (= res!1773249 ((_ is LongMap!4797) thiss!47260))))

(assert (=> start!416736 e!2692570))

(declare-fun e!2692567 () Bool)

(assert (=> start!416736 e!2692567))

(declare-fun mapNonEmpty!21358 () Bool)

(declare-fun tp!1327885 () Bool)

(assert (=> mapNonEmpty!21358 (= mapRes!21358 (and tp!1327885 tp_is_empty!24263))))

(declare-fun mapValue!21358 () V!9941)

(declare-fun mapKey!21358 () (_ BitVec 32))

(declare-fun mapRest!21358 () (Array (_ BitVec 32) V!9941))

(assert (=> mapNonEmpty!21358 (= (arr!7779 (_values!5098 (v!42962 (underlying!9812 thiss!47260)))) (store mapRest!21358 mapKey!21358 mapValue!21358))))

(declare-fun b!4327201 () Bool)

(declare-fun e!2692568 () Bool)

(assert (=> b!4327201 (= e!2692567 e!2692568)))

(declare-fun b!4327202 () Bool)

(declare-fun e!2692573 () Bool)

(assert (=> b!4327202 (= e!2692573 false)))

(declare-fun lt!1544345 () Bool)

(declare-datatypes ((tuple2!47454 0))(
  ( (tuple2!47455 (_1!27016 Bool) (_2!27016 MutLongMap!4797)) )
))
(declare-fun lt!1544344 () tuple2!47454)

(assert (=> b!4327202 (= lt!1544345 (valid!3815 (_2!27016 lt!1544344)))))

(declare-fun e!2692571 () Bool)

(declare-fun array_inv!5603 (array!17434) Bool)

(declare-fun array_inv!5604 (array!17432) Bool)

(assert (=> b!4327203 (= e!2692571 (and tp!1327886 tp_is_empty!24263 (array_inv!5603 (_keys!5124 (v!42962 (underlying!9812 thiss!47260)))) (array_inv!5604 (_values!5098 (v!42962 (underlying!9812 thiss!47260)))) e!2692569))))

(declare-fun b!4327204 () Bool)

(declare-fun e!2692572 () tuple2!47454)

(declare-fun repack!103 (MutLongMap!4797) tuple2!47454)

(assert (=> b!4327204 (= e!2692572 (repack!103 thiss!47260))))

(declare-fun b!4327205 () Bool)

(assert (=> b!4327205 (= e!2692568 e!2692571)))

(declare-fun b!4327206 () Bool)

(assert (=> b!4327206 (= e!2692570 e!2692573)))

(declare-fun res!1773248 () Bool)

(assert (=> b!4327206 (=> (not res!1773248) (not e!2692573))))

(assert (=> b!4327206 (= res!1773248 (and (not (_1!27016 lt!1544344)) ((_ is LongMap!4797) (_2!27016 lt!1544344))))))

(assert (=> b!4327206 (= lt!1544344 e!2692572)))

(declare-fun c!736253 () Bool)

(declare-fun imbalanced!101 (MutLongMap!4797) Bool)

(assert (=> b!4327206 (= c!736253 (imbalanced!101 thiss!47260))))

(declare-fun b!4327207 () Bool)

(assert (=> b!4327207 (= e!2692572 (tuple2!47455 true thiss!47260))))

(assert (= (and start!416736 res!1773249) b!4327200))

(assert (= (and b!4327200 res!1773250) b!4327206))

(assert (= (and b!4327206 c!736253) b!4327204))

(assert (= (and b!4327206 (not c!736253)) b!4327207))

(assert (= (and b!4327206 res!1773248) b!4327202))

(assert (= (and b!4327199 condMapEmpty!21358) mapIsEmpty!21358))

(assert (= (and b!4327199 (not condMapEmpty!21358)) mapNonEmpty!21358))

(assert (= b!4327203 b!4327199))

(assert (= b!4327205 b!4327203))

(assert (= b!4327201 b!4327205))

(assert (= (and start!416736 ((_ is LongMap!4797) thiss!47260)) b!4327201))

(declare-fun m!4922143 () Bool)

(assert (=> b!4327200 m!4922143))

(declare-fun m!4922145 () Bool)

(assert (=> b!4327206 m!4922145))

(declare-fun m!4922147 () Bool)

(assert (=> b!4327202 m!4922147))

(declare-fun m!4922149 () Bool)

(assert (=> mapNonEmpty!21358 m!4922149))

(declare-fun m!4922151 () Bool)

(assert (=> b!4327204 m!4922151))

(declare-fun m!4922153 () Bool)

(assert (=> b!4327203 m!4922153))

(declare-fun m!4922155 () Bool)

(assert (=> b!4327203 m!4922155))

(check-sat (not b!4327204) (not b!4327202) tp_is_empty!24263 (not b!4327203) (not b!4327206) (not b_next!129829) b_and!340715 (not mapNonEmpty!21358) (not b!4327200))
(check-sat b_and!340715 (not b_next!129829))
