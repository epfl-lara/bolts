; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40246 () Bool)

(assert start!40246)

(declare-fun b_free!10505 () Bool)

(declare-fun b_next!10505 () Bool)

(assert (=> start!40246 (= b_free!10505 (not b_next!10505))))

(declare-fun tp!37043 () Bool)

(declare-fun b_and!18491 () Bool)

(assert (=> start!40246 (= tp!37043 b_and!18491)))

(declare-fun b!441281 () Bool)

(declare-fun res!261301 () Bool)

(declare-fun e!259837 () Bool)

(assert (=> b!441281 (=> (not res!261301) (not e!259837))))

(declare-datatypes ((array!27101 0))(
  ( (array!27102 (arr!12997 (Array (_ BitVec 32) (_ BitVec 64))) (size!13349 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27101)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16647 0))(
  ( (V!16648 (val!5873 Int)) )
))
(declare-datatypes ((ValueCell!5485 0))(
  ( (ValueCellFull!5485 (v!8116 V!16647)) (EmptyCell!5485) )
))
(declare-datatypes ((array!27103 0))(
  ( (array!27104 (arr!12998 (Array (_ BitVec 32) ValueCell!5485)) (size!13350 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27103)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!441281 (= res!261301 (and (= (size!13350 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13349 _keys!709) (size!13350 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19107 () Bool)

(declare-fun mapRes!19107 () Bool)

(declare-fun tp!37044 () Bool)

(declare-fun e!259841 () Bool)

(assert (=> mapNonEmpty!19107 (= mapRes!19107 (and tp!37044 e!259841))))

(declare-fun mapRest!19107 () (Array (_ BitVec 32) ValueCell!5485))

(declare-fun mapKey!19107 () (_ BitVec 32))

(declare-fun mapValue!19107 () ValueCell!5485)

(assert (=> mapNonEmpty!19107 (= (arr!12998 _values!549) (store mapRest!19107 mapKey!19107 mapValue!19107))))

(declare-fun b!441282 () Bool)

(declare-fun e!259843 () Bool)

(declare-fun tp_is_empty!11657 () Bool)

(assert (=> b!441282 (= e!259843 tp_is_empty!11657)))

(declare-fun b!441283 () Bool)

(declare-fun e!259839 () Bool)

(declare-fun e!259838 () Bool)

(assert (=> b!441283 (= e!259839 e!259838)))

(declare-fun res!261298 () Bool)

(assert (=> b!441283 (=> (not res!261298) (not e!259838))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441283 (= res!261298 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16647)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16647)

(declare-fun lt!202869 () array!27103)

(declare-fun lt!202872 () array!27101)

(declare-datatypes ((tuple2!7736 0))(
  ( (tuple2!7737 (_1!3878 (_ BitVec 64)) (_2!3878 V!16647)) )
))
(declare-datatypes ((List!7778 0))(
  ( (Nil!7775) (Cons!7774 (h!8630 tuple2!7736) (t!13542 List!7778)) )
))
(declare-datatypes ((ListLongMap!6663 0))(
  ( (ListLongMap!6664 (toList!3347 List!7778)) )
))
(declare-fun lt!202871 () ListLongMap!6663)

(declare-fun getCurrentListMapNoExtraKeys!1529 (array!27101 array!27103 (_ BitVec 32) (_ BitVec 32) V!16647 V!16647 (_ BitVec 32) Int) ListLongMap!6663)

(assert (=> b!441283 (= lt!202871 (getCurrentListMapNoExtraKeys!1529 lt!202872 lt!202869 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16647)

(assert (=> b!441283 (= lt!202869 (array!27104 (store (arr!12998 _values!549) i!563 (ValueCellFull!5485 v!412)) (size!13350 _values!549)))))

(declare-fun lt!202870 () ListLongMap!6663)

(assert (=> b!441283 (= lt!202870 (getCurrentListMapNoExtraKeys!1529 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441284 () Bool)

(declare-fun res!261306 () Bool)

(assert (=> b!441284 (=> (not res!261306) (not e!259837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441284 (= res!261306 (validMask!0 mask!1025))))

(declare-fun b!441285 () Bool)

(declare-fun res!261304 () Bool)

(assert (=> b!441285 (=> (not res!261304) (not e!259837))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441285 (= res!261304 (validKeyInArray!0 k!794))))

(declare-fun b!441286 () Bool)

(declare-fun res!261303 () Bool)

(assert (=> b!441286 (=> (not res!261303) (not e!259837))))

(declare-fun arrayContainsKey!0 (array!27101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441286 (= res!261303 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!441287 () Bool)

(declare-fun res!261294 () Bool)

(assert (=> b!441287 (=> (not res!261294) (not e!259837))))

(assert (=> b!441287 (= res!261294 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13349 _keys!709))))))

(declare-fun b!441288 () Bool)

(declare-fun res!261305 () Bool)

(assert (=> b!441288 (=> (not res!261305) (not e!259837))))

(declare-datatypes ((List!7779 0))(
  ( (Nil!7776) (Cons!7775 (h!8631 (_ BitVec 64)) (t!13543 List!7779)) )
))
(declare-fun arrayNoDuplicates!0 (array!27101 (_ BitVec 32) List!7779) Bool)

(assert (=> b!441288 (= res!261305 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7776))))

(declare-fun b!441289 () Bool)

(declare-fun res!261297 () Bool)

(assert (=> b!441289 (=> (not res!261297) (not e!259839))))

(assert (=> b!441289 (= res!261297 (arrayNoDuplicates!0 lt!202872 #b00000000000000000000000000000000 Nil!7776))))

(declare-fun b!441290 () Bool)

(declare-fun e!259842 () Bool)

(assert (=> b!441290 (= e!259842 (and e!259843 mapRes!19107))))

(declare-fun condMapEmpty!19107 () Bool)

(declare-fun mapDefault!19107 () ValueCell!5485)

