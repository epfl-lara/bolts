; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17114 () Bool)

(assert start!17114)

(declare-fun b!172005 () Bool)

(declare-fun b_free!4237 () Bool)

(declare-fun b_next!4237 () Bool)

(assert (=> b!172005 (= b_free!4237 (not b_next!4237))))

(declare-fun tp!15346 () Bool)

(declare-fun b_and!10695 () Bool)

(assert (=> b!172005 (= tp!15346 b_and!10695)))

(declare-fun mapNonEmpty!6811 () Bool)

(declare-fun mapRes!6811 () Bool)

(declare-fun tp!15345 () Bool)

(declare-fun e!113522 () Bool)

(assert (=> mapNonEmpty!6811 (= mapRes!6811 (and tp!15345 e!113522))))

(declare-datatypes ((V!4993 0))(
  ( (V!4994 (val!2049 Int)) )
))
(declare-datatypes ((ValueCell!1661 0))(
  ( (ValueCellFull!1661 (v!3913 V!4993)) (EmptyCell!1661) )
))
(declare-fun mapValue!6811 () ValueCell!1661)

(declare-fun mapKey!6811 () (_ BitVec 32))

(declare-fun mapRest!6811 () (Array (_ BitVec 32) ValueCell!1661))

(declare-datatypes ((array!7132 0))(
  ( (array!7133 (arr!3392 (Array (_ BitVec 32) (_ BitVec 64))) (size!3686 (_ BitVec 32))) )
))
(declare-datatypes ((array!7134 0))(
  ( (array!7135 (arr!3393 (Array (_ BitVec 32) ValueCell!1661)) (size!3687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2230 0))(
  ( (LongMapFixedSize!2231 (defaultEntry!3561 Int) (mask!8394 (_ BitVec 32)) (extraKeys!3300 (_ BitVec 32)) (zeroValue!3402 V!4993) (minValue!3404 V!4993) (_size!1164 (_ BitVec 32)) (_keys!5395 array!7132) (_values!3544 array!7134) (_vacant!1164 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2230)

(assert (=> mapNonEmpty!6811 (= (arr!3393 (_values!3544 thiss!1248)) (store mapRest!6811 mapKey!6811 mapValue!6811))))

(declare-fun b!172003 () Bool)

(declare-fun res!81693 () Bool)

(declare-fun e!113521 () Bool)

(assert (=> b!172003 (=> (not res!81693) (not e!113521))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172003 (= res!81693 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172004 () Bool)

(declare-fun e!113523 () Bool)

(declare-fun e!113520 () Bool)

(assert (=> b!172004 (= e!113523 (and e!113520 mapRes!6811))))

(declare-fun condMapEmpty!6811 () Bool)

(declare-fun mapDefault!6811 () ValueCell!1661)

