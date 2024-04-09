; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37502 () Bool)

(assert start!37502)

(declare-fun b_free!8621 () Bool)

(declare-fun b_next!8621 () Bool)

(assert (=> start!37502 (= b_free!8621 (not b_next!8621))))

(declare-fun tp!30578 () Bool)

(declare-fun b_and!15881 () Bool)

(assert (=> start!37502 (= tp!30578 b_and!15881)))

(declare-fun b!382123 () Bool)

(declare-fun e!232234 () Bool)

(declare-fun e!232238 () Bool)

(assert (=> b!382123 (= e!232234 (not e!232238))))

(declare-fun res!217390 () Bool)

(assert (=> b!382123 (=> res!217390 e!232238)))

(declare-fun lt!179307 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382123 (= res!217390 (or (and (not lt!179307) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179307) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179307)))))

(assert (=> b!382123 (= lt!179307 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((V!13463 0))(
  ( (V!13464 (val!4679 Int)) )
))
(declare-fun zeroValue!472 () V!13463)

(declare-datatypes ((array!22429 0))(
  ( (array!22430 (arr!10680 (Array (_ BitVec 32) (_ BitVec 64))) (size!11032 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22429)

(declare-datatypes ((tuple2!6240 0))(
  ( (tuple2!6241 (_1!3130 (_ BitVec 64)) (_2!3130 V!13463)) )
))
(declare-datatypes ((List!6109 0))(
  ( (Nil!6106) (Cons!6105 (h!6961 tuple2!6240) (t!11267 List!6109)) )
))
(declare-datatypes ((ListLongMap!5167 0))(
  ( (ListLongMap!5168 (toList!2599 List!6109)) )
))
(declare-fun lt!179312 () ListLongMap!5167)

(declare-datatypes ((ValueCell!4291 0))(
  ( (ValueCellFull!4291 (v!6872 V!13463)) (EmptyCell!4291) )
))
(declare-datatypes ((array!22431 0))(
  ( (array!22432 (arr!10681 (Array (_ BitVec 32) ValueCell!4291)) (size!11033 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22431)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13463)

(declare-fun getCurrentListMap!2018 (array!22429 array!22431 (_ BitVec 32) (_ BitVec 32) V!13463 V!13463 (_ BitVec 32) Int) ListLongMap!5167)

(assert (=> b!382123 (= lt!179312 (getCurrentListMap!2018 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179306 () array!22431)

(declare-fun lt!179313 () ListLongMap!5167)

(declare-fun lt!179314 () array!22429)

(assert (=> b!382123 (= lt!179313 (getCurrentListMap!2018 lt!179314 lt!179306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179309 () ListLongMap!5167)

(declare-fun lt!179310 () ListLongMap!5167)

(assert (=> b!382123 (and (= lt!179309 lt!179310) (= lt!179310 lt!179309))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!179308 () ListLongMap!5167)

(declare-fun v!373 () V!13463)

(declare-fun +!936 (ListLongMap!5167 tuple2!6240) ListLongMap!5167)

(assert (=> b!382123 (= lt!179310 (+!936 lt!179308 (tuple2!6241 k!778 v!373)))))

(declare-datatypes ((Unit!11765 0))(
  ( (Unit!11766) )
))
(declare-fun lt!179311 () Unit!11765)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!169 (array!22429 array!22431 (_ BitVec 32) (_ BitVec 32) V!13463 V!13463 (_ BitVec 32) (_ BitVec 64) V!13463 (_ BitVec 32) Int) Unit!11765)

(assert (=> b!382123 (= lt!179311 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!169 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!836 (array!22429 array!22431 (_ BitVec 32) (_ BitVec 32) V!13463 V!13463 (_ BitVec 32) Int) ListLongMap!5167)

(assert (=> b!382123 (= lt!179309 (getCurrentListMapNoExtraKeys!836 lt!179314 lt!179306 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382123 (= lt!179306 (array!22432 (store (arr!10681 _values!506) i!548 (ValueCellFull!4291 v!373)) (size!11033 _values!506)))))

(assert (=> b!382123 (= lt!179308 (getCurrentListMapNoExtraKeys!836 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382124 () Bool)

(declare-fun e!232237 () Bool)

(assert (=> b!382124 (= e!232237 e!232234)))

(declare-fun res!217389 () Bool)

(assert (=> b!382124 (=> (not res!217389) (not e!232234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22429 (_ BitVec 32)) Bool)

(assert (=> b!382124 (= res!217389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179314 mask!970))))

(assert (=> b!382124 (= lt!179314 (array!22430 (store (arr!10680 _keys!658) i!548 k!778) (size!11032 _keys!658)))))

(declare-fun b!382125 () Bool)

(declare-fun e!232236 () Bool)

(declare-fun e!232239 () Bool)

(declare-fun mapRes!15468 () Bool)

(assert (=> b!382125 (= e!232236 (and e!232239 mapRes!15468))))

(declare-fun condMapEmpty!15468 () Bool)

(declare-fun mapDefault!15468 () ValueCell!4291)

