; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113348 () Bool)

(assert start!113348)

(declare-fun b_free!31363 () Bool)

(declare-fun b_next!31363 () Bool)

(assert (=> start!113348 (= b_free!31363 (not b_next!31363))))

(declare-fun tp!109894 () Bool)

(declare-fun b_and!50595 () Bool)

(assert (=> start!113348 (= tp!109894 b_and!50595)))

(declare-fun mapNonEmpty!57751 () Bool)

(declare-fun mapRes!57751 () Bool)

(declare-fun tp!109895 () Bool)

(declare-fun e!765174 () Bool)

(assert (=> mapNonEmpty!57751 (= mapRes!57751 (and tp!109895 e!765174))))

(declare-fun mapKey!57751 () (_ BitVec 32))

(declare-datatypes ((V!54921 0))(
  ( (V!54922 (val!18756 Int)) )
))
(declare-datatypes ((ValueCell!17783 0))(
  ( (ValueCellFull!17783 (v!21402 V!54921)) (EmptyCell!17783) )
))
(declare-fun mapValue!57751 () ValueCell!17783)

(declare-datatypes ((array!91523 0))(
  ( (array!91524 (arr!44213 (Array (_ BitVec 32) ValueCell!17783)) (size!44764 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91523)

(declare-fun mapRest!57751 () (Array (_ BitVec 32) ValueCell!17783))

(assert (=> mapNonEmpty!57751 (= (arr!44213 _values!1303) (store mapRest!57751 mapKey!57751 mapValue!57751))))

(declare-fun b!1344353 () Bool)

(declare-fun e!765172 () Bool)

(declare-fun tp_is_empty!37363 () Bool)

(assert (=> b!1344353 (= e!765172 tp_is_empty!37363)))

(declare-fun b!1344354 () Bool)

(declare-fun res!892031 () Bool)

(declare-fun e!765175 () Bool)

(assert (=> b!1344354 (=> (not res!892031) (not e!765175))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91525 0))(
  ( (array!91526 (arr!44214 (Array (_ BitVec 32) (_ BitVec 64))) (size!44765 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91525)

(assert (=> b!1344354 (= res!892031 (not (= (select (arr!44214 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1344355 () Bool)

(declare-fun res!892033 () Bool)

(assert (=> b!1344355 (=> (not res!892033) (not e!765175))))

(declare-datatypes ((List!31488 0))(
  ( (Nil!31485) (Cons!31484 (h!32693 (_ BitVec 64)) (t!46019 List!31488)) )
))
(declare-fun arrayNoDuplicates!0 (array!91525 (_ BitVec 32) List!31488) Bool)

(assert (=> b!1344355 (= res!892033 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31485))))

(declare-fun b!1344356 () Bool)

(declare-fun res!892029 () Bool)

(assert (=> b!1344356 (=> (not res!892029) (not e!765175))))

(declare-fun minValue!1245 () V!54921)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54921)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24314 0))(
  ( (tuple2!24315 (_1!12167 (_ BitVec 64)) (_2!12167 V!54921)) )
))
(declare-datatypes ((List!31489 0))(
  ( (Nil!31486) (Cons!31485 (h!32694 tuple2!24314) (t!46020 List!31489)) )
))
(declare-datatypes ((ListLongMap!21983 0))(
  ( (ListLongMap!21984 (toList!11007 List!31489)) )
))
(declare-fun contains!9119 (ListLongMap!21983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5900 (array!91525 array!91523 (_ BitVec 32) (_ BitVec 32) V!54921 V!54921 (_ BitVec 32) Int) ListLongMap!21983)

(assert (=> b!1344356 (= res!892029 (contains!9119 (getCurrentListMap!5900 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344357 () Bool)

(declare-fun res!892027 () Bool)

(assert (=> b!1344357 (=> (not res!892027) (not e!765175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344357 (= res!892027 (validKeyInArray!0 (select (arr!44214 _keys!1571) from!1960)))))

(declare-fun b!1344358 () Bool)

(assert (=> b!1344358 (= e!765174 tp_is_empty!37363)))

(declare-fun b!1344359 () Bool)

(assert (=> b!1344359 (= e!765175 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57751 () Bool)

(assert (=> mapIsEmpty!57751 mapRes!57751))

(declare-fun b!1344360 () Bool)

(declare-fun res!892034 () Bool)

(assert (=> b!1344360 (=> (not res!892034) (not e!765175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91525 (_ BitVec 32)) Bool)

(assert (=> b!1344360 (= res!892034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!892032 () Bool)

(assert (=> start!113348 (=> (not res!892032) (not e!765175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113348 (= res!892032 (validMask!0 mask!1977))))

(assert (=> start!113348 e!765175))

(assert (=> start!113348 tp_is_empty!37363))

(assert (=> start!113348 true))

(declare-fun array_inv!33239 (array!91525) Bool)

(assert (=> start!113348 (array_inv!33239 _keys!1571)))

(declare-fun e!765173 () Bool)

(declare-fun array_inv!33240 (array!91523) Bool)

(assert (=> start!113348 (and (array_inv!33240 _values!1303) e!765173)))

(assert (=> start!113348 tp!109894))

(declare-fun b!1344352 () Bool)

(declare-fun res!892030 () Bool)

(assert (=> b!1344352 (=> (not res!892030) (not e!765175))))

(assert (=> b!1344352 (= res!892030 (and (= (size!44764 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44765 _keys!1571) (size!44764 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344361 () Bool)

(declare-fun res!892028 () Bool)

(assert (=> b!1344361 (=> (not res!892028) (not e!765175))))

(assert (=> b!1344361 (= res!892028 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44765 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344362 () Bool)

(assert (=> b!1344362 (= e!765173 (and e!765172 mapRes!57751))))

(declare-fun condMapEmpty!57751 () Bool)

(declare-fun mapDefault!57751 () ValueCell!17783)

