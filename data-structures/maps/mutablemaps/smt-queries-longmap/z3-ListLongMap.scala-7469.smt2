; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94776 () Bool)

(assert start!94776)

(declare-fun b_free!21993 () Bool)

(declare-fun b_next!21993 () Bool)

(assert (=> start!94776 (= b_free!21993 (not b_next!21993))))

(declare-fun tp!77439 () Bool)

(declare-fun b_and!34841 () Bool)

(assert (=> start!94776 (= tp!77439 b_and!34841)))

(declare-datatypes ((V!39539 0))(
  ( (V!39540 (val!12952 Int)) )
))
(declare-datatypes ((tuple2!16544 0))(
  ( (tuple2!16545 (_1!8282 (_ BitVec 64)) (_2!8282 V!39539)) )
))
(declare-datatypes ((List!23128 0))(
  ( (Nil!23125) (Cons!23124 (h!24333 tuple2!16544) (t!32468 List!23128)) )
))
(declare-datatypes ((ListLongMap!14525 0))(
  ( (ListLongMap!14526 (toList!7278 List!23128)) )
))
(declare-fun lt!473727 () ListLongMap!14525)

(declare-fun lt!473731 () ListLongMap!14525)

(declare-fun b!1071160 () Bool)

(declare-fun e!611630 () Bool)

(declare-fun lt!473734 () tuple2!16544)

(declare-fun +!3135 (ListLongMap!14525 tuple2!16544) ListLongMap!14525)

(assert (=> b!1071160 (= e!611630 (= lt!473731 (+!3135 lt!473727 lt!473734)))))

(declare-fun b!1071161 () Bool)

(declare-fun res!714647 () Bool)

(declare-fun e!611632 () Bool)

(assert (=> b!1071161 (=> (not res!714647) (not e!611632))))

(declare-datatypes ((array!68540 0))(
  ( (array!68541 (arr!32962 (Array (_ BitVec 32) (_ BitVec 64))) (size!33499 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68540)

(declare-datatypes ((List!23129 0))(
  ( (Nil!23126) (Cons!23125 (h!24334 (_ BitVec 64)) (t!32469 List!23129)) )
))
(declare-fun arrayNoDuplicates!0 (array!68540 (_ BitVec 32) List!23129) Bool)

(assert (=> b!1071161 (= res!714647 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23126))))

(declare-fun mapNonEmpty!40411 () Bool)

(declare-fun mapRes!40411 () Bool)

(declare-fun tp!77438 () Bool)

(declare-fun e!611633 () Bool)

(assert (=> mapNonEmpty!40411 (= mapRes!40411 (and tp!77438 e!611633))))

(declare-fun mapKey!40411 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12198 0))(
  ( (ValueCellFull!12198 (v!15569 V!39539)) (EmptyCell!12198) )
))
(declare-fun mapRest!40411 () (Array (_ BitVec 32) ValueCell!12198))

(declare-fun mapValue!40411 () ValueCell!12198)

(declare-datatypes ((array!68542 0))(
  ( (array!68543 (arr!32963 (Array (_ BitVec 32) ValueCell!12198)) (size!33500 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68542)

(assert (=> mapNonEmpty!40411 (= (arr!32963 _values!955) (store mapRest!40411 mapKey!40411 mapValue!40411))))

(declare-fun b!1071162 () Bool)

(declare-fun e!611635 () Bool)

(declare-fun e!611631 () Bool)

(assert (=> b!1071162 (= e!611635 (and e!611631 mapRes!40411))))

(declare-fun condMapEmpty!40411 () Bool)

(declare-fun mapDefault!40411 () ValueCell!12198)

(assert (=> b!1071162 (= condMapEmpty!40411 (= (arr!32963 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12198)) mapDefault!40411)))))

(declare-fun b!1071163 () Bool)

(declare-fun tp_is_empty!25803 () Bool)

(assert (=> b!1071163 (= e!611633 tp_is_empty!25803)))

(declare-fun b!1071164 () Bool)

(assert (=> b!1071164 (= e!611631 tp_is_empty!25803)))

(declare-fun res!714651 () Bool)

(assert (=> start!94776 (=> (not res!714651) (not e!611632))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94776 (= res!714651 (validMask!0 mask!1515))))

(assert (=> start!94776 e!611632))

(assert (=> start!94776 true))

(assert (=> start!94776 tp_is_empty!25803))

(declare-fun array_inv!25342 (array!68542) Bool)

(assert (=> start!94776 (and (array_inv!25342 _values!955) e!611635)))

(assert (=> start!94776 tp!77439))

(declare-fun array_inv!25343 (array!68540) Bool)

(assert (=> start!94776 (array_inv!25343 _keys!1163)))

(declare-fun mapIsEmpty!40411 () Bool)

(assert (=> mapIsEmpty!40411 mapRes!40411))

(declare-fun b!1071165 () Bool)

(declare-fun res!714648 () Bool)

(assert (=> b!1071165 (=> (not res!714648) (not e!611632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68540 (_ BitVec 32)) Bool)

(assert (=> b!1071165 (= res!714648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071166 () Bool)

(declare-fun e!611629 () Bool)

(assert (=> b!1071166 (= e!611632 (not e!611629))))

(declare-fun res!714649 () Bool)

(assert (=> b!1071166 (=> res!714649 e!611629)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071166 (= res!714649 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473736 () ListLongMap!14525)

(assert (=> b!1071166 (= lt!473736 lt!473727)))

(declare-fun zeroValueBefore!47 () V!39539)

(declare-datatypes ((Unit!35219 0))(
  ( (Unit!35220) )
))
(declare-fun lt!473724 () Unit!35219)

(declare-fun minValue!907 () V!39539)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39539)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!852 (array!68540 array!68542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39539 V!39539 V!39539 V!39539 (_ BitVec 32) Int) Unit!35219)

(assert (=> b!1071166 (= lt!473724 (lemmaNoChangeToArrayThenSameMapNoExtras!852 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3813 (array!68540 array!68542 (_ BitVec 32) (_ BitVec 32) V!39539 V!39539 (_ BitVec 32) Int) ListLongMap!14525)

(assert (=> b!1071166 (= lt!473727 (getCurrentListMapNoExtraKeys!3813 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071166 (= lt!473736 (getCurrentListMapNoExtraKeys!3813 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071167 () Bool)

(declare-fun res!714650 () Bool)

(assert (=> b!1071167 (=> (not res!714650) (not e!611632))))

(assert (=> b!1071167 (= res!714650 (and (= (size!33500 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33499 _keys!1163) (size!33500 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071168 () Bool)

(assert (=> b!1071168 (= e!611629 true)))

(declare-fun lt!473729 () ListLongMap!14525)

(declare-fun lt!473730 () ListLongMap!14525)

(declare-fun -!672 (ListLongMap!14525 (_ BitVec 64)) ListLongMap!14525)

(assert (=> b!1071168 (= lt!473729 (-!672 lt!473730 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473726 () ListLongMap!14525)

(declare-fun lt!473733 () ListLongMap!14525)

(assert (=> b!1071168 (= lt!473726 lt!473733)))

(declare-fun lt!473735 () Unit!35219)

(declare-fun addCommutativeForDiffKeys!716 (ListLongMap!14525 (_ BitVec 64) V!39539 (_ BitVec 64) V!39539) Unit!35219)

(assert (=> b!1071168 (= lt!473735 (addCommutativeForDiffKeys!716 lt!473736 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473728 () ListLongMap!14525)

(assert (=> b!1071168 (= (-!672 lt!473733 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473728)))

(declare-fun lt!473732 () tuple2!16544)

(assert (=> b!1071168 (= lt!473733 (+!3135 lt!473728 lt!473732))))

(declare-fun lt!473725 () Unit!35219)

(declare-fun addThenRemoveForNewKeyIsSame!46 (ListLongMap!14525 (_ BitVec 64) V!39539) Unit!35219)

(assert (=> b!1071168 (= lt!473725 (addThenRemoveForNewKeyIsSame!46 lt!473728 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071168 (= lt!473728 (+!3135 lt!473736 lt!473734))))

(assert (=> b!1071168 e!611630))

(declare-fun res!714646 () Bool)

(assert (=> b!1071168 (=> (not res!714646) (not e!611630))))

(assert (=> b!1071168 (= res!714646 (= lt!473730 lt!473726))))

(assert (=> b!1071168 (= lt!473726 (+!3135 (+!3135 lt!473736 lt!473732) lt!473734))))

(assert (=> b!1071168 (= lt!473734 (tuple2!16545 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071168 (= lt!473732 (tuple2!16545 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4144 (array!68540 array!68542 (_ BitVec 32) (_ BitVec 32) V!39539 V!39539 (_ BitVec 32) Int) ListLongMap!14525)

(assert (=> b!1071168 (= lt!473731 (getCurrentListMap!4144 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071168 (= lt!473730 (getCurrentListMap!4144 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94776 res!714651) b!1071167))

(assert (= (and b!1071167 res!714650) b!1071165))

(assert (= (and b!1071165 res!714648) b!1071161))

(assert (= (and b!1071161 res!714647) b!1071166))

(assert (= (and b!1071166 (not res!714649)) b!1071168))

(assert (= (and b!1071168 res!714646) b!1071160))

(assert (= (and b!1071162 condMapEmpty!40411) mapIsEmpty!40411))

(assert (= (and b!1071162 (not condMapEmpty!40411)) mapNonEmpty!40411))

(get-info :version)

(assert (= (and mapNonEmpty!40411 ((_ is ValueCellFull!12198) mapValue!40411)) b!1071163))

(assert (= (and b!1071162 ((_ is ValueCellFull!12198) mapDefault!40411)) b!1071164))

(assert (= start!94776 b!1071162))

(declare-fun m!989695 () Bool)

(assert (=> b!1071161 m!989695))

(declare-fun m!989697 () Bool)

(assert (=> start!94776 m!989697))

(declare-fun m!989699 () Bool)

(assert (=> start!94776 m!989699))

(declare-fun m!989701 () Bool)

(assert (=> start!94776 m!989701))

(declare-fun m!989703 () Bool)

(assert (=> mapNonEmpty!40411 m!989703))

(declare-fun m!989705 () Bool)

(assert (=> b!1071166 m!989705))

(declare-fun m!989707 () Bool)

(assert (=> b!1071166 m!989707))

(declare-fun m!989709 () Bool)

(assert (=> b!1071166 m!989709))

(declare-fun m!989711 () Bool)

(assert (=> b!1071168 m!989711))

(declare-fun m!989713 () Bool)

(assert (=> b!1071168 m!989713))

(declare-fun m!989715 () Bool)

(assert (=> b!1071168 m!989715))

(declare-fun m!989717 () Bool)

(assert (=> b!1071168 m!989717))

(declare-fun m!989719 () Bool)

(assert (=> b!1071168 m!989719))

(assert (=> b!1071168 m!989711))

(declare-fun m!989721 () Bool)

(assert (=> b!1071168 m!989721))

(declare-fun m!989723 () Bool)

(assert (=> b!1071168 m!989723))

(declare-fun m!989725 () Bool)

(assert (=> b!1071168 m!989725))

(declare-fun m!989727 () Bool)

(assert (=> b!1071168 m!989727))

(declare-fun m!989729 () Bool)

(assert (=> b!1071168 m!989729))

(declare-fun m!989731 () Bool)

(assert (=> b!1071165 m!989731))

(declare-fun m!989733 () Bool)

(assert (=> b!1071160 m!989733))

(check-sat (not b_next!21993) (not mapNonEmpty!40411) (not b!1071160) (not b!1071161) (not b!1071165) (not b!1071168) (not b!1071166) tp_is_empty!25803 b_and!34841 (not start!94776))
(check-sat b_and!34841 (not b_next!21993))
