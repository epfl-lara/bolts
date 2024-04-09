; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94656 () Bool)

(assert start!94656)

(declare-fun b_free!21903 () Bool)

(declare-fun b_next!21903 () Bool)

(assert (=> start!94656 (= b_free!21903 (not b_next!21903))))

(declare-fun tp!77163 () Bool)

(declare-fun b_and!34733 () Bool)

(assert (=> start!94656 (= tp!77163 b_and!34733)))

(declare-fun mapIsEmpty!40270 () Bool)

(declare-fun mapRes!40270 () Bool)

(assert (=> mapIsEmpty!40270 mapRes!40270))

(declare-fun b!1069819 () Bool)

(declare-fun e!610642 () Bool)

(declare-fun e!610644 () Bool)

(assert (=> b!1069819 (= e!610642 (and e!610644 mapRes!40270))))

(declare-fun condMapEmpty!40270 () Bool)

(declare-datatypes ((V!39419 0))(
  ( (V!39420 (val!12907 Int)) )
))
(declare-datatypes ((ValueCell!12153 0))(
  ( (ValueCellFull!12153 (v!15524 V!39419)) (EmptyCell!12153) )
))
(declare-datatypes ((array!68372 0))(
  ( (array!68373 (arr!32880 (Array (_ BitVec 32) ValueCell!12153)) (size!33417 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68372)

(declare-fun mapDefault!40270 () ValueCell!12153)

(assert (=> b!1069819 (= condMapEmpty!40270 (= (arr!32880 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12153)) mapDefault!40270)))))

(declare-fun b!1069820 () Bool)

(declare-fun e!610646 () Bool)

(declare-fun tp_is_empty!25713 () Bool)

(assert (=> b!1069820 (= e!610646 tp_is_empty!25713)))

(declare-fun b!1069821 () Bool)

(declare-fun res!713855 () Bool)

(declare-fun e!610645 () Bool)

(assert (=> b!1069821 (=> (not res!713855) (not e!610645))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68374 0))(
  ( (array!68375 (arr!32881 (Array (_ BitVec 32) (_ BitVec 64))) (size!33418 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68374)

(assert (=> b!1069821 (= res!713855 (and (= (size!33417 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33418 _keys!1163) (size!33417 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713856 () Bool)

(assert (=> start!94656 (=> (not res!713856) (not e!610645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94656 (= res!713856 (validMask!0 mask!1515))))

(assert (=> start!94656 e!610645))

(assert (=> start!94656 true))

(assert (=> start!94656 tp_is_empty!25713))

(declare-fun array_inv!25288 (array!68372) Bool)

(assert (=> start!94656 (and (array_inv!25288 _values!955) e!610642)))

(assert (=> start!94656 tp!77163))

(declare-fun array_inv!25289 (array!68374) Bool)

(assert (=> start!94656 (array_inv!25289 _keys!1163)))

(declare-fun b!1069822 () Bool)

(declare-fun res!713854 () Bool)

(assert (=> b!1069822 (=> (not res!713854) (not e!610645))))

(declare-datatypes ((List!23067 0))(
  ( (Nil!23064) (Cons!23063 (h!24272 (_ BitVec 64)) (t!32403 List!23067)) )
))
(declare-fun arrayNoDuplicates!0 (array!68374 (_ BitVec 32) List!23067) Bool)

(assert (=> b!1069822 (= res!713854 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23064))))

(declare-fun b!1069823 () Bool)

(declare-fun res!713857 () Bool)

(assert (=> b!1069823 (=> (not res!713857) (not e!610645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68374 (_ BitVec 32)) Bool)

(assert (=> b!1069823 (= res!713857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069824 () Bool)

(assert (=> b!1069824 (= e!610645 (not true))))

(declare-datatypes ((tuple2!16480 0))(
  ( (tuple2!16481 (_1!8250 (_ BitVec 64)) (_2!8250 V!39419)) )
))
(declare-datatypes ((List!23068 0))(
  ( (Nil!23065) (Cons!23064 (h!24273 tuple2!16480) (t!32404 List!23068)) )
))
(declare-datatypes ((ListLongMap!14461 0))(
  ( (ListLongMap!14462 (toList!7246 List!23068)) )
))
(declare-fun lt!472773 () ListLongMap!14461)

(declare-fun lt!472774 () ListLongMap!14461)

(assert (=> b!1069824 (= lt!472773 lt!472774)))

(declare-fun zeroValueBefore!47 () V!39419)

(declare-datatypes ((Unit!35158 0))(
  ( (Unit!35159) )
))
(declare-fun lt!472772 () Unit!35158)

(declare-fun minValue!907 () V!39419)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39419)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!822 (array!68374 array!68372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39419 V!39419 V!39419 V!39419 (_ BitVec 32) Int) Unit!35158)

(assert (=> b!1069824 (= lt!472772 (lemmaNoChangeToArrayThenSameMapNoExtras!822 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3783 (array!68374 array!68372 (_ BitVec 32) (_ BitVec 32) V!39419 V!39419 (_ BitVec 32) Int) ListLongMap!14461)

(assert (=> b!1069824 (= lt!472774 (getCurrentListMapNoExtraKeys!3783 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069824 (= lt!472773 (getCurrentListMapNoExtraKeys!3783 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40270 () Bool)

(declare-fun tp!77162 () Bool)

(assert (=> mapNonEmpty!40270 (= mapRes!40270 (and tp!77162 e!610646))))

(declare-fun mapRest!40270 () (Array (_ BitVec 32) ValueCell!12153))

(declare-fun mapValue!40270 () ValueCell!12153)

(declare-fun mapKey!40270 () (_ BitVec 32))

(assert (=> mapNonEmpty!40270 (= (arr!32880 _values!955) (store mapRest!40270 mapKey!40270 mapValue!40270))))

(declare-fun b!1069825 () Bool)

(assert (=> b!1069825 (= e!610644 tp_is_empty!25713)))

(assert (= (and start!94656 res!713856) b!1069821))

(assert (= (and b!1069821 res!713855) b!1069823))

(assert (= (and b!1069823 res!713857) b!1069822))

(assert (= (and b!1069822 res!713854) b!1069824))

(assert (= (and b!1069819 condMapEmpty!40270) mapIsEmpty!40270))

(assert (= (and b!1069819 (not condMapEmpty!40270)) mapNonEmpty!40270))

(get-info :version)

(assert (= (and mapNonEmpty!40270 ((_ is ValueCellFull!12153) mapValue!40270)) b!1069820))

(assert (= (and b!1069819 ((_ is ValueCellFull!12153) mapDefault!40270)) b!1069825))

(assert (= start!94656 b!1069819))

(declare-fun m!988403 () Bool)

(assert (=> b!1069822 m!988403))

(declare-fun m!988405 () Bool)

(assert (=> mapNonEmpty!40270 m!988405))

(declare-fun m!988407 () Bool)

(assert (=> start!94656 m!988407))

(declare-fun m!988409 () Bool)

(assert (=> start!94656 m!988409))

(declare-fun m!988411 () Bool)

(assert (=> start!94656 m!988411))

(declare-fun m!988413 () Bool)

(assert (=> b!1069824 m!988413))

(declare-fun m!988415 () Bool)

(assert (=> b!1069824 m!988415))

(declare-fun m!988417 () Bool)

(assert (=> b!1069824 m!988417))

(declare-fun m!988419 () Bool)

(assert (=> b!1069823 m!988419))

(check-sat tp_is_empty!25713 (not start!94656) (not b!1069822) (not mapNonEmpty!40270) b_and!34733 (not b!1069823) (not b!1069824) (not b_next!21903))
(check-sat b_and!34733 (not b_next!21903))
