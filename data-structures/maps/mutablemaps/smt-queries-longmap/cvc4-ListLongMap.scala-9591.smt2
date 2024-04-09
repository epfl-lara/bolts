; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113448 () Bool)

(assert start!113448)

(declare-fun b_free!31463 () Bool)

(declare-fun b_next!31463 () Bool)

(assert (=> start!113448 (= b_free!31463 (not b_next!31463))))

(declare-fun tp!110194 () Bool)

(declare-fun b_and!50761 () Bool)

(assert (=> start!113448 (= tp!110194 b_and!50761)))

(declare-fun b!1346197 () Bool)

(declare-fun e!766007 () Bool)

(declare-fun tp_is_empty!37463 () Bool)

(assert (=> b!1346197 (= e!766007 tp_is_empty!37463)))

(declare-fun b!1346198 () Bool)

(declare-fun e!766004 () Bool)

(assert (=> b!1346198 (= e!766004 false)))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91721 0))(
  ( (array!91722 (arr!44312 (Array (_ BitVec 32) (_ BitVec 64))) (size!44863 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91721)

(declare-datatypes ((V!55053 0))(
  ( (V!55054 (val!18806 Int)) )
))
(declare-fun zeroValue!1245 () V!55053)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17833 0))(
  ( (ValueCellFull!17833 (v!21452 V!55053)) (EmptyCell!17833) )
))
(declare-datatypes ((array!91723 0))(
  ( (array!91724 (arr!44313 (Array (_ BitVec 32) ValueCell!17833)) (size!44864 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91723)

(declare-fun lt!595429 () Bool)

(declare-fun minValue!1245 () V!55053)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24382 0))(
  ( (tuple2!24383 (_1!12201 (_ BitVec 64)) (_2!12201 V!55053)) )
))
(declare-datatypes ((List!31555 0))(
  ( (Nil!31552) (Cons!31551 (h!32760 tuple2!24382) (t!46152 List!31555)) )
))
(declare-datatypes ((ListLongMap!22051 0))(
  ( (ListLongMap!22052 (toList!11041 List!31555)) )
))
(declare-fun contains!9153 (ListLongMap!22051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5932 (array!91721 array!91723 (_ BitVec 32) (_ BitVec 32) V!55053 V!55053 (_ BitVec 32) Int) ListLongMap!22051)

(assert (=> b!1346198 (= lt!595429 (contains!9153 (getCurrentListMap!5932 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346199 () Bool)

(declare-fun res!893359 () Bool)

(assert (=> b!1346199 (=> (not res!893359) (not e!766004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91721 (_ BitVec 32)) Bool)

(assert (=> b!1346199 (= res!893359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346200 () Bool)

(declare-fun e!766005 () Bool)

(assert (=> b!1346200 (= e!766005 tp_is_empty!37463)))

(declare-fun b!1346201 () Bool)

(declare-fun res!893358 () Bool)

(assert (=> b!1346201 (=> (not res!893358) (not e!766004))))

(assert (=> b!1346201 (= res!893358 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44863 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57901 () Bool)

(declare-fun mapRes!57901 () Bool)

(declare-fun tp!110195 () Bool)

(assert (=> mapNonEmpty!57901 (= mapRes!57901 (and tp!110195 e!766007))))

(declare-fun mapRest!57901 () (Array (_ BitVec 32) ValueCell!17833))

(declare-fun mapValue!57901 () ValueCell!17833)

(declare-fun mapKey!57901 () (_ BitVec 32))

(assert (=> mapNonEmpty!57901 (= (arr!44313 _values!1303) (store mapRest!57901 mapKey!57901 mapValue!57901))))

(declare-fun mapIsEmpty!57901 () Bool)

(assert (=> mapIsEmpty!57901 mapRes!57901))

(declare-fun b!1346203 () Bool)

(declare-fun res!893356 () Bool)

(assert (=> b!1346203 (=> (not res!893356) (not e!766004))))

(assert (=> b!1346203 (= res!893356 (and (= (size!44864 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44863 _keys!1571) (size!44864 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346204 () Bool)

(declare-fun res!893360 () Bool)

(assert (=> b!1346204 (=> (not res!893360) (not e!766004))))

(declare-datatypes ((List!31556 0))(
  ( (Nil!31553) (Cons!31552 (h!32761 (_ BitVec 64)) (t!46153 List!31556)) )
))
(declare-fun arrayNoDuplicates!0 (array!91721 (_ BitVec 32) List!31556) Bool)

(assert (=> b!1346204 (= res!893360 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31553))))

(declare-fun b!1346202 () Bool)

(declare-fun e!766006 () Bool)

(assert (=> b!1346202 (= e!766006 (and e!766005 mapRes!57901))))

(declare-fun condMapEmpty!57901 () Bool)

(declare-fun mapDefault!57901 () ValueCell!17833)

