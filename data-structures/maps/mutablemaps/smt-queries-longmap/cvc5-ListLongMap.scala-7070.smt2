; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89510 () Bool)

(assert start!89510)

(declare-fun b!1026038 () Bool)

(declare-fun b_free!20473 () Bool)

(declare-fun b_next!20473 () Bool)

(assert (=> b!1026038 (= b_free!20473 (not b_next!20473))))

(declare-fun tp!72466 () Bool)

(declare-fun b_and!32737 () Bool)

(assert (=> b!1026038 (= tp!72466 b_and!32737)))

(declare-fun mapNonEmpty!37718 () Bool)

(declare-fun mapRes!37718 () Bool)

(declare-fun tp!72465 () Bool)

(declare-fun e!578740 () Bool)

(assert (=> mapNonEmpty!37718 (= mapRes!37718 (and tp!72465 e!578740))))

(declare-datatypes ((V!37131 0))(
  ( (V!37132 (val!12147 Int)) )
))
(declare-datatypes ((ValueCell!11393 0))(
  ( (ValueCellFull!11393 (v!14717 V!37131)) (EmptyCell!11393) )
))
(declare-fun mapRest!37718 () (Array (_ BitVec 32) ValueCell!11393))

(declare-fun mapKey!37718 () (_ BitVec 32))

(declare-fun mapValue!37718 () ValueCell!11393)

(declare-datatypes ((array!64420 0))(
  ( (array!64421 (arr!31015 (Array (_ BitVec 32) (_ BitVec 64))) (size!31529 (_ BitVec 32))) )
))
(declare-datatypes ((array!64422 0))(
  ( (array!64423 (arr!31016 (Array (_ BitVec 32) ValueCell!11393)) (size!31530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5380 0))(
  ( (LongMapFixedSize!5381 (defaultEntry!6042 Int) (mask!29723 (_ BitVec 32)) (extraKeys!5774 (_ BitVec 32)) (zeroValue!5878 V!37131) (minValue!5878 V!37131) (_size!2745 (_ BitVec 32)) (_keys!11186 array!64420) (_values!6065 array!64422) (_vacant!2745 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5380)

(assert (=> mapNonEmpty!37718 (= (arr!31016 (_values!6065 thiss!1427)) (store mapRest!37718 mapKey!37718 mapValue!37718))))

(declare-fun b!1026037 () Bool)

(declare-fun res!686970 () Bool)

(declare-fun e!578743 () Bool)

(assert (=> b!1026037 (=> (not res!686970) (not e!578743))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026037 (= res!686970 (not (= key!909 (bvneg key!909))))))

(declare-fun res!686971 () Bool)

(assert (=> start!89510 (=> (not res!686971) (not e!578743))))

(declare-fun valid!1995 (LongMapFixedSize!5380) Bool)

(assert (=> start!89510 (= res!686971 (valid!1995 thiss!1427))))

(assert (=> start!89510 e!578743))

(declare-fun e!578744 () Bool)

(assert (=> start!89510 e!578744))

(assert (=> start!89510 true))

(declare-fun tp_is_empty!24193 () Bool)

(declare-fun e!578742 () Bool)

(declare-fun array_inv!23871 (array!64420) Bool)

(declare-fun array_inv!23872 (array!64422) Bool)

(assert (=> b!1026038 (= e!578744 (and tp!72466 tp_is_empty!24193 (array_inv!23871 (_keys!11186 thiss!1427)) (array_inv!23872 (_values!6065 thiss!1427)) e!578742))))

(declare-fun mapIsEmpty!37718 () Bool)

(assert (=> mapIsEmpty!37718 mapRes!37718))

(declare-fun b!1026039 () Bool)

(declare-fun e!578741 () Bool)

(assert (=> b!1026039 (= e!578742 (and e!578741 mapRes!37718))))

(declare-fun condMapEmpty!37718 () Bool)

(declare-fun mapDefault!37718 () ValueCell!11393)

