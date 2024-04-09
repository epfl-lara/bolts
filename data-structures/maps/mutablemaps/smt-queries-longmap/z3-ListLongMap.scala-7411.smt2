; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94318 () Bool)

(assert start!94318)

(declare-fun b_free!21645 () Bool)

(declare-fun b_next!21645 () Bool)

(assert (=> start!94318 (= b_free!21645 (not b_next!21645))))

(declare-fun tp!76377 () Bool)

(declare-fun b_and!34435 () Bool)

(assert (=> start!94318 (= tp!76377 b_and!34435)))

(declare-fun b!1066127 () Bool)

(declare-fun res!711674 () Bool)

(declare-fun e!607937 () Bool)

(assert (=> b!1066127 (=> (not res!711674) (not e!607937))))

(declare-datatypes ((array!67870 0))(
  ( (array!67871 (arr!32633 (Array (_ BitVec 32) (_ BitVec 64))) (size!33170 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67870)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67870 (_ BitVec 32)) Bool)

(assert (=> b!1066127 (= res!711674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39871 () Bool)

(declare-fun mapRes!39871 () Bool)

(declare-fun tp!76376 () Bool)

(declare-fun e!607935 () Bool)

(assert (=> mapNonEmpty!39871 (= mapRes!39871 (and tp!76376 e!607935))))

(declare-datatypes ((V!39075 0))(
  ( (V!39076 (val!12778 Int)) )
))
(declare-datatypes ((ValueCell!12024 0))(
  ( (ValueCellFull!12024 (v!15392 V!39075)) (EmptyCell!12024) )
))
(declare-fun mapValue!39871 () ValueCell!12024)

(declare-datatypes ((array!67872 0))(
  ( (array!67873 (arr!32634 (Array (_ BitVec 32) ValueCell!12024)) (size!33171 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67872)

(declare-fun mapRest!39871 () (Array (_ BitVec 32) ValueCell!12024))

(declare-fun mapKey!39871 () (_ BitVec 32))

(assert (=> mapNonEmpty!39871 (= (arr!32634 _values!955) (store mapRest!39871 mapKey!39871 mapValue!39871))))

(declare-fun b!1066128 () Bool)

(declare-fun res!711671 () Bool)

(assert (=> b!1066128 (=> (not res!711671) (not e!607937))))

(declare-datatypes ((List!22884 0))(
  ( (Nil!22881) (Cons!22880 (h!24089 (_ BitVec 64)) (t!32212 List!22884)) )
))
(declare-fun arrayNoDuplicates!0 (array!67870 (_ BitVec 32) List!22884) Bool)

(assert (=> b!1066128 (= res!711671 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22881))))

(declare-fun res!711673 () Bool)

(assert (=> start!94318 (=> (not res!711673) (not e!607937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94318 (= res!711673 (validMask!0 mask!1515))))

(assert (=> start!94318 e!607937))

(assert (=> start!94318 true))

(declare-fun tp_is_empty!25455 () Bool)

(assert (=> start!94318 tp_is_empty!25455))

(declare-fun e!607938 () Bool)

(declare-fun array_inv!25106 (array!67872) Bool)

(assert (=> start!94318 (and (array_inv!25106 _values!955) e!607938)))

(assert (=> start!94318 tp!76377))

(declare-fun array_inv!25107 (array!67870) Bool)

(assert (=> start!94318 (array_inv!25107 _keys!1163)))

(declare-fun b!1066129 () Bool)

(declare-fun e!607934 () Bool)

(assert (=> b!1066129 (= e!607934 true)))

(declare-datatypes ((tuple2!16288 0))(
  ( (tuple2!16289 (_1!8154 (_ BitVec 64)) (_2!8154 V!39075)) )
))
(declare-datatypes ((List!22885 0))(
  ( (Nil!22882) (Cons!22881 (h!24090 tuple2!16288) (t!32213 List!22885)) )
))
(declare-datatypes ((ListLongMap!14269 0))(
  ( (ListLongMap!14270 (toList!7150 List!22885)) )
))
(declare-fun lt!470523 () ListLongMap!14269)

(declare-fun lt!470520 () ListLongMap!14269)

(declare-fun -!612 (ListLongMap!14269 (_ BitVec 64)) ListLongMap!14269)

(assert (=> b!1066129 (= lt!470523 (-!612 lt!470520 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470518 () ListLongMap!14269)

(declare-fun lt!470517 () ListLongMap!14269)

(assert (=> b!1066129 (= (-!612 lt!470518 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470517)))

(declare-datatypes ((Unit!34964 0))(
  ( (Unit!34965) )
))
(declare-fun lt!470521 () Unit!34964)

(declare-fun zeroValueBefore!47 () V!39075)

(declare-fun addThenRemoveForNewKeyIsSame!21 (ListLongMap!14269 (_ BitVec 64) V!39075) Unit!34964)

(assert (=> b!1066129 (= lt!470521 (addThenRemoveForNewKeyIsSame!21 lt!470517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470524 () ListLongMap!14269)

(declare-fun lt!470519 () ListLongMap!14269)

(assert (=> b!1066129 (and (= lt!470520 lt!470518) (= lt!470519 lt!470524))))

(declare-fun +!3103 (ListLongMap!14269 tuple2!16288) ListLongMap!14269)

(assert (=> b!1066129 (= lt!470518 (+!3103 lt!470517 (tuple2!16289 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39075)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39075)

(declare-fun getCurrentListMap!4066 (array!67870 array!67872 (_ BitVec 32) (_ BitVec 32) V!39075 V!39075 (_ BitVec 32) Int) ListLongMap!14269)

(assert (=> b!1066129 (= lt!470519 (getCurrentListMap!4066 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066129 (= lt!470520 (getCurrentListMap!4066 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066130 () Bool)

(declare-fun res!711672 () Bool)

(assert (=> b!1066130 (=> (not res!711672) (not e!607937))))

(assert (=> b!1066130 (= res!711672 (and (= (size!33171 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33170 _keys!1163) (size!33171 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39871 () Bool)

(assert (=> mapIsEmpty!39871 mapRes!39871))

(declare-fun b!1066131 () Bool)

(assert (=> b!1066131 (= e!607935 tp_is_empty!25455)))

(declare-fun b!1066132 () Bool)

(declare-fun e!607936 () Bool)

(assert (=> b!1066132 (= e!607938 (and e!607936 mapRes!39871))))

(declare-fun condMapEmpty!39871 () Bool)

(declare-fun mapDefault!39871 () ValueCell!12024)

(assert (=> b!1066132 (= condMapEmpty!39871 (= (arr!32634 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12024)) mapDefault!39871)))))

(declare-fun b!1066133 () Bool)

(assert (=> b!1066133 (= e!607936 tp_is_empty!25455)))

(declare-fun b!1066134 () Bool)

(assert (=> b!1066134 (= e!607937 (not e!607934))))

(declare-fun res!711675 () Bool)

(assert (=> b!1066134 (=> res!711675 e!607934)))

(assert (=> b!1066134 (= res!711675 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066134 (= lt!470517 lt!470524)))

(declare-fun lt!470522 () Unit!34964)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!737 (array!67870 array!67872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39075 V!39075 V!39075 V!39075 (_ BitVec 32) Int) Unit!34964)

(assert (=> b!1066134 (= lt!470522 (lemmaNoChangeToArrayThenSameMapNoExtras!737 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3698 (array!67870 array!67872 (_ BitVec 32) (_ BitVec 32) V!39075 V!39075 (_ BitVec 32) Int) ListLongMap!14269)

(assert (=> b!1066134 (= lt!470524 (getCurrentListMapNoExtraKeys!3698 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066134 (= lt!470517 (getCurrentListMapNoExtraKeys!3698 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94318 res!711673) b!1066130))

(assert (= (and b!1066130 res!711672) b!1066127))

(assert (= (and b!1066127 res!711674) b!1066128))

(assert (= (and b!1066128 res!711671) b!1066134))

(assert (= (and b!1066134 (not res!711675)) b!1066129))

(assert (= (and b!1066132 condMapEmpty!39871) mapIsEmpty!39871))

(assert (= (and b!1066132 (not condMapEmpty!39871)) mapNonEmpty!39871))

(get-info :version)

(assert (= (and mapNonEmpty!39871 ((_ is ValueCellFull!12024) mapValue!39871)) b!1066131))

(assert (= (and b!1066132 ((_ is ValueCellFull!12024) mapDefault!39871)) b!1066133))

(assert (= start!94318 b!1066132))

(declare-fun m!984859 () Bool)

(assert (=> b!1066129 m!984859))

(declare-fun m!984861 () Bool)

(assert (=> b!1066129 m!984861))

(declare-fun m!984863 () Bool)

(assert (=> b!1066129 m!984863))

(declare-fun m!984865 () Bool)

(assert (=> b!1066129 m!984865))

(declare-fun m!984867 () Bool)

(assert (=> b!1066129 m!984867))

(declare-fun m!984869 () Bool)

(assert (=> b!1066129 m!984869))

(declare-fun m!984871 () Bool)

(assert (=> b!1066134 m!984871))

(declare-fun m!984873 () Bool)

(assert (=> b!1066134 m!984873))

(declare-fun m!984875 () Bool)

(assert (=> b!1066134 m!984875))

(declare-fun m!984877 () Bool)

(assert (=> b!1066128 m!984877))

(declare-fun m!984879 () Bool)

(assert (=> mapNonEmpty!39871 m!984879))

(declare-fun m!984881 () Bool)

(assert (=> start!94318 m!984881))

(declare-fun m!984883 () Bool)

(assert (=> start!94318 m!984883))

(declare-fun m!984885 () Bool)

(assert (=> start!94318 m!984885))

(declare-fun m!984887 () Bool)

(assert (=> b!1066127 m!984887))

(check-sat tp_is_empty!25455 (not b!1066134) b_and!34435 (not b!1066127) (not b_next!21645) (not start!94318) (not mapNonEmpty!39871) (not b!1066129) (not b!1066128))
(check-sat b_and!34435 (not b_next!21645))
