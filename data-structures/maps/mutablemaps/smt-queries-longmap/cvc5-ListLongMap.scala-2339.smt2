; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37504 () Bool)

(assert start!37504)

(declare-fun b_free!8623 () Bool)

(declare-fun b_next!8623 () Bool)

(assert (=> start!37504 (= b_free!8623 (not b_next!8623))))

(declare-fun tp!30584 () Bool)

(declare-fun b_and!15883 () Bool)

(assert (=> start!37504 (= tp!30584 b_and!15883)))

(declare-fun b!382165 () Bool)

(declare-fun res!217421 () Bool)

(declare-fun e!232257 () Bool)

(assert (=> b!382165 (=> (not res!217421) (not e!232257))))

(declare-datatypes ((array!22433 0))(
  ( (array!22434 (arr!10682 (Array (_ BitVec 32) (_ BitVec 64))) (size!11034 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22433)

(declare-datatypes ((List!6110 0))(
  ( (Nil!6107) (Cons!6106 (h!6962 (_ BitVec 64)) (t!11268 List!6110)) )
))
(declare-fun arrayNoDuplicates!0 (array!22433 (_ BitVec 32) List!6110) Bool)

(assert (=> b!382165 (= res!217421 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6107))))

(declare-fun mapIsEmpty!15471 () Bool)

(declare-fun mapRes!15471 () Bool)

(assert (=> mapIsEmpty!15471 mapRes!15471))

(declare-fun b!382166 () Bool)

(declare-fun res!217424 () Bool)

(assert (=> b!382166 (=> (not res!217424) (not e!232257))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13467 0))(
  ( (V!13468 (val!4680 Int)) )
))
(declare-datatypes ((ValueCell!4292 0))(
  ( (ValueCellFull!4292 (v!6873 V!13467)) (EmptyCell!4292) )
))
(declare-datatypes ((array!22435 0))(
  ( (array!22436 (arr!10683 (Array (_ BitVec 32) ValueCell!4292)) (size!11035 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22435)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!382166 (= res!217424 (and (= (size!11035 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11034 _keys!658) (size!11035 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382167 () Bool)

(declare-fun e!232256 () Bool)

(declare-fun tp_is_empty!9271 () Bool)

(assert (=> b!382167 (= e!232256 tp_is_empty!9271)))

(declare-fun b!382168 () Bool)

(declare-fun res!217419 () Bool)

(assert (=> b!382168 (=> (not res!217419) (not e!232257))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382168 (= res!217419 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!217420 () Bool)

(assert (=> start!37504 (=> (not res!217420) (not e!232257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37504 (= res!217420 (validMask!0 mask!970))))

(assert (=> start!37504 e!232257))

(declare-fun e!232258 () Bool)

(declare-fun array_inv!7842 (array!22435) Bool)

(assert (=> start!37504 (and (array_inv!7842 _values!506) e!232258)))

(assert (=> start!37504 tp!30584))

(assert (=> start!37504 true))

(assert (=> start!37504 tp_is_empty!9271))

(declare-fun array_inv!7843 (array!22433) Bool)

(assert (=> start!37504 (array_inv!7843 _keys!658)))

(declare-fun b!382169 () Bool)

(declare-fun e!232259 () Bool)

(declare-fun e!232254 () Bool)

(assert (=> b!382169 (= e!232259 (not e!232254))))

(declare-fun res!217417 () Bool)

(assert (=> b!382169 (=> res!217417 e!232254)))

(declare-fun lt!179334 () Bool)

(assert (=> b!382169 (= res!217417 (or (and (not lt!179334) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179334) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179334)))))

(assert (=> b!382169 (= lt!179334 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6242 0))(
  ( (tuple2!6243 (_1!3131 (_ BitVec 64)) (_2!3131 V!13467)) )
))
(declare-datatypes ((List!6111 0))(
  ( (Nil!6108) (Cons!6107 (h!6963 tuple2!6242) (t!11269 List!6111)) )
))
(declare-datatypes ((ListLongMap!5169 0))(
  ( (ListLongMap!5170 (toList!2600 List!6111)) )
))
(declare-fun lt!179341 () ListLongMap!5169)

(declare-fun zeroValue!472 () V!13467)

(declare-fun minValue!472 () V!13467)

(declare-fun getCurrentListMap!2019 (array!22433 array!22435 (_ BitVec 32) (_ BitVec 32) V!13467 V!13467 (_ BitVec 32) Int) ListLongMap!5169)

(assert (=> b!382169 (= lt!179341 (getCurrentListMap!2019 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179336 () array!22435)

(declare-fun lt!179335 () ListLongMap!5169)

(declare-fun lt!179333 () array!22433)

(assert (=> b!382169 (= lt!179335 (getCurrentListMap!2019 lt!179333 lt!179336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179337 () ListLongMap!5169)

(declare-fun lt!179339 () ListLongMap!5169)

(assert (=> b!382169 (and (= lt!179337 lt!179339) (= lt!179339 lt!179337))))

(declare-fun lt!179340 () ListLongMap!5169)

(declare-fun v!373 () V!13467)

(declare-fun +!937 (ListLongMap!5169 tuple2!6242) ListLongMap!5169)

(assert (=> b!382169 (= lt!179339 (+!937 lt!179340 (tuple2!6243 k!778 v!373)))))

(declare-datatypes ((Unit!11767 0))(
  ( (Unit!11768) )
))
(declare-fun lt!179338 () Unit!11767)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!170 (array!22433 array!22435 (_ BitVec 32) (_ BitVec 32) V!13467 V!13467 (_ BitVec 32) (_ BitVec 64) V!13467 (_ BitVec 32) Int) Unit!11767)

(assert (=> b!382169 (= lt!179338 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!170 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!837 (array!22433 array!22435 (_ BitVec 32) (_ BitVec 32) V!13467 V!13467 (_ BitVec 32) Int) ListLongMap!5169)

(assert (=> b!382169 (= lt!179337 (getCurrentListMapNoExtraKeys!837 lt!179333 lt!179336 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382169 (= lt!179336 (array!22436 (store (arr!10683 _values!506) i!548 (ValueCellFull!4292 v!373)) (size!11035 _values!506)))))

(assert (=> b!382169 (= lt!179340 (getCurrentListMapNoExtraKeys!837 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382170 () Bool)

(declare-fun res!217422 () Bool)

(assert (=> b!382170 (=> (not res!217422) (not e!232257))))

(assert (=> b!382170 (= res!217422 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11034 _keys!658))))))

(declare-fun b!382171 () Bool)

(declare-fun res!217427 () Bool)

(assert (=> b!382171 (=> (not res!217427) (not e!232259))))

(assert (=> b!382171 (= res!217427 (arrayNoDuplicates!0 lt!179333 #b00000000000000000000000000000000 Nil!6107))))

(declare-fun b!382172 () Bool)

(assert (=> b!382172 (= e!232257 e!232259)))

(declare-fun res!217423 () Bool)

(assert (=> b!382172 (=> (not res!217423) (not e!232259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22433 (_ BitVec 32)) Bool)

(assert (=> b!382172 (= res!217423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179333 mask!970))))

(assert (=> b!382172 (= lt!179333 (array!22434 (store (arr!10682 _keys!658) i!548 k!778) (size!11034 _keys!658)))))

(declare-fun mapNonEmpty!15471 () Bool)

(declare-fun tp!30585 () Bool)

(assert (=> mapNonEmpty!15471 (= mapRes!15471 (and tp!30585 e!232256))))

(declare-fun mapRest!15471 () (Array (_ BitVec 32) ValueCell!4292))

(declare-fun mapKey!15471 () (_ BitVec 32))

(declare-fun mapValue!15471 () ValueCell!4292)

(assert (=> mapNonEmpty!15471 (= (arr!10683 _values!506) (store mapRest!15471 mapKey!15471 mapValue!15471))))

(declare-fun b!382173 () Bool)

(assert (=> b!382173 (= e!232254 true)))

(assert (=> b!382173 (= lt!179335 lt!179337)))

(declare-fun b!382174 () Bool)

(declare-fun res!217418 () Bool)

(assert (=> b!382174 (=> (not res!217418) (not e!232257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382174 (= res!217418 (validKeyInArray!0 k!778))))

(declare-fun b!382175 () Bool)

(declare-fun e!232260 () Bool)

(assert (=> b!382175 (= e!232258 (and e!232260 mapRes!15471))))

(declare-fun condMapEmpty!15471 () Bool)

(declare-fun mapDefault!15471 () ValueCell!4292)

