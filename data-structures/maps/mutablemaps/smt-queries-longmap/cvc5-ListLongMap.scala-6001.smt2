; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77886 () Bool)

(assert start!77886)

(declare-fun b_free!16417 () Bool)

(declare-fun b_next!16417 () Bool)

(assert (=> start!77886 (= b_free!16417 (not b_next!16417))))

(declare-fun tp!57517 () Bool)

(declare-fun b_and!27003 () Bool)

(assert (=> start!77886 (= tp!57517 b_and!27003)))

(declare-fun b!908989 () Bool)

(declare-fun e!509518 () Bool)

(declare-fun tp_is_empty!18835 () Bool)

(assert (=> b!908989 (= e!509518 tp_is_empty!18835)))

(declare-fun mapNonEmpty!29968 () Bool)

(declare-fun mapRes!29968 () Bool)

(declare-fun tp!57516 () Bool)

(assert (=> mapNonEmpty!29968 (= mapRes!29968 (and tp!57516 e!509518))))

(declare-datatypes ((V!30079 0))(
  ( (V!30080 (val!9468 Int)) )
))
(declare-datatypes ((ValueCell!8936 0))(
  ( (ValueCellFull!8936 (v!11975 V!30079)) (EmptyCell!8936) )
))
(declare-datatypes ((array!53690 0))(
  ( (array!53691 (arr!25799 (Array (_ BitVec 32) ValueCell!8936)) (size!26259 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53690)

(declare-fun mapRest!29968 () (Array (_ BitVec 32) ValueCell!8936))

(declare-fun mapValue!29968 () ValueCell!8936)

(declare-fun mapKey!29968 () (_ BitVec 32))

(assert (=> mapNonEmpty!29968 (= (arr!25799 _values!1152) (store mapRest!29968 mapKey!29968 mapValue!29968))))

(declare-fun b!908990 () Bool)

(declare-fun res!613654 () Bool)

(declare-fun e!509515 () Bool)

(assert (=> b!908990 (=> (not res!613654) (not e!509515))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53692 0))(
  ( (array!53693 (arr!25800 (Array (_ BitVec 32) (_ BitVec 64))) (size!26260 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53692)

(assert (=> b!908990 (= res!613654 (and (= (size!26259 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26260 _keys!1386) (size!26259 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908991 () Bool)

(declare-fun res!613653 () Bool)

(assert (=> b!908991 (=> (not res!613653) (not e!509515))))

(declare-datatypes ((List!18223 0))(
  ( (Nil!18220) (Cons!18219 (h!19365 (_ BitVec 64)) (t!25812 List!18223)) )
))
(declare-fun arrayNoDuplicates!0 (array!53692 (_ BitVec 32) List!18223) Bool)

(assert (=> b!908991 (= res!613653 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18220))))

(declare-fun b!908992 () Bool)

(declare-fun e!509516 () Bool)

(declare-fun e!509517 () Bool)

(assert (=> b!908992 (= e!509516 (and e!509517 mapRes!29968))))

(declare-fun condMapEmpty!29968 () Bool)

(declare-fun mapDefault!29968 () ValueCell!8936)

