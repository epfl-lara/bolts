; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3824 () Bool)

(assert start!3824)

(declare-fun b_free!781 () Bool)

(declare-fun b_next!781 () Bool)

(assert (=> start!3824 (= b_free!781 (not b_next!781))))

(declare-fun tp!3754 () Bool)

(declare-fun b_and!1587 () Bool)

(assert (=> start!3824 (= tp!3754 b_and!1587)))

(declare-fun b!26826 () Bool)

(declare-fun res!15896 () Bool)

(declare-fun e!17502 () Bool)

(assert (=> b!26826 (=> (not res!15896) (not e!17502))))

(declare-datatypes ((V!1339 0))(
  ( (V!1340 (val!594 Int)) )
))
(declare-datatypes ((ValueCell!368 0))(
  ( (ValueCellFull!368 (v!1680 V!1339)) (EmptyCell!368) )
))
(declare-datatypes ((array!1501 0))(
  ( (array!1502 (arr!707 (Array (_ BitVec 32) ValueCell!368)) (size!808 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1501)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1503 0))(
  ( (array!1504 (arr!708 (Array (_ BitVec 32) (_ BitVec 64))) (size!809 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1503)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26826 (= res!15896 (and (= (size!808 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!809 _keys!1833) (size!808 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26827 () Bool)

(declare-fun e!17499 () Bool)

(declare-fun tp_is_empty!1135 () Bool)

(assert (=> b!26827 (= e!17499 tp_is_empty!1135)))

(declare-fun b!26828 () Bool)

(declare-fun res!15897 () Bool)

(assert (=> b!26828 (=> (not res!15897) (not e!17502))))

(declare-datatypes ((List!602 0))(
  ( (Nil!599) (Cons!598 (h!1165 (_ BitVec 64)) (t!3291 List!602)) )
))
(declare-fun arrayNoDuplicates!0 (array!1503 (_ BitVec 32) List!602) Bool)

(assert (=> b!26828 (= res!15897 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!599))))

(declare-fun mapNonEmpty!1222 () Bool)

(declare-fun mapRes!1222 () Bool)

(declare-fun tp!3753 () Bool)

(declare-fun e!17501 () Bool)

(assert (=> mapNonEmpty!1222 (= mapRes!1222 (and tp!3753 e!17501))))

(declare-fun mapRest!1222 () (Array (_ BitVec 32) ValueCell!368))

(declare-fun mapValue!1222 () ValueCell!368)

(declare-fun mapKey!1222 () (_ BitVec 32))

(assert (=> mapNonEmpty!1222 (= (arr!707 _values!1501) (store mapRest!1222 mapKey!1222 mapValue!1222))))

(declare-fun b!26829 () Bool)

(declare-fun e!17500 () Bool)

(assert (=> b!26829 (= e!17500 (and e!17499 mapRes!1222))))

(declare-fun condMapEmpty!1222 () Bool)

(declare-fun mapDefault!1222 () ValueCell!368)

