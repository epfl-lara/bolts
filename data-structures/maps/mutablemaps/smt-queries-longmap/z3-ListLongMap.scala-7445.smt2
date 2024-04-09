; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94580 () Bool)

(assert start!94580)

(declare-fun b_free!21849 () Bool)

(declare-fun b_next!21849 () Bool)

(assert (=> start!94580 (= b_free!21849 (not b_next!21849))))

(declare-fun tp!76997 () Bool)

(declare-fun b_and!34669 () Bool)

(assert (=> start!94580 (= tp!76997 b_and!34669)))

(declare-fun b!1069069 () Bool)

(declare-fun e!610117 () Bool)

(declare-fun e!610114 () Bool)

(assert (=> b!1069069 (= e!610117 e!610114)))

(declare-fun res!713446 () Bool)

(assert (=> b!1069069 (=> res!713446 e!610114)))

(declare-datatypes ((V!39347 0))(
  ( (V!39348 (val!12880 Int)) )
))
(declare-datatypes ((tuple2!16440 0))(
  ( (tuple2!16441 (_1!8230 (_ BitVec 64)) (_2!8230 V!39347)) )
))
(declare-datatypes ((List!23027 0))(
  ( (Nil!23024) (Cons!23023 (h!24232 tuple2!16440) (t!32361 List!23027)) )
))
(declare-datatypes ((ListLongMap!14421 0))(
  ( (ListLongMap!14422 (toList!7226 List!23027)) )
))
(declare-fun lt!472382 () ListLongMap!14421)

(declare-fun contains!6324 (ListLongMap!14421 (_ BitVec 64)) Bool)

(assert (=> b!1069069 (= res!713446 (contains!6324 lt!472382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39347)

(declare-datatypes ((ValueCell!12126 0))(
  ( (ValueCellFull!12126 (v!15496 V!39347)) (EmptyCell!12126) )
))
(declare-datatypes ((array!68266 0))(
  ( (array!68267 (arr!32828 (Array (_ BitVec 32) ValueCell!12126)) (size!33365 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68266)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39347)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68268 0))(
  ( (array!68269 (arr!32829 (Array (_ BitVec 32) (_ BitVec 64))) (size!33366 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68268)

(declare-fun getCurrentListMap!4113 (array!68268 array!68266 (_ BitVec 32) (_ BitVec 32) V!39347 V!39347 (_ BitVec 32) Int) ListLongMap!14421)

(assert (=> b!1069069 (= lt!472382 (getCurrentListMap!4113 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069070 () Bool)

(declare-fun e!610116 () Bool)

(declare-fun tp_is_empty!25659 () Bool)

(assert (=> b!1069070 (= e!610116 tp_is_empty!25659)))

(declare-fun b!1069071 () Bool)

(declare-fun res!713447 () Bool)

(declare-fun e!610112 () Bool)

(assert (=> b!1069071 (=> (not res!713447) (not e!610112))))

(declare-datatypes ((List!23028 0))(
  ( (Nil!23025) (Cons!23024 (h!24233 (_ BitVec 64)) (t!32362 List!23028)) )
))
(declare-fun arrayNoDuplicates!0 (array!68268 (_ BitVec 32) List!23028) Bool)

(assert (=> b!1069071 (= res!713447 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23025))))

(declare-fun mapNonEmpty!40186 () Bool)

(declare-fun mapRes!40186 () Bool)

(declare-fun tp!76998 () Bool)

(declare-fun e!610115 () Bool)

(assert (=> mapNonEmpty!40186 (= mapRes!40186 (and tp!76998 e!610115))))

(declare-fun mapKey!40186 () (_ BitVec 32))

(declare-fun mapValue!40186 () ValueCell!12126)

(declare-fun mapRest!40186 () (Array (_ BitVec 32) ValueCell!12126))

(assert (=> mapNonEmpty!40186 (= (arr!32828 _values!955) (store mapRest!40186 mapKey!40186 mapValue!40186))))

(declare-fun b!1069072 () Bool)

(assert (=> b!1069072 (= e!610114 true)))

(declare-fun -!660 (ListLongMap!14421 (_ BitVec 64)) ListLongMap!14421)

(assert (=> b!1069072 (= (-!660 lt!472382 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472382)))

(declare-datatypes ((Unit!35116 0))(
  ( (Unit!35117) )
))
(declare-fun lt!472380 () Unit!35116)

(declare-fun removeNotPresentStillSame!69 (ListLongMap!14421 (_ BitVec 64)) Unit!35116)

(assert (=> b!1069072 (= lt!472380 (removeNotPresentStillSame!69 lt!472382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069073 () Bool)

(assert (=> b!1069073 (= e!610112 (not e!610117))))

(declare-fun res!713445 () Bool)

(assert (=> b!1069073 (=> res!713445 e!610117)))

(assert (=> b!1069073 (= res!713445 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472379 () ListLongMap!14421)

(declare-fun lt!472381 () ListLongMap!14421)

(assert (=> b!1069073 (= lt!472379 lt!472381)))

(declare-fun lt!472383 () Unit!35116)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39347)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!803 (array!68268 array!68266 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39347 V!39347 V!39347 V!39347 (_ BitVec 32) Int) Unit!35116)

(assert (=> b!1069073 (= lt!472383 (lemmaNoChangeToArrayThenSameMapNoExtras!803 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3764 (array!68268 array!68266 (_ BitVec 32) (_ BitVec 32) V!39347 V!39347 (_ BitVec 32) Int) ListLongMap!14421)

(assert (=> b!1069073 (= lt!472381 (getCurrentListMapNoExtraKeys!3764 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069073 (= lt!472379 (getCurrentListMapNoExtraKeys!3764 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069074 () Bool)

(declare-fun e!610113 () Bool)

(assert (=> b!1069074 (= e!610113 (and e!610116 mapRes!40186))))

(declare-fun condMapEmpty!40186 () Bool)

(declare-fun mapDefault!40186 () ValueCell!12126)

(assert (=> b!1069074 (= condMapEmpty!40186 (= (arr!32828 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12126)) mapDefault!40186)))))

(declare-fun b!1069075 () Bool)

(declare-fun res!713444 () Bool)

(assert (=> b!1069075 (=> (not res!713444) (not e!610112))))

(assert (=> b!1069075 (= res!713444 (and (= (size!33365 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33366 _keys!1163) (size!33365 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!713448 () Bool)

(assert (=> start!94580 (=> (not res!713448) (not e!610112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94580 (= res!713448 (validMask!0 mask!1515))))

(assert (=> start!94580 e!610112))

(assert (=> start!94580 true))

(assert (=> start!94580 tp_is_empty!25659))

(declare-fun array_inv!25250 (array!68266) Bool)

(assert (=> start!94580 (and (array_inv!25250 _values!955) e!610113)))

(assert (=> start!94580 tp!76997))

(declare-fun array_inv!25251 (array!68268) Bool)

(assert (=> start!94580 (array_inv!25251 _keys!1163)))

(declare-fun mapIsEmpty!40186 () Bool)

(assert (=> mapIsEmpty!40186 mapRes!40186))

(declare-fun b!1069076 () Bool)

(assert (=> b!1069076 (= e!610115 tp_is_empty!25659)))

(declare-fun b!1069077 () Bool)

(declare-fun res!713443 () Bool)

(assert (=> b!1069077 (=> (not res!713443) (not e!610112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68268 (_ BitVec 32)) Bool)

(assert (=> b!1069077 (= res!713443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94580 res!713448) b!1069075))

(assert (= (and b!1069075 res!713444) b!1069077))

(assert (= (and b!1069077 res!713443) b!1069071))

(assert (= (and b!1069071 res!713447) b!1069073))

(assert (= (and b!1069073 (not res!713445)) b!1069069))

(assert (= (and b!1069069 (not res!713446)) b!1069072))

(assert (= (and b!1069074 condMapEmpty!40186) mapIsEmpty!40186))

(assert (= (and b!1069074 (not condMapEmpty!40186)) mapNonEmpty!40186))

(get-info :version)

(assert (= (and mapNonEmpty!40186 ((_ is ValueCellFull!12126) mapValue!40186)) b!1069076))

(assert (= (and b!1069074 ((_ is ValueCellFull!12126) mapDefault!40186)) b!1069070))

(assert (= start!94580 b!1069074))

(declare-fun m!987751 () Bool)

(assert (=> mapNonEmpty!40186 m!987751))

(declare-fun m!987753 () Bool)

(assert (=> start!94580 m!987753))

(declare-fun m!987755 () Bool)

(assert (=> start!94580 m!987755))

(declare-fun m!987757 () Bool)

(assert (=> start!94580 m!987757))

(declare-fun m!987759 () Bool)

(assert (=> b!1069071 m!987759))

(declare-fun m!987761 () Bool)

(assert (=> b!1069072 m!987761))

(declare-fun m!987763 () Bool)

(assert (=> b!1069072 m!987763))

(declare-fun m!987765 () Bool)

(assert (=> b!1069069 m!987765))

(declare-fun m!987767 () Bool)

(assert (=> b!1069069 m!987767))

(declare-fun m!987769 () Bool)

(assert (=> b!1069073 m!987769))

(declare-fun m!987771 () Bool)

(assert (=> b!1069073 m!987771))

(declare-fun m!987773 () Bool)

(assert (=> b!1069073 m!987773))

(declare-fun m!987775 () Bool)

(assert (=> b!1069077 m!987775))

(check-sat (not b!1069069) b_and!34669 tp_is_empty!25659 (not b!1069077) (not start!94580) (not mapNonEmpty!40186) (not b!1069073) (not b!1069071) (not b!1069072) (not b_next!21849))
(check-sat b_and!34669 (not b_next!21849))
