; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109464 () Bool)

(assert start!109464)

(declare-fun b_free!28917 () Bool)

(declare-fun b_next!28917 () Bool)

(assert (=> start!109464 (= b_free!28917 (not b_next!28917))))

(declare-fun tp!101870 () Bool)

(declare-fun b_and!47017 () Bool)

(assert (=> start!109464 (= tp!101870 b_and!47017)))

(declare-fun b!1295529 () Bool)

(declare-fun res!861140 () Bool)

(declare-fun e!739202 () Bool)

(assert (=> b!1295529 (=> (not res!861140) (not e!739202))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86097 0))(
  ( (array!86098 (arr!41545 (Array (_ BitVec 32) (_ BitVec 64))) (size!42096 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86097)

(assert (=> b!1295529 (= res!861140 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42096 _keys!1741))))))

(declare-fun b!1295530 () Bool)

(declare-fun res!861142 () Bool)

(assert (=> b!1295530 (=> (not res!861142) (not e!739202))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86097 (_ BitVec 32)) Bool)

(assert (=> b!1295530 (= res!861142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295531 () Bool)

(declare-fun res!861139 () Bool)

(assert (=> b!1295531 (=> (not res!861139) (not e!739202))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1295531 (= res!861139 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42096 _keys!1741))))))

(declare-fun mapIsEmpty!53396 () Bool)

(declare-fun mapRes!53396 () Bool)

(assert (=> mapIsEmpty!53396 mapRes!53396))

(declare-fun b!1295532 () Bool)

(declare-fun res!861141 () Bool)

(assert (=> b!1295532 (=> (not res!861141) (not e!739202))))

(declare-datatypes ((V!51179 0))(
  ( (V!51180 (val!17353 Int)) )
))
(declare-fun minValue!1387 () V!51179)

(declare-fun zeroValue!1387 () V!51179)

(declare-datatypes ((ValueCell!16380 0))(
  ( (ValueCellFull!16380 (v!19954 V!51179)) (EmptyCell!16380) )
))
(declare-datatypes ((array!86099 0))(
  ( (array!86100 (arr!41546 (Array (_ BitVec 32) ValueCell!16380)) (size!42097 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86099)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22498 0))(
  ( (tuple2!22499 (_1!11259 (_ BitVec 64)) (_2!11259 V!51179)) )
))
(declare-datatypes ((List!29666 0))(
  ( (Nil!29663) (Cons!29662 (h!30871 tuple2!22498) (t!43237 List!29666)) )
))
(declare-datatypes ((ListLongMap!20167 0))(
  ( (ListLongMap!20168 (toList!10099 List!29666)) )
))
(declare-fun contains!8155 (ListLongMap!20167 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5079 (array!86097 array!86099 (_ BitVec 32) (_ BitVec 32) V!51179 V!51179 (_ BitVec 32) Int) ListLongMap!20167)

(assert (=> b!1295532 (= res!861141 (contains!8155 (getCurrentListMap!5079 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295533 () Bool)

(declare-fun e!739203 () Bool)

(assert (=> b!1295533 (= e!739202 (not e!739203))))

(declare-fun res!861145 () Bool)

(assert (=> b!1295533 (=> res!861145 e!739203)))

(assert (=> b!1295533 (= res!861145 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295533 (not (contains!8155 (ListLongMap!20168 Nil!29663) k0!1205))))

(declare-datatypes ((Unit!42861 0))(
  ( (Unit!42862) )
))
(declare-fun lt!579882 () Unit!42861)

(declare-fun emptyContainsNothing!186 ((_ BitVec 64)) Unit!42861)

(assert (=> b!1295533 (= lt!579882 (emptyContainsNothing!186 k0!1205))))

(declare-fun res!861143 () Bool)

(assert (=> start!109464 (=> (not res!861143) (not e!739202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109464 (= res!861143 (validMask!0 mask!2175))))

(assert (=> start!109464 e!739202))

(declare-fun tp_is_empty!34557 () Bool)

(assert (=> start!109464 tp_is_empty!34557))

(assert (=> start!109464 true))

(declare-fun e!739205 () Bool)

(declare-fun array_inv!31443 (array!86099) Bool)

(assert (=> start!109464 (and (array_inv!31443 _values!1445) e!739205)))

(declare-fun array_inv!31444 (array!86097) Bool)

(assert (=> start!109464 (array_inv!31444 _keys!1741)))

(assert (=> start!109464 tp!101870))

(declare-fun b!1295534 () Bool)

(declare-fun e!739206 () Bool)

(assert (=> b!1295534 (= e!739206 tp_is_empty!34557)))

(declare-fun mapNonEmpty!53396 () Bool)

(declare-fun tp!101871 () Bool)

(assert (=> mapNonEmpty!53396 (= mapRes!53396 (and tp!101871 e!739206))))

(declare-fun mapKey!53396 () (_ BitVec 32))

(declare-fun mapRest!53396 () (Array (_ BitVec 32) ValueCell!16380))

(declare-fun mapValue!53396 () ValueCell!16380)

(assert (=> mapNonEmpty!53396 (= (arr!41546 _values!1445) (store mapRest!53396 mapKey!53396 mapValue!53396))))

(declare-fun b!1295535 () Bool)

(declare-fun e!739207 () Bool)

(assert (=> b!1295535 (= e!739207 tp_is_empty!34557)))

(declare-fun b!1295536 () Bool)

(assert (=> b!1295536 (= e!739203 true)))

(declare-fun lt!579881 () ListLongMap!20167)

(declare-fun +!4400 (ListLongMap!20167 tuple2!22498) ListLongMap!20167)

(assert (=> b!1295536 (not (contains!8155 (+!4400 lt!579881 (tuple2!22499 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579883 () Unit!42861)

(declare-fun addStillNotContains!445 (ListLongMap!20167 (_ BitVec 64) V!51179 (_ BitVec 64)) Unit!42861)

(assert (=> b!1295536 (= lt!579883 (addStillNotContains!445 lt!579881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6116 (array!86097 array!86099 (_ BitVec 32) (_ BitVec 32) V!51179 V!51179 (_ BitVec 32) Int) ListLongMap!20167)

(assert (=> b!1295536 (= lt!579881 (getCurrentListMapNoExtraKeys!6116 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295537 () Bool)

(declare-fun res!861147 () Bool)

(assert (=> b!1295537 (=> (not res!861147) (not e!739202))))

(declare-datatypes ((List!29667 0))(
  ( (Nil!29664) (Cons!29663 (h!30872 (_ BitVec 64)) (t!43238 List!29667)) )
))
(declare-fun arrayNoDuplicates!0 (array!86097 (_ BitVec 32) List!29667) Bool)

(assert (=> b!1295537 (= res!861147 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29664))))

(declare-fun b!1295538 () Bool)

(assert (=> b!1295538 (= e!739205 (and e!739207 mapRes!53396))))

(declare-fun condMapEmpty!53396 () Bool)

(declare-fun mapDefault!53396 () ValueCell!16380)

(assert (=> b!1295538 (= condMapEmpty!53396 (= (arr!41546 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16380)) mapDefault!53396)))))

(declare-fun b!1295539 () Bool)

(declare-fun res!861144 () Bool)

(assert (=> b!1295539 (=> (not res!861144) (not e!739202))))

(assert (=> b!1295539 (= res!861144 (and (= (size!42097 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42096 _keys!1741) (size!42097 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295540 () Bool)

(declare-fun res!861146 () Bool)

(assert (=> b!1295540 (=> (not res!861146) (not e!739202))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295540 (= res!861146 (not (validKeyInArray!0 (select (arr!41545 _keys!1741) from!2144))))))

(assert (= (and start!109464 res!861143) b!1295539))

(assert (= (and b!1295539 res!861144) b!1295530))

(assert (= (and b!1295530 res!861142) b!1295537))

(assert (= (and b!1295537 res!861147) b!1295529))

(assert (= (and b!1295529 res!861140) b!1295532))

(assert (= (and b!1295532 res!861141) b!1295531))

(assert (= (and b!1295531 res!861139) b!1295540))

(assert (= (and b!1295540 res!861146) b!1295533))

(assert (= (and b!1295533 (not res!861145)) b!1295536))

(assert (= (and b!1295538 condMapEmpty!53396) mapIsEmpty!53396))

(assert (= (and b!1295538 (not condMapEmpty!53396)) mapNonEmpty!53396))

(get-info :version)

(assert (= (and mapNonEmpty!53396 ((_ is ValueCellFull!16380) mapValue!53396)) b!1295534))

(assert (= (and b!1295538 ((_ is ValueCellFull!16380) mapDefault!53396)) b!1295535))

(assert (= start!109464 b!1295538))

(declare-fun m!1187569 () Bool)

(assert (=> start!109464 m!1187569))

(declare-fun m!1187571 () Bool)

(assert (=> start!109464 m!1187571))

(declare-fun m!1187573 () Bool)

(assert (=> start!109464 m!1187573))

(declare-fun m!1187575 () Bool)

(assert (=> b!1295533 m!1187575))

(declare-fun m!1187577 () Bool)

(assert (=> b!1295533 m!1187577))

(declare-fun m!1187579 () Bool)

(assert (=> mapNonEmpty!53396 m!1187579))

(declare-fun m!1187581 () Bool)

(assert (=> b!1295537 m!1187581))

(declare-fun m!1187583 () Bool)

(assert (=> b!1295530 m!1187583))

(declare-fun m!1187585 () Bool)

(assert (=> b!1295536 m!1187585))

(assert (=> b!1295536 m!1187585))

(declare-fun m!1187587 () Bool)

(assert (=> b!1295536 m!1187587))

(declare-fun m!1187589 () Bool)

(assert (=> b!1295536 m!1187589))

(declare-fun m!1187591 () Bool)

(assert (=> b!1295536 m!1187591))

(declare-fun m!1187593 () Bool)

(assert (=> b!1295540 m!1187593))

(assert (=> b!1295540 m!1187593))

(declare-fun m!1187595 () Bool)

(assert (=> b!1295540 m!1187595))

(declare-fun m!1187597 () Bool)

(assert (=> b!1295532 m!1187597))

(assert (=> b!1295532 m!1187597))

(declare-fun m!1187599 () Bool)

(assert (=> b!1295532 m!1187599))

(check-sat (not b!1295530) (not b!1295532) tp_is_empty!34557 (not mapNonEmpty!53396) b_and!47017 (not b!1295540) (not b!1295536) (not b_next!28917) (not start!109464) (not b!1295537) (not b!1295533))
(check-sat b_and!47017 (not b_next!28917))
