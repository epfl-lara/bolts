; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73596 () Bool)

(assert start!73596)

(declare-fun b_free!14483 () Bool)

(declare-fun b_next!14483 () Bool)

(assert (=> start!73596 (= b_free!14483 (not b_next!14483))))

(declare-fun tp!50953 () Bool)

(declare-fun b_and!23963 () Bool)

(assert (=> start!73596 (= tp!50953 b_and!23963)))

(declare-fun mapNonEmpty!26528 () Bool)

(declare-fun mapRes!26528 () Bool)

(declare-fun tp!50954 () Bool)

(declare-fun e!479389 () Bool)

(assert (=> mapNonEmpty!26528 (= mapRes!26528 (and tp!50954 e!479389))))

(declare-datatypes ((V!27205 0))(
  ( (V!27206 (val!8357 Int)) )
))
(declare-datatypes ((ValueCell!7870 0))(
  ( (ValueCellFull!7870 (v!10778 V!27205)) (EmptyCell!7870) )
))
(declare-fun mapValue!26528 () ValueCell!7870)

(declare-fun mapKey!26528 () (_ BitVec 32))

(declare-fun mapRest!26528 () (Array (_ BitVec 32) ValueCell!7870))

(declare-datatypes ((array!49394 0))(
  ( (array!49395 (arr!23724 (Array (_ BitVec 32) ValueCell!7870)) (size!24165 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49394)

(assert (=> mapNonEmpty!26528 (= (arr!23724 _values!688) (store mapRest!26528 mapKey!26528 mapValue!26528))))

(declare-fun b!860246 () Bool)

(declare-fun e!479391 () Bool)

(declare-fun tp_is_empty!16619 () Bool)

(assert (=> b!860246 (= e!479391 tp_is_empty!16619)))

(declare-fun b!860247 () Bool)

(declare-fun res!584720 () Bool)

(declare-fun e!479388 () Bool)

(assert (=> b!860247 (=> res!584720 e!479388)))

(declare-datatypes ((List!16904 0))(
  ( (Nil!16901) (Cons!16900 (h!18031 (_ BitVec 64)) (t!23661 List!16904)) )
))
(declare-fun noDuplicate!1311 (List!16904) Bool)

(assert (=> b!860247 (= res!584720 (not (noDuplicate!1311 Nil!16901)))))

(declare-fun b!860248 () Bool)

(assert (=> b!860248 (= e!479389 tp_is_empty!16619)))

(declare-fun b!860249 () Bool)

(declare-fun res!584717 () Bool)

(declare-fun e!479387 () Bool)

(assert (=> b!860249 (=> (not res!584717) (not e!479387))))

(declare-datatypes ((array!49396 0))(
  ( (array!49397 (arr!23725 (Array (_ BitVec 32) (_ BitVec 64))) (size!24166 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49396)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49396 (_ BitVec 32)) Bool)

(assert (=> b!860249 (= res!584717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860250 () Bool)

(declare-fun e!479386 () Bool)

(assert (=> b!860250 (= e!479386 e!479388)))

(declare-fun res!584719 () Bool)

(assert (=> b!860250 (=> res!584719 e!479388)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860250 (= res!584719 (or (bvsge (size!24166 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24166 _keys!868)) (bvsge from!1053 (size!24166 _keys!868))))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!49396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860250 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29294 0))(
  ( (Unit!29295) )
))
(declare-fun lt!387754 () Unit!29294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49396 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29294)

(assert (=> b!860250 (= lt!387754 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49396 (_ BitVec 32) List!16904) Bool)

(assert (=> b!860250 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16901)))

(declare-fun lt!387758 () Unit!29294)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49396 (_ BitVec 32) (_ BitVec 32)) Unit!29294)

(assert (=> b!860250 (= lt!387758 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!860251 () Bool)

(declare-fun res!584722 () Bool)

(assert (=> b!860251 (=> (not res!584722) (not e!479387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860251 (= res!584722 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26528 () Bool)

(assert (=> mapIsEmpty!26528 mapRes!26528))

(declare-fun b!860252 () Bool)

(declare-fun res!584725 () Bool)

(assert (=> b!860252 (=> (not res!584725) (not e!479387))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!860252 (= res!584725 (and (= (size!24165 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24166 _keys!868) (size!24165 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!584721 () Bool)

(assert (=> start!73596 (=> (not res!584721) (not e!479387))))

(assert (=> start!73596 (= res!584721 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24166 _keys!868))))))

(assert (=> start!73596 e!479387))

(assert (=> start!73596 tp_is_empty!16619))

(assert (=> start!73596 true))

(assert (=> start!73596 tp!50953))

(declare-fun array_inv!18754 (array!49396) Bool)

(assert (=> start!73596 (array_inv!18754 _keys!868)))

(declare-fun e!479383 () Bool)

(declare-fun array_inv!18755 (array!49394) Bool)

(assert (=> start!73596 (and (array_inv!18755 _values!688) e!479383)))

(declare-fun b!860253 () Bool)

(declare-fun e!479385 () Bool)

(assert (=> b!860253 (= e!479387 e!479385)))

(declare-fun res!584727 () Bool)

(assert (=> b!860253 (=> (not res!584727) (not e!479385))))

(assert (=> b!860253 (= res!584727 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11034 0))(
  ( (tuple2!11035 (_1!5527 (_ BitVec 64)) (_2!5527 V!27205)) )
))
(declare-datatypes ((List!16905 0))(
  ( (Nil!16902) (Cons!16901 (h!18032 tuple2!11034) (t!23662 List!16905)) )
))
(declare-datatypes ((ListLongMap!9817 0))(
  ( (ListLongMap!9818 (toList!4924 List!16905)) )
))
(declare-fun lt!387755 () ListLongMap!9817)

(declare-fun lt!387757 () array!49394)

(declare-fun minValue!654 () V!27205)

(declare-fun zeroValue!654 () V!27205)

(declare-fun getCurrentListMapNoExtraKeys!2904 (array!49396 array!49394 (_ BitVec 32) (_ BitVec 32) V!27205 V!27205 (_ BitVec 32) Int) ListLongMap!9817)

(assert (=> b!860253 (= lt!387755 (getCurrentListMapNoExtraKeys!2904 _keys!868 lt!387757 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27205)

(assert (=> b!860253 (= lt!387757 (array!49395 (store (arr!23724 _values!688) i!612 (ValueCellFull!7870 v!557)) (size!24165 _values!688)))))

(declare-fun lt!387752 () ListLongMap!9817)

(assert (=> b!860253 (= lt!387752 (getCurrentListMapNoExtraKeys!2904 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860254 () Bool)

(declare-fun e!479390 () Bool)

(assert (=> b!860254 (= e!479390 e!479386)))

(declare-fun res!584718 () Bool)

(assert (=> b!860254 (=> res!584718 e!479386)))

(assert (=> b!860254 (= res!584718 (not (= (select (arr!23725 _keys!868) from!1053) k!854)))))

(declare-fun lt!387753 () ListLongMap!9817)

(declare-fun +!2225 (ListLongMap!9817 tuple2!11034) ListLongMap!9817)

(declare-fun get!12519 (ValueCell!7870 V!27205) V!27205)

(declare-fun dynLambda!1109 (Int (_ BitVec 64)) V!27205)

(assert (=> b!860254 (= lt!387755 (+!2225 lt!387753 (tuple2!11035 (select (arr!23725 _keys!868) from!1053) (get!12519 (select (arr!23724 _values!688) from!1053) (dynLambda!1109 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860255 () Bool)

(declare-fun res!584715 () Bool)

(assert (=> b!860255 (=> (not res!584715) (not e!479387))))

(assert (=> b!860255 (= res!584715 (and (= (select (arr!23725 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860256 () Bool)

(assert (=> b!860256 (= e!479383 (and e!479391 mapRes!26528))))

(declare-fun condMapEmpty!26528 () Bool)

(declare-fun mapDefault!26528 () ValueCell!7870)

