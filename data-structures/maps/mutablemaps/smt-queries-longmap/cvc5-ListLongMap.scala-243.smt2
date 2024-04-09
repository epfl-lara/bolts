; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4138 () Bool)

(assert start!4138)

(declare-fun b_free!1045 () Bool)

(declare-fun b_next!1045 () Bool)

(assert (=> start!4138 (= b_free!1045 (not b_next!1045))))

(declare-fun tp!4555 () Bool)

(declare-fun b_and!1857 () Bool)

(assert (=> start!4138 (= tp!4555 b_and!1857)))

(declare-fun b!31123 () Bool)

(declare-fun e!19920 () Bool)

(declare-datatypes ((array!2005 0))(
  ( (array!2006 (arr!956 (Array (_ BitVec 32) (_ BitVec 64))) (size!1057 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2005)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31123 (= e!19920 (not (= (size!1057 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun b!31124 () Bool)

(declare-fun res!18812 () Bool)

(assert (=> b!31124 (=> (not res!18812) (not e!19920))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1691 0))(
  ( (V!1692 (val!726 Int)) )
))
(declare-datatypes ((ValueCell!500 0))(
  ( (ValueCellFull!500 (v!1815 V!1691)) (EmptyCell!500) )
))
(declare-datatypes ((array!2007 0))(
  ( (array!2008 (arr!957 (Array (_ BitVec 32) ValueCell!500)) (size!1058 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2007)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1691)

(declare-fun minValue!1443 () V!1691)

(declare-datatypes ((tuple2!1180 0))(
  ( (tuple2!1181 (_1!600 (_ BitVec 64)) (_2!600 V!1691)) )
))
(declare-datatypes ((List!782 0))(
  ( (Nil!779) (Cons!778 (h!1345 tuple2!1180) (t!3477 List!782)) )
))
(declare-datatypes ((ListLongMap!761 0))(
  ( (ListLongMap!762 (toList!396 List!782)) )
))
(declare-fun contains!333 (ListLongMap!761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!221 (array!2005 array!2007 (_ BitVec 32) (_ BitVec 32) V!1691 V!1691 (_ BitVec 32) Int) ListLongMap!761)

(assert (=> b!31124 (= res!18812 (not (contains!333 (getCurrentListMap!221 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31125 () Bool)

(declare-fun res!18811 () Bool)

(assert (=> b!31125 (=> (not res!18811) (not e!19920))))

(declare-fun arrayContainsKey!0 (array!2005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31125 (= res!18811 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!31126 () Bool)

(declare-fun res!18813 () Bool)

(assert (=> b!31126 (=> (not res!18813) (not e!19920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31126 (= res!18813 (validKeyInArray!0 k!1304))))

(declare-fun b!31127 () Bool)

(declare-fun res!18817 () Bool)

(assert (=> b!31127 (=> (not res!18817) (not e!19920))))

(declare-datatypes ((List!783 0))(
  ( (Nil!780) (Cons!779 (h!1346 (_ BitVec 64)) (t!3478 List!783)) )
))
(declare-fun arrayNoDuplicates!0 (array!2005 (_ BitVec 32) List!783) Bool)

(assert (=> b!31127 (= res!18817 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!780))))

(declare-fun b!31129 () Bool)

(declare-fun e!19918 () Bool)

(declare-fun e!19921 () Bool)

(declare-fun mapRes!1627 () Bool)

(assert (=> b!31129 (= e!19918 (and e!19921 mapRes!1627))))

(declare-fun condMapEmpty!1627 () Bool)

(declare-fun mapDefault!1627 () ValueCell!500)

