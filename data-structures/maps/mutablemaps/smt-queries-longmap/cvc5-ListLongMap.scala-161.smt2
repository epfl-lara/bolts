; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3034 () Bool)

(assert start!3034)

(declare-fun b!18093 () Bool)

(declare-fun b_free!643 () Bool)

(declare-fun b_next!643 () Bool)

(assert (=> b!18093 (= b_free!643 (not b_next!643))))

(declare-fun tp!3119 () Bool)

(declare-fun b_and!1293 () Bool)

(assert (=> b!18093 (= tp!3119 b_and!1293)))

(declare-fun mapNonEmpty!795 () Bool)

(declare-fun mapRes!795 () Bool)

(declare-fun tp!3120 () Bool)

(declare-fun e!11566 () Bool)

(assert (=> mapNonEmpty!795 (= mapRes!795 (and tp!3120 e!11566))))

(declare-datatypes ((V!1035 0))(
  ( (V!1036 (val!480 Int)) )
))
(declare-datatypes ((ValueCell!254 0))(
  ( (ValueCellFull!254 (v!1464 V!1035)) (EmptyCell!254) )
))
(declare-fun mapRest!795 () (Array (_ BitVec 32) ValueCell!254))

(declare-fun mapKey!795 () (_ BitVec 32))

(declare-datatypes ((array!1011 0))(
  ( (array!1012 (arr!487 (Array (_ BitVec 32) ValueCell!254)) (size!577 (_ BitVec 32))) )
))
(declare-datatypes ((array!1013 0))(
  ( (array!1014 (arr!488 (Array (_ BitVec 32) (_ BitVec 64))) (size!578 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!94 0))(
  ( (LongMapFixedSize!95 (defaultEntry!1658 Int) (mask!4589 (_ BitVec 32)) (extraKeys!1571 (_ BitVec 32)) (zeroValue!1594 V!1035) (minValue!1594 V!1035) (_size!79 (_ BitVec 32)) (_keys!3083 array!1013) (_values!1655 array!1011) (_vacant!79 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!94 0))(
  ( (Cell!95 (v!1465 LongMapFixedSize!94)) )
))
(declare-datatypes ((LongMap!94 0))(
  ( (LongMap!95 (underlying!58 Cell!94)) )
))
(declare-fun thiss!848 () LongMap!94)

(declare-fun mapValue!795 () ValueCell!254)

(assert (=> mapNonEmpty!795 (= (arr!487 (_values!1655 (v!1465 (underlying!58 thiss!848)))) (store mapRest!795 mapKey!795 mapValue!795))))

(declare-fun b!18089 () Bool)

(declare-fun e!11573 () Bool)

(declare-fun e!11572 () Bool)

(assert (=> b!18089 (= e!11573 e!11572)))

(declare-fun b!18091 () Bool)

(declare-datatypes ((tuple2!766 0))(
  ( (tuple2!767 (_1!384 Bool) (_2!384 LongMap!94)) )
))
(declare-fun e!11569 () tuple2!766)

(assert (=> b!18091 (= e!11569 (tuple2!767 true thiss!848))))

(declare-fun b!18092 () Bool)

(declare-fun e!11571 () Bool)

(assert (=> b!18092 (= e!11571 false)))

(declare-fun lt!4674 () Bool)

(declare-fun lt!4673 () tuple2!766)

(declare-fun valid!49 (LongMap!94) Bool)

(assert (=> b!18092 (= lt!4674 (valid!49 (_2!384 lt!4673)))))

(declare-fun e!11564 () Bool)

(declare-fun tp_is_empty!907 () Bool)

(declare-fun e!11567 () Bool)

(declare-fun array_inv!345 (array!1013) Bool)

(declare-fun array_inv!346 (array!1011) Bool)

(assert (=> b!18093 (= e!11567 (and tp!3119 tp_is_empty!907 (array_inv!345 (_keys!3083 (v!1465 (underlying!58 thiss!848)))) (array_inv!346 (_values!1655 (v!1465 (underlying!58 thiss!848)))) e!11564))))

(declare-fun b!18094 () Bool)

(declare-fun e!11565 () Bool)

(assert (=> b!18094 (= e!11565 e!11571)))

(declare-fun res!12722 () Bool)

(assert (=> b!18094 (=> (not res!12722) (not e!11571))))

(assert (=> b!18094 (= res!12722 (not (_1!384 lt!4673)))))

(assert (=> b!18094 (= lt!4673 e!11569)))

(declare-fun c!1819 () Bool)

(declare-fun imbalanced!25 (LongMap!94) Bool)

(assert (=> b!18094 (= c!1819 (imbalanced!25 thiss!848))))

(declare-fun b!18095 () Bool)

(declare-fun e!11570 () Bool)

(assert (=> b!18095 (= e!11570 tp_is_empty!907)))

(declare-fun b!18096 () Bool)

(declare-fun repack!21 (LongMap!94) tuple2!766)

(assert (=> b!18096 (= e!11569 (repack!21 thiss!848))))

(declare-fun b!18097 () Bool)

(assert (=> b!18097 (= e!11566 tp_is_empty!907)))

(declare-fun res!12723 () Bool)

(assert (=> start!3034 (=> (not res!12723) (not e!11565))))

(assert (=> start!3034 (= res!12723 (valid!49 thiss!848))))

(assert (=> start!3034 e!11565))

(assert (=> start!3034 e!11573))

(declare-fun b!18090 () Bool)

(assert (=> b!18090 (= e!11572 e!11567)))

(declare-fun mapIsEmpty!795 () Bool)

(assert (=> mapIsEmpty!795 mapRes!795))

(declare-fun b!18098 () Bool)

(assert (=> b!18098 (= e!11564 (and e!11570 mapRes!795))))

(declare-fun condMapEmpty!795 () Bool)

(declare-fun mapDefault!795 () ValueCell!254)

