; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113080 () Bool)

(assert start!113080)

(declare-fun b_free!31095 () Bool)

(declare-fun b_next!31095 () Bool)

(assert (=> start!113080 (= b_free!31095 (not b_next!31095))))

(declare-fun tp!109091 () Bool)

(declare-fun b_and!50135 () Bool)

(assert (=> start!113080 (= tp!109091 b_and!50135)))

(declare-fun b!1339759 () Bool)

(declare-fun e!763165 () Bool)

(declare-fun e!763166 () Bool)

(declare-fun mapRes!57349 () Bool)

(assert (=> b!1339759 (= e!763165 (and e!763166 mapRes!57349))))

(declare-fun condMapEmpty!57349 () Bool)

(declare-datatypes ((V!54563 0))(
  ( (V!54564 (val!18622 Int)) )
))
(declare-datatypes ((ValueCell!17649 0))(
  ( (ValueCellFull!17649 (v!21268 V!54563)) (EmptyCell!17649) )
))
(declare-datatypes ((array!91007 0))(
  ( (array!91008 (arr!43955 (Array (_ BitVec 32) ValueCell!17649)) (size!44506 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91007)

(declare-fun mapDefault!57349 () ValueCell!17649)

(assert (=> b!1339759 (= condMapEmpty!57349 (= (arr!43955 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17649)) mapDefault!57349)))))

(declare-fun b!1339760 () Bool)

(declare-fun res!888836 () Bool)

(declare-fun e!763163 () Bool)

(assert (=> b!1339760 (=> (not res!888836) (not e!763163))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91009 0))(
  ( (array!91010 (arr!43956 (Array (_ BitVec 32) (_ BitVec 64))) (size!44507 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91009)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339760 (= res!888836 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44507 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339761 () Bool)

(declare-fun tp_is_empty!37095 () Bool)

(assert (=> b!1339761 (= e!763166 tp_is_empty!37095)))

(declare-fun b!1339762 () Bool)

(declare-fun res!888833 () Bool)

(assert (=> b!1339762 (=> (not res!888833) (not e!763163))))

(declare-datatypes ((List!31303 0))(
  ( (Nil!31300) (Cons!31299 (h!32508 (_ BitVec 64)) (t!45642 List!31303)) )
))
(declare-fun arrayNoDuplicates!0 (array!91009 (_ BitVec 32) List!31303) Bool)

(assert (=> b!1339762 (= res!888833 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31300))))

(declare-fun b!1339763 () Bool)

(declare-fun res!888832 () Bool)

(assert (=> b!1339763 (=> (not res!888832) (not e!763163))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1339763 (= res!888832 (and (= (size!44506 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44507 _keys!1571) (size!44506 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339764 () Bool)

(declare-fun res!888835 () Bool)

(assert (=> b!1339764 (=> (not res!888835) (not e!763163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91009 (_ BitVec 32)) Bool)

(assert (=> b!1339764 (= res!888835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339765 () Bool)

(assert (=> b!1339765 (= e!763163 false)))

(declare-fun lt!593869 () Bool)

(declare-fun zeroValue!1245 () V!54563)

(declare-fun minValue!1245 () V!54563)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24116 0))(
  ( (tuple2!24117 (_1!12068 (_ BitVec 64)) (_2!12068 V!54563)) )
))
(declare-datatypes ((List!31304 0))(
  ( (Nil!31301) (Cons!31300 (h!32509 tuple2!24116) (t!45643 List!31304)) )
))
(declare-datatypes ((ListLongMap!21785 0))(
  ( (ListLongMap!21786 (toList!10908 List!31304)) )
))
(declare-fun contains!9020 (ListLongMap!21785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5812 (array!91009 array!91007 (_ BitVec 32) (_ BitVec 32) V!54563 V!54563 (_ BitVec 32) Int) ListLongMap!21785)

(assert (=> b!1339765 (= lt!593869 (contains!9020 (getCurrentListMap!5812 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339766 () Bool)

(declare-fun e!763162 () Bool)

(assert (=> b!1339766 (= e!763162 tp_is_empty!37095)))

(declare-fun mapNonEmpty!57349 () Bool)

(declare-fun tp!109090 () Bool)

(assert (=> mapNonEmpty!57349 (= mapRes!57349 (and tp!109090 e!763162))))

(declare-fun mapKey!57349 () (_ BitVec 32))

(declare-fun mapRest!57349 () (Array (_ BitVec 32) ValueCell!17649))

(declare-fun mapValue!57349 () ValueCell!17649)

(assert (=> mapNonEmpty!57349 (= (arr!43955 _values!1303) (store mapRest!57349 mapKey!57349 mapValue!57349))))

(declare-fun mapIsEmpty!57349 () Bool)

(assert (=> mapIsEmpty!57349 mapRes!57349))

(declare-fun res!888834 () Bool)

(assert (=> start!113080 (=> (not res!888834) (not e!763163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113080 (= res!888834 (validMask!0 mask!1977))))

(assert (=> start!113080 e!763163))

(assert (=> start!113080 tp_is_empty!37095))

(assert (=> start!113080 true))

(declare-fun array_inv!33069 (array!91009) Bool)

(assert (=> start!113080 (array_inv!33069 _keys!1571)))

(declare-fun array_inv!33070 (array!91007) Bool)

(assert (=> start!113080 (and (array_inv!33070 _values!1303) e!763165)))

(assert (=> start!113080 tp!109091))

(assert (= (and start!113080 res!888834) b!1339763))

(assert (= (and b!1339763 res!888832) b!1339764))

(assert (= (and b!1339764 res!888835) b!1339762))

(assert (= (and b!1339762 res!888833) b!1339760))

(assert (= (and b!1339760 res!888836) b!1339765))

(assert (= (and b!1339759 condMapEmpty!57349) mapIsEmpty!57349))

(assert (= (and b!1339759 (not condMapEmpty!57349)) mapNonEmpty!57349))

(get-info :version)

(assert (= (and mapNonEmpty!57349 ((_ is ValueCellFull!17649) mapValue!57349)) b!1339766))

(assert (= (and b!1339759 ((_ is ValueCellFull!17649) mapDefault!57349)) b!1339761))

(assert (= start!113080 b!1339759))

(declare-fun m!1227713 () Bool)

(assert (=> b!1339762 m!1227713))

(declare-fun m!1227715 () Bool)

(assert (=> start!113080 m!1227715))

(declare-fun m!1227717 () Bool)

(assert (=> start!113080 m!1227717))

(declare-fun m!1227719 () Bool)

(assert (=> start!113080 m!1227719))

(declare-fun m!1227721 () Bool)

(assert (=> b!1339765 m!1227721))

(assert (=> b!1339765 m!1227721))

(declare-fun m!1227723 () Bool)

(assert (=> b!1339765 m!1227723))

(declare-fun m!1227725 () Bool)

(assert (=> b!1339764 m!1227725))

(declare-fun m!1227727 () Bool)

(assert (=> mapNonEmpty!57349 m!1227727))

(check-sat (not mapNonEmpty!57349) (not b!1339764) (not b_next!31095) (not b!1339765) (not start!113080) b_and!50135 tp_is_empty!37095 (not b!1339762))
(check-sat b_and!50135 (not b_next!31095))
