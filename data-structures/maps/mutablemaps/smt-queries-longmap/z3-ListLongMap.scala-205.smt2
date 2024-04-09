; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3912 () Bool)

(assert start!3912)

(declare-fun b_free!819 () Bool)

(declare-fun b_next!819 () Bool)

(assert (=> start!3912 (= b_free!819 (not b_next!819))))

(declare-fun tp!3876 () Bool)

(declare-fun b_and!1631 () Bool)

(assert (=> start!3912 (= tp!3876 b_and!1631)))

(declare-fun b!27695 () Bool)

(declare-fun res!16402 () Bool)

(declare-fun e!18007 () Bool)

(assert (=> b!27695 (=> (not res!16402) (not e!18007))))

(declare-datatypes ((V!1389 0))(
  ( (V!1390 (val!613 Int)) )
))
(declare-datatypes ((ValueCell!387 0))(
  ( (ValueCellFull!387 (v!1702 V!1389)) (EmptyCell!387) )
))
(declare-datatypes ((array!1575 0))(
  ( (array!1576 (arr!741 (Array (_ BitVec 32) ValueCell!387)) (size!842 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1575)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1577 0))(
  ( (array!1578 (arr!742 (Array (_ BitVec 32) (_ BitVec 64))) (size!843 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1577)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!27695 (= res!16402 (and (= (size!842 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!843 _keys!1833) (size!842 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27696 () Bool)

(declare-fun res!16403 () Bool)

(assert (=> b!27696 (=> (not res!16403) (not e!18007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1577 (_ BitVec 32)) Bool)

(assert (=> b!27696 (= res!16403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1288 () Bool)

(declare-fun mapRes!1288 () Bool)

(assert (=> mapIsEmpty!1288 mapRes!1288))

(declare-fun b!27698 () Bool)

(assert (=> b!27698 (= e!18007 false)))

(declare-fun lt!10713 () (_ BitVec 32))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1577 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27698 (= lt!10713 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27699 () Bool)

(declare-fun e!18009 () Bool)

(declare-fun tp_is_empty!1173 () Bool)

(assert (=> b!27699 (= e!18009 tp_is_empty!1173)))

(declare-fun b!27700 () Bool)

(declare-fun res!16401 () Bool)

(assert (=> b!27700 (=> (not res!16401) (not e!18007))))

(declare-fun arrayContainsKey!0 (array!1577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27700 (= res!16401 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27701 () Bool)

(declare-fun res!16399 () Bool)

(assert (=> b!27701 (=> (not res!16399) (not e!18007))))

(declare-datatypes ((List!624 0))(
  ( (Nil!621) (Cons!620 (h!1187 (_ BitVec 64)) (t!3319 List!624)) )
))
(declare-fun arrayNoDuplicates!0 (array!1577 (_ BitVec 32) List!624) Bool)

(assert (=> b!27701 (= res!16399 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!621))))

(declare-fun b!27702 () Bool)

(declare-fun res!16405 () Bool)

(assert (=> b!27702 (=> (not res!16405) (not e!18007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27702 (= res!16405 (validKeyInArray!0 k0!1304))))

(declare-fun b!27703 () Bool)

(declare-fun e!18006 () Bool)

(assert (=> b!27703 (= e!18006 (and e!18009 mapRes!1288))))

(declare-fun condMapEmpty!1288 () Bool)

(declare-fun mapDefault!1288 () ValueCell!387)

(assert (=> b!27703 (= condMapEmpty!1288 (= (arr!741 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!387)) mapDefault!1288)))))

(declare-fun mapNonEmpty!1288 () Bool)

(declare-fun tp!3877 () Bool)

(declare-fun e!18010 () Bool)

(assert (=> mapNonEmpty!1288 (= mapRes!1288 (and tp!3877 e!18010))))

(declare-fun mapKey!1288 () (_ BitVec 32))

(declare-fun mapRest!1288 () (Array (_ BitVec 32) ValueCell!387))

(declare-fun mapValue!1288 () ValueCell!387)

(assert (=> mapNonEmpty!1288 (= (arr!741 _values!1501) (store mapRest!1288 mapKey!1288 mapValue!1288))))

(declare-fun b!27704 () Bool)

(declare-fun res!16400 () Bool)

(assert (=> b!27704 (=> (not res!16400) (not e!18007))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1389)

(declare-fun minValue!1443 () V!1389)

(declare-datatypes ((tuple2!1008 0))(
  ( (tuple2!1009 (_1!514 (_ BitVec 64)) (_2!514 V!1389)) )
))
(declare-datatypes ((List!625 0))(
  ( (Nil!622) (Cons!621 (h!1188 tuple2!1008) (t!3320 List!625)) )
))
(declare-datatypes ((ListLongMap!589 0))(
  ( (ListLongMap!590 (toList!310 List!625)) )
))
(declare-fun contains!247 (ListLongMap!589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!138 (array!1577 array!1575 (_ BitVec 32) (_ BitVec 32) V!1389 V!1389 (_ BitVec 32) Int) ListLongMap!589)

(assert (=> b!27704 (= res!16400 (not (contains!247 (getCurrentListMap!138 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27697 () Bool)

(assert (=> b!27697 (= e!18010 tp_is_empty!1173)))

(declare-fun res!16404 () Bool)

(assert (=> start!3912 (=> (not res!16404) (not e!18007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3912 (= res!16404 (validMask!0 mask!2294))))

(assert (=> start!3912 e!18007))

(assert (=> start!3912 true))

(assert (=> start!3912 tp!3876))

(declare-fun array_inv!509 (array!1575) Bool)

(assert (=> start!3912 (and (array_inv!509 _values!1501) e!18006)))

(declare-fun array_inv!510 (array!1577) Bool)

(assert (=> start!3912 (array_inv!510 _keys!1833)))

(assert (=> start!3912 tp_is_empty!1173))

(assert (= (and start!3912 res!16404) b!27695))

(assert (= (and b!27695 res!16402) b!27696))

(assert (= (and b!27696 res!16403) b!27701))

(assert (= (and b!27701 res!16399) b!27702))

(assert (= (and b!27702 res!16405) b!27704))

(assert (= (and b!27704 res!16400) b!27700))

(assert (= (and b!27700 res!16401) b!27698))

(assert (= (and b!27703 condMapEmpty!1288) mapIsEmpty!1288))

(assert (= (and b!27703 (not condMapEmpty!1288)) mapNonEmpty!1288))

(get-info :version)

(assert (= (and mapNonEmpty!1288 ((_ is ValueCellFull!387) mapValue!1288)) b!27697))

(assert (= (and b!27703 ((_ is ValueCellFull!387) mapDefault!1288)) b!27699))

(assert (= start!3912 b!27703))

(declare-fun m!22093 () Bool)

(assert (=> b!27701 m!22093))

(declare-fun m!22095 () Bool)

(assert (=> start!3912 m!22095))

(declare-fun m!22097 () Bool)

(assert (=> start!3912 m!22097))

(declare-fun m!22099 () Bool)

(assert (=> start!3912 m!22099))

(declare-fun m!22101 () Bool)

(assert (=> b!27696 m!22101))

(declare-fun m!22103 () Bool)

(assert (=> b!27700 m!22103))

(declare-fun m!22105 () Bool)

(assert (=> mapNonEmpty!1288 m!22105))

(declare-fun m!22107 () Bool)

(assert (=> b!27704 m!22107))

(assert (=> b!27704 m!22107))

(declare-fun m!22109 () Bool)

(assert (=> b!27704 m!22109))

(declare-fun m!22111 () Bool)

(assert (=> b!27698 m!22111))

(declare-fun m!22113 () Bool)

(assert (=> b!27702 m!22113))

(check-sat (not b_next!819) (not b!27698) (not b!27701) (not start!3912) (not b!27702) (not b!27704) (not b!27696) tp_is_empty!1173 b_and!1631 (not b!27700) (not mapNonEmpty!1288))
(check-sat b_and!1631 (not b_next!819))
