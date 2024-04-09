; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70408 () Bool)

(assert start!70408)

(declare-fun b_free!12741 () Bool)

(declare-fun b_next!12741 () Bool)

(assert (=> start!70408 (= b_free!12741 (not b_next!12741))))

(declare-fun tp!44950 () Bool)

(declare-fun b_and!21571 () Bool)

(assert (=> start!70408 (= tp!44950 b_and!21571)))

(declare-fun mapNonEmpty!23269 () Bool)

(declare-fun mapRes!23269 () Bool)

(declare-fun tp!44949 () Bool)

(declare-fun e!453674 () Bool)

(assert (=> mapNonEmpty!23269 (= mapRes!23269 (and tp!44949 e!453674))))

(declare-fun mapKey!23269 () (_ BitVec 32))

(declare-datatypes ((V!24269 0))(
  ( (V!24270 (val!7273 Int)) )
))
(declare-datatypes ((ValueCell!6810 0))(
  ( (ValueCellFull!6810 (v!9698 V!24269)) (EmptyCell!6810) )
))
(declare-datatypes ((array!45076 0))(
  ( (array!45077 (arr!21590 (Array (_ BitVec 32) ValueCell!6810)) (size!22011 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45076)

(declare-fun mapRest!23269 () (Array (_ BitVec 32) ValueCell!6810))

(declare-fun mapValue!23269 () ValueCell!6810)

(assert (=> mapNonEmpty!23269 (= (arr!21590 _values!788) (store mapRest!23269 mapKey!23269 mapValue!23269))))

(declare-fun res!558104 () Bool)

(declare-fun e!453675 () Bool)

(assert (=> start!70408 (=> (not res!558104) (not e!453675))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70408 (= res!558104 (validMask!0 mask!1312))))

(assert (=> start!70408 e!453675))

(declare-fun tp_is_empty!14451 () Bool)

(assert (=> start!70408 tp_is_empty!14451))

(declare-datatypes ((array!45078 0))(
  ( (array!45079 (arr!21591 (Array (_ BitVec 32) (_ BitVec 64))) (size!22012 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45078)

(declare-fun array_inv!17245 (array!45078) Bool)

(assert (=> start!70408 (array_inv!17245 _keys!976)))

(assert (=> start!70408 true))

(declare-fun e!453676 () Bool)

(declare-fun array_inv!17246 (array!45076) Bool)

(assert (=> start!70408 (and (array_inv!17246 _values!788) e!453676)))

(assert (=> start!70408 tp!44950))

(declare-fun b!817476 () Bool)

(declare-fun res!558103 () Bool)

(assert (=> b!817476 (=> (not res!558103) (not e!453675))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817476 (= res!558103 (and (= (size!22011 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22012 _keys!976) (size!22011 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817477 () Bool)

(declare-fun res!558102 () Bool)

(assert (=> b!817477 (=> (not res!558102) (not e!453675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45078 (_ BitVec 32)) Bool)

(assert (=> b!817477 (= res!558102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817478 () Bool)

(assert (=> b!817478 (= e!453674 tp_is_empty!14451)))

(declare-fun b!817479 () Bool)

(assert (=> b!817479 (= e!453675 (not true))))

(declare-datatypes ((tuple2!9562 0))(
  ( (tuple2!9563 (_1!4791 (_ BitVec 64)) (_2!4791 V!24269)) )
))
(declare-datatypes ((List!15431 0))(
  ( (Nil!15428) (Cons!15427 (h!16556 tuple2!9562) (t!21764 List!15431)) )
))
(declare-datatypes ((ListLongMap!8399 0))(
  ( (ListLongMap!8400 (toList!4215 List!15431)) )
))
(declare-fun lt!366281 () ListLongMap!8399)

(declare-fun lt!366279 () ListLongMap!8399)

(assert (=> b!817479 (= lt!366281 lt!366279)))

(declare-fun zeroValueBefore!34 () V!24269)

(declare-fun zeroValueAfter!34 () V!24269)

(declare-fun minValue!754 () V!24269)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27884 0))(
  ( (Unit!27885) )
))
(declare-fun lt!366280 () Unit!27884)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!377 (array!45078 array!45076 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24269 V!24269 V!24269 V!24269 (_ BitVec 32) Int) Unit!27884)

(assert (=> b!817479 (= lt!366280 (lemmaNoChangeToArrayThenSameMapNoExtras!377 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2261 (array!45078 array!45076 (_ BitVec 32) (_ BitVec 32) V!24269 V!24269 (_ BitVec 32) Int) ListLongMap!8399)

(assert (=> b!817479 (= lt!366279 (getCurrentListMapNoExtraKeys!2261 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817479 (= lt!366281 (getCurrentListMapNoExtraKeys!2261 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817480 () Bool)

(declare-fun res!558105 () Bool)

(assert (=> b!817480 (=> (not res!558105) (not e!453675))))

(declare-datatypes ((List!15432 0))(
  ( (Nil!15429) (Cons!15428 (h!16557 (_ BitVec 64)) (t!21765 List!15432)) )
))
(declare-fun arrayNoDuplicates!0 (array!45078 (_ BitVec 32) List!15432) Bool)

(assert (=> b!817480 (= res!558105 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15429))))

(declare-fun mapIsEmpty!23269 () Bool)

(assert (=> mapIsEmpty!23269 mapRes!23269))

(declare-fun b!817481 () Bool)

(declare-fun e!453677 () Bool)

(assert (=> b!817481 (= e!453676 (and e!453677 mapRes!23269))))

(declare-fun condMapEmpty!23269 () Bool)

(declare-fun mapDefault!23269 () ValueCell!6810)

(assert (=> b!817481 (= condMapEmpty!23269 (= (arr!21590 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6810)) mapDefault!23269)))))

(declare-fun b!817482 () Bool)

(assert (=> b!817482 (= e!453677 tp_is_empty!14451)))

(assert (= (and start!70408 res!558104) b!817476))

(assert (= (and b!817476 res!558103) b!817477))

(assert (= (and b!817477 res!558102) b!817480))

(assert (= (and b!817480 res!558105) b!817479))

(assert (= (and b!817481 condMapEmpty!23269) mapIsEmpty!23269))

(assert (= (and b!817481 (not condMapEmpty!23269)) mapNonEmpty!23269))

(get-info :version)

(assert (= (and mapNonEmpty!23269 ((_ is ValueCellFull!6810) mapValue!23269)) b!817478))

(assert (= (and b!817481 ((_ is ValueCellFull!6810) mapDefault!23269)) b!817482))

(assert (= start!70408 b!817481))

(declare-fun m!759123 () Bool)

(assert (=> start!70408 m!759123))

(declare-fun m!759125 () Bool)

(assert (=> start!70408 m!759125))

(declare-fun m!759127 () Bool)

(assert (=> start!70408 m!759127))

(declare-fun m!759129 () Bool)

(assert (=> b!817479 m!759129))

(declare-fun m!759131 () Bool)

(assert (=> b!817479 m!759131))

(declare-fun m!759133 () Bool)

(assert (=> b!817479 m!759133))

(declare-fun m!759135 () Bool)

(assert (=> mapNonEmpty!23269 m!759135))

(declare-fun m!759137 () Bool)

(assert (=> b!817480 m!759137))

(declare-fun m!759139 () Bool)

(assert (=> b!817477 m!759139))

(check-sat tp_is_empty!14451 (not b!817477) b_and!21571 (not b!817479) (not b!817480) (not b_next!12741) (not start!70408) (not mapNonEmpty!23269))
(check-sat b_and!21571 (not b_next!12741))
