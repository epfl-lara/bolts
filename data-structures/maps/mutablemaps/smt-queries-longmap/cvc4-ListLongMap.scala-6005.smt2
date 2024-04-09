; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77914 () Bool)

(assert start!77914)

(declare-fun b_free!16445 () Bool)

(declare-fun b_next!16445 () Bool)

(assert (=> start!77914 (= b_free!16445 (not b_next!16445))))

(declare-fun tp!57601 () Bool)

(declare-fun b_and!27031 () Bool)

(assert (=> start!77914 (= tp!57601 b_and!27031)))

(declare-fun b!909283 () Bool)

(declare-fun e!509726 () Bool)

(assert (=> b!909283 (= e!509726 false)))

(declare-datatypes ((V!30115 0))(
  ( (V!30116 (val!9482 Int)) )
))
(declare-datatypes ((ValueCell!8950 0))(
  ( (ValueCellFull!8950 (v!11989 V!30115)) (EmptyCell!8950) )
))
(declare-datatypes ((array!53744 0))(
  ( (array!53745 (arr!25826 (Array (_ BitVec 32) ValueCell!8950)) (size!26286 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53744)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30115)

(declare-datatypes ((array!53746 0))(
  ( (array!53747 (arr!25827 (Array (_ BitVec 32) (_ BitVec 64))) (size!26287 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53746)

(declare-fun lt!409939 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30115)

(declare-datatypes ((tuple2!12384 0))(
  ( (tuple2!12385 (_1!6202 (_ BitVec 64)) (_2!6202 V!30115)) )
))
(declare-datatypes ((List!18242 0))(
  ( (Nil!18239) (Cons!18238 (h!19384 tuple2!12384) (t!25831 List!18242)) )
))
(declare-datatypes ((ListLongMap!11095 0))(
  ( (ListLongMap!11096 (toList!5563 List!18242)) )
))
(declare-fun contains!4570 (ListLongMap!11095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2793 (array!53746 array!53744 (_ BitVec 32) (_ BitVec 32) V!30115 V!30115 (_ BitVec 32) Int) ListLongMap!11095)

(assert (=> b!909283 (= lt!409939 (contains!4570 (getCurrentListMap!2793 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909284 () Bool)

(declare-fun res!613822 () Bool)

(assert (=> b!909284 (=> (not res!613822) (not e!509726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53746 (_ BitVec 32)) Bool)

(assert (=> b!909284 (= res!613822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30010 () Bool)

(declare-fun mapRes!30010 () Bool)

(declare-fun tp!57600 () Bool)

(declare-fun e!509729 () Bool)

(assert (=> mapNonEmpty!30010 (= mapRes!30010 (and tp!57600 e!509729))))

(declare-fun mapValue!30010 () ValueCell!8950)

(declare-fun mapKey!30010 () (_ BitVec 32))

(declare-fun mapRest!30010 () (Array (_ BitVec 32) ValueCell!8950))

(assert (=> mapNonEmpty!30010 (= (arr!25826 _values!1152) (store mapRest!30010 mapKey!30010 mapValue!30010))))

(declare-fun b!909285 () Bool)

(declare-fun res!613821 () Bool)

(assert (=> b!909285 (=> (not res!613821) (not e!509726))))

(declare-datatypes ((List!18243 0))(
  ( (Nil!18240) (Cons!18239 (h!19385 (_ BitVec 64)) (t!25832 List!18243)) )
))
(declare-fun arrayNoDuplicates!0 (array!53746 (_ BitVec 32) List!18243) Bool)

(assert (=> b!909285 (= res!613821 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18240))))

(declare-fun mapIsEmpty!30010 () Bool)

(assert (=> mapIsEmpty!30010 mapRes!30010))

(declare-fun b!909286 () Bool)

(declare-fun e!509728 () Bool)

(declare-fun e!509725 () Bool)

(assert (=> b!909286 (= e!509728 (and e!509725 mapRes!30010))))

(declare-fun condMapEmpty!30010 () Bool)

(declare-fun mapDefault!30010 () ValueCell!8950)

