; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3038 () Bool)

(assert start!3038)

(declare-fun b!18150 () Bool)

(declare-fun b_free!647 () Bool)

(declare-fun b_next!647 () Bool)

(assert (=> b!18150 (= b_free!647 (not b_next!647))))

(declare-fun tp!3131 () Bool)

(declare-fun b_and!1297 () Bool)

(assert (=> b!18150 (= tp!3131 b_and!1297)))

(declare-fun res!12734 () Bool)

(declare-fun e!11624 () Bool)

(assert (=> start!3038 (=> (not res!12734) (not e!11624))))

(declare-datatypes ((V!1039 0))(
  ( (V!1040 (val!482 Int)) )
))
(declare-datatypes ((ValueCell!256 0))(
  ( (ValueCellFull!256 (v!1468 V!1039)) (EmptyCell!256) )
))
(declare-datatypes ((array!1019 0))(
  ( (array!1020 (arr!491 (Array (_ BitVec 32) ValueCell!256)) (size!581 (_ BitVec 32))) )
))
(declare-datatypes ((array!1021 0))(
  ( (array!1022 (arr!492 (Array (_ BitVec 32) (_ BitVec 64))) (size!582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!98 0))(
  ( (LongMapFixedSize!99 (defaultEntry!1660 Int) (mask!4591 (_ BitVec 32)) (extraKeys!1573 (_ BitVec 32)) (zeroValue!1596 V!1039) (minValue!1596 V!1039) (_size!81 (_ BitVec 32)) (_keys!3085 array!1021) (_values!1657 array!1019) (_vacant!81 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!98 0))(
  ( (Cell!99 (v!1469 LongMapFixedSize!98)) )
))
(declare-datatypes ((LongMap!98 0))(
  ( (LongMap!99 (underlying!60 Cell!98)) )
))
(declare-fun thiss!848 () LongMap!98)

(declare-fun valid!51 (LongMap!98) Bool)

(assert (=> start!3038 (= res!12734 (valid!51 thiss!848))))

(assert (=> start!3038 e!11624))

(declare-fun e!11628 () Bool)

(assert (=> start!3038 e!11628))

(declare-fun b!18149 () Bool)

(declare-fun e!11627 () Bool)

(declare-fun e!11630 () Bool)

(assert (=> b!18149 (= e!11627 e!11630)))

(declare-fun tp_is_empty!911 () Bool)

(declare-fun e!11633 () Bool)

(declare-fun array_inv!349 (array!1021) Bool)

(declare-fun array_inv!350 (array!1019) Bool)

(assert (=> b!18150 (= e!11630 (and tp!3131 tp_is_empty!911 (array_inv!349 (_keys!3085 (v!1469 (underlying!60 thiss!848)))) (array_inv!350 (_values!1657 (v!1469 (underlying!60 thiss!848)))) e!11633))))

(declare-fun b!18151 () Bool)

(declare-fun e!11631 () Bool)

(assert (=> b!18151 (= e!11624 e!11631)))

(declare-fun res!12735 () Bool)

(assert (=> b!18151 (=> (not res!12735) (not e!11631))))

(declare-datatypes ((tuple2!770 0))(
  ( (tuple2!771 (_1!386 Bool) (_2!386 LongMap!98)) )
))
(declare-fun lt!4686 () tuple2!770)

(assert (=> b!18151 (= res!12735 (not (_1!386 lt!4686)))))

(declare-fun e!11632 () tuple2!770)

(assert (=> b!18151 (= lt!4686 e!11632)))

(declare-fun c!1825 () Bool)

(declare-fun imbalanced!27 (LongMap!98) Bool)

(assert (=> b!18151 (= c!1825 (imbalanced!27 thiss!848))))

(declare-fun b!18152 () Bool)

(declare-fun repack!23 (LongMap!98) tuple2!770)

(assert (=> b!18152 (= e!11632 (repack!23 thiss!848))))

(declare-fun b!18153 () Bool)

(assert (=> b!18153 (= e!11632 (tuple2!771 true thiss!848))))

(declare-fun b!18154 () Bool)

(declare-fun e!11626 () Bool)

(assert (=> b!18154 (= e!11626 tp_is_empty!911)))

(declare-fun mapNonEmpty!801 () Bool)

(declare-fun mapRes!801 () Bool)

(declare-fun tp!3132 () Bool)

(declare-fun e!11625 () Bool)

(assert (=> mapNonEmpty!801 (= mapRes!801 (and tp!3132 e!11625))))

(declare-fun mapValue!801 () ValueCell!256)

(declare-fun mapRest!801 () (Array (_ BitVec 32) ValueCell!256))

(declare-fun mapKey!801 () (_ BitVec 32))

(assert (=> mapNonEmpty!801 (= (arr!491 (_values!1657 (v!1469 (underlying!60 thiss!848)))) (store mapRest!801 mapKey!801 mapValue!801))))

(declare-fun mapIsEmpty!801 () Bool)

(assert (=> mapIsEmpty!801 mapRes!801))

(declare-fun b!18155 () Bool)

(assert (=> b!18155 (= e!11628 e!11627)))

(declare-fun b!18156 () Bool)

(assert (=> b!18156 (= e!11633 (and e!11626 mapRes!801))))

(declare-fun condMapEmpty!801 () Bool)

(declare-fun mapDefault!801 () ValueCell!256)

