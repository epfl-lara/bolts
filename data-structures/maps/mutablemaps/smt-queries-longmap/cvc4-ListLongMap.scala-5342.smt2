; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71406 () Bool)

(assert start!71406)

(declare-fun b_free!13463 () Bool)

(declare-fun b_next!13463 () Bool)

(assert (=> start!71406 (= b_free!13463 (not b_next!13463))))

(declare-fun tp!47164 () Bool)

(declare-fun b_and!22463 () Bool)

(assert (=> start!71406 (= tp!47164 b_and!22463)))

(declare-fun b!828870 () Bool)

(declare-fun res!564843 () Bool)

(declare-fun e!461999 () Bool)

(assert (=> b!828870 (=> (not res!564843) (not e!461999))))

(declare-datatypes ((array!46486 0))(
  ( (array!46487 (arr!22279 (Array (_ BitVec 32) (_ BitVec 64))) (size!22700 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46486)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46486 (_ BitVec 32)) Bool)

(assert (=> b!828870 (= res!564843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24400 () Bool)

(declare-fun mapRes!24400 () Bool)

(assert (=> mapIsEmpty!24400 mapRes!24400))

(declare-fun b!828871 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25231 0))(
  ( (V!25232 (val!7634 Int)) )
))
(declare-datatypes ((ValueCell!7171 0))(
  ( (ValueCellFull!7171 (v!10068 V!25231)) (EmptyCell!7171) )
))
(declare-datatypes ((array!46488 0))(
  ( (array!46489 (arr!22280 (Array (_ BitVec 32) ValueCell!7171)) (size!22701 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46488)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!25231)

(declare-fun e!461997 () Bool)

(declare-fun minValue!754 () V!25231)

(declare-datatypes ((tuple2!10148 0))(
  ( (tuple2!10149 (_1!5084 (_ BitVec 64)) (_2!5084 V!25231)) )
))
(declare-datatypes ((List!15981 0))(
  ( (Nil!15978) (Cons!15977 (h!17106 tuple2!10148) (t!22346 List!15981)) )
))
(declare-datatypes ((ListLongMap!8985 0))(
  ( (ListLongMap!8986 (toList!4508 List!15981)) )
))
(declare-fun lt!375765 () ListLongMap!8985)

(declare-fun getCurrentListMap!2582 (array!46486 array!46488 (_ BitVec 32) (_ BitVec 32) V!25231 V!25231 (_ BitVec 32) Int) ListLongMap!8985)

(declare-fun +!1940 (ListLongMap!8985 tuple2!10148) ListLongMap!8985)

(assert (=> b!828871 (= e!461997 (= (getCurrentListMap!2582 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1940 lt!375765 (tuple2!10149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun zeroValueAfter!34 () V!25231)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!375766 () ListLongMap!8985)

(assert (=> b!828871 (= lt!375766 (getCurrentListMap!2582 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24400 () Bool)

(declare-fun tp!47163 () Bool)

(declare-fun e!461995 () Bool)

(assert (=> mapNonEmpty!24400 (= mapRes!24400 (and tp!47163 e!461995))))

(declare-fun mapRest!24400 () (Array (_ BitVec 32) ValueCell!7171))

(declare-fun mapKey!24400 () (_ BitVec 32))

(declare-fun mapValue!24400 () ValueCell!7171)

(assert (=> mapNonEmpty!24400 (= (arr!22280 _values!788) (store mapRest!24400 mapKey!24400 mapValue!24400))))

(declare-fun b!828872 () Bool)

(declare-fun e!461996 () Bool)

(declare-fun e!461998 () Bool)

(assert (=> b!828872 (= e!461996 (and e!461998 mapRes!24400))))

(declare-fun condMapEmpty!24400 () Bool)

(declare-fun mapDefault!24400 () ValueCell!7171)

