; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73638 () Bool)

(assert start!73638)

(declare-fun b_free!14525 () Bool)

(declare-fun b_next!14525 () Bool)

(assert (=> start!73638 (= b_free!14525 (not b_next!14525))))

(declare-fun tp!51080 () Bool)

(declare-fun b_and!24047 () Bool)

(assert (=> start!73638 (= tp!51080 b_and!24047)))

(declare-fun b!861271 () Bool)

(declare-fun res!585424 () Bool)

(declare-fun e!479912 () Bool)

(assert (=> b!861271 (=> (not res!585424) (not e!479912))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861271 (= res!585424 (validKeyInArray!0 k!854))))

(declare-fun b!861272 () Bool)

(declare-fun res!585427 () Bool)

(assert (=> b!861272 (=> (not res!585427) (not e!479912))))

(declare-datatypes ((array!49470 0))(
  ( (array!49471 (arr!23762 (Array (_ BitVec 32) (_ BitVec 64))) (size!24203 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49470)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49470 (_ BitVec 32)) Bool)

(assert (=> b!861272 (= res!585427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!585422 () Bool)

(assert (=> start!73638 (=> (not res!585422) (not e!479912))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73638 (= res!585422 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24203 _keys!868))))))

(assert (=> start!73638 e!479912))

(declare-fun tp_is_empty!16661 () Bool)

(assert (=> start!73638 tp_is_empty!16661))

(assert (=> start!73638 true))

(assert (=> start!73638 tp!51080))

(declare-fun array_inv!18782 (array!49470) Bool)

(assert (=> start!73638 (array_inv!18782 _keys!868)))

(declare-datatypes ((V!27261 0))(
  ( (V!27262 (val!8378 Int)) )
))
(declare-datatypes ((ValueCell!7891 0))(
  ( (ValueCellFull!7891 (v!10799 V!27261)) (EmptyCell!7891) )
))
(declare-datatypes ((array!49472 0))(
  ( (array!49473 (arr!23763 (Array (_ BitVec 32) ValueCell!7891)) (size!24204 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49472)

(declare-fun e!479906 () Bool)

(declare-fun array_inv!18783 (array!49472) Bool)

(assert (=> start!73638 (and (array_inv!18783 _values!688) e!479906)))

(declare-fun b!861273 () Bool)

(declare-fun e!479909 () Bool)

(assert (=> b!861273 (= e!479909 tp_is_empty!16661)))

(declare-fun b!861274 () Bool)

(declare-fun res!585428 () Bool)

(assert (=> b!861274 (=> (not res!585428) (not e!479912))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!861274 (= res!585428 (and (= (size!24204 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24203 _keys!868) (size!24204 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26591 () Bool)

(declare-fun mapRes!26591 () Bool)

(assert (=> mapIsEmpty!26591 mapRes!26591))

(declare-fun b!861275 () Bool)

(declare-fun e!479910 () Bool)

(assert (=> b!861275 (= e!479910 true)))

(assert (=> b!861275 (not (= (select (arr!23762 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29342 0))(
  ( (Unit!29343) )
))
(declare-fun lt!388427 () Unit!29342)

(declare-fun e!479908 () Unit!29342)

(assert (=> b!861275 (= lt!388427 e!479908)))

(declare-fun c!91926 () Bool)

(assert (=> b!861275 (= c!91926 (= (select (arr!23762 _keys!868) from!1053) k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11066 0))(
  ( (tuple2!11067 (_1!5543 (_ BitVec 64)) (_2!5543 V!27261)) )
))
(declare-datatypes ((List!16936 0))(
  ( (Nil!16933) (Cons!16932 (h!18063 tuple2!11066) (t!23735 List!16936)) )
))
(declare-datatypes ((ListLongMap!9849 0))(
  ( (ListLongMap!9850 (toList!4940 List!16936)) )
))
(declare-fun lt!388426 () ListLongMap!9849)

(declare-fun lt!388428 () ListLongMap!9849)

(declare-fun +!2240 (ListLongMap!9849 tuple2!11066) ListLongMap!9849)

(declare-fun get!12546 (ValueCell!7891 V!27261) V!27261)

(declare-fun dynLambda!1122 (Int (_ BitVec 64)) V!27261)

(assert (=> b!861275 (= lt!388428 (+!2240 lt!388426 (tuple2!11067 (select (arr!23762 _keys!868) from!1053) (get!12546 (select (arr!23763 _values!688) from!1053) (dynLambda!1122 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861276 () Bool)

(declare-fun Unit!29344 () Unit!29342)

(assert (=> b!861276 (= e!479908 Unit!29344)))

(declare-fun b!861277 () Bool)

(declare-fun e!479907 () Bool)

(assert (=> b!861277 (= e!479907 tp_is_empty!16661)))

(declare-fun b!861278 () Bool)

(declare-fun res!585421 () Bool)

(assert (=> b!861278 (=> (not res!585421) (not e!479912))))

(declare-datatypes ((List!16937 0))(
  ( (Nil!16934) (Cons!16933 (h!18064 (_ BitVec 64)) (t!23736 List!16937)) )
))
(declare-fun arrayNoDuplicates!0 (array!49470 (_ BitVec 32) List!16937) Bool)

(assert (=> b!861278 (= res!585421 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16934))))

(declare-fun b!861279 () Bool)

(declare-fun res!585420 () Bool)

(assert (=> b!861279 (=> (not res!585420) (not e!479912))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861279 (= res!585420 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24203 _keys!868))))))

(declare-fun b!861280 () Bool)

(declare-fun e!479911 () Bool)

(assert (=> b!861280 (= e!479911 (not e!479910))))

(declare-fun res!585426 () Bool)

(assert (=> b!861280 (=> res!585426 e!479910)))

(assert (=> b!861280 (= res!585426 (not (validKeyInArray!0 (select (arr!23762 _keys!868) from!1053))))))

(declare-fun lt!388434 () ListLongMap!9849)

(assert (=> b!861280 (= lt!388434 lt!388426)))

(declare-fun lt!388430 () ListLongMap!9849)

(declare-fun v!557 () V!27261)

(assert (=> b!861280 (= lt!388426 (+!2240 lt!388430 (tuple2!11067 k!854 v!557)))))

(declare-fun lt!388432 () array!49472)

(declare-fun minValue!654 () V!27261)

(declare-fun zeroValue!654 () V!27261)

(declare-fun getCurrentListMapNoExtraKeys!2919 (array!49470 array!49472 (_ BitVec 32) (_ BitVec 32) V!27261 V!27261 (_ BitVec 32) Int) ListLongMap!9849)

(assert (=> b!861280 (= lt!388434 (getCurrentListMapNoExtraKeys!2919 _keys!868 lt!388432 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861280 (= lt!388430 (getCurrentListMapNoExtraKeys!2919 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388424 () Unit!29342)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!492 (array!49470 array!49472 (_ BitVec 32) (_ BitVec 32) V!27261 V!27261 (_ BitVec 32) (_ BitVec 64) V!27261 (_ BitVec 32) Int) Unit!29342)

(assert (=> b!861280 (= lt!388424 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!492 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861281 () Bool)

(declare-fun res!585423 () Bool)

(assert (=> b!861281 (=> (not res!585423) (not e!479912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861281 (= res!585423 (validMask!0 mask!1196))))

(declare-fun b!861282 () Bool)

(declare-fun res!585429 () Bool)

(assert (=> b!861282 (=> (not res!585429) (not e!479912))))

(assert (=> b!861282 (= res!585429 (and (= (select (arr!23762 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861283 () Bool)

(assert (=> b!861283 (= e!479906 (and e!479909 mapRes!26591))))

(declare-fun condMapEmpty!26591 () Bool)

(declare-fun mapDefault!26591 () ValueCell!7891)

