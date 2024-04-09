; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3022 () Bool)

(assert start!3022)

(declare-fun b!17909 () Bool)

(declare-fun b_free!631 () Bool)

(declare-fun b_next!631 () Bool)

(assert (=> b!17909 (= b_free!631 (not b_next!631))))

(declare-fun tp!3084 () Bool)

(declare-fun b_and!1281 () Bool)

(assert (=> b!17909 (= tp!3084 b_and!1281)))

(declare-fun tp_is_empty!895 () Bool)

(declare-datatypes ((V!1019 0))(
  ( (V!1020 (val!474 Int)) )
))
(declare-datatypes ((ValueCell!248 0))(
  ( (ValueCellFull!248 (v!1452 V!1019)) (EmptyCell!248) )
))
(declare-datatypes ((array!987 0))(
  ( (array!988 (arr!475 (Array (_ BitVec 32) ValueCell!248)) (size!565 (_ BitVec 32))) )
))
(declare-datatypes ((array!989 0))(
  ( (array!990 (arr!476 (Array (_ BitVec 32) (_ BitVec 64))) (size!566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!82 0))(
  ( (LongMapFixedSize!83 (defaultEntry!1652 Int) (mask!4579 (_ BitVec 32)) (extraKeys!1565 (_ BitVec 32)) (zeroValue!1588 V!1019) (minValue!1588 V!1019) (_size!73 (_ BitVec 32)) (_keys!3077 array!989) (_values!1649 array!987) (_vacant!73 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!82 0))(
  ( (Cell!83 (v!1453 LongMapFixedSize!82)) )
))
(declare-datatypes ((LongMap!82 0))(
  ( (LongMap!83 (underlying!52 Cell!82)) )
))
(declare-fun thiss!848 () LongMap!82)

(declare-fun e!11384 () Bool)

(declare-fun e!11387 () Bool)

(declare-fun array_inv!335 (array!989) Bool)

(declare-fun array_inv!336 (array!987) Bool)

(assert (=> b!17909 (= e!11387 (and tp!3084 tp_is_empty!895 (array_inv!335 (_keys!3077 (v!1453 (underlying!52 thiss!848)))) (array_inv!336 (_values!1649 (v!1453 (underlying!52 thiss!848)))) e!11384))))

(declare-fun b!17910 () Bool)

(declare-datatypes ((tuple2!754 0))(
  ( (tuple2!755 (_1!378 Bool) (_2!378 LongMap!82)) )
))
(declare-fun e!11385 () tuple2!754)

(declare-fun repack!16 (LongMap!82) tuple2!754)

(assert (=> b!17910 (= e!11385 (repack!16 thiss!848))))

(declare-fun b!17911 () Bool)

(declare-fun e!11392 () Bool)

(declare-fun e!11393 () Bool)

(assert (=> b!17911 (= e!11392 e!11393)))

(declare-fun res!12686 () Bool)

(assert (=> b!17911 (=> (not res!12686) (not e!11393))))

(declare-fun lt!4638 () tuple2!754)

(assert (=> b!17911 (= res!12686 (not (_1!378 lt!4638)))))

(assert (=> b!17911 (= lt!4638 e!11385)))

(declare-fun c!1801 () Bool)

(declare-fun imbalanced!20 (LongMap!82) Bool)

(assert (=> b!17911 (= c!1801 (imbalanced!20 thiss!848))))

(declare-fun b!17912 () Bool)

(assert (=> b!17912 (= e!11393 false)))

(declare-fun lt!4637 () Bool)

(declare-fun valid!43 (LongMap!82) Bool)

(assert (=> b!17912 (= lt!4637 (valid!43 (_2!378 lt!4638)))))

(declare-fun b!17913 () Bool)

(declare-fun e!11386 () Bool)

(declare-fun mapRes!777 () Bool)

(assert (=> b!17913 (= e!11384 (and e!11386 mapRes!777))))

(declare-fun condMapEmpty!777 () Bool)

(declare-fun mapDefault!777 () ValueCell!248)

