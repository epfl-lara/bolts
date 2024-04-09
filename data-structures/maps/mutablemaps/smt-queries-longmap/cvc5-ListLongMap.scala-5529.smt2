; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72986 () Bool)

(assert start!72986)

(declare-fun b_free!13873 () Bool)

(declare-fun b_next!13873 () Bool)

(assert (=> start!72986 (= b_free!13873 (not b_next!13873))))

(declare-fun tp!49124 () Bool)

(declare-fun b_and!22977 () Bool)

(assert (=> start!72986 (= tp!49124 b_and!22977)))

(declare-fun b!847144 () Bool)

(declare-fun res!575703 () Bool)

(declare-fun e!472758 () Bool)

(assert (=> b!847144 (=> (not res!575703) (not e!472758))))

(declare-datatypes ((array!48214 0))(
  ( (array!48215 (arr!23134 (Array (_ BitVec 32) (_ BitVec 64))) (size!23575 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48214)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48214 (_ BitVec 32)) Bool)

(assert (=> b!847144 (= res!575703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847145 () Bool)

(declare-fun res!575709 () Bool)

(assert (=> b!847145 (=> (not res!575709) (not e!472758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847145 (= res!575709 (validMask!0 mask!1196))))

(declare-fun b!847146 () Bool)

(declare-fun res!575701 () Bool)

(assert (=> b!847146 (=> (not res!575701) (not e!472758))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847146 (= res!575701 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23575 _keys!868))))))

(declare-fun b!847147 () Bool)

(declare-fun res!575702 () Bool)

(assert (=> b!847147 (=> (not res!575702) (not e!472758))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847147 (= res!575702 (and (= (select (arr!23134 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-datatypes ((V!26393 0))(
  ( (V!26394 (val!8052 Int)) )
))
(declare-datatypes ((ValueCell!7565 0))(
  ( (ValueCellFull!7565 (v!10473 V!26393)) (EmptyCell!7565) )
))
(declare-datatypes ((array!48216 0))(
  ( (array!48217 (arr!23135 (Array (_ BitVec 32) ValueCell!7565)) (size!23576 (_ BitVec 32))) )
))
(declare-fun lt!381640 () array!48216)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10532 0))(
  ( (tuple2!10533 (_1!5276 (_ BitVec 64)) (_2!5276 V!26393)) )
))
(declare-datatypes ((List!16446 0))(
  ( (Nil!16443) (Cons!16442 (h!17573 tuple2!10532) (t!22825 List!16446)) )
))
(declare-datatypes ((ListLongMap!9315 0))(
  ( (ListLongMap!9316 (toList!4673 List!16446)) )
))
(declare-fun call!37474 () ListLongMap!9315)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!37471 () Bool)

(declare-fun minValue!654 () V!26393)

(declare-fun zeroValue!654 () V!26393)

(declare-fun getCurrentListMapNoExtraKeys!2662 (array!48214 array!48216 (_ BitVec 32) (_ BitVec 32) V!26393 V!26393 (_ BitVec 32) Int) ListLongMap!9315)

(assert (=> bm!37471 (= call!37474 (getCurrentListMapNoExtraKeys!2662 _keys!868 lt!381640 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847148 () Bool)

(declare-fun e!472756 () Bool)

(assert (=> b!847148 (= e!472758 e!472756)))

(declare-fun res!575706 () Bool)

(assert (=> b!847148 (=> (not res!575706) (not e!472756))))

(assert (=> b!847148 (= res!575706 (= from!1053 i!612))))

(declare-fun lt!381642 () ListLongMap!9315)

(assert (=> b!847148 (= lt!381642 (getCurrentListMapNoExtraKeys!2662 _keys!868 lt!381640 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26393)

(declare-fun _values!688 () array!48216)

(assert (=> b!847148 (= lt!381640 (array!48217 (store (arr!23135 _values!688) i!612 (ValueCellFull!7565 v!557)) (size!23576 _values!688)))))

(declare-fun lt!381639 () ListLongMap!9315)

(assert (=> b!847148 (= lt!381639 (getCurrentListMapNoExtraKeys!2662 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847149 () Bool)

(declare-fun call!37475 () ListLongMap!9315)

(declare-fun e!472760 () Bool)

(declare-fun +!2031 (ListLongMap!9315 tuple2!10532) ListLongMap!9315)

(assert (=> b!847149 (= e!472760 (= call!37474 (+!2031 call!37475 (tuple2!10533 k!854 v!557))))))

(declare-fun b!847150 () Bool)

(declare-fun e!472757 () Bool)

(declare-fun tp_is_empty!16009 () Bool)

(assert (=> b!847150 (= e!472757 tp_is_empty!16009)))

(declare-fun b!847151 () Bool)

(declare-fun res!575707 () Bool)

(assert (=> b!847151 (=> (not res!575707) (not e!472758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847151 (= res!575707 (validKeyInArray!0 k!854))))

(declare-fun b!847152 () Bool)

(declare-fun e!472761 () Bool)

(assert (=> b!847152 (= e!472761 tp_is_empty!16009)))

(declare-fun b!847153 () Bool)

(declare-fun res!575704 () Bool)

(assert (=> b!847153 (=> (not res!575704) (not e!472758))))

(declare-datatypes ((List!16447 0))(
  ( (Nil!16444) (Cons!16443 (h!17574 (_ BitVec 64)) (t!22826 List!16447)) )
))
(declare-fun arrayNoDuplicates!0 (array!48214 (_ BitVec 32) List!16447) Bool)

(assert (=> b!847153 (= res!575704 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16444))))

(declare-fun bm!37472 () Bool)

(assert (=> bm!37472 (= call!37475 (getCurrentListMapNoExtraKeys!2662 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!575708 () Bool)

(assert (=> start!72986 (=> (not res!575708) (not e!472758))))

(assert (=> start!72986 (= res!575708 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23575 _keys!868))))))

(assert (=> start!72986 e!472758))

(assert (=> start!72986 tp_is_empty!16009))

(assert (=> start!72986 true))

(assert (=> start!72986 tp!49124))

(declare-fun array_inv!18356 (array!48214) Bool)

(assert (=> start!72986 (array_inv!18356 _keys!868)))

(declare-fun e!472759 () Bool)

(declare-fun array_inv!18357 (array!48216) Bool)

(assert (=> start!72986 (and (array_inv!18357 _values!688) e!472759)))

(declare-fun mapIsEmpty!25613 () Bool)

(declare-fun mapRes!25613 () Bool)

(assert (=> mapIsEmpty!25613 mapRes!25613))

(declare-fun mapNonEmpty!25613 () Bool)

(declare-fun tp!49123 () Bool)

(assert (=> mapNonEmpty!25613 (= mapRes!25613 (and tp!49123 e!472761))))

(declare-fun mapValue!25613 () ValueCell!7565)

(declare-fun mapKey!25613 () (_ BitVec 32))

(declare-fun mapRest!25613 () (Array (_ BitVec 32) ValueCell!7565))

(assert (=> mapNonEmpty!25613 (= (arr!23135 _values!688) (store mapRest!25613 mapKey!25613 mapValue!25613))))

(declare-fun b!847154 () Bool)

(assert (=> b!847154 (= e!472760 (= call!37474 call!37475))))

(declare-fun b!847155 () Bool)

(assert (=> b!847155 (= e!472756 (not true))))

(assert (=> b!847155 e!472760))

(declare-fun c!91398 () Bool)

(assert (=> b!847155 (= c!91398 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28918 0))(
  ( (Unit!28919) )
))
(declare-fun lt!381641 () Unit!28918)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!308 (array!48214 array!48216 (_ BitVec 32) (_ BitVec 32) V!26393 V!26393 (_ BitVec 32) (_ BitVec 64) V!26393 (_ BitVec 32) Int) Unit!28918)

(assert (=> b!847155 (= lt!381641 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!308 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847156 () Bool)

(assert (=> b!847156 (= e!472759 (and e!472757 mapRes!25613))))

(declare-fun condMapEmpty!25613 () Bool)

(declare-fun mapDefault!25613 () ValueCell!7565)

