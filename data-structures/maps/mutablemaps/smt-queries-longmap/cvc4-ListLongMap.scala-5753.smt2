; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74378 () Bool)

(assert start!74378)

(declare-fun b_free!15113 () Bool)

(declare-fun b_next!15113 () Bool)

(assert (=> start!74378 (= b_free!15113 (not b_next!15113))))

(declare-fun tp!53014 () Bool)

(declare-fun b_and!24907 () Bool)

(assert (=> start!74378 (= tp!53014 b_and!24907)))

(declare-fun b!874913 () Bool)

(declare-fun e!487110 () Bool)

(declare-fun tp_is_empty!17357 () Bool)

(assert (=> b!874913 (= e!487110 tp_is_empty!17357)))

(declare-fun b!874914 () Bool)

(declare-fun e!487107 () Bool)

(declare-datatypes ((V!28189 0))(
  ( (V!28190 (val!8726 Int)) )
))
(declare-datatypes ((tuple2!11530 0))(
  ( (tuple2!11531 (_1!5775 (_ BitVec 64)) (_2!5775 V!28189)) )
))
(declare-datatypes ((List!17420 0))(
  ( (Nil!17417) (Cons!17416 (h!18547 tuple2!11530) (t!24469 List!17420)) )
))
(declare-datatypes ((ListLongMap!10313 0))(
  ( (ListLongMap!10314 (toList!5172 List!17420)) )
))
(declare-fun call!38565 () ListLongMap!10313)

(declare-fun call!38564 () ListLongMap!10313)

(assert (=> b!874914 (= e!487107 (= call!38565 call!38564))))

(declare-fun b!874915 () Bool)

(declare-fun e!487106 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50826 0))(
  ( (array!50827 (arr!24437 (Array (_ BitVec 32) (_ BitVec 64))) (size!24878 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50826)

(assert (=> b!874915 (= e!487106 (not (bvslt from!1053 (size!24878 _keys!868))))))

(assert (=> b!874915 e!487107))

(declare-fun c!92401 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874915 (= c!92401 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28189)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!29890 0))(
  ( (Unit!29891) )
))
(declare-fun lt!396014 () Unit!29890)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8239 0))(
  ( (ValueCellFull!8239 (v!11151 V!28189)) (EmptyCell!8239) )
))
(declare-datatypes ((array!50828 0))(
  ( (array!50829 (arr!24438 (Array (_ BitVec 32) ValueCell!8239)) (size!24879 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50828)

(declare-fun minValue!654 () V!28189)

(declare-fun zeroValue!654 () V!28189)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!649 (array!50826 array!50828 (_ BitVec 32) (_ BitVec 32) V!28189 V!28189 (_ BitVec 32) (_ BitVec 64) V!28189 (_ BitVec 32) Int) Unit!29890)

(assert (=> b!874915 (= lt!396014 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!649 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!874916 () Bool)

(declare-fun res!594704 () Bool)

(declare-fun e!487105 () Bool)

(assert (=> b!874916 (=> (not res!594704) (not e!487105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50826 (_ BitVec 32)) Bool)

(assert (=> b!874916 (= res!594704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874917 () Bool)

(declare-fun e!487109 () Bool)

(assert (=> b!874917 (= e!487109 tp_is_empty!17357)))

(declare-fun b!874918 () Bool)

(declare-fun +!2418 (ListLongMap!10313 tuple2!11530) ListLongMap!10313)

(assert (=> b!874918 (= e!487107 (= call!38565 (+!2418 call!38564 (tuple2!11531 k!854 v!557))))))

(declare-fun mapNonEmpty!27644 () Bool)

(declare-fun mapRes!27644 () Bool)

(declare-fun tp!53015 () Bool)

(assert (=> mapNonEmpty!27644 (= mapRes!27644 (and tp!53015 e!487109))))

(declare-fun mapKey!27644 () (_ BitVec 32))

(declare-fun mapValue!27644 () ValueCell!8239)

(declare-fun mapRest!27644 () (Array (_ BitVec 32) ValueCell!8239))

(assert (=> mapNonEmpty!27644 (= (arr!24438 _values!688) (store mapRest!27644 mapKey!27644 mapValue!27644))))

(declare-fun b!874919 () Bool)

(assert (=> b!874919 (= e!487105 e!487106)))

(declare-fun res!594712 () Bool)

(assert (=> b!874919 (=> (not res!594712) (not e!487106))))

(assert (=> b!874919 (= res!594712 (= from!1053 i!612))))

(declare-fun lt!396013 () array!50828)

(declare-fun lt!396015 () ListLongMap!10313)

(declare-fun getCurrentListMapNoExtraKeys!3136 (array!50826 array!50828 (_ BitVec 32) (_ BitVec 32) V!28189 V!28189 (_ BitVec 32) Int) ListLongMap!10313)

(assert (=> b!874919 (= lt!396015 (getCurrentListMapNoExtraKeys!3136 _keys!868 lt!396013 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!874919 (= lt!396013 (array!50829 (store (arr!24438 _values!688) i!612 (ValueCellFull!8239 v!557)) (size!24879 _values!688)))))

(declare-fun lt!396016 () ListLongMap!10313)

(assert (=> b!874919 (= lt!396016 (getCurrentListMapNoExtraKeys!3136 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874920 () Bool)

(declare-fun res!594707 () Bool)

(assert (=> b!874920 (=> (not res!594707) (not e!487105))))

(assert (=> b!874920 (= res!594707 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24878 _keys!868))))))

(declare-fun b!874921 () Bool)

(declare-fun res!594706 () Bool)

(assert (=> b!874921 (=> (not res!594706) (not e!487105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874921 (= res!594706 (validKeyInArray!0 k!854))))

(declare-fun b!874922 () Bool)

(declare-fun res!594710 () Bool)

(assert (=> b!874922 (=> (not res!594710) (not e!487105))))

(assert (=> b!874922 (= res!594710 (and (= (size!24879 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24878 _keys!868) (size!24879 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38561 () Bool)

(assert (=> bm!38561 (= call!38564 (getCurrentListMapNoExtraKeys!3136 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!874923 () Bool)

(declare-fun res!594708 () Bool)

(assert (=> b!874923 (=> (not res!594708) (not e!487105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874923 (= res!594708 (validMask!0 mask!1196))))

(declare-fun b!874924 () Bool)

(declare-fun res!594705 () Bool)

(assert (=> b!874924 (=> (not res!594705) (not e!487105))))

(assert (=> b!874924 (= res!594705 (and (= (select (arr!24437 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874925 () Bool)

(declare-fun res!594709 () Bool)

(assert (=> b!874925 (=> (not res!594709) (not e!487105))))

(declare-datatypes ((List!17421 0))(
  ( (Nil!17418) (Cons!17417 (h!18548 (_ BitVec 64)) (t!24470 List!17421)) )
))
(declare-fun arrayNoDuplicates!0 (array!50826 (_ BitVec 32) List!17421) Bool)

(assert (=> b!874925 (= res!594709 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17418))))

(declare-fun res!594711 () Bool)

(assert (=> start!74378 (=> (not res!594711) (not e!487105))))

(assert (=> start!74378 (= res!594711 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24878 _keys!868))))))

(assert (=> start!74378 e!487105))

(assert (=> start!74378 tp_is_empty!17357))

(assert (=> start!74378 true))

(assert (=> start!74378 tp!53014))

(declare-fun array_inv!19250 (array!50826) Bool)

(assert (=> start!74378 (array_inv!19250 _keys!868)))

(declare-fun e!487111 () Bool)

(declare-fun array_inv!19251 (array!50828) Bool)

(assert (=> start!74378 (and (array_inv!19251 _values!688) e!487111)))

(declare-fun b!874926 () Bool)

(assert (=> b!874926 (= e!487111 (and e!487110 mapRes!27644))))

(declare-fun condMapEmpty!27644 () Bool)

(declare-fun mapDefault!27644 () ValueCell!8239)

