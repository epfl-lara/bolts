; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94810 () Bool)

(assert start!94810)

(declare-fun b_free!22027 () Bool)

(declare-fun b_next!22027 () Bool)

(assert (=> start!94810 (= b_free!22027 (not b_next!22027))))

(declare-fun tp!77541 () Bool)

(declare-fun b_and!34875 () Bool)

(assert (=> start!94810 (= tp!77541 b_and!34875)))

(declare-fun b!1071621 () Bool)

(declare-fun res!714955 () Bool)

(declare-fun e!611995 () Bool)

(assert (=> b!1071621 (=> (not res!714955) (not e!611995))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39585 0))(
  ( (V!39586 (val!12969 Int)) )
))
(declare-datatypes ((ValueCell!12215 0))(
  ( (ValueCellFull!12215 (v!15586 V!39585)) (EmptyCell!12215) )
))
(declare-datatypes ((array!68602 0))(
  ( (array!68603 (arr!32993 (Array (_ BitVec 32) ValueCell!12215)) (size!33530 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68602)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68604 0))(
  ( (array!68605 (arr!32994 (Array (_ BitVec 32) (_ BitVec 64))) (size!33531 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68604)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1071621 (= res!714955 (and (= (size!33530 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33531 _keys!1163) (size!33530 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071622 () Bool)

(declare-datatypes ((tuple2!16570 0))(
  ( (tuple2!16571 (_1!8295 (_ BitVec 64)) (_2!8295 V!39585)) )
))
(declare-fun lt!474386 () tuple2!16570)

(declare-datatypes ((List!23152 0))(
  ( (Nil!23149) (Cons!23148 (h!24357 tuple2!16570) (t!32492 List!23152)) )
))
(declare-datatypes ((ListLongMap!14551 0))(
  ( (ListLongMap!14552 (toList!7291 List!23152)) )
))
(declare-fun lt!474390 () ListLongMap!14551)

(declare-fun e!611992 () Bool)

(declare-fun lt!474387 () ListLongMap!14551)

(declare-fun +!3147 (ListLongMap!14551 tuple2!16570) ListLongMap!14551)

(assert (=> b!1071622 (= e!611992 (= lt!474387 (+!3147 lt!474390 lt!474386)))))

(declare-fun b!1071623 () Bool)

(declare-fun e!611993 () Bool)

(declare-fun e!611989 () Bool)

(assert (=> b!1071623 (= e!611993 e!611989)))

(declare-fun res!714954 () Bool)

(assert (=> b!1071623 (=> res!714954 e!611989)))

(declare-fun lt!474388 () ListLongMap!14551)

(declare-fun -!683 (ListLongMap!14551 (_ BitVec 64)) ListLongMap!14551)

(assert (=> b!1071623 (= res!714954 (not (= (-!683 lt!474388 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474387)))))

(declare-fun lt!474391 () ListLongMap!14551)

(declare-fun lt!474395 () ListLongMap!14551)

(assert (=> b!1071623 (= lt!474391 lt!474395)))

(declare-datatypes ((Unit!35243 0))(
  ( (Unit!35244) )
))
(declare-fun lt!474392 () Unit!35243)

(declare-fun minValue!907 () V!39585)

(declare-fun zeroValueBefore!47 () V!39585)

(declare-fun lt!474394 () ListLongMap!14551)

(declare-fun addCommutativeForDiffKeys!727 (ListLongMap!14551 (_ BitVec 64) V!39585 (_ BitVec 64) V!39585) Unit!35243)

(assert (=> b!1071623 (= lt!474392 (addCommutativeForDiffKeys!727 lt!474394 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474389 () ListLongMap!14551)

(assert (=> b!1071623 (= (-!683 lt!474395 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474389)))

(declare-fun lt!474396 () tuple2!16570)

(assert (=> b!1071623 (= lt!474395 (+!3147 lt!474389 lt!474396))))

(declare-fun lt!474385 () Unit!35243)

(declare-fun addThenRemoveForNewKeyIsSame!57 (ListLongMap!14551 (_ BitVec 64) V!39585) Unit!35243)

(assert (=> b!1071623 (= lt!474385 (addThenRemoveForNewKeyIsSame!57 lt!474389 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071623 (= lt!474389 (+!3147 lt!474394 lt!474386))))

(assert (=> b!1071623 e!611992))

(declare-fun res!714957 () Bool)

(assert (=> b!1071623 (=> (not res!714957) (not e!611992))))

(assert (=> b!1071623 (= res!714957 (= lt!474388 lt!474391))))

(assert (=> b!1071623 (= lt!474391 (+!3147 (+!3147 lt!474394 lt!474396) lt!474386))))

(assert (=> b!1071623 (= lt!474386 (tuple2!16571 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071623 (= lt!474396 (tuple2!16571 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39585)

(declare-fun getCurrentListMap!4155 (array!68604 array!68602 (_ BitVec 32) (_ BitVec 32) V!39585 V!39585 (_ BitVec 32) Int) ListLongMap!14551)

(assert (=> b!1071623 (= lt!474387 (getCurrentListMap!4155 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071623 (= lt!474388 (getCurrentListMap!4155 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40462 () Bool)

(declare-fun mapRes!40462 () Bool)

(assert (=> mapIsEmpty!40462 mapRes!40462))

(declare-fun b!1071625 () Bool)

(declare-fun res!714959 () Bool)

(assert (=> b!1071625 (=> (not res!714959) (not e!611995))))

(declare-datatypes ((List!23153 0))(
  ( (Nil!23150) (Cons!23149 (h!24358 (_ BitVec 64)) (t!32493 List!23153)) )
))
(declare-fun arrayNoDuplicates!0 (array!68604 (_ BitVec 32) List!23153) Bool)

(assert (=> b!1071625 (= res!714959 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23150))))

(declare-fun b!1071626 () Bool)

(declare-fun e!611988 () Bool)

(declare-fun tp_is_empty!25837 () Bool)

(assert (=> b!1071626 (= e!611988 tp_is_empty!25837)))

(declare-fun b!1071627 () Bool)

(declare-fun e!611991 () Bool)

(declare-fun e!611994 () Bool)

(assert (=> b!1071627 (= e!611991 (and e!611994 mapRes!40462))))

(declare-fun condMapEmpty!40462 () Bool)

(declare-fun mapDefault!40462 () ValueCell!12215)

