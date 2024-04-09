; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75832 () Bool)

(assert start!75832)

(declare-fun b!891550 () Bool)

(declare-fun b_free!15775 () Bool)

(declare-fun b_next!15775 () Bool)

(assert (=> b!891550 (= b_free!15775 (not b_next!15775))))

(declare-fun tp!55294 () Bool)

(declare-fun b_and!26033 () Bool)

(assert (=> b!891550 (= tp!55294 b_and!26033)))

(declare-fun b!891541 () Bool)

(declare-fun e!497574 () Bool)

(declare-fun tp_is_empty!18103 () Bool)

(assert (=> b!891541 (= e!497574 tp_is_empty!18103)))

(declare-fun b!891542 () Bool)

(declare-fun res!604150 () Bool)

(declare-fun e!497570 () Bool)

(assert (=> b!891542 (=> (not res!604150) (not e!497570))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!891542 (= res!604150 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891543 () Bool)

(declare-fun e!497573 () Bool)

(declare-fun e!497572 () Bool)

(declare-fun mapRes!28709 () Bool)

(assert (=> b!891543 (= e!497573 (and e!497572 mapRes!28709))))

(declare-fun condMapEmpty!28709 () Bool)

(declare-datatypes ((array!52172 0))(
  ( (array!52173 (arr!25088 (Array (_ BitVec 32) (_ BitVec 64))) (size!25533 (_ BitVec 32))) )
))
(declare-datatypes ((V!29103 0))(
  ( (V!29104 (val!9102 Int)) )
))
(declare-datatypes ((ValueCell!8570 0))(
  ( (ValueCellFull!8570 (v!11574 V!29103)) (EmptyCell!8570) )
))
(declare-datatypes ((array!52174 0))(
  ( (array!52175 (arr!25089 (Array (_ BitVec 32) ValueCell!8570)) (size!25534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4156 0))(
  ( (LongMapFixedSize!4157 (defaultEntry!5275 Int) (mask!25767 (_ BitVec 32)) (extraKeys!4969 (_ BitVec 32)) (zeroValue!5073 V!29103) (minValue!5073 V!29103) (_size!2133 (_ BitVec 32)) (_keys!9954 array!52172) (_values!5260 array!52174) (_vacant!2133 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4156)

(declare-fun mapDefault!28709 () ValueCell!8570)

