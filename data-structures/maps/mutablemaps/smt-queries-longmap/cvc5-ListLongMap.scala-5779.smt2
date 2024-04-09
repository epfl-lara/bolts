; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74604 () Bool)

(assert start!74604)

(declare-fun b_free!15265 () Bool)

(declare-fun b_next!15265 () Bool)

(assert (=> start!74604 (= b_free!15265 (not b_next!15265))))

(declare-fun tp!53478 () Bool)

(declare-fun b_and!25159 () Bool)

(assert (=> start!74604 (= tp!53478 b_and!25159)))

(declare-fun b!878560 () Bool)

(declare-fun res!597000 () Bool)

(declare-fun e!488975 () Bool)

(assert (=> b!878560 (=> (not res!597000) (not e!488975))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!51124 0))(
  ( (array!51125 (arr!24584 (Array (_ BitVec 32) (_ BitVec 64))) (size!25025 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51124)

(declare-datatypes ((V!28393 0))(
  ( (V!28394 (val!8802 Int)) )
))
(declare-datatypes ((ValueCell!8315 0))(
  ( (ValueCellFull!8315 (v!11238 V!28393)) (EmptyCell!8315) )
))
(declare-datatypes ((array!51126 0))(
  ( (array!51127 (arr!24585 (Array (_ BitVec 32) ValueCell!8315)) (size!25026 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51126)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!878560 (= res!597000 (and (= (size!25026 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25025 _keys!868) (size!25026 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878561 () Bool)

(declare-fun res!596997 () Bool)

(assert (=> b!878561 (=> (not res!596997) (not e!488975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878561 (= res!596997 (validMask!0 mask!1196))))

(declare-fun b!878562 () Bool)

(declare-fun res!596993 () Bool)

(assert (=> b!878562 (=> (not res!596993) (not e!488975))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878562 (= res!596993 (validKeyInArray!0 k!854))))

(declare-fun b!878563 () Bool)

(declare-fun res!596996 () Bool)

(assert (=> b!878563 (=> (not res!596996) (not e!488975))))

(declare-datatypes ((List!17536 0))(
  ( (Nil!17533) (Cons!17532 (h!18663 (_ BitVec 64)) (t!24633 List!17536)) )
))
(declare-fun arrayNoDuplicates!0 (array!51124 (_ BitVec 32) List!17536) Bool)

(assert (=> b!878563 (= res!596996 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17533))))

(declare-fun b!878564 () Bool)

(declare-fun e!488973 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878564 (= e!488973 (not (bvslt from!1053 (size!25025 _keys!868))))))

(declare-fun lt!397254 () array!51126)

(declare-fun v!557 () V!28393)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28393)

(declare-fun zeroValue!654 () V!28393)

(declare-datatypes ((tuple2!11656 0))(
  ( (tuple2!11657 (_1!5838 (_ BitVec 64)) (_2!5838 V!28393)) )
))
(declare-datatypes ((List!17537 0))(
  ( (Nil!17534) (Cons!17533 (h!18664 tuple2!11656) (t!24634 List!17537)) )
))
(declare-datatypes ((ListLongMap!10439 0))(
  ( (ListLongMap!10440 (toList!5235 List!17537)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3197 (array!51124 array!51126 (_ BitVec 32) (_ BitVec 32) V!28393 V!28393 (_ BitVec 32) Int) ListLongMap!10439)

(declare-fun +!2442 (ListLongMap!10439 tuple2!11656) ListLongMap!10439)

(assert (=> b!878564 (= (getCurrentListMapNoExtraKeys!3197 _keys!868 lt!397254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2442 (getCurrentListMapNoExtraKeys!3197 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11657 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29964 0))(
  ( (Unit!29965) )
))
(declare-fun lt!397253 () Unit!29964)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!674 (array!51124 array!51126 (_ BitVec 32) (_ BitVec 32) V!28393 V!28393 (_ BitVec 32) (_ BitVec 64) V!28393 (_ BitVec 32) Int) Unit!29964)

(assert (=> b!878564 (= lt!397253 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!674 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878565 () Bool)

(assert (=> b!878565 (= e!488975 e!488973)))

(declare-fun res!596998 () Bool)

(assert (=> b!878565 (=> (not res!596998) (not e!488973))))

(assert (=> b!878565 (= res!596998 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397255 () ListLongMap!10439)

(assert (=> b!878565 (= lt!397255 (getCurrentListMapNoExtraKeys!3197 _keys!868 lt!397254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878565 (= lt!397254 (array!51127 (store (arr!24585 _values!688) i!612 (ValueCellFull!8315 v!557)) (size!25026 _values!688)))))

(declare-fun lt!397256 () ListLongMap!10439)

(assert (=> b!878565 (= lt!397256 (getCurrentListMapNoExtraKeys!3197 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878566 () Bool)

(declare-fun res!596995 () Bool)

(assert (=> b!878566 (=> (not res!596995) (not e!488975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51124 (_ BitVec 32)) Bool)

(assert (=> b!878566 (= res!596995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27879 () Bool)

(declare-fun mapRes!27879 () Bool)

(declare-fun tp!53477 () Bool)

(declare-fun e!488972 () Bool)

(assert (=> mapNonEmpty!27879 (= mapRes!27879 (and tp!53477 e!488972))))

(declare-fun mapKey!27879 () (_ BitVec 32))

(declare-fun mapValue!27879 () ValueCell!8315)

(declare-fun mapRest!27879 () (Array (_ BitVec 32) ValueCell!8315))

(assert (=> mapNonEmpty!27879 (= (arr!24585 _values!688) (store mapRest!27879 mapKey!27879 mapValue!27879))))

(declare-fun res!596994 () Bool)

(assert (=> start!74604 (=> (not res!596994) (not e!488975))))

(assert (=> start!74604 (= res!596994 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25025 _keys!868))))))

(assert (=> start!74604 e!488975))

(declare-fun tp_is_empty!17509 () Bool)

(assert (=> start!74604 tp_is_empty!17509))

(assert (=> start!74604 true))

(assert (=> start!74604 tp!53478))

(declare-fun array_inv!19350 (array!51124) Bool)

(assert (=> start!74604 (array_inv!19350 _keys!868)))

(declare-fun e!488974 () Bool)

(declare-fun array_inv!19351 (array!51126) Bool)

(assert (=> start!74604 (and (array_inv!19351 _values!688) e!488974)))

(declare-fun mapIsEmpty!27879 () Bool)

(assert (=> mapIsEmpty!27879 mapRes!27879))

(declare-fun b!878567 () Bool)

(assert (=> b!878567 (= e!488972 tp_is_empty!17509)))

(declare-fun b!878568 () Bool)

(declare-fun e!488971 () Bool)

(assert (=> b!878568 (= e!488971 tp_is_empty!17509)))

(declare-fun b!878569 () Bool)

(assert (=> b!878569 (= e!488974 (and e!488971 mapRes!27879))))

(declare-fun condMapEmpty!27879 () Bool)

(declare-fun mapDefault!27879 () ValueCell!8315)

