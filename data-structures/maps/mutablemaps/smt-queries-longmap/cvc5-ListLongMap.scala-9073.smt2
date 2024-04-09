; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109258 () Bool)

(assert start!109258)

(declare-fun b_free!28711 () Bool)

(declare-fun b_next!28711 () Bool)

(assert (=> start!109258 (= b_free!28711 (not b_next!28711))))

(declare-fun tp!101253 () Bool)

(declare-fun b_and!46811 () Bool)

(assert (=> start!109258 (= tp!101253 b_and!46811)))

(declare-fun b!1291954 () Bool)

(declare-fun e!737485 () Bool)

(assert (=> b!1291954 (= e!737485 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50905 0))(
  ( (V!50906 (val!17250 Int)) )
))
(declare-datatypes ((tuple2!22320 0))(
  ( (tuple2!22321 (_1!11170 (_ BitVec 64)) (_2!11170 V!50905)) )
))
(declare-datatypes ((List!29511 0))(
  ( (Nil!29508) (Cons!29507 (h!30716 tuple2!22320) (t!43082 List!29511)) )
))
(declare-datatypes ((ListLongMap!19989 0))(
  ( (ListLongMap!19990 (toList!10010 List!29511)) )
))
(declare-fun contains!8066 (ListLongMap!19989 (_ BitVec 64)) Bool)

(assert (=> b!1291954 (not (contains!8066 (ListLongMap!19990 Nil!29508) k!1205))))

(declare-datatypes ((Unit!42707 0))(
  ( (Unit!42708) )
))
(declare-fun lt!579238 () Unit!42707)

(declare-fun emptyContainsNothing!110 ((_ BitVec 64)) Unit!42707)

(assert (=> b!1291954 (= lt!579238 (emptyContainsNothing!110 k!1205))))

(declare-fun res!858496 () Bool)

(assert (=> start!109258 (=> (not res!858496) (not e!737485))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109258 (= res!858496 (validMask!0 mask!2175))))

(assert (=> start!109258 e!737485))

(declare-fun tp_is_empty!34351 () Bool)

(assert (=> start!109258 tp_is_empty!34351))

(assert (=> start!109258 true))

(declare-datatypes ((ValueCell!16277 0))(
  ( (ValueCellFull!16277 (v!19851 V!50905)) (EmptyCell!16277) )
))
(declare-datatypes ((array!85695 0))(
  ( (array!85696 (arr!41344 (Array (_ BitVec 32) ValueCell!16277)) (size!41895 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85695)

(declare-fun e!737484 () Bool)

(declare-fun array_inv!31297 (array!85695) Bool)

(assert (=> start!109258 (and (array_inv!31297 _values!1445) e!737484)))

(declare-datatypes ((array!85697 0))(
  ( (array!85698 (arr!41345 (Array (_ BitVec 32) (_ BitVec 64))) (size!41896 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85697)

(declare-fun array_inv!31298 (array!85697) Bool)

(assert (=> start!109258 (array_inv!31298 _keys!1741)))

(assert (=> start!109258 tp!101253))

(declare-fun b!1291955 () Bool)

(declare-fun res!858497 () Bool)

(assert (=> b!1291955 (=> (not res!858497) (not e!737485))))

(declare-fun minValue!1387 () V!50905)

(declare-fun zeroValue!1387 () V!50905)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5003 (array!85697 array!85695 (_ BitVec 32) (_ BitVec 32) V!50905 V!50905 (_ BitVec 32) Int) ListLongMap!19989)

(assert (=> b!1291955 (= res!858497 (contains!8066 (getCurrentListMap!5003 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291956 () Bool)

(declare-fun res!858495 () Bool)

(assert (=> b!1291956 (=> (not res!858495) (not e!737485))))

(assert (=> b!1291956 (= res!858495 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41896 _keys!1741))))))

(declare-fun b!1291957 () Bool)

(declare-fun res!858491 () Bool)

(assert (=> b!1291957 (=> (not res!858491) (not e!737485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85697 (_ BitVec 32)) Bool)

(assert (=> b!1291957 (= res!858491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291958 () Bool)

(declare-fun res!858492 () Bool)

(assert (=> b!1291958 (=> (not res!858492) (not e!737485))))

(declare-datatypes ((List!29512 0))(
  ( (Nil!29509) (Cons!29508 (h!30717 (_ BitVec 64)) (t!43083 List!29512)) )
))
(declare-fun arrayNoDuplicates!0 (array!85697 (_ BitVec 32) List!29512) Bool)

(assert (=> b!1291958 (= res!858492 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29509))))

(declare-fun b!1291959 () Bool)

(declare-fun e!737483 () Bool)

(assert (=> b!1291959 (= e!737483 tp_is_empty!34351)))

(declare-fun b!1291960 () Bool)

(declare-fun res!858493 () Bool)

(assert (=> b!1291960 (=> (not res!858493) (not e!737485))))

(assert (=> b!1291960 (= res!858493 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41896 _keys!1741))))))

(declare-fun mapIsEmpty!53087 () Bool)

(declare-fun mapRes!53087 () Bool)

(assert (=> mapIsEmpty!53087 mapRes!53087))

(declare-fun mapNonEmpty!53087 () Bool)

(declare-fun tp!101252 () Bool)

(assert (=> mapNonEmpty!53087 (= mapRes!53087 (and tp!101252 e!737483))))

(declare-fun mapValue!53087 () ValueCell!16277)

(declare-fun mapKey!53087 () (_ BitVec 32))

(declare-fun mapRest!53087 () (Array (_ BitVec 32) ValueCell!16277))

(assert (=> mapNonEmpty!53087 (= (arr!41344 _values!1445) (store mapRest!53087 mapKey!53087 mapValue!53087))))

(declare-fun b!1291961 () Bool)

(declare-fun e!737482 () Bool)

(assert (=> b!1291961 (= e!737482 tp_is_empty!34351)))

(declare-fun b!1291962 () Bool)

(declare-fun res!858494 () Bool)

(assert (=> b!1291962 (=> (not res!858494) (not e!737485))))

(assert (=> b!1291962 (= res!858494 (and (= (size!41895 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41896 _keys!1741) (size!41895 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291963 () Bool)

(declare-fun res!858498 () Bool)

(assert (=> b!1291963 (=> (not res!858498) (not e!737485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291963 (= res!858498 (not (validKeyInArray!0 (select (arr!41345 _keys!1741) from!2144))))))

(declare-fun b!1291964 () Bool)

(assert (=> b!1291964 (= e!737484 (and e!737482 mapRes!53087))))

(declare-fun condMapEmpty!53087 () Bool)

(declare-fun mapDefault!53087 () ValueCell!16277)

