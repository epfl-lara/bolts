; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109380 () Bool)

(assert start!109380)

(declare-fun b_free!28833 () Bool)

(declare-fun b_next!28833 () Bool)

(assert (=> start!109380 (= b_free!28833 (not b_next!28833))))

(declare-fun tp!101618 () Bool)

(declare-fun b_and!46933 () Bool)

(assert (=> start!109380 (= tp!101618 b_and!46933)))

(declare-fun b!1294075 () Bool)

(declare-fun res!860069 () Bool)

(declare-fun e!738506 () Bool)

(assert (=> b!1294075 (=> (not res!860069) (not e!738506))))

(declare-datatypes ((array!85933 0))(
  ( (array!85934 (arr!41463 (Array (_ BitVec 32) (_ BitVec 64))) (size!42014 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85933)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85933 (_ BitVec 32)) Bool)

(assert (=> b!1294075 (= res!860069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294076 () Bool)

(declare-fun res!860068 () Bool)

(assert (=> b!1294076 (=> (not res!860068) (not e!738506))))

(declare-datatypes ((V!51067 0))(
  ( (V!51068 (val!17311 Int)) )
))
(declare-fun minValue!1387 () V!51067)

(declare-fun zeroValue!1387 () V!51067)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16338 0))(
  ( (ValueCellFull!16338 (v!19912 V!51067)) (EmptyCell!16338) )
))
(declare-datatypes ((array!85935 0))(
  ( (array!85936 (arr!41464 (Array (_ BitVec 32) ValueCell!16338)) (size!42015 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85935)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22426 0))(
  ( (tuple2!22427 (_1!11223 (_ BitVec 64)) (_2!11223 V!51067)) )
))
(declare-datatypes ((List!29604 0))(
  ( (Nil!29601) (Cons!29600 (h!30809 tuple2!22426) (t!43175 List!29604)) )
))
(declare-datatypes ((ListLongMap!20095 0))(
  ( (ListLongMap!20096 (toList!10063 List!29604)) )
))
(declare-fun contains!8119 (ListLongMap!20095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5048 (array!85933 array!85935 (_ BitVec 32) (_ BitVec 32) V!51067 V!51067 (_ BitVec 32) Int) ListLongMap!20095)

(assert (=> b!1294076 (= res!860068 (contains!8119 (getCurrentListMap!5048 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294077 () Bool)

(declare-fun res!860066 () Bool)

(assert (=> b!1294077 (=> (not res!860066) (not e!738506))))

(assert (=> b!1294077 (= res!860066 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42014 _keys!1741))))))

(declare-fun b!1294078 () Bool)

(declare-fun e!738508 () Bool)

(declare-fun tp_is_empty!34473 () Bool)

(assert (=> b!1294078 (= e!738508 tp_is_empty!34473)))

(declare-fun mapIsEmpty!53270 () Bool)

(declare-fun mapRes!53270 () Bool)

(assert (=> mapIsEmpty!53270 mapRes!53270))

(declare-fun b!1294079 () Bool)

(declare-fun res!860067 () Bool)

(assert (=> b!1294079 (=> (not res!860067) (not e!738506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294079 (= res!860067 (not (validKeyInArray!0 (select (arr!41463 _keys!1741) from!2144))))))

(declare-fun b!1294080 () Bool)

(assert (=> b!1294080 (= e!738506 (not true))))

(assert (=> b!1294080 (not (contains!8119 (ListLongMap!20096 Nil!29601) k0!1205))))

(declare-datatypes ((Unit!42799 0))(
  ( (Unit!42800) )
))
(declare-fun lt!579628 () Unit!42799)

(declare-fun emptyContainsNothing!156 ((_ BitVec 64)) Unit!42799)

(assert (=> b!1294080 (= lt!579628 (emptyContainsNothing!156 k0!1205))))

(declare-fun b!1294081 () Bool)

(declare-fun res!860064 () Bool)

(assert (=> b!1294081 (=> (not res!860064) (not e!738506))))

(assert (=> b!1294081 (= res!860064 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42014 _keys!1741))))))

(declare-fun b!1294083 () Bool)

(declare-fun e!738505 () Bool)

(assert (=> b!1294083 (= e!738505 tp_is_empty!34473)))

(declare-fun mapNonEmpty!53270 () Bool)

(declare-fun tp!101619 () Bool)

(assert (=> mapNonEmpty!53270 (= mapRes!53270 (and tp!101619 e!738508))))

(declare-fun mapKey!53270 () (_ BitVec 32))

(declare-fun mapRest!53270 () (Array (_ BitVec 32) ValueCell!16338))

(declare-fun mapValue!53270 () ValueCell!16338)

(assert (=> mapNonEmpty!53270 (= (arr!41464 _values!1445) (store mapRest!53270 mapKey!53270 mapValue!53270))))

(declare-fun b!1294084 () Bool)

(declare-fun e!738504 () Bool)

(assert (=> b!1294084 (= e!738504 (and e!738505 mapRes!53270))))

(declare-fun condMapEmpty!53270 () Bool)

(declare-fun mapDefault!53270 () ValueCell!16338)

(assert (=> b!1294084 (= condMapEmpty!53270 (= (arr!41464 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16338)) mapDefault!53270)))))

(declare-fun b!1294085 () Bool)

(declare-fun res!860063 () Bool)

(assert (=> b!1294085 (=> (not res!860063) (not e!738506))))

(assert (=> b!1294085 (= res!860063 (and (= (size!42015 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42014 _keys!1741) (size!42015 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!860065 () Bool)

(assert (=> start!109380 (=> (not res!860065) (not e!738506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109380 (= res!860065 (validMask!0 mask!2175))))

(assert (=> start!109380 e!738506))

(assert (=> start!109380 tp_is_empty!34473))

(assert (=> start!109380 true))

(declare-fun array_inv!31383 (array!85935) Bool)

(assert (=> start!109380 (and (array_inv!31383 _values!1445) e!738504)))

(declare-fun array_inv!31384 (array!85933) Bool)

(assert (=> start!109380 (array_inv!31384 _keys!1741)))

(assert (=> start!109380 tp!101618))

(declare-fun b!1294082 () Bool)

(declare-fun res!860070 () Bool)

(assert (=> b!1294082 (=> (not res!860070) (not e!738506))))

(declare-datatypes ((List!29605 0))(
  ( (Nil!29602) (Cons!29601 (h!30810 (_ BitVec 64)) (t!43176 List!29605)) )
))
(declare-fun arrayNoDuplicates!0 (array!85933 (_ BitVec 32) List!29605) Bool)

(assert (=> b!1294082 (= res!860070 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29602))))

(assert (= (and start!109380 res!860065) b!1294085))

(assert (= (and b!1294085 res!860063) b!1294075))

(assert (= (and b!1294075 res!860069) b!1294082))

(assert (= (and b!1294082 res!860070) b!1294081))

(assert (= (and b!1294081 res!860064) b!1294076))

(assert (= (and b!1294076 res!860068) b!1294077))

(assert (= (and b!1294077 res!860066) b!1294079))

(assert (= (and b!1294079 res!860067) b!1294080))

(assert (= (and b!1294084 condMapEmpty!53270) mapIsEmpty!53270))

(assert (= (and b!1294084 (not condMapEmpty!53270)) mapNonEmpty!53270))

(get-info :version)

(assert (= (and mapNonEmpty!53270 ((_ is ValueCellFull!16338) mapValue!53270)) b!1294078))

(assert (= (and b!1294084 ((_ is ValueCellFull!16338) mapDefault!53270)) b!1294083))

(assert (= start!109380 b!1294084))

(declare-fun m!1186397 () Bool)

(assert (=> b!1294075 m!1186397))

(declare-fun m!1186399 () Bool)

(assert (=> mapNonEmpty!53270 m!1186399))

(declare-fun m!1186401 () Bool)

(assert (=> start!109380 m!1186401))

(declare-fun m!1186403 () Bool)

(assert (=> start!109380 m!1186403))

(declare-fun m!1186405 () Bool)

(assert (=> start!109380 m!1186405))

(declare-fun m!1186407 () Bool)

(assert (=> b!1294080 m!1186407))

(declare-fun m!1186409 () Bool)

(assert (=> b!1294080 m!1186409))

(declare-fun m!1186411 () Bool)

(assert (=> b!1294079 m!1186411))

(assert (=> b!1294079 m!1186411))

(declare-fun m!1186413 () Bool)

(assert (=> b!1294079 m!1186413))

(declare-fun m!1186415 () Bool)

(assert (=> b!1294082 m!1186415))

(declare-fun m!1186417 () Bool)

(assert (=> b!1294076 m!1186417))

(assert (=> b!1294076 m!1186417))

(declare-fun m!1186419 () Bool)

(assert (=> b!1294076 m!1186419))

(check-sat (not start!109380) (not b!1294080) (not b_next!28833) (not b!1294082) (not b!1294076) (not b!1294075) b_and!46933 (not b!1294079) tp_is_empty!34473 (not mapNonEmpty!53270))
(check-sat b_and!46933 (not b_next!28833))
