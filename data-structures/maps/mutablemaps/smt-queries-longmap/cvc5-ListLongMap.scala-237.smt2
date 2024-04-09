; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4102 () Bool)

(assert start!4102)

(declare-fun b_free!1009 () Bool)

(declare-fun b_next!1009 () Bool)

(assert (=> start!4102 (= b_free!1009 (not b_next!1009))))

(declare-fun tp!4447 () Bool)

(declare-fun b_and!1821 () Bool)

(assert (=> start!4102 (= tp!4447 b_and!1821)))

(declare-fun mapIsEmpty!1573 () Bool)

(declare-fun mapRes!1573 () Bool)

(assert (=> mapIsEmpty!1573 mapRes!1573))

(declare-fun b!30554 () Bool)

(declare-fun res!18405 () Bool)

(declare-fun e!19596 () Bool)

(assert (=> b!30554 (=> (not res!18405) (not e!19596))))

(declare-datatypes ((V!1643 0))(
  ( (V!1644 (val!708 Int)) )
))
(declare-datatypes ((ValueCell!482 0))(
  ( (ValueCellFull!482 (v!1797 V!1643)) (EmptyCell!482) )
))
(declare-datatypes ((array!1941 0))(
  ( (array!1942 (arr!924 (Array (_ BitVec 32) ValueCell!482)) (size!1025 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1941)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1943 0))(
  ( (array!1944 (arr!925 (Array (_ BitVec 32) (_ BitVec 64))) (size!1026 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1943)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!30554 (= res!18405 (and (= (size!1025 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1026 _keys!1833) (size!1025 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1573 () Bool)

(declare-fun tp!4446 () Bool)

(declare-fun e!19594 () Bool)

(assert (=> mapNonEmpty!1573 (= mapRes!1573 (and tp!4446 e!19594))))

(declare-fun mapRest!1573 () (Array (_ BitVec 32) ValueCell!482))

(declare-fun mapValue!1573 () ValueCell!482)

(declare-fun mapKey!1573 () (_ BitVec 32))

(assert (=> mapNonEmpty!1573 (= (arr!924 _values!1501) (store mapRest!1573 mapKey!1573 mapValue!1573))))

(declare-fun b!30555 () Bool)

(declare-fun res!18409 () Bool)

(assert (=> b!30555 (=> (not res!18409) (not e!19596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1943 (_ BitVec 32)) Bool)

(assert (=> b!30555 (= res!18409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30556 () Bool)

(declare-fun res!18403 () Bool)

(assert (=> b!30556 (=> (not res!18403) (not e!19596))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1643)

(declare-fun minValue!1443 () V!1643)

(declare-datatypes ((tuple2!1154 0))(
  ( (tuple2!1155 (_1!587 (_ BitVec 64)) (_2!587 V!1643)) )
))
(declare-datatypes ((List!758 0))(
  ( (Nil!755) (Cons!754 (h!1321 tuple2!1154) (t!3453 List!758)) )
))
(declare-datatypes ((ListLongMap!735 0))(
  ( (ListLongMap!736 (toList!383 List!758)) )
))
(declare-fun contains!320 (ListLongMap!735 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!210 (array!1943 array!1941 (_ BitVec 32) (_ BitVec 32) V!1643 V!1643 (_ BitVec 32) Int) ListLongMap!735)

(assert (=> b!30556 (= res!18403 (not (contains!320 (getCurrentListMap!210 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun res!18406 () Bool)

(assert (=> start!4102 (=> (not res!18406) (not e!19596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4102 (= res!18406 (validMask!0 mask!2294))))

(assert (=> start!4102 e!19596))

(assert (=> start!4102 true))

(assert (=> start!4102 tp!4447))

(declare-fun e!19597 () Bool)

(declare-fun array_inv!621 (array!1941) Bool)

(assert (=> start!4102 (and (array_inv!621 _values!1501) e!19597)))

(declare-fun array_inv!622 (array!1943) Bool)

(assert (=> start!4102 (array_inv!622 _keys!1833)))

(declare-fun tp_is_empty!1363 () Bool)

(assert (=> start!4102 tp_is_empty!1363))

(declare-fun b!30557 () Bool)

(declare-fun res!18408 () Bool)

(assert (=> b!30557 (=> (not res!18408) (not e!19596))))

(declare-fun arrayContainsKey!0 (array!1943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30557 (= res!18408 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30558 () Bool)

(declare-fun e!19593 () Bool)

(assert (=> b!30558 (= e!19597 (and e!19593 mapRes!1573))))

(declare-fun condMapEmpty!1573 () Bool)

(declare-fun mapDefault!1573 () ValueCell!482)

