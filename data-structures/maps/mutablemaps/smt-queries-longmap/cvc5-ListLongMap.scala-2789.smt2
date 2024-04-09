; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40630 () Bool)

(assert start!40630)

(declare-fun b_free!10633 () Bool)

(declare-fun b_next!10633 () Bool)

(assert (=> start!40630 (= b_free!10633 (not b_next!10633))))

(declare-fun tp!37718 () Bool)

(declare-fun b_and!18659 () Bool)

(assert (=> start!40630 (= tp!37718 b_and!18659)))

(declare-fun b!448217 () Bool)

(declare-fun res!266472 () Bool)

(declare-fun e!263008 () Bool)

(assert (=> b!448217 (=> (not res!266472) (not e!263008))))

(declare-datatypes ((array!27709 0))(
  ( (array!27710 (arr!13297 (Array (_ BitVec 32) (_ BitVec 64))) (size!13649 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27709)

(declare-datatypes ((List!7954 0))(
  ( (Nil!7951) (Cons!7950 (h!8806 (_ BitVec 64)) (t!13724 List!7954)) )
))
(declare-fun arrayNoDuplicates!0 (array!27709 (_ BitVec 32) List!7954) Bool)

(assert (=> b!448217 (= res!266472 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7951))))

(declare-fun b!448218 () Bool)

(declare-fun res!266477 () Bool)

(assert (=> b!448218 (=> (not res!266477) (not e!263008))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27709 (_ BitVec 32)) Bool)

(assert (=> b!448218 (= res!266477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448219 () Bool)

(declare-fun res!266469 () Bool)

(declare-fun e!263011 () Bool)

(assert (=> b!448219 (=> (not res!266469) (not e!263011))))

(declare-fun lt!204124 () array!27709)

(assert (=> b!448219 (= res!266469 (arrayNoDuplicates!0 lt!204124 #b00000000000000000000000000000000 Nil!7951))))

(declare-fun b!448220 () Bool)

(declare-fun res!266476 () Bool)

(assert (=> b!448220 (=> (not res!266476) (not e!263011))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448220 (= res!266476 (bvsle from!863 i!563))))

(declare-fun b!448221 () Bool)

(declare-fun e!263010 () Bool)

(declare-fun tp_is_empty!11971 () Bool)

(assert (=> b!448221 (= e!263010 tp_is_empty!11971)))

(declare-fun b!448222 () Bool)

(declare-fun res!266470 () Bool)

(assert (=> b!448222 (=> (not res!266470) (not e!263008))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17067 0))(
  ( (V!17068 (val!6030 Int)) )
))
(declare-datatypes ((ValueCell!5642 0))(
  ( (ValueCellFull!5642 (v!8281 V!17067)) (EmptyCell!5642) )
))
(declare-datatypes ((array!27711 0))(
  ( (array!27712 (arr!13298 (Array (_ BitVec 32) ValueCell!5642)) (size!13650 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27711)

(assert (=> b!448222 (= res!266470 (and (= (size!13650 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13649 _keys!709) (size!13650 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448223 () Bool)

(assert (=> b!448223 (= e!263008 e!263011)))

(declare-fun res!266478 () Bool)

(assert (=> b!448223 (=> (not res!266478) (not e!263011))))

(assert (=> b!448223 (= res!266478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204124 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!448223 (= lt!204124 (array!27710 (store (arr!13297 _keys!709) i!563 k!794) (size!13649 _keys!709)))))

(declare-fun mapNonEmpty!19590 () Bool)

(declare-fun mapRes!19590 () Bool)

(declare-fun tp!37719 () Bool)

(assert (=> mapNonEmpty!19590 (= mapRes!19590 (and tp!37719 e!263010))))

(declare-fun mapValue!19590 () ValueCell!5642)

(declare-fun mapRest!19590 () (Array (_ BitVec 32) ValueCell!5642))

(declare-fun mapKey!19590 () (_ BitVec 32))

(assert (=> mapNonEmpty!19590 (= (arr!13298 _values!549) (store mapRest!19590 mapKey!19590 mapValue!19590))))

(declare-fun b!448224 () Bool)

(assert (=> b!448224 (= e!263011 false)))

(declare-fun minValue!515 () V!17067)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17067)

(declare-datatypes ((tuple2!7844 0))(
  ( (tuple2!7845 (_1!3932 (_ BitVec 64)) (_2!3932 V!17067)) )
))
(declare-datatypes ((List!7955 0))(
  ( (Nil!7952) (Cons!7951 (h!8807 tuple2!7844) (t!13725 List!7955)) )
))
(declare-datatypes ((ListLongMap!6771 0))(
  ( (ListLongMap!6772 (toList!3401 List!7955)) )
))
(declare-fun lt!204123 () ListLongMap!6771)

(declare-fun v!412 () V!17067)

(declare-fun getCurrentListMapNoExtraKeys!1581 (array!27709 array!27711 (_ BitVec 32) (_ BitVec 32) V!17067 V!17067 (_ BitVec 32) Int) ListLongMap!6771)

(assert (=> b!448224 (= lt!204123 (getCurrentListMapNoExtraKeys!1581 lt!204124 (array!27712 (store (arr!13298 _values!549) i!563 (ValueCellFull!5642 v!412)) (size!13650 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204122 () ListLongMap!6771)

(assert (=> b!448224 (= lt!204122 (getCurrentListMapNoExtraKeys!1581 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!266473 () Bool)

(assert (=> start!40630 (=> (not res!266473) (not e!263008))))

(assert (=> start!40630 (= res!266473 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13649 _keys!709))))))

(assert (=> start!40630 e!263008))

(assert (=> start!40630 tp_is_empty!11971))

(assert (=> start!40630 tp!37718))

(assert (=> start!40630 true))

(declare-fun e!263009 () Bool)

(declare-fun array_inv!9630 (array!27711) Bool)

(assert (=> start!40630 (and (array_inv!9630 _values!549) e!263009)))

(declare-fun array_inv!9631 (array!27709) Bool)

(assert (=> start!40630 (array_inv!9631 _keys!709)))

(declare-fun mapIsEmpty!19590 () Bool)

(assert (=> mapIsEmpty!19590 mapRes!19590))

(declare-fun b!448225 () Bool)

(declare-fun e!263012 () Bool)

(assert (=> b!448225 (= e!263009 (and e!263012 mapRes!19590))))

(declare-fun condMapEmpty!19590 () Bool)

(declare-fun mapDefault!19590 () ValueCell!5642)

