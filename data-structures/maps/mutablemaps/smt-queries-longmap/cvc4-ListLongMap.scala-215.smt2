; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3974 () Bool)

(assert start!3974)

(declare-fun b_free!881 () Bool)

(declare-fun b_next!881 () Bool)

(assert (=> start!3974 (= b_free!881 (not b_next!881))))

(declare-fun tp!4062 () Bool)

(declare-fun b_and!1693 () Bool)

(assert (=> start!3974 (= tp!4062 b_and!1693)))

(declare-fun b!28651 () Bool)

(declare-fun e!18523 () Bool)

(declare-fun e!18525 () Bool)

(assert (=> b!28651 (= e!18523 e!18525)))

(declare-fun res!17077 () Bool)

(assert (=> b!28651 (=> (not res!17077) (not e!18525))))

(declare-datatypes ((V!1471 0))(
  ( (V!1472 (val!644 Int)) )
))
(declare-datatypes ((tuple2!1056 0))(
  ( (tuple2!1057 (_1!538 (_ BitVec 64)) (_2!538 V!1471)) )
))
(declare-datatypes ((List!669 0))(
  ( (Nil!666) (Cons!665 (h!1232 tuple2!1056) (t!3364 List!669)) )
))
(declare-datatypes ((ListLongMap!637 0))(
  ( (ListLongMap!638 (toList!334 List!669)) )
))
(declare-fun lt!10887 () ListLongMap!637)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!271 (ListLongMap!637 (_ BitVec 64)) Bool)

(assert (=> b!28651 (= res!17077 (not (contains!271 lt!10887 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!418 0))(
  ( (ValueCellFull!418 (v!1733 V!1471)) (EmptyCell!418) )
))
(declare-datatypes ((array!1695 0))(
  ( (array!1696 (arr!801 (Array (_ BitVec 32) ValueCell!418)) (size!902 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1695)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1697 0))(
  ( (array!1698 (arr!802 (Array (_ BitVec 32) (_ BitVec 64))) (size!903 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1697)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1471)

(declare-fun minValue!1443 () V!1471)

(declare-fun getCurrentListMap!161 (array!1697 array!1695 (_ BitVec 32) (_ BitVec 32) V!1471 V!1471 (_ BitVec 32) Int) ListLongMap!637)

(assert (=> b!28651 (= lt!10887 (getCurrentListMap!161 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28652 () Bool)

(declare-fun e!18527 () Bool)

(declare-fun tp_is_empty!1235 () Bool)

(assert (=> b!28652 (= e!18527 tp_is_empty!1235)))

(declare-fun b!28653 () Bool)

(declare-fun res!17079 () Bool)

(assert (=> b!28653 (=> (not res!17079) (not e!18525))))

(declare-fun arrayContainsKey!0 (array!1697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28653 (= res!17079 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28654 () Bool)

(declare-fun e!18524 () Bool)

(declare-fun e!18526 () Bool)

(declare-fun mapRes!1381 () Bool)

(assert (=> b!28654 (= e!18524 (and e!18526 mapRes!1381))))

(declare-fun condMapEmpty!1381 () Bool)

(declare-fun mapDefault!1381 () ValueCell!418)

