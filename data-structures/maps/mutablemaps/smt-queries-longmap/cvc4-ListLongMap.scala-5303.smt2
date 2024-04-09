; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71050 () Bool)

(assert start!71050)

(declare-fun b_free!13229 () Bool)

(declare-fun b_next!13229 () Bool)

(assert (=> start!71050 (= b_free!13229 (not b_next!13229))))

(declare-fun tp!46440 () Bool)

(declare-fun b_and!22151 () Bool)

(assert (=> start!71050 (= tp!46440 b_and!22151)))

(declare-fun res!562313 () Bool)

(declare-fun e!458891 () Bool)

(assert (=> start!71050 (=> (not res!562313) (not e!458891))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71050 (= res!562313 (validMask!0 mask!1312))))

(assert (=> start!71050 e!458891))

(declare-fun tp_is_empty!14939 () Bool)

(assert (=> start!71050 tp_is_empty!14939))

(declare-datatypes ((array!46024 0))(
  ( (array!46025 (arr!22055 (Array (_ BitVec 32) (_ BitVec 64))) (size!22476 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46024)

(declare-fun array_inv!17577 (array!46024) Bool)

(assert (=> start!71050 (array_inv!17577 _keys!976)))

(assert (=> start!71050 true))

(declare-datatypes ((V!24919 0))(
  ( (V!24920 (val!7517 Int)) )
))
(declare-datatypes ((ValueCell!7054 0))(
  ( (ValueCellFull!7054 (v!9946 V!24919)) (EmptyCell!7054) )
))
(declare-datatypes ((array!46026 0))(
  ( (array!46027 (arr!22056 (Array (_ BitVec 32) ValueCell!7054)) (size!22477 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46026)

(declare-fun e!458890 () Bool)

(declare-fun array_inv!17578 (array!46026) Bool)

(assert (=> start!71050 (and (array_inv!17578 _values!788) e!458890)))

(assert (=> start!71050 tp!46440))

(declare-fun b!824629 () Bool)

(declare-fun e!458893 () Bool)

(assert (=> b!824629 (= e!458893 true)))

(declare-fun zeroValueBefore!34 () V!24919)

(declare-datatypes ((tuple2!9942 0))(
  ( (tuple2!9943 (_1!4981 (_ BitVec 64)) (_2!4981 V!24919)) )
))
(declare-datatypes ((List!15792 0))(
  ( (Nil!15789) (Cons!15788 (h!16917 tuple2!9942) (t!22143 List!15792)) )
))
(declare-datatypes ((ListLongMap!8779 0))(
  ( (ListLongMap!8780 (toList!4405 List!15792)) )
))
(declare-fun lt!371946 () ListLongMap!8779)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24919)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2517 (array!46024 array!46026 (_ BitVec 32) (_ BitVec 32) V!24919 V!24919 (_ BitVec 32) Int) ListLongMap!8779)

(assert (=> b!824629 (= lt!371946 (getCurrentListMap!2517 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824630 () Bool)

(assert (=> b!824630 (= e!458891 (not e!458893))))

(declare-fun res!562312 () Bool)

(assert (=> b!824630 (=> res!562312 e!458893)))

(assert (=> b!824630 (= res!562312 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371947 () ListLongMap!8779)

(declare-fun lt!371944 () ListLongMap!8779)

(assert (=> b!824630 (= lt!371947 lt!371944)))

(declare-datatypes ((Unit!28252 0))(
  ( (Unit!28253) )
))
(declare-fun lt!371945 () Unit!28252)

(declare-fun zeroValueAfter!34 () V!24919)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!541 (array!46024 array!46026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24919 V!24919 V!24919 V!24919 (_ BitVec 32) Int) Unit!28252)

(assert (=> b!824630 (= lt!371945 (lemmaNoChangeToArrayThenSameMapNoExtras!541 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2425 (array!46024 array!46026 (_ BitVec 32) (_ BitVec 32) V!24919 V!24919 (_ BitVec 32) Int) ListLongMap!8779)

(assert (=> b!824630 (= lt!371944 (getCurrentListMapNoExtraKeys!2425 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824630 (= lt!371947 (getCurrentListMapNoExtraKeys!2425 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24028 () Bool)

(declare-fun mapRes!24028 () Bool)

(assert (=> mapIsEmpty!24028 mapRes!24028))

(declare-fun b!824631 () Bool)

(declare-fun res!562309 () Bool)

(assert (=> b!824631 (=> (not res!562309) (not e!458891))))

(assert (=> b!824631 (= res!562309 (and (= (size!22477 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22476 _keys!976) (size!22477 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824632 () Bool)

(declare-fun e!458892 () Bool)

(assert (=> b!824632 (= e!458890 (and e!458892 mapRes!24028))))

(declare-fun condMapEmpty!24028 () Bool)

(declare-fun mapDefault!24028 () ValueCell!7054)

