; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113438 () Bool)

(assert start!113438)

(declare-fun b_free!31453 () Bool)

(declare-fun b_next!31453 () Bool)

(assert (=> start!113438 (= b_free!31453 (not b_next!31453))))

(declare-fun tp!110164 () Bool)

(declare-fun b_and!50751 () Bool)

(assert (=> start!113438 (= tp!110164 b_and!50751)))

(declare-fun b!1346077 () Bool)

(declare-fun res!893285 () Bool)

(declare-fun e!765931 () Bool)

(assert (=> b!1346077 (=> (not res!893285) (not e!765931))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91701 0))(
  ( (array!91702 (arr!44302 (Array (_ BitVec 32) (_ BitVec 64))) (size!44853 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91701)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346077 (= res!893285 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44853 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!893283 () Bool)

(assert (=> start!113438 (=> (not res!893283) (not e!765931))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113438 (= res!893283 (validMask!0 mask!1977))))

(assert (=> start!113438 e!765931))

(declare-fun tp_is_empty!37453 () Bool)

(assert (=> start!113438 tp_is_empty!37453))

(assert (=> start!113438 true))

(declare-fun array_inv!33297 (array!91701) Bool)

(assert (=> start!113438 (array_inv!33297 _keys!1571)))

(declare-datatypes ((V!55041 0))(
  ( (V!55042 (val!18801 Int)) )
))
(declare-datatypes ((ValueCell!17828 0))(
  ( (ValueCellFull!17828 (v!21447 V!55041)) (EmptyCell!17828) )
))
(declare-datatypes ((array!91703 0))(
  ( (array!91704 (arr!44303 (Array (_ BitVec 32) ValueCell!17828)) (size!44854 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91703)

(declare-fun e!765928 () Bool)

(declare-fun array_inv!33298 (array!91703) Bool)

(assert (=> start!113438 (and (array_inv!33298 _values!1303) e!765928)))

(assert (=> start!113438 tp!110164))

(declare-fun b!1346078 () Bool)

(declare-fun res!893284 () Bool)

(assert (=> b!1346078 (=> (not res!893284) (not e!765931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91701 (_ BitVec 32)) Bool)

(assert (=> b!1346078 (= res!893284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57886 () Bool)

(declare-fun mapRes!57886 () Bool)

(declare-fun tp!110165 () Bool)

(declare-fun e!765932 () Bool)

(assert (=> mapNonEmpty!57886 (= mapRes!57886 (and tp!110165 e!765932))))

(declare-fun mapKey!57886 () (_ BitVec 32))

(declare-fun mapRest!57886 () (Array (_ BitVec 32) ValueCell!17828))

(declare-fun mapValue!57886 () ValueCell!17828)

(assert (=> mapNonEmpty!57886 (= (arr!44303 _values!1303) (store mapRest!57886 mapKey!57886 mapValue!57886))))

(declare-fun b!1346079 () Bool)

(assert (=> b!1346079 (= e!765932 tp_is_empty!37453)))

(declare-fun b!1346080 () Bool)

(declare-fun e!765929 () Bool)

(assert (=> b!1346080 (= e!765929 tp_is_empty!37453)))

(declare-fun b!1346081 () Bool)

(assert (=> b!1346081 (= e!765931 false)))

(declare-fun lt!595414 () Bool)

(declare-fun minValue!1245 () V!55041)

(declare-fun zeroValue!1245 () V!55041)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24374 0))(
  ( (tuple2!24375 (_1!12197 (_ BitVec 64)) (_2!12197 V!55041)) )
))
(declare-datatypes ((List!31547 0))(
  ( (Nil!31544) (Cons!31543 (h!32752 tuple2!24374) (t!46144 List!31547)) )
))
(declare-datatypes ((ListLongMap!22043 0))(
  ( (ListLongMap!22044 (toList!11037 List!31547)) )
))
(declare-fun contains!9149 (ListLongMap!22043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5928 (array!91701 array!91703 (_ BitVec 32) (_ BitVec 32) V!55041 V!55041 (_ BitVec 32) Int) ListLongMap!22043)

(assert (=> b!1346081 (= lt!595414 (contains!9149 (getCurrentListMap!5928 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346082 () Bool)

(declare-fun res!893282 () Bool)

(assert (=> b!1346082 (=> (not res!893282) (not e!765931))))

(declare-datatypes ((List!31548 0))(
  ( (Nil!31545) (Cons!31544 (h!32753 (_ BitVec 64)) (t!46145 List!31548)) )
))
(declare-fun arrayNoDuplicates!0 (array!91701 (_ BitVec 32) List!31548) Bool)

(assert (=> b!1346082 (= res!893282 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31545))))

(declare-fun mapIsEmpty!57886 () Bool)

(assert (=> mapIsEmpty!57886 mapRes!57886))

(declare-fun b!1346083 () Bool)

(assert (=> b!1346083 (= e!765928 (and e!765929 mapRes!57886))))

(declare-fun condMapEmpty!57886 () Bool)

(declare-fun mapDefault!57886 () ValueCell!17828)

