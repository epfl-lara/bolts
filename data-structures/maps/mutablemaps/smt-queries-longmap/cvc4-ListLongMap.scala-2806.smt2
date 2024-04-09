; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40736 () Bool)

(assert start!40736)

(declare-fun b_free!10739 () Bool)

(declare-fun b_next!10739 () Bool)

(assert (=> start!40736 (= b_free!10739 (not b_next!10739))))

(declare-fun tp!38037 () Bool)

(declare-fun b_and!18765 () Bool)

(assert (=> start!40736 (= tp!38037 b_and!18765)))

(declare-fun b!450823 () Bool)

(declare-fun res!268483 () Bool)

(declare-fun e!264128 () Bool)

(assert (=> b!450823 (=> (not res!268483) (not e!264128))))

(declare-datatypes ((array!27921 0))(
  ( (array!27922 (arr!13403 (Array (_ BitVec 32) (_ BitVec 64))) (size!13755 (_ BitVec 32))) )
))
(declare-fun lt!204740 () array!27921)

(declare-datatypes ((List!8047 0))(
  ( (Nil!8044) (Cons!8043 (h!8899 (_ BitVec 64)) (t!13817 List!8047)) )
))
(declare-fun arrayNoDuplicates!0 (array!27921 (_ BitVec 32) List!8047) Bool)

(assert (=> b!450823 (= res!268483 (arrayNoDuplicates!0 lt!204740 #b00000000000000000000000000000000 Nil!8044))))

(declare-fun b!450824 () Bool)

(declare-fun e!264125 () Bool)

(declare-datatypes ((V!17207 0))(
  ( (V!17208 (val!6083 Int)) )
))
(declare-datatypes ((tuple2!7940 0))(
  ( (tuple2!7941 (_1!3980 (_ BitVec 64)) (_2!3980 V!17207)) )
))
(declare-datatypes ((List!8048 0))(
  ( (Nil!8045) (Cons!8044 (h!8900 tuple2!7940) (t!13818 List!8048)) )
))
(declare-datatypes ((ListLongMap!6867 0))(
  ( (ListLongMap!6868 (toList!3449 List!8048)) )
))
(declare-fun call!29806 () ListLongMap!6867)

(declare-fun call!29807 () ListLongMap!6867)

(assert (=> b!450824 (= e!264125 (= call!29806 call!29807))))

(declare-fun b!450825 () Bool)

(declare-fun e!264123 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5695 0))(
  ( (ValueCellFull!5695 (v!8334 V!17207)) (EmptyCell!5695) )
))
(declare-datatypes ((array!27923 0))(
  ( (array!27924 (arr!13404 (Array (_ BitVec 32) ValueCell!5695)) (size!13756 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27923)

(assert (=> b!450825 (= e!264123 (bvslt from!863 (size!13756 _values!549)))))

(declare-fun minValue!515 () V!17207)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!204742 () array!27923)

(declare-fun zeroValue!515 () V!17207)

(declare-fun lt!204745 () ListLongMap!6867)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1626 (array!27921 array!27923 (_ BitVec 32) (_ BitVec 32) V!17207 V!17207 (_ BitVec 32) Int) ListLongMap!6867)

(assert (=> b!450825 (= lt!204745 (getCurrentListMapNoExtraKeys!1626 lt!204740 lt!204742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450826 () Bool)

(declare-fun res!268481 () Bool)

(declare-fun e!264124 () Bool)

(assert (=> b!450826 (=> (not res!268481) (not e!264124))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450826 (= res!268481 (validKeyInArray!0 k!794))))

(declare-fun b!450827 () Bool)

(declare-fun e!264121 () Bool)

(assert (=> b!450827 (= e!264121 (not e!264123))))

(declare-fun res!268482 () Bool)

(assert (=> b!450827 (=> res!268482 e!264123)))

(declare-fun _keys!709 () array!27921)

(assert (=> b!450827 (= res!268482 (validKeyInArray!0 (select (arr!13403 _keys!709) from!863)))))

(assert (=> b!450827 e!264125))

(declare-fun c!55940 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450827 (= c!55940 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun v!412 () V!17207)

(declare-datatypes ((Unit!13139 0))(
  ( (Unit!13140) )
))
(declare-fun lt!204743 () Unit!13139)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!688 (array!27921 array!27923 (_ BitVec 32) (_ BitVec 32) V!17207 V!17207 (_ BitVec 32) (_ BitVec 64) V!17207 (_ BitVec 32) Int) Unit!13139)

(assert (=> b!450827 (= lt!204743 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!688 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450828 () Bool)

(assert (=> b!450828 (= e!264128 e!264121)))

(declare-fun res!268473 () Bool)

(assert (=> b!450828 (=> (not res!268473) (not e!264121))))

(assert (=> b!450828 (= res!268473 (= from!863 i!563))))

(declare-fun lt!204744 () ListLongMap!6867)

(assert (=> b!450828 (= lt!204744 (getCurrentListMapNoExtraKeys!1626 lt!204740 lt!204742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450828 (= lt!204742 (array!27924 (store (arr!13404 _values!549) i!563 (ValueCellFull!5695 v!412)) (size!13756 _values!549)))))

(declare-fun lt!204741 () ListLongMap!6867)

(assert (=> b!450828 (= lt!204741 (getCurrentListMapNoExtraKeys!1626 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450829 () Bool)

(declare-fun e!264129 () Bool)

(declare-fun tp_is_empty!12077 () Bool)

(assert (=> b!450829 (= e!264129 tp_is_empty!12077)))

(declare-fun bm!29803 () Bool)

(assert (=> bm!29803 (= call!29807 (getCurrentListMapNoExtraKeys!1626 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450830 () Bool)

(declare-fun res!268475 () Bool)

(assert (=> b!450830 (=> (not res!268475) (not e!264128))))

(assert (=> b!450830 (= res!268475 (bvsle from!863 i!563))))

(declare-fun res!268472 () Bool)

(assert (=> start!40736 (=> (not res!268472) (not e!264124))))

(assert (=> start!40736 (= res!268472 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13755 _keys!709))))))

(assert (=> start!40736 e!264124))

(assert (=> start!40736 tp_is_empty!12077))

(assert (=> start!40736 tp!38037))

(assert (=> start!40736 true))

(declare-fun e!264126 () Bool)

(declare-fun array_inv!9698 (array!27923) Bool)

(assert (=> start!40736 (and (array_inv!9698 _values!549) e!264126)))

(declare-fun array_inv!9699 (array!27921) Bool)

(assert (=> start!40736 (array_inv!9699 _keys!709)))

(declare-fun b!450831 () Bool)

(declare-fun res!268477 () Bool)

(assert (=> b!450831 (=> (not res!268477) (not e!264124))))

(assert (=> b!450831 (= res!268477 (or (= (select (arr!13403 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13403 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450832 () Bool)

(declare-fun e!264127 () Bool)

(assert (=> b!450832 (= e!264127 tp_is_empty!12077)))

(declare-fun mapNonEmpty!19749 () Bool)

(declare-fun mapRes!19749 () Bool)

(declare-fun tp!38036 () Bool)

(assert (=> mapNonEmpty!19749 (= mapRes!19749 (and tp!38036 e!264129))))

(declare-fun mapKey!19749 () (_ BitVec 32))

(declare-fun mapRest!19749 () (Array (_ BitVec 32) ValueCell!5695))

(declare-fun mapValue!19749 () ValueCell!5695)

(assert (=> mapNonEmpty!19749 (= (arr!13404 _values!549) (store mapRest!19749 mapKey!19749 mapValue!19749))))

(declare-fun b!450833 () Bool)

(declare-fun res!268485 () Bool)

(assert (=> b!450833 (=> (not res!268485) (not e!264124))))

(assert (=> b!450833 (= res!268485 (and (= (size!13756 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13755 _keys!709) (size!13756 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19749 () Bool)

(assert (=> mapIsEmpty!19749 mapRes!19749))

(declare-fun b!450834 () Bool)

(assert (=> b!450834 (= e!264126 (and e!264127 mapRes!19749))))

(declare-fun condMapEmpty!19749 () Bool)

(declare-fun mapDefault!19749 () ValueCell!5695)

