; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70188 () Bool)

(assert start!70188)

(declare-fun b_free!12571 () Bool)

(declare-fun b_next!12571 () Bool)

(assert (=> start!70188 (= b_free!12571 (not b_next!12571))))

(declare-fun tp!44431 () Bool)

(declare-fun b_and!21369 () Bool)

(assert (=> start!70188 (= tp!44431 b_and!21369)))

(declare-fun b!815076 () Bool)

(declare-fun e!451964 () Bool)

(declare-fun tp_is_empty!14281 () Bool)

(assert (=> b!815076 (= e!451964 tp_is_empty!14281)))

(declare-fun b!815077 () Bool)

(declare-fun res!556725 () Bool)

(declare-fun e!451961 () Bool)

(assert (=> b!815077 (=> (not res!556725) (not e!451961))))

(declare-datatypes ((array!44750 0))(
  ( (array!44751 (arr!21430 (Array (_ BitVec 32) (_ BitVec 64))) (size!21851 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44750)

(declare-datatypes ((List!15311 0))(
  ( (Nil!15308) (Cons!15307 (h!16436 (_ BitVec 64)) (t!21638 List!15311)) )
))
(declare-fun arrayNoDuplicates!0 (array!44750 (_ BitVec 32) List!15311) Bool)

(assert (=> b!815077 (= res!556725 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15308))))

(declare-fun b!815078 () Bool)

(assert (=> b!815078 (= e!451961 (not true))))

(declare-datatypes ((V!24043 0))(
  ( (V!24044 (val!7188 Int)) )
))
(declare-datatypes ((tuple2!9438 0))(
  ( (tuple2!9439 (_1!4729 (_ BitVec 64)) (_2!4729 V!24043)) )
))
(declare-datatypes ((List!15312 0))(
  ( (Nil!15309) (Cons!15308 (h!16437 tuple2!9438) (t!21639 List!15312)) )
))
(declare-datatypes ((ListLongMap!8275 0))(
  ( (ListLongMap!8276 (toList!4153 List!15312)) )
))
(declare-fun lt!364908 () ListLongMap!8275)

(declare-fun lt!364907 () ListLongMap!8275)

(assert (=> b!815078 (= lt!364908 lt!364907)))

(declare-fun zeroValueBefore!34 () V!24043)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24043)

(declare-fun minValue!754 () V!24043)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27762 0))(
  ( (Unit!27763) )
))
(declare-fun lt!364906 () Unit!27762)

(declare-datatypes ((ValueCell!6725 0))(
  ( (ValueCellFull!6725 (v!9611 V!24043)) (EmptyCell!6725) )
))
(declare-datatypes ((array!44752 0))(
  ( (array!44753 (arr!21431 (Array (_ BitVec 32) ValueCell!6725)) (size!21852 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44752)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!318 (array!44750 array!44752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24043 V!24043 V!24043 V!24043 (_ BitVec 32) Int) Unit!27762)

(assert (=> b!815078 (= lt!364906 (lemmaNoChangeToArrayThenSameMapNoExtras!318 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2202 (array!44750 array!44752 (_ BitVec 32) (_ BitVec 32) V!24043 V!24043 (_ BitVec 32) Int) ListLongMap!8275)

(assert (=> b!815078 (= lt!364907 (getCurrentListMapNoExtraKeys!2202 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815078 (= lt!364908 (getCurrentListMapNoExtraKeys!2202 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815079 () Bool)

(declare-fun res!556728 () Bool)

(assert (=> b!815079 (=> (not res!556728) (not e!451961))))

(assert (=> b!815079 (= res!556728 (and (= (size!21852 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21851 _keys!976) (size!21852 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815080 () Bool)

(declare-fun e!451963 () Bool)

(declare-fun mapRes!23005 () Bool)

(assert (=> b!815080 (= e!451963 (and e!451964 mapRes!23005))))

(declare-fun condMapEmpty!23005 () Bool)

(declare-fun mapDefault!23005 () ValueCell!6725)

