; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73104 () Bool)

(assert start!73104)

(declare-fun b_free!13991 () Bool)

(declare-fun b_next!13991 () Bool)

(assert (=> start!73104 (= b_free!13991 (not b_next!13991))))

(declare-fun tp!49478 () Bool)

(declare-fun b_and!23159 () Bool)

(assert (=> start!73104 (= tp!49478 b_and!23159)))

(declare-datatypes ((V!26549 0))(
  ( (V!26550 (val!8111 Int)) )
))
(declare-datatypes ((tuple2!10638 0))(
  ( (tuple2!10639 (_1!5329 (_ BitVec 64)) (_2!5329 V!26549)) )
))
(declare-datatypes ((List!16537 0))(
  ( (Nil!16534) (Cons!16533 (h!17664 tuple2!10638) (t!22982 List!16537)) )
))
(declare-datatypes ((ListLongMap!9421 0))(
  ( (ListLongMap!9422 (toList!4726 List!16537)) )
))
(declare-fun call!37829 () ListLongMap!9421)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48446 0))(
  ( (array!48447 (arr!23250 (Array (_ BitVec 32) (_ BitVec 64))) (size!23691 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48446)

(declare-datatypes ((ValueCell!7624 0))(
  ( (ValueCellFull!7624 (v!10532 V!26549)) (EmptyCell!7624) )
))
(declare-datatypes ((array!48448 0))(
  ( (array!48449 (arr!23251 (Array (_ BitVec 32) ValueCell!7624)) (size!23692 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48448)

(declare-fun minValue!654 () V!26549)

(declare-fun zeroValue!654 () V!26549)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37825 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2714 (array!48446 array!48448 (_ BitVec 32) (_ BitVec 32) V!26549 V!26549 (_ BitVec 32) Int) ListLongMap!9421)

(assert (=> bm!37825 (= call!37829 (getCurrentListMapNoExtraKeys!2714 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849793 () Bool)

(declare-fun res!577408 () Bool)

(declare-fun e!474102 () Bool)

(assert (=> b!849793 (=> (not res!577408) (not e!474102))))

(declare-datatypes ((List!16538 0))(
  ( (Nil!16535) (Cons!16534 (h!17665 (_ BitVec 64)) (t!22983 List!16538)) )
))
(declare-fun arrayNoDuplicates!0 (array!48446 (_ BitVec 32) List!16538) Bool)

(assert (=> b!849793 (= res!577408 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16535))))

(declare-fun b!849794 () Bool)

(declare-fun res!577402 () Bool)

(assert (=> b!849794 (=> (not res!577402) (not e!474102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48446 (_ BitVec 32)) Bool)

(assert (=> b!849794 (= res!577402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!577404 () Bool)

(assert (=> start!73104 (=> (not res!577404) (not e!474102))))

(assert (=> start!73104 (= res!577404 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23691 _keys!868))))))

(assert (=> start!73104 e!474102))

(declare-fun tp_is_empty!16127 () Bool)

(assert (=> start!73104 tp_is_empty!16127))

(assert (=> start!73104 true))

(assert (=> start!73104 tp!49478))

(declare-fun array_inv!18438 (array!48446) Bool)

(assert (=> start!73104 (array_inv!18438 _keys!868)))

(declare-fun e!474101 () Bool)

(declare-fun array_inv!18439 (array!48448) Bool)

(assert (=> start!73104 (and (array_inv!18439 _values!688) e!474101)))

(declare-fun b!849795 () Bool)

(declare-fun v!557 () V!26549)

(declare-fun call!37828 () ListLongMap!9421)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!474107 () Bool)

(declare-fun +!2071 (ListLongMap!9421 tuple2!10638) ListLongMap!9421)

(assert (=> b!849795 (= e!474107 (= call!37828 (+!2071 call!37829 (tuple2!10639 k!854 v!557))))))

(declare-fun b!849796 () Bool)

(declare-fun e!474103 () Bool)

(assert (=> b!849796 (= e!474102 e!474103)))

(declare-fun res!577406 () Bool)

(assert (=> b!849796 (=> (not res!577406) (not e!474103))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849796 (= res!577406 (= from!1053 i!612))))

(declare-fun lt!382457 () array!48448)

(declare-fun lt!382456 () ListLongMap!9421)

(assert (=> b!849796 (= lt!382456 (getCurrentListMapNoExtraKeys!2714 _keys!868 lt!382457 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849796 (= lt!382457 (array!48449 (store (arr!23251 _values!688) i!612 (ValueCellFull!7624 v!557)) (size!23692 _values!688)))))

(declare-fun lt!382458 () ListLongMap!9421)

(assert (=> b!849796 (= lt!382458 (getCurrentListMapNoExtraKeys!2714 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849797 () Bool)

(declare-fun res!577405 () Bool)

(assert (=> b!849797 (=> (not res!577405) (not e!474102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849797 (= res!577405 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25790 () Bool)

(declare-fun mapRes!25790 () Bool)

(declare-fun tp!49477 () Bool)

(declare-fun e!474106 () Bool)

(assert (=> mapNonEmpty!25790 (= mapRes!25790 (and tp!49477 e!474106))))

(declare-fun mapValue!25790 () ValueCell!7624)

(declare-fun mapRest!25790 () (Array (_ BitVec 32) ValueCell!7624))

(declare-fun mapKey!25790 () (_ BitVec 32))

(assert (=> mapNonEmpty!25790 (= (arr!23251 _values!688) (store mapRest!25790 mapKey!25790 mapValue!25790))))

(declare-fun b!849798 () Bool)

(declare-fun e!474105 () Bool)

(assert (=> b!849798 (= e!474105 true)))

(declare-fun lt!382452 () V!26549)

(declare-fun lt!382450 () ListLongMap!9421)

(declare-fun lt!382451 () tuple2!10638)

(assert (=> b!849798 (= (+!2071 lt!382450 lt!382451) (+!2071 (+!2071 lt!382450 (tuple2!10639 k!854 lt!382452)) lt!382451))))

(declare-fun lt!382455 () V!26549)

(assert (=> b!849798 (= lt!382451 (tuple2!10639 k!854 lt!382455))))

(declare-datatypes ((Unit!28992 0))(
  ( (Unit!28993) )
))
(declare-fun lt!382454 () Unit!28992)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!259 (ListLongMap!9421 (_ BitVec 64) V!26549 V!26549) Unit!28992)

(assert (=> b!849798 (= lt!382454 (addSameAsAddTwiceSameKeyDiffValues!259 lt!382450 k!854 lt!382452 lt!382455))))

(declare-fun lt!382453 () V!26549)

(declare-fun get!12253 (ValueCell!7624 V!26549) V!26549)

(assert (=> b!849798 (= lt!382452 (get!12253 (select (arr!23251 _values!688) from!1053) lt!382453))))

(assert (=> b!849798 (= lt!382456 (+!2071 lt!382450 (tuple2!10639 (select (arr!23250 _keys!868) from!1053) lt!382455)))))

(assert (=> b!849798 (= lt!382455 (get!12253 (select (store (arr!23251 _values!688) i!612 (ValueCellFull!7624 v!557)) from!1053) lt!382453))))

(declare-fun dynLambda!1007 (Int (_ BitVec 64)) V!26549)

(assert (=> b!849798 (= lt!382453 (dynLambda!1007 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849798 (= lt!382450 (getCurrentListMapNoExtraKeys!2714 _keys!868 lt!382457 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849799 () Bool)

(declare-fun res!577403 () Bool)

(assert (=> b!849799 (=> (not res!577403) (not e!474102))))

(assert (=> b!849799 (= res!577403 (and (= (size!23692 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23691 _keys!868) (size!23692 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849800 () Bool)

(assert (=> b!849800 (= e!474107 (= call!37828 call!37829))))

(declare-fun b!849801 () Bool)

(declare-fun e!474104 () Bool)

(assert (=> b!849801 (= e!474104 tp_is_empty!16127)))

(declare-fun b!849802 () Bool)

(assert (=> b!849802 (= e!474103 (not e!474105))))

(declare-fun res!577401 () Bool)

(assert (=> b!849802 (=> res!577401 e!474105)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849802 (= res!577401 (not (validKeyInArray!0 (select (arr!23250 _keys!868) from!1053))))))

(assert (=> b!849802 e!474107))

(declare-fun c!91575 () Bool)

(assert (=> b!849802 (= c!91575 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382449 () Unit!28992)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!343 (array!48446 array!48448 (_ BitVec 32) (_ BitVec 32) V!26549 V!26549 (_ BitVec 32) (_ BitVec 64) V!26549 (_ BitVec 32) Int) Unit!28992)

(assert (=> b!849802 (= lt!382449 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!343 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849803 () Bool)

(declare-fun res!577407 () Bool)

(assert (=> b!849803 (=> (not res!577407) (not e!474102))))

(assert (=> b!849803 (= res!577407 (and (= (select (arr!23250 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849804 () Bool)

(assert (=> b!849804 (= e!474106 tp_is_empty!16127)))

(declare-fun mapIsEmpty!25790 () Bool)

(assert (=> mapIsEmpty!25790 mapRes!25790))

(declare-fun b!849805 () Bool)

(declare-fun res!577410 () Bool)

(assert (=> b!849805 (=> (not res!577410) (not e!474102))))

(assert (=> b!849805 (= res!577410 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23691 _keys!868))))))

(declare-fun b!849806 () Bool)

(assert (=> b!849806 (= e!474101 (and e!474104 mapRes!25790))))

(declare-fun condMapEmpty!25790 () Bool)

(declare-fun mapDefault!25790 () ValueCell!7624)

