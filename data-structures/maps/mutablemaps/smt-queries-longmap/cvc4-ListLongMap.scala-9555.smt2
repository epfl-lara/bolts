; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113232 () Bool)

(assert start!113232)

(declare-fun b_free!31247 () Bool)

(declare-fun b_next!31247 () Bool)

(assert (=> start!113232 (= b_free!31247 (not b_next!31247))))

(declare-fun tp!109546 () Bool)

(declare-fun b_and!50411 () Bool)

(assert (=> start!113232 (= tp!109546 b_and!50411)))

(declare-fun b!1342486 () Bool)

(declare-fun res!890759 () Bool)

(declare-fun e!764305 () Bool)

(assert (=> b!1342486 (=> (not res!890759) (not e!764305))))

(declare-datatypes ((array!91301 0))(
  ( (array!91302 (arr!44102 (Array (_ BitVec 32) (_ BitVec 64))) (size!44653 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91301)

(declare-datatypes ((List!31414 0))(
  ( (Nil!31411) (Cons!31410 (h!32619 (_ BitVec 64)) (t!45879 List!31414)) )
))
(declare-fun arrayNoDuplicates!0 (array!91301 (_ BitVec 32) List!31414) Bool)

(assert (=> b!1342486 (= res!890759 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31411))))

(declare-fun b!1342487 () Bool)

(declare-fun res!890751 () Bool)

(assert (=> b!1342487 (=> (not res!890751) (not e!764305))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342487 (= res!890751 (not (= (select (arr!44102 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342488 () Bool)

(assert (=> b!1342488 (= e!764305 (not true))))

(declare-datatypes ((V!54765 0))(
  ( (V!54766 (val!18698 Int)) )
))
(declare-datatypes ((tuple2!24234 0))(
  ( (tuple2!24235 (_1!12127 (_ BitVec 64)) (_2!12127 V!54765)) )
))
(declare-datatypes ((List!31415 0))(
  ( (Nil!31412) (Cons!31411 (h!32620 tuple2!24234) (t!45880 List!31415)) )
))
(declare-datatypes ((ListLongMap!21903 0))(
  ( (ListLongMap!21904 (toList!10967 List!31415)) )
))
(declare-fun lt!594474 () ListLongMap!21903)

(declare-fun contains!9079 (ListLongMap!21903 (_ BitVec 64)) Bool)

(assert (=> b!1342488 (contains!9079 lt!594474 k!1142)))

(declare-datatypes ((Unit!44001 0))(
  ( (Unit!44002) )
))
(declare-fun lt!594475 () Unit!44001)

(declare-fun lt!594472 () V!54765)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!360 ((_ BitVec 64) (_ BitVec 64) V!54765 ListLongMap!21903) Unit!44001)

(assert (=> b!1342488 (= lt!594475 (lemmaInListMapAfterAddingDiffThenInBefore!360 k!1142 (select (arr!44102 _keys!1571) from!1960) lt!594472 lt!594474))))

(declare-fun lt!594473 () ListLongMap!21903)

(assert (=> b!1342488 (contains!9079 lt!594473 k!1142)))

(declare-fun lt!594471 () Unit!44001)

(declare-fun zeroValue!1245 () V!54765)

(assert (=> b!1342488 (= lt!594471 (lemmaInListMapAfterAddingDiffThenInBefore!360 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594473))))

(declare-fun +!4768 (ListLongMap!21903 tuple2!24234) ListLongMap!21903)

(assert (=> b!1342488 (= lt!594473 (+!4768 lt!594474 (tuple2!24235 (select (arr!44102 _keys!1571) from!1960) lt!594472)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17725 0))(
  ( (ValueCellFull!17725 (v!21344 V!54765)) (EmptyCell!17725) )
))
(declare-datatypes ((array!91303 0))(
  ( (array!91304 (arr!44103 (Array (_ BitVec 32) ValueCell!17725)) (size!44654 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91303)

(declare-fun get!22311 (ValueCell!17725 V!54765) V!54765)

(declare-fun dynLambda!3805 (Int (_ BitVec 64)) V!54765)

(assert (=> b!1342488 (= lt!594472 (get!22311 (select (arr!44103 _values!1303) from!1960) (dynLambda!3805 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54765)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6491 (array!91301 array!91303 (_ BitVec 32) (_ BitVec 32) V!54765 V!54765 (_ BitVec 32) Int) ListLongMap!21903)

(assert (=> b!1342488 (= lt!594474 (getCurrentListMapNoExtraKeys!6491 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapIsEmpty!57577 () Bool)

(declare-fun mapRes!57577 () Bool)

(assert (=> mapIsEmpty!57577 mapRes!57577))

(declare-fun b!1342489 () Bool)

(declare-fun res!890755 () Bool)

(assert (=> b!1342489 (=> (not res!890755) (not e!764305))))

(assert (=> b!1342489 (= res!890755 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44653 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57577 () Bool)

(declare-fun tp!109547 () Bool)

(declare-fun e!764306 () Bool)

(assert (=> mapNonEmpty!57577 (= mapRes!57577 (and tp!109547 e!764306))))

(declare-fun mapRest!57577 () (Array (_ BitVec 32) ValueCell!17725))

(declare-fun mapValue!57577 () ValueCell!17725)

(declare-fun mapKey!57577 () (_ BitVec 32))

(assert (=> mapNonEmpty!57577 (= (arr!44103 _values!1303) (store mapRest!57577 mapKey!57577 mapValue!57577))))

(declare-fun res!890753 () Bool)

(assert (=> start!113232 (=> (not res!890753) (not e!764305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113232 (= res!890753 (validMask!0 mask!1977))))

(assert (=> start!113232 e!764305))

(declare-fun tp_is_empty!37247 () Bool)

(assert (=> start!113232 tp_is_empty!37247))

(assert (=> start!113232 true))

(declare-fun array_inv!33161 (array!91301) Bool)

(assert (=> start!113232 (array_inv!33161 _keys!1571)))

(declare-fun e!764302 () Bool)

(declare-fun array_inv!33162 (array!91303) Bool)

(assert (=> start!113232 (and (array_inv!33162 _values!1303) e!764302)))

(assert (=> start!113232 tp!109546))

(declare-fun b!1342490 () Bool)

(declare-fun e!764304 () Bool)

(assert (=> b!1342490 (= e!764304 tp_is_empty!37247)))

(declare-fun b!1342491 () Bool)

(declare-fun res!890752 () Bool)

(assert (=> b!1342491 (=> (not res!890752) (not e!764305))))

(assert (=> b!1342491 (= res!890752 (and (= (size!44654 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44653 _keys!1571) (size!44654 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342492 () Bool)

(declare-fun res!890756 () Bool)

(assert (=> b!1342492 (=> (not res!890756) (not e!764305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91301 (_ BitVec 32)) Bool)

(assert (=> b!1342492 (= res!890756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342493 () Bool)

(declare-fun res!890757 () Bool)

(assert (=> b!1342493 (=> (not res!890757) (not e!764305))))

(assert (=> b!1342493 (= res!890757 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342494 () Bool)

(assert (=> b!1342494 (= e!764302 (and e!764304 mapRes!57577))))

(declare-fun condMapEmpty!57577 () Bool)

(declare-fun mapDefault!57577 () ValueCell!17725)

