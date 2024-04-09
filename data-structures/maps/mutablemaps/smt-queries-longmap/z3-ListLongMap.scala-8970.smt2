; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108584 () Bool)

(assert start!108584)

(declare-fun b_free!28095 () Bool)

(declare-fun b_next!28095 () Bool)

(assert (=> start!108584 (= b_free!28095 (not b_next!28095))))

(declare-fun tp!99395 () Bool)

(declare-fun b_and!46165 () Bool)

(assert (=> start!108584 (= tp!99395 b_and!46165)))

(declare-fun b!1281227 () Bool)

(declare-fun e!732051 () Bool)

(assert (=> b!1281227 (= e!732051 (not true))))

(declare-datatypes ((V!50083 0))(
  ( (V!50084 (val!16942 Int)) )
))
(declare-fun minValue!1387 () V!50083)

(declare-fun zeroValue!1387 () V!50083)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15969 0))(
  ( (ValueCellFull!15969 (v!19540 V!50083)) (EmptyCell!15969) )
))
(declare-datatypes ((array!84495 0))(
  ( (array!84496 (arr!40747 (Array (_ BitVec 32) ValueCell!15969)) (size!41298 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84495)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84497 0))(
  ( (array!84498 (arr!40748 (Array (_ BitVec 32) (_ BitVec 64))) (size!41299 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84497)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21838 0))(
  ( (tuple2!21839 (_1!10929 (_ BitVec 64)) (_2!10929 V!50083)) )
))
(declare-datatypes ((List!29046 0))(
  ( (Nil!29043) (Cons!29042 (h!30251 tuple2!21838) (t!42593 List!29046)) )
))
(declare-datatypes ((ListLongMap!19507 0))(
  ( (ListLongMap!19508 (toList!9769 List!29046)) )
))
(declare-fun contains!7822 (ListLongMap!19507 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4789 (array!84497 array!84495 (_ BitVec 32) (_ BitVec 32) V!50083 V!50083 (_ BitVec 32) Int) ListLongMap!19507)

(assert (=> b!1281227 (contains!7822 (getCurrentListMap!4789 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42375 0))(
  ( (Unit!42376) )
))
(declare-fun lt!576151 () Unit!42375)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!20 (array!84497 array!84495 (_ BitVec 32) (_ BitVec 32) V!50083 V!50083 (_ BitVec 64) (_ BitVec 32) Int) Unit!42375)

(assert (=> b!1281227 (= lt!576151 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!20 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281228 () Bool)

(declare-fun res!851177 () Bool)

(assert (=> b!1281228 (=> (not res!851177) (not e!732051))))

(assert (=> b!1281228 (= res!851177 (contains!7822 (getCurrentListMap!4789 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!52154 () Bool)

(declare-fun mapRes!52154 () Bool)

(assert (=> mapIsEmpty!52154 mapRes!52154))

(declare-fun b!1281229 () Bool)

(declare-fun res!851178 () Bool)

(assert (=> b!1281229 (=> (not res!851178) (not e!732051))))

(assert (=> b!1281229 (= res!851178 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41299 _keys!1741)) (not (= (select (arr!40748 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapNonEmpty!52154 () Bool)

(declare-fun tp!99396 () Bool)

(declare-fun e!732053 () Bool)

(assert (=> mapNonEmpty!52154 (= mapRes!52154 (and tp!99396 e!732053))))

(declare-fun mapValue!52154 () ValueCell!15969)

(declare-fun mapRest!52154 () (Array (_ BitVec 32) ValueCell!15969))

(declare-fun mapKey!52154 () (_ BitVec 32))

(assert (=> mapNonEmpty!52154 (= (arr!40747 _values!1445) (store mapRest!52154 mapKey!52154 mapValue!52154))))

(declare-fun b!1281230 () Bool)

(declare-fun res!851180 () Bool)

(assert (=> b!1281230 (=> (not res!851180) (not e!732051))))

(declare-datatypes ((List!29047 0))(
  ( (Nil!29044) (Cons!29043 (h!30252 (_ BitVec 64)) (t!42594 List!29047)) )
))
(declare-fun arrayNoDuplicates!0 (array!84497 (_ BitVec 32) List!29047) Bool)

(assert (=> b!1281230 (= res!851180 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29044))))

(declare-fun b!1281231 () Bool)

(declare-fun e!732052 () Bool)

(declare-fun tp_is_empty!33735 () Bool)

(assert (=> b!1281231 (= e!732052 tp_is_empty!33735)))

(declare-fun res!851179 () Bool)

(assert (=> start!108584 (=> (not res!851179) (not e!732051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108584 (= res!851179 (validMask!0 mask!2175))))

(assert (=> start!108584 e!732051))

(assert (=> start!108584 tp_is_empty!33735))

(assert (=> start!108584 true))

(declare-fun e!732055 () Bool)

(declare-fun array_inv!30905 (array!84495) Bool)

(assert (=> start!108584 (and (array_inv!30905 _values!1445) e!732055)))

(declare-fun array_inv!30906 (array!84497) Bool)

(assert (=> start!108584 (array_inv!30906 _keys!1741)))

(assert (=> start!108584 tp!99395))

(declare-fun b!1281232 () Bool)

(declare-fun res!851176 () Bool)

(assert (=> b!1281232 (=> (not res!851176) (not e!732051))))

(assert (=> b!1281232 (= res!851176 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41299 _keys!1741))))))

(declare-fun b!1281233 () Bool)

(assert (=> b!1281233 (= e!732053 tp_is_empty!33735)))

(declare-fun b!1281234 () Bool)

(declare-fun res!851175 () Bool)

(assert (=> b!1281234 (=> (not res!851175) (not e!732051))))

(assert (=> b!1281234 (= res!851175 (and (= (size!41298 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41299 _keys!1741) (size!41298 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281235 () Bool)

(assert (=> b!1281235 (= e!732055 (and e!732052 mapRes!52154))))

(declare-fun condMapEmpty!52154 () Bool)

(declare-fun mapDefault!52154 () ValueCell!15969)

(assert (=> b!1281235 (= condMapEmpty!52154 (= (arr!40747 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15969)) mapDefault!52154)))))

(declare-fun b!1281236 () Bool)

(declare-fun res!851174 () Bool)

(assert (=> b!1281236 (=> (not res!851174) (not e!732051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84497 (_ BitVec 32)) Bool)

(assert (=> b!1281236 (= res!851174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108584 res!851179) b!1281234))

(assert (= (and b!1281234 res!851175) b!1281236))

(assert (= (and b!1281236 res!851174) b!1281230))

(assert (= (and b!1281230 res!851180) b!1281232))

(assert (= (and b!1281232 res!851176) b!1281228))

(assert (= (and b!1281228 res!851177) b!1281229))

(assert (= (and b!1281229 res!851178) b!1281227))

(assert (= (and b!1281235 condMapEmpty!52154) mapIsEmpty!52154))

(assert (= (and b!1281235 (not condMapEmpty!52154)) mapNonEmpty!52154))

(get-info :version)

(assert (= (and mapNonEmpty!52154 ((_ is ValueCellFull!15969) mapValue!52154)) b!1281233))

(assert (= (and b!1281235 ((_ is ValueCellFull!15969) mapDefault!52154)) b!1281231))

(assert (= start!108584 b!1281235))

(declare-fun m!1175711 () Bool)

(assert (=> b!1281228 m!1175711))

(assert (=> b!1281228 m!1175711))

(declare-fun m!1175713 () Bool)

(assert (=> b!1281228 m!1175713))

(declare-fun m!1175715 () Bool)

(assert (=> b!1281230 m!1175715))

(declare-fun m!1175717 () Bool)

(assert (=> start!108584 m!1175717))

(declare-fun m!1175719 () Bool)

(assert (=> start!108584 m!1175719))

(declare-fun m!1175721 () Bool)

(assert (=> start!108584 m!1175721))

(declare-fun m!1175723 () Bool)

(assert (=> mapNonEmpty!52154 m!1175723))

(declare-fun m!1175725 () Bool)

(assert (=> b!1281227 m!1175725))

(assert (=> b!1281227 m!1175725))

(declare-fun m!1175727 () Bool)

(assert (=> b!1281227 m!1175727))

(declare-fun m!1175729 () Bool)

(assert (=> b!1281227 m!1175729))

(declare-fun m!1175731 () Bool)

(assert (=> b!1281236 m!1175731))

(declare-fun m!1175733 () Bool)

(assert (=> b!1281229 m!1175733))

(check-sat (not b!1281228) b_and!46165 (not b!1281230) (not b!1281236) (not mapNonEmpty!52154) (not b!1281227) (not b_next!28095) tp_is_empty!33735 (not start!108584))
(check-sat b_and!46165 (not b_next!28095))
