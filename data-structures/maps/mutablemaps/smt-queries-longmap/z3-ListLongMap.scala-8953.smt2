; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108482 () Bool)

(assert start!108482)

(declare-fun b_free!27993 () Bool)

(declare-fun b_next!27993 () Bool)

(assert (=> start!108482 (= b_free!27993 (not b_next!27993))))

(declare-fun tp!99090 () Bool)

(declare-fun b_and!46063 () Bool)

(assert (=> start!108482 (= tp!99090 b_and!46063)))

(declare-fun b!1279831 () Bool)

(declare-fun e!731289 () Bool)

(declare-fun tp_is_empty!33633 () Bool)

(assert (=> b!1279831 (= e!731289 tp_is_empty!33633)))

(declare-fun b!1279832 () Bool)

(declare-fun res!850241 () Bool)

(declare-fun e!731287 () Bool)

(assert (=> b!1279832 (=> (not res!850241) (not e!731287))))

(declare-datatypes ((array!84299 0))(
  ( (array!84300 (arr!40649 (Array (_ BitVec 32) (_ BitVec 64))) (size!41200 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84299)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84299 (_ BitVec 32)) Bool)

(assert (=> b!1279832 (= res!850241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279833 () Bool)

(declare-fun res!850240 () Bool)

(assert (=> b!1279833 (=> (not res!850240) (not e!731287))))

(declare-datatypes ((V!49947 0))(
  ( (V!49948 (val!16891 Int)) )
))
(declare-datatypes ((ValueCell!15918 0))(
  ( (ValueCellFull!15918 (v!19489 V!49947)) (EmptyCell!15918) )
))
(declare-datatypes ((array!84301 0))(
  ( (array!84302 (arr!40650 (Array (_ BitVec 32) ValueCell!15918)) (size!41201 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84301)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279833 (= res!850240 (and (= (size!41201 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41200 _keys!1741) (size!41201 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!850237 () Bool)

(assert (=> start!108482 (=> (not res!850237) (not e!731287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108482 (= res!850237 (validMask!0 mask!2175))))

(assert (=> start!108482 e!731287))

(assert (=> start!108482 tp_is_empty!33633))

(assert (=> start!108482 true))

(declare-fun e!731286 () Bool)

(declare-fun array_inv!30839 (array!84301) Bool)

(assert (=> start!108482 (and (array_inv!30839 _values!1445) e!731286)))

(declare-fun array_inv!30840 (array!84299) Bool)

(assert (=> start!108482 (array_inv!30840 _keys!1741)))

(assert (=> start!108482 tp!99090))

(declare-fun b!1279834 () Bool)

(declare-fun e!731288 () Bool)

(assert (=> b!1279834 (= e!731288 tp_is_empty!33633)))

(declare-fun b!1279835 () Bool)

(declare-fun mapRes!52001 () Bool)

(assert (=> b!1279835 (= e!731286 (and e!731289 mapRes!52001))))

(declare-fun condMapEmpty!52001 () Bool)

(declare-fun mapDefault!52001 () ValueCell!15918)

(assert (=> b!1279835 (= condMapEmpty!52001 (= (arr!40650 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15918)) mapDefault!52001)))))

(declare-fun mapNonEmpty!52001 () Bool)

(declare-fun tp!99089 () Bool)

(assert (=> mapNonEmpty!52001 (= mapRes!52001 (and tp!99089 e!731288))))

(declare-fun mapValue!52001 () ValueCell!15918)

(declare-fun mapKey!52001 () (_ BitVec 32))

(declare-fun mapRest!52001 () (Array (_ BitVec 32) ValueCell!15918))

(assert (=> mapNonEmpty!52001 (= (arr!40650 _values!1445) (store mapRest!52001 mapKey!52001 mapValue!52001))))

(declare-fun b!1279836 () Bool)

(declare-fun res!850238 () Bool)

(assert (=> b!1279836 (=> (not res!850238) (not e!731287))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279836 (= res!850238 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41200 _keys!1741))))))

(declare-fun mapIsEmpty!52001 () Bool)

(assert (=> mapIsEmpty!52001 mapRes!52001))

(declare-fun b!1279837 () Bool)

(declare-fun res!850239 () Bool)

(assert (=> b!1279837 (=> (not res!850239) (not e!731287))))

(declare-datatypes ((List!28972 0))(
  ( (Nil!28969) (Cons!28968 (h!30177 (_ BitVec 64)) (t!42519 List!28972)) )
))
(declare-fun arrayNoDuplicates!0 (array!84299 (_ BitVec 32) List!28972) Bool)

(assert (=> b!1279837 (= res!850239 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28969))))

(declare-fun b!1279838 () Bool)

(assert (=> b!1279838 (= e!731287 false)))

(declare-fun minValue!1387 () V!49947)

(declare-fun zeroValue!1387 () V!49947)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!575998 () Bool)

(declare-datatypes ((tuple2!21760 0))(
  ( (tuple2!21761 (_1!10890 (_ BitVec 64)) (_2!10890 V!49947)) )
))
(declare-datatypes ((List!28973 0))(
  ( (Nil!28970) (Cons!28969 (h!30178 tuple2!21760) (t!42520 List!28973)) )
))
(declare-datatypes ((ListLongMap!19429 0))(
  ( (ListLongMap!19430 (toList!9730 List!28973)) )
))
(declare-fun contains!7783 (ListLongMap!19429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4750 (array!84299 array!84301 (_ BitVec 32) (_ BitVec 32) V!49947 V!49947 (_ BitVec 32) Int) ListLongMap!19429)

(assert (=> b!1279838 (= lt!575998 (contains!7783 (getCurrentListMap!4750 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108482 res!850237) b!1279833))

(assert (= (and b!1279833 res!850240) b!1279832))

(assert (= (and b!1279832 res!850241) b!1279837))

(assert (= (and b!1279837 res!850239) b!1279836))

(assert (= (and b!1279836 res!850238) b!1279838))

(assert (= (and b!1279835 condMapEmpty!52001) mapIsEmpty!52001))

(assert (= (and b!1279835 (not condMapEmpty!52001)) mapNonEmpty!52001))

(get-info :version)

(assert (= (and mapNonEmpty!52001 ((_ is ValueCellFull!15918) mapValue!52001)) b!1279834))

(assert (= (and b!1279835 ((_ is ValueCellFull!15918) mapDefault!52001)) b!1279831))

(assert (= start!108482 b!1279835))

(declare-fun m!1174671 () Bool)

(assert (=> start!108482 m!1174671))

(declare-fun m!1174673 () Bool)

(assert (=> start!108482 m!1174673))

(declare-fun m!1174675 () Bool)

(assert (=> start!108482 m!1174675))

(declare-fun m!1174677 () Bool)

(assert (=> b!1279837 m!1174677))

(declare-fun m!1174679 () Bool)

(assert (=> b!1279838 m!1174679))

(assert (=> b!1279838 m!1174679))

(declare-fun m!1174681 () Bool)

(assert (=> b!1279838 m!1174681))

(declare-fun m!1174683 () Bool)

(assert (=> mapNonEmpty!52001 m!1174683))

(declare-fun m!1174685 () Bool)

(assert (=> b!1279832 m!1174685))

(check-sat (not b!1279837) (not b_next!27993) b_and!46063 (not b!1279838) (not mapNonEmpty!52001) (not b!1279832) (not start!108482) tp_is_empty!33633)
(check-sat b_and!46063 (not b_next!27993))
