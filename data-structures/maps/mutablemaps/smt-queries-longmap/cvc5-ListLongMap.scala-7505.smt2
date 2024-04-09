; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95164 () Bool)

(assert start!95164)

(declare-fun b_free!22207 () Bool)

(declare-fun b_next!22207 () Bool)

(assert (=> start!95164 (= b_free!22207 (not b_next!22207))))

(declare-fun tp!78108 () Bool)

(declare-fun b_and!35155 () Bool)

(assert (=> start!95164 (= tp!78108 b_and!35155)))

(declare-fun res!716946 () Bool)

(declare-fun e!614575 () Bool)

(assert (=> start!95164 (=> (not res!716946) (not e!614575))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95164 (= res!716946 (validMask!0 mask!1515))))

(assert (=> start!95164 e!614575))

(assert (=> start!95164 true))

(declare-fun tp_is_empty!26017 () Bool)

(assert (=> start!95164 tp_is_empty!26017))

(declare-datatypes ((V!39825 0))(
  ( (V!39826 (val!13059 Int)) )
))
(declare-datatypes ((ValueCell!12305 0))(
  ( (ValueCellFull!12305 (v!15684 V!39825)) (EmptyCell!12305) )
))
(declare-datatypes ((array!68964 0))(
  ( (array!68965 (arr!33165 (Array (_ BitVec 32) ValueCell!12305)) (size!33702 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68964)

(declare-fun e!614579 () Bool)

(declare-fun array_inv!25480 (array!68964) Bool)

(assert (=> start!95164 (and (array_inv!25480 _values!955) e!614579)))

(assert (=> start!95164 tp!78108))

(declare-datatypes ((array!68966 0))(
  ( (array!68967 (arr!33166 (Array (_ BitVec 32) (_ BitVec 64))) (size!33703 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68966)

(declare-fun array_inv!25481 (array!68966) Bool)

(assert (=> start!95164 (array_inv!25481 _keys!1163)))

(declare-fun mapNonEmpty!40759 () Bool)

(declare-fun mapRes!40759 () Bool)

(declare-fun tp!78107 () Bool)

(declare-fun e!614576 () Bool)

(assert (=> mapNonEmpty!40759 (= mapRes!40759 (and tp!78107 e!614576))))

(declare-fun mapKey!40759 () (_ BitVec 32))

(declare-fun mapRest!40759 () (Array (_ BitVec 32) ValueCell!12305))

(declare-fun mapValue!40759 () ValueCell!12305)

(assert (=> mapNonEmpty!40759 (= (arr!33165 _values!955) (store mapRest!40759 mapKey!40759 mapValue!40759))))

(declare-fun b!1075292 () Bool)

(declare-fun e!614574 () Bool)

(declare-fun e!614577 () Bool)

(assert (=> b!1075292 (= e!614574 e!614577)))

(declare-fun res!716945 () Bool)

(assert (=> b!1075292 (=> res!716945 e!614577)))

(declare-datatypes ((tuple2!16704 0))(
  ( (tuple2!16705 (_1!8362 (_ BitVec 64)) (_2!8362 V!39825)) )
))
(declare-datatypes ((List!23278 0))(
  ( (Nil!23275) (Cons!23274 (h!24483 tuple2!16704) (t!32636 List!23278)) )
))
(declare-datatypes ((ListLongMap!14685 0))(
  ( (ListLongMap!14686 (toList!7358 List!23278)) )
))
(declare-fun lt!477284 () ListLongMap!14685)

(declare-fun contains!6361 (ListLongMap!14685 (_ BitVec 64)) Bool)

(assert (=> b!1075292 (= res!716945 (contains!6361 lt!477284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39825)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39825)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4195 (array!68966 array!68964 (_ BitVec 32) (_ BitVec 32) V!39825 V!39825 (_ BitVec 32) Int) ListLongMap!14685)

(assert (=> b!1075292 (= lt!477284 (getCurrentListMap!4195 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075293 () Bool)

(assert (=> b!1075293 (= e!614575 (not e!614574))))

(declare-fun res!716948 () Bool)

(assert (=> b!1075293 (=> res!716948 e!614574)))

(assert (=> b!1075293 (= res!716948 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!477289 () ListLongMap!14685)

(declare-fun lt!477287 () ListLongMap!14685)

(assert (=> b!1075293 (= lt!477289 lt!477287)))

(declare-datatypes ((Unit!35349 0))(
  ( (Unit!35350) )
))
(declare-fun lt!477288 () Unit!35349)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39825)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!904 (array!68966 array!68964 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39825 V!39825 V!39825 V!39825 (_ BitVec 32) Int) Unit!35349)

(assert (=> b!1075293 (= lt!477288 (lemmaNoChangeToArrayThenSameMapNoExtras!904 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3885 (array!68966 array!68964 (_ BitVec 32) (_ BitVec 32) V!39825 V!39825 (_ BitVec 32) Int) ListLongMap!14685)

(assert (=> b!1075293 (= lt!477287 (getCurrentListMapNoExtraKeys!3885 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075293 (= lt!477289 (getCurrentListMapNoExtraKeys!3885 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075294 () Bool)

(declare-fun e!614578 () Bool)

(assert (=> b!1075294 (= e!614579 (and e!614578 mapRes!40759))))

(declare-fun condMapEmpty!40759 () Bool)

(declare-fun mapDefault!40759 () ValueCell!12305)

