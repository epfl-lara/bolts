; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4200 () Bool)

(assert start!4200)

(declare-fun b_free!1107 () Bool)

(declare-fun b_next!1107 () Bool)

(assert (=> start!4200 (= b_free!1107 (not b_next!1107))))

(declare-fun tp!4740 () Bool)

(declare-fun b_and!1919 () Bool)

(assert (=> start!4200 (= tp!4740 b_and!1919)))

(declare-fun b!32006 () Bool)

(declare-fun res!19419 () Bool)

(declare-fun e!20383 () Bool)

(assert (=> b!32006 (=> (not res!19419) (not e!20383))))

(declare-datatypes ((V!1773 0))(
  ( (V!1774 (val!757 Int)) )
))
(declare-datatypes ((ValueCell!531 0))(
  ( (ValueCellFull!531 (v!1846 V!1773)) (EmptyCell!531) )
))
(declare-datatypes ((array!2129 0))(
  ( (array!2130 (arr!1018 (Array (_ BitVec 32) ValueCell!531)) (size!1119 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2129)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2131 0))(
  ( (array!2132 (arr!1019 (Array (_ BitVec 32) (_ BitVec 64))) (size!1120 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2131)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!32006 (= res!19419 (and (= (size!1119 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1120 _keys!1833) (size!1119 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32007 () Bool)

(declare-fun res!19416 () Bool)

(assert (=> b!32007 (=> (not res!19416) (not e!20383))))

(declare-datatypes ((List!829 0))(
  ( (Nil!826) (Cons!825 (h!1392 (_ BitVec 64)) (t!3524 List!829)) )
))
(declare-fun arrayNoDuplicates!0 (array!2131 (_ BitVec 32) List!829) Bool)

(assert (=> b!32007 (= res!19416 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!826))))

(declare-fun b!32008 () Bool)

(assert (=> b!32008 (= e!20383 false)))

(declare-fun lt!11631 () (_ BitVec 32))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2131 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32008 (= lt!11631 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32009 () Bool)

(declare-fun res!19414 () Bool)

(assert (=> b!32009 (=> (not res!19414) (not e!20383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2131 (_ BitVec 32)) Bool)

(assert (=> b!32009 (= res!19414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1720 () Bool)

(declare-fun mapRes!1720 () Bool)

(assert (=> mapIsEmpty!1720 mapRes!1720))

(declare-fun b!32010 () Bool)

(declare-fun e!20382 () Bool)

(declare-fun tp_is_empty!1461 () Bool)

(assert (=> b!32010 (= e!20382 tp_is_empty!1461)))

(declare-fun mapNonEmpty!1720 () Bool)

(declare-fun tp!4741 () Bool)

(assert (=> mapNonEmpty!1720 (= mapRes!1720 (and tp!4741 e!20382))))

(declare-fun mapValue!1720 () ValueCell!531)

(declare-fun mapRest!1720 () (Array (_ BitVec 32) ValueCell!531))

(declare-fun mapKey!1720 () (_ BitVec 32))

(assert (=> mapNonEmpty!1720 (= (arr!1018 _values!1501) (store mapRest!1720 mapKey!1720 mapValue!1720))))

(declare-fun b!32011 () Bool)

(declare-fun res!19415 () Bool)

(assert (=> b!32011 (=> (not res!19415) (not e!20383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32011 (= res!19415 (validKeyInArray!0 k0!1304))))

(declare-fun b!32012 () Bool)

(declare-fun res!19420 () Bool)

(assert (=> b!32012 (=> (not res!19420) (not e!20383))))

(declare-fun arrayContainsKey!0 (array!2131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32012 (= res!19420 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!19418 () Bool)

(assert (=> start!4200 (=> (not res!19418) (not e!20383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4200 (= res!19418 (validMask!0 mask!2294))))

(assert (=> start!4200 e!20383))

(assert (=> start!4200 true))

(assert (=> start!4200 tp!4740))

(declare-fun e!20384 () Bool)

(declare-fun array_inv!677 (array!2129) Bool)

(assert (=> start!4200 (and (array_inv!677 _values!1501) e!20384)))

(declare-fun array_inv!678 (array!2131) Bool)

(assert (=> start!4200 (array_inv!678 _keys!1833)))

(assert (=> start!4200 tp_is_empty!1461))

(declare-fun b!32013 () Bool)

(declare-fun res!19417 () Bool)

(assert (=> b!32013 (=> (not res!19417) (not e!20383))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1773)

(declare-fun minValue!1443 () V!1773)

(declare-datatypes ((tuple2!1226 0))(
  ( (tuple2!1227 (_1!623 (_ BitVec 64)) (_2!623 V!1773)) )
))
(declare-datatypes ((List!830 0))(
  ( (Nil!827) (Cons!826 (h!1393 tuple2!1226) (t!3525 List!830)) )
))
(declare-datatypes ((ListLongMap!807 0))(
  ( (ListLongMap!808 (toList!419 List!830)) )
))
(declare-fun contains!356 (ListLongMap!807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!244 (array!2131 array!2129 (_ BitVec 32) (_ BitVec 32) V!1773 V!1773 (_ BitVec 32) Int) ListLongMap!807)

(assert (=> b!32013 (= res!19417 (not (contains!356 (getCurrentListMap!244 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!32014 () Bool)

(declare-fun e!20385 () Bool)

(assert (=> b!32014 (= e!20385 tp_is_empty!1461)))

(declare-fun b!32015 () Bool)

(assert (=> b!32015 (= e!20384 (and e!20385 mapRes!1720))))

(declare-fun condMapEmpty!1720 () Bool)

(declare-fun mapDefault!1720 () ValueCell!531)

(assert (=> b!32015 (= condMapEmpty!1720 (= (arr!1018 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!531)) mapDefault!1720)))))

(assert (= (and start!4200 res!19418) b!32006))

(assert (= (and b!32006 res!19419) b!32009))

(assert (= (and b!32009 res!19414) b!32007))

(assert (= (and b!32007 res!19416) b!32011))

(assert (= (and b!32011 res!19415) b!32013))

(assert (= (and b!32013 res!19417) b!32012))

(assert (= (and b!32012 res!19420) b!32008))

(assert (= (and b!32015 condMapEmpty!1720) mapIsEmpty!1720))

(assert (= (and b!32015 (not condMapEmpty!1720)) mapNonEmpty!1720))

(get-info :version)

(assert (= (and mapNonEmpty!1720 ((_ is ValueCellFull!531) mapValue!1720)) b!32010))

(assert (= (and b!32015 ((_ is ValueCellFull!531) mapDefault!1720)) b!32014))

(assert (= start!4200 b!32015))

(declare-fun m!25645 () Bool)

(assert (=> b!32008 m!25645))

(declare-fun m!25647 () Bool)

(assert (=> start!4200 m!25647))

(declare-fun m!25649 () Bool)

(assert (=> start!4200 m!25649))

(declare-fun m!25651 () Bool)

(assert (=> start!4200 m!25651))

(declare-fun m!25653 () Bool)

(assert (=> b!32009 m!25653))

(declare-fun m!25655 () Bool)

(assert (=> b!32011 m!25655))

(declare-fun m!25657 () Bool)

(assert (=> b!32013 m!25657))

(assert (=> b!32013 m!25657))

(declare-fun m!25659 () Bool)

(assert (=> b!32013 m!25659))

(declare-fun m!25661 () Bool)

(assert (=> b!32012 m!25661))

(declare-fun m!25663 () Bool)

(assert (=> mapNonEmpty!1720 m!25663))

(declare-fun m!25665 () Bool)

(assert (=> b!32007 m!25665))

(check-sat (not b!32007) (not b!32009) (not b!32008) (not b_next!1107) b_and!1919 (not start!4200) tp_is_empty!1461 (not b!32012) (not b!32011) (not b!32013) (not mapNonEmpty!1720))
(check-sat b_and!1919 (not b_next!1107))
