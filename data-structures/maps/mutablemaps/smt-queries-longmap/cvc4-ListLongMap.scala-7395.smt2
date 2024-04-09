; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94186 () Bool)

(assert start!94186)

(declare-fun b_free!21551 () Bool)

(declare-fun b_next!21551 () Bool)

(assert (=> start!94186 (= b_free!21551 (not b_next!21551))))

(declare-fun tp!76089 () Bool)

(declare-fun b_and!34319 () Bool)

(assert (=> start!94186 (= tp!76089 b_and!34319)))

(declare-fun b!1064658 () Bool)

(declare-fun e!606867 () Bool)

(declare-fun e!606866 () Bool)

(assert (=> b!1064658 (= e!606867 (not e!606866))))

(declare-fun res!710820 () Bool)

(assert (=> b!1064658 (=> res!710820 e!606866)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064658 (= res!710820 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!38949 0))(
  ( (V!38950 (val!12731 Int)) )
))
(declare-datatypes ((tuple2!16210 0))(
  ( (tuple2!16211 (_1!8115 (_ BitVec 64)) (_2!8115 V!38949)) )
))
(declare-datatypes ((List!22811 0))(
  ( (Nil!22808) (Cons!22807 (h!24016 tuple2!16210) (t!32135 List!22811)) )
))
(declare-datatypes ((ListLongMap!14191 0))(
  ( (ListLongMap!14192 (toList!7111 List!22811)) )
))
(declare-fun lt!469312 () ListLongMap!14191)

(declare-fun lt!469313 () ListLongMap!14191)

(assert (=> b!1064658 (= lt!469312 lt!469313)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38949)

(declare-datatypes ((ValueCell!11977 0))(
  ( (ValueCellFull!11977 (v!15344 V!38949)) (EmptyCell!11977) )
))
(declare-datatypes ((array!67686 0))(
  ( (array!67687 (arr!32543 (Array (_ BitVec 32) ValueCell!11977)) (size!33080 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67686)

(declare-datatypes ((Unit!34885 0))(
  ( (Unit!34886) )
))
(declare-fun lt!469311 () Unit!34885)

(declare-fun minValue!907 () V!38949)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38949)

(declare-datatypes ((array!67688 0))(
  ( (array!67689 (arr!32544 (Array (_ BitVec 32) (_ BitVec 64))) (size!33081 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67688)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!702 (array!67688 array!67686 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38949 V!38949 V!38949 V!38949 (_ BitVec 32) Int) Unit!34885)

(assert (=> b!1064658 (= lt!469311 (lemmaNoChangeToArrayThenSameMapNoExtras!702 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3663 (array!67688 array!67686 (_ BitVec 32) (_ BitVec 32) V!38949 V!38949 (_ BitVec 32) Int) ListLongMap!14191)

(assert (=> b!1064658 (= lt!469313 (getCurrentListMapNoExtraKeys!3663 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064658 (= lt!469312 (getCurrentListMapNoExtraKeys!3663 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710821 () Bool)

(assert (=> start!94186 (=> (not res!710821) (not e!606867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94186 (= res!710821 (validMask!0 mask!1515))))

(assert (=> start!94186 e!606867))

(assert (=> start!94186 true))

(declare-fun tp_is_empty!25361 () Bool)

(assert (=> start!94186 tp_is_empty!25361))

(declare-fun e!606869 () Bool)

(declare-fun array_inv!25036 (array!67686) Bool)

(assert (=> start!94186 (and (array_inv!25036 _values!955) e!606869)))

(assert (=> start!94186 tp!76089))

(declare-fun array_inv!25037 (array!67688) Bool)

(assert (=> start!94186 (array_inv!25037 _keys!1163)))

(declare-fun b!1064659 () Bool)

(declare-fun res!710819 () Bool)

(assert (=> b!1064659 (=> (not res!710819) (not e!606867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67688 (_ BitVec 32)) Bool)

(assert (=> b!1064659 (= res!710819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39724 () Bool)

(declare-fun mapRes!39724 () Bool)

(assert (=> mapIsEmpty!39724 mapRes!39724))

(declare-fun mapNonEmpty!39724 () Bool)

(declare-fun tp!76088 () Bool)

(declare-fun e!606865 () Bool)

(assert (=> mapNonEmpty!39724 (= mapRes!39724 (and tp!76088 e!606865))))

(declare-fun mapKey!39724 () (_ BitVec 32))

(declare-fun mapValue!39724 () ValueCell!11977)

(declare-fun mapRest!39724 () (Array (_ BitVec 32) ValueCell!11977))

(assert (=> mapNonEmpty!39724 (= (arr!32543 _values!955) (store mapRest!39724 mapKey!39724 mapValue!39724))))

(declare-fun b!1064660 () Bool)

(declare-fun res!710817 () Bool)

(assert (=> b!1064660 (=> (not res!710817) (not e!606867))))

(assert (=> b!1064660 (= res!710817 (and (= (size!33080 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33081 _keys!1163) (size!33080 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064661 () Bool)

(declare-fun res!710818 () Bool)

(assert (=> b!1064661 (=> (not res!710818) (not e!606867))))

(declare-datatypes ((List!22812 0))(
  ( (Nil!22809) (Cons!22808 (h!24017 (_ BitVec 64)) (t!32136 List!22812)) )
))
(declare-fun arrayNoDuplicates!0 (array!67688 (_ BitVec 32) List!22812) Bool)

(assert (=> b!1064661 (= res!710818 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22809))))

(declare-fun b!1064662 () Bool)

(assert (=> b!1064662 (= e!606865 tp_is_empty!25361)))

(declare-fun b!1064663 () Bool)

(assert (=> b!1064663 (= e!606866 true)))

(declare-fun lt!469314 () ListLongMap!14191)

(declare-fun getCurrentListMap!4035 (array!67688 array!67686 (_ BitVec 32) (_ BitVec 32) V!38949 V!38949 (_ BitVec 32) Int) ListLongMap!14191)

(assert (=> b!1064663 (= lt!469314 (getCurrentListMap!4035 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064664 () Bool)

(declare-fun e!606870 () Bool)

(assert (=> b!1064664 (= e!606869 (and e!606870 mapRes!39724))))

(declare-fun condMapEmpty!39724 () Bool)

(declare-fun mapDefault!39724 () ValueCell!11977)

