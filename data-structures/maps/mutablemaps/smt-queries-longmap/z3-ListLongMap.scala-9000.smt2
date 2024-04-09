; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108798 () Bool)

(assert start!108798)

(declare-fun b_free!28275 () Bool)

(declare-fun b_next!28275 () Bool)

(assert (=> start!108798 (= b_free!28275 (not b_next!28275))))

(declare-fun tp!99942 () Bool)

(declare-fun b_and!46351 () Bool)

(assert (=> start!108798 (= tp!99942 b_and!46351)))

(declare-fun mapIsEmpty!52430 () Bool)

(declare-fun mapRes!52430 () Bool)

(assert (=> mapIsEmpty!52430 mapRes!52430))

(declare-fun mapNonEmpty!52430 () Bool)

(declare-fun tp!99941 () Bool)

(declare-fun e!733597 () Bool)

(assert (=> mapNonEmpty!52430 (= mapRes!52430 (and tp!99941 e!733597))))

(declare-datatypes ((V!50323 0))(
  ( (V!50324 (val!17032 Int)) )
))
(declare-datatypes ((ValueCell!16059 0))(
  ( (ValueCellFull!16059 (v!19632 V!50323)) (EmptyCell!16059) )
))
(declare-fun mapValue!52430 () ValueCell!16059)

(declare-datatypes ((array!84845 0))(
  ( (array!84846 (arr!40920 (Array (_ BitVec 32) ValueCell!16059)) (size!41471 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84845)

(declare-fun mapRest!52430 () (Array (_ BitVec 32) ValueCell!16059))

(declare-fun mapKey!52430 () (_ BitVec 32))

(assert (=> mapNonEmpty!52430 (= (arr!40920 _values!1445) (store mapRest!52430 mapKey!52430 mapValue!52430))))

(declare-fun res!853225 () Bool)

(declare-fun e!733596 () Bool)

(assert (=> start!108798 (=> (not res!853225) (not e!733596))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108798 (= res!853225 (validMask!0 mask!2175))))

(assert (=> start!108798 e!733596))

(declare-fun tp_is_empty!33915 () Bool)

(assert (=> start!108798 tp_is_empty!33915))

(assert (=> start!108798 true))

(declare-fun e!733599 () Bool)

(declare-fun array_inv!31017 (array!84845) Bool)

(assert (=> start!108798 (and (array_inv!31017 _values!1445) e!733599)))

(declare-datatypes ((array!84847 0))(
  ( (array!84848 (arr!40921 (Array (_ BitVec 32) (_ BitVec 64))) (size!41472 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84847)

(declare-fun array_inv!31018 (array!84847) Bool)

(assert (=> start!108798 (array_inv!31018 _keys!1741)))

(assert (=> start!108798 tp!99942))

(declare-fun b!1284234 () Bool)

(declare-fun res!853226 () Bool)

(assert (=> b!1284234 (=> (not res!853226) (not e!733596))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284234 (= res!853226 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41472 _keys!1741))))))

(declare-fun b!1284235 () Bool)

(declare-fun res!853227 () Bool)

(assert (=> b!1284235 (=> (not res!853227) (not e!733596))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284235 (= res!853227 (and (= (size!41471 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41472 _keys!1741) (size!41471 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284236 () Bool)

(assert (=> b!1284236 (= e!733597 tp_is_empty!33915)))

(declare-fun b!1284237 () Bool)

(declare-fun e!733600 () Bool)

(assert (=> b!1284237 (= e!733599 (and e!733600 mapRes!52430))))

(declare-fun condMapEmpty!52430 () Bool)

(declare-fun mapDefault!52430 () ValueCell!16059)

(assert (=> b!1284237 (= condMapEmpty!52430 (= (arr!40920 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16059)) mapDefault!52430)))))

(declare-fun b!1284238 () Bool)

(assert (=> b!1284238 (= e!733596 false)))

(declare-fun minValue!1387 () V!50323)

(declare-fun zeroValue!1387 () V!50323)

(declare-fun lt!576735 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21958 0))(
  ( (tuple2!21959 (_1!10989 (_ BitVec 64)) (_2!10989 V!50323)) )
))
(declare-datatypes ((List!29167 0))(
  ( (Nil!29164) (Cons!29163 (h!30372 tuple2!21958) (t!42718 List!29167)) )
))
(declare-datatypes ((ListLongMap!19627 0))(
  ( (ListLongMap!19628 (toList!9829 List!29167)) )
))
(declare-fun contains!7884 (ListLongMap!19627 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4847 (array!84847 array!84845 (_ BitVec 32) (_ BitVec 32) V!50323 V!50323 (_ BitVec 32) Int) ListLongMap!19627)

(assert (=> b!1284238 (= lt!576735 (contains!7884 (getCurrentListMap!4847 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284239 () Bool)

(declare-fun res!853224 () Bool)

(assert (=> b!1284239 (=> (not res!853224) (not e!733596))))

(declare-datatypes ((List!29168 0))(
  ( (Nil!29165) (Cons!29164 (h!30373 (_ BitVec 64)) (t!42719 List!29168)) )
))
(declare-fun arrayNoDuplicates!0 (array!84847 (_ BitVec 32) List!29168) Bool)

(assert (=> b!1284239 (= res!853224 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29165))))

(declare-fun b!1284240 () Bool)

(assert (=> b!1284240 (= e!733600 tp_is_empty!33915)))

(declare-fun b!1284241 () Bool)

(declare-fun res!853223 () Bool)

(assert (=> b!1284241 (=> (not res!853223) (not e!733596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84847 (_ BitVec 32)) Bool)

(assert (=> b!1284241 (= res!853223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108798 res!853225) b!1284235))

(assert (= (and b!1284235 res!853227) b!1284241))

(assert (= (and b!1284241 res!853223) b!1284239))

(assert (= (and b!1284239 res!853224) b!1284234))

(assert (= (and b!1284234 res!853226) b!1284238))

(assert (= (and b!1284237 condMapEmpty!52430) mapIsEmpty!52430))

(assert (= (and b!1284237 (not condMapEmpty!52430)) mapNonEmpty!52430))

(get-info :version)

(assert (= (and mapNonEmpty!52430 ((_ is ValueCellFull!16059) mapValue!52430)) b!1284236))

(assert (= (and b!1284237 ((_ is ValueCellFull!16059) mapDefault!52430)) b!1284240))

(assert (= start!108798 b!1284237))

(declare-fun m!1177999 () Bool)

(assert (=> b!1284238 m!1177999))

(assert (=> b!1284238 m!1177999))

(declare-fun m!1178001 () Bool)

(assert (=> b!1284238 m!1178001))

(declare-fun m!1178003 () Bool)

(assert (=> b!1284239 m!1178003))

(declare-fun m!1178005 () Bool)

(assert (=> b!1284241 m!1178005))

(declare-fun m!1178007 () Bool)

(assert (=> start!108798 m!1178007))

(declare-fun m!1178009 () Bool)

(assert (=> start!108798 m!1178009))

(declare-fun m!1178011 () Bool)

(assert (=> start!108798 m!1178011))

(declare-fun m!1178013 () Bool)

(assert (=> mapNonEmpty!52430 m!1178013))

(check-sat b_and!46351 (not b!1284241) (not b!1284238) tp_is_empty!33915 (not mapNonEmpty!52430) (not b!1284239) (not b_next!28275) (not start!108798))
(check-sat b_and!46351 (not b_next!28275))
