; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94628 () Bool)

(assert start!94628)

(declare-fun b_free!21875 () Bool)

(declare-fun b_next!21875 () Bool)

(assert (=> start!94628 (= b_free!21875 (not b_next!21875))))

(declare-fun tp!77079 () Bool)

(declare-fun b_and!34705 () Bool)

(assert (=> start!94628 (= tp!77079 b_and!34705)))

(declare-fun res!713689 () Bool)

(declare-fun e!610435 () Bool)

(assert (=> start!94628 (=> (not res!713689) (not e!610435))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94628 (= res!713689 (validMask!0 mask!1515))))

(assert (=> start!94628 e!610435))

(assert (=> start!94628 true))

(declare-fun tp_is_empty!25685 () Bool)

(assert (=> start!94628 tp_is_empty!25685))

(declare-datatypes ((V!39381 0))(
  ( (V!39382 (val!12893 Int)) )
))
(declare-datatypes ((ValueCell!12139 0))(
  ( (ValueCellFull!12139 (v!15510 V!39381)) (EmptyCell!12139) )
))
(declare-datatypes ((array!68318 0))(
  ( (array!68319 (arr!32853 (Array (_ BitVec 32) ValueCell!12139)) (size!33390 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68318)

(declare-fun e!610433 () Bool)

(declare-fun array_inv!25268 (array!68318) Bool)

(assert (=> start!94628 (and (array_inv!25268 _values!955) e!610433)))

(assert (=> start!94628 tp!77079))

(declare-datatypes ((array!68320 0))(
  ( (array!68321 (arr!32854 (Array (_ BitVec 32) (_ BitVec 64))) (size!33391 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68320)

(declare-fun array_inv!25269 (array!68320) Bool)

(assert (=> start!94628 (array_inv!25269 _keys!1163)))

(declare-fun mapIsEmpty!40228 () Bool)

(declare-fun mapRes!40228 () Bool)

(assert (=> mapIsEmpty!40228 mapRes!40228))

(declare-fun b!1069525 () Bool)

(declare-fun e!610432 () Bool)

(assert (=> b!1069525 (= e!610432 tp_is_empty!25685)))

(declare-fun b!1069526 () Bool)

(declare-fun res!713688 () Bool)

(assert (=> b!1069526 (=> (not res!713688) (not e!610435))))

(declare-datatypes ((List!23046 0))(
  ( (Nil!23043) (Cons!23042 (h!24251 (_ BitVec 64)) (t!32382 List!23046)) )
))
(declare-fun arrayNoDuplicates!0 (array!68320 (_ BitVec 32) List!23046) Bool)

(assert (=> b!1069526 (= res!713688 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23043))))

(declare-fun mapNonEmpty!40228 () Bool)

(declare-fun tp!77078 () Bool)

(declare-fun e!610436 () Bool)

(assert (=> mapNonEmpty!40228 (= mapRes!40228 (and tp!77078 e!610436))))

(declare-fun mapValue!40228 () ValueCell!12139)

(declare-fun mapRest!40228 () (Array (_ BitVec 32) ValueCell!12139))

(declare-fun mapKey!40228 () (_ BitVec 32))

(assert (=> mapNonEmpty!40228 (= (arr!32853 _values!955) (store mapRest!40228 mapKey!40228 mapValue!40228))))

(declare-fun b!1069527 () Bool)

(declare-fun res!713687 () Bool)

(assert (=> b!1069527 (=> (not res!713687) (not e!610435))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069527 (= res!713687 (and (= (size!33390 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33391 _keys!1163) (size!33390 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069528 () Bool)

(assert (=> b!1069528 (= e!610435 (not true))))

(declare-datatypes ((tuple2!16458 0))(
  ( (tuple2!16459 (_1!8239 (_ BitVec 64)) (_2!8239 V!39381)) )
))
(declare-datatypes ((List!23047 0))(
  ( (Nil!23044) (Cons!23043 (h!24252 tuple2!16458) (t!32383 List!23047)) )
))
(declare-datatypes ((ListLongMap!14439 0))(
  ( (ListLongMap!14440 (toList!7235 List!23047)) )
))
(declare-fun lt!472647 () ListLongMap!14439)

(declare-fun lt!472646 () ListLongMap!14439)

(assert (=> b!1069528 (= lt!472647 lt!472646)))

(declare-fun zeroValueBefore!47 () V!39381)

(declare-datatypes ((Unit!35136 0))(
  ( (Unit!35137) )
))
(declare-fun lt!472648 () Unit!35136)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39381)

(declare-fun minValue!907 () V!39381)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!811 (array!68320 array!68318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39381 V!39381 V!39381 V!39381 (_ BitVec 32) Int) Unit!35136)

(assert (=> b!1069528 (= lt!472648 (lemmaNoChangeToArrayThenSameMapNoExtras!811 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3772 (array!68320 array!68318 (_ BitVec 32) (_ BitVec 32) V!39381 V!39381 (_ BitVec 32) Int) ListLongMap!14439)

(assert (=> b!1069528 (= lt!472646 (getCurrentListMapNoExtraKeys!3772 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069528 (= lt!472647 (getCurrentListMapNoExtraKeys!3772 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069529 () Bool)

(declare-fun res!713686 () Bool)

(assert (=> b!1069529 (=> (not res!713686) (not e!610435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68320 (_ BitVec 32)) Bool)

(assert (=> b!1069529 (= res!713686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069530 () Bool)

(assert (=> b!1069530 (= e!610433 (and e!610432 mapRes!40228))))

(declare-fun condMapEmpty!40228 () Bool)

(declare-fun mapDefault!40228 () ValueCell!12139)

