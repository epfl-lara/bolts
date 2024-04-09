; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94430 () Bool)

(assert start!94430)

(declare-fun b_free!21735 () Bool)

(declare-fun b_next!21735 () Bool)

(assert (=> start!94430 (= b_free!21735 (not b_next!21735))))

(declare-fun tp!76650 () Bool)

(declare-fun b_and!34537 () Bool)

(assert (=> start!94430 (= tp!76650 b_and!34537)))

(declare-fun b!1067323 () Bool)

(declare-fun res!712360 () Bool)

(declare-fun e!608798 () Bool)

(assert (=> b!1067323 (=> (not res!712360) (not e!608798))))

(declare-datatypes ((array!68044 0))(
  ( (array!68045 (arr!32719 (Array (_ BitVec 32) (_ BitVec 64))) (size!33256 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68044)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68044 (_ BitVec 32)) Bool)

(assert (=> b!1067323 (= res!712360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40009 () Bool)

(declare-fun mapRes!40009 () Bool)

(declare-fun tp!76649 () Bool)

(declare-fun e!608796 () Bool)

(assert (=> mapNonEmpty!40009 (= mapRes!40009 (and tp!76649 e!608796))))

(declare-fun mapKey!40009 () (_ BitVec 32))

(declare-datatypes ((V!39195 0))(
  ( (V!39196 (val!12823 Int)) )
))
(declare-datatypes ((ValueCell!12069 0))(
  ( (ValueCellFull!12069 (v!15438 V!39195)) (EmptyCell!12069) )
))
(declare-fun mapValue!40009 () ValueCell!12069)

(declare-datatypes ((array!68046 0))(
  ( (array!68047 (arr!32720 (Array (_ BitVec 32) ValueCell!12069)) (size!33257 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68046)

(declare-fun mapRest!40009 () (Array (_ BitVec 32) ValueCell!12069))

(assert (=> mapNonEmpty!40009 (= (arr!32720 _values!955) (store mapRest!40009 mapKey!40009 mapValue!40009))))

(declare-fun b!1067324 () Bool)

(declare-fun tp_is_empty!25545 () Bool)

(assert (=> b!1067324 (= e!608796 tp_is_empty!25545)))

(declare-fun b!1067325 () Bool)

(declare-fun res!712362 () Bool)

(assert (=> b!1067325 (=> (not res!712362) (not e!608798))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1067325 (= res!712362 (and (= (size!33257 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33256 _keys!1163) (size!33257 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40009 () Bool)

(assert (=> mapIsEmpty!40009 mapRes!40009))

(declare-fun b!1067326 () Bool)

(declare-fun res!712363 () Bool)

(assert (=> b!1067326 (=> (not res!712363) (not e!608798))))

(declare-datatypes ((List!22945 0))(
  ( (Nil!22942) (Cons!22941 (h!24150 (_ BitVec 64)) (t!32275 List!22945)) )
))
(declare-fun arrayNoDuplicates!0 (array!68044 (_ BitVec 32) List!22945) Bool)

(assert (=> b!1067326 (= res!712363 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22942))))

(declare-fun res!712361 () Bool)

(assert (=> start!94430 (=> (not res!712361) (not e!608798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94430 (= res!712361 (validMask!0 mask!1515))))

(assert (=> start!94430 e!608798))

(assert (=> start!94430 true))

(assert (=> start!94430 tp_is_empty!25545))

(declare-fun e!608797 () Bool)

(declare-fun array_inv!25166 (array!68046) Bool)

(assert (=> start!94430 (and (array_inv!25166 _values!955) e!608797)))

(assert (=> start!94430 tp!76650))

(declare-fun array_inv!25167 (array!68044) Bool)

(assert (=> start!94430 (array_inv!25167 _keys!1163)))

(declare-fun b!1067327 () Bool)

(declare-fun e!608795 () Bool)

(assert (=> b!1067327 (= e!608797 (and e!608795 mapRes!40009))))

(declare-fun condMapEmpty!40009 () Bool)

(declare-fun mapDefault!40009 () ValueCell!12069)

(assert (=> b!1067327 (= condMapEmpty!40009 (= (arr!32720 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12069)) mapDefault!40009)))))

(declare-fun b!1067328 () Bool)

(assert (=> b!1067328 (= e!608798 (not true))))

(declare-datatypes ((tuple2!16354 0))(
  ( (tuple2!16355 (_1!8187 (_ BitVec 64)) (_2!8187 V!39195)) )
))
(declare-datatypes ((List!22946 0))(
  ( (Nil!22943) (Cons!22942 (h!24151 tuple2!16354) (t!32276 List!22946)) )
))
(declare-datatypes ((ListLongMap!14335 0))(
  ( (ListLongMap!14336 (toList!7183 List!22946)) )
))
(declare-fun lt!471395 () ListLongMap!14335)

(declare-fun lt!471397 () ListLongMap!14335)

(assert (=> b!1067328 (= lt!471395 lt!471397)))

(declare-fun minValue!907 () V!39195)

(declare-fun zeroValueBefore!47 () V!39195)

(declare-datatypes ((Unit!35032 0))(
  ( (Unit!35033) )
))
(declare-fun lt!471396 () Unit!35032)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39195)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!767 (array!68044 array!68046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39195 V!39195 V!39195 V!39195 (_ BitVec 32) Int) Unit!35032)

(assert (=> b!1067328 (= lt!471396 (lemmaNoChangeToArrayThenSameMapNoExtras!767 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3728 (array!68044 array!68046 (_ BitVec 32) (_ BitVec 32) V!39195 V!39195 (_ BitVec 32) Int) ListLongMap!14335)

(assert (=> b!1067328 (= lt!471397 (getCurrentListMapNoExtraKeys!3728 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067328 (= lt!471395 (getCurrentListMapNoExtraKeys!3728 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067329 () Bool)

(assert (=> b!1067329 (= e!608795 tp_is_empty!25545)))

(assert (= (and start!94430 res!712361) b!1067325))

(assert (= (and b!1067325 res!712362) b!1067323))

(assert (= (and b!1067323 res!712360) b!1067326))

(assert (= (and b!1067326 res!712363) b!1067328))

(assert (= (and b!1067327 condMapEmpty!40009) mapIsEmpty!40009))

(assert (= (and b!1067327 (not condMapEmpty!40009)) mapNonEmpty!40009))

(get-info :version)

(assert (= (and mapNonEmpty!40009 ((_ is ValueCellFull!12069) mapValue!40009)) b!1067324))

(assert (= (and b!1067327 ((_ is ValueCellFull!12069) mapDefault!40009)) b!1067329))

(assert (= start!94430 b!1067327))

(declare-fun m!986129 () Bool)

(assert (=> start!94430 m!986129))

(declare-fun m!986131 () Bool)

(assert (=> start!94430 m!986131))

(declare-fun m!986133 () Bool)

(assert (=> start!94430 m!986133))

(declare-fun m!986135 () Bool)

(assert (=> mapNonEmpty!40009 m!986135))

(declare-fun m!986137 () Bool)

(assert (=> b!1067323 m!986137))

(declare-fun m!986139 () Bool)

(assert (=> b!1067326 m!986139))

(declare-fun m!986141 () Bool)

(assert (=> b!1067328 m!986141))

(declare-fun m!986143 () Bool)

(assert (=> b!1067328 m!986143))

(declare-fun m!986145 () Bool)

(assert (=> b!1067328 m!986145))

(check-sat tp_is_empty!25545 (not start!94430) (not b!1067326) (not b_next!21735) (not b!1067323) (not mapNonEmpty!40009) (not b!1067328) b_and!34537)
(check-sat b_and!34537 (not b_next!21735))
