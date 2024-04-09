; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108822 () Bool)

(assert start!108822)

(declare-fun b_free!28299 () Bool)

(declare-fun b_next!28299 () Bool)

(assert (=> start!108822 (= b_free!28299 (not b_next!28299))))

(declare-fun tp!100013 () Bool)

(declare-fun b_and!46375 () Bool)

(assert (=> start!108822 (= tp!100013 b_and!46375)))

(declare-fun b!1284522 () Bool)

(declare-fun res!853405 () Bool)

(declare-fun e!733777 () Bool)

(assert (=> b!1284522 (=> (not res!853405) (not e!733777))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84893 0))(
  ( (array!84894 (arr!40944 (Array (_ BitVec 32) (_ BitVec 64))) (size!41495 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84893)

(assert (=> b!1284522 (= res!853405 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41495 _keys!1741))))))

(declare-fun res!853404 () Bool)

(assert (=> start!108822 (=> (not res!853404) (not e!733777))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108822 (= res!853404 (validMask!0 mask!2175))))

(assert (=> start!108822 e!733777))

(declare-fun tp_is_empty!33939 () Bool)

(assert (=> start!108822 tp_is_empty!33939))

(assert (=> start!108822 true))

(declare-datatypes ((V!50355 0))(
  ( (V!50356 (val!17044 Int)) )
))
(declare-datatypes ((ValueCell!16071 0))(
  ( (ValueCellFull!16071 (v!19644 V!50355)) (EmptyCell!16071) )
))
(declare-datatypes ((array!84895 0))(
  ( (array!84896 (arr!40945 (Array (_ BitVec 32) ValueCell!16071)) (size!41496 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84895)

(declare-fun e!733778 () Bool)

(declare-fun array_inv!31033 (array!84895) Bool)

(assert (=> start!108822 (and (array_inv!31033 _values!1445) e!733778)))

(declare-fun array_inv!31034 (array!84893) Bool)

(assert (=> start!108822 (array_inv!31034 _keys!1741)))

(assert (=> start!108822 tp!100013))

(declare-fun b!1284523 () Bool)

(declare-fun e!733776 () Bool)

(declare-fun mapRes!52466 () Bool)

(assert (=> b!1284523 (= e!733778 (and e!733776 mapRes!52466))))

(declare-fun condMapEmpty!52466 () Bool)

(declare-fun mapDefault!52466 () ValueCell!16071)

(assert (=> b!1284523 (= condMapEmpty!52466 (= (arr!40945 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16071)) mapDefault!52466)))))

(declare-fun b!1284524 () Bool)

(declare-fun e!733780 () Bool)

(assert (=> b!1284524 (= e!733780 tp_is_empty!33939)))

(declare-fun b!1284525 () Bool)

(assert (=> b!1284525 (= e!733776 tp_is_empty!33939)))

(declare-fun mapIsEmpty!52466 () Bool)

(assert (=> mapIsEmpty!52466 mapRes!52466))

(declare-fun b!1284526 () Bool)

(declare-fun res!853406 () Bool)

(assert (=> b!1284526 (=> (not res!853406) (not e!733777))))

(declare-datatypes ((List!29184 0))(
  ( (Nil!29181) (Cons!29180 (h!30389 (_ BitVec 64)) (t!42735 List!29184)) )
))
(declare-fun arrayNoDuplicates!0 (array!84893 (_ BitVec 32) List!29184) Bool)

(assert (=> b!1284526 (= res!853406 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29181))))

(declare-fun b!1284527 () Bool)

(assert (=> b!1284527 (= e!733777 false)))

(declare-fun minValue!1387 () V!50355)

(declare-fun zeroValue!1387 () V!50355)

(declare-fun lt!576771 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21974 0))(
  ( (tuple2!21975 (_1!10997 (_ BitVec 64)) (_2!10997 V!50355)) )
))
(declare-datatypes ((List!29185 0))(
  ( (Nil!29182) (Cons!29181 (h!30390 tuple2!21974) (t!42736 List!29185)) )
))
(declare-datatypes ((ListLongMap!19643 0))(
  ( (ListLongMap!19644 (toList!9837 List!29185)) )
))
(declare-fun contains!7892 (ListLongMap!19643 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4855 (array!84893 array!84895 (_ BitVec 32) (_ BitVec 32) V!50355 V!50355 (_ BitVec 32) Int) ListLongMap!19643)

(assert (=> b!1284527 (= lt!576771 (contains!7892 (getCurrentListMap!4855 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52466 () Bool)

(declare-fun tp!100014 () Bool)

(assert (=> mapNonEmpty!52466 (= mapRes!52466 (and tp!100014 e!733780))))

(declare-fun mapKey!52466 () (_ BitVec 32))

(declare-fun mapValue!52466 () ValueCell!16071)

(declare-fun mapRest!52466 () (Array (_ BitVec 32) ValueCell!16071))

(assert (=> mapNonEmpty!52466 (= (arr!40945 _values!1445) (store mapRest!52466 mapKey!52466 mapValue!52466))))

(declare-fun b!1284528 () Bool)

(declare-fun res!853403 () Bool)

(assert (=> b!1284528 (=> (not res!853403) (not e!733777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84893 (_ BitVec 32)) Bool)

(assert (=> b!1284528 (= res!853403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284529 () Bool)

(declare-fun res!853407 () Bool)

(assert (=> b!1284529 (=> (not res!853407) (not e!733777))))

(assert (=> b!1284529 (= res!853407 (and (= (size!41496 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41495 _keys!1741) (size!41496 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108822 res!853404) b!1284529))

(assert (= (and b!1284529 res!853407) b!1284528))

(assert (= (and b!1284528 res!853403) b!1284526))

(assert (= (and b!1284526 res!853406) b!1284522))

(assert (= (and b!1284522 res!853405) b!1284527))

(assert (= (and b!1284523 condMapEmpty!52466) mapIsEmpty!52466))

(assert (= (and b!1284523 (not condMapEmpty!52466)) mapNonEmpty!52466))

(get-info :version)

(assert (= (and mapNonEmpty!52466 ((_ is ValueCellFull!16071) mapValue!52466)) b!1284524))

(assert (= (and b!1284523 ((_ is ValueCellFull!16071) mapDefault!52466)) b!1284525))

(assert (= start!108822 b!1284523))

(declare-fun m!1178191 () Bool)

(assert (=> mapNonEmpty!52466 m!1178191))

(declare-fun m!1178193 () Bool)

(assert (=> b!1284528 m!1178193))

(declare-fun m!1178195 () Bool)

(assert (=> start!108822 m!1178195))

(declare-fun m!1178197 () Bool)

(assert (=> start!108822 m!1178197))

(declare-fun m!1178199 () Bool)

(assert (=> start!108822 m!1178199))

(declare-fun m!1178201 () Bool)

(assert (=> b!1284526 m!1178201))

(declare-fun m!1178203 () Bool)

(assert (=> b!1284527 m!1178203))

(assert (=> b!1284527 m!1178203))

(declare-fun m!1178205 () Bool)

(assert (=> b!1284527 m!1178205))

(check-sat (not b!1284526) (not mapNonEmpty!52466) tp_is_empty!33939 (not b!1284528) (not start!108822) b_and!46375 (not b!1284527) (not b_next!28299))
(check-sat b_and!46375 (not b_next!28299))
