; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94766 () Bool)

(assert start!94766)

(declare-fun b_free!21983 () Bool)

(declare-fun b_next!21983 () Bool)

(assert (=> start!94766 (= b_free!21983 (not b_next!21983))))

(declare-fun tp!77409 () Bool)

(declare-fun b_and!34831 () Bool)

(assert (=> start!94766 (= tp!77409 b_and!34831)))

(declare-fun b!1071025 () Bool)

(declare-fun res!714557 () Bool)

(declare-fun e!611528 () Bool)

(assert (=> b!1071025 (=> (not res!714557) (not e!611528))))

(declare-datatypes ((array!68520 0))(
  ( (array!68521 (arr!32952 (Array (_ BitVec 32) (_ BitVec 64))) (size!33489 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68520)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68520 (_ BitVec 32)) Bool)

(assert (=> b!1071025 (= res!714557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-datatypes ((V!39525 0))(
  ( (V!39526 (val!12947 Int)) )
))
(declare-datatypes ((tuple2!16536 0))(
  ( (tuple2!16537 (_1!8278 (_ BitVec 64)) (_2!8278 V!39525)) )
))
(declare-datatypes ((List!23120 0))(
  ( (Nil!23117) (Cons!23116 (h!24325 tuple2!16536) (t!32460 List!23120)) )
))
(declare-datatypes ((ListLongMap!14517 0))(
  ( (ListLongMap!14518 (toList!7274 List!23120)) )
))
(declare-fun lt!473534 () ListLongMap!14517)

(declare-fun lt!473538 () tuple2!16536)

(declare-fun lt!473540 () ListLongMap!14517)

(declare-fun b!1071026 () Bool)

(declare-fun e!611526 () Bool)

(declare-fun +!3131 (ListLongMap!14517 tuple2!16536) ListLongMap!14517)

(assert (=> b!1071026 (= e!611526 (= lt!473540 (+!3131 lt!473534 lt!473538)))))

(declare-fun b!1071027 () Bool)

(declare-fun res!714559 () Bool)

(assert (=> b!1071027 (=> (not res!714559) (not e!611528))))

(declare-datatypes ((List!23121 0))(
  ( (Nil!23118) (Cons!23117 (h!24326 (_ BitVec 64)) (t!32461 List!23121)) )
))
(declare-fun arrayNoDuplicates!0 (array!68520 (_ BitVec 32) List!23121) Bool)

(assert (=> b!1071027 (= res!714559 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23118))))

(declare-fun res!714561 () Bool)

(assert (=> start!94766 (=> (not res!714561) (not e!611528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94766 (= res!714561 (validMask!0 mask!1515))))

(assert (=> start!94766 e!611528))

(assert (=> start!94766 true))

(declare-fun tp_is_empty!25793 () Bool)

(assert (=> start!94766 tp_is_empty!25793))

(declare-datatypes ((ValueCell!12193 0))(
  ( (ValueCellFull!12193 (v!15564 V!39525)) (EmptyCell!12193) )
))
(declare-datatypes ((array!68522 0))(
  ( (array!68523 (arr!32953 (Array (_ BitVec 32) ValueCell!12193)) (size!33490 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68522)

(declare-fun e!611527 () Bool)

(declare-fun array_inv!25332 (array!68522) Bool)

(assert (=> start!94766 (and (array_inv!25332 _values!955) e!611527)))

(assert (=> start!94766 tp!77409))

(declare-fun array_inv!25333 (array!68520) Bool)

(assert (=> start!94766 (array_inv!25333 _keys!1163)))

(declare-fun mapNonEmpty!40396 () Bool)

(declare-fun mapRes!40396 () Bool)

(declare-fun tp!77408 () Bool)

(declare-fun e!611524 () Bool)

(assert (=> mapNonEmpty!40396 (= mapRes!40396 (and tp!77408 e!611524))))

(declare-fun mapKey!40396 () (_ BitVec 32))

(declare-fun mapValue!40396 () ValueCell!12193)

(declare-fun mapRest!40396 () (Array (_ BitVec 32) ValueCell!12193))

(assert (=> mapNonEmpty!40396 (= (arr!32953 _values!955) (store mapRest!40396 mapKey!40396 mapValue!40396))))

(declare-fun b!1071028 () Bool)

(declare-fun e!611525 () Bool)

(assert (=> b!1071028 (= e!611525 tp_is_empty!25793)))

(declare-fun b!1071029 () Bool)

(declare-fun e!611530 () Bool)

(assert (=> b!1071029 (= e!611530 true)))

(declare-fun lt!473535 () ListLongMap!14517)

(declare-fun lt!473530 () ListLongMap!14517)

(declare-fun -!668 (ListLongMap!14517 (_ BitVec 64)) ListLongMap!14517)

(assert (=> b!1071029 (= lt!473535 (-!668 lt!473530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473541 () ListLongMap!14517)

(declare-fun lt!473537 () ListLongMap!14517)

(assert (=> b!1071029 (= lt!473541 lt!473537)))

(declare-datatypes ((Unit!35211 0))(
  ( (Unit!35212) )
))
(declare-fun lt!473529 () Unit!35211)

(declare-fun zeroValueBefore!47 () V!39525)

(declare-fun lt!473539 () ListLongMap!14517)

(declare-fun minValue!907 () V!39525)

(declare-fun addCommutativeForDiffKeys!712 (ListLongMap!14517 (_ BitVec 64) V!39525 (_ BitVec 64) V!39525) Unit!35211)

(assert (=> b!1071029 (= lt!473529 (addCommutativeForDiffKeys!712 lt!473539 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473531 () ListLongMap!14517)

(assert (=> b!1071029 (= (-!668 lt!473537 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473531)))

(declare-fun lt!473533 () tuple2!16536)

(assert (=> b!1071029 (= lt!473537 (+!3131 lt!473531 lt!473533))))

(declare-fun lt!473536 () Unit!35211)

(declare-fun addThenRemoveForNewKeyIsSame!42 (ListLongMap!14517 (_ BitVec 64) V!39525) Unit!35211)

(assert (=> b!1071029 (= lt!473536 (addThenRemoveForNewKeyIsSame!42 lt!473531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071029 (= lt!473531 (+!3131 lt!473539 lt!473538))))

(assert (=> b!1071029 e!611526))

(declare-fun res!714558 () Bool)

(assert (=> b!1071029 (=> (not res!714558) (not e!611526))))

(assert (=> b!1071029 (= res!714558 (= lt!473530 lt!473541))))

(assert (=> b!1071029 (= lt!473541 (+!3131 (+!3131 lt!473539 lt!473533) lt!473538))))

(assert (=> b!1071029 (= lt!473538 (tuple2!16537 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071029 (= lt!473533 (tuple2!16537 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39525)

(declare-fun getCurrentListMap!4140 (array!68520 array!68522 (_ BitVec 32) (_ BitVec 32) V!39525 V!39525 (_ BitVec 32) Int) ListLongMap!14517)

(assert (=> b!1071029 (= lt!473540 (getCurrentListMap!4140 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071029 (= lt!473530 (getCurrentListMap!4140 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071030 () Bool)

(assert (=> b!1071030 (= e!611528 (not e!611530))))

(declare-fun res!714560 () Bool)

(assert (=> b!1071030 (=> res!714560 e!611530)))

(assert (=> b!1071030 (= res!714560 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071030 (= lt!473539 lt!473534)))

(declare-fun lt!473532 () Unit!35211)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!848 (array!68520 array!68522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39525 V!39525 V!39525 V!39525 (_ BitVec 32) Int) Unit!35211)

(assert (=> b!1071030 (= lt!473532 (lemmaNoChangeToArrayThenSameMapNoExtras!848 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3809 (array!68520 array!68522 (_ BitVec 32) (_ BitVec 32) V!39525 V!39525 (_ BitVec 32) Int) ListLongMap!14517)

(assert (=> b!1071030 (= lt!473534 (getCurrentListMapNoExtraKeys!3809 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071030 (= lt!473539 (getCurrentListMapNoExtraKeys!3809 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071031 () Bool)

(assert (=> b!1071031 (= e!611527 (and e!611525 mapRes!40396))))

(declare-fun condMapEmpty!40396 () Bool)

(declare-fun mapDefault!40396 () ValueCell!12193)

