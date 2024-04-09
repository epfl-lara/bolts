; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109530 () Bool)

(assert start!109530)

(declare-fun b_free!28983 () Bool)

(declare-fun b_next!28983 () Bool)

(assert (=> start!109530 (= b_free!28983 (not b_next!28983))))

(declare-fun tp!102068 () Bool)

(declare-fun b_and!47083 () Bool)

(assert (=> start!109530 (= tp!102068 b_and!47083)))

(declare-fun b!1296729 () Bool)

(declare-fun res!861880 () Bool)

(declare-fun e!739820 () Bool)

(assert (=> b!1296729 (=> (not res!861880) (not e!739820))))

(declare-datatypes ((array!86225 0))(
  ( (array!86226 (arr!41609 (Array (_ BitVec 32) (_ BitVec 64))) (size!42160 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86225)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86225 (_ BitVec 32)) Bool)

(assert (=> b!1296729 (= res!861880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296730 () Bool)

(declare-fun res!861883 () Bool)

(assert (=> b!1296730 (=> (not res!861883) (not e!739820))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296730 (= res!861883 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42160 _keys!1741))))))

(declare-fun res!861882 () Bool)

(assert (=> start!109530 (=> (not res!861882) (not e!739820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109530 (= res!861882 (validMask!0 mask!2175))))

(assert (=> start!109530 e!739820))

(declare-fun tp_is_empty!34623 () Bool)

(assert (=> start!109530 tp_is_empty!34623))

(assert (=> start!109530 true))

(declare-datatypes ((V!51267 0))(
  ( (V!51268 (val!17386 Int)) )
))
(declare-datatypes ((ValueCell!16413 0))(
  ( (ValueCellFull!16413 (v!19987 V!51267)) (EmptyCell!16413) )
))
(declare-datatypes ((array!86227 0))(
  ( (array!86228 (arr!41610 (Array (_ BitVec 32) ValueCell!16413)) (size!42161 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86227)

(declare-fun e!739821 () Bool)

(declare-fun array_inv!31493 (array!86227) Bool)

(assert (=> start!109530 (and (array_inv!31493 _values!1445) e!739821)))

(declare-fun array_inv!31494 (array!86225) Bool)

(assert (=> start!109530 (array_inv!31494 _keys!1741)))

(assert (=> start!109530 tp!102068))

(declare-fun b!1296731 () Bool)

(declare-fun res!861884 () Bool)

(assert (=> b!1296731 (=> (not res!861884) (not e!739820))))

(declare-fun minValue!1387 () V!51267)

(declare-fun zeroValue!1387 () V!51267)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22552 0))(
  ( (tuple2!22553 (_1!11286 (_ BitVec 64)) (_2!11286 V!51267)) )
))
(declare-datatypes ((List!29717 0))(
  ( (Nil!29714) (Cons!29713 (h!30922 tuple2!22552) (t!43288 List!29717)) )
))
(declare-datatypes ((ListLongMap!20221 0))(
  ( (ListLongMap!20222 (toList!10126 List!29717)) )
))
(declare-fun contains!8180 (ListLongMap!20221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5100 (array!86225 array!86227 (_ BitVec 32) (_ BitVec 32) V!51267 V!51267 (_ BitVec 32) Int) ListLongMap!20221)

(assert (=> b!1296731 (= res!861884 (contains!8180 (getCurrentListMap!5100 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296732 () Bool)

(declare-fun e!739822 () Bool)

(assert (=> b!1296732 (= e!739822 tp_is_empty!34623)))

(declare-fun mapIsEmpty!53495 () Bool)

(declare-fun mapRes!53495 () Bool)

(assert (=> mapIsEmpty!53495 mapRes!53495))

(declare-fun b!1296733 () Bool)

(declare-fun res!861881 () Bool)

(assert (=> b!1296733 (=> (not res!861881) (not e!739820))))

(declare-datatypes ((List!29718 0))(
  ( (Nil!29715) (Cons!29714 (h!30923 (_ BitVec 64)) (t!43289 List!29718)) )
))
(declare-fun arrayNoDuplicates!0 (array!86225 (_ BitVec 32) List!29718) Bool)

(assert (=> b!1296733 (= res!861881 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29715))))

(declare-fun b!1296734 () Bool)

(declare-fun res!861885 () Bool)

(assert (=> b!1296734 (=> (not res!861885) (not e!739820))))

(assert (=> b!1296734 (= res!861885 (and (= (size!42161 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42160 _keys!1741) (size!42161 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296735 () Bool)

(declare-fun e!739819 () Bool)

(assert (=> b!1296735 (= e!739819 tp_is_empty!34623)))

(declare-fun mapNonEmpty!53495 () Bool)

(declare-fun tp!102069 () Bool)

(assert (=> mapNonEmpty!53495 (= mapRes!53495 (and tp!102069 e!739822))))

(declare-fun mapRest!53495 () (Array (_ BitVec 32) ValueCell!16413))

(declare-fun mapValue!53495 () ValueCell!16413)

(declare-fun mapKey!53495 () (_ BitVec 32))

(assert (=> mapNonEmpty!53495 (= (arr!41610 _values!1445) (store mapRest!53495 mapKey!53495 mapValue!53495))))

(declare-fun b!1296736 () Bool)

(assert (=> b!1296736 (= e!739821 (and e!739819 mapRes!53495))))

(declare-fun condMapEmpty!53495 () Bool)

(declare-fun mapDefault!53495 () ValueCell!16413)

(assert (=> b!1296736 (= condMapEmpty!53495 (= (arr!41610 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16413)) mapDefault!53495)))))

(declare-fun b!1296737 () Bool)

(assert (=> b!1296737 (= e!739820 (bvslt (bvsub (size!42160 _keys!1741) from!2144) #b00000000000000000000000000000000))))

(assert (= (and start!109530 res!861882) b!1296734))

(assert (= (and b!1296734 res!861885) b!1296729))

(assert (= (and b!1296729 res!861880) b!1296733))

(assert (= (and b!1296733 res!861881) b!1296730))

(assert (= (and b!1296730 res!861883) b!1296731))

(assert (= (and b!1296731 res!861884) b!1296737))

(assert (= (and b!1296736 condMapEmpty!53495) mapIsEmpty!53495))

(assert (= (and b!1296736 (not condMapEmpty!53495)) mapNonEmpty!53495))

(get-info :version)

(assert (= (and mapNonEmpty!53495 ((_ is ValueCellFull!16413) mapValue!53495)) b!1296732))

(assert (= (and b!1296736 ((_ is ValueCellFull!16413) mapDefault!53495)) b!1296735))

(assert (= start!109530 b!1296736))

(declare-fun m!1188573 () Bool)

(assert (=> b!1296733 m!1188573))

(declare-fun m!1188575 () Bool)

(assert (=> start!109530 m!1188575))

(declare-fun m!1188577 () Bool)

(assert (=> start!109530 m!1188577))

(declare-fun m!1188579 () Bool)

(assert (=> start!109530 m!1188579))

(declare-fun m!1188581 () Bool)

(assert (=> b!1296731 m!1188581))

(assert (=> b!1296731 m!1188581))

(declare-fun m!1188583 () Bool)

(assert (=> b!1296731 m!1188583))

(declare-fun m!1188585 () Bool)

(assert (=> b!1296729 m!1188585))

(declare-fun m!1188587 () Bool)

(assert (=> mapNonEmpty!53495 m!1188587))

(check-sat (not b!1296729) (not start!109530) (not b!1296731) (not mapNonEmpty!53495) (not b_next!28983) b_and!47083 tp_is_empty!34623 (not b!1296733))
(check-sat b_and!47083 (not b_next!28983))
