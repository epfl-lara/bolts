; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2998 () Bool)

(assert start!2998)

(declare-fun b!17550 () Bool)

(declare-fun b_free!607 () Bool)

(declare-fun b_next!607 () Bool)

(assert (=> b!17550 (= b_free!607 (not b_next!607))))

(declare-fun tp!3012 () Bool)

(declare-fun b_and!1257 () Bool)

(assert (=> b!17550 (= tp!3012 b_and!1257)))

(declare-fun b!17549 () Bool)

(declare-datatypes ((V!987 0))(
  ( (V!988 (val!462 Int)) )
))
(declare-datatypes ((ValueCell!236 0))(
  ( (ValueCellFull!236 (v!1428 V!987)) (EmptyCell!236) )
))
(declare-datatypes ((array!939 0))(
  ( (array!940 (arr!451 (Array (_ BitVec 32) ValueCell!236)) (size!541 (_ BitVec 32))) )
))
(declare-datatypes ((array!941 0))(
  ( (array!942 (arr!452 (Array (_ BitVec 32) (_ BitVec 64))) (size!542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!58 0))(
  ( (LongMapFixedSize!59 (defaultEntry!1640 Int) (mask!4559 (_ BitVec 32)) (extraKeys!1553 (_ BitVec 32)) (zeroValue!1576 V!987) (minValue!1576 V!987) (_size!61 (_ BitVec 32)) (_keys!3065 array!941) (_values!1637 array!939) (_vacant!61 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!58 0))(
  ( (Cell!59 (v!1429 LongMapFixedSize!58)) )
))
(declare-datatypes ((LongMap!58 0))(
  ( (LongMap!59 (underlying!40 Cell!58)) )
))
(declare-datatypes ((tuple2!724 0))(
  ( (tuple2!725 (_1!363 Bool) (_2!363 LongMap!58)) )
))
(declare-fun e!11032 () tuple2!724)

(declare-fun thiss!848 () LongMap!58)

(assert (=> b!17549 (= e!11032 (tuple2!725 true thiss!848))))

(declare-fun mapNonEmpty!741 () Bool)

(declare-fun mapRes!741 () Bool)

(declare-fun tp!3011 () Bool)

(declare-fun e!11027 () Bool)

(assert (=> mapNonEmpty!741 (= mapRes!741 (and tp!3011 e!11027))))

(declare-fun mapValue!741 () ValueCell!236)

(declare-fun mapKey!741 () (_ BitVec 32))

(declare-fun mapRest!741 () (Array (_ BitVec 32) ValueCell!236))

(assert (=> mapNonEmpty!741 (= (arr!451 (_values!1637 (v!1429 (underlying!40 thiss!848)))) (store mapRest!741 mapKey!741 mapValue!741))))

(declare-fun e!11029 () Bool)

(declare-fun e!11024 () Bool)

(declare-fun tp_is_empty!871 () Bool)

(declare-fun array_inv!315 (array!941) Bool)

(declare-fun array_inv!316 (array!939) Bool)

(assert (=> b!17550 (= e!11029 (and tp!3012 tp_is_empty!871 (array_inv!315 (_keys!3065 (v!1429 (underlying!40 thiss!848)))) (array_inv!316 (_values!1637 (v!1429 (underlying!40 thiss!848)))) e!11024))))

(declare-fun b!17551 () Bool)

(declare-fun e!11025 () Bool)

(assert (=> b!17551 (= e!11025 e!11029)))

(declare-fun b!17552 () Bool)

(declare-fun e!11030 () Bool)

(declare-fun e!11031 () Bool)

(assert (=> b!17552 (= e!11030 e!11031)))

(declare-fun res!12615 () Bool)

(assert (=> b!17552 (=> (not res!12615) (not e!11031))))

(declare-fun lt!4566 () tuple2!724)

(assert (=> b!17552 (= res!12615 (_1!363 lt!4566))))

(assert (=> b!17552 (= lt!4566 e!11032)))

(declare-fun c!1765 () Bool)

(declare-fun imbalanced!11 (LongMap!58) Bool)

(assert (=> b!17552 (= c!1765 (imbalanced!11 thiss!848))))

(declare-fun b!17553 () Bool)

(declare-fun e!11026 () Bool)

(assert (=> b!17553 (= e!11024 (and e!11026 mapRes!741))))

(declare-fun condMapEmpty!741 () Bool)

(declare-fun mapDefault!741 () ValueCell!236)

