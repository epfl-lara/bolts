; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3024 () Bool)

(assert start!3024)

(declare-fun b!17942 () Bool)

(declare-fun b_free!633 () Bool)

(declare-fun b_next!633 () Bool)

(assert (=> b!17942 (= b_free!633 (not b_next!633))))

(declare-fun tp!3089 () Bool)

(declare-fun b_and!1283 () Bool)

(assert (=> b!17942 (= tp!3089 b_and!1283)))

(declare-fun mapIsEmpty!780 () Bool)

(declare-fun mapRes!780 () Bool)

(assert (=> mapIsEmpty!780 mapRes!780))

(declare-fun res!12693 () Bool)

(declare-fun e!11420 () Bool)

(assert (=> start!3024 (=> (not res!12693) (not e!11420))))

(declare-datatypes ((V!1021 0))(
  ( (V!1022 (val!475 Int)) )
))
(declare-datatypes ((ValueCell!249 0))(
  ( (ValueCellFull!249 (v!1454 V!1021)) (EmptyCell!249) )
))
(declare-datatypes ((array!991 0))(
  ( (array!992 (arr!477 (Array (_ BitVec 32) ValueCell!249)) (size!567 (_ BitVec 32))) )
))
(declare-datatypes ((array!993 0))(
  ( (array!994 (arr!478 (Array (_ BitVec 32) (_ BitVec 64))) (size!568 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!84 0))(
  ( (LongMapFixedSize!85 (defaultEntry!1653 Int) (mask!4580 (_ BitVec 32)) (extraKeys!1566 (_ BitVec 32)) (zeroValue!1589 V!1021) (minValue!1589 V!1021) (_size!74 (_ BitVec 32)) (_keys!3078 array!993) (_values!1650 array!991) (_vacant!74 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!84 0))(
  ( (Cell!85 (v!1455 LongMapFixedSize!84)) )
))
(declare-datatypes ((LongMap!84 0))(
  ( (LongMap!85 (underlying!53 Cell!84)) )
))
(declare-fun thiss!848 () LongMap!84)

(declare-fun valid!44 (LongMap!84) Bool)

(assert (=> start!3024 (= res!12693 (valid!44 thiss!848))))

(assert (=> start!3024 e!11420))

(declare-fun e!11414 () Bool)

(assert (=> start!3024 e!11414))

(declare-fun b!17939 () Bool)

(declare-fun e!11422 () Bool)

(declare-fun e!11417 () Bool)

(assert (=> b!17939 (= e!11422 e!11417)))

(declare-fun b!17940 () Bool)

(declare-datatypes ((tuple2!756 0))(
  ( (tuple2!757 (_1!379 Bool) (_2!379 LongMap!84)) )
))
(declare-fun e!11421 () tuple2!756)

(declare-fun repack!17 (LongMap!84) tuple2!756)

(assert (=> b!17940 (= e!11421 (repack!17 thiss!848))))

(declare-fun mapNonEmpty!780 () Bool)

(declare-fun tp!3090 () Bool)

(declare-fun e!11423 () Bool)

(assert (=> mapNonEmpty!780 (= mapRes!780 (and tp!3090 e!11423))))

(declare-fun mapValue!780 () ValueCell!249)

(declare-fun mapRest!780 () (Array (_ BitVec 32) ValueCell!249))

(declare-fun mapKey!780 () (_ BitVec 32))

(assert (=> mapNonEmpty!780 (= (arr!477 (_values!1650 (v!1455 (underlying!53 thiss!848)))) (store mapRest!780 mapKey!780 mapValue!780))))

(declare-fun b!17941 () Bool)

(declare-fun tp_is_empty!897 () Bool)

(assert (=> b!17941 (= e!11423 tp_is_empty!897)))

(declare-fun e!11419 () Bool)

(declare-fun array_inv!337 (array!993) Bool)

(declare-fun array_inv!338 (array!991) Bool)

(assert (=> b!17942 (= e!11417 (and tp!3089 tp_is_empty!897 (array_inv!337 (_keys!3078 (v!1455 (underlying!53 thiss!848)))) (array_inv!338 (_values!1650 (v!1455 (underlying!53 thiss!848)))) e!11419))))

(declare-fun b!17943 () Bool)

(assert (=> b!17943 (= e!11421 (tuple2!757 true thiss!848))))

(declare-fun b!17944 () Bool)

(assert (=> b!17944 (= e!11414 e!11422)))

(declare-fun b!17945 () Bool)

(declare-fun e!11415 () Bool)

(assert (=> b!17945 (= e!11415 false)))

(declare-fun lt!4643 () Bool)

(declare-fun lt!4644 () tuple2!756)

(assert (=> b!17945 (= lt!4643 (valid!44 (_2!379 lt!4644)))))

(declare-fun b!17946 () Bool)

(declare-fun e!11418 () Bool)

(assert (=> b!17946 (= e!11418 tp_is_empty!897)))

(declare-fun b!17947 () Bool)

(assert (=> b!17947 (= e!11419 (and e!11418 mapRes!780))))

(declare-fun condMapEmpty!780 () Bool)

(declare-fun mapDefault!780 () ValueCell!249)

(assert (=> b!17947 (= condMapEmpty!780 (= (arr!477 (_values!1650 (v!1455 (underlying!53 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!249)) mapDefault!780)))))

(declare-fun b!17948 () Bool)

(assert (=> b!17948 (= e!11420 e!11415)))

(declare-fun res!12692 () Bool)

(assert (=> b!17948 (=> (not res!12692) (not e!11415))))

(assert (=> b!17948 (= res!12692 (not (_1!379 lt!4644)))))

(assert (=> b!17948 (= lt!4644 e!11421)))

(declare-fun c!1804 () Bool)

(declare-fun imbalanced!21 (LongMap!84) Bool)

(assert (=> b!17948 (= c!1804 (imbalanced!21 thiss!848))))

(assert (= (and start!3024 res!12693) b!17948))

(assert (= (and b!17948 c!1804) b!17940))

(assert (= (and b!17948 (not c!1804)) b!17943))

(assert (= (and b!17948 res!12692) b!17945))

(assert (= (and b!17947 condMapEmpty!780) mapIsEmpty!780))

(assert (= (and b!17947 (not condMapEmpty!780)) mapNonEmpty!780))

(get-info :version)

(assert (= (and mapNonEmpty!780 ((_ is ValueCellFull!249) mapValue!780)) b!17941))

(assert (= (and b!17947 ((_ is ValueCellFull!249) mapDefault!780)) b!17946))

(assert (= b!17942 b!17947))

(assert (= b!17939 b!17942))

(assert (= b!17944 b!17939))

(assert (= start!3024 b!17944))

(declare-fun m!12527 () Bool)

(assert (=> b!17948 m!12527))

(declare-fun m!12529 () Bool)

(assert (=> b!17940 m!12529))

(declare-fun m!12531 () Bool)

(assert (=> start!3024 m!12531))

(declare-fun m!12533 () Bool)

(assert (=> b!17945 m!12533))

(declare-fun m!12535 () Bool)

(assert (=> b!17942 m!12535))

(declare-fun m!12537 () Bool)

(assert (=> b!17942 m!12537))

(declare-fun m!12539 () Bool)

(assert (=> mapNonEmpty!780 m!12539))

(check-sat b_and!1283 (not mapNonEmpty!780) (not b!17940) (not b!17948) (not b!17942) (not b!17945) tp_is_empty!897 (not start!3024) (not b_next!633))
(check-sat b_and!1283 (not b_next!633))
