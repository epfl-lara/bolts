; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94262 () Bool)

(assert start!94262)

(declare-fun b_free!21611 () Bool)

(declare-fun b_next!21611 () Bool)

(assert (=> start!94262 (= b_free!21611 (not b_next!21611))))

(declare-fun tp!76272 () Bool)

(declare-fun b_and!34389 () Bool)

(assert (=> start!94262 (= tp!76272 b_and!34389)))

(declare-fun res!711336 () Bool)

(declare-fun e!607512 () Bool)

(assert (=> start!94262 (=> (not res!711336) (not e!607512))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94262 (= res!711336 (validMask!0 mask!1515))))

(assert (=> start!94262 e!607512))

(assert (=> start!94262 true))

(declare-fun tp_is_empty!25421 () Bool)

(assert (=> start!94262 tp_is_empty!25421))

(declare-datatypes ((V!39029 0))(
  ( (V!39030 (val!12761 Int)) )
))
(declare-datatypes ((ValueCell!12007 0))(
  ( (ValueCellFull!12007 (v!15374 V!39029)) (EmptyCell!12007) )
))
(declare-datatypes ((array!67800 0))(
  ( (array!67801 (arr!32599 (Array (_ BitVec 32) ValueCell!12007)) (size!33136 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67800)

(declare-fun e!607510 () Bool)

(declare-fun array_inv!25080 (array!67800) Bool)

(assert (=> start!94262 (and (array_inv!25080 _values!955) e!607510)))

(assert (=> start!94262 tp!76272))

(declare-datatypes ((array!67802 0))(
  ( (array!67803 (arr!32600 (Array (_ BitVec 32) (_ BitVec 64))) (size!33137 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67802)

(declare-fun array_inv!25081 (array!67802) Bool)

(assert (=> start!94262 (array_inv!25081 _keys!1163)))

(declare-fun b!1065535 () Bool)

(declare-fun res!711335 () Bool)

(assert (=> b!1065535 (=> (not res!711335) (not e!607512))))

(declare-datatypes ((List!22856 0))(
  ( (Nil!22853) (Cons!22852 (h!24061 (_ BitVec 64)) (t!32182 List!22856)) )
))
(declare-fun arrayNoDuplicates!0 (array!67802 (_ BitVec 32) List!22856) Bool)

(assert (=> b!1065535 (= res!711335 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22853))))

(declare-fun b!1065536 () Bool)

(declare-fun e!607509 () Bool)

(assert (=> b!1065536 (= e!607509 true)))

(declare-datatypes ((tuple2!16256 0))(
  ( (tuple2!16257 (_1!8138 (_ BitVec 64)) (_2!8138 V!39029)) )
))
(declare-datatypes ((List!22857 0))(
  ( (Nil!22854) (Cons!22853 (h!24062 tuple2!16256) (t!32183 List!22857)) )
))
(declare-datatypes ((ListLongMap!14237 0))(
  ( (ListLongMap!14238 (toList!7134 List!22857)) )
))
(declare-fun lt!469975 () ListLongMap!14237)

(declare-fun lt!469972 () ListLongMap!14237)

(declare-fun -!600 (ListLongMap!14237 (_ BitVec 64)) ListLongMap!14237)

(assert (=> b!1065536 (= lt!469975 (-!600 lt!469972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469976 () ListLongMap!14237)

(declare-fun lt!469974 () ListLongMap!14237)

(assert (=> b!1065536 (= (-!600 lt!469976 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469974)))

(declare-datatypes ((Unit!34930 0))(
  ( (Unit!34931) )
))
(declare-fun lt!469973 () Unit!34930)

(declare-fun zeroValueBefore!47 () V!39029)

(declare-fun addThenRemoveForNewKeyIsSame!9 (ListLongMap!14237 (_ BitVec 64) V!39029) Unit!34930)

(assert (=> b!1065536 (= lt!469973 (addThenRemoveForNewKeyIsSame!9 lt!469974 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469978 () ListLongMap!14237)

(declare-fun lt!469971 () ListLongMap!14237)

(assert (=> b!1065536 (and (= lt!469972 lt!469976) (= lt!469978 lt!469971))))

(declare-fun +!3091 (ListLongMap!14237 tuple2!16256) ListLongMap!14237)

(assert (=> b!1065536 (= lt!469976 (+!3091 lt!469974 (tuple2!16257 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39029)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39029)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMap!4054 (array!67802 array!67800 (_ BitVec 32) (_ BitVec 32) V!39029 V!39029 (_ BitVec 32) Int) ListLongMap!14237)

(assert (=> b!1065536 (= lt!469978 (getCurrentListMap!4054 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065536 (= lt!469972 (getCurrentListMap!4054 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39817 () Bool)

(declare-fun mapRes!39817 () Bool)

(declare-fun tp!76271 () Bool)

(declare-fun e!607511 () Bool)

(assert (=> mapNonEmpty!39817 (= mapRes!39817 (and tp!76271 e!607511))))

(declare-fun mapKey!39817 () (_ BitVec 32))

(declare-fun mapValue!39817 () ValueCell!12007)

(declare-fun mapRest!39817 () (Array (_ BitVec 32) ValueCell!12007))

(assert (=> mapNonEmpty!39817 (= (arr!32599 _values!955) (store mapRest!39817 mapKey!39817 mapValue!39817))))

(declare-fun b!1065537 () Bool)

(declare-fun e!607513 () Bool)

(assert (=> b!1065537 (= e!607510 (and e!607513 mapRes!39817))))

(declare-fun condMapEmpty!39817 () Bool)

(declare-fun mapDefault!39817 () ValueCell!12007)

