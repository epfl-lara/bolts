; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94170 () Bool)

(assert start!94170)

(declare-fun b_free!21535 () Bool)

(declare-fun b_next!21535 () Bool)

(assert (=> start!94170 (= b_free!21535 (not b_next!21535))))

(declare-fun tp!76041 () Bool)

(declare-fun b_and!34303 () Bool)

(assert (=> start!94170 (= tp!76041 b_and!34303)))

(declare-fun b!1064466 () Bool)

(declare-fun e!606724 () Bool)

(declare-fun tp_is_empty!25345 () Bool)

(assert (=> b!1064466 (= e!606724 tp_is_empty!25345)))

(declare-fun mapNonEmpty!39700 () Bool)

(declare-fun mapRes!39700 () Bool)

(declare-fun tp!76040 () Bool)

(declare-fun e!606721 () Bool)

(assert (=> mapNonEmpty!39700 (= mapRes!39700 (and tp!76040 e!606721))))

(declare-fun mapKey!39700 () (_ BitVec 32))

(declare-datatypes ((V!38929 0))(
  ( (V!38930 (val!12723 Int)) )
))
(declare-datatypes ((ValueCell!11969 0))(
  ( (ValueCellFull!11969 (v!15336 V!38929)) (EmptyCell!11969) )
))
(declare-fun mapValue!39700 () ValueCell!11969)

(declare-fun mapRest!39700 () (Array (_ BitVec 32) ValueCell!11969))

(declare-datatypes ((array!67654 0))(
  ( (array!67655 (arr!32527 (Array (_ BitVec 32) ValueCell!11969)) (size!33064 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67654)

(assert (=> mapNonEmpty!39700 (= (arr!32527 _values!955) (store mapRest!39700 mapKey!39700 mapValue!39700))))

(declare-fun b!1064467 () Bool)

(declare-fun res!710700 () Bool)

(declare-fun e!606723 () Bool)

(assert (=> b!1064467 (=> (not res!710700) (not e!606723))))

(declare-datatypes ((array!67656 0))(
  ( (array!67657 (arr!32528 (Array (_ BitVec 32) (_ BitVec 64))) (size!33065 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67656)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67656 (_ BitVec 32)) Bool)

(assert (=> b!1064467 (= res!710700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064468 () Bool)

(declare-fun res!710697 () Bool)

(assert (=> b!1064468 (=> (not res!710697) (not e!606723))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064468 (= res!710697 (and (= (size!33064 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33065 _keys!1163) (size!33064 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064469 () Bool)

(assert (=> b!1064469 (= e!606721 tp_is_empty!25345)))

(declare-fun b!1064470 () Bool)

(declare-fun e!606722 () Bool)

(assert (=> b!1064470 (= e!606723 (not e!606722))))

(declare-fun res!710699 () Bool)

(assert (=> b!1064470 (=> res!710699 e!606722)))

(assert (=> b!1064470 (= res!710699 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16198 0))(
  ( (tuple2!16199 (_1!8109 (_ BitVec 64)) (_2!8109 V!38929)) )
))
(declare-datatypes ((List!22800 0))(
  ( (Nil!22797) (Cons!22796 (h!24005 tuple2!16198) (t!32124 List!22800)) )
))
(declare-datatypes ((ListLongMap!14179 0))(
  ( (ListLongMap!14180 (toList!7105 List!22800)) )
))
(declare-fun lt!469215 () ListLongMap!14179)

(declare-fun lt!469218 () ListLongMap!14179)

(assert (=> b!1064470 (= lt!469215 lt!469218)))

(declare-fun zeroValueBefore!47 () V!38929)

(declare-fun minValue!907 () V!38929)

(declare-datatypes ((Unit!34877 0))(
  ( (Unit!34878) )
))
(declare-fun lt!469216 () Unit!34877)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38929)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!698 (array!67656 array!67654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38929 V!38929 V!38929 V!38929 (_ BitVec 32) Int) Unit!34877)

(assert (=> b!1064470 (= lt!469216 (lemmaNoChangeToArrayThenSameMapNoExtras!698 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3659 (array!67656 array!67654 (_ BitVec 32) (_ BitVec 32) V!38929 V!38929 (_ BitVec 32) Int) ListLongMap!14179)

(assert (=> b!1064470 (= lt!469218 (getCurrentListMapNoExtraKeys!3659 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064470 (= lt!469215 (getCurrentListMapNoExtraKeys!3659 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064471 () Bool)

(declare-fun e!606725 () Bool)

(assert (=> b!1064471 (= e!606725 (and e!606724 mapRes!39700))))

(declare-fun condMapEmpty!39700 () Bool)

(declare-fun mapDefault!39700 () ValueCell!11969)

