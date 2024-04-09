; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73946 () Bool)

(assert start!73946)

(declare-fun b_free!14833 () Bool)

(declare-fun b_next!14833 () Bool)

(assert (=> start!73946 (= b_free!14833 (not b_next!14833))))

(declare-fun tp!52003 () Bool)

(declare-fun b_and!24603 () Bool)

(assert (=> start!73946 (= tp!52003 b_and!24603)))

(declare-fun b!868497 () Bool)

(declare-fun res!590280 () Bool)

(declare-fun e!483745 () Bool)

(assert (=> b!868497 (=> (not res!590280) (not e!483745))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868497 (= res!590280 (validKeyInArray!0 k!854))))

(declare-fun b!868498 () Bool)

(declare-fun res!590275 () Bool)

(assert (=> b!868498 (=> (not res!590275) (not e!483745))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50072 0))(
  ( (array!50073 (arr!24063 (Array (_ BitVec 32) (_ BitVec 64))) (size!24504 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50072)

(assert (=> b!868498 (= res!590275 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24504 _keys!868))))))

(declare-fun b!868499 () Bool)

(declare-fun res!590277 () Bool)

(assert (=> b!868499 (=> (not res!590277) (not e!483745))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50072 (_ BitVec 32)) Bool)

(assert (=> b!868499 (= res!590277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868500 () Bool)

(declare-fun e!483746 () Bool)

(assert (=> b!868500 (= e!483745 e!483746)))

(declare-fun res!590274 () Bool)

(assert (=> b!868500 (=> (not res!590274) (not e!483746))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868500 (= res!590274 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27673 0))(
  ( (V!27674 (val!8532 Int)) )
))
(declare-datatypes ((tuple2!11324 0))(
  ( (tuple2!11325 (_1!5672 (_ BitVec 64)) (_2!5672 V!27673)) )
))
(declare-datatypes ((List!17184 0))(
  ( (Nil!17181) (Cons!17180 (h!18311 tuple2!11324) (t!24229 List!17184)) )
))
(declare-datatypes ((ListLongMap!10107 0))(
  ( (ListLongMap!10108 (toList!5069 List!17184)) )
))
(declare-fun lt!394483 () ListLongMap!10107)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8045 0))(
  ( (ValueCellFull!8045 (v!10953 V!27673)) (EmptyCell!8045) )
))
(declare-datatypes ((array!50074 0))(
  ( (array!50075 (arr!24064 (Array (_ BitVec 32) ValueCell!8045)) (size!24505 (_ BitVec 32))) )
))
(declare-fun lt!394482 () array!50074)

(declare-fun minValue!654 () V!27673)

(declare-fun zeroValue!654 () V!27673)

(declare-fun getCurrentListMapNoExtraKeys!3033 (array!50072 array!50074 (_ BitVec 32) (_ BitVec 32) V!27673 V!27673 (_ BitVec 32) Int) ListLongMap!10107)

(assert (=> b!868500 (= lt!394483 (getCurrentListMapNoExtraKeys!3033 _keys!868 lt!394482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27673)

(declare-fun _values!688 () array!50074)

(assert (=> b!868500 (= lt!394482 (array!50075 (store (arr!24064 _values!688) i!612 (ValueCellFull!8045 v!557)) (size!24505 _values!688)))))

(declare-fun lt!394484 () ListLongMap!10107)

(assert (=> b!868500 (= lt!394484 (getCurrentListMapNoExtraKeys!3033 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868501 () Bool)

(assert (=> b!868501 (= e!483746 (not true))))

(declare-fun +!2359 (ListLongMap!10107 tuple2!11324) ListLongMap!10107)

(assert (=> b!868501 (= (getCurrentListMapNoExtraKeys!3033 _keys!868 lt!394482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2359 (getCurrentListMapNoExtraKeys!3033 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11325 k!854 v!557)))))

(declare-datatypes ((Unit!29768 0))(
  ( (Unit!29769) )
))
(declare-fun lt!394485 () Unit!29768)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!590 (array!50072 array!50074 (_ BitVec 32) (_ BitVec 32) V!27673 V!27673 (_ BitVec 32) (_ BitVec 64) V!27673 (_ BitVec 32) Int) Unit!29768)

(assert (=> b!868501 (= lt!394485 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!590 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868502 () Bool)

(declare-fun res!590273 () Bool)

(assert (=> b!868502 (=> (not res!590273) (not e!483745))))

(declare-datatypes ((List!17185 0))(
  ( (Nil!17182) (Cons!17181 (h!18312 (_ BitVec 64)) (t!24230 List!17185)) )
))
(declare-fun arrayNoDuplicates!0 (array!50072 (_ BitVec 32) List!17185) Bool)

(assert (=> b!868502 (= res!590273 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17182))))

(declare-fun b!868503 () Bool)

(declare-fun e!483744 () Bool)

(declare-fun e!483747 () Bool)

(declare-fun mapRes!27053 () Bool)

(assert (=> b!868503 (= e!483744 (and e!483747 mapRes!27053))))

(declare-fun condMapEmpty!27053 () Bool)

(declare-fun mapDefault!27053 () ValueCell!8045)

