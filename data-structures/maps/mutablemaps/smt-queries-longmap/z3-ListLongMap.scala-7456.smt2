; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94682 () Bool)

(assert start!94682)

(declare-fun b_free!21915 () Bool)

(declare-fun b_next!21915 () Bool)

(assert (=> start!94682 (= b_free!21915 (not b_next!21915))))

(declare-fun tp!77201 () Bool)

(declare-fun b_and!34753 () Bool)

(assert (=> start!94682 (= tp!77201 b_and!34753)))

(declare-fun mapIsEmpty!40291 () Bool)

(declare-fun mapRes!40291 () Bool)

(assert (=> mapIsEmpty!40291 mapRes!40291))

(declare-fun b!1070035 () Bool)

(declare-fun res!713965 () Bool)

(declare-fun e!610796 () Bool)

(assert (=> b!1070035 (=> (not res!713965) (not e!610796))))

(declare-datatypes ((array!68398 0))(
  ( (array!68399 (arr!32892 (Array (_ BitVec 32) (_ BitVec 64))) (size!33429 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68398)

(declare-datatypes ((List!23074 0))(
  ( (Nil!23071) (Cons!23070 (h!24279 (_ BitVec 64)) (t!32412 List!23074)) )
))
(declare-fun arrayNoDuplicates!0 (array!68398 (_ BitVec 32) List!23074) Bool)

(assert (=> b!1070035 (= res!713965 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23071))))

(declare-fun b!1070036 () Bool)

(declare-fun e!610794 () Bool)

(declare-fun tp_is_empty!25725 () Bool)

(assert (=> b!1070036 (= e!610794 tp_is_empty!25725)))

(declare-fun b!1070037 () Bool)

(declare-fun e!610795 () Bool)

(assert (=> b!1070037 (= e!610796 (not e!610795))))

(declare-fun res!713962 () Bool)

(assert (=> b!1070037 (=> res!713962 e!610795)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070037 (= res!713962 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39435 0))(
  ( (V!39436 (val!12913 Int)) )
))
(declare-datatypes ((tuple2!16488 0))(
  ( (tuple2!16489 (_1!8254 (_ BitVec 64)) (_2!8254 V!39435)) )
))
(declare-datatypes ((List!23075 0))(
  ( (Nil!23072) (Cons!23071 (h!24280 tuple2!16488) (t!32413 List!23075)) )
))
(declare-datatypes ((ListLongMap!14469 0))(
  ( (ListLongMap!14470 (toList!7250 List!23075)) )
))
(declare-fun lt!472871 () ListLongMap!14469)

(declare-fun lt!472872 () ListLongMap!14469)

(assert (=> b!1070037 (= lt!472871 lt!472872)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39435)

(declare-datatypes ((Unit!35166 0))(
  ( (Unit!35167) )
))
(declare-fun lt!472873 () Unit!35166)

(declare-datatypes ((ValueCell!12159 0))(
  ( (ValueCellFull!12159 (v!15530 V!39435)) (EmptyCell!12159) )
))
(declare-datatypes ((array!68400 0))(
  ( (array!68401 (arr!32893 (Array (_ BitVec 32) ValueCell!12159)) (size!33430 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68400)

(declare-fun minValue!907 () V!39435)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39435)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!826 (array!68398 array!68400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39435 V!39435 V!39435 V!39435 (_ BitVec 32) Int) Unit!35166)

(assert (=> b!1070037 (= lt!472873 (lemmaNoChangeToArrayThenSameMapNoExtras!826 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3787 (array!68398 array!68400 (_ BitVec 32) (_ BitVec 32) V!39435 V!39435 (_ BitVec 32) Int) ListLongMap!14469)

(assert (=> b!1070037 (= lt!472872 (getCurrentListMapNoExtraKeys!3787 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070037 (= lt!472871 (getCurrentListMapNoExtraKeys!3787 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070038 () Bool)

(declare-fun res!713964 () Bool)

(assert (=> b!1070038 (=> (not res!713964) (not e!610796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68398 (_ BitVec 32)) Bool)

(assert (=> b!1070038 (= res!713964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!713963 () Bool)

(assert (=> start!94682 (=> (not res!713963) (not e!610796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94682 (= res!713963 (validMask!0 mask!1515))))

(assert (=> start!94682 e!610796))

(assert (=> start!94682 true))

(assert (=> start!94682 tp_is_empty!25725))

(declare-fun e!610793 () Bool)

(declare-fun array_inv!25292 (array!68400) Bool)

(assert (=> start!94682 (and (array_inv!25292 _values!955) e!610793)))

(assert (=> start!94682 tp!77201))

(declare-fun array_inv!25293 (array!68398) Bool)

(assert (=> start!94682 (array_inv!25293 _keys!1163)))

(declare-fun b!1070039 () Bool)

(assert (=> b!1070039 (= e!610795 true)))

(declare-fun lt!472874 () ListLongMap!14469)

(declare-fun getCurrentListMap!4116 (array!68398 array!68400 (_ BitVec 32) (_ BitVec 32) V!39435 V!39435 (_ BitVec 32) Int) ListLongMap!14469)

(assert (=> b!1070039 (= lt!472874 (getCurrentListMap!4116 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070040 () Bool)

(declare-fun e!610797 () Bool)

(assert (=> b!1070040 (= e!610797 tp_is_empty!25725)))

(declare-fun b!1070041 () Bool)

(assert (=> b!1070041 (= e!610793 (and e!610797 mapRes!40291))))

(declare-fun condMapEmpty!40291 () Bool)

(declare-fun mapDefault!40291 () ValueCell!12159)

(assert (=> b!1070041 (= condMapEmpty!40291 (= (arr!32893 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12159)) mapDefault!40291)))))

(declare-fun mapNonEmpty!40291 () Bool)

(declare-fun tp!77202 () Bool)

(assert (=> mapNonEmpty!40291 (= mapRes!40291 (and tp!77202 e!610794))))

(declare-fun mapKey!40291 () (_ BitVec 32))

(declare-fun mapRest!40291 () (Array (_ BitVec 32) ValueCell!12159))

(declare-fun mapValue!40291 () ValueCell!12159)

(assert (=> mapNonEmpty!40291 (= (arr!32893 _values!955) (store mapRest!40291 mapKey!40291 mapValue!40291))))

(declare-fun b!1070042 () Bool)

(declare-fun res!713966 () Bool)

(assert (=> b!1070042 (=> (not res!713966) (not e!610796))))

(assert (=> b!1070042 (= res!713966 (and (= (size!33430 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33429 _keys!1163) (size!33430 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94682 res!713963) b!1070042))

(assert (= (and b!1070042 res!713966) b!1070038))

(assert (= (and b!1070038 res!713964) b!1070035))

(assert (= (and b!1070035 res!713965) b!1070037))

(assert (= (and b!1070037 (not res!713962)) b!1070039))

(assert (= (and b!1070041 condMapEmpty!40291) mapIsEmpty!40291))

(assert (= (and b!1070041 (not condMapEmpty!40291)) mapNonEmpty!40291))

(get-info :version)

(assert (= (and mapNonEmpty!40291 ((_ is ValueCellFull!12159) mapValue!40291)) b!1070036))

(assert (= (and b!1070041 ((_ is ValueCellFull!12159) mapDefault!40291)) b!1070040))

(assert (= start!94682 b!1070041))

(declare-fun m!988579 () Bool)

(assert (=> mapNonEmpty!40291 m!988579))

(declare-fun m!988581 () Bool)

(assert (=> b!1070035 m!988581))

(declare-fun m!988583 () Bool)

(assert (=> b!1070038 m!988583))

(declare-fun m!988585 () Bool)

(assert (=> b!1070039 m!988585))

(declare-fun m!988587 () Bool)

(assert (=> start!94682 m!988587))

(declare-fun m!988589 () Bool)

(assert (=> start!94682 m!988589))

(declare-fun m!988591 () Bool)

(assert (=> start!94682 m!988591))

(declare-fun m!988593 () Bool)

(assert (=> b!1070037 m!988593))

(declare-fun m!988595 () Bool)

(assert (=> b!1070037 m!988595))

(declare-fun m!988597 () Bool)

(assert (=> b!1070037 m!988597))

(check-sat b_and!34753 tp_is_empty!25725 (not b!1070038) (not b!1070037) (not b!1070035) (not b_next!21915) (not b!1070039) (not mapNonEmpty!40291) (not start!94682))
(check-sat b_and!34753 (not b_next!21915))
