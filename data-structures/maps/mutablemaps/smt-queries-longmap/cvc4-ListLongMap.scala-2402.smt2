; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38042 () Bool)

(assert start!38042)

(declare-fun b_free!8981 () Bool)

(declare-fun b_next!8981 () Bool)

(assert (=> start!38042 (= b_free!8981 (not b_next!8981))))

(declare-fun tp!31715 () Bool)

(declare-fun b_and!16325 () Bool)

(assert (=> start!38042 (= tp!31715 b_and!16325)))

(declare-fun mapIsEmpty!16065 () Bool)

(declare-fun mapRes!16065 () Bool)

(assert (=> mapIsEmpty!16065 mapRes!16065))

(declare-fun b!391287 () Bool)

(declare-fun e!237009 () Bool)

(declare-fun e!237007 () Bool)

(assert (=> b!391287 (= e!237009 (not e!237007))))

(declare-fun res!224044 () Bool)

(assert (=> b!391287 (=> res!224044 e!237007)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391287 (= res!224044 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13975 0))(
  ( (V!13976 (val!4871 Int)) )
))
(declare-datatypes ((ValueCell!4483 0))(
  ( (ValueCellFull!4483 (v!7092 V!13975)) (EmptyCell!4483) )
))
(declare-datatypes ((array!23185 0))(
  ( (array!23186 (arr!11051 (Array (_ BitVec 32) ValueCell!4483)) (size!11403 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23185)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6502 0))(
  ( (tuple2!6503 (_1!3261 (_ BitVec 64)) (_2!3261 V!13975)) )
))
(declare-datatypes ((List!6384 0))(
  ( (Nil!6381) (Cons!6380 (h!7236 tuple2!6502) (t!11556 List!6384)) )
))
(declare-datatypes ((ListLongMap!5429 0))(
  ( (ListLongMap!5430 (toList!2730 List!6384)) )
))
(declare-fun lt!184711 () ListLongMap!5429)

(declare-fun zeroValue!472 () V!13975)

(declare-datatypes ((array!23187 0))(
  ( (array!23188 (arr!11052 (Array (_ BitVec 32) (_ BitVec 64))) (size!11404 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23187)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13975)

(declare-fun getCurrentListMap!2096 (array!23187 array!23185 (_ BitVec 32) (_ BitVec 32) V!13975 V!13975 (_ BitVec 32) Int) ListLongMap!5429)

(assert (=> b!391287 (= lt!184711 (getCurrentListMap!2096 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184709 () array!23185)

(declare-fun lt!184708 () ListLongMap!5429)

(declare-fun lt!184712 () array!23187)

(assert (=> b!391287 (= lt!184708 (getCurrentListMap!2096 lt!184712 lt!184709 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184713 () ListLongMap!5429)

(declare-fun lt!184717 () ListLongMap!5429)

(assert (=> b!391287 (and (= lt!184713 lt!184717) (= lt!184717 lt!184713))))

(declare-fun lt!184715 () ListLongMap!5429)

(declare-fun lt!184714 () tuple2!6502)

(declare-fun +!1028 (ListLongMap!5429 tuple2!6502) ListLongMap!5429)

(assert (=> b!391287 (= lt!184717 (+!1028 lt!184715 lt!184714))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13975)

(assert (=> b!391287 (= lt!184714 (tuple2!6503 k!778 v!373))))

(declare-datatypes ((Unit!11949 0))(
  ( (Unit!11950) )
))
(declare-fun lt!184718 () Unit!11949)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!253 (array!23187 array!23185 (_ BitVec 32) (_ BitVec 32) V!13975 V!13975 (_ BitVec 32) (_ BitVec 64) V!13975 (_ BitVec 32) Int) Unit!11949)

(assert (=> b!391287 (= lt!184718 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!253 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!958 (array!23187 array!23185 (_ BitVec 32) (_ BitVec 32) V!13975 V!13975 (_ BitVec 32) Int) ListLongMap!5429)

(assert (=> b!391287 (= lt!184713 (getCurrentListMapNoExtraKeys!958 lt!184712 lt!184709 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391287 (= lt!184709 (array!23186 (store (arr!11051 _values!506) i!548 (ValueCellFull!4483 v!373)) (size!11403 _values!506)))))

(assert (=> b!391287 (= lt!184715 (getCurrentListMapNoExtraKeys!958 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391288 () Bool)

(declare-fun res!224047 () Bool)

(declare-fun e!237010 () Bool)

(assert (=> b!391288 (=> (not res!224047) (not e!237010))))

(assert (=> b!391288 (= res!224047 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11404 _keys!658))))))

(declare-fun b!391289 () Bool)

(declare-fun res!224039 () Bool)

(assert (=> b!391289 (=> (not res!224039) (not e!237010))))

(declare-datatypes ((List!6385 0))(
  ( (Nil!6382) (Cons!6381 (h!7237 (_ BitVec 64)) (t!11557 List!6385)) )
))
(declare-fun arrayNoDuplicates!0 (array!23187 (_ BitVec 32) List!6385) Bool)

(assert (=> b!391289 (= res!224039 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6382))))

(declare-fun b!391290 () Bool)

(declare-fun e!237004 () Bool)

(declare-fun e!237003 () Bool)

(assert (=> b!391290 (= e!237004 (and e!237003 mapRes!16065))))

(declare-fun condMapEmpty!16065 () Bool)

(declare-fun mapDefault!16065 () ValueCell!4483)

