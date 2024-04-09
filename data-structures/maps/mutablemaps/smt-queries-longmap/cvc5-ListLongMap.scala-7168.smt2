; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91552 () Bool)

(assert start!91552)

(declare-fun b!1042388 () Bool)

(declare-fun b_free!21061 () Bool)

(declare-fun b_next!21061 () Bool)

(assert (=> b!1042388 (= b_free!21061 (not b_next!21061))))

(declare-fun tp!74409 () Bool)

(declare-fun b_and!33611 () Bool)

(assert (=> b!1042388 (= tp!74409 b_and!33611)))

(declare-fun b!1042379 () Bool)

(declare-fun e!590508 () Bool)

(declare-fun e!590515 () Bool)

(declare-fun mapRes!38780 () Bool)

(assert (=> b!1042379 (= e!590508 (and e!590515 mapRes!38780))))

(declare-fun condMapEmpty!38780 () Bool)

(declare-datatypes ((V!37915 0))(
  ( (V!37916 (val!12441 Int)) )
))
(declare-datatypes ((ValueCell!11687 0))(
  ( (ValueCellFull!11687 (v!15033 V!37915)) (EmptyCell!11687) )
))
(declare-datatypes ((array!65700 0))(
  ( (array!65701 (arr!31603 (Array (_ BitVec 32) (_ BitVec 64))) (size!32139 (_ BitVec 32))) )
))
(declare-datatypes ((array!65702 0))(
  ( (array!65703 (arr!31604 (Array (_ BitVec 32) ValueCell!11687)) (size!32140 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5968 0))(
  ( (LongMapFixedSize!5969 (defaultEntry!6366 Int) (mask!30424 (_ BitVec 32)) (extraKeys!6094 (_ BitVec 32)) (zeroValue!6200 V!37915) (minValue!6200 V!37915) (_size!3039 (_ BitVec 32)) (_keys!11613 array!65700) (_values!6389 array!65702) (_vacant!3039 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5968)

(declare-fun mapDefault!38780 () ValueCell!11687)

