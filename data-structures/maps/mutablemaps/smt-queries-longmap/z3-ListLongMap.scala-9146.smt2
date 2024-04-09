; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109754 () Bool)

(assert start!109754)

(declare-fun b_free!29151 () Bool)

(declare-fun b_next!29151 () Bool)

(assert (=> start!109754 (= b_free!29151 (not b_next!29151))))

(declare-fun tp!102581 () Bool)

(declare-fun b_and!47263 () Bool)

(assert (=> start!109754 (= tp!102581 b_and!47263)))

(declare-fun b!1299467 () Bool)

(declare-fun res!863623 () Bool)

(declare-fun e!741366 () Bool)

(assert (=> b!1299467 (=> (not res!863623) (not e!741366))))

(declare-datatypes ((array!86555 0))(
  ( (array!86556 (arr!41771 (Array (_ BitVec 32) (_ BitVec 64))) (size!42322 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86555)

(declare-datatypes ((List!29838 0))(
  ( (Nil!29835) (Cons!29834 (h!31043 (_ BitVec 64)) (t!43415 List!29838)) )
))
(declare-fun arrayNoDuplicates!0 (array!86555 (_ BitVec 32) List!29838) Bool)

(assert (=> b!1299467 (= res!863623 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29835))))

(declare-fun b!1299468 () Bool)

(declare-fun res!863630 () Bool)

(assert (=> b!1299468 (=> (not res!863630) (not e!741366))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51491 0))(
  ( (V!51492 (val!17470 Int)) )
))
(declare-datatypes ((ValueCell!16497 0))(
  ( (ValueCellFull!16497 (v!20074 V!51491)) (EmptyCell!16497) )
))
(declare-datatypes ((array!86557 0))(
  ( (array!86558 (arr!41772 (Array (_ BitVec 32) ValueCell!16497)) (size!42323 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86557)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1299468 (= res!863630 (and (= (size!42323 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42322 _keys!1741) (size!42323 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299469 () Bool)

(declare-fun res!863629 () Bool)

(assert (=> b!1299469 (=> (not res!863629) (not e!741366))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1299469 (= res!863629 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42322 _keys!1741))))))

(declare-fun mapIsEmpty!53756 () Bool)

(declare-fun mapRes!53756 () Bool)

(assert (=> mapIsEmpty!53756 mapRes!53756))

(declare-fun mapNonEmpty!53756 () Bool)

(declare-fun tp!102582 () Bool)

(declare-fun e!741362 () Bool)

(assert (=> mapNonEmpty!53756 (= mapRes!53756 (and tp!102582 e!741362))))

(declare-fun mapKey!53756 () (_ BitVec 32))

(declare-fun mapRest!53756 () (Array (_ BitVec 32) ValueCell!16497))

(declare-fun mapValue!53756 () ValueCell!16497)

(assert (=> mapNonEmpty!53756 (= (arr!41772 _values!1445) (store mapRest!53756 mapKey!53756 mapValue!53756))))

(declare-fun b!1299470 () Bool)

(declare-fun tp_is_empty!34791 () Bool)

(assert (=> b!1299470 (= e!741362 tp_is_empty!34791)))

(declare-fun b!1299471 () Bool)

(declare-fun res!863624 () Bool)

(assert (=> b!1299471 (=> (not res!863624) (not e!741366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86555 (_ BitVec 32)) Bool)

(assert (=> b!1299471 (= res!863624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299472 () Bool)

(assert (=> b!1299472 (= e!741366 false)))

(declare-fun minValue!1387 () V!51491)

(declare-fun zeroValue!1387 () V!51491)

(declare-fun lt!581033 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22678 0))(
  ( (tuple2!22679 (_1!11349 (_ BitVec 64)) (_2!11349 V!51491)) )
))
(declare-datatypes ((List!29839 0))(
  ( (Nil!29836) (Cons!29835 (h!31044 tuple2!22678) (t!43416 List!29839)) )
))
(declare-datatypes ((ListLongMap!20347 0))(
  ( (ListLongMap!20348 (toList!10189 List!29839)) )
))
(declare-fun contains!8247 (ListLongMap!20347 (_ BitVec 64)) Bool)

(declare-fun +!4421 (ListLongMap!20347 tuple2!22678) ListLongMap!20347)

(declare-fun getCurrentListMapNoExtraKeys!6134 (array!86555 array!86557 (_ BitVec 32) (_ BitVec 32) V!51491 V!51491 (_ BitVec 32) Int) ListLongMap!20347)

(assert (=> b!1299472 (= lt!581033 (contains!8247 (+!4421 (+!4421 (getCurrentListMapNoExtraKeys!6134 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1299473 () Bool)

(declare-fun e!741364 () Bool)

(assert (=> b!1299473 (= e!741364 tp_is_empty!34791)))

(declare-fun b!1299474 () Bool)

(declare-fun res!863626 () Bool)

(assert (=> b!1299474 (=> (not res!863626) (not e!741366))))

(assert (=> b!1299474 (= res!863626 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42322 _keys!1741))))))

(declare-fun b!1299475 () Bool)

(declare-fun res!863627 () Bool)

(assert (=> b!1299475 (=> (not res!863627) (not e!741366))))

(assert (=> b!1299475 (= res!863627 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299466 () Bool)

(declare-fun res!863631 () Bool)

(assert (=> b!1299466 (=> (not res!863631) (not e!741366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299466 (= res!863631 (validKeyInArray!0 (select (arr!41771 _keys!1741) from!2144)))))

(declare-fun res!863625 () Bool)

(assert (=> start!109754 (=> (not res!863625) (not e!741366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109754 (= res!863625 (validMask!0 mask!2175))))

(assert (=> start!109754 e!741366))

(assert (=> start!109754 tp_is_empty!34791))

(assert (=> start!109754 true))

(declare-fun e!741365 () Bool)

(declare-fun array_inv!31605 (array!86557) Bool)

(assert (=> start!109754 (and (array_inv!31605 _values!1445) e!741365)))

(declare-fun array_inv!31606 (array!86555) Bool)

(assert (=> start!109754 (array_inv!31606 _keys!1741)))

(assert (=> start!109754 tp!102581))

(declare-fun b!1299476 () Bool)

(declare-fun res!863628 () Bool)

(assert (=> b!1299476 (=> (not res!863628) (not e!741366))))

(declare-fun getCurrentListMap!5163 (array!86555 array!86557 (_ BitVec 32) (_ BitVec 32) V!51491 V!51491 (_ BitVec 32) Int) ListLongMap!20347)

(assert (=> b!1299476 (= res!863628 (contains!8247 (getCurrentListMap!5163 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299477 () Bool)

(assert (=> b!1299477 (= e!741365 (and e!741364 mapRes!53756))))

(declare-fun condMapEmpty!53756 () Bool)

(declare-fun mapDefault!53756 () ValueCell!16497)

(assert (=> b!1299477 (= condMapEmpty!53756 (= (arr!41772 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16497)) mapDefault!53756)))))

(assert (= (and start!109754 res!863625) b!1299468))

(assert (= (and b!1299468 res!863630) b!1299471))

(assert (= (and b!1299471 res!863624) b!1299467))

(assert (= (and b!1299467 res!863623) b!1299474))

(assert (= (and b!1299474 res!863626) b!1299476))

(assert (= (and b!1299476 res!863628) b!1299469))

(assert (= (and b!1299469 res!863629) b!1299466))

(assert (= (and b!1299466 res!863631) b!1299475))

(assert (= (and b!1299475 res!863627) b!1299472))

(assert (= (and b!1299477 condMapEmpty!53756) mapIsEmpty!53756))

(assert (= (and b!1299477 (not condMapEmpty!53756)) mapNonEmpty!53756))

(get-info :version)

(assert (= (and mapNonEmpty!53756 ((_ is ValueCellFull!16497) mapValue!53756)) b!1299470))

(assert (= (and b!1299477 ((_ is ValueCellFull!16497) mapDefault!53756)) b!1299473))

(assert (= start!109754 b!1299477))

(declare-fun m!1190655 () Bool)

(assert (=> b!1299476 m!1190655))

(assert (=> b!1299476 m!1190655))

(declare-fun m!1190657 () Bool)

(assert (=> b!1299476 m!1190657))

(declare-fun m!1190659 () Bool)

(assert (=> b!1299466 m!1190659))

(assert (=> b!1299466 m!1190659))

(declare-fun m!1190661 () Bool)

(assert (=> b!1299466 m!1190661))

(declare-fun m!1190663 () Bool)

(assert (=> b!1299471 m!1190663))

(declare-fun m!1190665 () Bool)

(assert (=> b!1299472 m!1190665))

(assert (=> b!1299472 m!1190665))

(declare-fun m!1190667 () Bool)

(assert (=> b!1299472 m!1190667))

(assert (=> b!1299472 m!1190667))

(declare-fun m!1190669 () Bool)

(assert (=> b!1299472 m!1190669))

(assert (=> b!1299472 m!1190669))

(declare-fun m!1190671 () Bool)

(assert (=> b!1299472 m!1190671))

(declare-fun m!1190673 () Bool)

(assert (=> mapNonEmpty!53756 m!1190673))

(declare-fun m!1190675 () Bool)

(assert (=> b!1299467 m!1190675))

(declare-fun m!1190677 () Bool)

(assert (=> start!109754 m!1190677))

(declare-fun m!1190679 () Bool)

(assert (=> start!109754 m!1190679))

(declare-fun m!1190681 () Bool)

(assert (=> start!109754 m!1190681))

(check-sat (not b!1299471) tp_is_empty!34791 (not start!109754) (not b!1299472) (not b!1299476) (not b!1299466) (not b_next!29151) (not b!1299467) b_and!47263 (not mapNonEmpty!53756))
(check-sat b_and!47263 (not b_next!29151))
