; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108560 () Bool)

(assert start!108560)

(declare-fun b_free!28071 () Bool)

(declare-fun b_next!28071 () Bool)

(assert (=> start!108560 (= b_free!28071 (not b_next!28071))))

(declare-fun tp!99323 () Bool)

(declare-fun b_and!46141 () Bool)

(assert (=> start!108560 (= tp!99323 b_and!46141)))

(declare-fun b!1280867 () Bool)

(declare-fun e!731875 () Bool)

(declare-fun e!731872 () Bool)

(declare-fun mapRes!52118 () Bool)

(assert (=> b!1280867 (= e!731875 (and e!731872 mapRes!52118))))

(declare-fun condMapEmpty!52118 () Bool)

(declare-datatypes ((V!50051 0))(
  ( (V!50052 (val!16930 Int)) )
))
(declare-datatypes ((ValueCell!15957 0))(
  ( (ValueCellFull!15957 (v!19528 V!50051)) (EmptyCell!15957) )
))
(declare-datatypes ((array!84451 0))(
  ( (array!84452 (arr!40725 (Array (_ BitVec 32) ValueCell!15957)) (size!41276 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84451)

(declare-fun mapDefault!52118 () ValueCell!15957)

(assert (=> b!1280867 (= condMapEmpty!52118 (= (arr!40725 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15957)) mapDefault!52118)))))

(declare-fun b!1280868 () Bool)

(declare-fun res!850923 () Bool)

(declare-fun e!731873 () Bool)

(assert (=> b!1280868 (=> (not res!850923) (not e!731873))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84453 0))(
  ( (array!84454 (arr!40726 (Array (_ BitVec 32) (_ BitVec 64))) (size!41277 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84453)

(assert (=> b!1280868 (= res!850923 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41277 _keys!1741))))))

(declare-fun b!1280869 () Bool)

(declare-fun res!850922 () Bool)

(assert (=> b!1280869 (=> (not res!850922) (not e!731873))))

(declare-datatypes ((List!29032 0))(
  ( (Nil!29029) (Cons!29028 (h!30237 (_ BitVec 64)) (t!42579 List!29032)) )
))
(declare-fun arrayNoDuplicates!0 (array!84453 (_ BitVec 32) List!29032) Bool)

(assert (=> b!1280869 (= res!850922 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29029))))

(declare-fun b!1280870 () Bool)

(declare-fun res!850925 () Bool)

(assert (=> b!1280870 (=> (not res!850925) (not e!731873))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1280870 (= res!850925 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41277 _keys!1741)) (not (= (select (arr!40726 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1280871 () Bool)

(declare-fun res!850924 () Bool)

(assert (=> b!1280871 (=> (not res!850924) (not e!731873))))

(declare-fun minValue!1387 () V!50051)

(declare-fun zeroValue!1387 () V!50051)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21822 0))(
  ( (tuple2!21823 (_1!10921 (_ BitVec 64)) (_2!10921 V!50051)) )
))
(declare-datatypes ((List!29033 0))(
  ( (Nil!29030) (Cons!29029 (h!30238 tuple2!21822) (t!42580 List!29033)) )
))
(declare-datatypes ((ListLongMap!19491 0))(
  ( (ListLongMap!19492 (toList!9761 List!29033)) )
))
(declare-fun contains!7814 (ListLongMap!19491 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4781 (array!84453 array!84451 (_ BitVec 32) (_ BitVec 32) V!50051 V!50051 (_ BitVec 32) Int) ListLongMap!19491)

(assert (=> b!1280871 (= res!850924 (contains!7814 (getCurrentListMap!4781 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280872 () Bool)

(declare-fun res!850927 () Bool)

(assert (=> b!1280872 (=> (not res!850927) (not e!731873))))

(assert (=> b!1280872 (= res!850927 (and (= (size!41276 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41277 _keys!1741) (size!41276 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52118 () Bool)

(declare-fun tp!99324 () Bool)

(declare-fun e!731871 () Bool)

(assert (=> mapNonEmpty!52118 (= mapRes!52118 (and tp!99324 e!731871))))

(declare-fun mapValue!52118 () ValueCell!15957)

(declare-fun mapRest!52118 () (Array (_ BitVec 32) ValueCell!15957))

(declare-fun mapKey!52118 () (_ BitVec 32))

(assert (=> mapNonEmpty!52118 (= (arr!40725 _values!1445) (store mapRest!52118 mapKey!52118 mapValue!52118))))

(declare-fun b!1280873 () Bool)

(declare-fun tp_is_empty!33711 () Bool)

(assert (=> b!1280873 (= e!731871 tp_is_empty!33711)))

(declare-fun b!1280874 () Bool)

(assert (=> b!1280874 (= e!731872 tp_is_empty!33711)))

(declare-fun b!1280875 () Bool)

(assert (=> b!1280875 (= e!731873 (not true))))

(assert (=> b!1280875 (contains!7814 (getCurrentListMap!4781 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42363 0))(
  ( (Unit!42364) )
))
(declare-fun lt!576115 () Unit!42363)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!14 (array!84453 array!84451 (_ BitVec 32) (_ BitVec 32) V!50051 V!50051 (_ BitVec 64) (_ BitVec 32) Int) Unit!42363)

(assert (=> b!1280875 (= lt!576115 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!14 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52118 () Bool)

(assert (=> mapIsEmpty!52118 mapRes!52118))

(declare-fun b!1280876 () Bool)

(declare-fun res!850926 () Bool)

(assert (=> b!1280876 (=> (not res!850926) (not e!731873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84453 (_ BitVec 32)) Bool)

(assert (=> b!1280876 (= res!850926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!850928 () Bool)

(assert (=> start!108560 (=> (not res!850928) (not e!731873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108560 (= res!850928 (validMask!0 mask!2175))))

(assert (=> start!108560 e!731873))

(assert (=> start!108560 tp_is_empty!33711))

(assert (=> start!108560 true))

(declare-fun array_inv!30891 (array!84451) Bool)

(assert (=> start!108560 (and (array_inv!30891 _values!1445) e!731875)))

(declare-fun array_inv!30892 (array!84453) Bool)

(assert (=> start!108560 (array_inv!30892 _keys!1741)))

(assert (=> start!108560 tp!99323))

(assert (= (and start!108560 res!850928) b!1280872))

(assert (= (and b!1280872 res!850927) b!1280876))

(assert (= (and b!1280876 res!850926) b!1280869))

(assert (= (and b!1280869 res!850922) b!1280868))

(assert (= (and b!1280868 res!850923) b!1280871))

(assert (= (and b!1280871 res!850924) b!1280870))

(assert (= (and b!1280870 res!850925) b!1280875))

(assert (= (and b!1280867 condMapEmpty!52118) mapIsEmpty!52118))

(assert (= (and b!1280867 (not condMapEmpty!52118)) mapNonEmpty!52118))

(get-info :version)

(assert (= (and mapNonEmpty!52118 ((_ is ValueCellFull!15957) mapValue!52118)) b!1280873))

(assert (= (and b!1280867 ((_ is ValueCellFull!15957) mapDefault!52118)) b!1280874))

(assert (= start!108560 b!1280867))

(declare-fun m!1175423 () Bool)

(assert (=> b!1280870 m!1175423))

(declare-fun m!1175425 () Bool)

(assert (=> b!1280871 m!1175425))

(assert (=> b!1280871 m!1175425))

(declare-fun m!1175427 () Bool)

(assert (=> b!1280871 m!1175427))

(declare-fun m!1175429 () Bool)

(assert (=> b!1280869 m!1175429))

(declare-fun m!1175431 () Bool)

(assert (=> start!108560 m!1175431))

(declare-fun m!1175433 () Bool)

(assert (=> start!108560 m!1175433))

(declare-fun m!1175435 () Bool)

(assert (=> start!108560 m!1175435))

(declare-fun m!1175437 () Bool)

(assert (=> mapNonEmpty!52118 m!1175437))

(declare-fun m!1175439 () Bool)

(assert (=> b!1280875 m!1175439))

(assert (=> b!1280875 m!1175439))

(declare-fun m!1175441 () Bool)

(assert (=> b!1280875 m!1175441))

(declare-fun m!1175443 () Bool)

(assert (=> b!1280875 m!1175443))

(declare-fun m!1175445 () Bool)

(assert (=> b!1280876 m!1175445))

(check-sat (not mapNonEmpty!52118) (not b!1280875) (not b_next!28071) (not b!1280869) (not b!1280871) tp_is_empty!33711 (not b!1280876) b_and!46141 (not start!108560))
(check-sat b_and!46141 (not b_next!28071))
