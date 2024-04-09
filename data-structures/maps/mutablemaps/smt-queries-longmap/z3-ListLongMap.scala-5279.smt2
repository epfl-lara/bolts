; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70870 () Bool)

(assert start!70870)

(declare-fun b_free!13083 () Bool)

(declare-fun b_next!13083 () Bool)

(assert (=> start!70870 (= b_free!13083 (not b_next!13083))))

(declare-fun tp!45996 () Bool)

(declare-fun b_and!21985 () Bool)

(assert (=> start!70870 (= tp!45996 b_and!21985)))

(declare-fun b!822692 () Bool)

(declare-fun e!457490 () Bool)

(declare-fun e!457488 () Bool)

(declare-fun mapRes!23803 () Bool)

(assert (=> b!822692 (= e!457490 (and e!457488 mapRes!23803))))

(declare-fun condMapEmpty!23803 () Bool)

(declare-datatypes ((V!24725 0))(
  ( (V!24726 (val!7444 Int)) )
))
(declare-datatypes ((ValueCell!6981 0))(
  ( (ValueCellFull!6981 (v!9872 V!24725)) (EmptyCell!6981) )
))
(declare-datatypes ((array!45740 0))(
  ( (array!45741 (arr!21915 (Array (_ BitVec 32) ValueCell!6981)) (size!22336 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45740)

(declare-fun mapDefault!23803 () ValueCell!6981)

(assert (=> b!822692 (= condMapEmpty!23803 (= (arr!21915 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6981)) mapDefault!23803)))))

(declare-fun b!822693 () Bool)

(declare-fun e!457491 () Bool)

(declare-fun tp_is_empty!14793 () Bool)

(assert (=> b!822693 (= e!457491 tp_is_empty!14793)))

(declare-fun b!822694 () Bool)

(declare-fun res!561188 () Bool)

(declare-fun e!457489 () Bool)

(assert (=> b!822694 (=> (not res!561188) (not e!457489))))

(declare-datatypes ((array!45742 0))(
  ( (array!45743 (arr!21916 (Array (_ BitVec 32) (_ BitVec 64))) (size!22337 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45742)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822694 (= res!561188 (and (= (size!22336 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22337 _keys!976) (size!22336 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822695 () Bool)

(declare-fun res!561187 () Bool)

(assert (=> b!822695 (=> (not res!561187) (not e!457489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45742 (_ BitVec 32)) Bool)

(assert (=> b!822695 (= res!561187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822697 () Bool)

(assert (=> b!822697 (= e!457488 tp_is_empty!14793)))

(declare-fun mapIsEmpty!23803 () Bool)

(assert (=> mapIsEmpty!23803 mapRes!23803))

(declare-fun mapNonEmpty!23803 () Bool)

(declare-fun tp!45997 () Bool)

(assert (=> mapNonEmpty!23803 (= mapRes!23803 (and tp!45997 e!457491))))

(declare-fun mapValue!23803 () ValueCell!6981)

(declare-fun mapRest!23803 () (Array (_ BitVec 32) ValueCell!6981))

(declare-fun mapKey!23803 () (_ BitVec 32))

(assert (=> mapNonEmpty!23803 (= (arr!21915 _values!788) (store mapRest!23803 mapKey!23803 mapValue!23803))))

(declare-fun b!822698 () Bool)

(declare-fun e!457492 () Bool)

(assert (=> b!822698 (= e!457492 true)))

(declare-datatypes ((tuple2!9828 0))(
  ( (tuple2!9829 (_1!4924 (_ BitVec 64)) (_2!4924 V!24725)) )
))
(declare-datatypes ((List!15688 0))(
  ( (Nil!15685) (Cons!15684 (h!16813 tuple2!9828) (t!22035 List!15688)) )
))
(declare-datatypes ((ListLongMap!8665 0))(
  ( (ListLongMap!8666 (toList!4348 List!15688)) )
))
(declare-fun lt!370498 () ListLongMap!8665)

(declare-fun lt!370506 () ListLongMap!8665)

(declare-fun lt!370501 () tuple2!9828)

(declare-fun +!1851 (ListLongMap!8665 tuple2!9828) ListLongMap!8665)

(assert (=> b!822698 (= lt!370498 (+!1851 lt!370506 lt!370501))))

(declare-fun zeroValueAfter!34 () V!24725)

(declare-fun minValue!754 () V!24725)

(declare-datatypes ((Unit!28140 0))(
  ( (Unit!28141) )
))
(declare-fun lt!370500 () Unit!28140)

(declare-fun lt!370507 () ListLongMap!8665)

(declare-fun addCommutativeForDiffKeys!446 (ListLongMap!8665 (_ BitVec 64) V!24725 (_ BitVec 64) V!24725) Unit!28140)

(assert (=> b!822698 (= lt!370500 (addCommutativeForDiffKeys!446 lt!370507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370502 () ListLongMap!8665)

(assert (=> b!822698 (= lt!370502 lt!370498)))

(declare-fun lt!370505 () tuple2!9828)

(assert (=> b!822698 (= lt!370498 (+!1851 (+!1851 lt!370507 lt!370501) lt!370505))))

(assert (=> b!822698 (= lt!370501 (tuple2!9829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370503 () ListLongMap!8665)

(assert (=> b!822698 (= lt!370503 lt!370506)))

(assert (=> b!822698 (= lt!370506 (+!1851 lt!370507 lt!370505))))

(assert (=> b!822698 (= lt!370505 (tuple2!9829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2481 (array!45742 array!45740 (_ BitVec 32) (_ BitVec 32) V!24725 V!24725 (_ BitVec 32) Int) ListLongMap!8665)

(assert (=> b!822698 (= lt!370502 (getCurrentListMap!2481 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24725)

(assert (=> b!822698 (= lt!370503 (getCurrentListMap!2481 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822699 () Bool)

(assert (=> b!822699 (= e!457489 (not e!457492))))

(declare-fun res!561186 () Bool)

(assert (=> b!822699 (=> res!561186 e!457492)))

(assert (=> b!822699 (= res!561186 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370504 () ListLongMap!8665)

(assert (=> b!822699 (= lt!370507 lt!370504)))

(declare-fun lt!370499 () Unit!28140)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!490 (array!45742 array!45740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24725 V!24725 V!24725 V!24725 (_ BitVec 32) Int) Unit!28140)

(assert (=> b!822699 (= lt!370499 (lemmaNoChangeToArrayThenSameMapNoExtras!490 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2374 (array!45742 array!45740 (_ BitVec 32) (_ BitVec 32) V!24725 V!24725 (_ BitVec 32) Int) ListLongMap!8665)

(assert (=> b!822699 (= lt!370504 (getCurrentListMapNoExtraKeys!2374 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822699 (= lt!370507 (getCurrentListMapNoExtraKeys!2374 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822696 () Bool)

(declare-fun res!561189 () Bool)

(assert (=> b!822696 (=> (not res!561189) (not e!457489))))

(declare-datatypes ((List!15689 0))(
  ( (Nil!15686) (Cons!15685 (h!16814 (_ BitVec 64)) (t!22036 List!15689)) )
))
(declare-fun arrayNoDuplicates!0 (array!45742 (_ BitVec 32) List!15689) Bool)

(assert (=> b!822696 (= res!561189 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15686))))

(declare-fun res!561185 () Bool)

(assert (=> start!70870 (=> (not res!561185) (not e!457489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70870 (= res!561185 (validMask!0 mask!1312))))

(assert (=> start!70870 e!457489))

(assert (=> start!70870 tp_is_empty!14793))

(declare-fun array_inv!17473 (array!45742) Bool)

(assert (=> start!70870 (array_inv!17473 _keys!976)))

(assert (=> start!70870 true))

(declare-fun array_inv!17474 (array!45740) Bool)

(assert (=> start!70870 (and (array_inv!17474 _values!788) e!457490)))

(assert (=> start!70870 tp!45996))

(assert (= (and start!70870 res!561185) b!822694))

(assert (= (and b!822694 res!561188) b!822695))

(assert (= (and b!822695 res!561187) b!822696))

(assert (= (and b!822696 res!561189) b!822699))

(assert (= (and b!822699 (not res!561186)) b!822698))

(assert (= (and b!822692 condMapEmpty!23803) mapIsEmpty!23803))

(assert (= (and b!822692 (not condMapEmpty!23803)) mapNonEmpty!23803))

(get-info :version)

(assert (= (and mapNonEmpty!23803 ((_ is ValueCellFull!6981) mapValue!23803)) b!822693))

(assert (= (and b!822692 ((_ is ValueCellFull!6981) mapDefault!23803)) b!822697))

(assert (= start!70870 b!822692))

(declare-fun m!764751 () Bool)

(assert (=> b!822698 m!764751))

(declare-fun m!764753 () Bool)

(assert (=> b!822698 m!764753))

(declare-fun m!764755 () Bool)

(assert (=> b!822698 m!764755))

(declare-fun m!764757 () Bool)

(assert (=> b!822698 m!764757))

(declare-fun m!764759 () Bool)

(assert (=> b!822698 m!764759))

(assert (=> b!822698 m!764757))

(declare-fun m!764761 () Bool)

(assert (=> b!822698 m!764761))

(declare-fun m!764763 () Bool)

(assert (=> b!822698 m!764763))

(declare-fun m!764765 () Bool)

(assert (=> mapNonEmpty!23803 m!764765))

(declare-fun m!764767 () Bool)

(assert (=> b!822695 m!764767))

(declare-fun m!764769 () Bool)

(assert (=> b!822699 m!764769))

(declare-fun m!764771 () Bool)

(assert (=> b!822699 m!764771))

(declare-fun m!764773 () Bool)

(assert (=> b!822699 m!764773))

(declare-fun m!764775 () Bool)

(assert (=> start!70870 m!764775))

(declare-fun m!764777 () Bool)

(assert (=> start!70870 m!764777))

(declare-fun m!764779 () Bool)

(assert (=> start!70870 m!764779))

(declare-fun m!764781 () Bool)

(assert (=> b!822696 m!764781))

(check-sat (not mapNonEmpty!23803) (not b!822698) (not b_next!13083) (not b!822696) (not b!822699) tp_is_empty!14793 (not b!822695) (not start!70870) b_and!21985)
(check-sat b_and!21985 (not b_next!13083))
