; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4096 () Bool)

(assert start!4096)

(declare-fun b_free!1003 () Bool)

(declare-fun b_next!1003 () Bool)

(assert (=> start!4096 (= b_free!1003 (not b_next!1003))))

(declare-fun tp!4428 () Bool)

(declare-fun b_and!1815 () Bool)

(assert (=> start!4096 (= tp!4428 b_and!1815)))

(declare-fun b!30464 () Bool)

(declare-fun e!19550 () Bool)

(assert (=> b!30464 (= e!19550 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!1929 0))(
  ( (array!1930 (arr!918 (Array (_ BitVec 32) (_ BitVec 64))) (size!1019 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1929)

(declare-datatypes ((SeekEntryResult!109 0))(
  ( (MissingZero!109 (index!2558 (_ BitVec 32))) (Found!109 (index!2559 (_ BitVec 32))) (Intermediate!109 (undefined!921 Bool) (index!2560 (_ BitVec 32)) (x!6539 (_ BitVec 32))) (Undefined!109) (MissingVacant!109 (index!2561 (_ BitVec 32))) )
))
(declare-fun lt!11430 () SeekEntryResult!109)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1929 (_ BitVec 32)) SeekEntryResult!109)

(assert (=> b!30464 (= lt!11430 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30465 () Bool)

(declare-fun res!18345 () Bool)

(assert (=> b!30465 (=> (not res!18345) (not e!19550))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1635 0))(
  ( (V!1636 (val!705 Int)) )
))
(declare-datatypes ((ValueCell!479 0))(
  ( (ValueCellFull!479 (v!1794 V!1635)) (EmptyCell!479) )
))
(declare-datatypes ((array!1931 0))(
  ( (array!1932 (arr!919 (Array (_ BitVec 32) ValueCell!479)) (size!1020 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1931)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1635)

(declare-fun minValue!1443 () V!1635)

(declare-datatypes ((tuple2!1150 0))(
  ( (tuple2!1151 (_1!585 (_ BitVec 64)) (_2!585 V!1635)) )
))
(declare-datatypes ((List!754 0))(
  ( (Nil!751) (Cons!750 (h!1317 tuple2!1150) (t!3449 List!754)) )
))
(declare-datatypes ((ListLongMap!731 0))(
  ( (ListLongMap!732 (toList!381 List!754)) )
))
(declare-fun contains!318 (ListLongMap!731 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!208 (array!1929 array!1931 (_ BitVec 32) (_ BitVec 32) V!1635 V!1635 (_ BitVec 32) Int) ListLongMap!731)

(assert (=> b!30465 (= res!18345 (not (contains!318 (getCurrentListMap!208 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30466 () Bool)

(declare-fun res!18342 () Bool)

(assert (=> b!30466 (=> (not res!18342) (not e!19550))))

(declare-datatypes ((List!755 0))(
  ( (Nil!752) (Cons!751 (h!1318 (_ BitVec 64)) (t!3450 List!755)) )
))
(declare-fun arrayNoDuplicates!0 (array!1929 (_ BitVec 32) List!755) Bool)

(assert (=> b!30466 (= res!18342 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!752))))

(declare-fun b!30467 () Bool)

(declare-fun res!18343 () Bool)

(assert (=> b!30467 (=> (not res!18343) (not e!19550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1929 (_ BitVec 32)) Bool)

(assert (=> b!30467 (= res!18343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30468 () Bool)

(declare-fun res!18340 () Bool)

(assert (=> b!30468 (=> (not res!18340) (not e!19550))))

(declare-fun arrayContainsKey!0 (array!1929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30468 (= res!18340 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30469 () Bool)

(declare-fun res!18346 () Bool)

(assert (=> b!30469 (=> (not res!18346) (not e!19550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30469 (= res!18346 (validKeyInArray!0 k!1304))))

(declare-fun res!18341 () Bool)

(assert (=> start!4096 (=> (not res!18341) (not e!19550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4096 (= res!18341 (validMask!0 mask!2294))))

(assert (=> start!4096 e!19550))

(assert (=> start!4096 true))

(assert (=> start!4096 tp!4428))

(declare-fun e!19549 () Bool)

(declare-fun array_inv!617 (array!1931) Bool)

(assert (=> start!4096 (and (array_inv!617 _values!1501) e!19549)))

(declare-fun array_inv!618 (array!1929) Bool)

(assert (=> start!4096 (array_inv!618 _keys!1833)))

(declare-fun tp_is_empty!1357 () Bool)

(assert (=> start!4096 tp_is_empty!1357))

(declare-fun b!30470 () Bool)

(declare-fun e!19551 () Bool)

(assert (=> b!30470 (= e!19551 tp_is_empty!1357)))

(declare-fun mapIsEmpty!1564 () Bool)

(declare-fun mapRes!1564 () Bool)

(assert (=> mapIsEmpty!1564 mapRes!1564))

(declare-fun b!30471 () Bool)

(assert (=> b!30471 (= e!19549 (and e!19551 mapRes!1564))))

(declare-fun condMapEmpty!1564 () Bool)

(declare-fun mapDefault!1564 () ValueCell!479)

