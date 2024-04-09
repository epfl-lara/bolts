; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73500 () Bool)

(assert start!73500)

(declare-fun b_free!14387 () Bool)

(declare-fun b_next!14387 () Bool)

(assert (=> start!73500 (= b_free!14387 (not b_next!14387))))

(declare-fun tp!50666 () Bool)

(declare-fun b_and!23771 () Bool)

(assert (=> start!73500 (= tp!50666 b_and!23771)))

(declare-fun b!857976 () Bool)

(declare-fun res!582972 () Bool)

(declare-fun e!478200 () Bool)

(assert (=> b!857976 (=> (not res!582972) (not e!478200))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49206 0))(
  ( (array!49207 (arr!23630 (Array (_ BitVec 32) (_ BitVec 64))) (size!24071 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49206)

(declare-datatypes ((V!27077 0))(
  ( (V!27078 (val!8309 Int)) )
))
(declare-datatypes ((ValueCell!7822 0))(
  ( (ValueCellFull!7822 (v!10730 V!27077)) (EmptyCell!7822) )
))
(declare-datatypes ((array!49208 0))(
  ( (array!49209 (arr!23631 (Array (_ BitVec 32) ValueCell!7822)) (size!24072 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49208)

(assert (=> b!857976 (= res!582972 (and (= (size!24072 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24071 _keys!868) (size!24072 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857977 () Bool)

(declare-fun res!582976 () Bool)

(assert (=> b!857977 (=> (not res!582976) (not e!478200))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857977 (= res!582976 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24071 _keys!868))))))

(declare-fun b!857978 () Bool)

(declare-fun res!582979 () Bool)

(assert (=> b!857978 (=> (not res!582979) (not e!478200))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857978 (= res!582979 (and (= (select (arr!23630 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26384 () Bool)

(declare-fun mapRes!26384 () Bool)

(assert (=> mapIsEmpty!26384 mapRes!26384))

(declare-fun b!857979 () Bool)

(declare-fun e!478197 () Bool)

(assert (=> b!857979 (= e!478197 true)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10948 0))(
  ( (tuple2!10949 (_1!5484 (_ BitVec 64)) (_2!5484 V!27077)) )
))
(declare-datatypes ((List!16821 0))(
  ( (Nil!16818) (Cons!16817 (h!17948 tuple2!10948) (t!23482 List!16821)) )
))
(declare-datatypes ((ListLongMap!9731 0))(
  ( (ListLongMap!9732 (toList!4881 List!16821)) )
))
(declare-fun lt!386502 () ListLongMap!9731)

(declare-fun lt!386508 () ListLongMap!9731)

(declare-fun +!2187 (ListLongMap!9731 tuple2!10948) ListLongMap!9731)

(declare-fun get!12455 (ValueCell!7822 V!27077) V!27077)

(declare-fun dynLambda!1077 (Int (_ BitVec 64)) V!27077)

(assert (=> b!857979 (= lt!386508 (+!2187 lt!386502 (tuple2!10949 (select (arr!23630 _keys!868) from!1053) (get!12455 (select (arr!23631 _values!688) from!1053) (dynLambda!1077 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!857980 () Bool)

(declare-fun res!582980 () Bool)

(assert (=> b!857980 (=> (not res!582980) (not e!478200))))

(declare-datatypes ((List!16822 0))(
  ( (Nil!16819) (Cons!16818 (h!17949 (_ BitVec 64)) (t!23483 List!16822)) )
))
(declare-fun arrayNoDuplicates!0 (array!49206 (_ BitVec 32) List!16822) Bool)

(assert (=> b!857980 (= res!582980 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16819))))

(declare-fun b!857982 () Bool)

(declare-fun e!478199 () Bool)

(declare-fun tp_is_empty!16523 () Bool)

(assert (=> b!857982 (= e!478199 tp_is_empty!16523)))

(declare-fun b!857983 () Bool)

(declare-fun res!582973 () Bool)

(assert (=> b!857983 (=> (not res!582973) (not e!478200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857983 (= res!582973 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!26384 () Bool)

(declare-fun tp!50665 () Bool)

(assert (=> mapNonEmpty!26384 (= mapRes!26384 (and tp!50665 e!478199))))

(declare-fun mapValue!26384 () ValueCell!7822)

(declare-fun mapKey!26384 () (_ BitVec 32))

(declare-fun mapRest!26384 () (Array (_ BitVec 32) ValueCell!7822))

(assert (=> mapNonEmpty!26384 (= (arr!23631 _values!688) (store mapRest!26384 mapKey!26384 mapValue!26384))))

(declare-fun b!857984 () Bool)

(declare-fun res!582975 () Bool)

(assert (=> b!857984 (=> (not res!582975) (not e!478200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857984 (= res!582975 (validMask!0 mask!1196))))

(declare-fun b!857985 () Bool)

(declare-fun e!478202 () Bool)

(assert (=> b!857985 (= e!478202 (not e!478197))))

(declare-fun res!582981 () Bool)

(assert (=> b!857985 (=> res!582981 e!478197)))

(assert (=> b!857985 (= res!582981 (not (validKeyInArray!0 (select (arr!23630 _keys!868) from!1053))))))

(declare-fun lt!386504 () ListLongMap!9731)

(assert (=> b!857985 (= lt!386504 lt!386502)))

(declare-fun v!557 () V!27077)

(declare-fun lt!386507 () ListLongMap!9731)

(assert (=> b!857985 (= lt!386502 (+!2187 lt!386507 (tuple2!10949 k!854 v!557)))))

(declare-fun minValue!654 () V!27077)

(declare-fun zeroValue!654 () V!27077)

(declare-fun lt!386506 () array!49208)

(declare-fun getCurrentListMapNoExtraKeys!2863 (array!49206 array!49208 (_ BitVec 32) (_ BitVec 32) V!27077 V!27077 (_ BitVec 32) Int) ListLongMap!9731)

(assert (=> b!857985 (= lt!386504 (getCurrentListMapNoExtraKeys!2863 _keys!868 lt!386506 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!857985 (= lt!386507 (getCurrentListMapNoExtraKeys!2863 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29216 0))(
  ( (Unit!29217) )
))
(declare-fun lt!386505 () Unit!29216)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!447 (array!49206 array!49208 (_ BitVec 32) (_ BitVec 32) V!27077 V!27077 (_ BitVec 32) (_ BitVec 64) V!27077 (_ BitVec 32) Int) Unit!29216)

(assert (=> b!857985 (= lt!386505 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!447 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857986 () Bool)

(declare-fun e!478201 () Bool)

(declare-fun e!478198 () Bool)

(assert (=> b!857986 (= e!478201 (and e!478198 mapRes!26384))))

(declare-fun condMapEmpty!26384 () Bool)

(declare-fun mapDefault!26384 () ValueCell!7822)

