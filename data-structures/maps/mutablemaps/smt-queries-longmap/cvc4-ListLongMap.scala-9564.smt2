; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113286 () Bool)

(assert start!113286)

(declare-fun b_free!31301 () Bool)

(declare-fun b_next!31301 () Bool)

(assert (=> start!113286 (= b_free!31301 (not b_next!31301))))

(declare-fun tp!109708 () Bool)

(declare-fun b_and!50519 () Bool)

(assert (=> start!113286 (= tp!109708 b_and!50519)))

(declare-fun b!1343512 () Bool)

(declare-fun res!891481 () Bool)

(declare-fun e!764708 () Bool)

(assert (=> b!1343512 (=> (not res!891481) (not e!764708))))

(declare-datatypes ((V!54837 0))(
  ( (V!54838 (val!18725 Int)) )
))
(declare-fun minValue!1245 () V!54837)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91401 0))(
  ( (array!91402 (arr!44152 (Array (_ BitVec 32) (_ BitVec 64))) (size!44703 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91401)

(declare-fun zeroValue!1245 () V!54837)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17752 0))(
  ( (ValueCellFull!17752 (v!21371 V!54837)) (EmptyCell!17752) )
))
(declare-datatypes ((array!91403 0))(
  ( (array!91404 (arr!44153 (Array (_ BitVec 32) ValueCell!17752)) (size!44704 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91403)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24274 0))(
  ( (tuple2!24275 (_1!12147 (_ BitVec 64)) (_2!12147 V!54837)) )
))
(declare-datatypes ((List!31451 0))(
  ( (Nil!31448) (Cons!31447 (h!32656 tuple2!24274) (t!45970 List!31451)) )
))
(declare-datatypes ((ListLongMap!21943 0))(
  ( (ListLongMap!21944 (toList!10987 List!31451)) )
))
(declare-fun contains!9099 (ListLongMap!21943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5882 (array!91401 array!91403 (_ BitVec 32) (_ BitVec 32) V!54837 V!54837 (_ BitVec 32) Int) ListLongMap!21943)

(assert (=> b!1343512 (= res!891481 (contains!9099 (getCurrentListMap!5882 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343513 () Bool)

(declare-fun res!891484 () Bool)

(assert (=> b!1343513 (=> (not res!891484) (not e!764708))))

(assert (=> b!1343513 (= res!891484 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44703 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57658 () Bool)

(declare-fun mapRes!57658 () Bool)

(declare-fun tp!109709 () Bool)

(declare-fun e!764707 () Bool)

(assert (=> mapNonEmpty!57658 (= mapRes!57658 (and tp!109709 e!764707))))

(declare-fun mapKey!57658 () (_ BitVec 32))

(declare-fun mapValue!57658 () ValueCell!17752)

(declare-fun mapRest!57658 () (Array (_ BitVec 32) ValueCell!17752))

(assert (=> mapNonEmpty!57658 (= (arr!44153 _values!1303) (store mapRest!57658 mapKey!57658 mapValue!57658))))

(declare-fun b!1343514 () Bool)

(declare-fun res!891483 () Bool)

(assert (=> b!1343514 (=> (not res!891483) (not e!764708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343514 (= res!891483 (validKeyInArray!0 (select (arr!44152 _keys!1571) from!1960)))))

(declare-fun b!1343515 () Bool)

(declare-fun res!891486 () Bool)

(assert (=> b!1343515 (=> (not res!891486) (not e!764708))))

(assert (=> b!1343515 (= res!891486 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343516 () Bool)

(declare-fun e!764711 () Bool)

(declare-fun e!764709 () Bool)

(assert (=> b!1343516 (= e!764711 (and e!764709 mapRes!57658))))

(declare-fun condMapEmpty!57658 () Bool)

(declare-fun mapDefault!57658 () ValueCell!17752)

