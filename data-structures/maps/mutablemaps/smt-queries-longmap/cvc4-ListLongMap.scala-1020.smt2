; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21736 () Bool)

(assert start!21736)

(declare-fun b!218381 () Bool)

(declare-fun b_free!5873 () Bool)

(declare-fun b_next!5873 () Bool)

(assert (=> b!218381 (= b_free!5873 (not b_next!5873))))

(declare-fun tp!20754 () Bool)

(declare-fun b_and!12781 () Bool)

(assert (=> b!218381 (= tp!20754 b_and!12781)))

(declare-fun b!218372 () Bool)

(declare-fun e!142061 () Bool)

(declare-fun tp_is_empty!5735 () Bool)

(assert (=> b!218372 (= e!142061 tp_is_empty!5735)))

(declare-fun b!218373 () Bool)

(declare-fun e!142059 () Bool)

(assert (=> b!218373 (= e!142059 tp_is_empty!5735)))

(declare-fun b!218374 () Bool)

(declare-fun res!107085 () Bool)

(declare-fun e!142060 () Bool)

(assert (=> b!218374 (=> (not res!107085) (not e!142060))))

(declare-datatypes ((V!7293 0))(
  ( (V!7294 (val!2912 Int)) )
))
(declare-datatypes ((ValueCell!2524 0))(
  ( (ValueCellFull!2524 (v!4926 V!7293)) (EmptyCell!2524) )
))
(declare-datatypes ((array!10708 0))(
  ( (array!10709 (arr!5075 (Array (_ BitVec 32) ValueCell!2524)) (size!5407 (_ BitVec 32))) )
))
(declare-datatypes ((array!10710 0))(
  ( (array!10711 (arr!5076 (Array (_ BitVec 32) (_ BitVec 64))) (size!5408 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2948 0))(
  ( (LongMapFixedSize!2949 (defaultEntry!4124 Int) (mask!9899 (_ BitVec 32)) (extraKeys!3861 (_ BitVec 32)) (zeroValue!3965 V!7293) (minValue!3965 V!7293) (_size!1523 (_ BitVec 32)) (_keys!6173 array!10710) (_values!4107 array!10708) (_vacant!1523 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2948)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10710 (_ BitVec 32)) Bool)

(assert (=> b!218374 (= res!107085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6173 thiss!1504) (mask!9899 thiss!1504)))))

(declare-fun b!218375 () Bool)

(declare-fun e!142056 () Bool)

(declare-fun mapRes!9765 () Bool)

(assert (=> b!218375 (= e!142056 (and e!142061 mapRes!9765))))

(declare-fun condMapEmpty!9765 () Bool)

(declare-fun mapDefault!9765 () ValueCell!2524)

