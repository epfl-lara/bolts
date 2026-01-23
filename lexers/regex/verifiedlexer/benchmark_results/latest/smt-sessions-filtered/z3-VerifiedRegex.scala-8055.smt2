; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416724 () Bool)

(assert start!416724)

(declare-fun b!4327033 () Bool)

(declare-fun b_free!129113 () Bool)

(declare-fun b_next!129817 () Bool)

(assert (=> b!4327033 (= b_free!129113 (not b_next!129817))))

(declare-fun tp!1327850 () Bool)

(declare-fun b_and!340703 () Bool)

(assert (=> b!4327033 (= tp!1327850 b_and!340703)))

(declare-fun b!4327031 () Bool)

(declare-datatypes ((V!9926 0))(
  ( (V!9927 (val!16032 Int)) )
))
(declare-datatypes ((array!17408 0))(
  ( (array!17409 (arr!7767 (Array (_ BitVec 32) V!9926)) (size!35807 (_ BitVec 32))) )
))
(declare-datatypes ((array!17410 0))(
  ( (array!17411 (arr!7768 (Array (_ BitVec 32) (_ BitVec 64))) (size!35808 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9582 0))(
  ( (LongMapFixedSize!9583 (defaultEntry!5197 Int) (mask!13451 (_ BitVec 32)) (extraKeys!5056 (_ BitVec 32)) (zeroValue!5068 V!9926) (minValue!5068 V!9926) (_size!9623 (_ BitVec 32)) (_keys!5118 array!17410) (_values!5092 array!17408) (_vacant!4855 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18963 0))(
  ( (Cell!18964 (v!42938 LongMapFixedSize!9582)) )
))
(declare-datatypes ((MutLongMap!4791 0))(
  ( (LongMap!4791 (underlying!9806 Cell!18963)) (MutLongMapExt!4790 (__x!30388 Int)) )
))
(declare-datatypes ((tuple2!47434 0))(
  ( (tuple2!47435 (_1!27006 Bool) (_2!27006 MutLongMap!4791)) )
))
(declare-fun e!2692425 () tuple2!47434)

(declare-fun thiss!47260 () MutLongMap!4791)

(assert (=> b!4327031 (= e!2692425 (tuple2!47435 true thiss!47260))))

(declare-fun res!1773189 () Bool)

(declare-fun e!2692424 () Bool)

(assert (=> start!416724 (=> (not res!1773189) (not e!2692424))))

(get-info :version)

(assert (=> start!416724 (= res!1773189 ((_ is LongMap!4791) thiss!47260))))

(assert (=> start!416724 e!2692424))

(declare-fun e!2692423 () Bool)

(assert (=> start!416724 e!2692423))

(assert (=> start!416724 true))

(declare-fun tp_is_empty!24251 () Bool)

(assert (=> start!416724 tp_is_empty!24251))

(declare-fun mapIsEmpty!21340 () Bool)

(declare-fun mapRes!21340 () Bool)

(assert (=> mapIsEmpty!21340 mapRes!21340))

(declare-fun b!4327032 () Bool)

(declare-fun e!2692430 () Bool)

(assert (=> b!4327032 (= e!2692430 (and tp_is_empty!24251 mapRes!21340))))

(declare-fun condMapEmpty!21340 () Bool)

(declare-fun mapDefault!21340 () V!9926)

(assert (=> b!4327032 (= condMapEmpty!21340 (= (arr!7767 (_values!5092 (v!42938 (underlying!9806 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9926)) mapDefault!21340)))))

(declare-fun e!2692426 () Bool)

(declare-fun array_inv!5597 (array!17410) Bool)

(declare-fun array_inv!5598 (array!17408) Bool)

(assert (=> b!4327033 (= e!2692426 (and tp!1327850 tp_is_empty!24251 (array_inv!5597 (_keys!5118 (v!42938 (underlying!9806 thiss!47260)))) (array_inv!5598 (_values!5092 (v!42938 (underlying!9806 thiss!47260)))) e!2692430))))

(declare-fun mapNonEmpty!21340 () Bool)

(declare-fun tp!1327849 () Bool)

(assert (=> mapNonEmpty!21340 (= mapRes!21340 (and tp!1327849 tp_is_empty!24251))))

(declare-fun mapKey!21340 () (_ BitVec 32))

(declare-fun mapRest!21340 () (Array (_ BitVec 32) V!9926))

(declare-fun mapValue!21340 () V!9926)

(assert (=> mapNonEmpty!21340 (= (arr!7767 (_values!5092 (v!42938 (underlying!9806 thiss!47260)))) (store mapRest!21340 mapKey!21340 mapValue!21340))))

(declare-fun b!4327034 () Bool)

(declare-fun e!2692429 () Bool)

(assert (=> b!4327034 (= e!2692424 e!2692429)))

(declare-fun res!1773190 () Bool)

(assert (=> b!4327034 (=> (not res!1773190) (not e!2692429))))

(declare-fun lt!1544302 () tuple2!47434)

(assert (=> b!4327034 (= res!1773190 (_1!27006 lt!1544302))))

(assert (=> b!4327034 (= lt!1544302 e!2692425)))

(declare-fun c!736235 () Bool)

(declare-fun imbalanced!95 (MutLongMap!4791) Bool)

(assert (=> b!4327034 (= c!736235 (imbalanced!95 thiss!47260))))

(declare-fun b!4327035 () Bool)

(assert (=> b!4327035 (= e!2692429 false)))

(declare-fun v!11761 () V!9926)

(declare-fun key!7012 () (_ BitVec 64))

(declare-fun lt!1544303 () Bool)

(declare-fun valid!3809 (MutLongMap!4791) Bool)

(declare-datatypes ((tuple2!47436 0))(
  ( (tuple2!47437 (_1!27007 Bool) (_2!27007 LongMapFixedSize!9582)) )
))
(declare-fun update!569 (LongMapFixedSize!9582 (_ BitVec 64) V!9926) tuple2!47436)

(assert (=> b!4327035 (= lt!1544303 (valid!3809 (LongMap!4791 (Cell!18964 (_2!27007 (update!569 (v!42938 (underlying!9806 (_2!27006 lt!1544302))) key!7012 v!11761))))))))

(declare-fun b!4327036 () Bool)

(declare-fun e!2692427 () Bool)

(assert (=> b!4327036 (= e!2692427 e!2692426)))

(declare-fun b!4327037 () Bool)

(assert (=> b!4327037 (= e!2692423 e!2692427)))

(declare-fun b!4327038 () Bool)

(declare-fun res!1773188 () Bool)

(assert (=> b!4327038 (=> (not res!1773188) (not e!2692424))))

(assert (=> b!4327038 (= res!1773188 (valid!3809 thiss!47260))))

(declare-fun b!4327039 () Bool)

(declare-fun repack!99 (MutLongMap!4791) tuple2!47434)

(assert (=> b!4327039 (= e!2692425 (repack!99 thiss!47260))))

(assert (= (and start!416724 res!1773189) b!4327038))

(assert (= (and b!4327038 res!1773188) b!4327034))

(assert (= (and b!4327034 c!736235) b!4327039))

(assert (= (and b!4327034 (not c!736235)) b!4327031))

(assert (= (and b!4327034 res!1773190) b!4327035))

(assert (= (and b!4327032 condMapEmpty!21340) mapIsEmpty!21340))

(assert (= (and b!4327032 (not condMapEmpty!21340)) mapNonEmpty!21340))

(assert (= b!4327033 b!4327032))

(assert (= b!4327036 b!4327033))

(assert (= b!4327037 b!4327036))

(assert (= (and start!416724 ((_ is LongMap!4791) thiss!47260)) b!4327037))

(declare-fun m!4922049 () Bool)

(assert (=> b!4327035 m!4922049))

(declare-fun m!4922051 () Bool)

(assert (=> b!4327035 m!4922051))

(declare-fun m!4922053 () Bool)

(assert (=> b!4327038 m!4922053))

(declare-fun m!4922055 () Bool)

(assert (=> mapNonEmpty!21340 m!4922055))

(declare-fun m!4922057 () Bool)

(assert (=> b!4327039 m!4922057))

(declare-fun m!4922059 () Bool)

(assert (=> b!4327034 m!4922059))

(declare-fun m!4922061 () Bool)

(assert (=> b!4327033 m!4922061))

(declare-fun m!4922063 () Bool)

(assert (=> b!4327033 m!4922063))

(check-sat (not mapNonEmpty!21340) (not b!4327034) (not b!4327038) (not b!4327039) (not b!4327035) (not b!4327033) b_and!340703 tp_is_empty!24251 (not b_next!129817))
(check-sat b_and!340703 (not b_next!129817))
