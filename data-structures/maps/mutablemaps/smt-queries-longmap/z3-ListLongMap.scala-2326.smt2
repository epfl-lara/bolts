; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37428 () Bool)

(assert start!37428)

(declare-fun b_free!8547 () Bool)

(declare-fun b_next!8547 () Bool)

(assert (=> start!37428 (= b_free!8547 (not b_next!8547))))

(declare-fun tp!30356 () Bool)

(declare-fun b_and!15807 () Bool)

(assert (=> start!37428 (= tp!30356 b_and!15807)))

(declare-fun b!380565 () Bool)

(declare-fun res!216159 () Bool)

(declare-fun e!231459 () Bool)

(assert (=> b!380565 (=> (not res!216159) (not e!231459))))

(declare-datatypes ((array!22285 0))(
  ( (array!22286 (arr!10608 (Array (_ BitVec 32) (_ BitVec 64))) (size!10960 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22285)

(declare-datatypes ((List!6057 0))(
  ( (Nil!6054) (Cons!6053 (h!6909 (_ BitVec 64)) (t!11215 List!6057)) )
))
(declare-fun arrayNoDuplicates!0 (array!22285 (_ BitVec 32) List!6057) Bool)

(assert (=> b!380565 (= res!216159 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6054))))

(declare-fun b!380566 () Bool)

(declare-fun e!231457 () Bool)

(declare-fun e!231458 () Bool)

(assert (=> b!380566 (= e!231457 (not e!231458))))

(declare-fun res!216164 () Bool)

(assert (=> b!380566 (=> res!216164 e!231458)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380566 (= res!216164 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13365 0))(
  ( (V!13366 (val!4642 Int)) )
))
(declare-fun zeroValue!472 () V!13365)

(declare-datatypes ((ValueCell!4254 0))(
  ( (ValueCellFull!4254 (v!6835 V!13365)) (EmptyCell!4254) )
))
(declare-datatypes ((array!22287 0))(
  ( (array!22288 (arr!10609 (Array (_ BitVec 32) ValueCell!4254)) (size!10961 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22287)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6186 0))(
  ( (tuple2!6187 (_1!3103 (_ BitVec 64)) (_2!3103 V!13365)) )
))
(declare-datatypes ((List!6058 0))(
  ( (Nil!6055) (Cons!6054 (h!6910 tuple2!6186) (t!11216 List!6058)) )
))
(declare-datatypes ((ListLongMap!5113 0))(
  ( (ListLongMap!5114 (toList!2572 List!6058)) )
))
(declare-fun lt!178303 () ListLongMap!5113)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13365)

(declare-fun getCurrentListMap!1996 (array!22285 array!22287 (_ BitVec 32) (_ BitVec 32) V!13365 V!13365 (_ BitVec 32) Int) ListLongMap!5113)

(assert (=> b!380566 (= lt!178303 (getCurrentListMap!1996 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178302 () array!22287)

(declare-fun lt!178299 () ListLongMap!5113)

(declare-fun lt!178301 () array!22285)

(assert (=> b!380566 (= lt!178299 (getCurrentListMap!1996 lt!178301 lt!178302 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178296 () ListLongMap!5113)

(declare-fun lt!178294 () ListLongMap!5113)

(assert (=> b!380566 (and (= lt!178296 lt!178294) (= lt!178294 lt!178296))))

(declare-fun lt!178291 () ListLongMap!5113)

(declare-fun lt!178298 () tuple2!6186)

(declare-fun +!913 (ListLongMap!5113 tuple2!6186) ListLongMap!5113)

(assert (=> b!380566 (= lt!178294 (+!913 lt!178291 lt!178298))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13365)

(assert (=> b!380566 (= lt!178298 (tuple2!6187 k0!778 v!373))))

(declare-datatypes ((Unit!11721 0))(
  ( (Unit!11722) )
))
(declare-fun lt!178293 () Unit!11721)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!147 (array!22285 array!22287 (_ BitVec 32) (_ BitVec 32) V!13365 V!13365 (_ BitVec 32) (_ BitVec 64) V!13365 (_ BitVec 32) Int) Unit!11721)

(assert (=> b!380566 (= lt!178293 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!147 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!814 (array!22285 array!22287 (_ BitVec 32) (_ BitVec 32) V!13365 V!13365 (_ BitVec 32) Int) ListLongMap!5113)

(assert (=> b!380566 (= lt!178296 (getCurrentListMapNoExtraKeys!814 lt!178301 lt!178302 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380566 (= lt!178302 (array!22288 (store (arr!10609 _values!506) i!548 (ValueCellFull!4254 v!373)) (size!10961 _values!506)))))

(assert (=> b!380566 (= lt!178291 (getCurrentListMapNoExtraKeys!814 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380567 () Bool)

(assert (=> b!380567 (= e!231459 e!231457)))

(declare-fun res!216170 () Bool)

(assert (=> b!380567 (=> (not res!216170) (not e!231457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22285 (_ BitVec 32)) Bool)

(assert (=> b!380567 (= res!216170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178301 mask!970))))

(assert (=> b!380567 (= lt!178301 (array!22286 (store (arr!10608 _keys!658) i!548 k0!778) (size!10960 _keys!658)))))

(declare-fun mapIsEmpty!15357 () Bool)

(declare-fun mapRes!15357 () Bool)

(assert (=> mapIsEmpty!15357 mapRes!15357))

(declare-fun b!380568 () Bool)

(declare-fun res!216161 () Bool)

(assert (=> b!380568 (=> (not res!216161) (not e!231459))))

(assert (=> b!380568 (= res!216161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380569 () Bool)

(declare-fun res!216163 () Bool)

(assert (=> b!380569 (=> (not res!216163) (not e!231459))))

(declare-fun arrayContainsKey!0 (array!22285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380569 (= res!216163 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380570 () Bool)

(declare-fun res!216165 () Bool)

(assert (=> b!380570 (=> (not res!216165) (not e!231459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380570 (= res!216165 (validKeyInArray!0 k0!778))))

(declare-fun b!380571 () Bool)

(declare-fun res!216169 () Bool)

(assert (=> b!380571 (=> (not res!216169) (not e!231459))))

(assert (=> b!380571 (= res!216169 (and (= (size!10961 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10960 _keys!658) (size!10961 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380572 () Bool)

(declare-fun res!216168 () Bool)

(assert (=> b!380572 (=> (not res!216168) (not e!231459))))

(assert (=> b!380572 (= res!216168 (or (= (select (arr!10608 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10608 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380573 () Bool)

(declare-fun e!231454 () Bool)

(declare-fun e!231452 () Bool)

(assert (=> b!380573 (= e!231454 (and e!231452 mapRes!15357))))

(declare-fun condMapEmpty!15357 () Bool)

(declare-fun mapDefault!15357 () ValueCell!4254)

(assert (=> b!380573 (= condMapEmpty!15357 (= (arr!10609 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4254)) mapDefault!15357)))))

(declare-fun b!380574 () Bool)

(declare-fun tp_is_empty!9195 () Bool)

(assert (=> b!380574 (= e!231452 tp_is_empty!9195)))

(declare-fun res!216160 () Bool)

(assert (=> start!37428 (=> (not res!216160) (not e!231459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37428 (= res!216160 (validMask!0 mask!970))))

(assert (=> start!37428 e!231459))

(declare-fun array_inv!7802 (array!22287) Bool)

(assert (=> start!37428 (and (array_inv!7802 _values!506) e!231454)))

(assert (=> start!37428 tp!30356))

(assert (=> start!37428 true))

(assert (=> start!37428 tp_is_empty!9195))

(declare-fun array_inv!7803 (array!22285) Bool)

(assert (=> start!37428 (array_inv!7803 _keys!658)))

(declare-fun b!380575 () Bool)

(declare-fun e!231455 () Bool)

(assert (=> b!380575 (= e!231455 (bvsle #b00000000000000000000000000000000 (size!10960 _keys!658)))))

(declare-fun lt!178292 () ListLongMap!5113)

(declare-fun lt!178295 () ListLongMap!5113)

(assert (=> b!380575 (= lt!178292 (+!913 lt!178295 lt!178298))))

(declare-fun lt!178300 () Unit!11721)

(declare-fun addCommutativeForDiffKeys!324 (ListLongMap!5113 (_ BitVec 64) V!13365 (_ BitVec 64) V!13365) Unit!11721)

(assert (=> b!380575 (= lt!178300 (addCommutativeForDiffKeys!324 lt!178291 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380576 () Bool)

(declare-fun res!216166 () Bool)

(assert (=> b!380576 (=> (not res!216166) (not e!231459))))

(assert (=> b!380576 (= res!216166 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10960 _keys!658))))))

(declare-fun b!380577 () Bool)

(declare-fun res!216162 () Bool)

(assert (=> b!380577 (=> (not res!216162) (not e!231457))))

(assert (=> b!380577 (= res!216162 (arrayNoDuplicates!0 lt!178301 #b00000000000000000000000000000000 Nil!6054))))

(declare-fun mapNonEmpty!15357 () Bool)

(declare-fun tp!30357 () Bool)

(declare-fun e!231453 () Bool)

(assert (=> mapNonEmpty!15357 (= mapRes!15357 (and tp!30357 e!231453))))

(declare-fun mapRest!15357 () (Array (_ BitVec 32) ValueCell!4254))

(declare-fun mapValue!15357 () ValueCell!4254)

(declare-fun mapKey!15357 () (_ BitVec 32))

(assert (=> mapNonEmpty!15357 (= (arr!10609 _values!506) (store mapRest!15357 mapKey!15357 mapValue!15357))))

(declare-fun b!380578 () Bool)

(assert (=> b!380578 (= e!231458 e!231455)))

(declare-fun res!216167 () Bool)

(assert (=> b!380578 (=> res!216167 e!231455)))

(assert (=> b!380578 (= res!216167 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!380578 (= lt!178303 lt!178295)))

(declare-fun lt!178297 () tuple2!6186)

(assert (=> b!380578 (= lt!178295 (+!913 lt!178291 lt!178297))))

(assert (=> b!380578 (= lt!178299 lt!178292)))

(assert (=> b!380578 (= lt!178292 (+!913 lt!178294 lt!178297))))

(assert (=> b!380578 (= lt!178299 (+!913 lt!178296 lt!178297))))

(assert (=> b!380578 (= lt!178297 (tuple2!6187 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380579 () Bool)

(assert (=> b!380579 (= e!231453 tp_is_empty!9195)))

(assert (= (and start!37428 res!216160) b!380571))

(assert (= (and b!380571 res!216169) b!380568))

(assert (= (and b!380568 res!216161) b!380565))

(assert (= (and b!380565 res!216159) b!380576))

(assert (= (and b!380576 res!216166) b!380570))

(assert (= (and b!380570 res!216165) b!380572))

(assert (= (and b!380572 res!216168) b!380569))

(assert (= (and b!380569 res!216163) b!380567))

(assert (= (and b!380567 res!216170) b!380577))

(assert (= (and b!380577 res!216162) b!380566))

(assert (= (and b!380566 (not res!216164)) b!380578))

(assert (= (and b!380578 (not res!216167)) b!380575))

(assert (= (and b!380573 condMapEmpty!15357) mapIsEmpty!15357))

(assert (= (and b!380573 (not condMapEmpty!15357)) mapNonEmpty!15357))

(get-info :version)

(assert (= (and mapNonEmpty!15357 ((_ is ValueCellFull!4254) mapValue!15357)) b!380579))

(assert (= (and b!380573 ((_ is ValueCellFull!4254) mapDefault!15357)) b!380574))

(assert (= start!37428 b!380573))

(declare-fun m!377573 () Bool)

(assert (=> b!380577 m!377573))

(declare-fun m!377575 () Bool)

(assert (=> b!380575 m!377575))

(declare-fun m!377577 () Bool)

(assert (=> b!380575 m!377577))

(declare-fun m!377579 () Bool)

(assert (=> b!380565 m!377579))

(declare-fun m!377581 () Bool)

(assert (=> b!380578 m!377581))

(declare-fun m!377583 () Bool)

(assert (=> b!380578 m!377583))

(declare-fun m!377585 () Bool)

(assert (=> b!380578 m!377585))

(declare-fun m!377587 () Bool)

(assert (=> b!380568 m!377587))

(declare-fun m!377589 () Bool)

(assert (=> b!380569 m!377589))

(declare-fun m!377591 () Bool)

(assert (=> b!380570 m!377591))

(declare-fun m!377593 () Bool)

(assert (=> start!37428 m!377593))

(declare-fun m!377595 () Bool)

(assert (=> start!37428 m!377595))

(declare-fun m!377597 () Bool)

(assert (=> start!37428 m!377597))

(declare-fun m!377599 () Bool)

(assert (=> b!380567 m!377599))

(declare-fun m!377601 () Bool)

(assert (=> b!380567 m!377601))

(declare-fun m!377603 () Bool)

(assert (=> b!380572 m!377603))

(declare-fun m!377605 () Bool)

(assert (=> b!380566 m!377605))

(declare-fun m!377607 () Bool)

(assert (=> b!380566 m!377607))

(declare-fun m!377609 () Bool)

(assert (=> b!380566 m!377609))

(declare-fun m!377611 () Bool)

(assert (=> b!380566 m!377611))

(declare-fun m!377613 () Bool)

(assert (=> b!380566 m!377613))

(declare-fun m!377615 () Bool)

(assert (=> b!380566 m!377615))

(declare-fun m!377617 () Bool)

(assert (=> b!380566 m!377617))

(declare-fun m!377619 () Bool)

(assert (=> mapNonEmpty!15357 m!377619))

(check-sat b_and!15807 (not b!380577) (not b!380565) tp_is_empty!9195 (not mapNonEmpty!15357) (not start!37428) (not b!380567) (not b!380575) (not b!380569) (not b!380570) (not b!380578) (not b!380568) (not b_next!8547) (not b!380566))
(check-sat b_and!15807 (not b_next!8547))
