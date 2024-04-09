; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109536 () Bool)

(assert start!109536)

(declare-fun b_free!28989 () Bool)

(declare-fun b_next!28989 () Bool)

(assert (=> start!109536 (= b_free!28989 (not b_next!28989))))

(declare-fun tp!102087 () Bool)

(declare-fun b_and!47089 () Bool)

(assert (=> start!109536 (= tp!102087 b_and!47089)))

(declare-fun b!1296805 () Bool)

(declare-fun e!739864 () Bool)

(assert (=> b!1296805 (= e!739864 false)))

(declare-datatypes ((V!51275 0))(
  ( (V!51276 (val!17389 Int)) )
))
(declare-fun minValue!1387 () V!51275)

(declare-fun zeroValue!1387 () V!51275)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16416 0))(
  ( (ValueCellFull!16416 (v!19990 V!51275)) (EmptyCell!16416) )
))
(declare-datatypes ((array!86237 0))(
  ( (array!86238 (arr!41615 (Array (_ BitVec 32) ValueCell!16416)) (size!42166 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86237)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86239 0))(
  ( (array!86240 (arr!41616 (Array (_ BitVec 32) (_ BitVec 64))) (size!42167 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86239)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!580465 () Bool)

(declare-datatypes ((tuple2!22556 0))(
  ( (tuple2!22557 (_1!11288 (_ BitVec 64)) (_2!11288 V!51275)) )
))
(declare-datatypes ((List!29720 0))(
  ( (Nil!29717) (Cons!29716 (h!30925 tuple2!22556) (t!43291 List!29720)) )
))
(declare-datatypes ((ListLongMap!20225 0))(
  ( (ListLongMap!20226 (toList!10128 List!29720)) )
))
(declare-fun contains!8182 (ListLongMap!20225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5102 (array!86239 array!86237 (_ BitVec 32) (_ BitVec 32) V!51275 V!51275 (_ BitVec 32) Int) ListLongMap!20225)

(assert (=> b!1296805 (= lt!580465 (contains!8182 (getCurrentListMap!5102 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296806 () Bool)

(declare-fun res!861931 () Bool)

(assert (=> b!1296806 (=> (not res!861931) (not e!739864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86239 (_ BitVec 32)) Bool)

(assert (=> b!1296806 (= res!861931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296807 () Bool)

(declare-fun res!861932 () Bool)

(assert (=> b!1296807 (=> (not res!861932) (not e!739864))))

(assert (=> b!1296807 (= res!861932 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42167 _keys!1741))))))

(declare-fun b!1296808 () Bool)

(declare-fun e!739867 () Bool)

(declare-fun tp_is_empty!34629 () Bool)

(assert (=> b!1296808 (= e!739867 tp_is_empty!34629)))

(declare-fun b!1296810 () Bool)

(declare-fun res!861930 () Bool)

(assert (=> b!1296810 (=> (not res!861930) (not e!739864))))

(assert (=> b!1296810 (= res!861930 (and (= (size!42166 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42167 _keys!1741) (size!42166 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53504 () Bool)

(declare-fun mapRes!53504 () Bool)

(assert (=> mapIsEmpty!53504 mapRes!53504))

(declare-fun b!1296811 () Bool)

(declare-fun e!739866 () Bool)

(assert (=> b!1296811 (= e!739866 (and e!739867 mapRes!53504))))

(declare-fun condMapEmpty!53504 () Bool)

(declare-fun mapDefault!53504 () ValueCell!16416)

(assert (=> b!1296811 (= condMapEmpty!53504 (= (arr!41615 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16416)) mapDefault!53504)))))

(declare-fun b!1296809 () Bool)

(declare-fun e!739863 () Bool)

(assert (=> b!1296809 (= e!739863 tp_is_empty!34629)))

(declare-fun res!861933 () Bool)

(assert (=> start!109536 (=> (not res!861933) (not e!739864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109536 (= res!861933 (validMask!0 mask!2175))))

(assert (=> start!109536 e!739864))

(assert (=> start!109536 tp_is_empty!34629))

(assert (=> start!109536 true))

(declare-fun array_inv!31497 (array!86237) Bool)

(assert (=> start!109536 (and (array_inv!31497 _values!1445) e!739866)))

(declare-fun array_inv!31498 (array!86239) Bool)

(assert (=> start!109536 (array_inv!31498 _keys!1741)))

(assert (=> start!109536 tp!102087))

(declare-fun mapNonEmpty!53504 () Bool)

(declare-fun tp!102086 () Bool)

(assert (=> mapNonEmpty!53504 (= mapRes!53504 (and tp!102086 e!739863))))

(declare-fun mapRest!53504 () (Array (_ BitVec 32) ValueCell!16416))

(declare-fun mapValue!53504 () ValueCell!16416)

(declare-fun mapKey!53504 () (_ BitVec 32))

(assert (=> mapNonEmpty!53504 (= (arr!41615 _values!1445) (store mapRest!53504 mapKey!53504 mapValue!53504))))

(declare-fun b!1296812 () Bool)

(declare-fun res!861929 () Bool)

(assert (=> b!1296812 (=> (not res!861929) (not e!739864))))

(declare-datatypes ((List!29721 0))(
  ( (Nil!29718) (Cons!29717 (h!30926 (_ BitVec 64)) (t!43292 List!29721)) )
))
(declare-fun arrayNoDuplicates!0 (array!86239 (_ BitVec 32) List!29721) Bool)

(assert (=> b!1296812 (= res!861929 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29718))))

(assert (= (and start!109536 res!861933) b!1296810))

(assert (= (and b!1296810 res!861930) b!1296806))

(assert (= (and b!1296806 res!861931) b!1296812))

(assert (= (and b!1296812 res!861929) b!1296807))

(assert (= (and b!1296807 res!861932) b!1296805))

(assert (= (and b!1296811 condMapEmpty!53504) mapIsEmpty!53504))

(assert (= (and b!1296811 (not condMapEmpty!53504)) mapNonEmpty!53504))

(get-info :version)

(assert (= (and mapNonEmpty!53504 ((_ is ValueCellFull!16416) mapValue!53504)) b!1296809))

(assert (= (and b!1296811 ((_ is ValueCellFull!16416) mapDefault!53504)) b!1296808))

(assert (= start!109536 b!1296811))

(declare-fun m!1188621 () Bool)

(assert (=> b!1296806 m!1188621))

(declare-fun m!1188623 () Bool)

(assert (=> b!1296812 m!1188623))

(declare-fun m!1188625 () Bool)

(assert (=> start!109536 m!1188625))

(declare-fun m!1188627 () Bool)

(assert (=> start!109536 m!1188627))

(declare-fun m!1188629 () Bool)

(assert (=> start!109536 m!1188629))

(declare-fun m!1188631 () Bool)

(assert (=> b!1296805 m!1188631))

(assert (=> b!1296805 m!1188631))

(declare-fun m!1188633 () Bool)

(assert (=> b!1296805 m!1188633))

(declare-fun m!1188635 () Bool)

(assert (=> mapNonEmpty!53504 m!1188635))

(check-sat (not b_next!28989) (not b!1296806) b_and!47089 (not b!1296812) (not start!109536) (not mapNonEmpty!53504) tp_is_empty!34629 (not b!1296805))
(check-sat b_and!47089 (not b_next!28989))
