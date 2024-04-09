; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20106 () Bool)

(assert start!20106)

(declare-fun b_free!4753 () Bool)

(declare-fun b_next!4753 () Bool)

(assert (=> start!20106 (= b_free!4753 (not b_next!4753))))

(declare-fun tp!17290 () Bool)

(declare-fun b_and!11517 () Bool)

(assert (=> start!20106 (= tp!17290 b_and!11517)))

(declare-fun b!196800 () Bool)

(declare-fun res!92966 () Bool)

(declare-fun e!129608 () Bool)

(assert (=> b!196800 (=> (not res!92966) (not e!129608))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196800 (= res!92966 (validKeyInArray!0 k!843))))

(declare-fun res!92968 () Bool)

(assert (=> start!20106 (=> (not res!92968) (not e!129608))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20106 (= res!92968 (validMask!0 mask!1149))))

(assert (=> start!20106 e!129608))

(declare-datatypes ((V!5793 0))(
  ( (V!5794 (val!2349 Int)) )
))
(declare-datatypes ((ValueCell!1961 0))(
  ( (ValueCellFull!1961 (v!4315 V!5793)) (EmptyCell!1961) )
))
(declare-datatypes ((array!8472 0))(
  ( (array!8473 (arr!3986 (Array (_ BitVec 32) ValueCell!1961)) (size!4311 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8472)

(declare-fun e!129607 () Bool)

(declare-fun array_inv!2591 (array!8472) Bool)

(assert (=> start!20106 (and (array_inv!2591 _values!649) e!129607)))

(assert (=> start!20106 true))

(declare-fun tp_is_empty!4609 () Bool)

(assert (=> start!20106 tp_is_empty!4609))

(declare-datatypes ((array!8474 0))(
  ( (array!8475 (arr!3987 (Array (_ BitVec 32) (_ BitVec 64))) (size!4312 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8474)

(declare-fun array_inv!2592 (array!8474) Bool)

(assert (=> start!20106 (array_inv!2592 _keys!825)))

(assert (=> start!20106 tp!17290))

(declare-fun b!196801 () Bool)

(declare-fun res!92967 () Bool)

(assert (=> b!196801 (=> (not res!92967) (not e!129608))))

(declare-datatypes ((List!2510 0))(
  ( (Nil!2507) (Cons!2506 (h!3148 (_ BitVec 64)) (t!7449 List!2510)) )
))
(declare-fun arrayNoDuplicates!0 (array!8474 (_ BitVec 32) List!2510) Bool)

(assert (=> b!196801 (= res!92967 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2507))))

(declare-fun mapNonEmpty!7982 () Bool)

(declare-fun mapRes!7982 () Bool)

(declare-fun tp!17291 () Bool)

(declare-fun e!129609 () Bool)

(assert (=> mapNonEmpty!7982 (= mapRes!7982 (and tp!17291 e!129609))))

(declare-fun mapKey!7982 () (_ BitVec 32))

(declare-fun mapRest!7982 () (Array (_ BitVec 32) ValueCell!1961))

(declare-fun mapValue!7982 () ValueCell!1961)

(assert (=> mapNonEmpty!7982 (= (arr!3986 _values!649) (store mapRest!7982 mapKey!7982 mapValue!7982))))

(declare-fun b!196802 () Bool)

(declare-fun e!129610 () Bool)

(assert (=> b!196802 (= e!129610 tp_is_empty!4609)))

(declare-fun b!196803 () Bool)

(assert (=> b!196803 (= e!129609 tp_is_empty!4609)))

(declare-fun b!196804 () Bool)

(declare-fun res!92970 () Bool)

(assert (=> b!196804 (=> (not res!92970) (not e!129608))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196804 (= res!92970 (and (= (size!4311 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4312 _keys!825) (size!4311 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7982 () Bool)

(assert (=> mapIsEmpty!7982 mapRes!7982))

(declare-fun b!196805 () Bool)

(assert (=> b!196805 (= e!129608 false)))

(declare-datatypes ((tuple2!3574 0))(
  ( (tuple2!3575 (_1!1797 (_ BitVec 64)) (_2!1797 V!5793)) )
))
(declare-datatypes ((List!2511 0))(
  ( (Nil!2508) (Cons!2507 (h!3149 tuple2!3574) (t!7450 List!2511)) )
))
(declare-datatypes ((ListLongMap!2501 0))(
  ( (ListLongMap!2502 (toList!1266 List!2511)) )
))
(declare-fun lt!97681 () ListLongMap!2501)

(declare-fun zeroValue!615 () V!5793)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5793)

(declare-fun getCurrentListMapNoExtraKeys!223 (array!8474 array!8472 (_ BitVec 32) (_ BitVec 32) V!5793 V!5793 (_ BitVec 32) Int) ListLongMap!2501)

(assert (=> b!196805 (= lt!97681 (getCurrentListMapNoExtraKeys!223 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!196806 () Bool)

(declare-fun res!92965 () Bool)

(assert (=> b!196806 (=> (not res!92965) (not e!129608))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196806 (= res!92965 (= (select (arr!3987 _keys!825) i!601) k!843))))

(declare-fun b!196807 () Bool)

(declare-fun res!92969 () Bool)

(assert (=> b!196807 (=> (not res!92969) (not e!129608))))

(assert (=> b!196807 (= res!92969 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4312 _keys!825))))))

(declare-fun b!196808 () Bool)

(assert (=> b!196808 (= e!129607 (and e!129610 mapRes!7982))))

(declare-fun condMapEmpty!7982 () Bool)

(declare-fun mapDefault!7982 () ValueCell!1961)

