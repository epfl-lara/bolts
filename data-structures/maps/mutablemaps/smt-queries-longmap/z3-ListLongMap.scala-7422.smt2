; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94406 () Bool)

(assert start!94406)

(declare-fun b_free!21711 () Bool)

(declare-fun b_next!21711 () Bool)

(assert (=> start!94406 (= b_free!21711 (not b_next!21711))))

(declare-fun tp!76578 () Bool)

(declare-fun b_and!34513 () Bool)

(assert (=> start!94406 (= tp!76578 b_and!34513)))

(declare-fun b!1067071 () Bool)

(declare-fun e!608617 () Bool)

(declare-fun e!608616 () Bool)

(declare-fun mapRes!39973 () Bool)

(assert (=> b!1067071 (= e!608617 (and e!608616 mapRes!39973))))

(declare-fun condMapEmpty!39973 () Bool)

(declare-datatypes ((V!39163 0))(
  ( (V!39164 (val!12811 Int)) )
))
(declare-datatypes ((ValueCell!12057 0))(
  ( (ValueCellFull!12057 (v!15426 V!39163)) (EmptyCell!12057) )
))
(declare-datatypes ((array!68000 0))(
  ( (array!68001 (arr!32697 (Array (_ BitVec 32) ValueCell!12057)) (size!33234 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68000)

(declare-fun mapDefault!39973 () ValueCell!12057)

(assert (=> b!1067071 (= condMapEmpty!39973 (= (arr!32697 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12057)) mapDefault!39973)))))

(declare-fun mapIsEmpty!39973 () Bool)

(assert (=> mapIsEmpty!39973 mapRes!39973))

(declare-fun res!712216 () Bool)

(declare-fun e!608615 () Bool)

(assert (=> start!94406 (=> (not res!712216) (not e!608615))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94406 (= res!712216 (validMask!0 mask!1515))))

(assert (=> start!94406 e!608615))

(assert (=> start!94406 true))

(declare-fun tp_is_empty!25521 () Bool)

(assert (=> start!94406 tp_is_empty!25521))

(declare-fun array_inv!25152 (array!68000) Bool)

(assert (=> start!94406 (and (array_inv!25152 _values!955) e!608617)))

(assert (=> start!94406 tp!76578))

(declare-datatypes ((array!68002 0))(
  ( (array!68003 (arr!32698 (Array (_ BitVec 32) (_ BitVec 64))) (size!33235 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68002)

(declare-fun array_inv!25153 (array!68002) Bool)

(assert (=> start!94406 (array_inv!25153 _keys!1163)))

(declare-fun mapNonEmpty!39973 () Bool)

(declare-fun tp!76577 () Bool)

(declare-fun e!608614 () Bool)

(assert (=> mapNonEmpty!39973 (= mapRes!39973 (and tp!76577 e!608614))))

(declare-fun mapValue!39973 () ValueCell!12057)

(declare-fun mapKey!39973 () (_ BitVec 32))

(declare-fun mapRest!39973 () (Array (_ BitVec 32) ValueCell!12057))

(assert (=> mapNonEmpty!39973 (= (arr!32697 _values!955) (store mapRest!39973 mapKey!39973 mapValue!39973))))

(declare-fun b!1067072 () Bool)

(assert (=> b!1067072 (= e!608616 tp_is_empty!25521)))

(declare-fun b!1067073 () Bool)

(declare-fun res!712217 () Bool)

(assert (=> b!1067073 (=> (not res!712217) (not e!608615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68002 (_ BitVec 32)) Bool)

(assert (=> b!1067073 (= res!712217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067074 () Bool)

(declare-fun res!712218 () Bool)

(assert (=> b!1067074 (=> (not res!712218) (not e!608615))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067074 (= res!712218 (and (= (size!33234 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33235 _keys!1163) (size!33234 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067075 () Bool)

(assert (=> b!1067075 (= e!608615 (not true))))

(declare-datatypes ((tuple2!16340 0))(
  ( (tuple2!16341 (_1!8180 (_ BitVec 64)) (_2!8180 V!39163)) )
))
(declare-datatypes ((List!22930 0))(
  ( (Nil!22927) (Cons!22926 (h!24135 tuple2!16340) (t!32260 List!22930)) )
))
(declare-datatypes ((ListLongMap!14321 0))(
  ( (ListLongMap!14322 (toList!7176 List!22930)) )
))
(declare-fun lt!471288 () ListLongMap!14321)

(declare-fun lt!471289 () ListLongMap!14321)

(assert (=> b!1067075 (= lt!471288 lt!471289)))

(declare-fun zeroValueBefore!47 () V!39163)

(declare-datatypes ((Unit!35018 0))(
  ( (Unit!35019) )
))
(declare-fun lt!471287 () Unit!35018)

(declare-fun minValue!907 () V!39163)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39163)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!760 (array!68002 array!68000 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39163 V!39163 V!39163 V!39163 (_ BitVec 32) Int) Unit!35018)

(assert (=> b!1067075 (= lt!471287 (lemmaNoChangeToArrayThenSameMapNoExtras!760 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3721 (array!68002 array!68000 (_ BitVec 32) (_ BitVec 32) V!39163 V!39163 (_ BitVec 32) Int) ListLongMap!14321)

(assert (=> b!1067075 (= lt!471289 (getCurrentListMapNoExtraKeys!3721 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067075 (= lt!471288 (getCurrentListMapNoExtraKeys!3721 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067076 () Bool)

(assert (=> b!1067076 (= e!608614 tp_is_empty!25521)))

(declare-fun b!1067077 () Bool)

(declare-fun res!712219 () Bool)

(assert (=> b!1067077 (=> (not res!712219) (not e!608615))))

(declare-datatypes ((List!22931 0))(
  ( (Nil!22928) (Cons!22927 (h!24136 (_ BitVec 64)) (t!32261 List!22931)) )
))
(declare-fun arrayNoDuplicates!0 (array!68002 (_ BitVec 32) List!22931) Bool)

(assert (=> b!1067077 (= res!712219 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22928))))

(assert (= (and start!94406 res!712216) b!1067074))

(assert (= (and b!1067074 res!712218) b!1067073))

(assert (= (and b!1067073 res!712217) b!1067077))

(assert (= (and b!1067077 res!712219) b!1067075))

(assert (= (and b!1067071 condMapEmpty!39973) mapIsEmpty!39973))

(assert (= (and b!1067071 (not condMapEmpty!39973)) mapNonEmpty!39973))

(get-info :version)

(assert (= (and mapNonEmpty!39973 ((_ is ValueCellFull!12057) mapValue!39973)) b!1067076))

(assert (= (and b!1067071 ((_ is ValueCellFull!12057) mapDefault!39973)) b!1067072))

(assert (= start!94406 b!1067071))

(declare-fun m!985913 () Bool)

(assert (=> mapNonEmpty!39973 m!985913))

(declare-fun m!985915 () Bool)

(assert (=> start!94406 m!985915))

(declare-fun m!985917 () Bool)

(assert (=> start!94406 m!985917))

(declare-fun m!985919 () Bool)

(assert (=> start!94406 m!985919))

(declare-fun m!985921 () Bool)

(assert (=> b!1067075 m!985921))

(declare-fun m!985923 () Bool)

(assert (=> b!1067075 m!985923))

(declare-fun m!985925 () Bool)

(assert (=> b!1067075 m!985925))

(declare-fun m!985927 () Bool)

(assert (=> b!1067077 m!985927))

(declare-fun m!985929 () Bool)

(assert (=> b!1067073 m!985929))

(check-sat (not b!1067073) tp_is_empty!25521 (not mapNonEmpty!39973) (not b!1067077) b_and!34513 (not b!1067075) (not b_next!21711) (not start!94406))
(check-sat b_and!34513 (not b_next!21711))
