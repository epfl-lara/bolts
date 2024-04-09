; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94702 () Bool)

(assert start!94702)

(declare-fun b_free!21935 () Bool)

(declare-fun b_next!21935 () Bool)

(assert (=> start!94702 (= b_free!21935 (not b_next!21935))))

(declare-fun tp!77262 () Bool)

(declare-fun b_and!34773 () Bool)

(assert (=> start!94702 (= tp!77262 b_and!34773)))

(declare-fun mapNonEmpty!40321 () Bool)

(declare-fun mapRes!40321 () Bool)

(declare-fun tp!77261 () Bool)

(declare-fun e!610977 () Bool)

(assert (=> mapNonEmpty!40321 (= mapRes!40321 (and tp!77261 e!610977))))

(declare-fun mapKey!40321 () (_ BitVec 32))

(declare-datatypes ((V!39461 0))(
  ( (V!39462 (val!12923 Int)) )
))
(declare-datatypes ((ValueCell!12169 0))(
  ( (ValueCellFull!12169 (v!15540 V!39461)) (EmptyCell!12169) )
))
(declare-datatypes ((array!68434 0))(
  ( (array!68435 (arr!32910 (Array (_ BitVec 32) ValueCell!12169)) (size!33447 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68434)

(declare-fun mapValue!40321 () ValueCell!12169)

(declare-fun mapRest!40321 () (Array (_ BitVec 32) ValueCell!12169))

(assert (=> mapNonEmpty!40321 (= (arr!32910 _values!955) (store mapRest!40321 mapKey!40321 mapValue!40321))))

(declare-fun b!1070275 () Bool)

(declare-fun res!714114 () Bool)

(declare-fun e!610975 () Bool)

(assert (=> b!1070275 (=> (not res!714114) (not e!610975))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68436 0))(
  ( (array!68437 (arr!32911 (Array (_ BitVec 32) (_ BitVec 64))) (size!33448 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68436)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1070275 (= res!714114 (and (= (size!33447 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33448 _keys!1163) (size!33447 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40321 () Bool)

(assert (=> mapIsEmpty!40321 mapRes!40321))

(declare-fun b!1070277 () Bool)

(declare-fun tp_is_empty!25745 () Bool)

(assert (=> b!1070277 (= e!610977 tp_is_empty!25745)))

(declare-fun b!1070278 () Bool)

(declare-fun res!714112 () Bool)

(assert (=> b!1070278 (=> (not res!714112) (not e!610975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68436 (_ BitVec 32)) Bool)

(assert (=> b!1070278 (= res!714112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070279 () Bool)

(declare-fun e!610976 () Bool)

(assert (=> b!1070279 (= e!610976 tp_is_empty!25745)))

(declare-fun b!1070280 () Bool)

(declare-fun e!610973 () Bool)

(assert (=> b!1070280 (= e!610973 true)))

(declare-fun zeroValueBefore!47 () V!39461)

(declare-datatypes ((tuple2!16502 0))(
  ( (tuple2!16503 (_1!8261 (_ BitVec 64)) (_2!8261 V!39461)) )
))
(declare-datatypes ((List!23088 0))(
  ( (Nil!23085) (Cons!23084 (h!24293 tuple2!16502) (t!32426 List!23088)) )
))
(declare-datatypes ((ListLongMap!14483 0))(
  ( (ListLongMap!14484 (toList!7257 List!23088)) )
))
(declare-fun lt!472992 () ListLongMap!14483)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39461)

(declare-fun getCurrentListMap!4123 (array!68436 array!68434 (_ BitVec 32) (_ BitVec 32) V!39461 V!39461 (_ BitVec 32) Int) ListLongMap!14483)

(assert (=> b!1070280 (= lt!472992 (getCurrentListMap!4123 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714113 () Bool)

(assert (=> start!94702 (=> (not res!714113) (not e!610975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94702 (= res!714113 (validMask!0 mask!1515))))

(assert (=> start!94702 e!610975))

(assert (=> start!94702 true))

(assert (=> start!94702 tp_is_empty!25745))

(declare-fun e!610974 () Bool)

(declare-fun array_inv!25306 (array!68434) Bool)

(assert (=> start!94702 (and (array_inv!25306 _values!955) e!610974)))

(assert (=> start!94702 tp!77262))

(declare-fun array_inv!25307 (array!68436) Bool)

(assert (=> start!94702 (array_inv!25307 _keys!1163)))

(declare-fun b!1070276 () Bool)

(assert (=> b!1070276 (= e!610975 (not e!610973))))

(declare-fun res!714115 () Bool)

(assert (=> b!1070276 (=> res!714115 e!610973)))

(assert (=> b!1070276 (= res!714115 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!472994 () ListLongMap!14483)

(declare-fun lt!472993 () ListLongMap!14483)

(assert (=> b!1070276 (= lt!472994 lt!472993)))

(declare-datatypes ((Unit!35178 0))(
  ( (Unit!35179) )
))
(declare-fun lt!472991 () Unit!35178)

(declare-fun zeroValueAfter!47 () V!39461)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!832 (array!68436 array!68434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39461 V!39461 V!39461 V!39461 (_ BitVec 32) Int) Unit!35178)

(assert (=> b!1070276 (= lt!472991 (lemmaNoChangeToArrayThenSameMapNoExtras!832 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3793 (array!68436 array!68434 (_ BitVec 32) (_ BitVec 32) V!39461 V!39461 (_ BitVec 32) Int) ListLongMap!14483)

(assert (=> b!1070276 (= lt!472993 (getCurrentListMapNoExtraKeys!3793 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070276 (= lt!472994 (getCurrentListMapNoExtraKeys!3793 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070281 () Bool)

(declare-fun res!714116 () Bool)

(assert (=> b!1070281 (=> (not res!714116) (not e!610975))))

(declare-datatypes ((List!23089 0))(
  ( (Nil!23086) (Cons!23085 (h!24294 (_ BitVec 64)) (t!32427 List!23089)) )
))
(declare-fun arrayNoDuplicates!0 (array!68436 (_ BitVec 32) List!23089) Bool)

(assert (=> b!1070281 (= res!714116 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23086))))

(declare-fun b!1070282 () Bool)

(assert (=> b!1070282 (= e!610974 (and e!610976 mapRes!40321))))

(declare-fun condMapEmpty!40321 () Bool)

(declare-fun mapDefault!40321 () ValueCell!12169)

