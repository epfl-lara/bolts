; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!722 () Bool)

(assert start!722)

(declare-fun b_free!155 () Bool)

(declare-fun b_next!155 () Bool)

(assert (=> start!722 (= b_free!155 (not b_next!155))))

(declare-fun tp!688 () Bool)

(declare-fun b_and!297 () Bool)

(assert (=> start!722 (= tp!688 b_and!297)))

(declare-fun mapNonEmpty!314 () Bool)

(declare-fun mapRes!314 () Bool)

(declare-fun tp!689 () Bool)

(declare-fun e!2689 () Bool)

(assert (=> mapNonEmpty!314 (= mapRes!314 (and tp!689 e!2689))))

(declare-datatypes ((V!487 0))(
  ( (V!488 (val!122 Int)) )
))
(declare-datatypes ((ValueCell!100 0))(
  ( (ValueCellFull!100 (v!1211 V!487)) (EmptyCell!100) )
))
(declare-fun mapRest!314 () (Array (_ BitVec 32) ValueCell!100))

(declare-datatypes ((array!399 0))(
  ( (array!400 (arr!190 (Array (_ BitVec 32) ValueCell!100)) (size!252 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!399)

(declare-fun mapValue!314 () ValueCell!100)

(declare-fun mapKey!314 () (_ BitVec 32))

(assert (=> mapNonEmpty!314 (= (arr!190 _values!1492) (store mapRest!314 mapKey!314 mapValue!314))))

(declare-fun b!5024 () Bool)

(declare-fun e!2687 () Bool)

(declare-datatypes ((array!401 0))(
  ( (array!402 (arr!191 (Array (_ BitVec 32) (_ BitVec 64))) (size!253 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!401)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5024 (= e!2687 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5025 () Bool)

(declare-fun res!6031 () Bool)

(declare-fun e!2686 () Bool)

(assert (=> b!5025 (=> (not res!6031) (not e!2686))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5025 (= res!6031 (and (= (size!252 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!253 _keys!1806) (size!252 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!6026 () Bool)

(assert (=> start!722 (=> (not res!6026) (not e!2686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!722 (= res!6026 (validMask!0 mask!2250))))

(assert (=> start!722 e!2686))

(assert (=> start!722 tp!688))

(assert (=> start!722 true))

(declare-fun e!2688 () Bool)

(declare-fun array_inv!133 (array!399) Bool)

(assert (=> start!722 (and (array_inv!133 _values!1492) e!2688)))

(declare-fun tp_is_empty!233 () Bool)

(assert (=> start!722 tp_is_empty!233))

(declare-fun array_inv!134 (array!401) Bool)

(assert (=> start!722 (array_inv!134 _keys!1806)))

(declare-fun b!5026 () Bool)

(declare-fun res!6027 () Bool)

(assert (=> b!5026 (=> (not res!6027) (not e!2686))))

(declare-datatypes ((List!120 0))(
  ( (Nil!117) (Cons!116 (h!682 (_ BitVec 64)) (t!2251 List!120)) )
))
(declare-fun arrayNoDuplicates!0 (array!401 (_ BitVec 32) List!120) Bool)

(assert (=> b!5026 (= res!6027 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!117))))

(declare-fun b!5027 () Bool)

(assert (=> b!5027 (= e!2689 tp_is_empty!233)))

(declare-fun b!5028 () Bool)

(assert (=> b!5028 (= e!2687 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5029 () Bool)

(declare-fun e!2690 () Bool)

(assert (=> b!5029 (= e!2690 tp_is_empty!233)))

(declare-fun b!5030 () Bool)

(declare-fun res!6028 () Bool)

(assert (=> b!5030 (=> (not res!6028) (not e!2686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!401 (_ BitVec 32)) Bool)

(assert (=> b!5030 (= res!6028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5031 () Bool)

(assert (=> b!5031 (= e!2688 (and e!2690 mapRes!314))))

(declare-fun condMapEmpty!314 () Bool)

(declare-fun mapDefault!314 () ValueCell!100)

