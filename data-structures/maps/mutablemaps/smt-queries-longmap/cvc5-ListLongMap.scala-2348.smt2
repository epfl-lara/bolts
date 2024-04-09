; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37558 () Bool)

(assert start!37558)

(declare-fun b_free!8677 () Bool)

(declare-fun b_next!8677 () Bool)

(assert (=> start!37558 (= b_free!8677 (not b_next!8677))))

(declare-fun tp!30747 () Bool)

(declare-fun b_and!15937 () Bool)

(assert (=> start!37558 (= tp!30747 b_and!15937)))

(declare-fun b!383299 () Bool)

(declare-fun res!218311 () Bool)

(declare-fun e!232825 () Bool)

(assert (=> b!383299 (=> (not res!218311) (not e!232825))))

(declare-datatypes ((array!22541 0))(
  ( (array!22542 (arr!10736 (Array (_ BitVec 32) (_ BitVec 64))) (size!11088 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22541)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383299 (= res!218311 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383300 () Bool)

(declare-fun e!232822 () Bool)

(assert (=> b!383300 (= e!232825 e!232822)))

(declare-fun res!218312 () Bool)

(assert (=> b!383300 (=> (not res!218312) (not e!232822))))

(declare-fun lt!180126 () array!22541)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22541 (_ BitVec 32)) Bool)

(assert (=> b!383300 (= res!218312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180126 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383300 (= lt!180126 (array!22542 (store (arr!10736 _keys!658) i!548 k!778) (size!11088 _keys!658)))))

(declare-fun b!383301 () Bool)

(declare-fun res!218318 () Bool)

(assert (=> b!383301 (=> (not res!218318) (not e!232825))))

(assert (=> b!383301 (= res!218318 (or (= (select (arr!10736 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10736 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383302 () Bool)

(declare-fun e!232823 () Bool)

(declare-fun tp_is_empty!9325 () Bool)

(assert (=> b!383302 (= e!232823 tp_is_empty!9325)))

(declare-fun mapNonEmpty!15552 () Bool)

(declare-fun mapRes!15552 () Bool)

(declare-fun tp!30746 () Bool)

(assert (=> mapNonEmpty!15552 (= mapRes!15552 (and tp!30746 e!232823))))

(declare-datatypes ((V!13539 0))(
  ( (V!13540 (val!4707 Int)) )
))
(declare-datatypes ((ValueCell!4319 0))(
  ( (ValueCellFull!4319 (v!6900 V!13539)) (EmptyCell!4319) )
))
(declare-fun mapValue!15552 () ValueCell!4319)

(declare-datatypes ((array!22543 0))(
  ( (array!22544 (arr!10737 (Array (_ BitVec 32) ValueCell!4319)) (size!11089 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22543)

(declare-fun mapRest!15552 () (Array (_ BitVec 32) ValueCell!4319))

(declare-fun mapKey!15552 () (_ BitVec 32))

(assert (=> mapNonEmpty!15552 (= (arr!10737 _values!506) (store mapRest!15552 mapKey!15552 mapValue!15552))))

(declare-fun res!218308 () Bool)

(assert (=> start!37558 (=> (not res!218308) (not e!232825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37558 (= res!218308 (validMask!0 mask!970))))

(assert (=> start!37558 e!232825))

(declare-fun e!232821 () Bool)

(declare-fun array_inv!7886 (array!22543) Bool)

(assert (=> start!37558 (and (array_inv!7886 _values!506) e!232821)))

(assert (=> start!37558 tp!30747))

(assert (=> start!37558 true))

(assert (=> start!37558 tp_is_empty!9325))

(declare-fun array_inv!7887 (array!22541) Bool)

(assert (=> start!37558 (array_inv!7887 _keys!658)))

(declare-fun b!383303 () Bool)

(declare-fun res!218317 () Bool)

(assert (=> b!383303 (=> (not res!218317) (not e!232825))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383303 (= res!218317 (and (= (size!11089 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11088 _keys!658) (size!11089 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383304 () Bool)

(declare-fun e!232826 () Bool)

(assert (=> b!383304 (= e!232826 tp_is_empty!9325)))

(declare-fun mapIsEmpty!15552 () Bool)

(assert (=> mapIsEmpty!15552 mapRes!15552))

(declare-fun b!383305 () Bool)

(declare-fun e!232824 () Bool)

(assert (=> b!383305 (= e!232822 (not e!232824))))

(declare-fun res!218310 () Bool)

(assert (=> b!383305 (=> res!218310 e!232824)))

(declare-fun lt!180125 () Bool)

(assert (=> b!383305 (= res!218310 (or (and (not lt!180125) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180125) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180125)))))

(assert (=> b!383305 (= lt!180125 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6286 0))(
  ( (tuple2!6287 (_1!3153 (_ BitVec 64)) (_2!3153 V!13539)) )
))
(declare-datatypes ((List!6154 0))(
  ( (Nil!6151) (Cons!6150 (h!7006 tuple2!6286) (t!11312 List!6154)) )
))
(declare-datatypes ((ListLongMap!5213 0))(
  ( (ListLongMap!5214 (toList!2622 List!6154)) )
))
(declare-fun lt!180120 () ListLongMap!5213)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13539)

(declare-fun minValue!472 () V!13539)

(declare-fun getCurrentListMap!2039 (array!22541 array!22543 (_ BitVec 32) (_ BitVec 32) V!13539 V!13539 (_ BitVec 32) Int) ListLongMap!5213)

(assert (=> b!383305 (= lt!180120 (getCurrentListMap!2039 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180123 () ListLongMap!5213)

(declare-fun lt!180122 () array!22543)

(assert (=> b!383305 (= lt!180123 (getCurrentListMap!2039 lt!180126 lt!180122 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180129 () ListLongMap!5213)

(declare-fun lt!180127 () ListLongMap!5213)

(assert (=> b!383305 (and (= lt!180129 lt!180127) (= lt!180127 lt!180129))))

(declare-fun lt!180130 () ListLongMap!5213)

(declare-fun lt!180128 () tuple2!6286)

(declare-fun +!958 (ListLongMap!5213 tuple2!6286) ListLongMap!5213)

(assert (=> b!383305 (= lt!180127 (+!958 lt!180130 lt!180128))))

(declare-fun v!373 () V!13539)

(assert (=> b!383305 (= lt!180128 (tuple2!6287 k!778 v!373))))

(declare-datatypes ((Unit!11807 0))(
  ( (Unit!11808) )
))
(declare-fun lt!180124 () Unit!11807)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!190 (array!22541 array!22543 (_ BitVec 32) (_ BitVec 32) V!13539 V!13539 (_ BitVec 32) (_ BitVec 64) V!13539 (_ BitVec 32) Int) Unit!11807)

(assert (=> b!383305 (= lt!180124 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!190 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!857 (array!22541 array!22543 (_ BitVec 32) (_ BitVec 32) V!13539 V!13539 (_ BitVec 32) Int) ListLongMap!5213)

(assert (=> b!383305 (= lt!180129 (getCurrentListMapNoExtraKeys!857 lt!180126 lt!180122 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383305 (= lt!180122 (array!22544 (store (arr!10737 _values!506) i!548 (ValueCellFull!4319 v!373)) (size!11089 _values!506)))))

(assert (=> b!383305 (= lt!180130 (getCurrentListMapNoExtraKeys!857 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383306 () Bool)

(declare-fun res!218313 () Bool)

(assert (=> b!383306 (=> (not res!218313) (not e!232825))))

(assert (=> b!383306 (= res!218313 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11088 _keys!658))))))

(declare-fun b!383307 () Bool)

(declare-fun res!218314 () Bool)

(assert (=> b!383307 (=> (not res!218314) (not e!232825))))

(assert (=> b!383307 (= res!218314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383308 () Bool)

(declare-fun res!218315 () Bool)

(assert (=> b!383308 (=> (not res!218315) (not e!232825))))

(declare-datatypes ((List!6155 0))(
  ( (Nil!6152) (Cons!6151 (h!7007 (_ BitVec 64)) (t!11313 List!6155)) )
))
(declare-fun arrayNoDuplicates!0 (array!22541 (_ BitVec 32) List!6155) Bool)

(assert (=> b!383308 (= res!218315 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6152))))

(declare-fun b!383309 () Bool)

(declare-fun res!218309 () Bool)

(assert (=> b!383309 (=> (not res!218309) (not e!232822))))

(assert (=> b!383309 (= res!218309 (arrayNoDuplicates!0 lt!180126 #b00000000000000000000000000000000 Nil!6152))))

(declare-fun b!383310 () Bool)

(assert (=> b!383310 (= e!232821 (and e!232826 mapRes!15552))))

(declare-fun condMapEmpty!15552 () Bool)

(declare-fun mapDefault!15552 () ValueCell!4319)

