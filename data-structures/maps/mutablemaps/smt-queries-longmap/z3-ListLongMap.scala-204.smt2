; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3906 () Bool)

(assert start!3906)

(declare-fun b_free!813 () Bool)

(declare-fun b_next!813 () Bool)

(assert (=> start!3906 (= b_free!813 (not b_next!813))))

(declare-fun tp!3858 () Bool)

(declare-fun b_and!1625 () Bool)

(assert (=> start!3906 (= tp!3858 b_and!1625)))

(declare-fun b!27605 () Bool)

(declare-fun e!17965 () Bool)

(declare-fun tp_is_empty!1167 () Bool)

(assert (=> b!27605 (= e!17965 tp_is_empty!1167)))

(declare-fun b!27606 () Bool)

(declare-fun res!16342 () Bool)

(declare-fun e!17963 () Bool)

(assert (=> b!27606 (=> (not res!16342) (not e!17963))))

(declare-datatypes ((V!1381 0))(
  ( (V!1382 (val!610 Int)) )
))
(declare-datatypes ((ValueCell!384 0))(
  ( (ValueCellFull!384 (v!1699 V!1381)) (EmptyCell!384) )
))
(declare-datatypes ((array!1565 0))(
  ( (array!1566 (arr!736 (Array (_ BitVec 32) ValueCell!384)) (size!837 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1565)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!1567 0))(
  ( (array!1568 (arr!737 (Array (_ BitVec 32) (_ BitVec 64))) (size!838 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1567)

(assert (=> b!27606 (= res!16342 (and (= (size!837 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!838 _keys!1833) (size!837 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!16337 () Bool)

(assert (=> start!3906 (=> (not res!16337) (not e!17963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3906 (= res!16337 (validMask!0 mask!2294))))

(assert (=> start!3906 e!17963))

(assert (=> start!3906 true))

(assert (=> start!3906 tp!3858))

(declare-fun e!17961 () Bool)

(declare-fun array_inv!507 (array!1565) Bool)

(assert (=> start!3906 (and (array_inv!507 _values!1501) e!17961)))

(declare-fun array_inv!508 (array!1567) Bool)

(assert (=> start!3906 (array_inv!508 _keys!1833)))

(assert (=> start!3906 tp_is_empty!1167))

(declare-fun b!27607 () Bool)

(assert (=> b!27607 (= e!17963 false)))

(declare-fun lt!10704 () (_ BitVec 32))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1567 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27607 (= lt!10704 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27608 () Bool)

(declare-fun mapRes!1279 () Bool)

(assert (=> b!27608 (= e!17961 (and e!17965 mapRes!1279))))

(declare-fun condMapEmpty!1279 () Bool)

(declare-fun mapDefault!1279 () ValueCell!384)

(assert (=> b!27608 (= condMapEmpty!1279 (= (arr!736 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!384)) mapDefault!1279)))))

(declare-fun b!27609 () Bool)

(declare-fun res!16339 () Bool)

(assert (=> b!27609 (=> (not res!16339) (not e!17963))))

(declare-datatypes ((List!622 0))(
  ( (Nil!619) (Cons!618 (h!1185 (_ BitVec 64)) (t!3317 List!622)) )
))
(declare-fun arrayNoDuplicates!0 (array!1567 (_ BitVec 32) List!622) Bool)

(assert (=> b!27609 (= res!16339 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!619))))

(declare-fun b!27610 () Bool)

(declare-fun res!16336 () Bool)

(assert (=> b!27610 (=> (not res!16336) (not e!17963))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1381)

(declare-fun minValue!1443 () V!1381)

(declare-datatypes ((tuple2!1006 0))(
  ( (tuple2!1007 (_1!513 (_ BitVec 64)) (_2!513 V!1381)) )
))
(declare-datatypes ((List!623 0))(
  ( (Nil!620) (Cons!619 (h!1186 tuple2!1006) (t!3318 List!623)) )
))
(declare-datatypes ((ListLongMap!587 0))(
  ( (ListLongMap!588 (toList!309 List!623)) )
))
(declare-fun contains!246 (ListLongMap!587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!137 (array!1567 array!1565 (_ BitVec 32) (_ BitVec 32) V!1381 V!1381 (_ BitVec 32) Int) ListLongMap!587)

(assert (=> b!27610 (= res!16336 (not (contains!246 (getCurrentListMap!137 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27611 () Bool)

(declare-fun res!16338 () Bool)

(assert (=> b!27611 (=> (not res!16338) (not e!17963))))

(declare-fun arrayContainsKey!0 (array!1567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27611 (= res!16338 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1279 () Bool)

(assert (=> mapIsEmpty!1279 mapRes!1279))

(declare-fun b!27612 () Bool)

(declare-fun res!16340 () Bool)

(assert (=> b!27612 (=> (not res!16340) (not e!17963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27612 (= res!16340 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1279 () Bool)

(declare-fun tp!3859 () Bool)

(declare-fun e!17962 () Bool)

(assert (=> mapNonEmpty!1279 (= mapRes!1279 (and tp!3859 e!17962))))

(declare-fun mapValue!1279 () ValueCell!384)

(declare-fun mapRest!1279 () (Array (_ BitVec 32) ValueCell!384))

(declare-fun mapKey!1279 () (_ BitVec 32))

(assert (=> mapNonEmpty!1279 (= (arr!736 _values!1501) (store mapRest!1279 mapKey!1279 mapValue!1279))))

(declare-fun b!27613 () Bool)

(declare-fun res!16341 () Bool)

(assert (=> b!27613 (=> (not res!16341) (not e!17963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1567 (_ BitVec 32)) Bool)

(assert (=> b!27613 (= res!16341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27614 () Bool)

(assert (=> b!27614 (= e!17962 tp_is_empty!1167)))

(assert (= (and start!3906 res!16337) b!27606))

(assert (= (and b!27606 res!16342) b!27613))

(assert (= (and b!27613 res!16341) b!27609))

(assert (= (and b!27609 res!16339) b!27612))

(assert (= (and b!27612 res!16340) b!27610))

(assert (= (and b!27610 res!16336) b!27611))

(assert (= (and b!27611 res!16338) b!27607))

(assert (= (and b!27608 condMapEmpty!1279) mapIsEmpty!1279))

(assert (= (and b!27608 (not condMapEmpty!1279)) mapNonEmpty!1279))

(get-info :version)

(assert (= (and mapNonEmpty!1279 ((_ is ValueCellFull!384) mapValue!1279)) b!27614))

(assert (= (and b!27608 ((_ is ValueCellFull!384) mapDefault!1279)) b!27605))

(assert (= start!3906 b!27608))

(declare-fun m!22027 () Bool)

(assert (=> start!3906 m!22027))

(declare-fun m!22029 () Bool)

(assert (=> start!3906 m!22029))

(declare-fun m!22031 () Bool)

(assert (=> start!3906 m!22031))

(declare-fun m!22033 () Bool)

(assert (=> b!27609 m!22033))

(declare-fun m!22035 () Bool)

(assert (=> mapNonEmpty!1279 m!22035))

(declare-fun m!22037 () Bool)

(assert (=> b!27610 m!22037))

(assert (=> b!27610 m!22037))

(declare-fun m!22039 () Bool)

(assert (=> b!27610 m!22039))

(declare-fun m!22041 () Bool)

(assert (=> b!27612 m!22041))

(declare-fun m!22043 () Bool)

(assert (=> b!27611 m!22043))

(declare-fun m!22045 () Bool)

(assert (=> b!27613 m!22045))

(declare-fun m!22047 () Bool)

(assert (=> b!27607 m!22047))

(check-sat (not b!27607) (not b!27611) (not b_next!813) (not b!27612) (not mapNonEmpty!1279) tp_is_empty!1167 (not start!3906) b_and!1625 (not b!27609) (not b!27610) (not b!27613))
(check-sat b_and!1625 (not b_next!813))
