; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113470 () Bool)

(assert start!113470)

(declare-fun b_free!31485 () Bool)

(declare-fun b_next!31485 () Bool)

(assert (=> start!113470 (= b_free!31485 (not b_next!31485))))

(declare-fun tp!110260 () Bool)

(declare-fun b_and!50783 () Bool)

(assert (=> start!113470 (= tp!110260 b_and!50783)))

(declare-fun b!1346476 () Bool)

(declare-fun e!766169 () Bool)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346476 (= e!766169 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000))))

(declare-fun b!1346477 () Bool)

(declare-fun res!893541 () Bool)

(assert (=> b!1346477 (=> (not res!893541) (not e!766169))))

(declare-datatypes ((array!91759 0))(
  ( (array!91760 (arr!44331 (Array (_ BitVec 32) (_ BitVec 64))) (size!44882 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91759)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346477 (= res!893541 (not (validKeyInArray!0 (select (arr!44331 _keys!1571) from!1960))))))

(declare-fun b!1346478 () Bool)

(declare-fun res!893538 () Bool)

(assert (=> b!1346478 (=> (not res!893538) (not e!766169))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55083 0))(
  ( (V!55084 (val!18817 Int)) )
))
(declare-datatypes ((ValueCell!17844 0))(
  ( (ValueCellFull!17844 (v!21463 V!55083)) (EmptyCell!17844) )
))
(declare-datatypes ((array!91761 0))(
  ( (array!91762 (arr!44332 (Array (_ BitVec 32) ValueCell!17844)) (size!44883 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91761)

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1346478 (= res!893538 (and (= (size!44883 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44882 _keys!1571) (size!44883 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346479 () Bool)

(declare-fun res!893542 () Bool)

(assert (=> b!1346479 (=> (not res!893542) (not e!766169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91759 (_ BitVec 32)) Bool)

(assert (=> b!1346479 (= res!893542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346480 () Bool)

(declare-fun res!893539 () Bool)

(assert (=> b!1346480 (=> (not res!893539) (not e!766169))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1346480 (= res!893539 (not (= (select (arr!44331 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1346481 () Bool)

(declare-fun e!766170 () Bool)

(declare-fun tp_is_empty!37485 () Bool)

(assert (=> b!1346481 (= e!766170 tp_is_empty!37485)))

(declare-fun res!893536 () Bool)

(assert (=> start!113470 (=> (not res!893536) (not e!766169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113470 (= res!893536 (validMask!0 mask!1977))))

(assert (=> start!113470 e!766169))

(assert (=> start!113470 tp_is_empty!37485))

(assert (=> start!113470 true))

(declare-fun array_inv!33317 (array!91759) Bool)

(assert (=> start!113470 (array_inv!33317 _keys!1571)))

(declare-fun e!766168 () Bool)

(declare-fun array_inv!33318 (array!91761) Bool)

(assert (=> start!113470 (and (array_inv!33318 _values!1303) e!766168)))

(assert (=> start!113470 tp!110260))

(declare-fun b!1346482 () Bool)

(declare-fun mapRes!57934 () Bool)

(assert (=> b!1346482 (= e!766168 (and e!766170 mapRes!57934))))

(declare-fun condMapEmpty!57934 () Bool)

(declare-fun mapDefault!57934 () ValueCell!17844)

(assert (=> b!1346482 (= condMapEmpty!57934 (= (arr!44332 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17844)) mapDefault!57934)))))

(declare-fun mapIsEmpty!57934 () Bool)

(assert (=> mapIsEmpty!57934 mapRes!57934))

(declare-fun b!1346483 () Bool)

(declare-fun e!766172 () Bool)

(assert (=> b!1346483 (= e!766172 tp_is_empty!37485)))

(declare-fun b!1346484 () Bool)

(declare-fun res!893537 () Bool)

(assert (=> b!1346484 (=> (not res!893537) (not e!766169))))

(assert (=> b!1346484 (= res!893537 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44882 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346485 () Bool)

(declare-fun res!893540 () Bool)

(assert (=> b!1346485 (=> (not res!893540) (not e!766169))))

(declare-fun minValue!1245 () V!55083)

(declare-fun zeroValue!1245 () V!55083)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24392 0))(
  ( (tuple2!24393 (_1!12206 (_ BitVec 64)) (_2!12206 V!55083)) )
))
(declare-datatypes ((List!31567 0))(
  ( (Nil!31564) (Cons!31563 (h!32772 tuple2!24392) (t!46164 List!31567)) )
))
(declare-datatypes ((ListLongMap!22061 0))(
  ( (ListLongMap!22062 (toList!11046 List!31567)) )
))
(declare-fun contains!9158 (ListLongMap!22061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5937 (array!91759 array!91761 (_ BitVec 32) (_ BitVec 32) V!55083 V!55083 (_ BitVec 32) Int) ListLongMap!22061)

(assert (=> b!1346485 (= res!893540 (contains!9158 (getCurrentListMap!5937 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57934 () Bool)

(declare-fun tp!110261 () Bool)

(assert (=> mapNonEmpty!57934 (= mapRes!57934 (and tp!110261 e!766172))))

(declare-fun mapRest!57934 () (Array (_ BitVec 32) ValueCell!17844))

(declare-fun mapValue!57934 () ValueCell!17844)

(declare-fun mapKey!57934 () (_ BitVec 32))

(assert (=> mapNonEmpty!57934 (= (arr!44332 _values!1303) (store mapRest!57934 mapKey!57934 mapValue!57934))))

(declare-fun b!1346486 () Bool)

(declare-fun res!893543 () Bool)

(assert (=> b!1346486 (=> (not res!893543) (not e!766169))))

(declare-datatypes ((List!31568 0))(
  ( (Nil!31565) (Cons!31564 (h!32773 (_ BitVec 64)) (t!46165 List!31568)) )
))
(declare-fun arrayNoDuplicates!0 (array!91759 (_ BitVec 32) List!31568) Bool)

(assert (=> b!1346486 (= res!893543 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31565))))

(assert (= (and start!113470 res!893536) b!1346478))

(assert (= (and b!1346478 res!893538) b!1346479))

(assert (= (and b!1346479 res!893542) b!1346486))

(assert (= (and b!1346486 res!893543) b!1346484))

(assert (= (and b!1346484 res!893537) b!1346485))

(assert (= (and b!1346485 res!893540) b!1346480))

(assert (= (and b!1346480 res!893539) b!1346477))

(assert (= (and b!1346477 res!893541) b!1346476))

(assert (= (and b!1346482 condMapEmpty!57934) mapIsEmpty!57934))

(assert (= (and b!1346482 (not condMapEmpty!57934)) mapNonEmpty!57934))

(get-info :version)

(assert (= (and mapNonEmpty!57934 ((_ is ValueCellFull!17844) mapValue!57934)) b!1346483))

(assert (= (and b!1346482 ((_ is ValueCellFull!17844) mapDefault!57934)) b!1346481))

(assert (= start!113470 b!1346482))

(declare-fun m!1233615 () Bool)

(assert (=> b!1346477 m!1233615))

(assert (=> b!1346477 m!1233615))

(declare-fun m!1233617 () Bool)

(assert (=> b!1346477 m!1233617))

(declare-fun m!1233619 () Bool)

(assert (=> start!113470 m!1233619))

(declare-fun m!1233621 () Bool)

(assert (=> start!113470 m!1233621))

(declare-fun m!1233623 () Bool)

(assert (=> start!113470 m!1233623))

(declare-fun m!1233625 () Bool)

(assert (=> b!1346479 m!1233625))

(assert (=> b!1346480 m!1233615))

(declare-fun m!1233627 () Bool)

(assert (=> b!1346486 m!1233627))

(declare-fun m!1233629 () Bool)

(assert (=> b!1346485 m!1233629))

(assert (=> b!1346485 m!1233629))

(declare-fun m!1233631 () Bool)

(assert (=> b!1346485 m!1233631))

(declare-fun m!1233633 () Bool)

(assert (=> mapNonEmpty!57934 m!1233633))

(check-sat b_and!50783 (not b!1346486) tp_is_empty!37485 (not b!1346477) (not b!1346485) (not b!1346479) (not mapNonEmpty!57934) (not start!113470) (not b_next!31485))
(check-sat b_and!50783 (not b_next!31485))
