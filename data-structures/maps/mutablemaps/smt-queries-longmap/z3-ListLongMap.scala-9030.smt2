; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109002 () Bool)

(assert start!109002)

(declare-fun b_free!28455 () Bool)

(declare-fun b_next!28455 () Bool)

(assert (=> start!109002 (= b_free!28455 (not b_next!28455))))

(declare-fun tp!100485 () Bool)

(declare-fun b_and!46555 () Bool)

(assert (=> start!109002 (= tp!100485 b_and!46555)))

(declare-fun b!1287433 () Bool)

(declare-fun res!855127 () Bool)

(declare-fun e!735265 () Bool)

(assert (=> b!1287433 (=> (not res!855127) (not e!735265))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85195 0))(
  ( (array!85196 (arr!41094 (Array (_ BitVec 32) (_ BitVec 64))) (size!41645 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85195)

(assert (=> b!1287433 (= res!855127 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41645 _keys!1741))))))

(declare-fun b!1287434 () Bool)

(declare-fun res!855128 () Bool)

(assert (=> b!1287434 (=> (not res!855128) (not e!735265))))

(assert (=> b!1287434 (= res!855128 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41645 _keys!1741))))))

(declare-fun b!1287435 () Bool)

(declare-fun res!855123 () Bool)

(assert (=> b!1287435 (=> (not res!855123) (not e!735265))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50563 0))(
  ( (V!50564 (val!17122 Int)) )
))
(declare-datatypes ((ValueCell!16149 0))(
  ( (ValueCellFull!16149 (v!19723 V!50563)) (EmptyCell!16149) )
))
(declare-datatypes ((array!85197 0))(
  ( (array!85198 (arr!41095 (Array (_ BitVec 32) ValueCell!16149)) (size!41646 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85197)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287435 (= res!855123 (and (= (size!41646 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41645 _keys!1741) (size!41646 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287436 () Bool)

(declare-fun res!855124 () Bool)

(assert (=> b!1287436 (=> (not res!855124) (not e!735265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287436 (= res!855124 (not (validKeyInArray!0 (select (arr!41094 _keys!1741) from!2144))))))

(declare-fun b!1287437 () Bool)

(declare-fun res!855129 () Bool)

(assert (=> b!1287437 (=> (not res!855129) (not e!735265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85195 (_ BitVec 32)) Bool)

(assert (=> b!1287437 (= res!855129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287439 () Bool)

(assert (=> b!1287439 (= e!735265 (not true))))

(declare-datatypes ((tuple2!22102 0))(
  ( (tuple2!22103 (_1!11061 (_ BitVec 64)) (_2!11061 V!50563)) )
))
(declare-datatypes ((List!29303 0))(
  ( (Nil!29300) (Cons!29299 (h!30508 tuple2!22102) (t!42874 List!29303)) )
))
(declare-datatypes ((ListLongMap!19771 0))(
  ( (ListLongMap!19772 (toList!9901 List!29303)) )
))
(declare-fun contains!7957 (ListLongMap!19771 (_ BitVec 64)) Bool)

(assert (=> b!1287439 (not (contains!7957 (ListLongMap!19772 Nil!29300) k0!1205))))

(declare-datatypes ((Unit!42507 0))(
  ( (Unit!42508) )
))
(declare-fun lt!577810 () Unit!42507)

(declare-fun emptyContainsNothing!21 ((_ BitVec 64)) Unit!42507)

(assert (=> b!1287439 (= lt!577810 (emptyContainsNothing!21 k0!1205))))

(declare-fun b!1287440 () Bool)

(declare-fun e!735268 () Bool)

(declare-fun tp_is_empty!34095 () Bool)

(assert (=> b!1287440 (= e!735268 tp_is_empty!34095)))

(declare-fun b!1287441 () Bool)

(declare-fun e!735266 () Bool)

(declare-fun mapRes!52703 () Bool)

(assert (=> b!1287441 (= e!735266 (and e!735268 mapRes!52703))))

(declare-fun condMapEmpty!52703 () Bool)

(declare-fun mapDefault!52703 () ValueCell!16149)

(assert (=> b!1287441 (= condMapEmpty!52703 (= (arr!41095 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16149)) mapDefault!52703)))))

(declare-fun b!1287442 () Bool)

(declare-fun res!855122 () Bool)

(assert (=> b!1287442 (=> (not res!855122) (not e!735265))))

(declare-fun minValue!1387 () V!50563)

(declare-fun zeroValue!1387 () V!50563)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4908 (array!85195 array!85197 (_ BitVec 32) (_ BitVec 32) V!50563 V!50563 (_ BitVec 32) Int) ListLongMap!19771)

(assert (=> b!1287442 (= res!855122 (contains!7957 (getCurrentListMap!4908 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287438 () Bool)

(declare-fun res!855125 () Bool)

(assert (=> b!1287438 (=> (not res!855125) (not e!735265))))

(declare-datatypes ((List!29304 0))(
  ( (Nil!29301) (Cons!29300 (h!30509 (_ BitVec 64)) (t!42875 List!29304)) )
))
(declare-fun arrayNoDuplicates!0 (array!85195 (_ BitVec 32) List!29304) Bool)

(assert (=> b!1287438 (= res!855125 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29301))))

(declare-fun res!855126 () Bool)

(assert (=> start!109002 (=> (not res!855126) (not e!735265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109002 (= res!855126 (validMask!0 mask!2175))))

(assert (=> start!109002 e!735265))

(assert (=> start!109002 tp_is_empty!34095))

(assert (=> start!109002 true))

(declare-fun array_inv!31135 (array!85197) Bool)

(assert (=> start!109002 (and (array_inv!31135 _values!1445) e!735266)))

(declare-fun array_inv!31136 (array!85195) Bool)

(assert (=> start!109002 (array_inv!31136 _keys!1741)))

(assert (=> start!109002 tp!100485))

(declare-fun b!1287443 () Bool)

(declare-fun e!735264 () Bool)

(assert (=> b!1287443 (= e!735264 tp_is_empty!34095)))

(declare-fun mapIsEmpty!52703 () Bool)

(assert (=> mapIsEmpty!52703 mapRes!52703))

(declare-fun mapNonEmpty!52703 () Bool)

(declare-fun tp!100484 () Bool)

(assert (=> mapNonEmpty!52703 (= mapRes!52703 (and tp!100484 e!735264))))

(declare-fun mapRest!52703 () (Array (_ BitVec 32) ValueCell!16149))

(declare-fun mapKey!52703 () (_ BitVec 32))

(declare-fun mapValue!52703 () ValueCell!16149)

(assert (=> mapNonEmpty!52703 (= (arr!41095 _values!1445) (store mapRest!52703 mapKey!52703 mapValue!52703))))

(assert (= (and start!109002 res!855126) b!1287435))

(assert (= (and b!1287435 res!855123) b!1287437))

(assert (= (and b!1287437 res!855129) b!1287438))

(assert (= (and b!1287438 res!855125) b!1287434))

(assert (= (and b!1287434 res!855128) b!1287442))

(assert (= (and b!1287442 res!855122) b!1287433))

(assert (= (and b!1287433 res!855127) b!1287436))

(assert (= (and b!1287436 res!855124) b!1287439))

(assert (= (and b!1287441 condMapEmpty!52703) mapIsEmpty!52703))

(assert (= (and b!1287441 (not condMapEmpty!52703)) mapNonEmpty!52703))

(get-info :version)

(assert (= (and mapNonEmpty!52703 ((_ is ValueCellFull!16149) mapValue!52703)) b!1287443))

(assert (= (and b!1287441 ((_ is ValueCellFull!16149) mapDefault!52703)) b!1287440))

(assert (= start!109002 b!1287441))

(declare-fun m!1180313 () Bool)

(assert (=> b!1287437 m!1180313))

(declare-fun m!1180315 () Bool)

(assert (=> b!1287438 m!1180315))

(declare-fun m!1180317 () Bool)

(assert (=> b!1287439 m!1180317))

(declare-fun m!1180319 () Bool)

(assert (=> b!1287439 m!1180319))

(declare-fun m!1180321 () Bool)

(assert (=> b!1287436 m!1180321))

(assert (=> b!1287436 m!1180321))

(declare-fun m!1180323 () Bool)

(assert (=> b!1287436 m!1180323))

(declare-fun m!1180325 () Bool)

(assert (=> start!109002 m!1180325))

(declare-fun m!1180327 () Bool)

(assert (=> start!109002 m!1180327))

(declare-fun m!1180329 () Bool)

(assert (=> start!109002 m!1180329))

(declare-fun m!1180331 () Bool)

(assert (=> mapNonEmpty!52703 m!1180331))

(declare-fun m!1180333 () Bool)

(assert (=> b!1287442 m!1180333))

(assert (=> b!1287442 m!1180333))

(declare-fun m!1180335 () Bool)

(assert (=> b!1287442 m!1180335))

(check-sat (not mapNonEmpty!52703) tp_is_empty!34095 (not b!1287436) (not b!1287437) (not start!109002) b_and!46555 (not b!1287442) (not b!1287438) (not b!1287439) (not b_next!28455))
(check-sat b_and!46555 (not b_next!28455))
