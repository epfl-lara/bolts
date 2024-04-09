; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3006 () Bool)

(assert start!3006)

(declare-fun b!17675 () Bool)

(declare-fun b_free!615 () Bool)

(declare-fun b_next!615 () Bool)

(assert (=> b!17675 (= b_free!615 (not b_next!615))))

(declare-fun tp!3035 () Bool)

(declare-fun b_and!1265 () Bool)

(assert (=> b!17675 (= tp!3035 b_and!1265)))

(declare-fun b!17669 () Bool)

(declare-fun e!11148 () Bool)

(declare-fun tp_is_empty!879 () Bool)

(assert (=> b!17669 (= e!11148 tp_is_empty!879)))

(declare-fun res!12638 () Bool)

(declare-fun e!11150 () Bool)

(assert (=> start!3006 (=> (not res!12638) (not e!11150))))

(declare-datatypes ((V!997 0))(
  ( (V!998 (val!466 Int)) )
))
(declare-datatypes ((ValueCell!240 0))(
  ( (ValueCellFull!240 (v!1436 V!997)) (EmptyCell!240) )
))
(declare-datatypes ((array!955 0))(
  ( (array!956 (arr!459 (Array (_ BitVec 32) ValueCell!240)) (size!549 (_ BitVec 32))) )
))
(declare-datatypes ((array!957 0))(
  ( (array!958 (arr!460 (Array (_ BitVec 32) (_ BitVec 64))) (size!550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!66 0))(
  ( (LongMapFixedSize!67 (defaultEntry!1644 Int) (mask!4565 (_ BitVec 32)) (extraKeys!1557 (_ BitVec 32)) (zeroValue!1580 V!997) (minValue!1580 V!997) (_size!65 (_ BitVec 32)) (_keys!3069 array!957) (_values!1641 array!955) (_vacant!65 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!66 0))(
  ( (Cell!67 (v!1437 LongMapFixedSize!66)) )
))
(declare-datatypes ((LongMap!66 0))(
  ( (LongMap!67 (underlying!44 Cell!66)) )
))
(declare-fun thiss!848 () LongMap!66)

(declare-fun valid!36 (LongMap!66) Bool)

(assert (=> start!3006 (= res!12638 (valid!36 thiss!848))))

(assert (=> start!3006 e!11150))

(declare-fun e!11153 () Bool)

(assert (=> start!3006 e!11153))

(assert (=> start!3006 true))

(assert (=> start!3006 tp_is_empty!879))

(declare-fun b!17670 () Bool)

(declare-fun e!11144 () Bool)

(assert (=> b!17670 (= e!11144 tp_is_empty!879)))

(declare-fun b!17671 () Bool)

(declare-fun e!11149 () Bool)

(assert (=> b!17671 (= e!11150 e!11149)))

(declare-fun res!12639 () Bool)

(assert (=> b!17671 (=> (not res!12639) (not e!11149))))

(declare-datatypes ((tuple2!734 0))(
  ( (tuple2!735 (_1!368 Bool) (_2!368 LongMap!66)) )
))
(declare-fun lt!4589 () tuple2!734)

(assert (=> b!17671 (= res!12639 (_1!368 lt!4589))))

(declare-fun e!11151 () tuple2!734)

(assert (=> b!17671 (= lt!4589 e!11151)))

(declare-fun c!1777 () Bool)

(declare-fun imbalanced!15 (LongMap!66) Bool)

(assert (=> b!17671 (= c!1777 (imbalanced!15 thiss!848))))

(declare-fun b!17672 () Bool)

(declare-fun e!11145 () Bool)

(declare-fun mapRes!753 () Bool)

(assert (=> b!17672 (= e!11145 (and e!11144 mapRes!753))))

(declare-fun condMapEmpty!753 () Bool)

(declare-fun mapDefault!753 () ValueCell!240)

(assert (=> b!17672 (= condMapEmpty!753 (= (arr!459 (_values!1641 (v!1437 (underlying!44 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!240)) mapDefault!753)))))

(declare-fun b!17673 () Bool)

(assert (=> b!17673 (= e!11151 (tuple2!735 true thiss!848))))

(declare-fun b!17674 () Bool)

(declare-fun repack!11 (LongMap!66) tuple2!734)

(assert (=> b!17674 (= e!11151 (repack!11 thiss!848))))

(declare-fun e!11147 () Bool)

(declare-fun array_inv!323 (array!957) Bool)

(declare-fun array_inv!324 (array!955) Bool)

(assert (=> b!17675 (= e!11147 (and tp!3035 tp_is_empty!879 (array_inv!323 (_keys!3069 (v!1437 (underlying!44 thiss!848)))) (array_inv!324 (_values!1641 (v!1437 (underlying!44 thiss!848)))) e!11145))))

(declare-fun b!17676 () Bool)

(declare-fun e!11146 () Bool)

(assert (=> b!17676 (= e!11146 e!11147)))

(declare-fun mapNonEmpty!753 () Bool)

(declare-fun tp!3036 () Bool)

(assert (=> mapNonEmpty!753 (= mapRes!753 (and tp!3036 e!11148))))

(declare-fun mapValue!753 () ValueCell!240)

(declare-fun mapRest!753 () (Array (_ BitVec 32) ValueCell!240))

(declare-fun mapKey!753 () (_ BitVec 32))

(assert (=> mapNonEmpty!753 (= (arr!459 (_values!1641 (v!1437 (underlying!44 thiss!848)))) (store mapRest!753 mapKey!753 mapValue!753))))

(declare-fun b!17677 () Bool)

(assert (=> b!17677 (= e!11153 e!11146)))

(declare-fun b!17678 () Bool)

(assert (=> b!17678 (= e!11149 false)))

(declare-fun lt!4590 () Bool)

(declare-fun key!682 () (_ BitVec 64))

(declare-fun v!259 () V!997)

(declare-datatypes ((tuple2!736 0))(
  ( (tuple2!737 (_1!369 Bool) (_2!369 LongMapFixedSize!66)) )
))
(declare-fun update!9 (LongMapFixedSize!66 (_ BitVec 64) V!997) tuple2!736)

(assert (=> b!17678 (= lt!4590 (valid!36 (LongMap!67 (Cell!67 (_2!369 (update!9 (v!1437 (underlying!44 (_2!368 lt!4589))) key!682 v!259))))))))

(declare-fun mapIsEmpty!753 () Bool)

(assert (=> mapIsEmpty!753 mapRes!753))

(assert (= (and start!3006 res!12638) b!17671))

(assert (= (and b!17671 c!1777) b!17674))

(assert (= (and b!17671 (not c!1777)) b!17673))

(assert (= (and b!17671 res!12639) b!17678))

(assert (= (and b!17672 condMapEmpty!753) mapIsEmpty!753))

(assert (= (and b!17672 (not condMapEmpty!753)) mapNonEmpty!753))

(get-info :version)

(assert (= (and mapNonEmpty!753 ((_ is ValueCellFull!240) mapValue!753)) b!17669))

(assert (= (and b!17672 ((_ is ValueCellFull!240) mapDefault!753)) b!17670))

(assert (= b!17675 b!17672))

(assert (= b!17676 b!17675))

(assert (= b!17677 b!17676))

(assert (= start!3006 b!17677))

(declare-fun m!12397 () Bool)

(assert (=> mapNonEmpty!753 m!12397))

(declare-fun m!12399 () Bool)

(assert (=> b!17675 m!12399))

(declare-fun m!12401 () Bool)

(assert (=> b!17675 m!12401))

(declare-fun m!12403 () Bool)

(assert (=> b!17671 m!12403))

(declare-fun m!12405 () Bool)

(assert (=> b!17678 m!12405))

(declare-fun m!12407 () Bool)

(assert (=> b!17678 m!12407))

(declare-fun m!12409 () Bool)

(assert (=> b!17674 m!12409))

(declare-fun m!12411 () Bool)

(assert (=> start!3006 m!12411))

(check-sat (not start!3006) (not mapNonEmpty!753) (not b!17671) tp_is_empty!879 (not b_next!615) (not b!17674) (not b!17678) b_and!1265 (not b!17675))
(check-sat b_and!1265 (not b_next!615))
