; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90176 () Bool)

(assert start!90176)

(declare-fun b!1032429 () Bool)

(declare-fun b_free!20731 () Bool)

(declare-fun b_next!20731 () Bool)

(assert (=> b!1032429 (= b_free!20731 (not b_next!20731))))

(declare-fun tp!73269 () Bool)

(declare-fun b_and!33217 () Bool)

(assert (=> b!1032429 (= tp!73269 b_and!33217)))

(declare-fun b!1032426 () Bool)

(declare-fun e!583413 () Bool)

(declare-fun e!583416 () Bool)

(declare-fun mapRes!38134 () Bool)

(assert (=> b!1032426 (= e!583413 (and e!583416 mapRes!38134))))

(declare-fun condMapEmpty!38134 () Bool)

(declare-datatypes ((V!37475 0))(
  ( (V!37476 (val!12276 Int)) )
))
(declare-datatypes ((ValueCell!11522 0))(
  ( (ValueCellFull!11522 (v!14854 V!37475)) (EmptyCell!11522) )
))
(declare-datatypes ((array!64952 0))(
  ( (array!64953 (arr!31273 (Array (_ BitVec 32) (_ BitVec 64))) (size!31792 (_ BitVec 32))) )
))
(declare-datatypes ((array!64954 0))(
  ( (array!64955 (arr!31274 (Array (_ BitVec 32) ValueCell!11522)) (size!31793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5638 0))(
  ( (LongMapFixedSize!5639 (defaultEntry!6193 Int) (mask!30010 (_ BitVec 32)) (extraKeys!5925 (_ BitVec 32)) (zeroValue!6029 V!37475) (minValue!6029 V!37475) (_size!2874 (_ BitVec 32)) (_keys!11364 array!64952) (_values!6216 array!64954) (_vacant!2874 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5638)

(declare-fun mapDefault!38134 () ValueCell!11522)

