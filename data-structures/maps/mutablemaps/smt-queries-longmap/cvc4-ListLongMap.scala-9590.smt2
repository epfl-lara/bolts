; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113442 () Bool)

(assert start!113442)

(declare-fun b_free!31457 () Bool)

(declare-fun b_next!31457 () Bool)

(assert (=> start!113442 (= b_free!31457 (not b_next!31457))))

(declare-fun tp!110177 () Bool)

(declare-fun b_and!50755 () Bool)

(assert (=> start!113442 (= tp!110177 b_and!50755)))

(declare-fun b!1346125 () Bool)

(declare-fun res!893315 () Bool)

(declare-fun e!765959 () Bool)

(assert (=> b!1346125 (=> (not res!893315) (not e!765959))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91709 0))(
  ( (array!91710 (arr!44306 (Array (_ BitVec 32) (_ BitVec 64))) (size!44857 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91709)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346125 (= res!893315 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44857 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346126 () Bool)

(declare-fun res!893311 () Bool)

(assert (=> b!1346126 (=> (not res!893311) (not e!765959))))

(declare-datatypes ((List!31551 0))(
  ( (Nil!31548) (Cons!31547 (h!32756 (_ BitVec 64)) (t!46148 List!31551)) )
))
(declare-fun arrayNoDuplicates!0 (array!91709 (_ BitVec 32) List!31551) Bool)

(assert (=> b!1346126 (= res!893311 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31548))))

(declare-fun b!1346127 () Bool)

(assert (=> b!1346127 (= e!765959 false)))

(declare-datatypes ((V!55045 0))(
  ( (V!55046 (val!18803 Int)) )
))
(declare-fun minValue!1245 () V!55045)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55045)

(declare-fun lt!595420 () Bool)

(declare-datatypes ((ValueCell!17830 0))(
  ( (ValueCellFull!17830 (v!21449 V!55045)) (EmptyCell!17830) )
))
(declare-datatypes ((array!91711 0))(
  ( (array!91712 (arr!44307 (Array (_ BitVec 32) ValueCell!17830)) (size!44858 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91711)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24378 0))(
  ( (tuple2!24379 (_1!12199 (_ BitVec 64)) (_2!12199 V!55045)) )
))
(declare-datatypes ((List!31552 0))(
  ( (Nil!31549) (Cons!31548 (h!32757 tuple2!24378) (t!46149 List!31552)) )
))
(declare-datatypes ((ListLongMap!22047 0))(
  ( (ListLongMap!22048 (toList!11039 List!31552)) )
))
(declare-fun contains!9151 (ListLongMap!22047 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5930 (array!91709 array!91711 (_ BitVec 32) (_ BitVec 32) V!55045 V!55045 (_ BitVec 32) Int) ListLongMap!22047)

(assert (=> b!1346127 (= lt!595420 (contains!9151 (getCurrentListMap!5930 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346128 () Bool)

(declare-fun res!893314 () Bool)

(assert (=> b!1346128 (=> (not res!893314) (not e!765959))))

(assert (=> b!1346128 (= res!893314 (and (= (size!44858 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44857 _keys!1571) (size!44858 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57892 () Bool)

(declare-fun mapRes!57892 () Bool)

(assert (=> mapIsEmpty!57892 mapRes!57892))

(declare-fun b!1346129 () Bool)

(declare-fun e!765961 () Bool)

(declare-fun tp_is_empty!37457 () Bool)

(assert (=> b!1346129 (= e!765961 tp_is_empty!37457)))

(declare-fun b!1346130 () Bool)

(declare-fun res!893313 () Bool)

(assert (=> b!1346130 (=> (not res!893313) (not e!765959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91709 (_ BitVec 32)) Bool)

(assert (=> b!1346130 (= res!893313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346131 () Bool)

(declare-fun e!765958 () Bool)

(assert (=> b!1346131 (= e!765958 tp_is_empty!37457)))

(declare-fun res!893312 () Bool)

(assert (=> start!113442 (=> (not res!893312) (not e!765959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113442 (= res!893312 (validMask!0 mask!1977))))

(assert (=> start!113442 e!765959))

(assert (=> start!113442 tp_is_empty!37457))

(assert (=> start!113442 true))

(declare-fun array_inv!33301 (array!91709) Bool)

(assert (=> start!113442 (array_inv!33301 _keys!1571)))

(declare-fun e!765962 () Bool)

(declare-fun array_inv!33302 (array!91711) Bool)

(assert (=> start!113442 (and (array_inv!33302 _values!1303) e!765962)))

(assert (=> start!113442 tp!110177))

(declare-fun b!1346132 () Bool)

(assert (=> b!1346132 (= e!765962 (and e!765961 mapRes!57892))))

(declare-fun condMapEmpty!57892 () Bool)

(declare-fun mapDefault!57892 () ValueCell!17830)

