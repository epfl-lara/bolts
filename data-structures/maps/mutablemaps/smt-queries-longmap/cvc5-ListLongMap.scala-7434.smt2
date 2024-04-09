; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94490 () Bool)

(assert start!94490)

(declare-fun b_free!21781 () Bool)

(declare-fun b_next!21781 () Bool)

(assert (=> start!94490 (= b_free!21781 (not b_next!21781))))

(declare-fun tp!76791 () Bool)

(declare-fun b_and!34591 () Bool)

(assert (=> start!94490 (= tp!76791 b_and!34591)))

(declare-fun b!1067994 () Bool)

(declare-fun e!609299 () Bool)

(declare-fun tp_is_empty!25591 () Bool)

(assert (=> b!1067994 (= e!609299 tp_is_empty!25591)))

(declare-fun b!1067995 () Bool)

(declare-fun res!712772 () Bool)

(declare-fun e!609300 () Bool)

(assert (=> b!1067995 (=> (not res!712772) (not e!609300))))

(declare-datatypes ((array!68136 0))(
  ( (array!68137 (arr!32764 (Array (_ BitVec 32) (_ BitVec 64))) (size!33301 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68136)

(declare-datatypes ((List!22979 0))(
  ( (Nil!22976) (Cons!22975 (h!24184 (_ BitVec 64)) (t!32311 List!22979)) )
))
(declare-fun arrayNoDuplicates!0 (array!68136 (_ BitVec 32) List!22979) Bool)

(assert (=> b!1067995 (= res!712772 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22976))))

(declare-fun b!1067996 () Bool)

(declare-fun e!609301 () Bool)

(assert (=> b!1067996 (= e!609300 (not e!609301))))

(declare-fun res!712770 () Bool)

(assert (=> b!1067996 (=> res!712770 e!609301)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067996 (= res!712770 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39257 0))(
  ( (V!39258 (val!12846 Int)) )
))
(declare-datatypes ((tuple2!16388 0))(
  ( (tuple2!16389 (_1!8204 (_ BitVec 64)) (_2!8204 V!39257)) )
))
(declare-datatypes ((List!22980 0))(
  ( (Nil!22977) (Cons!22976 (h!24185 tuple2!16388) (t!32312 List!22980)) )
))
(declare-datatypes ((ListLongMap!14369 0))(
  ( (ListLongMap!14370 (toList!7200 List!22980)) )
))
(declare-fun lt!471747 () ListLongMap!14369)

(declare-fun lt!471748 () ListLongMap!14369)

(assert (=> b!1067996 (= lt!471747 lt!471748)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39257)

(declare-datatypes ((Unit!35066 0))(
  ( (Unit!35067) )
))
(declare-fun lt!471749 () Unit!35066)

(declare-datatypes ((ValueCell!12092 0))(
  ( (ValueCellFull!12092 (v!15461 V!39257)) (EmptyCell!12092) )
))
(declare-datatypes ((array!68138 0))(
  ( (array!68139 (arr!32765 (Array (_ BitVec 32) ValueCell!12092)) (size!33302 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68138)

(declare-fun minValue!907 () V!39257)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39257)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!784 (array!68136 array!68138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39257 V!39257 V!39257 V!39257 (_ BitVec 32) Int) Unit!35066)

(assert (=> b!1067996 (= lt!471749 (lemmaNoChangeToArrayThenSameMapNoExtras!784 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3745 (array!68136 array!68138 (_ BitVec 32) (_ BitVec 32) V!39257 V!39257 (_ BitVec 32) Int) ListLongMap!14369)

(assert (=> b!1067996 (= lt!471748 (getCurrentListMapNoExtraKeys!3745 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067996 (= lt!471747 (getCurrentListMapNoExtraKeys!3745 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!712774 () Bool)

(assert (=> start!94490 (=> (not res!712774) (not e!609300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94490 (= res!712774 (validMask!0 mask!1515))))

(assert (=> start!94490 e!609300))

(assert (=> start!94490 true))

(assert (=> start!94490 tp_is_empty!25591))

(declare-fun e!609302 () Bool)

(declare-fun array_inv!25200 (array!68138) Bool)

(assert (=> start!94490 (and (array_inv!25200 _values!955) e!609302)))

(assert (=> start!94490 tp!76791))

(declare-fun array_inv!25201 (array!68136) Bool)

(assert (=> start!94490 (array_inv!25201 _keys!1163)))

(declare-fun b!1067997 () Bool)

(declare-fun res!712775 () Bool)

(assert (=> b!1067997 (=> (not res!712775) (not e!609300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68136 (_ BitVec 32)) Bool)

(assert (=> b!1067997 (= res!712775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40081 () Bool)

(declare-fun mapRes!40081 () Bool)

(declare-fun tp!76790 () Bool)

(declare-fun e!609297 () Bool)

(assert (=> mapNonEmpty!40081 (= mapRes!40081 (and tp!76790 e!609297))))

(declare-fun mapValue!40081 () ValueCell!12092)

(declare-fun mapRest!40081 () (Array (_ BitVec 32) ValueCell!12092))

(declare-fun mapKey!40081 () (_ BitVec 32))

(assert (=> mapNonEmpty!40081 (= (arr!32765 _values!955) (store mapRest!40081 mapKey!40081 mapValue!40081))))

(declare-fun mapIsEmpty!40081 () Bool)

(assert (=> mapIsEmpty!40081 mapRes!40081))

(declare-fun b!1067998 () Bool)

(assert (=> b!1067998 (= e!609302 (and e!609299 mapRes!40081))))

(declare-fun condMapEmpty!40081 () Bool)

(declare-fun mapDefault!40081 () ValueCell!12092)

