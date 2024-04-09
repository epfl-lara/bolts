; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94118 () Bool)

(assert start!94118)

(declare-fun b_free!21497 () Bool)

(declare-fun b_next!21497 () Bool)

(assert (=> start!94118 (= b_free!21497 (not b_next!21497))))

(declare-fun tp!75924 () Bool)

(declare-fun b_and!34257 () Bool)

(assert (=> start!94118 (= tp!75924 b_and!34257)))

(declare-fun b!1063962 () Bool)

(declare-fun res!710419 () Bool)

(declare-fun e!606361 () Bool)

(assert (=> b!1063962 (=> (not res!710419) (not e!606361))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38877 0))(
  ( (V!38878 (val!12704 Int)) )
))
(declare-datatypes ((ValueCell!11950 0))(
  ( (ValueCellFull!11950 (v!15317 V!38877)) (EmptyCell!11950) )
))
(declare-datatypes ((array!67582 0))(
  ( (array!67583 (arr!32492 (Array (_ BitVec 32) ValueCell!11950)) (size!33029 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67582)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67584 0))(
  ( (array!67585 (arr!32493 (Array (_ BitVec 32) (_ BitVec 64))) (size!33030 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67584)

(assert (=> b!1063962 (= res!710419 (and (= (size!33029 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33030 _keys!1163) (size!33029 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063963 () Bool)

(declare-fun e!606362 () Bool)

(declare-fun tp_is_empty!25307 () Bool)

(assert (=> b!1063963 (= e!606362 tp_is_empty!25307)))

(declare-fun mapIsEmpty!39640 () Bool)

(declare-fun mapRes!39640 () Bool)

(assert (=> mapIsEmpty!39640 mapRes!39640))

(declare-fun res!710421 () Bool)

(assert (=> start!94118 (=> (not res!710421) (not e!606361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94118 (= res!710421 (validMask!0 mask!1515))))

(assert (=> start!94118 e!606361))

(assert (=> start!94118 true))

(assert (=> start!94118 tp_is_empty!25307))

(declare-fun e!606364 () Bool)

(declare-fun array_inv!24996 (array!67582) Bool)

(assert (=> start!94118 (and (array_inv!24996 _values!955) e!606364)))

(assert (=> start!94118 tp!75924))

(declare-fun array_inv!24997 (array!67584) Bool)

(assert (=> start!94118 (array_inv!24997 _keys!1163)))

(declare-fun b!1063964 () Bool)

(assert (=> b!1063964 (= e!606361 (not true))))

(declare-datatypes ((tuple2!16174 0))(
  ( (tuple2!16175 (_1!8097 (_ BitVec 64)) (_2!8097 V!38877)) )
))
(declare-datatypes ((List!22777 0))(
  ( (Nil!22774) (Cons!22773 (h!23982 tuple2!16174) (t!32099 List!22777)) )
))
(declare-datatypes ((ListLongMap!14155 0))(
  ( (ListLongMap!14156 (toList!7093 List!22777)) )
))
(declare-fun lt!468984 () ListLongMap!14155)

(declare-fun lt!468986 () ListLongMap!14155)

(assert (=> b!1063964 (= lt!468984 lt!468986)))

(declare-fun zeroValueBefore!47 () V!38877)

(declare-datatypes ((Unit!34853 0))(
  ( (Unit!34854) )
))
(declare-fun lt!468985 () Unit!34853)

(declare-fun minValue!907 () V!38877)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38877)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!686 (array!67584 array!67582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38877 V!38877 V!38877 V!38877 (_ BitVec 32) Int) Unit!34853)

(assert (=> b!1063964 (= lt!468985 (lemmaNoChangeToArrayThenSameMapNoExtras!686 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3647 (array!67584 array!67582 (_ BitVec 32) (_ BitVec 32) V!38877 V!38877 (_ BitVec 32) Int) ListLongMap!14155)

(assert (=> b!1063964 (= lt!468986 (getCurrentListMapNoExtraKeys!3647 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063964 (= lt!468984 (getCurrentListMapNoExtraKeys!3647 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063965 () Bool)

(declare-fun e!606363 () Bool)

(assert (=> b!1063965 (= e!606364 (and e!606363 mapRes!39640))))

(declare-fun condMapEmpty!39640 () Bool)

(declare-fun mapDefault!39640 () ValueCell!11950)

