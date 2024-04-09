; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70962 () Bool)

(assert start!70962)

(declare-fun b_free!13155 () Bool)

(declare-fun b_next!13155 () Bool)

(assert (=> start!70962 (= b_free!13155 (not b_next!13155))))

(declare-fun tp!46215 () Bool)

(declare-fun b_and!22069 () Bool)

(assert (=> start!70962 (= tp!46215 b_and!22069)))

(declare-fun b!823705 () Bool)

(declare-fun res!561772 () Bool)

(declare-fun e!458219 () Bool)

(assert (=> b!823705 (=> (not res!561772) (not e!458219))))

(declare-datatypes ((array!45880 0))(
  ( (array!45881 (arr!21984 (Array (_ BitVec 32) (_ BitVec 64))) (size!22405 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45880)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24821 0))(
  ( (V!24822 (val!7480 Int)) )
))
(declare-datatypes ((ValueCell!7017 0))(
  ( (ValueCellFull!7017 (v!9909 V!24821)) (EmptyCell!7017) )
))
(declare-datatypes ((array!45882 0))(
  ( (array!45883 (arr!21985 (Array (_ BitVec 32) ValueCell!7017)) (size!22406 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45882)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(assert (=> b!823705 (= res!561772 (and (= (size!22406 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22405 _keys!976) (size!22406 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823706 () Bool)

(declare-fun e!458220 () Bool)

(declare-fun tp_is_empty!14865 () Bool)

(assert (=> b!823706 (= e!458220 tp_is_empty!14865)))

(declare-fun b!823707 () Bool)

(assert (=> b!823707 (= e!458219 (not true))))

(declare-datatypes ((tuple2!9884 0))(
  ( (tuple2!9885 (_1!4952 (_ BitVec 64)) (_2!4952 V!24821)) )
))
(declare-datatypes ((List!15743 0))(
  ( (Nil!15740) (Cons!15739 (h!16868 tuple2!9884) (t!22092 List!15743)) )
))
(declare-datatypes ((ListLongMap!8721 0))(
  ( (ListLongMap!8722 (toList!4376 List!15743)) )
))
(declare-fun lt!371511 () ListLongMap!8721)

(declare-fun lt!371510 () ListLongMap!8721)

(assert (=> b!823707 (= lt!371511 lt!371510)))

(declare-fun zeroValueBefore!34 () V!24821)

(declare-fun zeroValueAfter!34 () V!24821)

(declare-fun minValue!754 () V!24821)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28198 0))(
  ( (Unit!28199) )
))
(declare-fun lt!371509 () Unit!28198)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!514 (array!45880 array!45882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24821 V!24821 V!24821 V!24821 (_ BitVec 32) Int) Unit!28198)

(assert (=> b!823707 (= lt!371509 (lemmaNoChangeToArrayThenSameMapNoExtras!514 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2398 (array!45880 array!45882 (_ BitVec 32) (_ BitVec 32) V!24821 V!24821 (_ BitVec 32) Int) ListLongMap!8721)

(assert (=> b!823707 (= lt!371510 (getCurrentListMapNoExtraKeys!2398 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823707 (= lt!371511 (getCurrentListMapNoExtraKeys!2398 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23914 () Bool)

(declare-fun mapRes!23914 () Bool)

(declare-fun tp!46216 () Bool)

(declare-fun e!458217 () Bool)

(assert (=> mapNonEmpty!23914 (= mapRes!23914 (and tp!46216 e!458217))))

(declare-fun mapValue!23914 () ValueCell!7017)

(declare-fun mapKey!23914 () (_ BitVec 32))

(declare-fun mapRest!23914 () (Array (_ BitVec 32) ValueCell!7017))

(assert (=> mapNonEmpty!23914 (= (arr!21985 _values!788) (store mapRest!23914 mapKey!23914 mapValue!23914))))

(declare-fun mapIsEmpty!23914 () Bool)

(assert (=> mapIsEmpty!23914 mapRes!23914))

(declare-fun b!823708 () Bool)

(declare-fun res!561773 () Bool)

(assert (=> b!823708 (=> (not res!561773) (not e!458219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45880 (_ BitVec 32)) Bool)

(assert (=> b!823708 (= res!561773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823709 () Bool)

(assert (=> b!823709 (= e!458217 tp_is_empty!14865)))

(declare-fun res!561775 () Bool)

(assert (=> start!70962 (=> (not res!561775) (not e!458219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70962 (= res!561775 (validMask!0 mask!1312))))

(assert (=> start!70962 e!458219))

(assert (=> start!70962 tp_is_empty!14865))

(declare-fun array_inv!17519 (array!45880) Bool)

(assert (=> start!70962 (array_inv!17519 _keys!976)))

(assert (=> start!70962 true))

(declare-fun e!458216 () Bool)

(declare-fun array_inv!17520 (array!45882) Bool)

(assert (=> start!70962 (and (array_inv!17520 _values!788) e!458216)))

(assert (=> start!70962 tp!46215))

(declare-fun b!823710 () Bool)

(declare-fun res!561774 () Bool)

(assert (=> b!823710 (=> (not res!561774) (not e!458219))))

(declare-datatypes ((List!15744 0))(
  ( (Nil!15741) (Cons!15740 (h!16869 (_ BitVec 64)) (t!22093 List!15744)) )
))
(declare-fun arrayNoDuplicates!0 (array!45880 (_ BitVec 32) List!15744) Bool)

(assert (=> b!823710 (= res!561774 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15741))))

(declare-fun b!823711 () Bool)

(assert (=> b!823711 (= e!458216 (and e!458220 mapRes!23914))))

(declare-fun condMapEmpty!23914 () Bool)

(declare-fun mapDefault!23914 () ValueCell!7017)

(assert (=> b!823711 (= condMapEmpty!23914 (= (arr!21985 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7017)) mapDefault!23914)))))

(assert (= (and start!70962 res!561775) b!823705))

(assert (= (and b!823705 res!561772) b!823708))

(assert (= (and b!823708 res!561773) b!823710))

(assert (= (and b!823710 res!561774) b!823707))

(assert (= (and b!823711 condMapEmpty!23914) mapIsEmpty!23914))

(assert (= (and b!823711 (not condMapEmpty!23914)) mapNonEmpty!23914))

(get-info :version)

(assert (= (and mapNonEmpty!23914 ((_ is ValueCellFull!7017) mapValue!23914)) b!823709))

(assert (= (and b!823711 ((_ is ValueCellFull!7017) mapDefault!23914)) b!823706))

(assert (= start!70962 b!823711))

(declare-fun m!765979 () Bool)

(assert (=> b!823708 m!765979))

(declare-fun m!765981 () Bool)

(assert (=> b!823710 m!765981))

(declare-fun m!765983 () Bool)

(assert (=> b!823707 m!765983))

(declare-fun m!765985 () Bool)

(assert (=> b!823707 m!765985))

(declare-fun m!765987 () Bool)

(assert (=> b!823707 m!765987))

(declare-fun m!765989 () Bool)

(assert (=> start!70962 m!765989))

(declare-fun m!765991 () Bool)

(assert (=> start!70962 m!765991))

(declare-fun m!765993 () Bool)

(assert (=> start!70962 m!765993))

(declare-fun m!765995 () Bool)

(assert (=> mapNonEmpty!23914 m!765995))

(check-sat tp_is_empty!14865 b_and!22069 (not b_next!13155) (not b!823707) (not b!823710) (not start!70962) (not mapNonEmpty!23914) (not b!823708))
(check-sat b_and!22069 (not b_next!13155))
