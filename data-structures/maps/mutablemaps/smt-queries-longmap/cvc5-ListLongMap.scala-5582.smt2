; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73304 () Bool)

(assert start!73304)

(declare-fun b_free!14191 () Bool)

(declare-fun b_next!14191 () Bool)

(assert (=> start!73304 (= b_free!14191 (not b_next!14191))))

(declare-fun tp!50078 () Bool)

(declare-fun b_and!23559 () Bool)

(assert (=> start!73304 (= tp!50078 b_and!23559)))

(declare-fun b!854493 () Bool)

(declare-fun res!580401 () Bool)

(declare-fun e!476506 () Bool)

(assert (=> b!854493 (=> (not res!580401) (not e!476506))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854493 (= res!580401 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26090 () Bool)

(declare-fun mapRes!26090 () Bool)

(declare-fun tp!50077 () Bool)

(declare-fun e!476502 () Bool)

(assert (=> mapNonEmpty!26090 (= mapRes!26090 (and tp!50077 e!476502))))

(declare-datatypes ((V!26817 0))(
  ( (V!26818 (val!8211 Int)) )
))
(declare-datatypes ((ValueCell!7724 0))(
  ( (ValueCellFull!7724 (v!10632 V!26817)) (EmptyCell!7724) )
))
(declare-fun mapRest!26090 () (Array (_ BitVec 32) ValueCell!7724))

(declare-fun mapValue!26090 () ValueCell!7724)

(declare-fun mapKey!26090 () (_ BitVec 32))

(declare-datatypes ((array!48834 0))(
  ( (array!48835 (arr!23444 (Array (_ BitVec 32) ValueCell!7724)) (size!23885 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48834)

(assert (=> mapNonEmpty!26090 (= (arr!23444 _values!688) (store mapRest!26090 mapKey!26090 mapValue!26090))))

(declare-fun b!854494 () Bool)

(declare-fun res!580407 () Bool)

(assert (=> b!854494 (=> (not res!580407) (not e!476506))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48836 0))(
  ( (array!48837 (arr!23445 (Array (_ BitVec 32) (_ BitVec 64))) (size!23886 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48836)

(assert (=> b!854494 (= res!580407 (and (= (size!23885 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23886 _keys!868) (size!23885 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854495 () Bool)

(declare-fun res!580410 () Bool)

(assert (=> b!854495 (=> (not res!580410) (not e!476506))))

(declare-datatypes ((List!16684 0))(
  ( (Nil!16681) (Cons!16680 (h!17811 (_ BitVec 64)) (t!23329 List!16684)) )
))
(declare-fun arrayNoDuplicates!0 (array!48836 (_ BitVec 32) List!16684) Bool)

(assert (=> b!854495 (= res!580410 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16681))))

(declare-fun mapIsEmpty!26090 () Bool)

(assert (=> mapIsEmpty!26090 mapRes!26090))

(declare-fun b!854496 () Bool)

(declare-fun e!476505 () Bool)

(declare-fun tp_is_empty!16327 () Bool)

(assert (=> b!854496 (= e!476505 tp_is_empty!16327)))

(declare-fun res!580408 () Bool)

(assert (=> start!73304 (=> (not res!580408) (not e!476506))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73304 (= res!580408 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23886 _keys!868))))))

(assert (=> start!73304 e!476506))

(assert (=> start!73304 tp_is_empty!16327))

(assert (=> start!73304 true))

(assert (=> start!73304 tp!50078))

(declare-fun array_inv!18562 (array!48836) Bool)

(assert (=> start!73304 (array_inv!18562 _keys!868)))

(declare-fun e!476504 () Bool)

(declare-fun array_inv!18563 (array!48834) Bool)

(assert (=> start!73304 (and (array_inv!18563 _values!688) e!476504)))

(declare-fun b!854497 () Bool)

(declare-fun e!476508 () Bool)

(declare-datatypes ((tuple2!10812 0))(
  ( (tuple2!10813 (_1!5416 (_ BitVec 64)) (_2!5416 V!26817)) )
))
(declare-datatypes ((List!16685 0))(
  ( (Nil!16682) (Cons!16681 (h!17812 tuple2!10812) (t!23330 List!16685)) )
))
(declare-datatypes ((ListLongMap!9595 0))(
  ( (ListLongMap!9596 (toList!4813 List!16685)) )
))
(declare-fun call!38428 () ListLongMap!9595)

(declare-fun call!38429 () ListLongMap!9595)

(assert (=> b!854497 (= e!476508 (= call!38428 call!38429))))

(declare-fun b!854498 () Bool)

(declare-fun e!476501 () Bool)

(declare-fun e!476503 () Bool)

(assert (=> b!854498 (= e!476501 (not e!476503))))

(declare-fun res!580406 () Bool)

(assert (=> b!854498 (=> res!580406 e!476503)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854498 (= res!580406 (not (validKeyInArray!0 (select (arr!23445 _keys!868) from!1053))))))

(assert (=> b!854498 e!476508))

(declare-fun c!91875 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854498 (= c!91875 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29138 0))(
  ( (Unit!29139) )
))
(declare-fun lt!385449 () Unit!29138)

(declare-fun v!557 () V!26817)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26817)

(declare-fun zeroValue!654 () V!26817)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!408 (array!48836 array!48834 (_ BitVec 32) (_ BitVec 32) V!26817 V!26817 (_ BitVec 32) (_ BitVec 64) V!26817 (_ BitVec 32) Int) Unit!29138)

(assert (=> b!854498 (= lt!385449 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!408 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854499 () Bool)

(declare-fun +!2148 (ListLongMap!9595 tuple2!10812) ListLongMap!9595)

(assert (=> b!854499 (= e!476508 (= call!38428 (+!2148 call!38429 (tuple2!10813 k!854 v!557))))))

(declare-fun b!854500 () Bool)

(assert (=> b!854500 (= e!476506 e!476501)))

(declare-fun res!580404 () Bool)

(assert (=> b!854500 (=> (not res!580404) (not e!476501))))

(assert (=> b!854500 (= res!580404 (= from!1053 i!612))))

(declare-fun lt!385454 () array!48834)

(declare-fun lt!385455 () ListLongMap!9595)

(declare-fun getCurrentListMapNoExtraKeys!2795 (array!48836 array!48834 (_ BitVec 32) (_ BitVec 32) V!26817 V!26817 (_ BitVec 32) Int) ListLongMap!9595)

(assert (=> b!854500 (= lt!385455 (getCurrentListMapNoExtraKeys!2795 _keys!868 lt!385454 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!854500 (= lt!385454 (array!48835 (store (arr!23444 _values!688) i!612 (ValueCellFull!7724 v!557)) (size!23885 _values!688)))))

(declare-fun lt!385458 () ListLongMap!9595)

(assert (=> b!854500 (= lt!385458 (getCurrentListMapNoExtraKeys!2795 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854501 () Bool)

(assert (=> b!854501 (= e!476504 (and e!476505 mapRes!26090))))

(declare-fun condMapEmpty!26090 () Bool)

(declare-fun mapDefault!26090 () ValueCell!7724)

