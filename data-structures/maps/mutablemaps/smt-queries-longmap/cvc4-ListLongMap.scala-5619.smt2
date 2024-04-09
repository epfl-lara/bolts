; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73530 () Bool)

(assert start!73530)

(declare-fun b_free!14417 () Bool)

(declare-fun b_next!14417 () Bool)

(assert (=> start!73530 (= b_free!14417 (not b_next!14417))))

(declare-fun tp!50755 () Bool)

(declare-fun b_and!23831 () Bool)

(assert (=> start!73530 (= tp!50755 b_and!23831)))

(declare-fun mapIsEmpty!26429 () Bool)

(declare-fun mapRes!26429 () Bool)

(assert (=> mapIsEmpty!26429 mapRes!26429))

(declare-fun b!858609 () Bool)

(declare-fun e!478532 () Bool)

(declare-fun e!478534 () Bool)

(assert (=> b!858609 (= e!478532 e!478534)))

(declare-fun res!583447 () Bool)

(assert (=> b!858609 (=> res!583447 e!478534)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49264 0))(
  ( (array!49265 (arr!23659 (Array (_ BitVec 32) (_ BitVec 64))) (size!24100 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49264)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858609 (= res!583447 (not (= (select (arr!23659 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27117 0))(
  ( (V!27118 (val!8324 Int)) )
))
(declare-datatypes ((tuple2!10972 0))(
  ( (tuple2!10973 (_1!5496 (_ BitVec 64)) (_2!5496 V!27117)) )
))
(declare-datatypes ((List!16844 0))(
  ( (Nil!16841) (Cons!16840 (h!17971 tuple2!10972) (t!23535 List!16844)) )
))
(declare-datatypes ((ListLongMap!9755 0))(
  ( (ListLongMap!9756 (toList!4893 List!16844)) )
))
(declare-fun lt!386839 () ListLongMap!9755)

(declare-datatypes ((ValueCell!7837 0))(
  ( (ValueCellFull!7837 (v!10745 V!27117)) (EmptyCell!7837) )
))
(declare-datatypes ((array!49266 0))(
  ( (array!49267 (arr!23660 (Array (_ BitVec 32) ValueCell!7837)) (size!24101 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49266)

(declare-fun lt!386834 () ListLongMap!9755)

(declare-fun +!2197 (ListLongMap!9755 tuple2!10972) ListLongMap!9755)

(declare-fun get!12475 (ValueCell!7837 V!27117) V!27117)

(declare-fun dynLambda!1087 (Int (_ BitVec 64)) V!27117)

(assert (=> b!858609 (= lt!386834 (+!2197 lt!386839 (tuple2!10973 (select (arr!23659 _keys!868) from!1053) (get!12475 (select (arr!23660 _values!688) from!1053) (dynLambda!1087 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858610 () Bool)

(declare-fun res!583446 () Bool)

(declare-fun e!478536 () Bool)

(assert (=> b!858610 (=> (not res!583446) (not e!478536))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858610 (= res!583446 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24100 _keys!868))))))

(declare-fun b!858611 () Bool)

(assert (=> b!858611 (= e!478534 true)))

(declare-datatypes ((List!16845 0))(
  ( (Nil!16842) (Cons!16841 (h!17972 (_ BitVec 64)) (t!23536 List!16845)) )
))
(declare-fun arrayNoDuplicates!0 (array!49264 (_ BitVec 32) List!16845) Bool)

(assert (=> b!858611 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16842)))

(declare-datatypes ((Unit!29238 0))(
  ( (Unit!29239) )
))
(declare-fun lt!386841 () Unit!29238)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49264 (_ BitVec 32) (_ BitVec 32)) Unit!29238)

(assert (=> b!858611 (= lt!386841 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858612 () Bool)

(declare-fun res!583440 () Bool)

(assert (=> b!858612 (=> (not res!583440) (not e!478536))))

(assert (=> b!858612 (= res!583440 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16842))))

(declare-fun b!858613 () Bool)

(declare-fun res!583441 () Bool)

(assert (=> b!858613 (=> (not res!583441) (not e!478536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858613 (= res!583441 (validKeyInArray!0 k!854))))

(declare-fun b!858614 () Bool)

(declare-fun res!583448 () Bool)

(assert (=> b!858614 (=> (not res!583448) (not e!478536))))

(assert (=> b!858614 (= res!583448 (and (= (select (arr!23659 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!858615 () Bool)

(declare-fun e!478529 () Bool)

(declare-fun tp_is_empty!16553 () Bool)

(assert (=> b!858615 (= e!478529 tp_is_empty!16553)))

(declare-fun b!858616 () Bool)

(declare-fun e!478533 () Bool)

(assert (=> b!858616 (= e!478536 e!478533)))

(declare-fun res!583439 () Bool)

(assert (=> b!858616 (=> (not res!583439) (not e!478533))))

(assert (=> b!858616 (= res!583439 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27117)

(declare-fun lt!386835 () array!49266)

(declare-fun zeroValue!654 () V!27117)

(declare-fun getCurrentListMapNoExtraKeys!2875 (array!49264 array!49266 (_ BitVec 32) (_ BitVec 32) V!27117 V!27117 (_ BitVec 32) Int) ListLongMap!9755)

(assert (=> b!858616 (= lt!386834 (getCurrentListMapNoExtraKeys!2875 _keys!868 lt!386835 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27117)

(assert (=> b!858616 (= lt!386835 (array!49267 (store (arr!23660 _values!688) i!612 (ValueCellFull!7837 v!557)) (size!24101 _values!688)))))

(declare-fun lt!386838 () ListLongMap!9755)

(assert (=> b!858616 (= lt!386838 (getCurrentListMapNoExtraKeys!2875 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858617 () Bool)

(declare-fun res!583442 () Bool)

(assert (=> b!858617 (=> (not res!583442) (not e!478536))))

(assert (=> b!858617 (= res!583442 (and (= (size!24101 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24100 _keys!868) (size!24101 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858608 () Bool)

(declare-fun e!478530 () Bool)

(assert (=> b!858608 (= e!478530 tp_is_empty!16553)))

(declare-fun res!583443 () Bool)

(assert (=> start!73530 (=> (not res!583443) (not e!478536))))

(assert (=> start!73530 (= res!583443 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24100 _keys!868))))))

(assert (=> start!73530 e!478536))

(assert (=> start!73530 tp_is_empty!16553))

(assert (=> start!73530 true))

(assert (=> start!73530 tp!50755))

(declare-fun array_inv!18716 (array!49264) Bool)

(assert (=> start!73530 (array_inv!18716 _keys!868)))

(declare-fun e!478531 () Bool)

(declare-fun array_inv!18717 (array!49266) Bool)

(assert (=> start!73530 (and (array_inv!18717 _values!688) e!478531)))

(declare-fun b!858618 () Bool)

(assert (=> b!858618 (= e!478531 (and e!478530 mapRes!26429))))

(declare-fun condMapEmpty!26429 () Bool)

(declare-fun mapDefault!26429 () ValueCell!7837)

