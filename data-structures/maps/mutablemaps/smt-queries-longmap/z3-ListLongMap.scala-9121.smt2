; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109548 () Bool)

(assert start!109548)

(declare-fun b_free!29001 () Bool)

(declare-fun b_next!29001 () Bool)

(assert (=> start!109548 (= b_free!29001 (not b_next!29001))))

(declare-fun tp!102122 () Bool)

(declare-fun b_and!47101 () Bool)

(assert (=> start!109548 (= tp!102122 b_and!47101)))

(declare-fun mapNonEmpty!53522 () Bool)

(declare-fun mapRes!53522 () Bool)

(declare-fun tp!102123 () Bool)

(declare-fun e!739957 () Bool)

(assert (=> mapNonEmpty!53522 (= mapRes!53522 (and tp!102123 e!739957))))

(declare-fun mapKey!53522 () (_ BitVec 32))

(declare-datatypes ((V!51291 0))(
  ( (V!51292 (val!17395 Int)) )
))
(declare-datatypes ((ValueCell!16422 0))(
  ( (ValueCellFull!16422 (v!19996 V!51291)) (EmptyCell!16422) )
))
(declare-fun mapValue!53522 () ValueCell!16422)

(declare-datatypes ((array!86259 0))(
  ( (array!86260 (arr!41626 (Array (_ BitVec 32) ValueCell!16422)) (size!42177 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86259)

(declare-fun mapRest!53522 () (Array (_ BitVec 32) ValueCell!16422))

(assert (=> mapNonEmpty!53522 (= (arr!41626 _values!1445) (store mapRest!53522 mapKey!53522 mapValue!53522))))

(declare-fun b!1296949 () Bool)

(declare-fun e!739954 () Bool)

(declare-fun tp_is_empty!34641 () Bool)

(assert (=> b!1296949 (= e!739954 tp_is_empty!34641)))

(declare-fun b!1296950 () Bool)

(assert (=> b!1296950 (= e!739957 tp_is_empty!34641)))

(declare-fun b!1296951 () Bool)

(declare-fun res!862019 () Bool)

(declare-fun e!739956 () Bool)

(assert (=> b!1296951 (=> (not res!862019) (not e!739956))))

(declare-datatypes ((array!86261 0))(
  ( (array!86262 (arr!41627 (Array (_ BitVec 32) (_ BitVec 64))) (size!42178 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86261)

(declare-datatypes ((List!29728 0))(
  ( (Nil!29725) (Cons!29724 (h!30933 (_ BitVec 64)) (t!43299 List!29728)) )
))
(declare-fun arrayNoDuplicates!0 (array!86261 (_ BitVec 32) List!29728) Bool)

(assert (=> b!1296951 (= res!862019 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29725))))

(declare-fun b!1296952 () Bool)

(declare-fun res!862023 () Bool)

(assert (=> b!1296952 (=> (not res!862023) (not e!739956))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296952 (= res!862023 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42178 _keys!1741))))))

(declare-fun b!1296953 () Bool)

(declare-fun res!862020 () Bool)

(assert (=> b!1296953 (=> (not res!862020) (not e!739956))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1296953 (= res!862020 (and (= (size!42177 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42178 _keys!1741) (size!42177 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!862021 () Bool)

(assert (=> start!109548 (=> (not res!862021) (not e!739956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109548 (= res!862021 (validMask!0 mask!2175))))

(assert (=> start!109548 e!739956))

(assert (=> start!109548 tp_is_empty!34641))

(assert (=> start!109548 true))

(declare-fun e!739953 () Bool)

(declare-fun array_inv!31505 (array!86259) Bool)

(assert (=> start!109548 (and (array_inv!31505 _values!1445) e!739953)))

(declare-fun array_inv!31506 (array!86261) Bool)

(assert (=> start!109548 (array_inv!31506 _keys!1741)))

(assert (=> start!109548 tp!102122))

(declare-fun b!1296954 () Bool)

(assert (=> b!1296954 (= e!739956 false)))

(declare-fun minValue!1387 () V!51291)

(declare-fun zeroValue!1387 () V!51291)

(declare-fun lt!580483 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22564 0))(
  ( (tuple2!22565 (_1!11292 (_ BitVec 64)) (_2!11292 V!51291)) )
))
(declare-datatypes ((List!29729 0))(
  ( (Nil!29726) (Cons!29725 (h!30934 tuple2!22564) (t!43300 List!29729)) )
))
(declare-datatypes ((ListLongMap!20233 0))(
  ( (ListLongMap!20234 (toList!10132 List!29729)) )
))
(declare-fun contains!8186 (ListLongMap!20233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5106 (array!86261 array!86259 (_ BitVec 32) (_ BitVec 32) V!51291 V!51291 (_ BitVec 32) Int) ListLongMap!20233)

(assert (=> b!1296954 (= lt!580483 (contains!8186 (getCurrentListMap!5106 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53522 () Bool)

(assert (=> mapIsEmpty!53522 mapRes!53522))

(declare-fun b!1296955 () Bool)

(declare-fun res!862022 () Bool)

(assert (=> b!1296955 (=> (not res!862022) (not e!739956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86261 (_ BitVec 32)) Bool)

(assert (=> b!1296955 (= res!862022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296956 () Bool)

(assert (=> b!1296956 (= e!739953 (and e!739954 mapRes!53522))))

(declare-fun condMapEmpty!53522 () Bool)

(declare-fun mapDefault!53522 () ValueCell!16422)

(assert (=> b!1296956 (= condMapEmpty!53522 (= (arr!41626 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16422)) mapDefault!53522)))))

(assert (= (and start!109548 res!862021) b!1296953))

(assert (= (and b!1296953 res!862020) b!1296955))

(assert (= (and b!1296955 res!862022) b!1296951))

(assert (= (and b!1296951 res!862019) b!1296952))

(assert (= (and b!1296952 res!862023) b!1296954))

(assert (= (and b!1296956 condMapEmpty!53522) mapIsEmpty!53522))

(assert (= (and b!1296956 (not condMapEmpty!53522)) mapNonEmpty!53522))

(get-info :version)

(assert (= (and mapNonEmpty!53522 ((_ is ValueCellFull!16422) mapValue!53522)) b!1296950))

(assert (= (and b!1296956 ((_ is ValueCellFull!16422) mapDefault!53522)) b!1296949))

(assert (= start!109548 b!1296956))

(declare-fun m!1188717 () Bool)

(assert (=> b!1296951 m!1188717))

(declare-fun m!1188719 () Bool)

(assert (=> start!109548 m!1188719))

(declare-fun m!1188721 () Bool)

(assert (=> start!109548 m!1188721))

(declare-fun m!1188723 () Bool)

(assert (=> start!109548 m!1188723))

(declare-fun m!1188725 () Bool)

(assert (=> mapNonEmpty!53522 m!1188725))

(declare-fun m!1188727 () Bool)

(assert (=> b!1296955 m!1188727))

(declare-fun m!1188729 () Bool)

(assert (=> b!1296954 m!1188729))

(assert (=> b!1296954 m!1188729))

(declare-fun m!1188731 () Bool)

(assert (=> b!1296954 m!1188731))

(check-sat tp_is_empty!34641 (not b!1296954) (not b_next!29001) (not mapNonEmpty!53522) (not b!1296955) (not b!1296951) b_and!47101 (not start!109548))
(check-sat b_and!47101 (not b_next!29001))
