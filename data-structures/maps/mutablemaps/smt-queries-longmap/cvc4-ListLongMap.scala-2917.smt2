; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41670 () Bool)

(assert start!41670)

(declare-fun b_free!11315 () Bool)

(declare-fun b_next!11315 () Bool)

(assert (=> start!41670 (= b_free!11315 (not b_next!11315))))

(declare-fun tp!39946 () Bool)

(declare-fun b_and!19681 () Bool)

(assert (=> start!41670 (= tp!39946 b_and!19681)))

(declare-fun res!278070 () Bool)

(declare-fun e!271756 () Bool)

(assert (=> start!41670 (=> (not res!278070) (not e!271756))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41670 (= res!278070 (validMask!0 mask!1365))))

(assert (=> start!41670 e!271756))

(declare-fun tp_is_empty!12743 () Bool)

(assert (=> start!41670 tp_is_empty!12743))

(assert (=> start!41670 tp!39946))

(assert (=> start!41670 true))

(declare-datatypes ((array!29225 0))(
  ( (array!29226 (arr!14040 (Array (_ BitVec 32) (_ BitVec 64))) (size!14392 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29225)

(declare-fun array_inv!10124 (array!29225) Bool)

(assert (=> start!41670 (array_inv!10124 _keys!1025)))

(declare-datatypes ((V!18095 0))(
  ( (V!18096 (val!6416 Int)) )
))
(declare-datatypes ((ValueCell!6028 0))(
  ( (ValueCellFull!6028 (v!8699 V!18095)) (EmptyCell!6028) )
))
(declare-datatypes ((array!29227 0))(
  ( (array!29228 (arr!14041 (Array (_ BitVec 32) ValueCell!6028)) (size!14393 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29227)

(declare-fun e!271759 () Bool)

(declare-fun array_inv!10125 (array!29227) Bool)

(assert (=> start!41670 (and (array_inv!10125 _values!833) e!271759)))

(declare-fun b!465044 () Bool)

(declare-fun e!271758 () Bool)

(assert (=> b!465044 (= e!271758 tp_is_empty!12743)))

(declare-fun mapNonEmpty!20794 () Bool)

(declare-fun mapRes!20794 () Bool)

(declare-fun tp!39945 () Bool)

(assert (=> mapNonEmpty!20794 (= mapRes!20794 (and tp!39945 e!271758))))

(declare-fun mapKey!20794 () (_ BitVec 32))

(declare-fun mapRest!20794 () (Array (_ BitVec 32) ValueCell!6028))

(declare-fun mapValue!20794 () ValueCell!6028)

(assert (=> mapNonEmpty!20794 (= (arr!14041 _values!833) (store mapRest!20794 mapKey!20794 mapValue!20794))))

(declare-fun b!465045 () Bool)

(assert (=> b!465045 (= e!271756 (not true))))

(declare-datatypes ((tuple2!8388 0))(
  ( (tuple2!8389 (_1!4204 (_ BitVec 64)) (_2!4204 V!18095)) )
))
(declare-datatypes ((List!8512 0))(
  ( (Nil!8509) (Cons!8508 (h!9364 tuple2!8388) (t!14468 List!8512)) )
))
(declare-datatypes ((ListLongMap!7315 0))(
  ( (ListLongMap!7316 (toList!3673 List!8512)) )
))
(declare-fun lt!210025 () ListLongMap!7315)

(declare-fun lt!210023 () ListLongMap!7315)

(assert (=> b!465045 (= lt!210025 lt!210023)))

(declare-fun minValueBefore!38 () V!18095)

(declare-fun zeroValue!794 () V!18095)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13467 0))(
  ( (Unit!13468) )
))
(declare-fun lt!210024 () Unit!13467)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18095)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!36 (array!29225 array!29227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18095 V!18095 V!18095 V!18095 (_ BitVec 32) Int) Unit!13467)

(assert (=> b!465045 (= lt!210024 (lemmaNoChangeToArrayThenSameMapNoExtras!36 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1841 (array!29225 array!29227 (_ BitVec 32) (_ BitVec 32) V!18095 V!18095 (_ BitVec 32) Int) ListLongMap!7315)

(assert (=> b!465045 (= lt!210023 (getCurrentListMapNoExtraKeys!1841 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465045 (= lt!210025 (getCurrentListMapNoExtraKeys!1841 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20794 () Bool)

(assert (=> mapIsEmpty!20794 mapRes!20794))

(declare-fun b!465046 () Bool)

(declare-fun e!271760 () Bool)

(assert (=> b!465046 (= e!271759 (and e!271760 mapRes!20794))))

(declare-fun condMapEmpty!20794 () Bool)

(declare-fun mapDefault!20794 () ValueCell!6028)

