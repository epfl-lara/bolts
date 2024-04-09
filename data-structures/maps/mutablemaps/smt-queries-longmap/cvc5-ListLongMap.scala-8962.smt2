; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108534 () Bool)

(assert start!108534)

(declare-fun b_free!28045 () Bool)

(declare-fun b_next!28045 () Bool)

(assert (=> start!108534 (= b_free!28045 (not b_next!28045))))

(declare-fun tp!99245 () Bool)

(declare-fun b_and!46115 () Bool)

(assert (=> start!108534 (= tp!99245 b_and!46115)))

(declare-fun b!1280477 () Bool)

(declare-fun res!850652 () Bool)

(declare-fun e!731678 () Bool)

(assert (=> b!1280477 (=> (not res!850652) (not e!731678))))

(declare-datatypes ((array!84399 0))(
  ( (array!84400 (arr!40699 (Array (_ BitVec 32) (_ BitVec 64))) (size!41250 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84399)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84399 (_ BitVec 32)) Bool)

(assert (=> b!1280477 (= res!850652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280478 () Bool)

(declare-fun e!731679 () Bool)

(declare-fun tp_is_empty!33685 () Bool)

(assert (=> b!1280478 (= e!731679 tp_is_empty!33685)))

(declare-fun b!1280479 () Bool)

(assert (=> b!1280479 (= e!731678 (not true))))

(declare-datatypes ((V!50017 0))(
  ( (V!50018 (val!16917 Int)) )
))
(declare-fun minValue!1387 () V!50017)

(declare-fun zeroValue!1387 () V!50017)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15944 0))(
  ( (ValueCellFull!15944 (v!19515 V!50017)) (EmptyCell!15944) )
))
(declare-datatypes ((array!84401 0))(
  ( (array!84402 (arr!40700 (Array (_ BitVec 32) ValueCell!15944)) (size!41251 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84401)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21800 0))(
  ( (tuple2!21801 (_1!10910 (_ BitVec 64)) (_2!10910 V!50017)) )
))
(declare-datatypes ((List!29010 0))(
  ( (Nil!29007) (Cons!29006 (h!30215 tuple2!21800) (t!42557 List!29010)) )
))
(declare-datatypes ((ListLongMap!19469 0))(
  ( (ListLongMap!19470 (toList!9750 List!29010)) )
))
(declare-fun contains!7803 (ListLongMap!19469 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4770 (array!84399 array!84401 (_ BitVec 32) (_ BitVec 32) V!50017 V!50017 (_ BitVec 32) Int) ListLongMap!19469)

(assert (=> b!1280479 (contains!7803 (getCurrentListMap!4770 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42343 0))(
  ( (Unit!42344) )
))
(declare-fun lt!576076 () Unit!42343)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!4 (array!84399 array!84401 (_ BitVec 32) (_ BitVec 32) V!50017 V!50017 (_ BitVec 64) (_ BitVec 32) Int) Unit!42343)

(assert (=> b!1280479 (= lt!576076 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!4 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280480 () Bool)

(declare-fun res!850654 () Bool)

(assert (=> b!1280480 (=> (not res!850654) (not e!731678))))

(declare-datatypes ((List!29011 0))(
  ( (Nil!29008) (Cons!29007 (h!30216 (_ BitVec 64)) (t!42558 List!29011)) )
))
(declare-fun arrayNoDuplicates!0 (array!84399 (_ BitVec 32) List!29011) Bool)

(assert (=> b!1280480 (= res!850654 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29008))))

(declare-fun b!1280481 () Bool)

(declare-fun res!850655 () Bool)

(assert (=> b!1280481 (=> (not res!850655) (not e!731678))))

(assert (=> b!1280481 (= res!850655 (contains!7803 (getCurrentListMap!4770 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!52079 () Bool)

(declare-fun mapRes!52079 () Bool)

(assert (=> mapIsEmpty!52079 mapRes!52079))

(declare-fun b!1280482 () Bool)

(declare-fun res!850650 () Bool)

(assert (=> b!1280482 (=> (not res!850650) (not e!731678))))

(assert (=> b!1280482 (= res!850650 (and (= (size!41251 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41250 _keys!1741) (size!41251 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280483 () Bool)

(declare-fun res!850651 () Bool)

(assert (=> b!1280483 (=> (not res!850651) (not e!731678))))

(assert (=> b!1280483 (= res!850651 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41250 _keys!1741))))))

(declare-fun b!1280484 () Bool)

(declare-fun e!731680 () Bool)

(assert (=> b!1280484 (= e!731680 tp_is_empty!33685)))

(declare-fun mapNonEmpty!52079 () Bool)

(declare-fun tp!99246 () Bool)

(assert (=> mapNonEmpty!52079 (= mapRes!52079 (and tp!99246 e!731680))))

(declare-fun mapRest!52079 () (Array (_ BitVec 32) ValueCell!15944))

(declare-fun mapValue!52079 () ValueCell!15944)

(declare-fun mapKey!52079 () (_ BitVec 32))

(assert (=> mapNonEmpty!52079 (= (arr!40700 _values!1445) (store mapRest!52079 mapKey!52079 mapValue!52079))))

(declare-fun res!850649 () Bool)

(assert (=> start!108534 (=> (not res!850649) (not e!731678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108534 (= res!850649 (validMask!0 mask!2175))))

(assert (=> start!108534 e!731678))

(assert (=> start!108534 tp_is_empty!33685))

(assert (=> start!108534 true))

(declare-fun e!731676 () Bool)

(declare-fun array_inv!30875 (array!84401) Bool)

(assert (=> start!108534 (and (array_inv!30875 _values!1445) e!731676)))

(declare-fun array_inv!30876 (array!84399) Bool)

(assert (=> start!108534 (array_inv!30876 _keys!1741)))

(assert (=> start!108534 tp!99245))

(declare-fun b!1280485 () Bool)

(declare-fun res!850653 () Bool)

(assert (=> b!1280485 (=> (not res!850653) (not e!731678))))

(assert (=> b!1280485 (= res!850653 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41250 _keys!1741)) (not (= (select (arr!40699 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1280486 () Bool)

(assert (=> b!1280486 (= e!731676 (and e!731679 mapRes!52079))))

(declare-fun condMapEmpty!52079 () Bool)

(declare-fun mapDefault!52079 () ValueCell!15944)

