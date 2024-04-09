; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70446 () Bool)

(assert start!70446)

(declare-fun b_free!12765 () Bool)

(declare-fun b_next!12765 () Bool)

(assert (=> start!70446 (= b_free!12765 (not b_next!12765))))

(declare-fun tp!45024 () Bool)

(declare-fun b_and!21603 () Bool)

(assert (=> start!70446 (= tp!45024 b_and!21603)))

(declare-fun b!817836 () Bool)

(declare-fun e!453935 () Bool)

(declare-fun e!453931 () Bool)

(assert (=> b!817836 (= e!453935 (not e!453931))))

(declare-fun res!558303 () Bool)

(assert (=> b!817836 (=> res!558303 e!453931)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817836 (= res!558303 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24301 0))(
  ( (V!24302 (val!7285 Int)) )
))
(declare-datatypes ((tuple2!9586 0))(
  ( (tuple2!9587 (_1!4803 (_ BitVec 64)) (_2!4803 V!24301)) )
))
(declare-datatypes ((List!15453 0))(
  ( (Nil!15450) (Cons!15449 (h!16578 tuple2!9586) (t!21788 List!15453)) )
))
(declare-datatypes ((ListLongMap!8423 0))(
  ( (ListLongMap!8424 (toList!4227 List!15453)) )
))
(declare-fun lt!366451 () ListLongMap!8423)

(declare-fun lt!366450 () ListLongMap!8423)

(assert (=> b!817836 (= lt!366451 lt!366450)))

(declare-fun zeroValueBefore!34 () V!24301)

(declare-datatypes ((array!45126 0))(
  ( (array!45127 (arr!21614 (Array (_ BitVec 32) (_ BitVec 64))) (size!22035 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45126)

(declare-fun zeroValueAfter!34 () V!24301)

(declare-fun minValue!754 () V!24301)

(declare-datatypes ((ValueCell!6822 0))(
  ( (ValueCellFull!6822 (v!9710 V!24301)) (EmptyCell!6822) )
))
(declare-datatypes ((array!45128 0))(
  ( (array!45129 (arr!21615 (Array (_ BitVec 32) ValueCell!6822)) (size!22036 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45128)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27906 0))(
  ( (Unit!27907) )
))
(declare-fun lt!366452 () Unit!27906)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!388 (array!45126 array!45128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24301 V!24301 V!24301 V!24301 (_ BitVec 32) Int) Unit!27906)

(assert (=> b!817836 (= lt!366452 (lemmaNoChangeToArrayThenSameMapNoExtras!388 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2272 (array!45126 array!45128 (_ BitVec 32) (_ BitVec 32) V!24301 V!24301 (_ BitVec 32) Int) ListLongMap!8423)

(assert (=> b!817836 (= lt!366450 (getCurrentListMapNoExtraKeys!2272 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817836 (= lt!366451 (getCurrentListMapNoExtraKeys!2272 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817838 () Bool)

(declare-fun res!558300 () Bool)

(assert (=> b!817838 (=> (not res!558300) (not e!453935))))

(declare-datatypes ((List!15454 0))(
  ( (Nil!15451) (Cons!15450 (h!16579 (_ BitVec 64)) (t!21789 List!15454)) )
))
(declare-fun arrayNoDuplicates!0 (array!45126 (_ BitVec 32) List!15454) Bool)

(assert (=> b!817838 (= res!558300 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15451))))

(declare-fun mapIsEmpty!23308 () Bool)

(declare-fun mapRes!23308 () Bool)

(assert (=> mapIsEmpty!23308 mapRes!23308))

(declare-fun b!817839 () Bool)

(declare-fun res!558301 () Bool)

(assert (=> b!817839 (=> (not res!558301) (not e!453935))))

(assert (=> b!817839 (= res!558301 (and (= (size!22036 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22035 _keys!976) (size!22036 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817840 () Bool)

(declare-fun e!453934 () Bool)

(declare-fun tp_is_empty!14475 () Bool)

(assert (=> b!817840 (= e!453934 tp_is_empty!14475)))

(declare-fun mapNonEmpty!23308 () Bool)

(declare-fun tp!45025 () Bool)

(assert (=> mapNonEmpty!23308 (= mapRes!23308 (and tp!45025 e!453934))))

(declare-fun mapKey!23308 () (_ BitVec 32))

(declare-fun mapRest!23308 () (Array (_ BitVec 32) ValueCell!6822))

(declare-fun mapValue!23308 () ValueCell!6822)

(assert (=> mapNonEmpty!23308 (= (arr!21615 _values!788) (store mapRest!23308 mapKey!23308 mapValue!23308))))

(declare-fun b!817841 () Bool)

(declare-fun res!558304 () Bool)

(assert (=> b!817841 (=> (not res!558304) (not e!453935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45126 (_ BitVec 32)) Bool)

(assert (=> b!817841 (= res!558304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817837 () Bool)

(assert (=> b!817837 (= e!453931 true)))

(declare-fun lt!366453 () ListLongMap!8423)

(declare-fun getCurrentListMap!2390 (array!45126 array!45128 (_ BitVec 32) (_ BitVec 32) V!24301 V!24301 (_ BitVec 32) Int) ListLongMap!8423)

(assert (=> b!817837 (= lt!366453 (getCurrentListMap!2390 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!558302 () Bool)

(assert (=> start!70446 (=> (not res!558302) (not e!453935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70446 (= res!558302 (validMask!0 mask!1312))))

(assert (=> start!70446 e!453935))

(assert (=> start!70446 tp_is_empty!14475))

(declare-fun array_inv!17263 (array!45126) Bool)

(assert (=> start!70446 (array_inv!17263 _keys!976)))

(assert (=> start!70446 true))

(declare-fun e!453936 () Bool)

(declare-fun array_inv!17264 (array!45128) Bool)

(assert (=> start!70446 (and (array_inv!17264 _values!788) e!453936)))

(assert (=> start!70446 tp!45024))

(declare-fun b!817842 () Bool)

(declare-fun e!453932 () Bool)

(assert (=> b!817842 (= e!453932 tp_is_empty!14475)))

(declare-fun b!817843 () Bool)

(assert (=> b!817843 (= e!453936 (and e!453932 mapRes!23308))))

(declare-fun condMapEmpty!23308 () Bool)

(declare-fun mapDefault!23308 () ValueCell!6822)

(assert (=> b!817843 (= condMapEmpty!23308 (= (arr!21615 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6822)) mapDefault!23308)))))

(assert (= (and start!70446 res!558302) b!817839))

(assert (= (and b!817839 res!558301) b!817841))

(assert (= (and b!817841 res!558304) b!817838))

(assert (= (and b!817838 res!558300) b!817836))

(assert (= (and b!817836 (not res!558303)) b!817837))

(assert (= (and b!817843 condMapEmpty!23308) mapIsEmpty!23308))

(assert (= (and b!817843 (not condMapEmpty!23308)) mapNonEmpty!23308))

(get-info :version)

(assert (= (and mapNonEmpty!23308 ((_ is ValueCellFull!6822) mapValue!23308)) b!817840))

(assert (= (and b!817843 ((_ is ValueCellFull!6822) mapDefault!23308)) b!817842))

(assert (= start!70446 b!817843))

(declare-fun m!759419 () Bool)

(assert (=> b!817836 m!759419))

(declare-fun m!759421 () Bool)

(assert (=> b!817836 m!759421))

(declare-fun m!759423 () Bool)

(assert (=> b!817836 m!759423))

(declare-fun m!759425 () Bool)

(assert (=> start!70446 m!759425))

(declare-fun m!759427 () Bool)

(assert (=> start!70446 m!759427))

(declare-fun m!759429 () Bool)

(assert (=> start!70446 m!759429))

(declare-fun m!759431 () Bool)

(assert (=> b!817841 m!759431))

(declare-fun m!759433 () Bool)

(assert (=> mapNonEmpty!23308 m!759433))

(declare-fun m!759435 () Bool)

(assert (=> b!817837 m!759435))

(declare-fun m!759437 () Bool)

(assert (=> b!817838 m!759437))

(check-sat tp_is_empty!14475 (not b!817837) (not b!817836) (not b!817838) (not start!70446) b_and!21603 (not mapNonEmpty!23308) (not b!817841) (not b_next!12765))
(check-sat b_and!21603 (not b_next!12765))
