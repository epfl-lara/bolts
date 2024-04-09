; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70450 () Bool)

(assert start!70450)

(declare-fun b_free!12769 () Bool)

(declare-fun b_next!12769 () Bool)

(assert (=> start!70450 (= b_free!12769 (not b_next!12769))))

(declare-fun tp!45037 () Bool)

(declare-fun b_and!21607 () Bool)

(assert (=> start!70450 (= tp!45037 b_and!21607)))

(declare-fun b!817884 () Bool)

(declare-fun e!453971 () Bool)

(declare-fun e!453969 () Bool)

(assert (=> b!817884 (= e!453971 (not e!453969))))

(declare-fun res!558332 () Bool)

(assert (=> b!817884 (=> res!558332 e!453969)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817884 (= res!558332 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24307 0))(
  ( (V!24308 (val!7287 Int)) )
))
(declare-datatypes ((tuple2!9590 0))(
  ( (tuple2!9591 (_1!4805 (_ BitVec 64)) (_2!4805 V!24307)) )
))
(declare-datatypes ((List!15457 0))(
  ( (Nil!15454) (Cons!15453 (h!16582 tuple2!9590) (t!21792 List!15457)) )
))
(declare-datatypes ((ListLongMap!8427 0))(
  ( (ListLongMap!8428 (toList!4229 List!15457)) )
))
(declare-fun lt!366477 () ListLongMap!8427)

(declare-fun lt!366476 () ListLongMap!8427)

(assert (=> b!817884 (= lt!366477 lt!366476)))

(declare-fun zeroValueBefore!34 () V!24307)

(declare-datatypes ((array!45134 0))(
  ( (array!45135 (arr!21618 (Array (_ BitVec 32) (_ BitVec 64))) (size!22039 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45134)

(declare-datatypes ((Unit!27910 0))(
  ( (Unit!27911) )
))
(declare-fun lt!366475 () Unit!27910)

(declare-fun zeroValueAfter!34 () V!24307)

(declare-fun minValue!754 () V!24307)

(declare-datatypes ((ValueCell!6824 0))(
  ( (ValueCellFull!6824 (v!9712 V!24307)) (EmptyCell!6824) )
))
(declare-datatypes ((array!45136 0))(
  ( (array!45137 (arr!21619 (Array (_ BitVec 32) ValueCell!6824)) (size!22040 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45136)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!390 (array!45134 array!45136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24307 V!24307 V!24307 V!24307 (_ BitVec 32) Int) Unit!27910)

(assert (=> b!817884 (= lt!366475 (lemmaNoChangeToArrayThenSameMapNoExtras!390 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2274 (array!45134 array!45136 (_ BitVec 32) (_ BitVec 32) V!24307 V!24307 (_ BitVec 32) Int) ListLongMap!8427)

(assert (=> b!817884 (= lt!366476 (getCurrentListMapNoExtraKeys!2274 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817884 (= lt!366477 (getCurrentListMapNoExtraKeys!2274 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23314 () Bool)

(declare-fun mapRes!23314 () Bool)

(declare-fun tp!45036 () Bool)

(declare-fun e!453968 () Bool)

(assert (=> mapNonEmpty!23314 (= mapRes!23314 (and tp!45036 e!453968))))

(declare-fun mapKey!23314 () (_ BitVec 32))

(declare-fun mapRest!23314 () (Array (_ BitVec 32) ValueCell!6824))

(declare-fun mapValue!23314 () ValueCell!6824)

(assert (=> mapNonEmpty!23314 (= (arr!21619 _values!788) (store mapRest!23314 mapKey!23314 mapValue!23314))))

(declare-fun mapIsEmpty!23314 () Bool)

(assert (=> mapIsEmpty!23314 mapRes!23314))

(declare-fun b!817885 () Bool)

(declare-fun e!453970 () Bool)

(declare-fun tp_is_empty!14479 () Bool)

(assert (=> b!817885 (= e!453970 tp_is_empty!14479)))

(declare-fun b!817886 () Bool)

(declare-fun e!453967 () Bool)

(assert (=> b!817886 (= e!453967 (and e!453970 mapRes!23314))))

(declare-fun condMapEmpty!23314 () Bool)

(declare-fun mapDefault!23314 () ValueCell!6824)

