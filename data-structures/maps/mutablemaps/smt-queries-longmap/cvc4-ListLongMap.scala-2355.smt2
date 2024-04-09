; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37604 () Bool)

(assert start!37604)

(declare-fun b_free!8723 () Bool)

(declare-fun b_next!8723 () Bool)

(assert (=> start!37604 (= b_free!8723 (not b_next!8723))))

(declare-fun tp!30885 () Bool)

(declare-fun b_and!15983 () Bool)

(assert (=> start!37604 (= tp!30885 b_and!15983)))

(declare-fun b!384274 () Bool)

(declare-fun res!219078 () Bool)

(declare-fun e!233313 () Bool)

(assert (=> b!384274 (=> (not res!219078) (not e!233313))))

(declare-datatypes ((array!22629 0))(
  ( (array!22630 (arr!10780 (Array (_ BitVec 32) (_ BitVec 64))) (size!11132 (_ BitVec 32))) )
))
(declare-fun lt!180880 () array!22629)

(declare-datatypes ((List!6188 0))(
  ( (Nil!6185) (Cons!6184 (h!7040 (_ BitVec 64)) (t!11346 List!6188)) )
))
(declare-fun arrayNoDuplicates!0 (array!22629 (_ BitVec 32) List!6188) Bool)

(assert (=> b!384274 (= res!219078 (arrayNoDuplicates!0 lt!180880 #b00000000000000000000000000000000 Nil!6185))))

(declare-fun b!384275 () Bool)

(declare-fun e!233316 () Bool)

(assert (=> b!384275 (= e!233316 e!233313)))

(declare-fun res!219081 () Bool)

(assert (=> b!384275 (=> (not res!219081) (not e!233313))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22629 (_ BitVec 32)) Bool)

(assert (=> b!384275 (= res!219081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180880 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22629)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384275 (= lt!180880 (array!22630 (store (arr!10780 _keys!658) i!548 k!778) (size!11132 _keys!658)))))

(declare-fun b!384276 () Bool)

(declare-fun e!233315 () Bool)

(assert (=> b!384276 (= e!233313 (not e!233315))))

(declare-fun res!219079 () Bool)

(assert (=> b!384276 (=> res!219079 e!233315)))

(declare-fun lt!180875 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384276 (= res!219079 (or (and (not lt!180875) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180875) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180875)))))

(assert (=> b!384276 (= lt!180875 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13599 0))(
  ( (V!13600 (val!4730 Int)) )
))
(declare-datatypes ((ValueCell!4342 0))(
  ( (ValueCellFull!4342 (v!6923 V!13599)) (EmptyCell!4342) )
))
(declare-datatypes ((array!22631 0))(
  ( (array!22632 (arr!10781 (Array (_ BitVec 32) ValueCell!4342)) (size!11133 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22631)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13599)

(declare-fun minValue!472 () V!13599)

(declare-datatypes ((tuple2!6322 0))(
  ( (tuple2!6323 (_1!3171 (_ BitVec 64)) (_2!3171 V!13599)) )
))
(declare-datatypes ((List!6189 0))(
  ( (Nil!6186) (Cons!6185 (h!7041 tuple2!6322) (t!11347 List!6189)) )
))
(declare-datatypes ((ListLongMap!5249 0))(
  ( (ListLongMap!5250 (toList!2640 List!6189)) )
))
(declare-fun lt!180870 () ListLongMap!5249)

(declare-fun getCurrentListMap!2056 (array!22629 array!22631 (_ BitVec 32) (_ BitVec 32) V!13599 V!13599 (_ BitVec 32) Int) ListLongMap!5249)

(assert (=> b!384276 (= lt!180870 (getCurrentListMap!2056 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180879 () array!22631)

(declare-fun lt!180871 () ListLongMap!5249)

(assert (=> b!384276 (= lt!180871 (getCurrentListMap!2056 lt!180880 lt!180879 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180874 () ListLongMap!5249)

(declare-fun lt!180878 () ListLongMap!5249)

(assert (=> b!384276 (and (= lt!180874 lt!180878) (= lt!180878 lt!180874))))

(declare-fun lt!180877 () ListLongMap!5249)

(declare-fun lt!180873 () tuple2!6322)

(declare-fun +!976 (ListLongMap!5249 tuple2!6322) ListLongMap!5249)

(assert (=> b!384276 (= lt!180878 (+!976 lt!180877 lt!180873))))

(declare-fun v!373 () V!13599)

(assert (=> b!384276 (= lt!180873 (tuple2!6323 k!778 v!373))))

(declare-datatypes ((Unit!11841 0))(
  ( (Unit!11842) )
))
(declare-fun lt!180876 () Unit!11841)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!207 (array!22629 array!22631 (_ BitVec 32) (_ BitVec 32) V!13599 V!13599 (_ BitVec 32) (_ BitVec 64) V!13599 (_ BitVec 32) Int) Unit!11841)

(assert (=> b!384276 (= lt!180876 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!207 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!874 (array!22629 array!22631 (_ BitVec 32) (_ BitVec 32) V!13599 V!13599 (_ BitVec 32) Int) ListLongMap!5249)

(assert (=> b!384276 (= lt!180874 (getCurrentListMapNoExtraKeys!874 lt!180880 lt!180879 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384276 (= lt!180879 (array!22632 (store (arr!10781 _values!506) i!548 (ValueCellFull!4342 v!373)) (size!11133 _values!506)))))

(assert (=> b!384276 (= lt!180877 (getCurrentListMapNoExtraKeys!874 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384277 () Bool)

(declare-fun res!219086 () Bool)

(assert (=> b!384277 (=> (not res!219086) (not e!233316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384277 (= res!219086 (validKeyInArray!0 k!778))))

(declare-fun res!219077 () Bool)

(assert (=> start!37604 (=> (not res!219077) (not e!233316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37604 (= res!219077 (validMask!0 mask!970))))

(assert (=> start!37604 e!233316))

(declare-fun e!233319 () Bool)

(declare-fun array_inv!7916 (array!22631) Bool)

(assert (=> start!37604 (and (array_inv!7916 _values!506) e!233319)))

(assert (=> start!37604 tp!30885))

(assert (=> start!37604 true))

(declare-fun tp_is_empty!9371 () Bool)

(assert (=> start!37604 tp_is_empty!9371))

(declare-fun array_inv!7917 (array!22629) Bool)

(assert (=> start!37604 (array_inv!7917 _keys!658)))

(declare-fun b!384278 () Bool)

(declare-fun res!219080 () Bool)

(assert (=> b!384278 (=> (not res!219080) (not e!233316))))

(assert (=> b!384278 (= res!219080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384279 () Bool)

(declare-fun res!219083 () Bool)

(assert (=> b!384279 (=> (not res!219083) (not e!233316))))

(assert (=> b!384279 (= res!219083 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11132 _keys!658))))))

(declare-fun mapNonEmpty!15621 () Bool)

(declare-fun mapRes!15621 () Bool)

(declare-fun tp!30884 () Bool)

(declare-fun e!233318 () Bool)

(assert (=> mapNonEmpty!15621 (= mapRes!15621 (and tp!30884 e!233318))))

(declare-fun mapValue!15621 () ValueCell!4342)

(declare-fun mapRest!15621 () (Array (_ BitVec 32) ValueCell!4342))

(declare-fun mapKey!15621 () (_ BitVec 32))

(assert (=> mapNonEmpty!15621 (= (arr!10781 _values!506) (store mapRest!15621 mapKey!15621 mapValue!15621))))

(declare-fun b!384280 () Bool)

(declare-fun res!219076 () Bool)

(assert (=> b!384280 (=> (not res!219076) (not e!233316))))

(assert (=> b!384280 (= res!219076 (or (= (select (arr!10780 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10780 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384281 () Bool)

(declare-fun res!219085 () Bool)

(assert (=> b!384281 (=> (not res!219085) (not e!233316))))

(declare-fun arrayContainsKey!0 (array!22629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384281 (= res!219085 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384282 () Bool)

(declare-fun e!233314 () Bool)

(assert (=> b!384282 (= e!233319 (and e!233314 mapRes!15621))))

(declare-fun condMapEmpty!15621 () Bool)

(declare-fun mapDefault!15621 () ValueCell!4342)

