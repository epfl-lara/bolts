; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37328 () Bool)

(assert start!37328)

(declare-fun b_free!8447 () Bool)

(declare-fun b_next!8447 () Bool)

(assert (=> start!37328 (= b_free!8447 (not b_next!8447))))

(declare-fun tp!30056 () Bool)

(declare-fun b_and!15707 () Bool)

(assert (=> start!37328 (= tp!30056 b_and!15707)))

(declare-fun b!378315 () Bool)

(declare-fun e!230256 () Bool)

(declare-fun e!230254 () Bool)

(assert (=> b!378315 (= e!230256 e!230254)))

(declare-fun res!214363 () Bool)

(assert (=> b!378315 (=> res!214363 e!230254)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!378315 (= res!214363 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13231 0))(
  ( (V!13232 (val!4592 Int)) )
))
(declare-datatypes ((tuple2!6100 0))(
  ( (tuple2!6101 (_1!3060 (_ BitVec 64)) (_2!3060 V!13231)) )
))
(declare-datatypes ((List!5972 0))(
  ( (Nil!5969) (Cons!5968 (h!6824 tuple2!6100) (t!11130 List!5972)) )
))
(declare-datatypes ((ListLongMap!5027 0))(
  ( (ListLongMap!5028 (toList!2529 List!5972)) )
))
(declare-fun lt!176341 () ListLongMap!5027)

(declare-fun lt!176352 () ListLongMap!5027)

(assert (=> b!378315 (= lt!176341 lt!176352)))

(declare-fun lt!176347 () ListLongMap!5027)

(declare-fun lt!176353 () tuple2!6100)

(declare-fun +!870 (ListLongMap!5027 tuple2!6100) ListLongMap!5027)

(assert (=> b!378315 (= lt!176352 (+!870 lt!176347 lt!176353))))

(declare-fun lt!176342 () ListLongMap!5027)

(declare-fun lt!176345 () ListLongMap!5027)

(assert (=> b!378315 (= lt!176342 lt!176345)))

(declare-fun lt!176351 () ListLongMap!5027)

(assert (=> b!378315 (= lt!176345 (+!870 lt!176351 lt!176353))))

(declare-fun lt!176349 () ListLongMap!5027)

(assert (=> b!378315 (= lt!176342 (+!870 lt!176349 lt!176353))))

(declare-fun minValue!472 () V!13231)

(assert (=> b!378315 (= lt!176353 (tuple2!6101 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378316 () Bool)

(declare-fun res!214362 () Bool)

(declare-fun e!230259 () Bool)

(assert (=> b!378316 (=> (not res!214362) (not e!230259))))

(declare-datatypes ((array!22087 0))(
  ( (array!22088 (arr!10509 (Array (_ BitVec 32) (_ BitVec 64))) (size!10861 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22087)

(declare-datatypes ((List!5973 0))(
  ( (Nil!5970) (Cons!5969 (h!6825 (_ BitVec 64)) (t!11131 List!5973)) )
))
(declare-fun arrayNoDuplicates!0 (array!22087 (_ BitVec 32) List!5973) Bool)

(assert (=> b!378316 (= res!214362 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5970))))

(declare-fun b!378317 () Bool)

(declare-fun res!214367 () Bool)

(assert (=> b!378317 (=> (not res!214367) (not e!230259))))

(declare-fun arrayContainsKey!0 (array!22087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378317 (= res!214367 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378318 () Bool)

(declare-fun e!230252 () Bool)

(assert (=> b!378318 (= e!230252 (not e!230256))))

(declare-fun res!214366 () Bool)

(assert (=> b!378318 (=> res!214366 e!230256)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378318 (= res!214366 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((ValueCell!4204 0))(
  ( (ValueCellFull!4204 (v!6785 V!13231)) (EmptyCell!4204) )
))
(declare-datatypes ((array!22089 0))(
  ( (array!22090 (arr!10510 (Array (_ BitVec 32) ValueCell!4204)) (size!10862 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22089)

(declare-fun zeroValue!472 () V!13231)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun getCurrentListMap!1962 (array!22087 array!22089 (_ BitVec 32) (_ BitVec 32) V!13231 V!13231 (_ BitVec 32) Int) ListLongMap!5027)

(assert (=> b!378318 (= lt!176341 (getCurrentListMap!1962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176346 () array!22089)

(declare-fun lt!176344 () array!22087)

(assert (=> b!378318 (= lt!176342 (getCurrentListMap!1962 lt!176344 lt!176346 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378318 (and (= lt!176349 lt!176351) (= lt!176351 lt!176349))))

(declare-fun lt!176343 () tuple2!6100)

(assert (=> b!378318 (= lt!176351 (+!870 lt!176347 lt!176343))))

(declare-fun v!373 () V!13231)

(assert (=> b!378318 (= lt!176343 (tuple2!6101 k!778 v!373))))

(declare-datatypes ((Unit!11637 0))(
  ( (Unit!11638) )
))
(declare-fun lt!176348 () Unit!11637)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!113 (array!22087 array!22089 (_ BitVec 32) (_ BitVec 32) V!13231 V!13231 (_ BitVec 32) (_ BitVec 64) V!13231 (_ BitVec 32) Int) Unit!11637)

(assert (=> b!378318 (= lt!176348 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!113 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!780 (array!22087 array!22089 (_ BitVec 32) (_ BitVec 32) V!13231 V!13231 (_ BitVec 32) Int) ListLongMap!5027)

(assert (=> b!378318 (= lt!176349 (getCurrentListMapNoExtraKeys!780 lt!176344 lt!176346 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378318 (= lt!176346 (array!22090 (store (arr!10510 _values!506) i!548 (ValueCellFull!4204 v!373)) (size!10862 _values!506)))))

(assert (=> b!378318 (= lt!176347 (getCurrentListMapNoExtraKeys!780 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378319 () Bool)

(declare-fun res!214365 () Bool)

(assert (=> b!378319 (=> (not res!214365) (not e!230259))))

(assert (=> b!378319 (= res!214365 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10861 _keys!658))))))

(declare-fun b!378320 () Bool)

(declare-fun e!230257 () Bool)

(declare-fun tp_is_empty!9095 () Bool)

(assert (=> b!378320 (= e!230257 tp_is_empty!9095)))

(declare-fun b!378321 () Bool)

(declare-fun res!214359 () Bool)

(assert (=> b!378321 (=> (not res!214359) (not e!230259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378321 (= res!214359 (validKeyInArray!0 k!778))))

(declare-fun b!378322 () Bool)

(declare-fun res!214364 () Bool)

(assert (=> b!378322 (=> (not res!214364) (not e!230259))))

(assert (=> b!378322 (= res!214364 (and (= (size!10862 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10861 _keys!658) (size!10862 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378323 () Bool)

(declare-fun res!214370 () Bool)

(assert (=> b!378323 (=> (not res!214370) (not e!230259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22087 (_ BitVec 32)) Bool)

(assert (=> b!378323 (= res!214370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378324 () Bool)

(assert (=> b!378324 (= e!230254 true)))

(assert (=> b!378324 (= lt!176345 (+!870 lt!176352 lt!176343))))

(declare-fun lt!176350 () Unit!11637)

(declare-fun addCommutativeForDiffKeys!285 (ListLongMap!5027 (_ BitVec 64) V!13231 (_ BitVec 64) V!13231) Unit!11637)

(assert (=> b!378324 (= lt!176350 (addCommutativeForDiffKeys!285 lt!176347 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378325 () Bool)

(declare-fun res!214360 () Bool)

(assert (=> b!378325 (=> (not res!214360) (not e!230252))))

(assert (=> b!378325 (= res!214360 (arrayNoDuplicates!0 lt!176344 #b00000000000000000000000000000000 Nil!5970))))

(declare-fun b!378326 () Bool)

(declare-fun e!230255 () Bool)

(assert (=> b!378326 (= e!230255 tp_is_empty!9095)))

(declare-fun mapNonEmpty!15207 () Bool)

(declare-fun mapRes!15207 () Bool)

(declare-fun tp!30057 () Bool)

(assert (=> mapNonEmpty!15207 (= mapRes!15207 (and tp!30057 e!230255))))

(declare-fun mapKey!15207 () (_ BitVec 32))

(declare-fun mapRest!15207 () (Array (_ BitVec 32) ValueCell!4204))

(declare-fun mapValue!15207 () ValueCell!4204)

(assert (=> mapNonEmpty!15207 (= (arr!10510 _values!506) (store mapRest!15207 mapKey!15207 mapValue!15207))))

(declare-fun b!378327 () Bool)

(declare-fun e!230253 () Bool)

(assert (=> b!378327 (= e!230253 (and e!230257 mapRes!15207))))

(declare-fun condMapEmpty!15207 () Bool)

(declare-fun mapDefault!15207 () ValueCell!4204)

