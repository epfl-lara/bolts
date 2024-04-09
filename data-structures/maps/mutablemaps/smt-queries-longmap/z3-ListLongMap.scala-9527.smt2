; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113062 () Bool)

(assert start!113062)

(declare-fun b_free!31077 () Bool)

(declare-fun b_next!31077 () Bool)

(assert (=> start!113062 (= b_free!31077 (not b_next!31077))))

(declare-fun tp!109036 () Bool)

(declare-fun b_and!50117 () Bool)

(assert (=> start!113062 (= tp!109036 b_and!50117)))

(declare-fun b!1339543 () Bool)

(declare-fun res!888700 () Bool)

(declare-fun e!763029 () Bool)

(assert (=> b!1339543 (=> (not res!888700) (not e!763029))))

(declare-datatypes ((array!90973 0))(
  ( (array!90974 (arr!43938 (Array (_ BitVec 32) (_ BitVec 64))) (size!44489 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90973)

(declare-datatypes ((List!31289 0))(
  ( (Nil!31286) (Cons!31285 (h!32494 (_ BitVec 64)) (t!45628 List!31289)) )
))
(declare-fun arrayNoDuplicates!0 (array!90973 (_ BitVec 32) List!31289) Bool)

(assert (=> b!1339543 (= res!888700 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31286))))

(declare-fun b!1339544 () Bool)

(declare-fun res!888699 () Bool)

(assert (=> b!1339544 (=> (not res!888699) (not e!763029))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90973 (_ BitVec 32)) Bool)

(assert (=> b!1339544 (= res!888699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339545 () Bool)

(declare-fun e!763027 () Bool)

(declare-fun tp_is_empty!37077 () Bool)

(assert (=> b!1339545 (= e!763027 tp_is_empty!37077)))

(declare-fun b!1339546 () Bool)

(declare-fun res!888701 () Bool)

(assert (=> b!1339546 (=> (not res!888701) (not e!763029))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54539 0))(
  ( (V!54540 (val!18613 Int)) )
))
(declare-datatypes ((ValueCell!17640 0))(
  ( (ValueCellFull!17640 (v!21259 V!54539)) (EmptyCell!17640) )
))
(declare-datatypes ((array!90975 0))(
  ( (array!90976 (arr!43939 (Array (_ BitVec 32) ValueCell!17640)) (size!44490 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90975)

(assert (=> b!1339546 (= res!888701 (and (= (size!44490 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44489 _keys!1571) (size!44490 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57322 () Bool)

(declare-fun mapRes!57322 () Bool)

(declare-fun tp!109037 () Bool)

(declare-fun e!763028 () Bool)

(assert (=> mapNonEmpty!57322 (= mapRes!57322 (and tp!109037 e!763028))))

(declare-fun mapKey!57322 () (_ BitVec 32))

(declare-fun mapValue!57322 () ValueCell!17640)

(declare-fun mapRest!57322 () (Array (_ BitVec 32) ValueCell!17640))

(assert (=> mapNonEmpty!57322 (= (arr!43939 _values!1303) (store mapRest!57322 mapKey!57322 mapValue!57322))))

(declare-fun b!1339547 () Bool)

(assert (=> b!1339547 (= e!763028 tp_is_empty!37077)))

(declare-fun res!888697 () Bool)

(assert (=> start!113062 (=> (not res!888697) (not e!763029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113062 (= res!888697 (validMask!0 mask!1977))))

(assert (=> start!113062 e!763029))

(assert (=> start!113062 tp_is_empty!37077))

(assert (=> start!113062 true))

(declare-fun array_inv!33053 (array!90973) Bool)

(assert (=> start!113062 (array_inv!33053 _keys!1571)))

(declare-fun e!763031 () Bool)

(declare-fun array_inv!33054 (array!90975) Bool)

(assert (=> start!113062 (and (array_inv!33054 _values!1303) e!763031)))

(assert (=> start!113062 tp!109036))

(declare-fun mapIsEmpty!57322 () Bool)

(assert (=> mapIsEmpty!57322 mapRes!57322))

(declare-fun b!1339548 () Bool)

(assert (=> b!1339548 (= e!763031 (and e!763027 mapRes!57322))))

(declare-fun condMapEmpty!57322 () Bool)

(declare-fun mapDefault!57322 () ValueCell!17640)

(assert (=> b!1339548 (= condMapEmpty!57322 (= (arr!43939 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17640)) mapDefault!57322)))))

(declare-fun b!1339549 () Bool)

(declare-fun res!888698 () Bool)

(assert (=> b!1339549 (=> (not res!888698) (not e!763029))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339549 (= res!888698 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44489 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339550 () Bool)

(assert (=> b!1339550 (= e!763029 false)))

(declare-fun minValue!1245 () V!54539)

(declare-fun lt!593842 () Bool)

(declare-fun zeroValue!1245 () V!54539)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24102 0))(
  ( (tuple2!24103 (_1!12061 (_ BitVec 64)) (_2!12061 V!54539)) )
))
(declare-datatypes ((List!31290 0))(
  ( (Nil!31287) (Cons!31286 (h!32495 tuple2!24102) (t!45629 List!31290)) )
))
(declare-datatypes ((ListLongMap!21771 0))(
  ( (ListLongMap!21772 (toList!10901 List!31290)) )
))
(declare-fun contains!9013 (ListLongMap!21771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5805 (array!90973 array!90975 (_ BitVec 32) (_ BitVec 32) V!54539 V!54539 (_ BitVec 32) Int) ListLongMap!21771)

(assert (=> b!1339550 (= lt!593842 (contains!9013 (getCurrentListMap!5805 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(assert (= (and start!113062 res!888697) b!1339546))

(assert (= (and b!1339546 res!888701) b!1339544))

(assert (= (and b!1339544 res!888699) b!1339543))

(assert (= (and b!1339543 res!888700) b!1339549))

(assert (= (and b!1339549 res!888698) b!1339550))

(assert (= (and b!1339548 condMapEmpty!57322) mapIsEmpty!57322))

(assert (= (and b!1339548 (not condMapEmpty!57322)) mapNonEmpty!57322))

(get-info :version)

(assert (= (and mapNonEmpty!57322 ((_ is ValueCellFull!17640) mapValue!57322)) b!1339547))

(assert (= (and b!1339548 ((_ is ValueCellFull!17640) mapDefault!57322)) b!1339545))

(assert (= start!113062 b!1339548))

(declare-fun m!1227569 () Bool)

(assert (=> b!1339543 m!1227569))

(declare-fun m!1227571 () Bool)

(assert (=> start!113062 m!1227571))

(declare-fun m!1227573 () Bool)

(assert (=> start!113062 m!1227573))

(declare-fun m!1227575 () Bool)

(assert (=> start!113062 m!1227575))

(declare-fun m!1227577 () Bool)

(assert (=> b!1339550 m!1227577))

(assert (=> b!1339550 m!1227577))

(declare-fun m!1227579 () Bool)

(assert (=> b!1339550 m!1227579))

(declare-fun m!1227581 () Bool)

(assert (=> b!1339544 m!1227581))

(declare-fun m!1227583 () Bool)

(assert (=> mapNonEmpty!57322 m!1227583))

(check-sat (not mapNonEmpty!57322) tp_is_empty!37077 (not start!113062) (not b!1339543) (not b!1339544) (not b_next!31077) b_and!50117 (not b!1339550))
(check-sat b_and!50117 (not b_next!31077))
