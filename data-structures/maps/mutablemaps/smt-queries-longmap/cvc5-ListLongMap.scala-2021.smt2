; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35228 () Bool)

(assert start!35228)

(declare-fun b_free!7795 () Bool)

(declare-fun b_next!7795 () Bool)

(assert (=> start!35228 (= b_free!7795 (not b_next!7795))))

(declare-fun tp!26979 () Bool)

(declare-fun b_and!15053 () Bool)

(assert (=> start!35228 (= tp!26979 b_and!15053)))

(declare-fun mapNonEmpty!13107 () Bool)

(declare-fun mapRes!13107 () Bool)

(declare-fun tp!26978 () Bool)

(declare-fun e!216084 () Bool)

(assert (=> mapNonEmpty!13107 (= mapRes!13107 (and tp!26978 e!216084))))

(declare-datatypes ((V!11307 0))(
  ( (V!11308 (val!3918 Int)) )
))
(declare-datatypes ((ValueCell!3530 0))(
  ( (ValueCellFull!3530 (v!6106 V!11307)) (EmptyCell!3530) )
))
(declare-fun mapRest!13107 () (Array (_ BitVec 32) ValueCell!3530))

(declare-fun mapKey!13107 () (_ BitVec 32))

(declare-datatypes ((array!19045 0))(
  ( (array!19046 (arr!9020 (Array (_ BitVec 32) ValueCell!3530)) (size!9372 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19045)

(declare-fun mapValue!13107 () ValueCell!3530)

(assert (=> mapNonEmpty!13107 (= (arr!9020 _values!1525) (store mapRest!13107 mapKey!13107 mapValue!13107))))

(declare-fun b!352866 () Bool)

(declare-fun res!195733 () Bool)

(declare-fun e!216087 () Bool)

(assert (=> b!352866 (=> (not res!195733) (not e!216087))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!19047 0))(
  ( (array!19048 (arr!9021 (Array (_ BitVec 32) (_ BitVec 64))) (size!9373 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19047)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352866 (= res!195733 (and (= (size!9372 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9373 _keys!1895) (size!9372 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13107 () Bool)

(assert (=> mapIsEmpty!13107 mapRes!13107))

(declare-fun b!352867 () Bool)

(declare-fun e!216083 () Bool)

(declare-fun e!216085 () Bool)

(assert (=> b!352867 (= e!216083 (and e!216085 mapRes!13107))))

(declare-fun condMapEmpty!13107 () Bool)

(declare-fun mapDefault!13107 () ValueCell!3530)

