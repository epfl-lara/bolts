; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71340 () Bool)

(assert start!71340)

(declare-fun b_free!13433 () Bool)

(declare-fun b_next!13433 () Bool)

(assert (=> start!71340 (= b_free!13433 (not b_next!13433))))

(declare-fun tp!47068 () Bool)

(declare-fun b_and!22409 () Bool)

(assert (=> start!71340 (= tp!47068 b_and!22409)))

(declare-fun b!828113 () Bool)

(declare-fun e!461461 () Bool)

(declare-fun tp_is_empty!15143 () Bool)

(assert (=> b!828113 (= e!461461 tp_is_empty!15143)))

(declare-fun b!828114 () Bool)

(declare-fun e!461459 () Bool)

(assert (=> b!828114 (= e!461459 true)))

(declare-datatypes ((V!25191 0))(
  ( (V!25192 (val!7619 Int)) )
))
(declare-datatypes ((tuple2!10120 0))(
  ( (tuple2!10121 (_1!5070 (_ BitVec 64)) (_2!5070 V!25191)) )
))
(declare-datatypes ((List!15957 0))(
  ( (Nil!15954) (Cons!15953 (h!17082 tuple2!10120) (t!22318 List!15957)) )
))
(declare-datatypes ((ListLongMap!8957 0))(
  ( (ListLongMap!8958 (toList!4494 List!15957)) )
))
(declare-fun lt!375219 () ListLongMap!8957)

(declare-datatypes ((array!46424 0))(
  ( (array!46425 (arr!22250 (Array (_ BitVec 32) (_ BitVec 64))) (size!22671 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46424)

(declare-fun zeroValueAfter!34 () V!25191)

(declare-datatypes ((ValueCell!7156 0))(
  ( (ValueCellFull!7156 (v!10051 V!25191)) (EmptyCell!7156) )
))
(declare-datatypes ((array!46426 0))(
  ( (array!46427 (arr!22251 (Array (_ BitVec 32) ValueCell!7156)) (size!22672 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46426)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!25191)

(declare-fun getCurrentListMap!2569 (array!46424 array!46426 (_ BitVec 32) (_ BitVec 32) V!25191 V!25191 (_ BitVec 32) Int) ListLongMap!8957)

(assert (=> b!828114 (= lt!375219 (getCurrentListMap!2569 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25191)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!375220 () ListLongMap!8957)

(declare-fun +!1927 (ListLongMap!8957 tuple2!10120) ListLongMap!8957)

(assert (=> b!828114 (= lt!375220 (+!1927 (getCurrentListMap!2569 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!10121 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!828115 () Bool)

(declare-fun res!564426 () Bool)

(declare-fun e!461462 () Bool)

(assert (=> b!828115 (=> (not res!564426) (not e!461462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46424 (_ BitVec 32)) Bool)

(assert (=> b!828115 (= res!564426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828116 () Bool)

(declare-fun e!461463 () Bool)

(assert (=> b!828116 (= e!461463 tp_is_empty!15143)))

(declare-fun b!828117 () Bool)

(declare-fun e!461460 () Bool)

(declare-fun mapRes!24349 () Bool)

(assert (=> b!828117 (= e!461460 (and e!461463 mapRes!24349))))

(declare-fun condMapEmpty!24349 () Bool)

(declare-fun mapDefault!24349 () ValueCell!7156)

