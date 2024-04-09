; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94922 () Bool)

(assert start!94922)

(declare-fun b_free!22091 () Bool)

(declare-fun b_next!22091 () Bool)

(assert (=> start!94922 (= b_free!22091 (not b_next!22091))))

(declare-fun tp!77738 () Bool)

(declare-fun b_and!34963 () Bool)

(assert (=> start!94922 (= tp!77738 b_and!34963)))

(declare-fun b!1072851 () Bool)

(declare-fun res!715693 () Bool)

(declare-fun e!612889 () Bool)

(assert (=> b!1072851 (=> (not res!715693) (not e!612889))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39669 0))(
  ( (V!39670 (val!13001 Int)) )
))
(declare-datatypes ((ValueCell!12247 0))(
  ( (ValueCellFull!12247 (v!15620 V!39669)) (EmptyCell!12247) )
))
(declare-datatypes ((array!68732 0))(
  ( (array!68733 (arr!33056 (Array (_ BitVec 32) ValueCell!12247)) (size!33593 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68732)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68734 0))(
  ( (array!68735 (arr!33057 (Array (_ BitVec 32) (_ BitVec 64))) (size!33594 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68734)

(assert (=> b!1072851 (= res!715693 (and (= (size!33593 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33594 _keys!1163) (size!33593 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072852 () Bool)

(declare-fun res!715695 () Bool)

(assert (=> b!1072852 (=> (not res!715695) (not e!612889))))

(declare-datatypes ((List!23203 0))(
  ( (Nil!23200) (Cons!23199 (h!24408 (_ BitVec 64)) (t!32547 List!23203)) )
))
(declare-fun arrayNoDuplicates!0 (array!68734 (_ BitVec 32) List!23203) Bool)

(assert (=> b!1072852 (= res!715695 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23200))))

(declare-fun b!1072853 () Bool)

(declare-fun res!715692 () Bool)

(assert (=> b!1072853 (=> (not res!715692) (not e!612889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68734 (_ BitVec 32)) Bool)

(assert (=> b!1072853 (= res!715692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40564 () Bool)

(declare-fun mapRes!40564 () Bool)

(declare-fun tp!77739 () Bool)

(declare-fun e!612892 () Bool)

(assert (=> mapNonEmpty!40564 (= mapRes!40564 (and tp!77739 e!612892))))

(declare-fun mapRest!40564 () (Array (_ BitVec 32) ValueCell!12247))

(declare-fun mapKey!40564 () (_ BitVec 32))

(declare-fun mapValue!40564 () ValueCell!12247)

(assert (=> mapNonEmpty!40564 (= (arr!33056 _values!955) (store mapRest!40564 mapKey!40564 mapValue!40564))))

(declare-fun mapIsEmpty!40564 () Bool)

(assert (=> mapIsEmpty!40564 mapRes!40564))

(declare-fun b!1072854 () Bool)

(declare-fun tp_is_empty!25901 () Bool)

(assert (=> b!1072854 (= e!612892 tp_is_empty!25901)))

(declare-fun b!1072856 () Bool)

(assert (=> b!1072856 (= e!612889 (not true))))

(declare-datatypes ((tuple2!16624 0))(
  ( (tuple2!16625 (_1!8322 (_ BitVec 64)) (_2!8322 V!39669)) )
))
(declare-datatypes ((List!23204 0))(
  ( (Nil!23201) (Cons!23200 (h!24409 tuple2!16624) (t!32548 List!23204)) )
))
(declare-datatypes ((ListLongMap!14605 0))(
  ( (ListLongMap!14606 (toList!7318 List!23204)) )
))
(declare-fun lt!475869 () ListLongMap!14605)

(declare-fun lt!475871 () ListLongMap!14605)

(assert (=> b!1072856 (= lt!475869 lt!475871)))

(declare-fun zeroValueBefore!47 () V!39669)

(declare-fun minValue!907 () V!39669)

(declare-datatypes ((Unit!35299 0))(
  ( (Unit!35300) )
))
(declare-fun lt!475870 () Unit!35299)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39669)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!887 (array!68734 array!68732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39669 V!39669 V!39669 V!39669 (_ BitVec 32) Int) Unit!35299)

(assert (=> b!1072856 (= lt!475870 (lemmaNoChangeToArrayThenSameMapNoExtras!887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3848 (array!68734 array!68732 (_ BitVec 32) (_ BitVec 32) V!39669 V!39669 (_ BitVec 32) Int) ListLongMap!14605)

(assert (=> b!1072856 (= lt!475871 (getCurrentListMapNoExtraKeys!3848 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072856 (= lt!475869 (getCurrentListMapNoExtraKeys!3848 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072857 () Bool)

(declare-fun e!612888 () Bool)

(assert (=> b!1072857 (= e!612888 tp_is_empty!25901)))

(declare-fun res!715694 () Bool)

(assert (=> start!94922 (=> (not res!715694) (not e!612889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94922 (= res!715694 (validMask!0 mask!1515))))

(assert (=> start!94922 e!612889))

(assert (=> start!94922 true))

(assert (=> start!94922 tp_is_empty!25901))

(declare-fun e!612890 () Bool)

(declare-fun array_inv!25410 (array!68732) Bool)

(assert (=> start!94922 (and (array_inv!25410 _values!955) e!612890)))

(assert (=> start!94922 tp!77738))

(declare-fun array_inv!25411 (array!68734) Bool)

(assert (=> start!94922 (array_inv!25411 _keys!1163)))

(declare-fun b!1072855 () Bool)

(assert (=> b!1072855 (= e!612890 (and e!612888 mapRes!40564))))

(declare-fun condMapEmpty!40564 () Bool)

(declare-fun mapDefault!40564 () ValueCell!12247)

