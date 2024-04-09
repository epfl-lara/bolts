; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93880 () Bool)

(assert start!93880)

(declare-fun b_free!21317 () Bool)

(declare-fun b_next!21317 () Bool)

(assert (=> start!93880 (= b_free!21317 (not b_next!21317))))

(declare-fun tp!75375 () Bool)

(declare-fun b_and!34049 () Bool)

(assert (=> start!93880 (= tp!75375 b_and!34049)))

(declare-fun res!708855 () Bool)

(declare-fun e!604425 () Bool)

(assert (=> start!93880 (=> (not res!708855) (not e!604425))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93880 (= res!708855 (validMask!0 mask!1515))))

(assert (=> start!93880 e!604425))

(assert (=> start!93880 true))

(declare-fun tp_is_empty!25127 () Bool)

(assert (=> start!93880 tp_is_empty!25127))

(declare-datatypes ((V!38637 0))(
  ( (V!38638 (val!12614 Int)) )
))
(declare-datatypes ((ValueCell!11860 0))(
  ( (ValueCellFull!11860 (v!15225 V!38637)) (EmptyCell!11860) )
))
(declare-datatypes ((array!67238 0))(
  ( (array!67239 (arr!32323 (Array (_ BitVec 32) ValueCell!11860)) (size!32860 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67238)

(declare-fun e!604423 () Bool)

(declare-fun array_inv!24886 (array!67238) Bool)

(assert (=> start!93880 (and (array_inv!24886 _values!955) e!604423)))

(assert (=> start!93880 tp!75375))

(declare-datatypes ((array!67240 0))(
  ( (array!67241 (arr!32324 (Array (_ BitVec 32) (_ BitVec 64))) (size!32861 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67240)

(declare-fun array_inv!24887 (array!67240) Bool)

(assert (=> start!93880 (array_inv!24887 _keys!1163)))

(declare-fun b!1061340 () Bool)

(declare-fun res!708852 () Bool)

(assert (=> b!1061340 (=> (not res!708852) (not e!604425))))

(declare-datatypes ((List!22650 0))(
  ( (Nil!22647) (Cons!22646 (h!23855 (_ BitVec 64)) (t!31966 List!22650)) )
))
(declare-fun arrayNoDuplicates!0 (array!67240 (_ BitVec 32) List!22650) Bool)

(assert (=> b!1061340 (= res!708852 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22647))))

(declare-fun b!1061341 () Bool)

(declare-fun e!604424 () Bool)

(assert (=> b!1061341 (= e!604424 tp_is_empty!25127)))

(declare-fun mapNonEmpty!39361 () Bool)

(declare-fun mapRes!39361 () Bool)

(declare-fun tp!75374 () Bool)

(declare-fun e!604427 () Bool)

(assert (=> mapNonEmpty!39361 (= mapRes!39361 (and tp!75374 e!604427))))

(declare-fun mapRest!39361 () (Array (_ BitVec 32) ValueCell!11860))

(declare-fun mapKey!39361 () (_ BitVec 32))

(declare-fun mapValue!39361 () ValueCell!11860)

(assert (=> mapNonEmpty!39361 (= (arr!32323 _values!955) (store mapRest!39361 mapKey!39361 mapValue!39361))))

(declare-fun b!1061342 () Bool)

(declare-fun res!708853 () Bool)

(assert (=> b!1061342 (=> (not res!708853) (not e!604425))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061342 (= res!708853 (and (= (size!32860 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32861 _keys!1163) (size!32860 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39361 () Bool)

(assert (=> mapIsEmpty!39361 mapRes!39361))

(declare-fun b!1061343 () Bool)

(assert (=> b!1061343 (= e!604425 (not true))))

(declare-datatypes ((tuple2!16038 0))(
  ( (tuple2!16039 (_1!8029 (_ BitVec 64)) (_2!8029 V!38637)) )
))
(declare-datatypes ((List!22651 0))(
  ( (Nil!22648) (Cons!22647 (h!23856 tuple2!16038) (t!31967 List!22651)) )
))
(declare-datatypes ((ListLongMap!14019 0))(
  ( (ListLongMap!14020 (toList!7025 List!22651)) )
))
(declare-fun lt!467554 () ListLongMap!14019)

(declare-fun lt!467553 () ListLongMap!14019)

(assert (=> b!1061343 (= lt!467554 lt!467553)))

(declare-fun zeroValueBefore!47 () V!38637)

(declare-fun minValue!907 () V!38637)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38637)

(declare-datatypes ((Unit!34725 0))(
  ( (Unit!34726) )
))
(declare-fun lt!467555 () Unit!34725)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!628 (array!67240 array!67238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38637 V!38637 V!38637 V!38637 (_ BitVec 32) Int) Unit!34725)

(assert (=> b!1061343 (= lt!467555 (lemmaNoChangeToArrayThenSameMapNoExtras!628 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3589 (array!67240 array!67238 (_ BitVec 32) (_ BitVec 32) V!38637 V!38637 (_ BitVec 32) Int) ListLongMap!14019)

(assert (=> b!1061343 (= lt!467553 (getCurrentListMapNoExtraKeys!3589 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061343 (= lt!467554 (getCurrentListMapNoExtraKeys!3589 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061344 () Bool)

(assert (=> b!1061344 (= e!604423 (and e!604424 mapRes!39361))))

(declare-fun condMapEmpty!39361 () Bool)

(declare-fun mapDefault!39361 () ValueCell!11860)

