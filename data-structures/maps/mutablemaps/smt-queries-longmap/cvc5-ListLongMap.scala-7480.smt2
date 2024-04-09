; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94864 () Bool)

(assert start!94864)

(declare-fun b_free!22057 () Bool)

(declare-fun b_next!22057 () Bool)

(assert (=> start!94864 (= b_free!22057 (not b_next!22057))))

(declare-fun tp!77633 () Bool)

(declare-fun b_and!34917 () Bool)

(assert (=> start!94864 (= tp!77633 b_and!34917)))

(declare-fun res!715313 () Bool)

(declare-fun e!612429 () Bool)

(assert (=> start!94864 (=> (not res!715313) (not e!612429))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94864 (= res!715313 (validMask!0 mask!1515))))

(assert (=> start!94864 e!612429))

(assert (=> start!94864 true))

(declare-fun tp_is_empty!25867 () Bool)

(assert (=> start!94864 tp_is_empty!25867))

(declare-datatypes ((V!39625 0))(
  ( (V!39626 (val!12984 Int)) )
))
(declare-datatypes ((ValueCell!12230 0))(
  ( (ValueCellFull!12230 (v!15602 V!39625)) (EmptyCell!12230) )
))
(declare-datatypes ((array!68664 0))(
  ( (array!68665 (arr!33023 (Array (_ BitVec 32) ValueCell!12230)) (size!33560 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68664)

(declare-fun e!612426 () Bool)

(declare-fun array_inv!25386 (array!68664) Bool)

(assert (=> start!94864 (and (array_inv!25386 _values!955) e!612426)))

(assert (=> start!94864 tp!77633))

(declare-datatypes ((array!68666 0))(
  ( (array!68667 (arr!33024 (Array (_ BitVec 32) (_ BitVec 64))) (size!33561 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68666)

(declare-fun array_inv!25387 (array!68666) Bool)

(assert (=> start!94864 (array_inv!25387 _keys!1163)))

(declare-fun b!1072216 () Bool)

(declare-fun e!612428 () Bool)

(assert (=> b!1072216 (= e!612428 true)))

(declare-datatypes ((tuple2!16598 0))(
  ( (tuple2!16599 (_1!8309 (_ BitVec 64)) (_2!8309 V!39625)) )
))
(declare-datatypes ((List!23178 0))(
  ( (Nil!23175) (Cons!23174 (h!24383 tuple2!16598) (t!32520 List!23178)) )
))
(declare-datatypes ((ListLongMap!14579 0))(
  ( (ListLongMap!14580 (toList!7305 List!23178)) )
))
(declare-fun lt!475133 () ListLongMap!14579)

(declare-fun lt!475136 () ListLongMap!14579)

(declare-fun -!695 (ListLongMap!14579 (_ BitVec 64)) ListLongMap!14579)

(assert (=> b!1072216 (= lt!475133 (-!695 lt!475136 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475132 () ListLongMap!14579)

(declare-fun lt!475131 () ListLongMap!14579)

(assert (=> b!1072216 (= lt!475132 lt!475131)))

(declare-datatypes ((Unit!35271 0))(
  ( (Unit!35272) )
))
(declare-fun lt!475139 () Unit!35271)

(declare-fun zeroValueBefore!47 () V!39625)

(declare-fun lt!475140 () ListLongMap!14579)

(declare-fun minValue!907 () V!39625)

(declare-fun addCommutativeForDiffKeys!739 (ListLongMap!14579 (_ BitVec 64) V!39625 (_ BitVec 64) V!39625) Unit!35271)

(assert (=> b!1072216 (= lt!475139 (addCommutativeForDiffKeys!739 lt!475140 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475137 () ListLongMap!14579)

(assert (=> b!1072216 (= (-!695 lt!475131 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475137)))

(declare-fun lt!475129 () tuple2!16598)

(declare-fun +!3160 (ListLongMap!14579 tuple2!16598) ListLongMap!14579)

(assert (=> b!1072216 (= lt!475131 (+!3160 lt!475137 lt!475129))))

(declare-fun lt!475134 () Unit!35271)

(declare-fun addThenRemoveForNewKeyIsSame!69 (ListLongMap!14579 (_ BitVec 64) V!39625) Unit!35271)

(assert (=> b!1072216 (= lt!475134 (addThenRemoveForNewKeyIsSame!69 lt!475137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475141 () tuple2!16598)

(assert (=> b!1072216 (= lt!475137 (+!3160 lt!475140 lt!475141))))

(declare-fun e!612427 () Bool)

(assert (=> b!1072216 e!612427))

(declare-fun res!715315 () Bool)

(assert (=> b!1072216 (=> (not res!715315) (not e!612427))))

(assert (=> b!1072216 (= res!715315 (= lt!475136 lt!475132))))

(assert (=> b!1072216 (= lt!475132 (+!3160 (+!3160 lt!475140 lt!475129) lt!475141))))

(assert (=> b!1072216 (= lt!475141 (tuple2!16599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072216 (= lt!475129 (tuple2!16599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lt!475130 () ListLongMap!14579)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39625)

(declare-fun getCurrentListMap!4167 (array!68666 array!68664 (_ BitVec 32) (_ BitVec 32) V!39625 V!39625 (_ BitVec 32) Int) ListLongMap!14579)

(assert (=> b!1072216 (= lt!475130 (getCurrentListMap!4167 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072216 (= lt!475136 (getCurrentListMap!4167 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072217 () Bool)

(declare-fun e!612424 () Bool)

(assert (=> b!1072217 (= e!612424 tp_is_empty!25867)))

(declare-fun b!1072218 () Bool)

(declare-fun res!715314 () Bool)

(assert (=> b!1072218 (=> (not res!715314) (not e!612429))))

(assert (=> b!1072218 (= res!715314 (and (= (size!33560 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33561 _keys!1163) (size!33560 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072219 () Bool)

(declare-fun mapRes!40510 () Bool)

(assert (=> b!1072219 (= e!612426 (and e!612424 mapRes!40510))))

(declare-fun condMapEmpty!40510 () Bool)

(declare-fun mapDefault!40510 () ValueCell!12230)

