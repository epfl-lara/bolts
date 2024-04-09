; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94272 () Bool)

(assert start!94272)

(declare-fun b_free!21621 () Bool)

(declare-fun b_next!21621 () Bool)

(assert (=> start!94272 (= b_free!21621 (not b_next!21621))))

(declare-fun tp!76301 () Bool)

(declare-fun b_and!34399 () Bool)

(assert (=> start!94272 (= tp!76301 b_and!34399)))

(declare-fun mapNonEmpty!39832 () Bool)

(declare-fun mapRes!39832 () Bool)

(declare-fun tp!76302 () Bool)

(declare-fun e!607602 () Bool)

(assert (=> mapNonEmpty!39832 (= mapRes!39832 (and tp!76302 e!607602))))

(declare-fun mapKey!39832 () (_ BitVec 32))

(declare-datatypes ((V!39043 0))(
  ( (V!39044 (val!12766 Int)) )
))
(declare-datatypes ((ValueCell!12012 0))(
  ( (ValueCellFull!12012 (v!15379 V!39043)) (EmptyCell!12012) )
))
(declare-datatypes ((array!67820 0))(
  ( (array!67821 (arr!32609 (Array (_ BitVec 32) ValueCell!12012)) (size!33146 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67820)

(declare-fun mapValue!39832 () ValueCell!12012)

(declare-fun mapRest!39832 () (Array (_ BitVec 32) ValueCell!12012))

(assert (=> mapNonEmpty!39832 (= (arr!32609 _values!955) (store mapRest!39832 mapKey!39832 mapValue!39832))))

(declare-fun b!1065655 () Bool)

(declare-fun e!607598 () Bool)

(declare-fun e!607603 () Bool)

(assert (=> b!1065655 (= e!607598 (not e!607603))))

(declare-fun res!711410 () Bool)

(assert (=> b!1065655 (=> res!711410 e!607603)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065655 (= res!711410 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16266 0))(
  ( (tuple2!16267 (_1!8143 (_ BitVec 64)) (_2!8143 V!39043)) )
))
(declare-datatypes ((List!22864 0))(
  ( (Nil!22861) (Cons!22860 (h!24069 tuple2!16266) (t!32190 List!22864)) )
))
(declare-datatypes ((ListLongMap!14247 0))(
  ( (ListLongMap!14248 (toList!7139 List!22864)) )
))
(declare-fun lt!470091 () ListLongMap!14247)

(declare-fun lt!470092 () ListLongMap!14247)

(assert (=> b!1065655 (= lt!470091 lt!470092)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39043)

(declare-datatypes ((Unit!34940 0))(
  ( (Unit!34941) )
))
(declare-fun lt!470096 () Unit!34940)

(declare-fun minValue!907 () V!39043)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39043)

(declare-datatypes ((array!67822 0))(
  ( (array!67823 (arr!32610 (Array (_ BitVec 32) (_ BitVec 64))) (size!33147 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67822)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!726 (array!67822 array!67820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39043 V!39043 V!39043 V!39043 (_ BitVec 32) Int) Unit!34940)

(assert (=> b!1065655 (= lt!470096 (lemmaNoChangeToArrayThenSameMapNoExtras!726 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3687 (array!67822 array!67820 (_ BitVec 32) (_ BitVec 32) V!39043 V!39043 (_ BitVec 32) Int) ListLongMap!14247)

(assert (=> b!1065655 (= lt!470092 (getCurrentListMapNoExtraKeys!3687 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065655 (= lt!470091 (getCurrentListMapNoExtraKeys!3687 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065656 () Bool)

(declare-fun res!711412 () Bool)

(assert (=> b!1065656 (=> (not res!711412) (not e!607598))))

(declare-datatypes ((List!22865 0))(
  ( (Nil!22862) (Cons!22861 (h!24070 (_ BitVec 64)) (t!32191 List!22865)) )
))
(declare-fun arrayNoDuplicates!0 (array!67822 (_ BitVec 32) List!22865) Bool)

(assert (=> b!1065656 (= res!711412 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22862))))

(declare-fun b!1065657 () Bool)

(declare-fun e!607599 () Bool)

(declare-fun tp_is_empty!25431 () Bool)

(assert (=> b!1065657 (= e!607599 tp_is_empty!25431)))

(declare-fun mapIsEmpty!39832 () Bool)

(assert (=> mapIsEmpty!39832 mapRes!39832))

(declare-fun b!1065658 () Bool)

(declare-fun res!711409 () Bool)

(assert (=> b!1065658 (=> (not res!711409) (not e!607598))))

(assert (=> b!1065658 (= res!711409 (and (= (size!33146 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33147 _keys!1163) (size!33146 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065660 () Bool)

(assert (=> b!1065660 (= e!607602 tp_is_empty!25431)))

(declare-fun b!1065661 () Bool)

(assert (=> b!1065661 (= e!607603 true)))

(declare-fun lt!470095 () ListLongMap!14247)

(declare-fun lt!470093 () ListLongMap!14247)

(declare-fun -!603 (ListLongMap!14247 (_ BitVec 64)) ListLongMap!14247)

(assert (=> b!1065661 (= lt!470095 (-!603 lt!470093 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470097 () ListLongMap!14247)

(assert (=> b!1065661 (= (-!603 lt!470097 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470091)))

(declare-fun lt!470094 () Unit!34940)

(declare-fun addThenRemoveForNewKeyIsSame!12 (ListLongMap!14247 (_ BitVec 64) V!39043) Unit!34940)

(assert (=> b!1065661 (= lt!470094 (addThenRemoveForNewKeyIsSame!12 lt!470091 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470098 () ListLongMap!14247)

(assert (=> b!1065661 (and (= lt!470093 lt!470097) (= lt!470098 lt!470092))))

(declare-fun +!3094 (ListLongMap!14247 tuple2!16266) ListLongMap!14247)

(assert (=> b!1065661 (= lt!470097 (+!3094 lt!470091 (tuple2!16267 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4057 (array!67822 array!67820 (_ BitVec 32) (_ BitVec 32) V!39043 V!39043 (_ BitVec 32) Int) ListLongMap!14247)

(assert (=> b!1065661 (= lt!470098 (getCurrentListMap!4057 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065661 (= lt!470093 (getCurrentListMap!4057 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065662 () Bool)

(declare-fun res!711411 () Bool)

(assert (=> b!1065662 (=> (not res!711411) (not e!607598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67822 (_ BitVec 32)) Bool)

(assert (=> b!1065662 (= res!711411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065659 () Bool)

(declare-fun e!607601 () Bool)

(assert (=> b!1065659 (= e!607601 (and e!607599 mapRes!39832))))

(declare-fun condMapEmpty!39832 () Bool)

(declare-fun mapDefault!39832 () ValueCell!12012)

(assert (=> b!1065659 (= condMapEmpty!39832 (= (arr!32609 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12012)) mapDefault!39832)))))

(declare-fun res!711413 () Bool)

(assert (=> start!94272 (=> (not res!711413) (not e!607598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94272 (= res!711413 (validMask!0 mask!1515))))

(assert (=> start!94272 e!607598))

(assert (=> start!94272 true))

(assert (=> start!94272 tp_is_empty!25431))

(declare-fun array_inv!25088 (array!67820) Bool)

(assert (=> start!94272 (and (array_inv!25088 _values!955) e!607601)))

(assert (=> start!94272 tp!76301))

(declare-fun array_inv!25089 (array!67822) Bool)

(assert (=> start!94272 (array_inv!25089 _keys!1163)))

(assert (= (and start!94272 res!711413) b!1065658))

(assert (= (and b!1065658 res!711409) b!1065662))

(assert (= (and b!1065662 res!711411) b!1065656))

(assert (= (and b!1065656 res!711412) b!1065655))

(assert (= (and b!1065655 (not res!711410)) b!1065661))

(assert (= (and b!1065659 condMapEmpty!39832) mapIsEmpty!39832))

(assert (= (and b!1065659 (not condMapEmpty!39832)) mapNonEmpty!39832))

(get-info :version)

(assert (= (and mapNonEmpty!39832 ((_ is ValueCellFull!12012) mapValue!39832)) b!1065660))

(assert (= (and b!1065659 ((_ is ValueCellFull!12012) mapDefault!39832)) b!1065657))

(assert (= start!94272 b!1065659))

(declare-fun m!984315 () Bool)

(assert (=> start!94272 m!984315))

(declare-fun m!984317 () Bool)

(assert (=> start!94272 m!984317))

(declare-fun m!984319 () Bool)

(assert (=> start!94272 m!984319))

(declare-fun m!984321 () Bool)

(assert (=> b!1065662 m!984321))

(declare-fun m!984323 () Bool)

(assert (=> b!1065655 m!984323))

(declare-fun m!984325 () Bool)

(assert (=> b!1065655 m!984325))

(declare-fun m!984327 () Bool)

(assert (=> b!1065655 m!984327))

(declare-fun m!984329 () Bool)

(assert (=> mapNonEmpty!39832 m!984329))

(declare-fun m!984331 () Bool)

(assert (=> b!1065661 m!984331))

(declare-fun m!984333 () Bool)

(assert (=> b!1065661 m!984333))

(declare-fun m!984335 () Bool)

(assert (=> b!1065661 m!984335))

(declare-fun m!984337 () Bool)

(assert (=> b!1065661 m!984337))

(declare-fun m!984339 () Bool)

(assert (=> b!1065661 m!984339))

(declare-fun m!984341 () Bool)

(assert (=> b!1065661 m!984341))

(declare-fun m!984343 () Bool)

(assert (=> b!1065656 m!984343))

(check-sat (not b!1065661) tp_is_empty!25431 (not b!1065655) (not start!94272) (not b!1065662) (not b_next!21621) b_and!34399 (not mapNonEmpty!39832) (not b!1065656))
(check-sat b_and!34399 (not b_next!21621))
