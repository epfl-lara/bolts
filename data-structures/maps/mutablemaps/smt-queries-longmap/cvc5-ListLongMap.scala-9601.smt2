; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113562 () Bool)

(assert start!113562)

(declare-fun b_free!31519 () Bool)

(declare-fun b_next!31519 () Bool)

(assert (=> start!113562 (= b_free!31519 (not b_next!31519))))

(declare-fun tp!110367 () Bool)

(declare-fun b_and!50837 () Bool)

(assert (=> start!113562 (= tp!110367 b_and!50837)))

(declare-fun b!1347402 () Bool)

(declare-fun res!894080 () Bool)

(declare-fun e!766668 () Bool)

(assert (=> b!1347402 (=> (not res!894080) (not e!766668))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91829 0))(
  ( (array!91830 (arr!44365 (Array (_ BitVec 32) (_ BitVec 64))) (size!44916 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91829)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347402 (= res!894080 (not (= (select (arr!44365 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347403 () Bool)

(declare-fun res!894083 () Bool)

(assert (=> b!1347403 (=> (not res!894083) (not e!766668))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91829 (_ BitVec 32)) Bool)

(assert (=> b!1347403 (= res!894083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347404 () Bool)

(declare-fun res!894082 () Bool)

(assert (=> b!1347404 (=> (not res!894082) (not e!766668))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1347404 (= res!894082 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347405 () Bool)

(declare-fun res!894088 () Bool)

(assert (=> b!1347405 (=> (not res!894088) (not e!766668))))

(declare-datatypes ((V!55129 0))(
  ( (V!55130 (val!18834 Int)) )
))
(declare-fun minValue!1245 () V!55129)

(declare-fun zeroValue!1245 () V!55129)

(declare-datatypes ((ValueCell!17861 0))(
  ( (ValueCellFull!17861 (v!21483 V!55129)) (EmptyCell!17861) )
))
(declare-datatypes ((array!91831 0))(
  ( (array!91832 (arr!44366 (Array (_ BitVec 32) ValueCell!17861)) (size!44917 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91831)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24418 0))(
  ( (tuple2!24419 (_1!12219 (_ BitVec 64)) (_2!12219 V!55129)) )
))
(declare-datatypes ((List!31589 0))(
  ( (Nil!31586) (Cons!31585 (h!32794 tuple2!24418) (t!46194 List!31589)) )
))
(declare-datatypes ((ListLongMap!22087 0))(
  ( (ListLongMap!22088 (toList!11059 List!31589)) )
))
(declare-fun contains!9172 (ListLongMap!22087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5949 (array!91829 array!91831 (_ BitVec 32) (_ BitVec 32) V!55129 V!55129 (_ BitVec 32) Int) ListLongMap!22087)

(assert (=> b!1347405 (= res!894088 (contains!9172 (getCurrentListMap!5949 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347406 () Bool)

(declare-fun e!766666 () Bool)

(declare-fun tp_is_empty!37519 () Bool)

(assert (=> b!1347406 (= e!766666 tp_is_empty!37519)))

(declare-fun b!1347407 () Bool)

(declare-fun e!766669 () Bool)

(declare-fun e!766670 () Bool)

(declare-fun mapRes!57989 () Bool)

(assert (=> b!1347407 (= e!766669 (and e!766670 mapRes!57989))))

(declare-fun condMapEmpty!57989 () Bool)

(declare-fun mapDefault!57989 () ValueCell!17861)

