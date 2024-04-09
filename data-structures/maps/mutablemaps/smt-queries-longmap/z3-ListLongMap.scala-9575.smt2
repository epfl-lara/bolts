; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113350 () Bool)

(assert start!113350)

(declare-fun b_free!31365 () Bool)

(declare-fun b_next!31365 () Bool)

(assert (=> start!113350 (= b_free!31365 (not b_next!31365))))

(declare-fun tp!109900 () Bool)

(declare-fun b_and!50597 () Bool)

(assert (=> start!113350 (= tp!109900 b_and!50597)))

(declare-fun b!1344385 () Bool)

(declare-fun res!892056 () Bool)

(declare-fun e!765190 () Bool)

(assert (=> b!1344385 (=> (not res!892056) (not e!765190))))

(declare-datatypes ((V!54923 0))(
  ( (V!54924 (val!18757 Int)) )
))
(declare-fun minValue!1245 () V!54923)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91527 0))(
  ( (array!91528 (arr!44215 (Array (_ BitVec 32) (_ BitVec 64))) (size!44766 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91527)

(declare-fun zeroValue!1245 () V!54923)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17784 0))(
  ( (ValueCellFull!17784 (v!21403 V!54923)) (EmptyCell!17784) )
))
(declare-datatypes ((array!91529 0))(
  ( (array!91530 (arr!44216 (Array (_ BitVec 32) ValueCell!17784)) (size!44767 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91529)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24316 0))(
  ( (tuple2!24317 (_1!12168 (_ BitVec 64)) (_2!12168 V!54923)) )
))
(declare-datatypes ((List!31490 0))(
  ( (Nil!31487) (Cons!31486 (h!32695 tuple2!24316) (t!46021 List!31490)) )
))
(declare-datatypes ((ListLongMap!21985 0))(
  ( (ListLongMap!21986 (toList!11008 List!31490)) )
))
(declare-fun contains!9120 (ListLongMap!21985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5901 (array!91527 array!91529 (_ BitVec 32) (_ BitVec 32) V!54923 V!54923 (_ BitVec 32) Int) ListLongMap!21985)

(assert (=> b!1344385 (= res!892056 (contains!9120 (getCurrentListMap!5901 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344386 () Bool)

(declare-fun res!892052 () Bool)

(assert (=> b!1344386 (=> (not res!892052) (not e!765190))))

(declare-datatypes ((List!31491 0))(
  ( (Nil!31488) (Cons!31487 (h!32696 (_ BitVec 64)) (t!46022 List!31491)) )
))
(declare-fun arrayNoDuplicates!0 (array!91527 (_ BitVec 32) List!31491) Bool)

(assert (=> b!1344386 (= res!892052 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31488))))

(declare-fun b!1344387 () Bool)

(declare-fun res!892055 () Bool)

(assert (=> b!1344387 (=> (not res!892055) (not e!765190))))

(assert (=> b!1344387 (= res!892055 (and (= (size!44767 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44766 _keys!1571) (size!44767 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344388 () Bool)

(assert (=> b!1344388 (= e!765190 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun b!1344389 () Bool)

(declare-fun res!892057 () Bool)

(assert (=> b!1344389 (=> (not res!892057) (not e!765190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344389 (= res!892057 (validKeyInArray!0 (select (arr!44215 _keys!1571) from!1960)))))

(declare-fun b!1344390 () Bool)

(declare-fun e!765188 () Bool)

(declare-fun tp_is_empty!37365 () Bool)

(assert (=> b!1344390 (= e!765188 tp_is_empty!37365)))

(declare-fun res!892054 () Bool)

(assert (=> start!113350 (=> (not res!892054) (not e!765190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113350 (= res!892054 (validMask!0 mask!1977))))

(assert (=> start!113350 e!765190))

(assert (=> start!113350 tp_is_empty!37365))

(assert (=> start!113350 true))

(declare-fun array_inv!33241 (array!91527) Bool)

(assert (=> start!113350 (array_inv!33241 _keys!1571)))

(declare-fun e!765191 () Bool)

(declare-fun array_inv!33242 (array!91529) Bool)

(assert (=> start!113350 (and (array_inv!33242 _values!1303) e!765191)))

(assert (=> start!113350 tp!109900))

(declare-fun mapIsEmpty!57754 () Bool)

(declare-fun mapRes!57754 () Bool)

(assert (=> mapIsEmpty!57754 mapRes!57754))

(declare-fun b!1344391 () Bool)

(declare-fun res!892053 () Bool)

(assert (=> b!1344391 (=> (not res!892053) (not e!765190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91527 (_ BitVec 32)) Bool)

(assert (=> b!1344391 (= res!892053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57754 () Bool)

(declare-fun tp!109901 () Bool)

(assert (=> mapNonEmpty!57754 (= mapRes!57754 (and tp!109901 e!765188))))

(declare-fun mapKey!57754 () (_ BitVec 32))

(declare-fun mapValue!57754 () ValueCell!17784)

(declare-fun mapRest!57754 () (Array (_ BitVec 32) ValueCell!17784))

(assert (=> mapNonEmpty!57754 (= (arr!44216 _values!1303) (store mapRest!57754 mapKey!57754 mapValue!57754))))

(declare-fun b!1344392 () Bool)

(declare-fun e!765187 () Bool)

(assert (=> b!1344392 (= e!765187 tp_is_empty!37365)))

(declare-fun b!1344393 () Bool)

(assert (=> b!1344393 (= e!765191 (and e!765187 mapRes!57754))))

(declare-fun condMapEmpty!57754 () Bool)

(declare-fun mapDefault!57754 () ValueCell!17784)

(assert (=> b!1344393 (= condMapEmpty!57754 (= (arr!44216 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17784)) mapDefault!57754)))))

(declare-fun b!1344394 () Bool)

(declare-fun res!892058 () Bool)

(assert (=> b!1344394 (=> (not res!892058) (not e!765190))))

(assert (=> b!1344394 (= res!892058 (not (= (select (arr!44215 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1344395 () Bool)

(declare-fun res!892051 () Bool)

(assert (=> b!1344395 (=> (not res!892051) (not e!765190))))

(assert (=> b!1344395 (= res!892051 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44766 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113350 res!892054) b!1344387))

(assert (= (and b!1344387 res!892055) b!1344391))

(assert (= (and b!1344391 res!892053) b!1344386))

(assert (= (and b!1344386 res!892052) b!1344395))

(assert (= (and b!1344395 res!892051) b!1344385))

(assert (= (and b!1344385 res!892056) b!1344394))

(assert (= (and b!1344394 res!892058) b!1344389))

(assert (= (and b!1344389 res!892057) b!1344388))

(assert (= (and b!1344393 condMapEmpty!57754) mapIsEmpty!57754))

(assert (= (and b!1344393 (not condMapEmpty!57754)) mapNonEmpty!57754))

(get-info :version)

(assert (= (and mapNonEmpty!57754 ((_ is ValueCellFull!17784) mapValue!57754)) b!1344390))

(assert (= (and b!1344393 ((_ is ValueCellFull!17784) mapDefault!57754)) b!1344392))

(assert (= start!113350 b!1344393))

(declare-fun m!1232007 () Bool)

(assert (=> b!1344385 m!1232007))

(assert (=> b!1344385 m!1232007))

(declare-fun m!1232009 () Bool)

(assert (=> b!1344385 m!1232009))

(declare-fun m!1232011 () Bool)

(assert (=> mapNonEmpty!57754 m!1232011))

(declare-fun m!1232013 () Bool)

(assert (=> b!1344389 m!1232013))

(assert (=> b!1344389 m!1232013))

(declare-fun m!1232015 () Bool)

(assert (=> b!1344389 m!1232015))

(assert (=> b!1344394 m!1232013))

(declare-fun m!1232017 () Bool)

(assert (=> b!1344386 m!1232017))

(declare-fun m!1232019 () Bool)

(assert (=> start!113350 m!1232019))

(declare-fun m!1232021 () Bool)

(assert (=> start!113350 m!1232021))

(declare-fun m!1232023 () Bool)

(assert (=> start!113350 m!1232023))

(declare-fun m!1232025 () Bool)

(assert (=> b!1344391 m!1232025))

(check-sat (not b_next!31365) (not mapNonEmpty!57754) (not b!1344389) (not b!1344391) b_and!50597 tp_is_empty!37365 (not b!1344386) (not b!1344385) (not start!113350))
(check-sat b_and!50597 (not b_next!31365))
