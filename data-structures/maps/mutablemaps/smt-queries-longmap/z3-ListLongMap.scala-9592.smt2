; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113452 () Bool)

(assert start!113452)

(declare-fun b_free!31467 () Bool)

(declare-fun b_next!31467 () Bool)

(assert (=> start!113452 (= b_free!31467 (not b_next!31467))))

(declare-fun tp!110207 () Bool)

(declare-fun b_and!50765 () Bool)

(assert (=> start!113452 (= tp!110207 b_and!50765)))

(declare-fun res!893390 () Bool)

(declare-fun e!766035 () Bool)

(assert (=> start!113452 (=> (not res!893390) (not e!766035))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113452 (= res!893390 (validMask!0 mask!1977))))

(assert (=> start!113452 e!766035))

(declare-fun tp_is_empty!37467 () Bool)

(assert (=> start!113452 tp_is_empty!37467))

(assert (=> start!113452 true))

(declare-datatypes ((array!91727 0))(
  ( (array!91728 (arr!44315 (Array (_ BitVec 32) (_ BitVec 64))) (size!44866 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91727)

(declare-fun array_inv!33307 (array!91727) Bool)

(assert (=> start!113452 (array_inv!33307 _keys!1571)))

(declare-datatypes ((V!55059 0))(
  ( (V!55060 (val!18808 Int)) )
))
(declare-datatypes ((ValueCell!17835 0))(
  ( (ValueCellFull!17835 (v!21454 V!55059)) (EmptyCell!17835) )
))
(declare-datatypes ((array!91729 0))(
  ( (array!91730 (arr!44316 (Array (_ BitVec 32) ValueCell!17835)) (size!44867 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91729)

(declare-fun e!766034 () Bool)

(declare-fun array_inv!33308 (array!91729) Bool)

(assert (=> start!113452 (and (array_inv!33308 _values!1303) e!766034)))

(assert (=> start!113452 tp!110207))

(declare-fun b!1346245 () Bool)

(declare-fun res!893387 () Bool)

(assert (=> b!1346245 (=> (not res!893387) (not e!766035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91727 (_ BitVec 32)) Bool)

(assert (=> b!1346245 (= res!893387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346246 () Bool)

(declare-fun res!893388 () Bool)

(assert (=> b!1346246 (=> (not res!893388) (not e!766035))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346246 (= res!893388 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44866 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346247 () Bool)

(declare-fun e!766036 () Bool)

(assert (=> b!1346247 (= e!766036 tp_is_empty!37467)))

(declare-fun mapIsEmpty!57907 () Bool)

(declare-fun mapRes!57907 () Bool)

(assert (=> mapIsEmpty!57907 mapRes!57907))

(declare-fun b!1346248 () Bool)

(declare-fun res!893389 () Bool)

(assert (=> b!1346248 (=> (not res!893389) (not e!766035))))

(declare-datatypes ((List!31557 0))(
  ( (Nil!31554) (Cons!31553 (h!32762 (_ BitVec 64)) (t!46154 List!31557)) )
))
(declare-fun arrayNoDuplicates!0 (array!91727 (_ BitVec 32) List!31557) Bool)

(assert (=> b!1346248 (= res!893389 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31554))))

(declare-fun b!1346249 () Bool)

(declare-fun e!766033 () Bool)

(assert (=> b!1346249 (= e!766034 (and e!766033 mapRes!57907))))

(declare-fun condMapEmpty!57907 () Bool)

(declare-fun mapDefault!57907 () ValueCell!17835)

(assert (=> b!1346249 (= condMapEmpty!57907 (= (arr!44316 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17835)) mapDefault!57907)))))

(declare-fun b!1346250 () Bool)

(declare-fun res!893386 () Bool)

(assert (=> b!1346250 (=> (not res!893386) (not e!766035))))

(assert (=> b!1346250 (= res!893386 (and (= (size!44867 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44866 _keys!1571) (size!44867 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57907 () Bool)

(declare-fun tp!110206 () Bool)

(assert (=> mapNonEmpty!57907 (= mapRes!57907 (and tp!110206 e!766036))))

(declare-fun mapRest!57907 () (Array (_ BitVec 32) ValueCell!17835))

(declare-fun mapValue!57907 () ValueCell!17835)

(declare-fun mapKey!57907 () (_ BitVec 32))

(assert (=> mapNonEmpty!57907 (= (arr!44316 _values!1303) (store mapRest!57907 mapKey!57907 mapValue!57907))))

(declare-fun b!1346251 () Bool)

(assert (=> b!1346251 (= e!766035 false)))

(declare-fun minValue!1245 () V!55059)

(declare-fun zeroValue!1245 () V!55059)

(declare-fun lt!595435 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24384 0))(
  ( (tuple2!24385 (_1!12202 (_ BitVec 64)) (_2!12202 V!55059)) )
))
(declare-datatypes ((List!31558 0))(
  ( (Nil!31555) (Cons!31554 (h!32763 tuple2!24384) (t!46155 List!31558)) )
))
(declare-datatypes ((ListLongMap!22053 0))(
  ( (ListLongMap!22054 (toList!11042 List!31558)) )
))
(declare-fun contains!9154 (ListLongMap!22053 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5933 (array!91727 array!91729 (_ BitVec 32) (_ BitVec 32) V!55059 V!55059 (_ BitVec 32) Int) ListLongMap!22053)

(assert (=> b!1346251 (= lt!595435 (contains!9154 (getCurrentListMap!5933 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346252 () Bool)

(assert (=> b!1346252 (= e!766033 tp_is_empty!37467)))

(assert (= (and start!113452 res!893390) b!1346250))

(assert (= (and b!1346250 res!893386) b!1346245))

(assert (= (and b!1346245 res!893387) b!1346248))

(assert (= (and b!1346248 res!893389) b!1346246))

(assert (= (and b!1346246 res!893388) b!1346251))

(assert (= (and b!1346249 condMapEmpty!57907) mapIsEmpty!57907))

(assert (= (and b!1346249 (not condMapEmpty!57907)) mapNonEmpty!57907))

(get-info :version)

(assert (= (and mapNonEmpty!57907 ((_ is ValueCellFull!17835) mapValue!57907)) b!1346247))

(assert (= (and b!1346249 ((_ is ValueCellFull!17835) mapDefault!57907)) b!1346252))

(assert (= start!113452 b!1346249))

(declare-fun m!1233467 () Bool)

(assert (=> b!1346248 m!1233467))

(declare-fun m!1233469 () Bool)

(assert (=> mapNonEmpty!57907 m!1233469))

(declare-fun m!1233471 () Bool)

(assert (=> b!1346245 m!1233471))

(declare-fun m!1233473 () Bool)

(assert (=> start!113452 m!1233473))

(declare-fun m!1233475 () Bool)

(assert (=> start!113452 m!1233475))

(declare-fun m!1233477 () Bool)

(assert (=> start!113452 m!1233477))

(declare-fun m!1233479 () Bool)

(assert (=> b!1346251 m!1233479))

(assert (=> b!1346251 m!1233479))

(declare-fun m!1233481 () Bool)

(assert (=> b!1346251 m!1233481))

(check-sat (not b_next!31467) (not start!113452) tp_is_empty!37467 (not mapNonEmpty!57907) (not b!1346251) (not b!1346245) (not b!1346248) b_and!50765)
(check-sat b_and!50765 (not b_next!31467))
