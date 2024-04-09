; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94480 () Bool)

(assert start!94480)

(declare-fun b_free!21771 () Bool)

(declare-fun b_next!21771 () Bool)

(assert (=> start!94480 (= b_free!21771 (not b_next!21771))))

(declare-fun tp!76761 () Bool)

(declare-fun b_and!34581 () Bool)

(assert (=> start!94480 (= tp!76761 b_and!34581)))

(declare-fun b!1067859 () Bool)

(declare-fun e!609193 () Bool)

(declare-fun tp_is_empty!25581 () Bool)

(assert (=> b!1067859 (= e!609193 tp_is_empty!25581)))

(declare-fun b!1067860 () Bool)

(declare-fun res!712684 () Bool)

(declare-fun e!609195 () Bool)

(assert (=> b!1067860 (=> (not res!712684) (not e!609195))))

(declare-datatypes ((array!68116 0))(
  ( (array!68117 (arr!32754 (Array (_ BitVec 32) (_ BitVec 64))) (size!33291 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68116)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68116 (_ BitVec 32)) Bool)

(assert (=> b!1067860 (= res!712684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067861 () Bool)

(declare-fun e!609192 () Bool)

(assert (=> b!1067861 (= e!609195 (not e!609192))))

(declare-fun res!712685 () Bool)

(assert (=> b!1067861 (=> res!712685 e!609192)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067861 (= res!712685 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39243 0))(
  ( (V!39244 (val!12841 Int)) )
))
(declare-datatypes ((tuple2!16378 0))(
  ( (tuple2!16379 (_1!8199 (_ BitVec 64)) (_2!8199 V!39243)) )
))
(declare-datatypes ((List!22969 0))(
  ( (Nil!22966) (Cons!22965 (h!24174 tuple2!16378) (t!32301 List!22969)) )
))
(declare-datatypes ((ListLongMap!14359 0))(
  ( (ListLongMap!14360 (toList!7195 List!22969)) )
))
(declare-fun lt!471672 () ListLongMap!14359)

(declare-fun lt!471670 () ListLongMap!14359)

(assert (=> b!1067861 (= lt!471672 lt!471670)))

(declare-fun zeroValueBefore!47 () V!39243)

(declare-datatypes ((Unit!35056 0))(
  ( (Unit!35057) )
))
(declare-fun lt!471671 () Unit!35056)

(declare-datatypes ((ValueCell!12087 0))(
  ( (ValueCellFull!12087 (v!15456 V!39243)) (EmptyCell!12087) )
))
(declare-datatypes ((array!68118 0))(
  ( (array!68119 (arr!32755 (Array (_ BitVec 32) ValueCell!12087)) (size!33292 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68118)

(declare-fun minValue!907 () V!39243)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39243)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!779 (array!68116 array!68118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39243 V!39243 V!39243 V!39243 (_ BitVec 32) Int) Unit!35056)

(assert (=> b!1067861 (= lt!471671 (lemmaNoChangeToArrayThenSameMapNoExtras!779 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3740 (array!68116 array!68118 (_ BitVec 32) (_ BitVec 32) V!39243 V!39243 (_ BitVec 32) Int) ListLongMap!14359)

(assert (=> b!1067861 (= lt!471670 (getCurrentListMapNoExtraKeys!3740 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067861 (= lt!471672 (getCurrentListMapNoExtraKeys!3740 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067862 () Bool)

(declare-fun e!609197 () Bool)

(declare-fun e!609194 () Bool)

(declare-fun mapRes!40066 () Bool)

(assert (=> b!1067862 (= e!609197 (and e!609194 mapRes!40066))))

(declare-fun condMapEmpty!40066 () Bool)

(declare-fun mapDefault!40066 () ValueCell!12087)

(assert (=> b!1067862 (= condMapEmpty!40066 (= (arr!32755 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12087)) mapDefault!40066)))))

(declare-fun b!1067863 () Bool)

(declare-fun e!609198 () Bool)

(assert (=> b!1067863 (= e!609198 true)))

(declare-fun lt!471673 () ListLongMap!14359)

(declare-fun -!636 (ListLongMap!14359 (_ BitVec 64)) ListLongMap!14359)

(assert (=> b!1067863 (= (-!636 lt!471673 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471673)))

(declare-fun lt!471674 () Unit!35056)

(declare-fun removeNotPresentStillSame!45 (ListLongMap!14359 (_ BitVec 64)) Unit!35056)

(assert (=> b!1067863 (= lt!471674 (removeNotPresentStillSame!45 lt!471673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!712682 () Bool)

(assert (=> start!94480 (=> (not res!712682) (not e!609195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94480 (= res!712682 (validMask!0 mask!1515))))

(assert (=> start!94480 e!609195))

(assert (=> start!94480 true))

(assert (=> start!94480 tp_is_empty!25581))

(declare-fun array_inv!25192 (array!68118) Bool)

(assert (=> start!94480 (and (array_inv!25192 _values!955) e!609197)))

(assert (=> start!94480 tp!76761))

(declare-fun array_inv!25193 (array!68116) Bool)

(assert (=> start!94480 (array_inv!25193 _keys!1163)))

(declare-fun b!1067864 () Bool)

(declare-fun res!712683 () Bool)

(assert (=> b!1067864 (=> (not res!712683) (not e!609195))))

(declare-datatypes ((List!22970 0))(
  ( (Nil!22967) (Cons!22966 (h!24175 (_ BitVec 64)) (t!32302 List!22970)) )
))
(declare-fun arrayNoDuplicates!0 (array!68116 (_ BitVec 32) List!22970) Bool)

(assert (=> b!1067864 (= res!712683 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22967))))

(declare-fun mapIsEmpty!40066 () Bool)

(assert (=> mapIsEmpty!40066 mapRes!40066))

(declare-fun b!1067865 () Bool)

(declare-fun res!712681 () Bool)

(assert (=> b!1067865 (=> (not res!712681) (not e!609195))))

(assert (=> b!1067865 (= res!712681 (and (= (size!33292 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33291 _keys!1163) (size!33292 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067866 () Bool)

(assert (=> b!1067866 (= e!609192 e!609198)))

(declare-fun res!712680 () Bool)

(assert (=> b!1067866 (=> res!712680 e!609198)))

(declare-fun contains!6301 (ListLongMap!14359 (_ BitVec 64)) Bool)

(assert (=> b!1067866 (= res!712680 (contains!6301 lt!471673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4091 (array!68116 array!68118 (_ BitVec 32) (_ BitVec 32) V!39243 V!39243 (_ BitVec 32) Int) ListLongMap!14359)

(assert (=> b!1067866 (= lt!471673 (getCurrentListMap!4091 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40066 () Bool)

(declare-fun tp!76760 () Bool)

(assert (=> mapNonEmpty!40066 (= mapRes!40066 (and tp!76760 e!609193))))

(declare-fun mapKey!40066 () (_ BitVec 32))

(declare-fun mapRest!40066 () (Array (_ BitVec 32) ValueCell!12087))

(declare-fun mapValue!40066 () ValueCell!12087)

(assert (=> mapNonEmpty!40066 (= (arr!32755 _values!955) (store mapRest!40066 mapKey!40066 mapValue!40066))))

(declare-fun b!1067867 () Bool)

(assert (=> b!1067867 (= e!609194 tp_is_empty!25581)))

(assert (= (and start!94480 res!712682) b!1067865))

(assert (= (and b!1067865 res!712681) b!1067860))

(assert (= (and b!1067860 res!712684) b!1067864))

(assert (= (and b!1067864 res!712683) b!1067861))

(assert (= (and b!1067861 (not res!712685)) b!1067866))

(assert (= (and b!1067866 (not res!712680)) b!1067863))

(assert (= (and b!1067862 condMapEmpty!40066) mapIsEmpty!40066))

(assert (= (and b!1067862 (not condMapEmpty!40066)) mapNonEmpty!40066))

(get-info :version)

(assert (= (and mapNonEmpty!40066 ((_ is ValueCellFull!12087) mapValue!40066)) b!1067859))

(assert (= (and b!1067862 ((_ is ValueCellFull!12087) mapDefault!40066)) b!1067867))

(assert (= start!94480 b!1067862))

(declare-fun m!986611 () Bool)

(assert (=> b!1067864 m!986611))

(declare-fun m!986613 () Bool)

(assert (=> b!1067863 m!986613))

(declare-fun m!986615 () Bool)

(assert (=> b!1067863 m!986615))

(declare-fun m!986617 () Bool)

(assert (=> b!1067860 m!986617))

(declare-fun m!986619 () Bool)

(assert (=> b!1067861 m!986619))

(declare-fun m!986621 () Bool)

(assert (=> b!1067861 m!986621))

(declare-fun m!986623 () Bool)

(assert (=> b!1067861 m!986623))

(declare-fun m!986625 () Bool)

(assert (=> b!1067866 m!986625))

(declare-fun m!986627 () Bool)

(assert (=> b!1067866 m!986627))

(declare-fun m!986629 () Bool)

(assert (=> mapNonEmpty!40066 m!986629))

(declare-fun m!986631 () Bool)

(assert (=> start!94480 m!986631))

(declare-fun m!986633 () Bool)

(assert (=> start!94480 m!986633))

(declare-fun m!986635 () Bool)

(assert (=> start!94480 m!986635))

(check-sat tp_is_empty!25581 (not b!1067863) (not b!1067860) (not b_next!21771) (not mapNonEmpty!40066) b_and!34581 (not b!1067861) (not b!1067864) (not start!94480) (not b!1067866))
(check-sat b_and!34581 (not b_next!21771))
