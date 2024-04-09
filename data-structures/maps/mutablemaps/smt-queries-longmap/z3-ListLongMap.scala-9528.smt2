; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113068 () Bool)

(assert start!113068)

(declare-fun b_free!31083 () Bool)

(declare-fun b_next!31083 () Bool)

(assert (=> start!113068 (= b_free!31083 (not b_next!31083))))

(declare-fun tp!109054 () Bool)

(declare-fun b_and!50123 () Bool)

(assert (=> start!113068 (= tp!109054 b_and!50123)))

(declare-fun b!1339615 () Bool)

(declare-fun e!763076 () Bool)

(declare-fun e!763072 () Bool)

(declare-fun mapRes!57331 () Bool)

(assert (=> b!1339615 (= e!763076 (and e!763072 mapRes!57331))))

(declare-fun condMapEmpty!57331 () Bool)

(declare-datatypes ((V!54547 0))(
  ( (V!54548 (val!18616 Int)) )
))
(declare-datatypes ((ValueCell!17643 0))(
  ( (ValueCellFull!17643 (v!21262 V!54547)) (EmptyCell!17643) )
))
(declare-datatypes ((array!90985 0))(
  ( (array!90986 (arr!43944 (Array (_ BitVec 32) ValueCell!17643)) (size!44495 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90985)

(declare-fun mapDefault!57331 () ValueCell!17643)

(assert (=> b!1339615 (= condMapEmpty!57331 (= (arr!43944 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17643)) mapDefault!57331)))))

(declare-fun res!888746 () Bool)

(declare-fun e!763075 () Bool)

(assert (=> start!113068 (=> (not res!888746) (not e!763075))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113068 (= res!888746 (validMask!0 mask!1977))))

(assert (=> start!113068 e!763075))

(declare-fun tp_is_empty!37083 () Bool)

(assert (=> start!113068 tp_is_empty!37083))

(assert (=> start!113068 true))

(declare-datatypes ((array!90987 0))(
  ( (array!90988 (arr!43945 (Array (_ BitVec 32) (_ BitVec 64))) (size!44496 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90987)

(declare-fun array_inv!33059 (array!90987) Bool)

(assert (=> start!113068 (array_inv!33059 _keys!1571)))

(declare-fun array_inv!33060 (array!90985) Bool)

(assert (=> start!113068 (and (array_inv!33060 _values!1303) e!763076)))

(assert (=> start!113068 tp!109054))

(declare-fun mapNonEmpty!57331 () Bool)

(declare-fun tp!109055 () Bool)

(declare-fun e!763073 () Bool)

(assert (=> mapNonEmpty!57331 (= mapRes!57331 (and tp!109055 e!763073))))

(declare-fun mapRest!57331 () (Array (_ BitVec 32) ValueCell!17643))

(declare-fun mapValue!57331 () ValueCell!17643)

(declare-fun mapKey!57331 () (_ BitVec 32))

(assert (=> mapNonEmpty!57331 (= (arr!43944 _values!1303) (store mapRest!57331 mapKey!57331 mapValue!57331))))

(declare-fun b!1339616 () Bool)

(declare-fun res!888745 () Bool)

(assert (=> b!1339616 (=> (not res!888745) (not e!763075))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339616 (= res!888745 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44496 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339617 () Bool)

(declare-fun res!888742 () Bool)

(assert (=> b!1339617 (=> (not res!888742) (not e!763075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90987 (_ BitVec 32)) Bool)

(assert (=> b!1339617 (= res!888742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57331 () Bool)

(assert (=> mapIsEmpty!57331 mapRes!57331))

(declare-fun b!1339618 () Bool)

(declare-fun res!888743 () Bool)

(assert (=> b!1339618 (=> (not res!888743) (not e!763075))))

(declare-datatypes ((List!31293 0))(
  ( (Nil!31290) (Cons!31289 (h!32498 (_ BitVec 64)) (t!45632 List!31293)) )
))
(declare-fun arrayNoDuplicates!0 (array!90987 (_ BitVec 32) List!31293) Bool)

(assert (=> b!1339618 (= res!888743 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31290))))

(declare-fun b!1339619 () Bool)

(assert (=> b!1339619 (= e!763075 false)))

(declare-fun minValue!1245 () V!54547)

(declare-fun zeroValue!1245 () V!54547)

(declare-fun lt!593851 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24106 0))(
  ( (tuple2!24107 (_1!12063 (_ BitVec 64)) (_2!12063 V!54547)) )
))
(declare-datatypes ((List!31294 0))(
  ( (Nil!31291) (Cons!31290 (h!32499 tuple2!24106) (t!45633 List!31294)) )
))
(declare-datatypes ((ListLongMap!21775 0))(
  ( (ListLongMap!21776 (toList!10903 List!31294)) )
))
(declare-fun contains!9015 (ListLongMap!21775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5807 (array!90987 array!90985 (_ BitVec 32) (_ BitVec 32) V!54547 V!54547 (_ BitVec 32) Int) ListLongMap!21775)

(assert (=> b!1339619 (= lt!593851 (contains!9015 (getCurrentListMap!5807 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339620 () Bool)

(assert (=> b!1339620 (= e!763073 tp_is_empty!37083)))

(declare-fun b!1339621 () Bool)

(declare-fun res!888744 () Bool)

(assert (=> b!1339621 (=> (not res!888744) (not e!763075))))

(assert (=> b!1339621 (= res!888744 (and (= (size!44495 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44496 _keys!1571) (size!44495 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339622 () Bool)

(assert (=> b!1339622 (= e!763072 tp_is_empty!37083)))

(assert (= (and start!113068 res!888746) b!1339621))

(assert (= (and b!1339621 res!888744) b!1339617))

(assert (= (and b!1339617 res!888742) b!1339618))

(assert (= (and b!1339618 res!888743) b!1339616))

(assert (= (and b!1339616 res!888745) b!1339619))

(assert (= (and b!1339615 condMapEmpty!57331) mapIsEmpty!57331))

(assert (= (and b!1339615 (not condMapEmpty!57331)) mapNonEmpty!57331))

(get-info :version)

(assert (= (and mapNonEmpty!57331 ((_ is ValueCellFull!17643) mapValue!57331)) b!1339620))

(assert (= (and b!1339615 ((_ is ValueCellFull!17643) mapDefault!57331)) b!1339622))

(assert (= start!113068 b!1339615))

(declare-fun m!1227617 () Bool)

(assert (=> b!1339618 m!1227617))

(declare-fun m!1227619 () Bool)

(assert (=> b!1339617 m!1227619))

(declare-fun m!1227621 () Bool)

(assert (=> b!1339619 m!1227621))

(assert (=> b!1339619 m!1227621))

(declare-fun m!1227623 () Bool)

(assert (=> b!1339619 m!1227623))

(declare-fun m!1227625 () Bool)

(assert (=> start!113068 m!1227625))

(declare-fun m!1227627 () Bool)

(assert (=> start!113068 m!1227627))

(declare-fun m!1227629 () Bool)

(assert (=> start!113068 m!1227629))

(declare-fun m!1227631 () Bool)

(assert (=> mapNonEmpty!57331 m!1227631))

(check-sat b_and!50123 (not start!113068) (not b!1339618) (not mapNonEmpty!57331) tp_is_empty!37083 (not b!1339617) (not b_next!31083) (not b!1339619))
(check-sat b_and!50123 (not b_next!31083))
