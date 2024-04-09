; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70462 () Bool)

(assert start!70462)

(declare-fun b_free!12781 () Bool)

(declare-fun b_next!12781 () Bool)

(assert (=> start!70462 (= b_free!12781 (not b_next!12781))))

(declare-fun tp!45072 () Bool)

(declare-fun b_and!21619 () Bool)

(assert (=> start!70462 (= tp!45072 b_and!21619)))

(declare-fun b!818028 () Bool)

(declare-fun e!454079 () Bool)

(assert (=> b!818028 (= e!454079 true)))

(declare-datatypes ((V!24323 0))(
  ( (V!24324 (val!7293 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24323)

(declare-datatypes ((array!45156 0))(
  ( (array!45157 (arr!21629 (Array (_ BitVec 32) (_ BitVec 64))) (size!22050 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45156)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24323)

(declare-datatypes ((ValueCell!6830 0))(
  ( (ValueCellFull!6830 (v!9718 V!24323)) (EmptyCell!6830) )
))
(declare-datatypes ((array!45158 0))(
  ( (array!45159 (arr!21630 (Array (_ BitVec 32) ValueCell!6830)) (size!22051 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45158)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9598 0))(
  ( (tuple2!9599 (_1!4809 (_ BitVec 64)) (_2!4809 V!24323)) )
))
(declare-datatypes ((List!15464 0))(
  ( (Nil!15461) (Cons!15460 (h!16589 tuple2!9598) (t!21799 List!15464)) )
))
(declare-datatypes ((ListLongMap!8435 0))(
  ( (ListLongMap!8436 (toList!4233 List!15464)) )
))
(declare-fun lt!366549 () ListLongMap!8435)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2394 (array!45156 array!45158 (_ BitVec 32) (_ BitVec 32) V!24323 V!24323 (_ BitVec 32) Int) ListLongMap!8435)

(assert (=> b!818028 (= lt!366549 (getCurrentListMap!2394 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818029 () Bool)

(declare-fun e!454075 () Bool)

(declare-fun tp_is_empty!14491 () Bool)

(assert (=> b!818029 (= e!454075 tp_is_empty!14491)))

(declare-fun b!818030 () Bool)

(declare-fun e!454080 () Bool)

(assert (=> b!818030 (= e!454080 (not e!454079))))

(declare-fun res!558422 () Bool)

(assert (=> b!818030 (=> res!558422 e!454079)))

(assert (=> b!818030 (= res!558422 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366546 () ListLongMap!8435)

(declare-fun lt!366548 () ListLongMap!8435)

(assert (=> b!818030 (= lt!366546 lt!366548)))

(declare-fun zeroValueAfter!34 () V!24323)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27918 0))(
  ( (Unit!27919) )
))
(declare-fun lt!366547 () Unit!27918)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!394 (array!45156 array!45158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24323 V!24323 V!24323 V!24323 (_ BitVec 32) Int) Unit!27918)

(assert (=> b!818030 (= lt!366547 (lemmaNoChangeToArrayThenSameMapNoExtras!394 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2278 (array!45156 array!45158 (_ BitVec 32) (_ BitVec 32) V!24323 V!24323 (_ BitVec 32) Int) ListLongMap!8435)

(assert (=> b!818030 (= lt!366548 (getCurrentListMapNoExtraKeys!2278 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818030 (= lt!366546 (getCurrentListMapNoExtraKeys!2278 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818031 () Bool)

(declare-fun res!558421 () Bool)

(assert (=> b!818031 (=> (not res!558421) (not e!454080))))

(assert (=> b!818031 (= res!558421 (and (= (size!22051 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22050 _keys!976) (size!22051 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818032 () Bool)

(declare-fun e!454077 () Bool)

(declare-fun mapRes!23332 () Bool)

(assert (=> b!818032 (= e!454077 (and e!454075 mapRes!23332))))

(declare-fun condMapEmpty!23332 () Bool)

(declare-fun mapDefault!23332 () ValueCell!6830)

