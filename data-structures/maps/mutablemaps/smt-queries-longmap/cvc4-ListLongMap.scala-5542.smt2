; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73068 () Bool)

(assert start!73068)

(declare-fun b_free!13955 () Bool)

(declare-fun b_next!13955 () Bool)

(assert (=> start!73068 (= b_free!13955 (not b_next!13955))))

(declare-fun tp!49369 () Bool)

(declare-fun b_and!23087 () Bool)

(assert (=> start!73068 (= tp!49369 b_and!23087)))

(declare-fun b!848947 () Bool)

(declare-fun res!576865 () Bool)

(declare-fun e!473673 () Bool)

(assert (=> b!848947 (=> (not res!576865) (not e!473673))))

(declare-datatypes ((array!48374 0))(
  ( (array!48375 (arr!23214 (Array (_ BitVec 32) (_ BitVec 64))) (size!23655 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48374)

(declare-datatypes ((List!16506 0))(
  ( (Nil!16503) (Cons!16502 (h!17633 (_ BitVec 64)) (t!22915 List!16506)) )
))
(declare-fun arrayNoDuplicates!0 (array!48374 (_ BitVec 32) List!16506) Bool)

(assert (=> b!848947 (= res!576865 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16503))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26501 0))(
  ( (V!26502 (val!8093 Int)) )
))
(declare-datatypes ((tuple2!10604 0))(
  ( (tuple2!10605 (_1!5312 (_ BitVec 64)) (_2!5312 V!26501)) )
))
(declare-datatypes ((List!16507 0))(
  ( (Nil!16504) (Cons!16503 (h!17634 tuple2!10604) (t!22916 List!16507)) )
))
(declare-datatypes ((ListLongMap!9387 0))(
  ( (ListLongMap!9388 (toList!4709 List!16507)) )
))
(declare-fun call!37720 () ListLongMap!9387)

(declare-datatypes ((ValueCell!7606 0))(
  ( (ValueCellFull!7606 (v!10514 V!26501)) (EmptyCell!7606) )
))
(declare-datatypes ((array!48376 0))(
  ( (array!48377 (arr!23215 (Array (_ BitVec 32) ValueCell!7606)) (size!23656 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48376)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37717 () Bool)

(declare-fun minValue!654 () V!26501)

(declare-fun zeroValue!654 () V!26501)

(declare-fun getCurrentListMapNoExtraKeys!2697 (array!48374 array!48376 (_ BitVec 32) (_ BitVec 32) V!26501 V!26501 (_ BitVec 32) Int) ListLongMap!9387)

(assert (=> bm!37717 (= call!37720 (getCurrentListMapNoExtraKeys!2697 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848948 () Bool)

(declare-fun e!473672 () Bool)

(declare-fun call!37721 () ListLongMap!9387)

(assert (=> b!848948 (= e!473672 (= call!37721 call!37720))))

(declare-fun lt!382131 () array!48376)

(declare-fun bm!37718 () Bool)

(assert (=> bm!37718 (= call!37721 (getCurrentListMapNoExtraKeys!2697 _keys!868 lt!382131 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848949 () Bool)

(declare-fun res!576870 () Bool)

(assert (=> b!848949 (=> (not res!576870) (not e!473673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848949 (= res!576870 (validMask!0 mask!1196))))

(declare-fun b!848950 () Bool)

(declare-fun res!576863 () Bool)

(assert (=> b!848950 (=> (not res!576863) (not e!473673))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848950 (= res!576863 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25736 () Bool)

(declare-fun mapRes!25736 () Bool)

(assert (=> mapIsEmpty!25736 mapRes!25736))

(declare-fun res!576864 () Bool)

(assert (=> start!73068 (=> (not res!576864) (not e!473673))))

(assert (=> start!73068 (= res!576864 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23655 _keys!868))))))

(assert (=> start!73068 e!473673))

(declare-fun tp_is_empty!16091 () Bool)

(assert (=> start!73068 tp_is_empty!16091))

(assert (=> start!73068 true))

(assert (=> start!73068 tp!49369))

(declare-fun array_inv!18414 (array!48374) Bool)

(assert (=> start!73068 (array_inv!18414 _keys!868)))

(declare-fun e!473676 () Bool)

(declare-fun array_inv!18415 (array!48376) Bool)

(assert (=> start!73068 (and (array_inv!18415 _values!688) e!473676)))

(declare-fun b!848951 () Bool)

(declare-fun e!473670 () Bool)

(assert (=> b!848951 (= e!473673 e!473670)))

(declare-fun res!576861 () Bool)

(assert (=> b!848951 (=> (not res!576861) (not e!473670))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848951 (= res!576861 (= from!1053 i!612))))

(declare-fun lt!382134 () ListLongMap!9387)

(assert (=> b!848951 (= lt!382134 (getCurrentListMapNoExtraKeys!2697 _keys!868 lt!382131 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26501)

(assert (=> b!848951 (= lt!382131 (array!48377 (store (arr!23215 _values!688) i!612 (ValueCellFull!7606 v!557)) (size!23656 _values!688)))))

(declare-fun lt!382133 () ListLongMap!9387)

(assert (=> b!848951 (= lt!382133 (getCurrentListMapNoExtraKeys!2697 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848952 () Bool)

(declare-fun e!473675 () Bool)

(assert (=> b!848952 (= e!473675 true)))

(declare-fun +!2055 (ListLongMap!9387 tuple2!10604) ListLongMap!9387)

(declare-fun get!12225 (ValueCell!7606 V!26501) V!26501)

(declare-fun dynLambda!991 (Int (_ BitVec 64)) V!26501)

(assert (=> b!848952 (= lt!382134 (+!2055 (getCurrentListMapNoExtraKeys!2697 _keys!868 lt!382131 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10605 (select (arr!23214 _keys!868) from!1053) (get!12225 (select (arr!23215 lt!382131) from!1053) (dynLambda!991 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848953 () Bool)

(assert (=> b!848953 (= e!473672 (= call!37721 (+!2055 call!37720 (tuple2!10605 k!854 v!557))))))

(declare-fun b!848954 () Bool)

(declare-fun e!473674 () Bool)

(assert (=> b!848954 (= e!473676 (and e!473674 mapRes!25736))))

(declare-fun condMapEmpty!25736 () Bool)

(declare-fun mapDefault!25736 () ValueCell!7606)

