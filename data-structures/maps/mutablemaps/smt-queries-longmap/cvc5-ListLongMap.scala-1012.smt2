; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21684 () Bool)

(assert start!21684)

(declare-fun b!217516 () Bool)

(declare-fun b_free!5821 () Bool)

(declare-fun b_next!5821 () Bool)

(assert (=> b!217516 (= b_free!5821 (not b_next!5821))))

(declare-fun tp!20598 () Bool)

(declare-fun b_and!12729 () Bool)

(assert (=> b!217516 (= tp!20598 b_and!12729)))

(declare-fun mapNonEmpty!9687 () Bool)

(declare-fun mapRes!9687 () Bool)

(declare-fun tp!20597 () Bool)

(declare-fun e!141512 () Bool)

(assert (=> mapNonEmpty!9687 (= mapRes!9687 (and tp!20597 e!141512))))

(declare-datatypes ((V!7225 0))(
  ( (V!7226 (val!2886 Int)) )
))
(declare-datatypes ((ValueCell!2498 0))(
  ( (ValueCellFull!2498 (v!4900 V!7225)) (EmptyCell!2498) )
))
(declare-fun mapRest!9687 () (Array (_ BitVec 32) ValueCell!2498))

(declare-datatypes ((array!10604 0))(
  ( (array!10605 (arr!5023 (Array (_ BitVec 32) ValueCell!2498)) (size!5355 (_ BitVec 32))) )
))
(declare-datatypes ((array!10606 0))(
  ( (array!10607 (arr!5024 (Array (_ BitVec 32) (_ BitVec 64))) (size!5356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2896 0))(
  ( (LongMapFixedSize!2897 (defaultEntry!4098 Int) (mask!9857 (_ BitVec 32)) (extraKeys!3835 (_ BitVec 32)) (zeroValue!3939 V!7225) (minValue!3939 V!7225) (_size!1497 (_ BitVec 32)) (_keys!6147 array!10606) (_values!4081 array!10604) (_vacant!1497 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2896)

(declare-fun mapValue!9687 () ValueCell!2498)

(declare-fun mapKey!9687 () (_ BitVec 32))

(assert (=> mapNonEmpty!9687 (= (arr!5023 (_values!4081 thiss!1504)) (store mapRest!9687 mapKey!9687 mapValue!9687))))

(declare-fun b!217514 () Bool)

(declare-fun e!141511 () Bool)

(declare-fun e!141516 () Bool)

(assert (=> b!217514 (= e!141511 (and e!141516 mapRes!9687))))

(declare-fun condMapEmpty!9687 () Bool)

(declare-fun mapDefault!9687 () ValueCell!2498)

