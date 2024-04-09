; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94060 () Bool)

(assert start!94060)

(declare-fun b_free!21461 () Bool)

(declare-fun b_next!21461 () Bool)

(assert (=> start!94060 (= b_free!21461 (not b_next!21461))))

(declare-fun tp!75813 () Bool)

(declare-fun b_and!34211 () Bool)

(assert (=> start!94060 (= tp!75813 b_and!34211)))

(declare-fun b!1063407 () Bool)

(declare-fun e!605976 () Bool)

(declare-fun e!605971 () Bool)

(assert (=> b!1063407 (= e!605976 (not e!605971))))

(declare-fun res!710121 () Bool)

(assert (=> b!1063407 (=> res!710121 e!605971)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063407 (= res!710121 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!38829 0))(
  ( (V!38830 (val!12686 Int)) )
))
(declare-datatypes ((tuple2!16150 0))(
  ( (tuple2!16151 (_1!8085 (_ BitVec 64)) (_2!8085 V!38829)) )
))
(declare-datatypes ((List!22756 0))(
  ( (Nil!22753) (Cons!22752 (h!23961 tuple2!16150) (t!32076 List!22756)) )
))
(declare-datatypes ((ListLongMap!14131 0))(
  ( (ListLongMap!14132 (toList!7081 List!22756)) )
))
(declare-fun lt!468678 () ListLongMap!14131)

(declare-fun lt!468679 () ListLongMap!14131)

(assert (=> b!1063407 (= lt!468678 lt!468679)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38829)

(declare-datatypes ((Unit!34827 0))(
  ( (Unit!34828) )
))
(declare-fun lt!468680 () Unit!34827)

(declare-datatypes ((ValueCell!11932 0))(
  ( (ValueCellFull!11932 (v!15298 V!38829)) (EmptyCell!11932) )
))
(declare-datatypes ((array!67514 0))(
  ( (array!67515 (arr!32459 (Array (_ BitVec 32) ValueCell!11932)) (size!32996 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67514)

(declare-fun minValue!907 () V!38829)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38829)

(declare-datatypes ((array!67516 0))(
  ( (array!67517 (arr!32460 (Array (_ BitVec 32) (_ BitVec 64))) (size!32997 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67516)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!675 (array!67516 array!67514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38829 V!38829 V!38829 V!38829 (_ BitVec 32) Int) Unit!34827)

(assert (=> b!1063407 (= lt!468680 (lemmaNoChangeToArrayThenSameMapNoExtras!675 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3636 (array!67516 array!67514 (_ BitVec 32) (_ BitVec 32) V!38829 V!38829 (_ BitVec 32) Int) ListLongMap!14131)

(assert (=> b!1063407 (= lt!468679 (getCurrentListMapNoExtraKeys!3636 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063407 (= lt!468678 (getCurrentListMapNoExtraKeys!3636 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063408 () Bool)

(declare-fun e!605977 () Bool)

(declare-fun e!605975 () Bool)

(declare-fun mapRes!39583 () Bool)

(assert (=> b!1063408 (= e!605977 (and e!605975 mapRes!39583))))

(declare-fun condMapEmpty!39583 () Bool)

(declare-fun mapDefault!39583 () ValueCell!11932)

