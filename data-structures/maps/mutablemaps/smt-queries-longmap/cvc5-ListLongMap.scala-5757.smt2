; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74398 () Bool)

(assert start!74398)

(declare-fun b_free!15133 () Bool)

(declare-fun b_next!15133 () Bool)

(assert (=> start!74398 (= b_free!15133 (not b_next!15133))))

(declare-fun tp!53074 () Bool)

(declare-fun b_and!24927 () Bool)

(assert (=> start!74398 (= tp!53074 b_and!24927)))

(declare-fun b!875362 () Bool)

(declare-fun res!595009 () Bool)

(declare-fun e!487344 () Bool)

(assert (=> b!875362 (=> (not res!595009) (not e!487344))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50864 0))(
  ( (array!50865 (arr!24456 (Array (_ BitVec 32) (_ BitVec 64))) (size!24897 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50864)

(declare-datatypes ((V!28217 0))(
  ( (V!28218 (val!8736 Int)) )
))
(declare-datatypes ((ValueCell!8249 0))(
  ( (ValueCellFull!8249 (v!11161 V!28217)) (EmptyCell!8249) )
))
(declare-datatypes ((array!50866 0))(
  ( (array!50867 (arr!24457 (Array (_ BitVec 32) ValueCell!8249)) (size!24898 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50866)

(assert (=> b!875362 (= res!595009 (and (= (size!24898 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24897 _keys!868) (size!24898 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875363 () Bool)

(declare-fun res!595008 () Bool)

(assert (=> b!875363 (=> (not res!595008) (not e!487344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50864 (_ BitVec 32)) Bool)

(assert (=> b!875363 (= res!595008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun lt!396147 () array!50866)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38621 () Bool)

(declare-datatypes ((tuple2!11550 0))(
  ( (tuple2!11551 (_1!5785 (_ BitVec 64)) (_2!5785 V!28217)) )
))
(declare-datatypes ((List!17437 0))(
  ( (Nil!17434) (Cons!17433 (h!18564 tuple2!11550) (t!24486 List!17437)) )
))
(declare-datatypes ((ListLongMap!10333 0))(
  ( (ListLongMap!10334 (toList!5182 List!17437)) )
))
(declare-fun call!38624 () ListLongMap!10333)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28217)

(declare-fun zeroValue!654 () V!28217)

(declare-fun getCurrentListMapNoExtraKeys!3145 (array!50864 array!50866 (_ BitVec 32) (_ BitVec 32) V!28217 V!28217 (_ BitVec 32) Int) ListLongMap!10333)

(assert (=> bm!38621 (= call!38624 (getCurrentListMapNoExtraKeys!3145 _keys!868 lt!396147 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38622 () Bool)

(declare-fun call!38625 () ListLongMap!10333)

(assert (=> bm!38622 (= call!38625 (getCurrentListMapNoExtraKeys!3145 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875364 () Bool)

(declare-fun e!487351 () Bool)

(assert (=> b!875364 (= e!487344 e!487351)))

(declare-fun res!595011 () Bool)

(assert (=> b!875364 (=> (not res!595011) (not e!487351))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875364 (= res!595011 (= from!1053 i!612))))

(declare-fun lt!396148 () ListLongMap!10333)

(assert (=> b!875364 (= lt!396148 (getCurrentListMapNoExtraKeys!3145 _keys!868 lt!396147 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28217)

(assert (=> b!875364 (= lt!396147 (array!50867 (store (arr!24457 _values!688) i!612 (ValueCellFull!8249 v!557)) (size!24898 _values!688)))))

(declare-fun lt!396145 () ListLongMap!10333)

(assert (=> b!875364 (= lt!396145 (getCurrentListMapNoExtraKeys!3145 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875365 () Bool)

(declare-fun res!595004 () Bool)

(assert (=> b!875365 (=> (not res!595004) (not e!487344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875365 (= res!595004 (validMask!0 mask!1196))))

(declare-fun b!875366 () Bool)

(declare-fun res!595003 () Bool)

(assert (=> b!875366 (=> (not res!595003) (not e!487344))))

(declare-datatypes ((List!17438 0))(
  ( (Nil!17435) (Cons!17434 (h!18565 (_ BitVec 64)) (t!24487 List!17438)) )
))
(declare-fun arrayNoDuplicates!0 (array!50864 (_ BitVec 32) List!17438) Bool)

(assert (=> b!875366 (= res!595003 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17435))))

(declare-fun b!875367 () Bool)

(declare-fun e!487348 () Bool)

(assert (=> b!875367 (= e!487351 (not e!487348))))

(declare-fun res!595007 () Bool)

(assert (=> b!875367 (=> res!595007 e!487348)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875367 (= res!595007 (not (validKeyInArray!0 (select (arr!24456 _keys!868) from!1053))))))

(declare-fun e!487349 () Bool)

(assert (=> b!875367 e!487349))

(declare-fun c!92431 () Bool)

(assert (=> b!875367 (= c!92431 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29906 0))(
  ( (Unit!29907) )
))
(declare-fun lt!396146 () Unit!29906)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!657 (array!50864 array!50866 (_ BitVec 32) (_ BitVec 32) V!28217 V!28217 (_ BitVec 32) (_ BitVec 64) V!28217 (_ BitVec 32) Int) Unit!29906)

(assert (=> b!875367 (= lt!396146 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!657 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27674 () Bool)

(declare-fun mapRes!27674 () Bool)

(assert (=> mapIsEmpty!27674 mapRes!27674))

(declare-fun b!875368 () Bool)

(declare-fun e!487350 () Bool)

(declare-fun tp_is_empty!17377 () Bool)

(assert (=> b!875368 (= e!487350 tp_is_empty!17377)))

(declare-fun b!875369 () Bool)

(declare-fun e!487346 () Bool)

(declare-fun e!487345 () Bool)

(assert (=> b!875369 (= e!487346 (and e!487345 mapRes!27674))))

(declare-fun condMapEmpty!27674 () Bool)

(declare-fun mapDefault!27674 () ValueCell!8249)

