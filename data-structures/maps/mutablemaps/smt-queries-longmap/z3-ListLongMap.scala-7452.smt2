; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94644 () Bool)

(assert start!94644)

(declare-fun b_free!21891 () Bool)

(declare-fun b_next!21891 () Bool)

(assert (=> start!94644 (= b_free!21891 (not b_next!21891))))

(declare-fun tp!77127 () Bool)

(declare-fun b_and!34721 () Bool)

(assert (=> start!94644 (= tp!77127 b_and!34721)))

(declare-fun b!1069693 () Bool)

(declare-fun res!713785 () Bool)

(declare-fun e!610554 () Bool)

(assert (=> b!1069693 (=> (not res!713785) (not e!610554))))

(declare-datatypes ((array!68350 0))(
  ( (array!68351 (arr!32869 (Array (_ BitVec 32) (_ BitVec 64))) (size!33406 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68350)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68350 (_ BitVec 32)) Bool)

(assert (=> b!1069693 (= res!713785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40252 () Bool)

(declare-fun mapRes!40252 () Bool)

(declare-fun tp!77126 () Bool)

(declare-fun e!610552 () Bool)

(assert (=> mapNonEmpty!40252 (= mapRes!40252 (and tp!77126 e!610552))))

(declare-datatypes ((V!39403 0))(
  ( (V!39404 (val!12901 Int)) )
))
(declare-datatypes ((ValueCell!12147 0))(
  ( (ValueCellFull!12147 (v!15518 V!39403)) (EmptyCell!12147) )
))
(declare-fun mapRest!40252 () (Array (_ BitVec 32) ValueCell!12147))

(declare-fun mapKey!40252 () (_ BitVec 32))

(declare-datatypes ((array!68352 0))(
  ( (array!68353 (arr!32870 (Array (_ BitVec 32) ValueCell!12147)) (size!33407 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68352)

(declare-fun mapValue!40252 () ValueCell!12147)

(assert (=> mapNonEmpty!40252 (= (arr!32870 _values!955) (store mapRest!40252 mapKey!40252 mapValue!40252))))

(declare-fun b!1069694 () Bool)

(declare-fun res!713783 () Bool)

(assert (=> b!1069694 (=> (not res!713783) (not e!610554))))

(declare-datatypes ((List!23058 0))(
  ( (Nil!23055) (Cons!23054 (h!24263 (_ BitVec 64)) (t!32394 List!23058)) )
))
(declare-fun arrayNoDuplicates!0 (array!68350 (_ BitVec 32) List!23058) Bool)

(assert (=> b!1069694 (= res!713783 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23055))))

(declare-fun b!1069695 () Bool)

(declare-fun res!713782 () Bool)

(assert (=> b!1069695 (=> (not res!713782) (not e!610554))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069695 (= res!713782 (and (= (size!33407 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33406 _keys!1163) (size!33407 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069696 () Bool)

(assert (=> b!1069696 (= e!610554 (not true))))

(declare-datatypes ((tuple2!16470 0))(
  ( (tuple2!16471 (_1!8245 (_ BitVec 64)) (_2!8245 V!39403)) )
))
(declare-datatypes ((List!23059 0))(
  ( (Nil!23056) (Cons!23055 (h!24264 tuple2!16470) (t!32395 List!23059)) )
))
(declare-datatypes ((ListLongMap!14451 0))(
  ( (ListLongMap!14452 (toList!7241 List!23059)) )
))
(declare-fun lt!472718 () ListLongMap!14451)

(declare-fun lt!472720 () ListLongMap!14451)

(assert (=> b!1069696 (= lt!472718 lt!472720)))

(declare-fun zeroValueBefore!47 () V!39403)

(declare-datatypes ((Unit!35148 0))(
  ( (Unit!35149) )
))
(declare-fun lt!472719 () Unit!35148)

(declare-fun minValue!907 () V!39403)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39403)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!817 (array!68350 array!68352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39403 V!39403 V!39403 V!39403 (_ BitVec 32) Int) Unit!35148)

(assert (=> b!1069696 (= lt!472719 (lemmaNoChangeToArrayThenSameMapNoExtras!817 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3778 (array!68350 array!68352 (_ BitVec 32) (_ BitVec 32) V!39403 V!39403 (_ BitVec 32) Int) ListLongMap!14451)

(assert (=> b!1069696 (= lt!472720 (getCurrentListMapNoExtraKeys!3778 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069696 (= lt!472718 (getCurrentListMapNoExtraKeys!3778 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!713784 () Bool)

(assert (=> start!94644 (=> (not res!713784) (not e!610554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94644 (= res!713784 (validMask!0 mask!1515))))

(assert (=> start!94644 e!610554))

(assert (=> start!94644 true))

(declare-fun tp_is_empty!25701 () Bool)

(assert (=> start!94644 tp_is_empty!25701))

(declare-fun e!610555 () Bool)

(declare-fun array_inv!25280 (array!68352) Bool)

(assert (=> start!94644 (and (array_inv!25280 _values!955) e!610555)))

(assert (=> start!94644 tp!77127))

(declare-fun array_inv!25281 (array!68350) Bool)

(assert (=> start!94644 (array_inv!25281 _keys!1163)))

(declare-fun b!1069697 () Bool)

(assert (=> b!1069697 (= e!610552 tp_is_empty!25701)))

(declare-fun b!1069698 () Bool)

(declare-fun e!610556 () Bool)

(assert (=> b!1069698 (= e!610556 tp_is_empty!25701)))

(declare-fun mapIsEmpty!40252 () Bool)

(assert (=> mapIsEmpty!40252 mapRes!40252))

(declare-fun b!1069699 () Bool)

(assert (=> b!1069699 (= e!610555 (and e!610556 mapRes!40252))))

(declare-fun condMapEmpty!40252 () Bool)

(declare-fun mapDefault!40252 () ValueCell!12147)

(assert (=> b!1069699 (= condMapEmpty!40252 (= (arr!32870 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12147)) mapDefault!40252)))))

(assert (= (and start!94644 res!713784) b!1069695))

(assert (= (and b!1069695 res!713782) b!1069693))

(assert (= (and b!1069693 res!713785) b!1069694))

(assert (= (and b!1069694 res!713783) b!1069696))

(assert (= (and b!1069699 condMapEmpty!40252) mapIsEmpty!40252))

(assert (= (and b!1069699 (not condMapEmpty!40252)) mapNonEmpty!40252))

(get-info :version)

(assert (= (and mapNonEmpty!40252 ((_ is ValueCellFull!12147) mapValue!40252)) b!1069697))

(assert (= (and b!1069699 ((_ is ValueCellFull!12147) mapDefault!40252)) b!1069698))

(assert (= start!94644 b!1069699))

(declare-fun m!988295 () Bool)

(assert (=> b!1069694 m!988295))

(declare-fun m!988297 () Bool)

(assert (=> b!1069696 m!988297))

(declare-fun m!988299 () Bool)

(assert (=> b!1069696 m!988299))

(declare-fun m!988301 () Bool)

(assert (=> b!1069696 m!988301))

(declare-fun m!988303 () Bool)

(assert (=> start!94644 m!988303))

(declare-fun m!988305 () Bool)

(assert (=> start!94644 m!988305))

(declare-fun m!988307 () Bool)

(assert (=> start!94644 m!988307))

(declare-fun m!988309 () Bool)

(assert (=> b!1069693 m!988309))

(declare-fun m!988311 () Bool)

(assert (=> mapNonEmpty!40252 m!988311))

(check-sat b_and!34721 (not b_next!21891) (not b!1069696) (not b!1069693) (not start!94644) tp_is_empty!25701 (not mapNonEmpty!40252) (not b!1069694))
(check-sat b_and!34721 (not b_next!21891))
