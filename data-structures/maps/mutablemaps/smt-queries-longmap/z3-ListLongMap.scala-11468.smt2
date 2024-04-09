; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133640 () Bool)

(assert start!133640)

(declare-fun b_free!32025 () Bool)

(declare-fun b_next!32025 () Bool)

(assert (=> start!133640 (= b_free!32025 (not b_next!32025))))

(declare-fun tp!113200 () Bool)

(declare-fun b_and!51571 () Bool)

(assert (=> start!133640 (= tp!113200 b_and!51571)))

(declare-fun b!1562020 () Bool)

(declare-fun res!1068083 () Bool)

(declare-fun e!870476 () Bool)

(assert (=> b!1562020 (=> (not res!1068083) (not e!870476))))

(declare-datatypes ((array!104051 0))(
  ( (array!104052 (arr!50213 (Array (_ BitVec 32) (_ BitVec 64))) (size!50764 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104051)

(declare-datatypes ((List!36628 0))(
  ( (Nil!36625) (Cons!36624 (h!38071 (_ BitVec 64)) (t!51450 List!36628)) )
))
(declare-fun arrayNoDuplicates!0 (array!104051 (_ BitVec 32) List!36628) Bool)

(assert (=> b!1562020 (= res!1068083 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36625))))

(declare-fun mapIsEmpty!59412 () Bool)

(declare-fun mapRes!59412 () Bool)

(assert (=> mapIsEmpty!59412 mapRes!59412))

(declare-fun mapNonEmpty!59412 () Bool)

(declare-fun tp!113199 () Bool)

(declare-fun e!870475 () Bool)

(assert (=> mapNonEmpty!59412 (= mapRes!59412 (and tp!113199 e!870475))))

(declare-datatypes ((V!59795 0))(
  ( (V!59796 (val!19429 Int)) )
))
(declare-datatypes ((ValueCell!18315 0))(
  ( (ValueCellFull!18315 (v!22178 V!59795)) (EmptyCell!18315) )
))
(declare-fun mapRest!59412 () (Array (_ BitVec 32) ValueCell!18315))

(declare-fun mapValue!59412 () ValueCell!18315)

(declare-datatypes ((array!104053 0))(
  ( (array!104054 (arr!50214 (Array (_ BitVec 32) ValueCell!18315)) (size!50765 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104053)

(declare-fun mapKey!59412 () (_ BitVec 32))

(assert (=> mapNonEmpty!59412 (= (arr!50214 _values!487) (store mapRest!59412 mapKey!59412 mapValue!59412))))

(declare-fun b!1562021 () Bool)

(declare-fun res!1068078 () Bool)

(assert (=> b!1562021 (=> (not res!1068078) (not e!870476))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562021 (= res!1068078 (validKeyInArray!0 (select (arr!50213 _keys!637) from!782)))))

(declare-fun res!1068082 () Bool)

(assert (=> start!133640 (=> (not res!1068082) (not e!870476))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133640 (= res!1068082 (validMask!0 mask!947))))

(assert (=> start!133640 e!870476))

(assert (=> start!133640 tp!113200))

(declare-fun tp_is_empty!38691 () Bool)

(assert (=> start!133640 tp_is_empty!38691))

(assert (=> start!133640 true))

(declare-fun array_inv!38953 (array!104051) Bool)

(assert (=> start!133640 (array_inv!38953 _keys!637)))

(declare-fun e!870472 () Bool)

(declare-fun array_inv!38954 (array!104053) Bool)

(assert (=> start!133640 (and (array_inv!38954 _values!487) e!870472)))

(declare-fun b!1562022 () Bool)

(declare-fun res!1068079 () Bool)

(assert (=> b!1562022 (=> (not res!1068079) (not e!870476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104051 (_ BitVec 32)) Bool)

(assert (=> b!1562022 (= res!1068079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562023 () Bool)

(assert (=> b!1562023 (= e!870475 tp_is_empty!38691)))

(declare-fun b!1562024 () Bool)

(assert (=> b!1562024 (= e!870476 (not true))))

(declare-fun lt!671434 () Bool)

(declare-datatypes ((tuple2!25252 0))(
  ( (tuple2!25253 (_1!12636 (_ BitVec 64)) (_2!12636 V!59795)) )
))
(declare-datatypes ((List!36629 0))(
  ( (Nil!36626) (Cons!36625 (h!38072 tuple2!25252) (t!51451 List!36629)) )
))
(declare-datatypes ((ListLongMap!22699 0))(
  ( (ListLongMap!22700 (toList!11365 List!36629)) )
))
(declare-fun lt!671435 () ListLongMap!22699)

(declare-fun contains!10285 (ListLongMap!22699 (_ BitVec 64)) Bool)

(assert (=> b!1562024 (= lt!671434 (contains!10285 lt!671435 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562024 (not (contains!10285 lt!671435 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671436 () ListLongMap!22699)

(declare-fun lt!671433 () V!59795)

(declare-fun +!5019 (ListLongMap!22699 tuple2!25252) ListLongMap!22699)

(assert (=> b!1562024 (= lt!671435 (+!5019 lt!671436 (tuple2!25253 (select (arr!50213 _keys!637) from!782) lt!671433)))))

(declare-datatypes ((Unit!51902 0))(
  ( (Unit!51903) )
))
(declare-fun lt!671432 () Unit!51902)

(declare-fun addStillNotContains!555 (ListLongMap!22699 (_ BitVec 64) V!59795 (_ BitVec 64)) Unit!51902)

(assert (=> b!1562024 (= lt!671432 (addStillNotContains!555 lt!671436 (select (arr!50213 _keys!637) from!782) lt!671433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26267 (ValueCell!18315 V!59795) V!59795)

(declare-fun dynLambda!3908 (Int (_ BitVec 64)) V!59795)

(assert (=> b!1562024 (= lt!671433 (get!26267 (select (arr!50214 _values!487) from!782) (dynLambda!3908 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!453 () V!59795)

(declare-fun zeroValue!453 () V!59795)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6725 (array!104051 array!104053 (_ BitVec 32) (_ BitVec 32) V!59795 V!59795 (_ BitVec 32) Int) ListLongMap!22699)

(assert (=> b!1562024 (= lt!671436 (getCurrentListMapNoExtraKeys!6725 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562025 () Bool)

(declare-fun e!870474 () Bool)

(assert (=> b!1562025 (= e!870474 tp_is_empty!38691)))

(declare-fun b!1562026 () Bool)

(declare-fun res!1068081 () Bool)

(assert (=> b!1562026 (=> (not res!1068081) (not e!870476))))

(assert (=> b!1562026 (= res!1068081 (and (= (size!50765 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50764 _keys!637) (size!50765 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562027 () Bool)

(assert (=> b!1562027 (= e!870472 (and e!870474 mapRes!59412))))

(declare-fun condMapEmpty!59412 () Bool)

(declare-fun mapDefault!59412 () ValueCell!18315)

(assert (=> b!1562027 (= condMapEmpty!59412 (= (arr!50214 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18315)) mapDefault!59412)))))

(declare-fun b!1562028 () Bool)

(declare-fun res!1068080 () Bool)

(assert (=> b!1562028 (=> (not res!1068080) (not e!870476))))

(assert (=> b!1562028 (= res!1068080 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50764 _keys!637)) (bvslt from!782 (size!50764 _keys!637))))))

(assert (= (and start!133640 res!1068082) b!1562026))

(assert (= (and b!1562026 res!1068081) b!1562022))

(assert (= (and b!1562022 res!1068079) b!1562020))

(assert (= (and b!1562020 res!1068083) b!1562028))

(assert (= (and b!1562028 res!1068080) b!1562021))

(assert (= (and b!1562021 res!1068078) b!1562024))

(assert (= (and b!1562027 condMapEmpty!59412) mapIsEmpty!59412))

(assert (= (and b!1562027 (not condMapEmpty!59412)) mapNonEmpty!59412))

(get-info :version)

(assert (= (and mapNonEmpty!59412 ((_ is ValueCellFull!18315) mapValue!59412)) b!1562023))

(assert (= (and b!1562027 ((_ is ValueCellFull!18315) mapDefault!59412)) b!1562025))

(assert (= start!133640 b!1562027))

(declare-fun b_lambda!24909 () Bool)

(assert (=> (not b_lambda!24909) (not b!1562024)))

(declare-fun t!51449 () Bool)

(declare-fun tb!12577 () Bool)

(assert (=> (and start!133640 (= defaultEntry!495 defaultEntry!495) t!51449) tb!12577))

(declare-fun result!26427 () Bool)

(assert (=> tb!12577 (= result!26427 tp_is_empty!38691)))

(assert (=> b!1562024 t!51449))

(declare-fun b_and!51573 () Bool)

(assert (= b_and!51571 (and (=> t!51449 result!26427) b_and!51573)))

(declare-fun m!1437795 () Bool)

(assert (=> b!1562022 m!1437795))

(declare-fun m!1437797 () Bool)

(assert (=> b!1562021 m!1437797))

(assert (=> b!1562021 m!1437797))

(declare-fun m!1437799 () Bool)

(assert (=> b!1562021 m!1437799))

(declare-fun m!1437801 () Bool)

(assert (=> start!133640 m!1437801))

(declare-fun m!1437803 () Bool)

(assert (=> start!133640 m!1437803))

(declare-fun m!1437805 () Bool)

(assert (=> start!133640 m!1437805))

(declare-fun m!1437807 () Bool)

(assert (=> b!1562020 m!1437807))

(declare-fun m!1437809 () Bool)

(assert (=> b!1562024 m!1437809))

(declare-fun m!1437811 () Bool)

(assert (=> b!1562024 m!1437811))

(declare-fun m!1437813 () Bool)

(assert (=> b!1562024 m!1437813))

(declare-fun m!1437815 () Bool)

(assert (=> b!1562024 m!1437815))

(assert (=> b!1562024 m!1437809))

(assert (=> b!1562024 m!1437797))

(declare-fun m!1437817 () Bool)

(assert (=> b!1562024 m!1437817))

(declare-fun m!1437819 () Bool)

(assert (=> b!1562024 m!1437819))

(assert (=> b!1562024 m!1437811))

(declare-fun m!1437821 () Bool)

(assert (=> b!1562024 m!1437821))

(assert (=> b!1562024 m!1437797))

(declare-fun m!1437823 () Bool)

(assert (=> b!1562024 m!1437823))

(declare-fun m!1437825 () Bool)

(assert (=> mapNonEmpty!59412 m!1437825))

(check-sat (not b_next!32025) b_and!51573 (not b!1562022) tp_is_empty!38691 (not b!1562020) (not mapNonEmpty!59412) (not b_lambda!24909) (not start!133640) (not b!1562024) (not b!1562021))
(check-sat b_and!51573 (not b_next!32025))
