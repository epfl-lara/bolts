; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94342 () Bool)

(assert start!94342)

(declare-fun b_free!21669 () Bool)

(declare-fun b_next!21669 () Bool)

(assert (=> start!94342 (= b_free!21669 (not b_next!21669))))

(declare-fun tp!76449 () Bool)

(declare-fun b_and!34459 () Bool)

(assert (=> start!94342 (= tp!76449 b_and!34459)))

(declare-fun b!1066415 () Bool)

(declare-fun res!711855 () Bool)

(declare-fun e!608152 () Bool)

(assert (=> b!1066415 (=> (not res!711855) (not e!608152))))

(declare-datatypes ((array!67916 0))(
  ( (array!67917 (arr!32656 (Array (_ BitVec 32) (_ BitVec 64))) (size!33193 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67916)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67916 (_ BitVec 32)) Bool)

(assert (=> b!1066415 (= res!711855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066416 () Bool)

(declare-fun e!608151 () Bool)

(declare-fun tp_is_empty!25479 () Bool)

(assert (=> b!1066416 (= e!608151 tp_is_empty!25479)))

(declare-fun b!1066418 () Bool)

(declare-fun e!608153 () Bool)

(assert (=> b!1066418 (= e!608153 true)))

(declare-datatypes ((V!39107 0))(
  ( (V!39108 (val!12790 Int)) )
))
(declare-datatypes ((tuple2!16308 0))(
  ( (tuple2!16309 (_1!8164 (_ BitVec 64)) (_2!8164 V!39107)) )
))
(declare-datatypes ((List!22901 0))(
  ( (Nil!22898) (Cons!22897 (h!24106 tuple2!16308) (t!32229 List!22901)) )
))
(declare-datatypes ((ListLongMap!14289 0))(
  ( (ListLongMap!14290 (toList!7160 List!22901)) )
))
(declare-fun lt!470808 () ListLongMap!14289)

(declare-fun lt!470805 () ListLongMap!14289)

(declare-fun -!618 (ListLongMap!14289 (_ BitVec 64)) ListLongMap!14289)

(assert (=> b!1066418 (= lt!470808 (-!618 lt!470805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470806 () ListLongMap!14289)

(declare-fun lt!470807 () ListLongMap!14289)

(assert (=> b!1066418 (= (-!618 lt!470806 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470807)))

(declare-datatypes ((Unit!34984 0))(
  ( (Unit!34985) )
))
(declare-fun lt!470812 () Unit!34984)

(declare-fun zeroValueBefore!47 () V!39107)

(declare-fun addThenRemoveForNewKeyIsSame!27 (ListLongMap!14289 (_ BitVec 64) V!39107) Unit!34984)

(assert (=> b!1066418 (= lt!470812 (addThenRemoveForNewKeyIsSame!27 lt!470807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470809 () ListLongMap!14289)

(declare-fun lt!470811 () ListLongMap!14289)

(assert (=> b!1066418 (and (= lt!470805 lt!470806) (= lt!470811 lt!470809))))

(declare-fun +!3109 (ListLongMap!14289 tuple2!16308) ListLongMap!14289)

(assert (=> b!1066418 (= lt!470806 (+!3109 lt!470807 (tuple2!16309 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-datatypes ((ValueCell!12036 0))(
  ( (ValueCellFull!12036 (v!15404 V!39107)) (EmptyCell!12036) )
))
(declare-datatypes ((array!67918 0))(
  ( (array!67919 (arr!32657 (Array (_ BitVec 32) ValueCell!12036)) (size!33194 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67918)

(declare-fun minValue!907 () V!39107)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39107)

(declare-fun getCurrentListMap!4072 (array!67916 array!67918 (_ BitVec 32) (_ BitVec 32) V!39107 V!39107 (_ BitVec 32) Int) ListLongMap!14289)

(assert (=> b!1066418 (= lt!470811 (getCurrentListMap!4072 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066418 (= lt!470805 (getCurrentListMap!4072 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39907 () Bool)

(declare-fun mapRes!39907 () Bool)

(assert (=> mapIsEmpty!39907 mapRes!39907))

(declare-fun mapNonEmpty!39907 () Bool)

(declare-fun tp!76448 () Bool)

(assert (=> mapNonEmpty!39907 (= mapRes!39907 (and tp!76448 e!608151))))

(declare-fun mapKey!39907 () (_ BitVec 32))

(declare-fun mapRest!39907 () (Array (_ BitVec 32) ValueCell!12036))

(declare-fun mapValue!39907 () ValueCell!12036)

(assert (=> mapNonEmpty!39907 (= (arr!32657 _values!955) (store mapRest!39907 mapKey!39907 mapValue!39907))))

(declare-fun b!1066419 () Bool)

(declare-fun e!608154 () Bool)

(declare-fun e!608149 () Bool)

(assert (=> b!1066419 (= e!608154 (and e!608149 mapRes!39907))))

(declare-fun condMapEmpty!39907 () Bool)

(declare-fun mapDefault!39907 () ValueCell!12036)

(assert (=> b!1066419 (= condMapEmpty!39907 (= (arr!32657 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12036)) mapDefault!39907)))))

(declare-fun b!1066420 () Bool)

(assert (=> b!1066420 (= e!608152 (not e!608153))))

(declare-fun res!711851 () Bool)

(assert (=> b!1066420 (=> res!711851 e!608153)))

(assert (=> b!1066420 (= res!711851 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066420 (= lt!470807 lt!470809)))

(declare-fun lt!470810 () Unit!34984)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!746 (array!67916 array!67918 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39107 V!39107 V!39107 V!39107 (_ BitVec 32) Int) Unit!34984)

(assert (=> b!1066420 (= lt!470810 (lemmaNoChangeToArrayThenSameMapNoExtras!746 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3707 (array!67916 array!67918 (_ BitVec 32) (_ BitVec 32) V!39107 V!39107 (_ BitVec 32) Int) ListLongMap!14289)

(assert (=> b!1066420 (= lt!470809 (getCurrentListMapNoExtraKeys!3707 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066420 (= lt!470807 (getCurrentListMapNoExtraKeys!3707 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066421 () Bool)

(declare-fun res!711854 () Bool)

(assert (=> b!1066421 (=> (not res!711854) (not e!608152))))

(declare-datatypes ((List!22902 0))(
  ( (Nil!22899) (Cons!22898 (h!24107 (_ BitVec 64)) (t!32230 List!22902)) )
))
(declare-fun arrayNoDuplicates!0 (array!67916 (_ BitVec 32) List!22902) Bool)

(assert (=> b!1066421 (= res!711854 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22899))))

(declare-fun b!1066422 () Bool)

(assert (=> b!1066422 (= e!608149 tp_is_empty!25479)))

(declare-fun res!711853 () Bool)

(assert (=> start!94342 (=> (not res!711853) (not e!608152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94342 (= res!711853 (validMask!0 mask!1515))))

(assert (=> start!94342 e!608152))

(assert (=> start!94342 true))

(assert (=> start!94342 tp_is_empty!25479))

(declare-fun array_inv!25120 (array!67918) Bool)

(assert (=> start!94342 (and (array_inv!25120 _values!955) e!608154)))

(assert (=> start!94342 tp!76449))

(declare-fun array_inv!25121 (array!67916) Bool)

(assert (=> start!94342 (array_inv!25121 _keys!1163)))

(declare-fun b!1066417 () Bool)

(declare-fun res!711852 () Bool)

(assert (=> b!1066417 (=> (not res!711852) (not e!608152))))

(assert (=> b!1066417 (= res!711852 (and (= (size!33194 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33193 _keys!1163) (size!33194 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94342 res!711853) b!1066417))

(assert (= (and b!1066417 res!711852) b!1066415))

(assert (= (and b!1066415 res!711855) b!1066421))

(assert (= (and b!1066421 res!711854) b!1066420))

(assert (= (and b!1066420 (not res!711851)) b!1066418))

(assert (= (and b!1066419 condMapEmpty!39907) mapIsEmpty!39907))

(assert (= (and b!1066419 (not condMapEmpty!39907)) mapNonEmpty!39907))

(get-info :version)

(assert (= (and mapNonEmpty!39907 ((_ is ValueCellFull!12036) mapValue!39907)) b!1066416))

(assert (= (and b!1066419 ((_ is ValueCellFull!12036) mapDefault!39907)) b!1066422))

(assert (= start!94342 b!1066419))

(declare-fun m!985219 () Bool)

(assert (=> mapNonEmpty!39907 m!985219))

(declare-fun m!985221 () Bool)

(assert (=> b!1066415 m!985221))

(declare-fun m!985223 () Bool)

(assert (=> b!1066418 m!985223))

(declare-fun m!985225 () Bool)

(assert (=> b!1066418 m!985225))

(declare-fun m!985227 () Bool)

(assert (=> b!1066418 m!985227))

(declare-fun m!985229 () Bool)

(assert (=> b!1066418 m!985229))

(declare-fun m!985231 () Bool)

(assert (=> b!1066418 m!985231))

(declare-fun m!985233 () Bool)

(assert (=> b!1066418 m!985233))

(declare-fun m!985235 () Bool)

(assert (=> start!94342 m!985235))

(declare-fun m!985237 () Bool)

(assert (=> start!94342 m!985237))

(declare-fun m!985239 () Bool)

(assert (=> start!94342 m!985239))

(declare-fun m!985241 () Bool)

(assert (=> b!1066421 m!985241))

(declare-fun m!985243 () Bool)

(assert (=> b!1066420 m!985243))

(declare-fun m!985245 () Bool)

(assert (=> b!1066420 m!985245))

(declare-fun m!985247 () Bool)

(assert (=> b!1066420 m!985247))

(check-sat (not b_next!21669) b_and!34459 (not start!94342) (not b!1066418) tp_is_empty!25479 (not mapNonEmpty!39907) (not b!1066420) (not b!1066421) (not b!1066415))
(check-sat b_and!34459 (not b_next!21669))
