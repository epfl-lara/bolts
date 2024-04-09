; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94126 () Bool)

(assert start!94126)

(declare-fun b_free!21505 () Bool)

(declare-fun b_next!21505 () Bool)

(assert (=> start!94126 (= b_free!21505 (not b_next!21505))))

(declare-fun tp!75948 () Bool)

(declare-fun b_and!34265 () Bool)

(assert (=> start!94126 (= tp!75948 b_and!34265)))

(declare-fun mapIsEmpty!39652 () Bool)

(declare-fun mapRes!39652 () Bool)

(assert (=> mapIsEmpty!39652 mapRes!39652))

(declare-fun b!1064046 () Bool)

(declare-fun e!606425 () Bool)

(assert (=> b!1064046 (= e!606425 (not true))))

(declare-datatypes ((V!38889 0))(
  ( (V!38890 (val!12708 Int)) )
))
(declare-datatypes ((tuple2!16180 0))(
  ( (tuple2!16181 (_1!8100 (_ BitVec 64)) (_2!8100 V!38889)) )
))
(declare-datatypes ((List!22782 0))(
  ( (Nil!22779) (Cons!22778 (h!23987 tuple2!16180) (t!32104 List!22782)) )
))
(declare-datatypes ((ListLongMap!14161 0))(
  ( (ListLongMap!14162 (toList!7096 List!22782)) )
))
(declare-fun lt!469022 () ListLongMap!14161)

(declare-fun lt!469021 () ListLongMap!14161)

(assert (=> b!1064046 (= lt!469022 lt!469021)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38889)

(declare-datatypes ((Unit!34859 0))(
  ( (Unit!34860) )
))
(declare-fun lt!469020 () Unit!34859)

(declare-datatypes ((ValueCell!11954 0))(
  ( (ValueCellFull!11954 (v!15321 V!38889)) (EmptyCell!11954) )
))
(declare-datatypes ((array!67598 0))(
  ( (array!67599 (arr!32500 (Array (_ BitVec 32) ValueCell!11954)) (size!33037 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67598)

(declare-fun minValue!907 () V!38889)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38889)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67600 0))(
  ( (array!67601 (arr!32501 (Array (_ BitVec 32) (_ BitVec 64))) (size!33038 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67600)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!689 (array!67600 array!67598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38889 V!38889 V!38889 V!38889 (_ BitVec 32) Int) Unit!34859)

(assert (=> b!1064046 (= lt!469020 (lemmaNoChangeToArrayThenSameMapNoExtras!689 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3650 (array!67600 array!67598 (_ BitVec 32) (_ BitVec 32) V!38889 V!38889 (_ BitVec 32) Int) ListLongMap!14161)

(assert (=> b!1064046 (= lt!469021 (getCurrentListMapNoExtraKeys!3650 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064046 (= lt!469022 (getCurrentListMapNoExtraKeys!3650 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39652 () Bool)

(declare-fun tp!75947 () Bool)

(declare-fun e!606424 () Bool)

(assert (=> mapNonEmpty!39652 (= mapRes!39652 (and tp!75947 e!606424))))

(declare-fun mapValue!39652 () ValueCell!11954)

(declare-fun mapKey!39652 () (_ BitVec 32))

(declare-fun mapRest!39652 () (Array (_ BitVec 32) ValueCell!11954))

(assert (=> mapNonEmpty!39652 (= (arr!32500 _values!955) (store mapRest!39652 mapKey!39652 mapValue!39652))))

(declare-fun res!710466 () Bool)

(assert (=> start!94126 (=> (not res!710466) (not e!606425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94126 (= res!710466 (validMask!0 mask!1515))))

(assert (=> start!94126 e!606425))

(assert (=> start!94126 true))

(declare-fun tp_is_empty!25315 () Bool)

(assert (=> start!94126 tp_is_empty!25315))

(declare-fun e!606422 () Bool)

(declare-fun array_inv!25004 (array!67598) Bool)

(assert (=> start!94126 (and (array_inv!25004 _values!955) e!606422)))

(assert (=> start!94126 tp!75948))

(declare-fun array_inv!25005 (array!67600) Bool)

(assert (=> start!94126 (array_inv!25005 _keys!1163)))

(declare-fun b!1064047 () Bool)

(assert (=> b!1064047 (= e!606424 tp_is_empty!25315)))

(declare-fun b!1064048 () Bool)

(declare-fun e!606423 () Bool)

(assert (=> b!1064048 (= e!606423 tp_is_empty!25315)))

(declare-fun b!1064049 () Bool)

(declare-fun res!710468 () Bool)

(assert (=> b!1064049 (=> (not res!710468) (not e!606425))))

(assert (=> b!1064049 (= res!710468 (and (= (size!33037 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33038 _keys!1163) (size!33037 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064050 () Bool)

(declare-fun res!710467 () Bool)

(assert (=> b!1064050 (=> (not res!710467) (not e!606425))))

(declare-datatypes ((List!22783 0))(
  ( (Nil!22780) (Cons!22779 (h!23988 (_ BitVec 64)) (t!32105 List!22783)) )
))
(declare-fun arrayNoDuplicates!0 (array!67600 (_ BitVec 32) List!22783) Bool)

(assert (=> b!1064050 (= res!710467 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22780))))

(declare-fun b!1064051 () Bool)

(assert (=> b!1064051 (= e!606422 (and e!606423 mapRes!39652))))

(declare-fun condMapEmpty!39652 () Bool)

(declare-fun mapDefault!39652 () ValueCell!11954)

