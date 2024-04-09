; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108494 () Bool)

(assert start!108494)

(declare-fun b_free!28005 () Bool)

(declare-fun b_next!28005 () Bool)

(assert (=> start!108494 (= b_free!28005 (not b_next!28005))))

(declare-fun tp!99126 () Bool)

(declare-fun b_and!46075 () Bool)

(assert (=> start!108494 (= tp!99126 b_and!46075)))

(declare-fun b!1279975 () Bool)

(declare-fun e!731377 () Bool)

(declare-fun tp_is_empty!33645 () Bool)

(assert (=> b!1279975 (= e!731377 tp_is_empty!33645)))

(declare-fun b!1279976 () Bool)

(declare-fun res!850330 () Bool)

(declare-fun e!731380 () Bool)

(assert (=> b!1279976 (=> (not res!850330) (not e!731380))))

(declare-datatypes ((array!84323 0))(
  ( (array!84324 (arr!40661 (Array (_ BitVec 32) (_ BitVec 64))) (size!41212 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84323)

(declare-datatypes ((List!28981 0))(
  ( (Nil!28978) (Cons!28977 (h!30186 (_ BitVec 64)) (t!42528 List!28981)) )
))
(declare-fun arrayNoDuplicates!0 (array!84323 (_ BitVec 32) List!28981) Bool)

(assert (=> b!1279976 (= res!850330 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28978))))

(declare-fun b!1279977 () Bool)

(declare-fun res!850331 () Bool)

(assert (=> b!1279977 (=> (not res!850331) (not e!731380))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49963 0))(
  ( (V!49964 (val!16897 Int)) )
))
(declare-datatypes ((ValueCell!15924 0))(
  ( (ValueCellFull!15924 (v!19495 V!49963)) (EmptyCell!15924) )
))
(declare-datatypes ((array!84325 0))(
  ( (array!84326 (arr!40662 (Array (_ BitVec 32) ValueCell!15924)) (size!41213 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84325)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279977 (= res!850331 (and (= (size!41213 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41212 _keys!1741) (size!41213 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279978 () Bool)

(declare-fun e!731376 () Bool)

(assert (=> b!1279978 (= e!731376 tp_is_empty!33645)))

(declare-fun mapIsEmpty!52019 () Bool)

(declare-fun mapRes!52019 () Bool)

(assert (=> mapIsEmpty!52019 mapRes!52019))

(declare-fun b!1279979 () Bool)

(assert (=> b!1279979 (= e!731380 false)))

(declare-fun minValue!1387 () V!49963)

(declare-fun zeroValue!1387 () V!49963)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576016 () Bool)

(declare-datatypes ((tuple2!21772 0))(
  ( (tuple2!21773 (_1!10896 (_ BitVec 64)) (_2!10896 V!49963)) )
))
(declare-datatypes ((List!28982 0))(
  ( (Nil!28979) (Cons!28978 (h!30187 tuple2!21772) (t!42529 List!28982)) )
))
(declare-datatypes ((ListLongMap!19441 0))(
  ( (ListLongMap!19442 (toList!9736 List!28982)) )
))
(declare-fun contains!7789 (ListLongMap!19441 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4756 (array!84323 array!84325 (_ BitVec 32) (_ BitVec 32) V!49963 V!49963 (_ BitVec 32) Int) ListLongMap!19441)

(assert (=> b!1279979 (= lt!576016 (contains!7789 (getCurrentListMap!4756 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279980 () Bool)

(declare-fun res!850329 () Bool)

(assert (=> b!1279980 (=> (not res!850329) (not e!731380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84323 (_ BitVec 32)) Bool)

(assert (=> b!1279980 (= res!850329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!850327 () Bool)

(assert (=> start!108494 (=> (not res!850327) (not e!731380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108494 (= res!850327 (validMask!0 mask!2175))))

(assert (=> start!108494 e!731380))

(assert (=> start!108494 tp_is_empty!33645))

(assert (=> start!108494 true))

(declare-fun e!731378 () Bool)

(declare-fun array_inv!30851 (array!84325) Bool)

(assert (=> start!108494 (and (array_inv!30851 _values!1445) e!731378)))

(declare-fun array_inv!30852 (array!84323) Bool)

(assert (=> start!108494 (array_inv!30852 _keys!1741)))

(assert (=> start!108494 tp!99126))

(declare-fun mapNonEmpty!52019 () Bool)

(declare-fun tp!99125 () Bool)

(assert (=> mapNonEmpty!52019 (= mapRes!52019 (and tp!99125 e!731376))))

(declare-fun mapRest!52019 () (Array (_ BitVec 32) ValueCell!15924))

(declare-fun mapValue!52019 () ValueCell!15924)

(declare-fun mapKey!52019 () (_ BitVec 32))

(assert (=> mapNonEmpty!52019 (= (arr!40662 _values!1445) (store mapRest!52019 mapKey!52019 mapValue!52019))))

(declare-fun b!1279981 () Bool)

(assert (=> b!1279981 (= e!731378 (and e!731377 mapRes!52019))))

(declare-fun condMapEmpty!52019 () Bool)

(declare-fun mapDefault!52019 () ValueCell!15924)

(assert (=> b!1279981 (= condMapEmpty!52019 (= (arr!40662 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15924)) mapDefault!52019)))))

(declare-fun b!1279982 () Bool)

(declare-fun res!850328 () Bool)

(assert (=> b!1279982 (=> (not res!850328) (not e!731380))))

(assert (=> b!1279982 (= res!850328 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41212 _keys!1741))))))

(assert (= (and start!108494 res!850327) b!1279977))

(assert (= (and b!1279977 res!850331) b!1279980))

(assert (= (and b!1279980 res!850329) b!1279976))

(assert (= (and b!1279976 res!850330) b!1279982))

(assert (= (and b!1279982 res!850328) b!1279979))

(assert (= (and b!1279981 condMapEmpty!52019) mapIsEmpty!52019))

(assert (= (and b!1279981 (not condMapEmpty!52019)) mapNonEmpty!52019))

(get-info :version)

(assert (= (and mapNonEmpty!52019 ((_ is ValueCellFull!15924) mapValue!52019)) b!1279978))

(assert (= (and b!1279981 ((_ is ValueCellFull!15924) mapDefault!52019)) b!1279975))

(assert (= start!108494 b!1279981))

(declare-fun m!1174767 () Bool)

(assert (=> start!108494 m!1174767))

(declare-fun m!1174769 () Bool)

(assert (=> start!108494 m!1174769))

(declare-fun m!1174771 () Bool)

(assert (=> start!108494 m!1174771))

(declare-fun m!1174773 () Bool)

(assert (=> b!1279980 m!1174773))

(declare-fun m!1174775 () Bool)

(assert (=> mapNonEmpty!52019 m!1174775))

(declare-fun m!1174777 () Bool)

(assert (=> b!1279976 m!1174777))

(declare-fun m!1174779 () Bool)

(assert (=> b!1279979 m!1174779))

(assert (=> b!1279979 m!1174779))

(declare-fun m!1174781 () Bool)

(assert (=> b!1279979 m!1174781))

(check-sat tp_is_empty!33645 (not b_next!28005) (not b!1279979) (not b!1279976) b_and!46075 (not start!108494) (not mapNonEmpty!52019) (not b!1279980))
(check-sat b_and!46075 (not b_next!28005))
