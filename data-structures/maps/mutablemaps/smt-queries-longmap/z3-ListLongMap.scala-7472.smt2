; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94794 () Bool)

(assert start!94794)

(declare-fun b_free!22011 () Bool)

(declare-fun b_next!22011 () Bool)

(assert (=> start!94794 (= b_free!22011 (not b_next!22011))))

(declare-fun tp!77492 () Bool)

(declare-fun b_and!34859 () Bool)

(assert (=> start!94794 (= tp!77492 b_and!34859)))

(declare-fun b!1071403 () Bool)

(declare-fun e!611818 () Bool)

(assert (=> b!1071403 (= e!611818 true)))

(declare-datatypes ((V!39563 0))(
  ( (V!39564 (val!12961 Int)) )
))
(declare-datatypes ((tuple2!16556 0))(
  ( (tuple2!16557 (_1!8288 (_ BitVec 64)) (_2!8288 V!39563)) )
))
(declare-datatypes ((List!23139 0))(
  ( (Nil!23136) (Cons!23135 (h!24344 tuple2!16556) (t!32479 List!23139)) )
))
(declare-datatypes ((ListLongMap!14537 0))(
  ( (ListLongMap!14538 (toList!7284 List!23139)) )
))
(declare-fun lt!474086 () ListLongMap!14537)

(declare-fun lt!474079 () ListLongMap!14537)

(declare-fun -!677 (ListLongMap!14537 (_ BitVec 64)) ListLongMap!14537)

(assert (=> b!1071403 (= lt!474086 (-!677 lt!474079 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474083 () ListLongMap!14537)

(declare-fun lt!474084 () ListLongMap!14537)

(assert (=> b!1071403 (= lt!474083 lt!474084)))

(declare-fun zeroValueBefore!47 () V!39563)

(declare-datatypes ((Unit!35231 0))(
  ( (Unit!35232) )
))
(declare-fun lt!474076 () Unit!35231)

(declare-fun lt!474075 () ListLongMap!14537)

(declare-fun minValue!907 () V!39563)

(declare-fun addCommutativeForDiffKeys!721 (ListLongMap!14537 (_ BitVec 64) V!39563 (_ BitVec 64) V!39563) Unit!35231)

(assert (=> b!1071403 (= lt!474076 (addCommutativeForDiffKeys!721 lt!474075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474082 () ListLongMap!14537)

(assert (=> b!1071403 (= (-!677 lt!474084 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474082)))

(declare-fun lt!474085 () tuple2!16556)

(declare-fun +!3140 (ListLongMap!14537 tuple2!16556) ListLongMap!14537)

(assert (=> b!1071403 (= lt!474084 (+!3140 lt!474082 lt!474085))))

(declare-fun lt!474087 () Unit!35231)

(declare-fun addThenRemoveForNewKeyIsSame!51 (ListLongMap!14537 (_ BitVec 64) V!39563) Unit!35231)

(assert (=> b!1071403 (= lt!474087 (addThenRemoveForNewKeyIsSame!51 lt!474082 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474077 () tuple2!16556)

(assert (=> b!1071403 (= lt!474082 (+!3140 lt!474075 lt!474077))))

(declare-fun e!611823 () Bool)

(assert (=> b!1071403 e!611823))

(declare-fun res!714812 () Bool)

(assert (=> b!1071403 (=> (not res!714812) (not e!611823))))

(assert (=> b!1071403 (= res!714812 (= lt!474079 lt!474083))))

(assert (=> b!1071403 (= lt!474083 (+!3140 (+!3140 lt!474075 lt!474085) lt!474077))))

(assert (=> b!1071403 (= lt!474077 (tuple2!16557 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071403 (= lt!474085 (tuple2!16557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!474078 () ListLongMap!14537)

(declare-datatypes ((ValueCell!12207 0))(
  ( (ValueCellFull!12207 (v!15578 V!39563)) (EmptyCell!12207) )
))
(declare-datatypes ((array!68572 0))(
  ( (array!68573 (arr!32978 (Array (_ BitVec 32) ValueCell!12207)) (size!33515 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68572)

(declare-datatypes ((array!68574 0))(
  ( (array!68575 (arr!32979 (Array (_ BitVec 32) (_ BitVec 64))) (size!33516 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68574)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39563)

(declare-fun getCurrentListMap!4149 (array!68574 array!68572 (_ BitVec 32) (_ BitVec 32) V!39563 V!39563 (_ BitVec 32) Int) ListLongMap!14537)

(assert (=> b!1071403 (= lt!474078 (getCurrentListMap!4149 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071403 (= lt!474079 (getCurrentListMap!4149 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071404 () Bool)

(declare-fun res!714813 () Bool)

(declare-fun e!611824 () Bool)

(assert (=> b!1071404 (=> (not res!714813) (not e!611824))))

(declare-datatypes ((List!23140 0))(
  ( (Nil!23137) (Cons!23136 (h!24345 (_ BitVec 64)) (t!32480 List!23140)) )
))
(declare-fun arrayNoDuplicates!0 (array!68574 (_ BitVec 32) List!23140) Bool)

(assert (=> b!1071404 (= res!714813 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23137))))

(declare-fun b!1071405 () Bool)

(declare-fun e!611819 () Bool)

(declare-fun tp_is_empty!25821 () Bool)

(assert (=> b!1071405 (= e!611819 tp_is_empty!25821)))

(declare-fun mapNonEmpty!40438 () Bool)

(declare-fun mapRes!40438 () Bool)

(declare-fun tp!77493 () Bool)

(declare-fun e!611820 () Bool)

(assert (=> mapNonEmpty!40438 (= mapRes!40438 (and tp!77493 e!611820))))

(declare-fun mapKey!40438 () (_ BitVec 32))

(declare-fun mapValue!40438 () ValueCell!12207)

(declare-fun mapRest!40438 () (Array (_ BitVec 32) ValueCell!12207))

(assert (=> mapNonEmpty!40438 (= (arr!32978 _values!955) (store mapRest!40438 mapKey!40438 mapValue!40438))))

(declare-fun b!1071406 () Bool)

(assert (=> b!1071406 (= e!611820 tp_is_empty!25821)))

(declare-fun b!1071407 () Bool)

(declare-fun res!714808 () Bool)

(assert (=> b!1071407 (=> (not res!714808) (not e!611824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68574 (_ BitVec 32)) Bool)

(assert (=> b!1071407 (= res!714808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40438 () Bool)

(assert (=> mapIsEmpty!40438 mapRes!40438))

(declare-fun res!714811 () Bool)

(assert (=> start!94794 (=> (not res!714811) (not e!611824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94794 (= res!714811 (validMask!0 mask!1515))))

(assert (=> start!94794 e!611824))

(assert (=> start!94794 true))

(assert (=> start!94794 tp_is_empty!25821))

(declare-fun e!611821 () Bool)

(declare-fun array_inv!25354 (array!68572) Bool)

(assert (=> start!94794 (and (array_inv!25354 _values!955) e!611821)))

(assert (=> start!94794 tp!77492))

(declare-fun array_inv!25355 (array!68574) Bool)

(assert (=> start!94794 (array_inv!25355 _keys!1163)))

(declare-fun b!1071408 () Bool)

(assert (=> b!1071408 (= e!611821 (and e!611819 mapRes!40438))))

(declare-fun condMapEmpty!40438 () Bool)

(declare-fun mapDefault!40438 () ValueCell!12207)

(assert (=> b!1071408 (= condMapEmpty!40438 (= (arr!32978 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12207)) mapDefault!40438)))))

(declare-fun lt!474081 () ListLongMap!14537)

(declare-fun b!1071409 () Bool)

(assert (=> b!1071409 (= e!611823 (= lt!474078 (+!3140 lt!474081 lt!474077)))))

(declare-fun b!1071410 () Bool)

(declare-fun res!714810 () Bool)

(assert (=> b!1071410 (=> (not res!714810) (not e!611824))))

(assert (=> b!1071410 (= res!714810 (and (= (size!33515 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33516 _keys!1163) (size!33515 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071411 () Bool)

(assert (=> b!1071411 (= e!611824 (not e!611818))))

(declare-fun res!714809 () Bool)

(assert (=> b!1071411 (=> res!714809 e!611818)))

(assert (=> b!1071411 (= res!714809 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071411 (= lt!474075 lt!474081)))

(declare-fun lt!474080 () Unit!35231)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!857 (array!68574 array!68572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39563 V!39563 V!39563 V!39563 (_ BitVec 32) Int) Unit!35231)

(assert (=> b!1071411 (= lt!474080 (lemmaNoChangeToArrayThenSameMapNoExtras!857 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3818 (array!68574 array!68572 (_ BitVec 32) (_ BitVec 32) V!39563 V!39563 (_ BitVec 32) Int) ListLongMap!14537)

(assert (=> b!1071411 (= lt!474081 (getCurrentListMapNoExtraKeys!3818 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071411 (= lt!474075 (getCurrentListMapNoExtraKeys!3818 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94794 res!714811) b!1071410))

(assert (= (and b!1071410 res!714810) b!1071407))

(assert (= (and b!1071407 res!714808) b!1071404))

(assert (= (and b!1071404 res!714813) b!1071411))

(assert (= (and b!1071411 (not res!714809)) b!1071403))

(assert (= (and b!1071403 res!714812) b!1071409))

(assert (= (and b!1071408 condMapEmpty!40438) mapIsEmpty!40438))

(assert (= (and b!1071408 (not condMapEmpty!40438)) mapNonEmpty!40438))

(get-info :version)

(assert (= (and mapNonEmpty!40438 ((_ is ValueCellFull!12207) mapValue!40438)) b!1071406))

(assert (= (and b!1071408 ((_ is ValueCellFull!12207) mapDefault!40438)) b!1071405))

(assert (= start!94794 b!1071408))

(declare-fun m!990055 () Bool)

(assert (=> b!1071411 m!990055))

(declare-fun m!990057 () Bool)

(assert (=> b!1071411 m!990057))

(declare-fun m!990059 () Bool)

(assert (=> b!1071411 m!990059))

(declare-fun m!990061 () Bool)

(assert (=> start!94794 m!990061))

(declare-fun m!990063 () Bool)

(assert (=> start!94794 m!990063))

(declare-fun m!990065 () Bool)

(assert (=> start!94794 m!990065))

(declare-fun m!990067 () Bool)

(assert (=> b!1071409 m!990067))

(declare-fun m!990069 () Bool)

(assert (=> mapNonEmpty!40438 m!990069))

(declare-fun m!990071 () Bool)

(assert (=> b!1071403 m!990071))

(declare-fun m!990073 () Bool)

(assert (=> b!1071403 m!990073))

(declare-fun m!990075 () Bool)

(assert (=> b!1071403 m!990075))

(declare-fun m!990077 () Bool)

(assert (=> b!1071403 m!990077))

(declare-fun m!990079 () Bool)

(assert (=> b!1071403 m!990079))

(declare-fun m!990081 () Bool)

(assert (=> b!1071403 m!990081))

(declare-fun m!990083 () Bool)

(assert (=> b!1071403 m!990083))

(declare-fun m!990085 () Bool)

(assert (=> b!1071403 m!990085))

(declare-fun m!990087 () Bool)

(assert (=> b!1071403 m!990087))

(assert (=> b!1071403 m!990071))

(declare-fun m!990089 () Bool)

(assert (=> b!1071403 m!990089))

(declare-fun m!990091 () Bool)

(assert (=> b!1071404 m!990091))

(declare-fun m!990093 () Bool)

(assert (=> b!1071407 m!990093))

(check-sat (not b!1071409) (not b!1071407) (not mapNonEmpty!40438) (not b!1071404) tp_is_empty!25821 (not start!94794) (not b!1071411) (not b!1071403) b_and!34859 (not b_next!22011))
(check-sat b_and!34859 (not b_next!22011))
