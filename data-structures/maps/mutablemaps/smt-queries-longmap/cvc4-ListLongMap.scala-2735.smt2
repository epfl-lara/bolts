; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40240 () Bool)

(assert start!40240)

(declare-fun b_free!10499 () Bool)

(declare-fun b_next!10499 () Bool)

(assert (=> start!40240 (= b_free!10499 (not b_next!10499))))

(declare-fun tp!37026 () Bool)

(declare-fun b_and!18485 () Bool)

(assert (=> start!40240 (= tp!37026 b_and!18485)))

(declare-fun b!441137 () Bool)

(declare-fun res!261179 () Bool)

(declare-fun e!259775 () Bool)

(assert (=> b!441137 (=> (not res!261179) (not e!259775))))

(declare-datatypes ((array!27089 0))(
  ( (array!27090 (arr!12991 (Array (_ BitVec 32) (_ BitVec 64))) (size!13343 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27089)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441137 (= res!261179 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!441138 () Bool)

(declare-fun res!261189 () Bool)

(assert (=> b!441138 (=> (not res!261189) (not e!259775))))

(declare-datatypes ((List!7772 0))(
  ( (Nil!7769) (Cons!7768 (h!8624 (_ BitVec 64)) (t!13536 List!7772)) )
))
(declare-fun arrayNoDuplicates!0 (array!27089 (_ BitVec 32) List!7772) Bool)

(assert (=> b!441138 (= res!261189 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7769))))

(declare-fun b!441139 () Bool)

(declare-fun e!259776 () Bool)

(declare-fun e!259778 () Bool)

(assert (=> b!441139 (= e!259776 e!259778)))

(declare-fun res!261180 () Bool)

(assert (=> b!441139 (=> (not res!261180) (not e!259778))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441139 (= res!261180 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16639 0))(
  ( (V!16640 (val!5870 Int)) )
))
(declare-fun minValue!515 () V!16639)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202823 () array!27089)

(declare-fun zeroValue!515 () V!16639)

(declare-datatypes ((tuple2!7730 0))(
  ( (tuple2!7731 (_1!3875 (_ BitVec 64)) (_2!3875 V!16639)) )
))
(declare-datatypes ((List!7773 0))(
  ( (Nil!7770) (Cons!7769 (h!8625 tuple2!7730) (t!13537 List!7773)) )
))
(declare-datatypes ((ListLongMap!6657 0))(
  ( (ListLongMap!6658 (toList!3344 List!7773)) )
))
(declare-fun lt!202827 () ListLongMap!6657)

(declare-datatypes ((ValueCell!5482 0))(
  ( (ValueCellFull!5482 (v!8113 V!16639)) (EmptyCell!5482) )
))
(declare-datatypes ((array!27091 0))(
  ( (array!27092 (arr!12992 (Array (_ BitVec 32) ValueCell!5482)) (size!13344 (_ BitVec 32))) )
))
(declare-fun lt!202824 () array!27091)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1526 (array!27089 array!27091 (_ BitVec 32) (_ BitVec 32) V!16639 V!16639 (_ BitVec 32) Int) ListLongMap!6657)

(assert (=> b!441139 (= lt!202827 (getCurrentListMapNoExtraKeys!1526 lt!202823 lt!202824 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27091)

(declare-fun v!412 () V!16639)

(assert (=> b!441139 (= lt!202824 (array!27092 (store (arr!12992 _values!549) i!563 (ValueCellFull!5482 v!412)) (size!13344 _values!549)))))

(declare-fun lt!202825 () ListLongMap!6657)

(assert (=> b!441139 (= lt!202825 (getCurrentListMapNoExtraKeys!1526 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441140 () Bool)

(declare-fun res!261187 () Bool)

(assert (=> b!441140 (=> (not res!261187) (not e!259776))))

(assert (=> b!441140 (= res!261187 (arrayNoDuplicates!0 lt!202823 #b00000000000000000000000000000000 Nil!7769))))

(declare-fun mapNonEmpty!19098 () Bool)

(declare-fun mapRes!19098 () Bool)

(declare-fun tp!37025 () Bool)

(declare-fun e!259774 () Bool)

(assert (=> mapNonEmpty!19098 (= mapRes!19098 (and tp!37025 e!259774))))

(declare-fun mapKey!19098 () (_ BitVec 32))

(declare-fun mapRest!19098 () (Array (_ BitVec 32) ValueCell!5482))

(declare-fun mapValue!19098 () ValueCell!5482)

(assert (=> mapNonEmpty!19098 (= (arr!12992 _values!549) (store mapRest!19098 mapKey!19098 mapValue!19098))))

(declare-fun b!441141 () Bool)

(declare-fun e!259777 () Bool)

(declare-fun tp_is_empty!11651 () Bool)

(assert (=> b!441141 (= e!259777 tp_is_empty!11651)))

(declare-fun b!441142 () Bool)

(declare-fun res!261181 () Bool)

(assert (=> b!441142 (=> (not res!261181) (not e!259775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441142 (= res!261181 (validKeyInArray!0 k!794))))

(declare-fun b!441143 () Bool)

(assert (=> b!441143 (= e!259774 tp_is_empty!11651)))

(declare-fun b!441144 () Bool)

(declare-fun res!261183 () Bool)

(assert (=> b!441144 (=> (not res!261183) (not e!259775))))

(assert (=> b!441144 (= res!261183 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13343 _keys!709))))))

(declare-fun b!441145 () Bool)

(declare-fun res!261188 () Bool)

(assert (=> b!441145 (=> (not res!261188) (not e!259776))))

(assert (=> b!441145 (= res!261188 (bvsle from!863 i!563))))

(declare-fun res!261185 () Bool)

(assert (=> start!40240 (=> (not res!261185) (not e!259775))))

(assert (=> start!40240 (= res!261185 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13343 _keys!709))))))

(assert (=> start!40240 e!259775))

(assert (=> start!40240 tp_is_empty!11651))

(assert (=> start!40240 tp!37026))

(assert (=> start!40240 true))

(declare-fun e!259780 () Bool)

(declare-fun array_inv!9420 (array!27091) Bool)

(assert (=> start!40240 (and (array_inv!9420 _values!549) e!259780)))

(declare-fun array_inv!9421 (array!27089) Bool)

(assert (=> start!40240 (array_inv!9421 _keys!709)))

(declare-fun b!441146 () Bool)

(declare-fun res!261186 () Bool)

(assert (=> b!441146 (=> (not res!261186) (not e!259775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27089 (_ BitVec 32)) Bool)

(assert (=> b!441146 (= res!261186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441147 () Bool)

(declare-fun res!261184 () Bool)

(assert (=> b!441147 (=> (not res!261184) (not e!259775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441147 (= res!261184 (validMask!0 mask!1025))))

(declare-fun b!441148 () Bool)

(assert (=> b!441148 (= e!259775 e!259776)))

(declare-fun res!261182 () Bool)

(assert (=> b!441148 (=> (not res!261182) (not e!259776))))

(assert (=> b!441148 (= res!261182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202823 mask!1025))))

(assert (=> b!441148 (= lt!202823 (array!27090 (store (arr!12991 _keys!709) i!563 k!794) (size!13343 _keys!709)))))

(declare-fun mapIsEmpty!19098 () Bool)

(assert (=> mapIsEmpty!19098 mapRes!19098))

(declare-fun b!441149 () Bool)

(declare-fun res!261178 () Bool)

(assert (=> b!441149 (=> (not res!261178) (not e!259775))))

(assert (=> b!441149 (= res!261178 (and (= (size!13344 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13343 _keys!709) (size!13344 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441150 () Bool)

(assert (=> b!441150 (= e!259780 (and e!259777 mapRes!19098))))

(declare-fun condMapEmpty!19098 () Bool)

(declare-fun mapDefault!19098 () ValueCell!5482)

