; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94198 () Bool)

(assert start!94198)

(declare-fun b_free!21563 () Bool)

(declare-fun b_next!21563 () Bool)

(assert (=> start!94198 (= b_free!21563 (not b_next!21563))))

(declare-fun tp!76125 () Bool)

(declare-fun b_and!34331 () Bool)

(assert (=> start!94198 (= tp!76125 b_and!34331)))

(declare-fun b!1064802 () Bool)

(declare-fun res!710908 () Bool)

(declare-fun e!606978 () Bool)

(assert (=> b!1064802 (=> (not res!710908) (not e!606978))))

(declare-datatypes ((array!67708 0))(
  ( (array!67709 (arr!32554 (Array (_ BitVec 32) (_ BitVec 64))) (size!33091 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67708)

(declare-datatypes ((List!22820 0))(
  ( (Nil!22817) (Cons!22816 (h!24025 (_ BitVec 64)) (t!32144 List!22820)) )
))
(declare-fun arrayNoDuplicates!0 (array!67708 (_ BitVec 32) List!22820) Bool)

(assert (=> b!1064802 (= res!710908 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22817))))

(declare-fun b!1064804 () Bool)

(declare-fun res!710907 () Bool)

(assert (=> b!1064804 (=> (not res!710907) (not e!606978))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38965 0))(
  ( (V!38966 (val!12737 Int)) )
))
(declare-datatypes ((ValueCell!11983 0))(
  ( (ValueCellFull!11983 (v!15350 V!38965)) (EmptyCell!11983) )
))
(declare-datatypes ((array!67710 0))(
  ( (array!67711 (arr!32555 (Array (_ BitVec 32) ValueCell!11983)) (size!33092 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67710)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064804 (= res!710907 (and (= (size!33092 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33091 _keys!1163) (size!33092 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39742 () Bool)

(declare-fun mapRes!39742 () Bool)

(assert (=> mapIsEmpty!39742 mapRes!39742))

(declare-fun b!1064805 () Bool)

(declare-fun e!606974 () Bool)

(declare-fun tp_is_empty!25373 () Bool)

(assert (=> b!1064805 (= e!606974 tp_is_empty!25373)))

(declare-fun mapNonEmpty!39742 () Bool)

(declare-fun tp!76124 () Bool)

(assert (=> mapNonEmpty!39742 (= mapRes!39742 (and tp!76124 e!606974))))

(declare-fun mapKey!39742 () (_ BitVec 32))

(declare-fun mapRest!39742 () (Array (_ BitVec 32) ValueCell!11983))

(declare-fun mapValue!39742 () ValueCell!11983)

(assert (=> mapNonEmpty!39742 (= (arr!32555 _values!955) (store mapRest!39742 mapKey!39742 mapValue!39742))))

(declare-fun b!1064806 () Bool)

(declare-fun e!606973 () Bool)

(assert (=> b!1064806 (= e!606978 (not e!606973))))

(declare-fun res!710910 () Bool)

(assert (=> b!1064806 (=> res!710910 e!606973)))

(assert (=> b!1064806 (= res!710910 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16220 0))(
  ( (tuple2!16221 (_1!8120 (_ BitVec 64)) (_2!8120 V!38965)) )
))
(declare-datatypes ((List!22821 0))(
  ( (Nil!22818) (Cons!22817 (h!24026 tuple2!16220) (t!32145 List!22821)) )
))
(declare-datatypes ((ListLongMap!14201 0))(
  ( (ListLongMap!14202 (toList!7116 List!22821)) )
))
(declare-fun lt!469384 () ListLongMap!14201)

(declare-fun lt!469385 () ListLongMap!14201)

(assert (=> b!1064806 (= lt!469384 lt!469385)))

(declare-fun zeroValueBefore!47 () V!38965)

(declare-datatypes ((Unit!34893 0))(
  ( (Unit!34894) )
))
(declare-fun lt!469386 () Unit!34893)

(declare-fun minValue!907 () V!38965)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38965)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!706 (array!67708 array!67710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38965 V!38965 V!38965 V!38965 (_ BitVec 32) Int) Unit!34893)

(assert (=> b!1064806 (= lt!469386 (lemmaNoChangeToArrayThenSameMapNoExtras!706 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3667 (array!67708 array!67710 (_ BitVec 32) (_ BitVec 32) V!38965 V!38965 (_ BitVec 32) Int) ListLongMap!14201)

(assert (=> b!1064806 (= lt!469385 (getCurrentListMapNoExtraKeys!3667 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064806 (= lt!469384 (getCurrentListMapNoExtraKeys!3667 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064807 () Bool)

(declare-fun res!710911 () Bool)

(assert (=> b!1064807 (=> (not res!710911) (not e!606978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67708 (_ BitVec 32)) Bool)

(assert (=> b!1064807 (= res!710911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064808 () Bool)

(declare-fun e!606975 () Bool)

(declare-fun e!606977 () Bool)

(assert (=> b!1064808 (= e!606975 (and e!606977 mapRes!39742))))

(declare-fun condMapEmpty!39742 () Bool)

(declare-fun mapDefault!39742 () ValueCell!11983)

