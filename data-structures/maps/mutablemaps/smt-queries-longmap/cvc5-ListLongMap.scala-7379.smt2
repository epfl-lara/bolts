; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94050 () Bool)

(assert start!94050)

(declare-fun b_free!21451 () Bool)

(declare-fun b_next!21451 () Bool)

(assert (=> start!94050 (= b_free!21451 (not b_next!21451))))

(declare-fun tp!75782 () Bool)

(declare-fun b_and!34201 () Bool)

(assert (=> start!94050 (= tp!75782 b_and!34201)))

(declare-fun b!1063273 () Bool)

(declare-fun res!710036 () Bool)

(declare-fun e!605871 () Bool)

(assert (=> b!1063273 (=> (not res!710036) (not e!605871))))

(declare-datatypes ((array!67496 0))(
  ( (array!67497 (arr!32450 (Array (_ BitVec 32) (_ BitVec 64))) (size!32987 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67496)

(declare-datatypes ((List!22748 0))(
  ( (Nil!22745) (Cons!22744 (h!23953 (_ BitVec 64)) (t!32068 List!22748)) )
))
(declare-fun arrayNoDuplicates!0 (array!67496 (_ BitVec 32) List!22748) Bool)

(assert (=> b!1063273 (= res!710036 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22745))))

(declare-fun b!1063274 () Bool)

(declare-fun e!605867 () Bool)

(declare-fun e!605868 () Bool)

(assert (=> b!1063274 (= e!605867 e!605868)))

(declare-fun res!710034 () Bool)

(assert (=> b!1063274 (=> res!710034 e!605868)))

(declare-datatypes ((V!38817 0))(
  ( (V!38818 (val!12681 Int)) )
))
(declare-datatypes ((tuple2!16142 0))(
  ( (tuple2!16143 (_1!8081 (_ BitVec 64)) (_2!8081 V!38817)) )
))
(declare-datatypes ((List!22749 0))(
  ( (Nil!22746) (Cons!22745 (h!23954 tuple2!16142) (t!32069 List!22749)) )
))
(declare-datatypes ((ListLongMap!14123 0))(
  ( (ListLongMap!14124 (toList!7077 List!22749)) )
))
(declare-fun lt!468606 () ListLongMap!14123)

(declare-fun contains!6272 (ListLongMap!14123 (_ BitVec 64)) Bool)

(assert (=> b!1063274 (= res!710034 (contains!6272 lt!468606 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38817)

(declare-datatypes ((ValueCell!11927 0))(
  ( (ValueCellFull!11927 (v!15293 V!38817)) (EmptyCell!11927) )
))
(declare-datatypes ((array!67498 0))(
  ( (array!67499 (arr!32451 (Array (_ BitVec 32) ValueCell!11927)) (size!32988 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67498)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38817)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4021 (array!67496 array!67498 (_ BitVec 32) (_ BitVec 32) V!38817 V!38817 (_ BitVec 32) Int) ListLongMap!14123)

(assert (=> b!1063274 (= lt!468606 (getCurrentListMap!4021 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063275 () Bool)

(assert (=> b!1063275 (= e!605871 (not e!605867))))

(declare-fun res!710032 () Bool)

(assert (=> b!1063275 (=> res!710032 e!605867)))

(assert (=> b!1063275 (= res!710032 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468607 () ListLongMap!14123)

(declare-fun lt!468603 () ListLongMap!14123)

(assert (=> b!1063275 (= lt!468607 lt!468603)))

(declare-datatypes ((Unit!34819 0))(
  ( (Unit!34820) )
))
(declare-fun lt!468605 () Unit!34819)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38817)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!671 (array!67496 array!67498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38817 V!38817 V!38817 V!38817 (_ BitVec 32) Int) Unit!34819)

(assert (=> b!1063275 (= lt!468605 (lemmaNoChangeToArrayThenSameMapNoExtras!671 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3632 (array!67496 array!67498 (_ BitVec 32) (_ BitVec 32) V!38817 V!38817 (_ BitVec 32) Int) ListLongMap!14123)

(assert (=> b!1063275 (= lt!468603 (getCurrentListMapNoExtraKeys!3632 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063275 (= lt!468607 (getCurrentListMapNoExtraKeys!3632 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063276 () Bool)

(declare-fun e!605870 () Bool)

(declare-fun e!605869 () Bool)

(declare-fun mapRes!39568 () Bool)

(assert (=> b!1063276 (= e!605870 (and e!605869 mapRes!39568))))

(declare-fun condMapEmpty!39568 () Bool)

(declare-fun mapDefault!39568 () ValueCell!11927)

