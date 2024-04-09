; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108566 () Bool)

(assert start!108566)

(declare-fun b_free!28077 () Bool)

(declare-fun b_next!28077 () Bool)

(assert (=> start!108566 (= b_free!28077 (not b_next!28077))))

(declare-fun tp!99342 () Bool)

(declare-fun b_and!46147 () Bool)

(assert (=> start!108566 (= tp!99342 b_and!46147)))

(declare-fun b!1280957 () Bool)

(declare-fun res!850989 () Bool)

(declare-fun e!731919 () Bool)

(assert (=> b!1280957 (=> (not res!850989) (not e!731919))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50059 0))(
  ( (V!50060 (val!16933 Int)) )
))
(declare-datatypes ((ValueCell!15960 0))(
  ( (ValueCellFull!15960 (v!19531 V!50059)) (EmptyCell!15960) )
))
(declare-datatypes ((array!84461 0))(
  ( (array!84462 (arr!40730 (Array (_ BitVec 32) ValueCell!15960)) (size!41281 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84461)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84463 0))(
  ( (array!84464 (arr!40731 (Array (_ BitVec 32) (_ BitVec 64))) (size!41282 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84463)

(assert (=> b!1280957 (= res!850989 (and (= (size!41281 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41282 _keys!1741) (size!41281 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280958 () Bool)

(declare-fun res!850985 () Bool)

(assert (=> b!1280958 (=> (not res!850985) (not e!731919))))

(declare-fun minValue!1387 () V!50059)

(declare-fun zeroValue!1387 () V!50059)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21826 0))(
  ( (tuple2!21827 (_1!10923 (_ BitVec 64)) (_2!10923 V!50059)) )
))
(declare-datatypes ((List!29036 0))(
  ( (Nil!29033) (Cons!29032 (h!30241 tuple2!21826) (t!42583 List!29036)) )
))
(declare-datatypes ((ListLongMap!19495 0))(
  ( (ListLongMap!19496 (toList!9763 List!29036)) )
))
(declare-fun contains!7816 (ListLongMap!19495 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4783 (array!84463 array!84461 (_ BitVec 32) (_ BitVec 32) V!50059 V!50059 (_ BitVec 32) Int) ListLongMap!19495)

(assert (=> b!1280958 (= res!850985 (contains!7816 (getCurrentListMap!4783 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280959 () Bool)

(declare-fun res!850987 () Bool)

(assert (=> b!1280959 (=> (not res!850987) (not e!731919))))

(assert (=> b!1280959 (= res!850987 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41282 _keys!1741))))))

(declare-fun b!1280960 () Bool)

(declare-fun res!850986 () Bool)

(assert (=> b!1280960 (=> (not res!850986) (not e!731919))))

(assert (=> b!1280960 (= res!850986 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41282 _keys!1741)) (not (= (select (arr!40731 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1280962 () Bool)

(declare-fun e!731917 () Bool)

(declare-fun tp_is_empty!33717 () Bool)

(assert (=> b!1280962 (= e!731917 tp_is_empty!33717)))

(declare-fun b!1280963 () Bool)

(assert (=> b!1280963 (= e!731919 (not true))))

(assert (=> b!1280963 (contains!7816 (getCurrentListMap!4783 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42367 0))(
  ( (Unit!42368) )
))
(declare-fun lt!576124 () Unit!42367)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!16 (array!84463 array!84461 (_ BitVec 32) (_ BitVec 32) V!50059 V!50059 (_ BitVec 64) (_ BitVec 32) Int) Unit!42367)

(assert (=> b!1280963 (= lt!576124 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!16 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280964 () Bool)

(declare-fun res!850988 () Bool)

(assert (=> b!1280964 (=> (not res!850988) (not e!731919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84463 (_ BitVec 32)) Bool)

(assert (=> b!1280964 (= res!850988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280965 () Bool)

(declare-fun e!731916 () Bool)

(assert (=> b!1280965 (= e!731916 tp_is_empty!33717)))

(declare-fun mapNonEmpty!52127 () Bool)

(declare-fun mapRes!52127 () Bool)

(declare-fun tp!99341 () Bool)

(assert (=> mapNonEmpty!52127 (= mapRes!52127 (and tp!99341 e!731916))))

(declare-fun mapKey!52127 () (_ BitVec 32))

(declare-fun mapValue!52127 () ValueCell!15960)

(declare-fun mapRest!52127 () (Array (_ BitVec 32) ValueCell!15960))

(assert (=> mapNonEmpty!52127 (= (arr!40730 _values!1445) (store mapRest!52127 mapKey!52127 mapValue!52127))))

(declare-fun res!850990 () Bool)

(assert (=> start!108566 (=> (not res!850990) (not e!731919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108566 (= res!850990 (validMask!0 mask!2175))))

(assert (=> start!108566 e!731919))

(assert (=> start!108566 tp_is_empty!33717))

(assert (=> start!108566 true))

(declare-fun e!731920 () Bool)

(declare-fun array_inv!30895 (array!84461) Bool)

(assert (=> start!108566 (and (array_inv!30895 _values!1445) e!731920)))

(declare-fun array_inv!30896 (array!84463) Bool)

(assert (=> start!108566 (array_inv!30896 _keys!1741)))

(assert (=> start!108566 tp!99342))

(declare-fun b!1280961 () Bool)

(assert (=> b!1280961 (= e!731920 (and e!731917 mapRes!52127))))

(declare-fun condMapEmpty!52127 () Bool)

(declare-fun mapDefault!52127 () ValueCell!15960)

(assert (=> b!1280961 (= condMapEmpty!52127 (= (arr!40730 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15960)) mapDefault!52127)))))

(declare-fun b!1280966 () Bool)

(declare-fun res!850991 () Bool)

(assert (=> b!1280966 (=> (not res!850991) (not e!731919))))

(declare-datatypes ((List!29037 0))(
  ( (Nil!29034) (Cons!29033 (h!30242 (_ BitVec 64)) (t!42584 List!29037)) )
))
(declare-fun arrayNoDuplicates!0 (array!84463 (_ BitVec 32) List!29037) Bool)

(assert (=> b!1280966 (= res!850991 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29034))))

(declare-fun mapIsEmpty!52127 () Bool)

(assert (=> mapIsEmpty!52127 mapRes!52127))

(assert (= (and start!108566 res!850990) b!1280957))

(assert (= (and b!1280957 res!850989) b!1280964))

(assert (= (and b!1280964 res!850988) b!1280966))

(assert (= (and b!1280966 res!850991) b!1280959))

(assert (= (and b!1280959 res!850987) b!1280958))

(assert (= (and b!1280958 res!850985) b!1280960))

(assert (= (and b!1280960 res!850986) b!1280963))

(assert (= (and b!1280961 condMapEmpty!52127) mapIsEmpty!52127))

(assert (= (and b!1280961 (not condMapEmpty!52127)) mapNonEmpty!52127))

(get-info :version)

(assert (= (and mapNonEmpty!52127 ((_ is ValueCellFull!15960) mapValue!52127)) b!1280965))

(assert (= (and b!1280961 ((_ is ValueCellFull!15960) mapDefault!52127)) b!1280962))

(assert (= start!108566 b!1280961))

(declare-fun m!1175495 () Bool)

(assert (=> b!1280958 m!1175495))

(assert (=> b!1280958 m!1175495))

(declare-fun m!1175497 () Bool)

(assert (=> b!1280958 m!1175497))

(declare-fun m!1175499 () Bool)

(assert (=> mapNonEmpty!52127 m!1175499))

(declare-fun m!1175501 () Bool)

(assert (=> b!1280966 m!1175501))

(declare-fun m!1175503 () Bool)

(assert (=> b!1280963 m!1175503))

(assert (=> b!1280963 m!1175503))

(declare-fun m!1175505 () Bool)

(assert (=> b!1280963 m!1175505))

(declare-fun m!1175507 () Bool)

(assert (=> b!1280963 m!1175507))

(declare-fun m!1175509 () Bool)

(assert (=> b!1280964 m!1175509))

(declare-fun m!1175511 () Bool)

(assert (=> start!108566 m!1175511))

(declare-fun m!1175513 () Bool)

(assert (=> start!108566 m!1175513))

(declare-fun m!1175515 () Bool)

(assert (=> start!108566 m!1175515))

(declare-fun m!1175517 () Bool)

(assert (=> b!1280960 m!1175517))

(check-sat b_and!46147 (not b_next!28077) (not mapNonEmpty!52127) (not b!1280958) (not b!1280963) (not b!1280964) (not start!108566) tp_is_empty!33717 (not b!1280966))
(check-sat b_and!46147 (not b_next!28077))
