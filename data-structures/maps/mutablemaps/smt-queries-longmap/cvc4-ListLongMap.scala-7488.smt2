; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94940 () Bool)

(assert start!94940)

(declare-fun b_free!22109 () Bool)

(declare-fun b_next!22109 () Bool)

(assert (=> start!94940 (= b_free!22109 (not b_next!22109))))

(declare-fun tp!77793 () Bool)

(declare-fun b_and!34981 () Bool)

(assert (=> start!94940 (= tp!77793 b_and!34981)))

(declare-fun mapNonEmpty!40591 () Bool)

(declare-fun mapRes!40591 () Bool)

(declare-fun tp!77792 () Bool)

(declare-fun e!613023 () Bool)

(assert (=> mapNonEmpty!40591 (= mapRes!40591 (and tp!77792 e!613023))))

(declare-datatypes ((V!39693 0))(
  ( (V!39694 (val!13010 Int)) )
))
(declare-datatypes ((ValueCell!12256 0))(
  ( (ValueCellFull!12256 (v!15629 V!39693)) (EmptyCell!12256) )
))
(declare-fun mapValue!40591 () ValueCell!12256)

(declare-fun mapRest!40591 () (Array (_ BitVec 32) ValueCell!12256))

(declare-datatypes ((array!68766 0))(
  ( (array!68767 (arr!33073 (Array (_ BitVec 32) ValueCell!12256)) (size!33610 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68766)

(declare-fun mapKey!40591 () (_ BitVec 32))

(assert (=> mapNonEmpty!40591 (= (arr!33073 _values!955) (store mapRest!40591 mapKey!40591 mapValue!40591))))

(declare-fun b!1073040 () Bool)

(declare-fun e!613027 () Bool)

(assert (=> b!1073040 (= e!613027 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun minValue!907 () V!39693)

(declare-datatypes ((array!68768 0))(
  ( (array!68769 (arr!33074 (Array (_ BitVec 32) (_ BitVec 64))) (size!33611 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68768)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((tuple2!16632 0))(
  ( (tuple2!16633 (_1!8326 (_ BitVec 64)) (_2!8326 V!39693)) )
))
(declare-datatypes ((List!23213 0))(
  ( (Nil!23210) (Cons!23209 (h!24418 tuple2!16632) (t!32557 List!23213)) )
))
(declare-datatypes ((ListLongMap!14613 0))(
  ( (ListLongMap!14614 (toList!7322 List!23213)) )
))
(declare-fun lt!475924 () ListLongMap!14613)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39693)

(declare-fun getCurrentListMapNoExtraKeys!3852 (array!68768 array!68766 (_ BitVec 32) (_ BitVec 32) V!39693 V!39693 (_ BitVec 32) Int) ListLongMap!14613)

(assert (=> b!1073040 (= lt!475924 (getCurrentListMapNoExtraKeys!3852 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475925 () ListLongMap!14613)

(declare-fun zeroValueBefore!47 () V!39693)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073040 (= lt!475925 (getCurrentListMapNoExtraKeys!3852 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40591 () Bool)

(assert (=> mapIsEmpty!40591 mapRes!40591))

(declare-fun res!715802 () Bool)

(assert (=> start!94940 (=> (not res!715802) (not e!613027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94940 (= res!715802 (validMask!0 mask!1515))))

(assert (=> start!94940 e!613027))

(assert (=> start!94940 true))

(declare-fun tp_is_empty!25919 () Bool)

(assert (=> start!94940 tp_is_empty!25919))

(declare-fun e!613025 () Bool)

(declare-fun array_inv!25422 (array!68766) Bool)

(assert (=> start!94940 (and (array_inv!25422 _values!955) e!613025)))

(assert (=> start!94940 tp!77793))

(declare-fun array_inv!25423 (array!68768) Bool)

(assert (=> start!94940 (array_inv!25423 _keys!1163)))

(declare-fun b!1073041 () Bool)

(declare-fun res!715803 () Bool)

(assert (=> b!1073041 (=> (not res!715803) (not e!613027))))

(assert (=> b!1073041 (= res!715803 (and (= (size!33610 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33611 _keys!1163) (size!33610 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073042 () Bool)

(declare-fun e!613024 () Bool)

(assert (=> b!1073042 (= e!613025 (and e!613024 mapRes!40591))))

(declare-fun condMapEmpty!40591 () Bool)

(declare-fun mapDefault!40591 () ValueCell!12256)

