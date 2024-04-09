; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3940 () Bool)

(assert start!3940)

(declare-fun b_free!847 () Bool)

(declare-fun b_next!847 () Bool)

(assert (=> start!3940 (= b_free!847 (not b_next!847))))

(declare-fun tp!3960 () Bool)

(declare-fun b_and!1659 () Bool)

(assert (=> start!3940 (= tp!3960 b_and!1659)))

(declare-fun mapIsEmpty!1330 () Bool)

(declare-fun mapRes!1330 () Bool)

(assert (=> mapIsEmpty!1330 mapRes!1330))

(declare-fun b!28115 () Bool)

(declare-fun e!18216 () Bool)

(declare-fun tp_is_empty!1201 () Bool)

(assert (=> b!28115 (= e!18216 tp_is_empty!1201)))

(declare-fun b!28116 () Bool)

(declare-fun e!18218 () Bool)

(assert (=> b!28116 (= e!18218 false)))

(declare-fun lt!10755 () (_ BitVec 32))

(declare-datatypes ((array!1627 0))(
  ( (array!1628 (arr!767 (Array (_ BitVec 32) (_ BitVec 64))) (size!868 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1627)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1627 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28116 (= lt!10755 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28117 () Bool)

(declare-fun res!16696 () Bool)

(assert (=> b!28117 (=> (not res!16696) (not e!18218))))

(declare-fun arrayContainsKey!0 (array!1627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28117 (= res!16696 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28118 () Bool)

(declare-fun e!18220 () Bool)

(assert (=> b!28118 (= e!18220 tp_is_empty!1201)))

(declare-fun b!28119 () Bool)

(declare-fun res!16698 () Bool)

(assert (=> b!28119 (=> (not res!16698) (not e!18218))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1427 0))(
  ( (V!1428 (val!627 Int)) )
))
(declare-datatypes ((ValueCell!401 0))(
  ( (ValueCellFull!401 (v!1716 V!1427)) (EmptyCell!401) )
))
(declare-datatypes ((array!1629 0))(
  ( (array!1630 (arr!768 (Array (_ BitVec 32) ValueCell!401)) (size!869 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1629)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1427)

(declare-fun minValue!1443 () V!1427)

(declare-datatypes ((tuple2!1028 0))(
  ( (tuple2!1029 (_1!524 (_ BitVec 64)) (_2!524 V!1427)) )
))
(declare-datatypes ((List!644 0))(
  ( (Nil!641) (Cons!640 (h!1207 tuple2!1028) (t!3339 List!644)) )
))
(declare-datatypes ((ListLongMap!609 0))(
  ( (ListLongMap!610 (toList!320 List!644)) )
))
(declare-fun contains!257 (ListLongMap!609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!148 (array!1627 array!1629 (_ BitVec 32) (_ BitVec 32) V!1427 V!1427 (_ BitVec 32) Int) ListLongMap!609)

(assert (=> b!28119 (= res!16698 (not (contains!257 (getCurrentListMap!148 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!28120 () Bool)

(declare-fun e!18217 () Bool)

(assert (=> b!28120 (= e!18217 (and e!18220 mapRes!1330))))

(declare-fun condMapEmpty!1330 () Bool)

(declare-fun mapDefault!1330 () ValueCell!401)

