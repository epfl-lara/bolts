; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4088 () Bool)

(assert start!4088)

(declare-fun b_free!995 () Bool)

(declare-fun b_next!995 () Bool)

(assert (=> start!4088 (= b_free!995 (not b_next!995))))

(declare-fun tp!4404 () Bool)

(declare-fun b_and!1807 () Bool)

(assert (=> start!4088 (= tp!4404 b_and!1807)))

(declare-fun mapNonEmpty!1552 () Bool)

(declare-fun mapRes!1552 () Bool)

(declare-fun tp!4405 () Bool)

(declare-fun e!19492 () Bool)

(assert (=> mapNonEmpty!1552 (= mapRes!1552 (and tp!4405 e!19492))))

(declare-datatypes ((V!1623 0))(
  ( (V!1624 (val!701 Int)) )
))
(declare-datatypes ((ValueCell!475 0))(
  ( (ValueCellFull!475 (v!1790 V!1623)) (EmptyCell!475) )
))
(declare-fun mapValue!1552 () ValueCell!475)

(declare-fun mapKey!1552 () (_ BitVec 32))

(declare-datatypes ((array!1915 0))(
  ( (array!1916 (arr!911 (Array (_ BitVec 32) ValueCell!475)) (size!1012 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1915)

(declare-fun mapRest!1552 () (Array (_ BitVec 32) ValueCell!475))

(assert (=> mapNonEmpty!1552 (= (arr!911 _values!1501) (store mapRest!1552 mapKey!1552 mapValue!1552))))

(declare-fun b!30345 () Bool)

(declare-fun res!18260 () Bool)

(declare-fun e!19491 () Bool)

(assert (=> b!30345 (=> (not res!18260) (not e!19491))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1917 0))(
  ( (array!1918 (arr!912 (Array (_ BitVec 32) (_ BitVec 64))) (size!1013 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1917)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1623)

(declare-fun minValue!1443 () V!1623)

(declare-datatypes ((tuple2!1144 0))(
  ( (tuple2!1145 (_1!582 (_ BitVec 64)) (_2!582 V!1623)) )
))
(declare-datatypes ((List!748 0))(
  ( (Nil!745) (Cons!744 (h!1311 tuple2!1144) (t!3443 List!748)) )
))
(declare-datatypes ((ListLongMap!725 0))(
  ( (ListLongMap!726 (toList!378 List!748)) )
))
(declare-fun contains!315 (ListLongMap!725 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!205 (array!1917 array!1915 (_ BitVec 32) (_ BitVec 32) V!1623 V!1623 (_ BitVec 32) Int) ListLongMap!725)

(assert (=> b!30345 (= res!18260 (not (contains!315 (getCurrentListMap!205 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30346 () Bool)

(declare-fun res!18257 () Bool)

(assert (=> b!30346 (=> (not res!18257) (not e!19491))))

(declare-datatypes ((List!749 0))(
  ( (Nil!746) (Cons!745 (h!1312 (_ BitVec 64)) (t!3444 List!749)) )
))
(declare-fun arrayNoDuplicates!0 (array!1917 (_ BitVec 32) List!749) Bool)

(assert (=> b!30346 (= res!18257 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!746))))

(declare-fun mapIsEmpty!1552 () Bool)

(assert (=> mapIsEmpty!1552 mapRes!1552))

(declare-fun b!30347 () Bool)

(declare-fun res!18261 () Bool)

(assert (=> b!30347 (=> (not res!18261) (not e!19491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1917 (_ BitVec 32)) Bool)

(assert (=> b!30347 (= res!18261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!18258 () Bool)

(assert (=> start!4088 (=> (not res!18258) (not e!19491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4088 (= res!18258 (validMask!0 mask!2294))))

(assert (=> start!4088 e!19491))

(assert (=> start!4088 true))

(assert (=> start!4088 tp!4404))

(declare-fun e!19490 () Bool)

(declare-fun array_inv!611 (array!1915) Bool)

(assert (=> start!4088 (and (array_inv!611 _values!1501) e!19490)))

(declare-fun array_inv!612 (array!1917) Bool)

(assert (=> start!4088 (array_inv!612 _keys!1833)))

(declare-fun tp_is_empty!1349 () Bool)

(assert (=> start!4088 tp_is_empty!1349))

(declare-fun b!30344 () Bool)

(assert (=> b!30344 (= e!19491 false)))

(declare-datatypes ((SeekEntryResult!106 0))(
  ( (MissingZero!106 (index!2546 (_ BitVec 32))) (Found!106 (index!2547 (_ BitVec 32))) (Intermediate!106 (undefined!918 Bool) (index!2548 (_ BitVec 32)) (x!6520 (_ BitVec 32))) (Undefined!106) (MissingVacant!106 (index!2549 (_ BitVec 32))) )
))
(declare-fun lt!11418 () SeekEntryResult!106)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1917 (_ BitVec 32)) SeekEntryResult!106)

(assert (=> b!30344 (= lt!11418 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30348 () Bool)

(declare-fun e!19489 () Bool)

(assert (=> b!30348 (= e!19490 (and e!19489 mapRes!1552))))

(declare-fun condMapEmpty!1552 () Bool)

(declare-fun mapDefault!1552 () ValueCell!475)

