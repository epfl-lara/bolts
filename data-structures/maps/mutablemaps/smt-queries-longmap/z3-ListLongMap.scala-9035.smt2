; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109032 () Bool)

(assert start!109032)

(declare-fun b_free!28485 () Bool)

(declare-fun b_next!28485 () Bool)

(assert (=> start!109032 (= b_free!28485 (not b_next!28485))))

(declare-fun tp!100574 () Bool)

(declare-fun b_and!46585 () Bool)

(assert (=> start!109032 (= tp!100574 b_and!46585)))

(declare-fun b!1287929 () Bool)

(declare-fun res!855489 () Bool)

(declare-fun e!735489 () Bool)

(assert (=> b!1287929 (=> (not res!855489) (not e!735489))))

(declare-datatypes ((array!85251 0))(
  ( (array!85252 (arr!41122 (Array (_ BitVec 32) (_ BitVec 64))) (size!41673 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85251)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85251 (_ BitVec 32)) Bool)

(assert (=> b!1287929 (= res!855489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287930 () Bool)

(declare-fun e!735493 () Bool)

(declare-fun tp_is_empty!34125 () Bool)

(assert (=> b!1287930 (= e!735493 tp_is_empty!34125)))

(declare-fun b!1287931 () Bool)

(declare-fun e!735490 () Bool)

(declare-fun e!735492 () Bool)

(declare-fun mapRes!52748 () Bool)

(assert (=> b!1287931 (= e!735490 (and e!735492 mapRes!52748))))

(declare-fun condMapEmpty!52748 () Bool)

(declare-datatypes ((V!50603 0))(
  ( (V!50604 (val!17137 Int)) )
))
(declare-datatypes ((ValueCell!16164 0))(
  ( (ValueCellFull!16164 (v!19738 V!50603)) (EmptyCell!16164) )
))
(declare-datatypes ((array!85253 0))(
  ( (array!85254 (arr!41123 (Array (_ BitVec 32) ValueCell!16164)) (size!41674 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85253)

(declare-fun mapDefault!52748 () ValueCell!16164)

(assert (=> b!1287931 (= condMapEmpty!52748 (= (arr!41123 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16164)) mapDefault!52748)))))

(declare-fun mapNonEmpty!52748 () Bool)

(declare-fun tp!100575 () Bool)

(assert (=> mapNonEmpty!52748 (= mapRes!52748 (and tp!100575 e!735493))))

(declare-fun mapKey!52748 () (_ BitVec 32))

(declare-fun mapValue!52748 () ValueCell!16164)

(declare-fun mapRest!52748 () (Array (_ BitVec 32) ValueCell!16164))

(assert (=> mapNonEmpty!52748 (= (arr!41123 _values!1445) (store mapRest!52748 mapKey!52748 mapValue!52748))))

(declare-fun b!1287932 () Bool)

(declare-fun res!855488 () Bool)

(assert (=> b!1287932 (=> (not res!855488) (not e!735489))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287932 (= res!855488 (not (validKeyInArray!0 (select (arr!41122 _keys!1741) from!2144))))))

(declare-fun b!1287933 () Bool)

(declare-fun res!855485 () Bool)

(assert (=> b!1287933 (=> (not res!855485) (not e!735489))))

(assert (=> b!1287933 (= res!855485 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41673 _keys!1741))))))

(declare-fun b!1287934 () Bool)

(declare-fun res!855482 () Bool)

(assert (=> b!1287934 (=> (not res!855482) (not e!735489))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287934 (= res!855482 (and (= (size!41674 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41673 _keys!1741) (size!41674 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287935 () Bool)

(declare-fun res!855487 () Bool)

(assert (=> b!1287935 (=> (not res!855487) (not e!735489))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1287935 (= res!855487 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41673 _keys!1741))))))

(declare-fun res!855484 () Bool)

(assert (=> start!109032 (=> (not res!855484) (not e!735489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109032 (= res!855484 (validMask!0 mask!2175))))

(assert (=> start!109032 e!735489))

(assert (=> start!109032 tp_is_empty!34125))

(assert (=> start!109032 true))

(declare-fun array_inv!31155 (array!85253) Bool)

(assert (=> start!109032 (and (array_inv!31155 _values!1445) e!735490)))

(declare-fun array_inv!31156 (array!85251) Bool)

(assert (=> start!109032 (array_inv!31156 _keys!1741)))

(assert (=> start!109032 tp!100574))

(declare-fun b!1287928 () Bool)

(declare-fun res!855483 () Bool)

(assert (=> b!1287928 (=> (not res!855483) (not e!735489))))

(declare-datatypes ((List!29329 0))(
  ( (Nil!29326) (Cons!29325 (h!30534 (_ BitVec 64)) (t!42900 List!29329)) )
))
(declare-fun arrayNoDuplicates!0 (array!85251 (_ BitVec 32) List!29329) Bool)

(assert (=> b!1287928 (= res!855483 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29326))))

(declare-fun mapIsEmpty!52748 () Bool)

(assert (=> mapIsEmpty!52748 mapRes!52748))

(declare-fun b!1287936 () Bool)

(assert (=> b!1287936 (= e!735492 tp_is_empty!34125)))

(declare-fun b!1287937 () Bool)

(assert (=> b!1287937 (= e!735489 (not true))))

(declare-datatypes ((tuple2!22130 0))(
  ( (tuple2!22131 (_1!11075 (_ BitVec 64)) (_2!11075 V!50603)) )
))
(declare-datatypes ((List!29330 0))(
  ( (Nil!29327) (Cons!29326 (h!30535 tuple2!22130) (t!42901 List!29330)) )
))
(declare-datatypes ((ListLongMap!19799 0))(
  ( (ListLongMap!19800 (toList!9915 List!29330)) )
))
(declare-fun contains!7971 (ListLongMap!19799 (_ BitVec 64)) Bool)

(assert (=> b!1287937 (not (contains!7971 (ListLongMap!19800 Nil!29327) k0!1205))))

(declare-datatypes ((Unit!42527 0))(
  ( (Unit!42528) )
))
(declare-fun lt!577855 () Unit!42527)

(declare-fun emptyContainsNothing!31 ((_ BitVec 64)) Unit!42527)

(assert (=> b!1287937 (= lt!577855 (emptyContainsNothing!31 k0!1205))))

(declare-fun b!1287938 () Bool)

(declare-fun res!855486 () Bool)

(assert (=> b!1287938 (=> (not res!855486) (not e!735489))))

(declare-fun minValue!1387 () V!50603)

(declare-fun zeroValue!1387 () V!50603)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4920 (array!85251 array!85253 (_ BitVec 32) (_ BitVec 32) V!50603 V!50603 (_ BitVec 32) Int) ListLongMap!19799)

(assert (=> b!1287938 (= res!855486 (contains!7971 (getCurrentListMap!4920 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109032 res!855484) b!1287934))

(assert (= (and b!1287934 res!855482) b!1287929))

(assert (= (and b!1287929 res!855489) b!1287928))

(assert (= (and b!1287928 res!855483) b!1287933))

(assert (= (and b!1287933 res!855485) b!1287938))

(assert (= (and b!1287938 res!855486) b!1287935))

(assert (= (and b!1287935 res!855487) b!1287932))

(assert (= (and b!1287932 res!855488) b!1287937))

(assert (= (and b!1287931 condMapEmpty!52748) mapIsEmpty!52748))

(assert (= (and b!1287931 (not condMapEmpty!52748)) mapNonEmpty!52748))

(get-info :version)

(assert (= (and mapNonEmpty!52748 ((_ is ValueCellFull!16164) mapValue!52748)) b!1287930))

(assert (= (and b!1287931 ((_ is ValueCellFull!16164) mapDefault!52748)) b!1287936))

(assert (= start!109032 b!1287931))

(declare-fun m!1180673 () Bool)

(assert (=> start!109032 m!1180673))

(declare-fun m!1180675 () Bool)

(assert (=> start!109032 m!1180675))

(declare-fun m!1180677 () Bool)

(assert (=> start!109032 m!1180677))

(declare-fun m!1180679 () Bool)

(assert (=> b!1287938 m!1180679))

(assert (=> b!1287938 m!1180679))

(declare-fun m!1180681 () Bool)

(assert (=> b!1287938 m!1180681))

(declare-fun m!1180683 () Bool)

(assert (=> b!1287929 m!1180683))

(declare-fun m!1180685 () Bool)

(assert (=> b!1287932 m!1180685))

(assert (=> b!1287932 m!1180685))

(declare-fun m!1180687 () Bool)

(assert (=> b!1287932 m!1180687))

(declare-fun m!1180689 () Bool)

(assert (=> mapNonEmpty!52748 m!1180689))

(declare-fun m!1180691 () Bool)

(assert (=> b!1287937 m!1180691))

(declare-fun m!1180693 () Bool)

(assert (=> b!1287937 m!1180693))

(declare-fun m!1180695 () Bool)

(assert (=> b!1287928 m!1180695))

(check-sat (not b!1287937) b_and!46585 (not b!1287928) (not b!1287932) (not mapNonEmpty!52748) (not start!109032) (not b!1287929) (not b_next!28485) (not b!1287938) tp_is_empty!34125)
(check-sat b_and!46585 (not b_next!28485))
