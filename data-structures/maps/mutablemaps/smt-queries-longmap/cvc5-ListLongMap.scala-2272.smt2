; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37102 () Bool)

(assert start!37102)

(declare-fun b_free!8221 () Bool)

(declare-fun b_next!8221 () Bool)

(assert (=> start!37102 (= b_free!8221 (not b_next!8221))))

(declare-fun tp!29378 () Bool)

(declare-fun b_and!15481 () Bool)

(assert (=> start!37102 (= tp!29378 b_and!15481)))

(declare-fun b!373212 () Bool)

(declare-fun res!210282 () Bool)

(declare-fun e!227547 () Bool)

(assert (=> b!373212 (=> (not res!210282) (not e!227547))))

(declare-datatypes ((array!21645 0))(
  ( (array!21646 (arr!10288 (Array (_ BitVec 32) (_ BitVec 64))) (size!10640 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21645)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373212 (= res!210282 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373213 () Bool)

(declare-fun e!227541 () Bool)

(assert (=> b!373213 (= e!227547 e!227541)))

(declare-fun res!210279 () Bool)

(assert (=> b!373213 (=> (not res!210279) (not e!227541))))

(declare-fun lt!171403 () array!21645)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21645 (_ BitVec 32)) Bool)

(assert (=> b!373213 (= res!210279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171403 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373213 (= lt!171403 (array!21646 (store (arr!10288 _keys!658) i!548 k!778) (size!10640 _keys!658)))))

(declare-fun mapIsEmpty!14868 () Bool)

(declare-fun mapRes!14868 () Bool)

(assert (=> mapIsEmpty!14868 mapRes!14868))

(declare-fun b!373214 () Bool)

(declare-fun e!227545 () Bool)

(declare-fun tp_is_empty!8869 () Bool)

(assert (=> b!373214 (= e!227545 tp_is_empty!8869)))

(declare-fun mapNonEmpty!14868 () Bool)

(declare-fun tp!29379 () Bool)

(assert (=> mapNonEmpty!14868 (= mapRes!14868 (and tp!29379 e!227545))))

(declare-datatypes ((V!12931 0))(
  ( (V!12932 (val!4479 Int)) )
))
(declare-datatypes ((ValueCell!4091 0))(
  ( (ValueCellFull!4091 (v!6672 V!12931)) (EmptyCell!4091) )
))
(declare-datatypes ((array!21647 0))(
  ( (array!21648 (arr!10289 (Array (_ BitVec 32) ValueCell!4091)) (size!10641 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21647)

(declare-fun mapKey!14868 () (_ BitVec 32))

(declare-fun mapValue!14868 () ValueCell!4091)

(declare-fun mapRest!14868 () (Array (_ BitVec 32) ValueCell!4091))

(assert (=> mapNonEmpty!14868 (= (arr!10289 _values!506) (store mapRest!14868 mapKey!14868 mapValue!14868))))

(declare-fun b!373215 () Bool)

(declare-fun res!210281 () Bool)

(assert (=> b!373215 (=> (not res!210281) (not e!227547))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373215 (= res!210281 (and (= (size!10641 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10640 _keys!658) (size!10641 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373216 () Bool)

(declare-fun res!210273 () Bool)

(assert (=> b!373216 (=> (not res!210273) (not e!227547))))

(assert (=> b!373216 (= res!210273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373217 () Bool)

(declare-fun e!227544 () Bool)

(assert (=> b!373217 (= e!227541 (not e!227544))))

(declare-fun res!210278 () Bool)

(assert (=> b!373217 (=> res!210278 e!227544)))

(assert (=> b!373217 (= res!210278 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!5922 0))(
  ( (tuple2!5923 (_1!2971 (_ BitVec 64)) (_2!2971 V!12931)) )
))
(declare-datatypes ((List!5798 0))(
  ( (Nil!5795) (Cons!5794 (h!6650 tuple2!5922) (t!10956 List!5798)) )
))
(declare-datatypes ((ListLongMap!4849 0))(
  ( (ListLongMap!4850 (toList!2440 List!5798)) )
))
(declare-fun lt!171404 () ListLongMap!4849)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12931)

(declare-fun minValue!472 () V!12931)

(declare-fun getCurrentListMap!1889 (array!21645 array!21647 (_ BitVec 32) (_ BitVec 32) V!12931 V!12931 (_ BitVec 32) Int) ListLongMap!4849)

(assert (=> b!373217 (= lt!171404 (getCurrentListMap!1889 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171415 () ListLongMap!4849)

(declare-fun lt!171406 () array!21647)

(assert (=> b!373217 (= lt!171415 (getCurrentListMap!1889 lt!171403 lt!171406 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171417 () ListLongMap!4849)

(declare-fun lt!171402 () ListLongMap!4849)

(assert (=> b!373217 (and (= lt!171417 lt!171402) (= lt!171402 lt!171417))))

(declare-fun lt!171405 () ListLongMap!4849)

(declare-fun lt!171408 () tuple2!5922)

(declare-fun +!781 (ListLongMap!4849 tuple2!5922) ListLongMap!4849)

(assert (=> b!373217 (= lt!171402 (+!781 lt!171405 lt!171408))))

(declare-fun v!373 () V!12931)

(assert (=> b!373217 (= lt!171408 (tuple2!5923 k!778 v!373))))

(declare-datatypes ((Unit!11465 0))(
  ( (Unit!11466) )
))
(declare-fun lt!171409 () Unit!11465)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!40 (array!21645 array!21647 (_ BitVec 32) (_ BitVec 32) V!12931 V!12931 (_ BitVec 32) (_ BitVec 64) V!12931 (_ BitVec 32) Int) Unit!11465)

(assert (=> b!373217 (= lt!171409 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!40 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!707 (array!21645 array!21647 (_ BitVec 32) (_ BitVec 32) V!12931 V!12931 (_ BitVec 32) Int) ListLongMap!4849)

(assert (=> b!373217 (= lt!171417 (getCurrentListMapNoExtraKeys!707 lt!171403 lt!171406 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373217 (= lt!171406 (array!21648 (store (arr!10289 _values!506) i!548 (ValueCellFull!4091 v!373)) (size!10641 _values!506)))))

(assert (=> b!373217 (= lt!171405 (getCurrentListMapNoExtraKeys!707 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373218 () Bool)

(declare-fun e!227540 () Bool)

(assert (=> b!373218 (= e!227540 tp_is_empty!8869)))

(declare-fun b!373219 () Bool)

(declare-fun res!210277 () Bool)

(assert (=> b!373219 (=> (not res!210277) (not e!227547))))

(assert (=> b!373219 (= res!210277 (or (= (select (arr!10288 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10288 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373221 () Bool)

(declare-fun e!227543 () Bool)

(assert (=> b!373221 (= e!227543 true)))

(declare-fun lt!171411 () tuple2!5922)

(declare-fun lt!171414 () ListLongMap!4849)

(declare-fun lt!171413 () ListLongMap!4849)

(assert (=> b!373221 (= (+!781 lt!171414 lt!171411) (+!781 lt!171413 lt!171408))))

(declare-fun lt!171407 () Unit!11465)

(declare-fun lt!171418 () ListLongMap!4849)

(declare-fun addCommutativeForDiffKeys!211 (ListLongMap!4849 (_ BitVec 64) V!12931 (_ BitVec 64) V!12931) Unit!11465)

(assert (=> b!373221 (= lt!171407 (addCommutativeForDiffKeys!211 lt!171418 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373222 () Bool)

(assert (=> b!373222 (= e!227544 e!227543)))

(declare-fun res!210274 () Bool)

(assert (=> b!373222 (=> res!210274 e!227543)))

(assert (=> b!373222 (= res!210274 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171416 () ListLongMap!4849)

(assert (=> b!373222 (= lt!171416 lt!171414)))

(assert (=> b!373222 (= lt!171414 (+!781 lt!171418 lt!171408))))

(declare-fun lt!171412 () Unit!11465)

(assert (=> b!373222 (= lt!171412 (addCommutativeForDiffKeys!211 lt!171405 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373222 (= lt!171415 (+!781 lt!171416 lt!171411))))

(declare-fun lt!171410 () tuple2!5922)

(assert (=> b!373222 (= lt!171416 (+!781 lt!171402 lt!171410))))

(assert (=> b!373222 (= lt!171404 lt!171413)))

(assert (=> b!373222 (= lt!171413 (+!781 lt!171418 lt!171411))))

(assert (=> b!373222 (= lt!171418 (+!781 lt!171405 lt!171410))))

(assert (=> b!373222 (= lt!171415 (+!781 (+!781 lt!171417 lt!171410) lt!171411))))

(assert (=> b!373222 (= lt!171411 (tuple2!5923 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373222 (= lt!171410 (tuple2!5923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373223 () Bool)

(declare-fun res!210275 () Bool)

(assert (=> b!373223 (=> (not res!210275) (not e!227541))))

(declare-datatypes ((List!5799 0))(
  ( (Nil!5796) (Cons!5795 (h!6651 (_ BitVec 64)) (t!10957 List!5799)) )
))
(declare-fun arrayNoDuplicates!0 (array!21645 (_ BitVec 32) List!5799) Bool)

(assert (=> b!373223 (= res!210275 (arrayNoDuplicates!0 lt!171403 #b00000000000000000000000000000000 Nil!5796))))

(declare-fun b!373224 () Bool)

(declare-fun res!210283 () Bool)

(assert (=> b!373224 (=> (not res!210283) (not e!227547))))

(assert (=> b!373224 (= res!210283 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5796))))

(declare-fun b!373225 () Bool)

(declare-fun res!210284 () Bool)

(assert (=> b!373225 (=> (not res!210284) (not e!227547))))

(assert (=> b!373225 (= res!210284 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10640 _keys!658))))))

(declare-fun b!373226 () Bool)

(declare-fun e!227546 () Bool)

(assert (=> b!373226 (= e!227546 (and e!227540 mapRes!14868))))

(declare-fun condMapEmpty!14868 () Bool)

(declare-fun mapDefault!14868 () ValueCell!4091)

