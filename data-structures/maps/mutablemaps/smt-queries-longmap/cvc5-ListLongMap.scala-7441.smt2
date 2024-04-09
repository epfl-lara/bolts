; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94554 () Bool)

(assert start!94554)

(declare-fun b_free!21823 () Bool)

(declare-fun b_next!21823 () Bool)

(assert (=> start!94554 (= b_free!21823 (not b_next!21823))))

(declare-fun tp!76919 () Bool)

(declare-fun b_and!34643 () Bool)

(assert (=> start!94554 (= tp!76919 b_and!34643)))

(declare-fun mapNonEmpty!40147 () Bool)

(declare-fun mapRes!40147 () Bool)

(declare-fun tp!76920 () Bool)

(declare-fun e!609842 () Bool)

(assert (=> mapNonEmpty!40147 (= mapRes!40147 (and tp!76920 e!609842))))

(declare-datatypes ((V!39313 0))(
  ( (V!39314 (val!12867 Int)) )
))
(declare-datatypes ((ValueCell!12113 0))(
  ( (ValueCellFull!12113 (v!15483 V!39313)) (EmptyCell!12113) )
))
(declare-datatypes ((array!68216 0))(
  ( (array!68217 (arr!32803 (Array (_ BitVec 32) ValueCell!12113)) (size!33340 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68216)

(declare-fun mapKey!40147 () (_ BitVec 32))

(declare-fun mapValue!40147 () ValueCell!12113)

(declare-fun mapRest!40147 () (Array (_ BitVec 32) ValueCell!12113))

(assert (=> mapNonEmpty!40147 (= (arr!32803 _values!955) (store mapRest!40147 mapKey!40147 mapValue!40147))))

(declare-fun b!1068718 () Bool)

(declare-fun res!713211 () Bool)

(declare-fun e!609841 () Bool)

(assert (=> b!1068718 (=> (not res!713211) (not e!609841))))

(declare-datatypes ((array!68218 0))(
  ( (array!68219 (arr!32804 (Array (_ BitVec 32) (_ BitVec 64))) (size!33341 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68218)

(declare-datatypes ((List!23009 0))(
  ( (Nil!23006) (Cons!23005 (h!24214 (_ BitVec 64)) (t!32343 List!23009)) )
))
(declare-fun arrayNoDuplicates!0 (array!68218 (_ BitVec 32) List!23009) Bool)

(assert (=> b!1068718 (= res!713211 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23006))))

(declare-fun b!1068719 () Bool)

(declare-fun res!713214 () Bool)

(assert (=> b!1068719 (=> (not res!713214) (not e!609841))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68218 (_ BitVec 32)) Bool)

(assert (=> b!1068719 (= res!713214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068720 () Bool)

(declare-fun e!609844 () Bool)

(declare-fun e!609840 () Bool)

(assert (=> b!1068720 (= e!609844 e!609840)))

(declare-fun res!713212 () Bool)

(assert (=> b!1068720 (=> res!713212 e!609840)))

(declare-datatypes ((tuple2!16420 0))(
  ( (tuple2!16421 (_1!8220 (_ BitVec 64)) (_2!8220 V!39313)) )
))
(declare-datatypes ((List!23010 0))(
  ( (Nil!23007) (Cons!23006 (h!24215 tuple2!16420) (t!32344 List!23010)) )
))
(declare-datatypes ((ListLongMap!14401 0))(
  ( (ListLongMap!14402 (toList!7216 List!23010)) )
))
(declare-fun lt!472185 () ListLongMap!14401)

(declare-fun contains!6317 (ListLongMap!14401 (_ BitVec 64)) Bool)

(assert (=> b!1068720 (= res!713212 (contains!6317 lt!472185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39313)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39313)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4106 (array!68218 array!68216 (_ BitVec 32) (_ BitVec 32) V!39313 V!39313 (_ BitVec 32) Int) ListLongMap!14401)

(assert (=> b!1068720 (= lt!472185 (getCurrentListMap!4106 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068721 () Bool)

(assert (=> b!1068721 (= e!609841 (not e!609844))))

(declare-fun res!713213 () Bool)

(assert (=> b!1068721 (=> res!713213 e!609844)))

(assert (=> b!1068721 (= res!713213 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472186 () ListLongMap!14401)

(declare-fun lt!472187 () ListLongMap!14401)

(assert (=> b!1068721 (= lt!472186 lt!472187)))

(declare-fun zeroValueAfter!47 () V!39313)

(declare-datatypes ((Unit!35096 0))(
  ( (Unit!35097) )
))
(declare-fun lt!472188 () Unit!35096)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!795 (array!68218 array!68216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39313 V!39313 V!39313 V!39313 (_ BitVec 32) Int) Unit!35096)

(assert (=> b!1068721 (= lt!472188 (lemmaNoChangeToArrayThenSameMapNoExtras!795 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3756 (array!68218 array!68216 (_ BitVec 32) (_ BitVec 32) V!39313 V!39313 (_ BitVec 32) Int) ListLongMap!14401)

(assert (=> b!1068721 (= lt!472187 (getCurrentListMapNoExtraKeys!3756 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068721 (= lt!472186 (getCurrentListMapNoExtraKeys!3756 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068722 () Bool)

(declare-fun e!609838 () Bool)

(declare-fun tp_is_empty!25633 () Bool)

(assert (=> b!1068722 (= e!609838 tp_is_empty!25633)))

(declare-fun b!1068724 () Bool)

(assert (=> b!1068724 (= e!609842 tp_is_empty!25633)))

(declare-fun b!1068725 () Bool)

(declare-fun e!609839 () Bool)

(assert (=> b!1068725 (= e!609839 (and e!609838 mapRes!40147))))

(declare-fun condMapEmpty!40147 () Bool)

(declare-fun mapDefault!40147 () ValueCell!12113)

