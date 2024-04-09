; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70198 () Bool)

(assert start!70198)

(declare-fun b_free!12581 () Bool)

(declare-fun b_next!12581 () Bool)

(assert (=> start!70198 (= b_free!12581 (not b_next!12581))))

(declare-fun tp!44460 () Bool)

(declare-fun b_and!21379 () Bool)

(assert (=> start!70198 (= tp!44460 b_and!21379)))

(declare-fun b!815181 () Bool)

(declare-fun e!452040 () Bool)

(declare-fun tp_is_empty!14291 () Bool)

(assert (=> b!815181 (= e!452040 tp_is_empty!14291)))

(declare-fun mapNonEmpty!23020 () Bool)

(declare-fun mapRes!23020 () Bool)

(declare-fun tp!44461 () Bool)

(declare-fun e!452037 () Bool)

(assert (=> mapNonEmpty!23020 (= mapRes!23020 (and tp!44461 e!452037))))

(declare-datatypes ((V!24055 0))(
  ( (V!24056 (val!7193 Int)) )
))
(declare-datatypes ((ValueCell!6730 0))(
  ( (ValueCellFull!6730 (v!9616 V!24055)) (EmptyCell!6730) )
))
(declare-datatypes ((array!44770 0))(
  ( (array!44771 (arr!21440 (Array (_ BitVec 32) ValueCell!6730)) (size!21861 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44770)

(declare-fun mapKey!23020 () (_ BitVec 32))

(declare-fun mapRest!23020 () (Array (_ BitVec 32) ValueCell!6730))

(declare-fun mapValue!23020 () ValueCell!6730)

(assert (=> mapNonEmpty!23020 (= (arr!21440 _values!788) (store mapRest!23020 mapKey!23020 mapValue!23020))))

(declare-fun mapIsEmpty!23020 () Bool)

(assert (=> mapIsEmpty!23020 mapRes!23020))

(declare-fun b!815182 () Bool)

(declare-fun e!452038 () Bool)

(assert (=> b!815182 (= e!452038 (not true))))

(declare-datatypes ((tuple2!9446 0))(
  ( (tuple2!9447 (_1!4733 (_ BitVec 64)) (_2!4733 V!24055)) )
))
(declare-datatypes ((List!15319 0))(
  ( (Nil!15316) (Cons!15315 (h!16444 tuple2!9446) (t!21646 List!15319)) )
))
(declare-datatypes ((ListLongMap!8283 0))(
  ( (ListLongMap!8284 (toList!4157 List!15319)) )
))
(declare-fun lt!364952 () ListLongMap!8283)

(declare-fun lt!364951 () ListLongMap!8283)

(assert (=> b!815182 (= lt!364952 lt!364951)))

(declare-datatypes ((Unit!27770 0))(
  ( (Unit!27771) )
))
(declare-fun lt!364953 () Unit!27770)

(declare-fun zeroValueBefore!34 () V!24055)

(declare-datatypes ((array!44772 0))(
  ( (array!44773 (arr!21441 (Array (_ BitVec 32) (_ BitVec 64))) (size!21862 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44772)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24055)

(declare-fun minValue!754 () V!24055)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!322 (array!44772 array!44770 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24055 V!24055 V!24055 V!24055 (_ BitVec 32) Int) Unit!27770)

(assert (=> b!815182 (= lt!364953 (lemmaNoChangeToArrayThenSameMapNoExtras!322 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2206 (array!44772 array!44770 (_ BitVec 32) (_ BitVec 32) V!24055 V!24055 (_ BitVec 32) Int) ListLongMap!8283)

(assert (=> b!815182 (= lt!364951 (getCurrentListMapNoExtraKeys!2206 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815182 (= lt!364952 (getCurrentListMapNoExtraKeys!2206 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815183 () Bool)

(declare-fun res!556787 () Bool)

(assert (=> b!815183 (=> (not res!556787) (not e!452038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44772 (_ BitVec 32)) Bool)

(assert (=> b!815183 (= res!556787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815184 () Bool)

(declare-fun res!556785 () Bool)

(assert (=> b!815184 (=> (not res!556785) (not e!452038))))

(assert (=> b!815184 (= res!556785 (and (= (size!21861 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21862 _keys!976) (size!21861 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!556786 () Bool)

(assert (=> start!70198 (=> (not res!556786) (not e!452038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70198 (= res!556786 (validMask!0 mask!1312))))

(assert (=> start!70198 e!452038))

(assert (=> start!70198 tp_is_empty!14291))

(declare-fun array_inv!17135 (array!44772) Bool)

(assert (=> start!70198 (array_inv!17135 _keys!976)))

(assert (=> start!70198 true))

(declare-fun e!452036 () Bool)

(declare-fun array_inv!17136 (array!44770) Bool)

(assert (=> start!70198 (and (array_inv!17136 _values!788) e!452036)))

(assert (=> start!70198 tp!44460))

(declare-fun b!815185 () Bool)

(declare-fun res!556788 () Bool)

(assert (=> b!815185 (=> (not res!556788) (not e!452038))))

(declare-datatypes ((List!15320 0))(
  ( (Nil!15317) (Cons!15316 (h!16445 (_ BitVec 64)) (t!21647 List!15320)) )
))
(declare-fun arrayNoDuplicates!0 (array!44772 (_ BitVec 32) List!15320) Bool)

(assert (=> b!815185 (= res!556788 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15317))))

(declare-fun b!815186 () Bool)

(assert (=> b!815186 (= e!452036 (and e!452040 mapRes!23020))))

(declare-fun condMapEmpty!23020 () Bool)

(declare-fun mapDefault!23020 () ValueCell!6730)

