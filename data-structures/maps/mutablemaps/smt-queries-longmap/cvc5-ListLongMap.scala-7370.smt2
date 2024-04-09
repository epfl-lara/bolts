; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93974 () Bool)

(assert start!93974)

(declare-fun b_free!21397 () Bool)

(declare-fun b_next!21397 () Bool)

(assert (=> start!93974 (= b_free!21397 (not b_next!21397))))

(declare-fun tp!75618 () Bool)

(declare-fun b_and!34137 () Bool)

(assert (=> start!93974 (= tp!75618 b_and!34137)))

(declare-fun b!1062386 () Bool)

(declare-fun res!709488 () Bool)

(declare-fun e!605202 () Bool)

(assert (=> b!1062386 (=> (not res!709488) (not e!605202))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38745 0))(
  ( (V!38746 (val!12654 Int)) )
))
(declare-datatypes ((ValueCell!11900 0))(
  ( (ValueCellFull!11900 (v!15265 V!38745)) (EmptyCell!11900) )
))
(declare-datatypes ((array!67388 0))(
  ( (array!67389 (arr!32397 (Array (_ BitVec 32) ValueCell!11900)) (size!32934 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67388)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67390 0))(
  ( (array!67391 (arr!32398 (Array (_ BitVec 32) (_ BitVec 64))) (size!32935 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67390)

(assert (=> b!1062386 (= res!709488 (and (= (size!32934 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32935 _keys!1163) (size!32934 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39484 () Bool)

(declare-fun mapRes!39484 () Bool)

(declare-fun tp!75617 () Bool)

(declare-fun e!605205 () Bool)

(assert (=> mapNonEmpty!39484 (= mapRes!39484 (and tp!75617 e!605205))))

(declare-fun mapValue!39484 () ValueCell!11900)

(declare-fun mapKey!39484 () (_ BitVec 32))

(declare-fun mapRest!39484 () (Array (_ BitVec 32) ValueCell!11900))

(assert (=> mapNonEmpty!39484 (= (arr!32397 _values!955) (store mapRest!39484 mapKey!39484 mapValue!39484))))

(declare-fun b!1062387 () Bool)

(declare-fun e!605200 () Bool)

(declare-fun e!605199 () Bool)

(assert (=> b!1062387 (= e!605200 e!605199)))

(declare-fun res!709484 () Bool)

(assert (=> b!1062387 (=> res!709484 e!605199)))

(declare-datatypes ((tuple2!16094 0))(
  ( (tuple2!16095 (_1!8057 (_ BitVec 64)) (_2!8057 V!38745)) )
))
(declare-datatypes ((List!22707 0))(
  ( (Nil!22704) (Cons!22703 (h!23912 tuple2!16094) (t!32025 List!22707)) )
))
(declare-datatypes ((ListLongMap!14075 0))(
  ( (ListLongMap!14076 (toList!7053 List!22707)) )
))
(declare-fun lt!468074 () ListLongMap!14075)

(declare-fun contains!6249 (ListLongMap!14075 (_ BitVec 64)) Bool)

(assert (=> b!1062387 (= res!709484 (contains!6249 lt!468074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38745)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38745)

(declare-fun getCurrentListMap!3999 (array!67390 array!67388 (_ BitVec 32) (_ BitVec 32) V!38745 V!38745 (_ BitVec 32) Int) ListLongMap!14075)

(assert (=> b!1062387 (= lt!468074 (getCurrentListMap!3999 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062388 () Bool)

(declare-fun tp_is_empty!25207 () Bool)

(assert (=> b!1062388 (= e!605205 tp_is_empty!25207)))

(declare-fun b!1062389 () Bool)

(declare-fun e!605201 () Bool)

(assert (=> b!1062389 (= e!605201 tp_is_empty!25207)))

(declare-fun b!1062390 () Bool)

(declare-fun e!605203 () Bool)

(assert (=> b!1062390 (= e!605203 (and e!605201 mapRes!39484))))

(declare-fun condMapEmpty!39484 () Bool)

(declare-fun mapDefault!39484 () ValueCell!11900)

