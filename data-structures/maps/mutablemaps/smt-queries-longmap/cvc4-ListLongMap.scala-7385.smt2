; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94112 () Bool)

(assert start!94112)

(declare-fun b_free!21491 () Bool)

(declare-fun b_next!21491 () Bool)

(assert (=> start!94112 (= b_free!21491 (not b_next!21491))))

(declare-fun tp!75906 () Bool)

(declare-fun b_and!34251 () Bool)

(assert (=> start!94112 (= tp!75906 b_and!34251)))

(declare-fun b!1063899 () Bool)

(declare-fun e!606319 () Bool)

(declare-fun tp_is_empty!25301 () Bool)

(assert (=> b!1063899 (= e!606319 tp_is_empty!25301)))

(declare-fun b!1063900 () Bool)

(declare-fun res!710385 () Bool)

(declare-fun e!606316 () Bool)

(assert (=> b!1063900 (=> (not res!710385) (not e!606316))))

(declare-datatypes ((array!67572 0))(
  ( (array!67573 (arr!32487 (Array (_ BitVec 32) (_ BitVec 64))) (size!33024 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67572)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67572 (_ BitVec 32)) Bool)

(assert (=> b!1063900 (= res!710385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063901 () Bool)

(assert (=> b!1063901 (= e!606316 (not true))))

(declare-datatypes ((V!38869 0))(
  ( (V!38870 (val!12701 Int)) )
))
(declare-datatypes ((tuple2!16170 0))(
  ( (tuple2!16171 (_1!8095 (_ BitVec 64)) (_2!8095 V!38869)) )
))
(declare-datatypes ((List!22774 0))(
  ( (Nil!22771) (Cons!22770 (h!23979 tuple2!16170) (t!32096 List!22774)) )
))
(declare-datatypes ((ListLongMap!14151 0))(
  ( (ListLongMap!14152 (toList!7091 List!22774)) )
))
(declare-fun lt!468957 () ListLongMap!14151)

(declare-fun lt!468958 () ListLongMap!14151)

(assert (=> b!1063901 (= lt!468957 lt!468958)))

(declare-fun zeroValueBefore!47 () V!38869)

(declare-datatypes ((ValueCell!11947 0))(
  ( (ValueCellFull!11947 (v!15314 V!38869)) (EmptyCell!11947) )
))
(declare-datatypes ((array!67574 0))(
  ( (array!67575 (arr!32488 (Array (_ BitVec 32) ValueCell!11947)) (size!33025 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67574)

(declare-fun minValue!907 () V!38869)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38869)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((Unit!34849 0))(
  ( (Unit!34850) )
))
(declare-fun lt!468959 () Unit!34849)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!684 (array!67572 array!67574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38869 V!38869 V!38869 V!38869 (_ BitVec 32) Int) Unit!34849)

(assert (=> b!1063901 (= lt!468959 (lemmaNoChangeToArrayThenSameMapNoExtras!684 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3645 (array!67572 array!67574 (_ BitVec 32) (_ BitVec 32) V!38869 V!38869 (_ BitVec 32) Int) ListLongMap!14151)

(assert (=> b!1063901 (= lt!468958 (getCurrentListMapNoExtraKeys!3645 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063901 (= lt!468957 (getCurrentListMapNoExtraKeys!3645 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063902 () Bool)

(declare-fun e!606317 () Bool)

(declare-fun e!606318 () Bool)

(declare-fun mapRes!39631 () Bool)

(assert (=> b!1063902 (= e!606317 (and e!606318 mapRes!39631))))

(declare-fun condMapEmpty!39631 () Bool)

(declare-fun mapDefault!39631 () ValueCell!11947)

