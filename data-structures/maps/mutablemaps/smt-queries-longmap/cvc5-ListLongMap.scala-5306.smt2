; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71080 () Bool)

(assert start!71080)

(declare-fun b_free!13243 () Bool)

(declare-fun b_next!13243 () Bool)

(assert (=> start!71080 (= b_free!13243 (not b_next!13243))))

(declare-fun tp!46485 () Bool)

(declare-fun b_and!22175 () Bool)

(assert (=> start!71080 (= tp!46485 b_and!22175)))

(declare-fun b!824949 () Bool)

(declare-fun res!562477 () Bool)

(declare-fun e!459113 () Bool)

(assert (=> b!824949 (=> (not res!562477) (not e!459113))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24939 0))(
  ( (V!24940 (val!7524 Int)) )
))
(declare-datatypes ((ValueCell!7061 0))(
  ( (ValueCellFull!7061 (v!9953 V!24939)) (EmptyCell!7061) )
))
(declare-datatypes ((array!46054 0))(
  ( (array!46055 (arr!22069 (Array (_ BitVec 32) ValueCell!7061)) (size!22490 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46054)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((array!46056 0))(
  ( (array!46057 (arr!22070 (Array (_ BitVec 32) (_ BitVec 64))) (size!22491 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46056)

(assert (=> b!824949 (= res!562477 (and (= (size!22490 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22491 _keys!976) (size!22490 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824951 () Bool)

(declare-fun e!459116 () Bool)

(declare-fun tp_is_empty!14953 () Bool)

(assert (=> b!824951 (= e!459116 tp_is_empty!14953)))

(declare-fun b!824952 () Bool)

(declare-fun e!459114 () Bool)

(assert (=> b!824952 (= e!459114 true)))

(declare-datatypes ((tuple2!9956 0))(
  ( (tuple2!9957 (_1!4988 (_ BitVec 64)) (_2!4988 V!24939)) )
))
(declare-datatypes ((List!15803 0))(
  ( (Nil!15800) (Cons!15799 (h!16928 tuple2!9956) (t!22156 List!15803)) )
))
(declare-datatypes ((ListLongMap!8793 0))(
  ( (ListLongMap!8794 (toList!4412 List!15803)) )
))
(declare-fun lt!372164 () ListLongMap!8793)

(declare-fun lt!372162 () tuple2!9956)

(declare-fun lt!372160 () tuple2!9956)

(declare-fun lt!372163 () ListLongMap!8793)

(declare-fun +!1874 (ListLongMap!8793 tuple2!9956) ListLongMap!8793)

(assert (=> b!824952 (= lt!372164 (+!1874 (+!1874 lt!372163 lt!372160) lt!372162))))

(declare-fun lt!372156 () ListLongMap!8793)

(declare-fun lt!372158 () ListLongMap!8793)

(declare-fun lt!372155 () ListLongMap!8793)

(assert (=> b!824952 (and (= lt!372156 lt!372158) (= lt!372155 lt!372158) (= lt!372155 lt!372156))))

(declare-fun lt!372165 () ListLongMap!8793)

(assert (=> b!824952 (= lt!372158 (+!1874 lt!372165 lt!372160))))

(declare-fun lt!372159 () ListLongMap!8793)

(assert (=> b!824952 (= lt!372156 (+!1874 lt!372159 lt!372160))))

(declare-datatypes ((Unit!28265 0))(
  ( (Unit!28266) )
))
(declare-fun lt!372166 () Unit!28265)

(declare-fun zeroValueBefore!34 () V!24939)

(declare-fun zeroValueAfter!34 () V!24939)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!202 (ListLongMap!8793 (_ BitVec 64) V!24939 V!24939) Unit!28265)

(assert (=> b!824952 (= lt!372166 (addSameAsAddTwiceSameKeyDiffValues!202 lt!372159 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459119 () Bool)

(assert (=> b!824952 e!459119))

(declare-fun res!562481 () Bool)

(assert (=> b!824952 (=> (not res!562481) (not e!459119))))

(declare-fun lt!372161 () ListLongMap!8793)

(assert (=> b!824952 (= res!562481 (= lt!372161 lt!372165))))

(declare-fun lt!372154 () tuple2!9956)

(assert (=> b!824952 (= lt!372165 (+!1874 lt!372159 lt!372154))))

(assert (=> b!824952 (= lt!372159 (+!1874 lt!372163 lt!372162))))

(assert (=> b!824952 (= lt!372160 (tuple2!9957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459115 () Bool)

(assert (=> b!824952 e!459115))

(declare-fun res!562476 () Bool)

(assert (=> b!824952 (=> (not res!562476) (not e!459115))))

(assert (=> b!824952 (= res!562476 (= lt!372161 (+!1874 (+!1874 lt!372163 lt!372154) lt!372162)))))

(declare-fun minValue!754 () V!24939)

(assert (=> b!824952 (= lt!372162 (tuple2!9957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!824952 (= lt!372154 (tuple2!9957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2524 (array!46056 array!46054 (_ BitVec 32) (_ BitVec 32) V!24939 V!24939 (_ BitVec 32) Int) ListLongMap!8793)

(assert (=> b!824952 (= lt!372155 (getCurrentListMap!2524 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824952 (= lt!372161 (getCurrentListMap!2524 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824953 () Bool)

(declare-fun lt!372167 () ListLongMap!8793)

(assert (=> b!824953 (= e!459119 (= lt!372155 (+!1874 (+!1874 lt!372167 lt!372162) lt!372160)))))

(declare-fun b!824954 () Bool)

(declare-fun res!562479 () Bool)

(assert (=> b!824954 (=> (not res!562479) (not e!459113))))

(declare-datatypes ((List!15804 0))(
  ( (Nil!15801) (Cons!15800 (h!16929 (_ BitVec 64)) (t!22157 List!15804)) )
))
(declare-fun arrayNoDuplicates!0 (array!46056 (_ BitVec 32) List!15804) Bool)

(assert (=> b!824954 (= res!562479 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15801))))

(declare-fun b!824955 () Bool)

(declare-fun e!459112 () Bool)

(declare-fun e!459118 () Bool)

(declare-fun mapRes!24052 () Bool)

(assert (=> b!824955 (= e!459112 (and e!459118 mapRes!24052))))

(declare-fun condMapEmpty!24052 () Bool)

(declare-fun mapDefault!24052 () ValueCell!7061)

