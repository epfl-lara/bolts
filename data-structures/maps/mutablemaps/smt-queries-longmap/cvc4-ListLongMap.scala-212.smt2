; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3956 () Bool)

(assert start!3956)

(declare-fun b_free!863 () Bool)

(declare-fun b_next!863 () Bool)

(assert (=> start!3956 (= b_free!863 (not b_next!863))))

(declare-fun tp!4008 () Bool)

(declare-fun b_and!1675 () Bool)

(assert (=> start!3956 (= tp!4008 b_and!1675)))

(declare-fun b!28355 () Bool)

(declare-fun e!18340 () Bool)

(assert (=> b!28355 (= e!18340 false)))

(declare-fun lt!10779 () (_ BitVec 32))

(declare-datatypes ((array!1659 0))(
  ( (array!1660 (arr!783 (Array (_ BitVec 32) (_ BitVec 64))) (size!884 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1659)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1659 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28355 (= lt!10779 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28356 () Bool)

(declare-fun res!16865 () Bool)

(assert (=> b!28356 (=> (not res!16865) (not e!18340))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1447 0))(
  ( (V!1448 (val!635 Int)) )
))
(declare-datatypes ((ValueCell!409 0))(
  ( (ValueCellFull!409 (v!1724 V!1447)) (EmptyCell!409) )
))
(declare-datatypes ((array!1661 0))(
  ( (array!1662 (arr!784 (Array (_ BitVec 32) ValueCell!409)) (size!885 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1661)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1447)

(declare-fun minValue!1443 () V!1447)

(declare-datatypes ((tuple2!1040 0))(
  ( (tuple2!1041 (_1!530 (_ BitVec 64)) (_2!530 V!1447)) )
))
(declare-datatypes ((List!655 0))(
  ( (Nil!652) (Cons!651 (h!1218 tuple2!1040) (t!3350 List!655)) )
))
(declare-datatypes ((ListLongMap!621 0))(
  ( (ListLongMap!622 (toList!326 List!655)) )
))
(declare-fun contains!263 (ListLongMap!621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!154 (array!1659 array!1661 (_ BitVec 32) (_ BitVec 32) V!1447 V!1447 (_ BitVec 32) Int) ListLongMap!621)

(assert (=> b!28356 (= res!16865 (not (contains!263 (getCurrentListMap!154 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!28357 () Bool)

(declare-fun res!16864 () Bool)

(assert (=> b!28357 (=> (not res!16864) (not e!18340))))

(declare-fun arrayContainsKey!0 (array!1659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28357 (= res!16864 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28358 () Bool)

(declare-fun e!18336 () Bool)

(declare-fun e!18339 () Bool)

(declare-fun mapRes!1354 () Bool)

(assert (=> b!28358 (= e!18336 (and e!18339 mapRes!1354))))

(declare-fun condMapEmpty!1354 () Bool)

(declare-fun mapDefault!1354 () ValueCell!409)

