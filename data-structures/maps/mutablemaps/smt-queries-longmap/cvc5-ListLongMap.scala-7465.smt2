; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94750 () Bool)

(assert start!94750)

(declare-fun b_free!21967 () Bool)

(declare-fun b_next!21967 () Bool)

(assert (=> start!94750 (= b_free!21967 (not b_next!21967))))

(declare-fun tp!77360 () Bool)

(declare-fun b_and!34815 () Bool)

(assert (=> start!94750 (= tp!77360 b_and!34815)))

(declare-fun b!1070809 () Bool)

(declare-fun res!714415 () Bool)

(declare-fun e!611361 () Bool)

(assert (=> b!1070809 (=> (not res!714415) (not e!611361))))

(declare-datatypes ((array!68490 0))(
  ( (array!68491 (arr!32937 (Array (_ BitVec 32) (_ BitVec 64))) (size!33474 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68490)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68490 (_ BitVec 32)) Bool)

(assert (=> b!1070809 (= res!714415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-datatypes ((V!39505 0))(
  ( (V!39506 (val!12939 Int)) )
))
(declare-datatypes ((tuple2!16524 0))(
  ( (tuple2!16525 (_1!8272 (_ BitVec 64)) (_2!8272 V!39505)) )
))
(declare-datatypes ((List!23109 0))(
  ( (Nil!23106) (Cons!23105 (h!24314 tuple2!16524) (t!32449 List!23109)) )
))
(declare-datatypes ((ListLongMap!14505 0))(
  ( (ListLongMap!14506 (toList!7268 List!23109)) )
))
(declare-fun lt!473297 () ListLongMap!14505)

(declare-fun lt!473295 () ListLongMap!14505)

(declare-fun lt!473298 () tuple2!16524)

(declare-fun b!1070810 () Bool)

(declare-fun e!611360 () Bool)

(declare-fun +!3125 (ListLongMap!14505 tuple2!16524) ListLongMap!14505)

(assert (=> b!1070810 (= e!611360 (= lt!473295 (+!3125 lt!473297 lt!473298)))))

(declare-fun b!1070811 () Bool)

(declare-fun e!611357 () Bool)

(declare-fun tp_is_empty!25777 () Bool)

(assert (=> b!1070811 (= e!611357 tp_is_empty!25777)))

(declare-fun mapNonEmpty!40372 () Bool)

(declare-fun mapRes!40372 () Bool)

(declare-fun tp!77361 () Bool)

(assert (=> mapNonEmpty!40372 (= mapRes!40372 (and tp!77361 e!611357))))

(declare-datatypes ((ValueCell!12185 0))(
  ( (ValueCellFull!12185 (v!15556 V!39505)) (EmptyCell!12185) )
))
(declare-fun mapValue!40372 () ValueCell!12185)

(declare-datatypes ((array!68492 0))(
  ( (array!68493 (arr!32938 (Array (_ BitVec 32) ValueCell!12185)) (size!33475 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68492)

(declare-fun mapKey!40372 () (_ BitVec 32))

(declare-fun mapRest!40372 () (Array (_ BitVec 32) ValueCell!12185))

(assert (=> mapNonEmpty!40372 (= (arr!32938 _values!955) (store mapRest!40372 mapKey!40372 mapValue!40372))))

(declare-fun mapIsEmpty!40372 () Bool)

(assert (=> mapIsEmpty!40372 mapRes!40372))

(declare-fun b!1070813 () Bool)

(declare-fun res!714412 () Bool)

(assert (=> b!1070813 (=> (not res!714412) (not e!611361))))

(declare-datatypes ((List!23110 0))(
  ( (Nil!23107) (Cons!23106 (h!24315 (_ BitVec 64)) (t!32450 List!23110)) )
))
(declare-fun arrayNoDuplicates!0 (array!68490 (_ BitVec 32) List!23110) Bool)

(assert (=> b!1070813 (= res!714412 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23107))))

(declare-fun b!1070814 () Bool)

(declare-fun e!611362 () Bool)

(assert (=> b!1070814 (= e!611362 true)))

(declare-fun lt!473300 () Bool)

(declare-fun lt!473299 () ListLongMap!14505)

(declare-fun contains!6332 (ListLongMap!14505 (_ BitVec 64)) Bool)

(assert (=> b!1070814 (= lt!473300 (contains!6332 (+!3125 lt!473299 lt!473298) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1070814 e!611360))

(declare-fun res!714416 () Bool)

(assert (=> b!1070814 (=> (not res!714416) (not e!611360))))

(declare-fun zeroValueBefore!47 () V!39505)

(declare-fun lt!473301 () ListLongMap!14505)

(assert (=> b!1070814 (= res!714416 (= lt!473301 (+!3125 (+!3125 lt!473299 (tuple2!16525 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!473298)))))

(declare-fun minValue!907 () V!39505)

(assert (=> b!1070814 (= lt!473298 (tuple2!16525 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39505)

(declare-fun getCurrentListMap!4134 (array!68490 array!68492 (_ BitVec 32) (_ BitVec 32) V!39505 V!39505 (_ BitVec 32) Int) ListLongMap!14505)

(assert (=> b!1070814 (= lt!473295 (getCurrentListMap!4134 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070814 (= lt!473301 (getCurrentListMap!4134 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070815 () Bool)

(declare-fun res!714413 () Bool)

(assert (=> b!1070815 (=> (not res!714413) (not e!611361))))

(assert (=> b!1070815 (= res!714413 (and (= (size!33475 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33474 _keys!1163) (size!33475 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070816 () Bool)

(declare-fun e!611358 () Bool)

(assert (=> b!1070816 (= e!611358 tp_is_empty!25777)))

(declare-fun b!1070817 () Bool)

(declare-fun e!611356 () Bool)

(assert (=> b!1070817 (= e!611356 (and e!611358 mapRes!40372))))

(declare-fun condMapEmpty!40372 () Bool)

(declare-fun mapDefault!40372 () ValueCell!12185)

