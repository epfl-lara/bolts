; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70186 () Bool)

(assert start!70186)

(declare-fun b_free!12569 () Bool)

(declare-fun b_next!12569 () Bool)

(assert (=> start!70186 (= b_free!12569 (not b_next!12569))))

(declare-fun tp!44424 () Bool)

(declare-fun b_and!21367 () Bool)

(assert (=> start!70186 (= tp!44424 b_and!21367)))

(declare-fun b!815055 () Bool)

(declare-fun res!556716 () Bool)

(declare-fun e!451949 () Bool)

(assert (=> b!815055 (=> (not res!556716) (not e!451949))))

(declare-datatypes ((array!44746 0))(
  ( (array!44747 (arr!21428 (Array (_ BitVec 32) (_ BitVec 64))) (size!21849 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44746)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24039 0))(
  ( (V!24040 (val!7187 Int)) )
))
(declare-datatypes ((ValueCell!6724 0))(
  ( (ValueCellFull!6724 (v!9610 V!24039)) (EmptyCell!6724) )
))
(declare-datatypes ((array!44748 0))(
  ( (array!44749 (arr!21429 (Array (_ BitVec 32) ValueCell!6724)) (size!21850 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44748)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815055 (= res!556716 (and (= (size!21850 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21849 _keys!976) (size!21850 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815056 () Bool)

(assert (=> b!815056 (= e!451949 (not true))))

(declare-datatypes ((tuple2!9436 0))(
  ( (tuple2!9437 (_1!4728 (_ BitVec 64)) (_2!4728 V!24039)) )
))
(declare-datatypes ((List!15309 0))(
  ( (Nil!15306) (Cons!15305 (h!16434 tuple2!9436) (t!21636 List!15309)) )
))
(declare-datatypes ((ListLongMap!8273 0))(
  ( (ListLongMap!8274 (toList!4152 List!15309)) )
))
(declare-fun lt!364899 () ListLongMap!8273)

(declare-fun lt!364897 () ListLongMap!8273)

(assert (=> b!815056 (= lt!364899 lt!364897)))

(declare-fun zeroValueBefore!34 () V!24039)

(declare-fun zeroValueAfter!34 () V!24039)

(declare-fun minValue!754 () V!24039)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27760 0))(
  ( (Unit!27761) )
))
(declare-fun lt!364898 () Unit!27760)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!317 (array!44746 array!44748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24039 V!24039 V!24039 V!24039 (_ BitVec 32) Int) Unit!27760)

(assert (=> b!815056 (= lt!364898 (lemmaNoChangeToArrayThenSameMapNoExtras!317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2201 (array!44746 array!44748 (_ BitVec 32) (_ BitVec 32) V!24039 V!24039 (_ BitVec 32) Int) ListLongMap!8273)

(assert (=> b!815056 (= lt!364897 (getCurrentListMapNoExtraKeys!2201 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815056 (= lt!364899 (getCurrentListMapNoExtraKeys!2201 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815057 () Bool)

(declare-fun res!556714 () Bool)

(assert (=> b!815057 (=> (not res!556714) (not e!451949))))

(declare-datatypes ((List!15310 0))(
  ( (Nil!15307) (Cons!15306 (h!16435 (_ BitVec 64)) (t!21637 List!15310)) )
))
(declare-fun arrayNoDuplicates!0 (array!44746 (_ BitVec 32) List!15310) Bool)

(assert (=> b!815057 (= res!556714 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15307))))

(declare-fun b!815058 () Bool)

(declare-fun res!556715 () Bool)

(assert (=> b!815058 (=> (not res!556715) (not e!451949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44746 (_ BitVec 32)) Bool)

(assert (=> b!815058 (= res!556715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815059 () Bool)

(declare-fun e!451946 () Bool)

(declare-fun tp_is_empty!14279 () Bool)

(assert (=> b!815059 (= e!451946 tp_is_empty!14279)))

(declare-fun b!815060 () Bool)

(declare-fun e!451947 () Bool)

(assert (=> b!815060 (= e!451947 tp_is_empty!14279)))

(declare-fun mapIsEmpty!23002 () Bool)

(declare-fun mapRes!23002 () Bool)

(assert (=> mapIsEmpty!23002 mapRes!23002))

(declare-fun mapNonEmpty!23002 () Bool)

(declare-fun tp!44425 () Bool)

(assert (=> mapNonEmpty!23002 (= mapRes!23002 (and tp!44425 e!451947))))

(declare-fun mapValue!23002 () ValueCell!6724)

(declare-fun mapRest!23002 () (Array (_ BitVec 32) ValueCell!6724))

(declare-fun mapKey!23002 () (_ BitVec 32))

(assert (=> mapNonEmpty!23002 (= (arr!21429 _values!788) (store mapRest!23002 mapKey!23002 mapValue!23002))))

(declare-fun b!815061 () Bool)

(declare-fun e!451948 () Bool)

(assert (=> b!815061 (= e!451948 (and e!451946 mapRes!23002))))

(declare-fun condMapEmpty!23002 () Bool)

(declare-fun mapDefault!23002 () ValueCell!6724)

