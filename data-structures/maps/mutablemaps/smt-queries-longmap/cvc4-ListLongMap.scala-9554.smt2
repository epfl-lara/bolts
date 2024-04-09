; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113226 () Bool)

(assert start!113226)

(declare-fun b_free!31241 () Bool)

(declare-fun b_next!31241 () Bool)

(assert (=> start!113226 (= b_free!31241 (not b_next!31241))))

(declare-fun tp!109528 () Bool)

(declare-fun b_and!50399 () Bool)

(assert (=> start!113226 (= tp!109528 b_and!50399)))

(declare-fun mapIsEmpty!57568 () Bool)

(declare-fun mapRes!57568 () Bool)

(assert (=> mapIsEmpty!57568 mapRes!57568))

(declare-fun b!1342372 () Bool)

(declare-fun res!890673 () Bool)

(declare-fun e!764260 () Bool)

(assert (=> b!1342372 (=> (not res!890673) (not e!764260))))

(declare-datatypes ((V!54757 0))(
  ( (V!54758 (val!18695 Int)) )
))
(declare-fun minValue!1245 () V!54757)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91289 0))(
  ( (array!91290 (arr!44096 (Array (_ BitVec 32) (_ BitVec 64))) (size!44647 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91289)

(declare-fun zeroValue!1245 () V!54757)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17722 0))(
  ( (ValueCellFull!17722 (v!21341 V!54757)) (EmptyCell!17722) )
))
(declare-datatypes ((array!91291 0))(
  ( (array!91292 (arr!44097 (Array (_ BitVec 32) ValueCell!17722)) (size!44648 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91291)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24228 0))(
  ( (tuple2!24229 (_1!12124 (_ BitVec 64)) (_2!12124 V!54757)) )
))
(declare-datatypes ((List!31409 0))(
  ( (Nil!31406) (Cons!31405 (h!32614 tuple2!24228) (t!45868 List!31409)) )
))
(declare-datatypes ((ListLongMap!21897 0))(
  ( (ListLongMap!21898 (toList!10964 List!31409)) )
))
(declare-fun contains!9076 (ListLongMap!21897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5863 (array!91289 array!91291 (_ BitVec 32) (_ BitVec 32) V!54757 V!54757 (_ BitVec 32) Int) ListLongMap!21897)

(assert (=> b!1342372 (= res!890673 (contains!9076 (getCurrentListMap!5863 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342373 () Bool)

(declare-fun e!764261 () Bool)

(declare-fun tp_is_empty!37241 () Bool)

(assert (=> b!1342373 (= e!764261 tp_is_empty!37241)))

(declare-fun b!1342374 () Bool)

(declare-fun res!890677 () Bool)

(assert (=> b!1342374 (=> (not res!890677) (not e!764260))))

(assert (=> b!1342374 (= res!890677 (not (= (select (arr!44096 _keys!1571) from!1960) k!1142)))))

(declare-fun res!890676 () Bool)

(assert (=> start!113226 (=> (not res!890676) (not e!764260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113226 (= res!890676 (validMask!0 mask!1977))))

(assert (=> start!113226 e!764260))

(assert (=> start!113226 tp_is_empty!37241))

(assert (=> start!113226 true))

(declare-fun array_inv!33157 (array!91289) Bool)

(assert (=> start!113226 (array_inv!33157 _keys!1571)))

(declare-fun e!764257 () Bool)

(declare-fun array_inv!33158 (array!91291) Bool)

(assert (=> start!113226 (and (array_inv!33158 _values!1303) e!764257)))

(assert (=> start!113226 tp!109528))

(declare-fun b!1342375 () Bool)

(declare-fun res!890671 () Bool)

(assert (=> b!1342375 (=> (not res!890671) (not e!764260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91289 (_ BitVec 32)) Bool)

(assert (=> b!1342375 (= res!890671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342376 () Bool)

(declare-fun res!890675 () Bool)

(assert (=> b!1342376 (=> (not res!890675) (not e!764260))))

(assert (=> b!1342376 (= res!890675 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44647 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342377 () Bool)

(declare-fun res!890674 () Bool)

(assert (=> b!1342377 (=> (not res!890674) (not e!764260))))

(declare-datatypes ((List!31410 0))(
  ( (Nil!31407) (Cons!31406 (h!32615 (_ BitVec 64)) (t!45869 List!31410)) )
))
(declare-fun arrayNoDuplicates!0 (array!91289 (_ BitVec 32) List!31410) Bool)

(assert (=> b!1342377 (= res!890674 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31407))))

(declare-fun b!1342378 () Bool)

(declare-fun res!890672 () Bool)

(assert (=> b!1342378 (=> (not res!890672) (not e!764260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342378 (= res!890672 (validKeyInArray!0 (select (arr!44096 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!57568 () Bool)

(declare-fun tp!109529 () Bool)

(declare-fun e!764259 () Bool)

(assert (=> mapNonEmpty!57568 (= mapRes!57568 (and tp!109529 e!764259))))

(declare-fun mapValue!57568 () ValueCell!17722)

(declare-fun mapRest!57568 () (Array (_ BitVec 32) ValueCell!17722))

(declare-fun mapKey!57568 () (_ BitVec 32))

(assert (=> mapNonEmpty!57568 (= (arr!44097 _values!1303) (store mapRest!57568 mapKey!57568 mapValue!57568))))

(declare-fun b!1342379 () Bool)

(assert (=> b!1342379 (= e!764257 (and e!764261 mapRes!57568))))

(declare-fun condMapEmpty!57568 () Bool)

(declare-fun mapDefault!57568 () ValueCell!17722)

