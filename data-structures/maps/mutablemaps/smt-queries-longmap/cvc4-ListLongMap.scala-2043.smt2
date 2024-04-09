; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35438 () Bool)

(assert start!35438)

(declare-fun b_free!7817 () Bool)

(declare-fun b_next!7817 () Bool)

(assert (=> start!35438 (= b_free!7817 (not b_next!7817))))

(declare-fun tp!27236 () Bool)

(declare-fun b_and!15077 () Bool)

(assert (=> start!35438 (= tp!27236 b_and!15077)))

(declare-fun mapNonEmpty!13332 () Bool)

(declare-fun mapRes!13332 () Bool)

(declare-fun tp!27237 () Bool)

(declare-fun e!217307 () Bool)

(assert (=> mapNonEmpty!13332 (= mapRes!13332 (and tp!27237 e!217307))))

(declare-datatypes ((V!11487 0))(
  ( (V!11488 (val!3986 Int)) )
))
(declare-datatypes ((ValueCell!3598 0))(
  ( (ValueCellFull!3598 (v!6176 V!11487)) (EmptyCell!3598) )
))
(declare-fun mapRest!13332 () (Array (_ BitVec 32) ValueCell!3598))

(declare-datatypes ((array!19315 0))(
  ( (array!19316 (arr!9148 (Array (_ BitVec 32) ValueCell!3598)) (size!9500 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19315)

(declare-fun mapKey!13332 () (_ BitVec 32))

(declare-fun mapValue!13332 () ValueCell!3598)

(assert (=> mapNonEmpty!13332 (= (arr!9148 _values!1208) (store mapRest!13332 mapKey!13332 mapValue!13332))))

(declare-fun b!354501 () Bool)

(declare-fun e!217309 () Bool)

(declare-fun e!217308 () Bool)

(assert (=> b!354501 (= e!217309 (and e!217308 mapRes!13332))))

(declare-fun condMapEmpty!13332 () Bool)

(declare-fun mapDefault!13332 () ValueCell!3598)

