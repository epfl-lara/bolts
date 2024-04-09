; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108452 () Bool)

(assert start!108452)

(declare-fun b_free!27963 () Bool)

(declare-fun b_next!27963 () Bool)

(assert (=> start!108452 (= b_free!27963 (not b_next!27963))))

(declare-fun tp!98999 () Bool)

(declare-fun b_and!46033 () Bool)

(assert (=> start!108452 (= tp!98999 b_and!46033)))

(declare-fun mapNonEmpty!51956 () Bool)

(declare-fun mapRes!51956 () Bool)

(declare-fun tp!99000 () Bool)

(declare-fun e!731065 () Bool)

(assert (=> mapNonEmpty!51956 (= mapRes!51956 (and tp!99000 e!731065))))

(declare-fun mapKey!51956 () (_ BitVec 32))

(declare-datatypes ((V!49907 0))(
  ( (V!49908 (val!16876 Int)) )
))
(declare-datatypes ((ValueCell!15903 0))(
  ( (ValueCellFull!15903 (v!19474 V!49907)) (EmptyCell!15903) )
))
(declare-fun mapRest!51956 () (Array (_ BitVec 32) ValueCell!15903))

(declare-datatypes ((array!84241 0))(
  ( (array!84242 (arr!40620 (Array (_ BitVec 32) ValueCell!15903)) (size!41171 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84241)

(declare-fun mapValue!51956 () ValueCell!15903)

(assert (=> mapNonEmpty!51956 (= (arr!40620 _values!1445) (store mapRest!51956 mapKey!51956 mapValue!51956))))

(declare-fun b!1279462 () Bool)

(declare-fun res!850004 () Bool)

(declare-fun e!731064 () Bool)

(assert (=> b!1279462 (=> (not res!850004) (not e!731064))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84243 0))(
  ( (array!84244 (arr!40621 (Array (_ BitVec 32) (_ BitVec 64))) (size!41172 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84243)

(assert (=> b!1279462 (= res!850004 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41172 _keys!1741))))))

(declare-fun b!1279463 () Bool)

(declare-fun res!850005 () Bool)

(assert (=> b!1279463 (=> (not res!850005) (not e!731064))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84243 (_ BitVec 32)) Bool)

(assert (=> b!1279463 (= res!850005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!850003 () Bool)

(assert (=> start!108452 (=> (not res!850003) (not e!731064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108452 (= res!850003 (validMask!0 mask!2175))))

(assert (=> start!108452 e!731064))

(declare-fun tp_is_empty!33603 () Bool)

(assert (=> start!108452 tp_is_empty!33603))

(assert (=> start!108452 true))

(declare-fun e!731061 () Bool)

(declare-fun array_inv!30815 (array!84241) Bool)

(assert (=> start!108452 (and (array_inv!30815 _values!1445) e!731061)))

(declare-fun array_inv!30816 (array!84243) Bool)

(assert (=> start!108452 (array_inv!30816 _keys!1741)))

(assert (=> start!108452 tp!98999))

(declare-fun b!1279464 () Bool)

(declare-fun res!850007 () Bool)

(assert (=> b!1279464 (=> (not res!850007) (not e!731064))))

(declare-datatypes ((List!28952 0))(
  ( (Nil!28949) (Cons!28948 (h!30157 (_ BitVec 64)) (t!42499 List!28952)) )
))
(declare-fun arrayNoDuplicates!0 (array!84243 (_ BitVec 32) List!28952) Bool)

(assert (=> b!1279464 (= res!850007 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28949))))

(declare-fun b!1279465 () Bool)

(assert (=> b!1279465 (= e!731065 tp_is_empty!33603)))

(declare-fun b!1279466 () Bool)

(declare-fun e!731063 () Bool)

(assert (=> b!1279466 (= e!731063 tp_is_empty!33603)))

(declare-fun b!1279467 () Bool)

(assert (=> b!1279467 (= e!731064 false)))

(declare-fun minValue!1387 () V!49907)

(declare-fun zeroValue!1387 () V!49907)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!575962 () Bool)

(declare-datatypes ((tuple2!21742 0))(
  ( (tuple2!21743 (_1!10881 (_ BitVec 64)) (_2!10881 V!49907)) )
))
(declare-datatypes ((List!28953 0))(
  ( (Nil!28950) (Cons!28949 (h!30158 tuple2!21742) (t!42500 List!28953)) )
))
(declare-datatypes ((ListLongMap!19411 0))(
  ( (ListLongMap!19412 (toList!9721 List!28953)) )
))
(declare-fun contains!7774 (ListLongMap!19411 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4741 (array!84243 array!84241 (_ BitVec 32) (_ BitVec 32) V!49907 V!49907 (_ BitVec 32) Int) ListLongMap!19411)

(assert (=> b!1279467 (= lt!575962 (contains!7774 (getCurrentListMap!4741 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!51956 () Bool)

(assert (=> mapIsEmpty!51956 mapRes!51956))

(declare-fun b!1279468 () Bool)

(assert (=> b!1279468 (= e!731061 (and e!731063 mapRes!51956))))

(declare-fun condMapEmpty!51956 () Bool)

(declare-fun mapDefault!51956 () ValueCell!15903)

(assert (=> b!1279468 (= condMapEmpty!51956 (= (arr!40620 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15903)) mapDefault!51956)))))

(declare-fun b!1279469 () Bool)

(declare-fun res!850006 () Bool)

(assert (=> b!1279469 (=> (not res!850006) (not e!731064))))

(assert (=> b!1279469 (= res!850006 (and (= (size!41171 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41172 _keys!1741) (size!41171 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108452 res!850003) b!1279469))

(assert (= (and b!1279469 res!850006) b!1279463))

(assert (= (and b!1279463 res!850005) b!1279464))

(assert (= (and b!1279464 res!850007) b!1279462))

(assert (= (and b!1279462 res!850004) b!1279467))

(assert (= (and b!1279468 condMapEmpty!51956) mapIsEmpty!51956))

(assert (= (and b!1279468 (not condMapEmpty!51956)) mapNonEmpty!51956))

(get-info :version)

(assert (= (and mapNonEmpty!51956 ((_ is ValueCellFull!15903) mapValue!51956)) b!1279465))

(assert (= (and b!1279468 ((_ is ValueCellFull!15903) mapDefault!51956)) b!1279466))

(assert (= start!108452 b!1279468))

(declare-fun m!1174431 () Bool)

(assert (=> b!1279463 m!1174431))

(declare-fun m!1174433 () Bool)

(assert (=> b!1279467 m!1174433))

(assert (=> b!1279467 m!1174433))

(declare-fun m!1174435 () Bool)

(assert (=> b!1279467 m!1174435))

(declare-fun m!1174437 () Bool)

(assert (=> b!1279464 m!1174437))

(declare-fun m!1174439 () Bool)

(assert (=> start!108452 m!1174439))

(declare-fun m!1174441 () Bool)

(assert (=> start!108452 m!1174441))

(declare-fun m!1174443 () Bool)

(assert (=> start!108452 m!1174443))

(declare-fun m!1174445 () Bool)

(assert (=> mapNonEmpty!51956 m!1174445))

(check-sat (not mapNonEmpty!51956) b_and!46033 (not b_next!27963) (not start!108452) (not b!1279463) tp_is_empty!33603 (not b!1279467) (not b!1279464))
(check-sat b_and!46033 (not b_next!27963))
