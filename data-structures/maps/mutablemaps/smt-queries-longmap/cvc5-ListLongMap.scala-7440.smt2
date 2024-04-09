; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94548 () Bool)

(assert start!94548)

(declare-fun b_free!21817 () Bool)

(declare-fun b_next!21817 () Bool)

(assert (=> start!94548 (= b_free!21817 (not b_next!21817))))

(declare-fun tp!76901 () Bool)

(declare-fun b_and!34637 () Bool)

(assert (=> start!94548 (= tp!76901 b_and!34637)))

(declare-fun b!1068637 () Bool)

(declare-fun e!609779 () Bool)

(declare-fun tp_is_empty!25627 () Bool)

(assert (=> b!1068637 (= e!609779 tp_is_empty!25627)))

(declare-fun b!1068638 () Bool)

(declare-fun res!713155 () Bool)

(declare-fun e!609778 () Bool)

(assert (=> b!1068638 (=> (not res!713155) (not e!609778))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39305 0))(
  ( (V!39306 (val!12864 Int)) )
))
(declare-datatypes ((ValueCell!12110 0))(
  ( (ValueCellFull!12110 (v!15480 V!39305)) (EmptyCell!12110) )
))
(declare-datatypes ((array!68204 0))(
  ( (array!68205 (arr!32797 (Array (_ BitVec 32) ValueCell!12110)) (size!33334 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68204)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68206 0))(
  ( (array!68207 (arr!32798 (Array (_ BitVec 32) (_ BitVec 64))) (size!33335 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68206)

(assert (=> b!1068638 (= res!713155 (and (= (size!33334 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33335 _keys!1163) (size!33334 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40138 () Bool)

(declare-fun mapRes!40138 () Bool)

(declare-fun tp!76902 () Bool)

(assert (=> mapNonEmpty!40138 (= mapRes!40138 (and tp!76902 e!609779))))

(declare-fun mapValue!40138 () ValueCell!12110)

(declare-fun mapRest!40138 () (Array (_ BitVec 32) ValueCell!12110))

(declare-fun mapKey!40138 () (_ BitVec 32))

(assert (=> mapNonEmpty!40138 (= (arr!32797 _values!955) (store mapRest!40138 mapKey!40138 mapValue!40138))))

(declare-fun res!713159 () Bool)

(assert (=> start!94548 (=> (not res!713159) (not e!609778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94548 (= res!713159 (validMask!0 mask!1515))))

(assert (=> start!94548 e!609778))

(assert (=> start!94548 true))

(assert (=> start!94548 tp_is_empty!25627))

(declare-fun e!609775 () Bool)

(declare-fun array_inv!25228 (array!68204) Bool)

(assert (=> start!94548 (and (array_inv!25228 _values!955) e!609775)))

(assert (=> start!94548 tp!76901))

(declare-fun array_inv!25229 (array!68206) Bool)

(assert (=> start!94548 (array_inv!25229 _keys!1163)))

(declare-fun b!1068639 () Bool)

(declare-fun e!609781 () Bool)

(declare-fun e!609780 () Bool)

(assert (=> b!1068639 (= e!609781 e!609780)))

(declare-fun res!713156 () Bool)

(assert (=> b!1068639 (=> res!713156 e!609780)))

(declare-datatypes ((tuple2!16414 0))(
  ( (tuple2!16415 (_1!8217 (_ BitVec 64)) (_2!8217 V!39305)) )
))
(declare-datatypes ((List!23004 0))(
  ( (Nil!23001) (Cons!23000 (h!24209 tuple2!16414) (t!32338 List!23004)) )
))
(declare-datatypes ((ListLongMap!14395 0))(
  ( (ListLongMap!14396 (toList!7213 List!23004)) )
))
(declare-fun lt!472143 () ListLongMap!14395)

(declare-fun contains!6315 (ListLongMap!14395 (_ BitVec 64)) Bool)

(assert (=> b!1068639 (= res!713156 (contains!6315 lt!472143 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39305)

(declare-fun minValue!907 () V!39305)

(declare-fun defaultEntry!963 () Int)

(declare-fun getCurrentListMap!4104 (array!68206 array!68204 (_ BitVec 32) (_ BitVec 32) V!39305 V!39305 (_ BitVec 32) Int) ListLongMap!14395)

(assert (=> b!1068639 (= lt!472143 (getCurrentListMap!4104 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068640 () Bool)

(declare-fun e!609777 () Bool)

(assert (=> b!1068640 (= e!609775 (and e!609777 mapRes!40138))))

(declare-fun condMapEmpty!40138 () Bool)

(declare-fun mapDefault!40138 () ValueCell!12110)

