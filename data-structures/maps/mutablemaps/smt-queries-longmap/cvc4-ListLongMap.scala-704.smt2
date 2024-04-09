; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16744 () Bool)

(assert start!16744)

(declare-fun b!168000 () Bool)

(declare-fun b_free!4037 () Bool)

(declare-fun b_next!4037 () Bool)

(assert (=> b!168000 (= b_free!4037 (not b_next!4037))))

(declare-fun tp!14712 () Bool)

(declare-fun b_and!10469 () Bool)

(assert (=> b!168000 (= tp!14712 b_and!10469)))

(declare-fun b!167989 () Bool)

(declare-fun e!110402 () Bool)

(declare-fun tp_is_empty!3839 () Bool)

(assert (=> b!167989 (= e!110402 tp_is_empty!3839)))

(declare-fun mapIsEmpty!6477 () Bool)

(declare-fun mapRes!6477 () Bool)

(assert (=> mapIsEmpty!6477 mapRes!6477))

(declare-fun b!167990 () Bool)

(declare-fun e!110401 () Bool)

(declare-fun e!110403 () Bool)

(assert (=> b!167990 (= e!110401 (and e!110403 mapRes!6477))))

(declare-fun condMapEmpty!6477 () Bool)

(declare-datatypes ((V!4765 0))(
  ( (V!4766 (val!1964 Int)) )
))
(declare-datatypes ((ValueCell!1576 0))(
  ( (ValueCellFull!1576 (v!3825 V!4765)) (EmptyCell!1576) )
))
(declare-datatypes ((array!6774 0))(
  ( (array!6775 (arr!3222 (Array (_ BitVec 32) (_ BitVec 64))) (size!3510 (_ BitVec 32))) )
))
(declare-datatypes ((array!6776 0))(
  ( (array!6777 (arr!3223 (Array (_ BitVec 32) ValueCell!1576)) (size!3511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2060 0))(
  ( (LongMapFixedSize!2061 (defaultEntry!3472 Int) (mask!8229 (_ BitVec 32)) (extraKeys!3213 (_ BitVec 32)) (zeroValue!3315 V!4765) (minValue!3315 V!4765) (_size!1079 (_ BitVec 32)) (_keys!5297 array!6774) (_values!3455 array!6776) (_vacant!1079 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2060)

(declare-fun mapDefault!6477 () ValueCell!1576)

