; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77890 () Bool)

(assert start!77890)

(declare-fun b_free!16421 () Bool)

(declare-fun b_next!16421 () Bool)

(assert (=> start!77890 (= b_free!16421 (not b_next!16421))))

(declare-fun tp!57529 () Bool)

(declare-fun b_and!27007 () Bool)

(assert (=> start!77890 (= tp!57529 b_and!27007)))

(declare-fun mapNonEmpty!29974 () Bool)

(declare-fun mapRes!29974 () Bool)

(declare-fun tp!57528 () Bool)

(declare-fun e!509545 () Bool)

(assert (=> mapNonEmpty!29974 (= mapRes!29974 (and tp!57528 e!509545))))

(declare-datatypes ((V!30083 0))(
  ( (V!30084 (val!9470 Int)) )
))
(declare-datatypes ((ValueCell!8938 0))(
  ( (ValueCellFull!8938 (v!11977 V!30083)) (EmptyCell!8938) )
))
(declare-datatypes ((array!53698 0))(
  ( (array!53699 (arr!25803 (Array (_ BitVec 32) ValueCell!8938)) (size!26263 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53698)

(declare-fun mapKey!29974 () (_ BitVec 32))

(declare-fun mapRest!29974 () (Array (_ BitVec 32) ValueCell!8938))

(declare-fun mapValue!29974 () ValueCell!8938)

(assert (=> mapNonEmpty!29974 (= (arr!25803 _values!1152) (store mapRest!29974 mapKey!29974 mapValue!29974))))

(declare-fun b!909031 () Bool)

(declare-fun res!613676 () Bool)

(declare-fun e!509547 () Bool)

(assert (=> b!909031 (=> (not res!613676) (not e!509547))))

(declare-datatypes ((array!53700 0))(
  ( (array!53701 (arr!25804 (Array (_ BitVec 32) (_ BitVec 64))) (size!26264 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53700)

(declare-datatypes ((List!18226 0))(
  ( (Nil!18223) (Cons!18222 (h!19368 (_ BitVec 64)) (t!25815 List!18226)) )
))
(declare-fun arrayNoDuplicates!0 (array!53700 (_ BitVec 32) List!18226) Bool)

(assert (=> b!909031 (= res!613676 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18223))))

(declare-fun b!909032 () Bool)

(declare-fun e!509548 () Bool)

(declare-fun e!509549 () Bool)

(assert (=> b!909032 (= e!509548 (and e!509549 mapRes!29974))))

(declare-fun condMapEmpty!29974 () Bool)

(declare-fun mapDefault!29974 () ValueCell!8938)

