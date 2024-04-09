; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94394 () Bool)

(assert start!94394)

(declare-fun b_free!21699 () Bool)

(declare-fun b_next!21699 () Bool)

(assert (=> start!94394 (= b_free!21699 (not b_next!21699))))

(declare-fun tp!76542 () Bool)

(declare-fun b_and!34501 () Bool)

(assert (=> start!94394 (= tp!76542 b_and!34501)))

(declare-fun b!1066945 () Bool)

(declare-fun res!712147 () Bool)

(declare-fun e!608525 () Bool)

(assert (=> b!1066945 (=> (not res!712147) (not e!608525))))

(declare-datatypes ((array!67978 0))(
  ( (array!67979 (arr!32686 (Array (_ BitVec 32) (_ BitVec 64))) (size!33223 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67978)

(declare-datatypes ((List!22925 0))(
  ( (Nil!22922) (Cons!22921 (h!24130 (_ BitVec 64)) (t!32255 List!22925)) )
))
(declare-fun arrayNoDuplicates!0 (array!67978 (_ BitVec 32) List!22925) Bool)

(assert (=> b!1066945 (= res!712147 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22922))))

(declare-fun res!712145 () Bool)

(assert (=> start!94394 (=> (not res!712145) (not e!608525))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94394 (= res!712145 (validMask!0 mask!1515))))

(assert (=> start!94394 e!608525))

(assert (=> start!94394 true))

(declare-fun tp_is_empty!25509 () Bool)

(assert (=> start!94394 tp_is_empty!25509))

(declare-datatypes ((V!39147 0))(
  ( (V!39148 (val!12805 Int)) )
))
(declare-datatypes ((ValueCell!12051 0))(
  ( (ValueCellFull!12051 (v!15420 V!39147)) (EmptyCell!12051) )
))
(declare-datatypes ((array!67980 0))(
  ( (array!67981 (arr!32687 (Array (_ BitVec 32) ValueCell!12051)) (size!33224 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67980)

(declare-fun e!608528 () Bool)

(declare-fun array_inv!25144 (array!67980) Bool)

(assert (=> start!94394 (and (array_inv!25144 _values!955) e!608528)))

(assert (=> start!94394 tp!76542))

(declare-fun array_inv!25145 (array!67978) Bool)

(assert (=> start!94394 (array_inv!25145 _keys!1163)))

(declare-fun b!1066946 () Bool)

(declare-fun e!608527 () Bool)

(assert (=> b!1066946 (= e!608527 tp_is_empty!25509)))

(declare-fun b!1066947 () Bool)

(declare-fun e!608524 () Bool)

(assert (=> b!1066947 (= e!608524 tp_is_empty!25509)))

(declare-fun b!1066948 () Bool)

(declare-fun mapRes!39955 () Bool)

(assert (=> b!1066948 (= e!608528 (and e!608527 mapRes!39955))))

(declare-fun condMapEmpty!39955 () Bool)

(declare-fun mapDefault!39955 () ValueCell!12051)

(assert (=> b!1066948 (= condMapEmpty!39955 (= (arr!32687 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12051)) mapDefault!39955)))))

(declare-fun mapNonEmpty!39955 () Bool)

(declare-fun tp!76541 () Bool)

(assert (=> mapNonEmpty!39955 (= mapRes!39955 (and tp!76541 e!608524))))

(declare-fun mapValue!39955 () ValueCell!12051)

(declare-fun mapKey!39955 () (_ BitVec 32))

(declare-fun mapRest!39955 () (Array (_ BitVec 32) ValueCell!12051))

(assert (=> mapNonEmpty!39955 (= (arr!32687 _values!955) (store mapRest!39955 mapKey!39955 mapValue!39955))))

(declare-fun b!1066949 () Bool)

(assert (=> b!1066949 (= e!608525 (not true))))

(declare-datatypes ((tuple2!16334 0))(
  ( (tuple2!16335 (_1!8177 (_ BitVec 64)) (_2!8177 V!39147)) )
))
(declare-datatypes ((List!22926 0))(
  ( (Nil!22923) (Cons!22922 (h!24131 tuple2!16334) (t!32256 List!22926)) )
))
(declare-datatypes ((ListLongMap!14315 0))(
  ( (ListLongMap!14316 (toList!7173 List!22926)) )
))
(declare-fun lt!471233 () ListLongMap!14315)

(declare-fun lt!471234 () ListLongMap!14315)

(assert (=> b!1066949 (= lt!471233 lt!471234)))

(declare-fun zeroValueBefore!47 () V!39147)

(declare-datatypes ((Unit!35012 0))(
  ( (Unit!35013) )
))
(declare-fun lt!471235 () Unit!35012)

(declare-fun minValue!907 () V!39147)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39147)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!757 (array!67978 array!67980 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39147 V!39147 V!39147 V!39147 (_ BitVec 32) Int) Unit!35012)

(assert (=> b!1066949 (= lt!471235 (lemmaNoChangeToArrayThenSameMapNoExtras!757 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3718 (array!67978 array!67980 (_ BitVec 32) (_ BitVec 32) V!39147 V!39147 (_ BitVec 32) Int) ListLongMap!14315)

(assert (=> b!1066949 (= lt!471234 (getCurrentListMapNoExtraKeys!3718 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066949 (= lt!471233 (getCurrentListMapNoExtraKeys!3718 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39955 () Bool)

(assert (=> mapIsEmpty!39955 mapRes!39955))

(declare-fun b!1066950 () Bool)

(declare-fun res!712146 () Bool)

(assert (=> b!1066950 (=> (not res!712146) (not e!608525))))

(assert (=> b!1066950 (= res!712146 (and (= (size!33224 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33223 _keys!1163) (size!33224 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066951 () Bool)

(declare-fun res!712144 () Bool)

(assert (=> b!1066951 (=> (not res!712144) (not e!608525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67978 (_ BitVec 32)) Bool)

(assert (=> b!1066951 (= res!712144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94394 res!712145) b!1066950))

(assert (= (and b!1066950 res!712146) b!1066951))

(assert (= (and b!1066951 res!712144) b!1066945))

(assert (= (and b!1066945 res!712147) b!1066949))

(assert (= (and b!1066948 condMapEmpty!39955) mapIsEmpty!39955))

(assert (= (and b!1066948 (not condMapEmpty!39955)) mapNonEmpty!39955))

(get-info :version)

(assert (= (and mapNonEmpty!39955 ((_ is ValueCellFull!12051) mapValue!39955)) b!1066947))

(assert (= (and b!1066948 ((_ is ValueCellFull!12051) mapDefault!39955)) b!1066946))

(assert (= start!94394 b!1066948))

(declare-fun m!985805 () Bool)

(assert (=> start!94394 m!985805))

(declare-fun m!985807 () Bool)

(assert (=> start!94394 m!985807))

(declare-fun m!985809 () Bool)

(assert (=> start!94394 m!985809))

(declare-fun m!985811 () Bool)

(assert (=> b!1066949 m!985811))

(declare-fun m!985813 () Bool)

(assert (=> b!1066949 m!985813))

(declare-fun m!985815 () Bool)

(assert (=> b!1066949 m!985815))

(declare-fun m!985817 () Bool)

(assert (=> b!1066945 m!985817))

(declare-fun m!985819 () Bool)

(assert (=> b!1066951 m!985819))

(declare-fun m!985821 () Bool)

(assert (=> mapNonEmpty!39955 m!985821))

(check-sat (not start!94394) (not b!1066945) (not b!1066949) tp_is_empty!25509 (not mapNonEmpty!39955) (not b_next!21699) (not b!1066951) b_and!34501)
(check-sat b_and!34501 (not b_next!21699))
