; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108752 () Bool)

(assert start!108752)

(declare-fun b_free!28229 () Bool)

(declare-fun b_next!28229 () Bool)

(assert (=> start!108752 (= b_free!28229 (not b_next!28229))))

(declare-fun tp!99804 () Bool)

(declare-fun b_and!46305 () Bool)

(assert (=> start!108752 (= tp!99804 b_and!46305)))

(declare-fun b!1283462 () Bool)

(declare-fun res!852666 () Bool)

(declare-fun e!733253 () Bool)

(assert (=> b!1283462 (=> (not res!852666) (not e!733253))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283462 (= res!852666 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283463 () Bool)

(declare-fun e!733251 () Bool)

(declare-fun tp_is_empty!33869 () Bool)

(assert (=> b!1283463 (= e!733251 tp_is_empty!33869)))

(declare-fun b!1283464 () Bool)

(declare-fun res!852661 () Bool)

(assert (=> b!1283464 (=> (not res!852661) (not e!733253))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84757 0))(
  ( (array!84758 (arr!40876 (Array (_ BitVec 32) (_ BitVec 64))) (size!41427 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84757)

(assert (=> b!1283464 (= res!852661 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41427 _keys!1741))))))

(declare-fun b!1283465 () Bool)

(declare-fun res!852664 () Bool)

(assert (=> b!1283465 (=> (not res!852664) (not e!733253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283465 (= res!852664 (validKeyInArray!0 (select (arr!40876 _keys!1741) from!2144)))))

(declare-fun res!852660 () Bool)

(assert (=> start!108752 (=> (not res!852660) (not e!733253))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108752 (= res!852660 (validMask!0 mask!2175))))

(assert (=> start!108752 e!733253))

(assert (=> start!108752 tp_is_empty!33869))

(assert (=> start!108752 true))

(declare-datatypes ((V!50261 0))(
  ( (V!50262 (val!17009 Int)) )
))
(declare-datatypes ((ValueCell!16036 0))(
  ( (ValueCellFull!16036 (v!19609 V!50261)) (EmptyCell!16036) )
))
(declare-datatypes ((array!84759 0))(
  ( (array!84760 (arr!40877 (Array (_ BitVec 32) ValueCell!16036)) (size!41428 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84759)

(declare-fun e!733255 () Bool)

(declare-fun array_inv!30989 (array!84759) Bool)

(assert (=> start!108752 (and (array_inv!30989 _values!1445) e!733255)))

(declare-fun array_inv!30990 (array!84757) Bool)

(assert (=> start!108752 (array_inv!30990 _keys!1741)))

(assert (=> start!108752 tp!99804))

(declare-fun b!1283466 () Bool)

(declare-fun res!852659 () Bool)

(assert (=> b!1283466 (=> (not res!852659) (not e!733253))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1283466 (= res!852659 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41427 _keys!1741))))))

(declare-fun b!1283467 () Bool)

(declare-fun res!852663 () Bool)

(assert (=> b!1283467 (=> (not res!852663) (not e!733253))))

(declare-fun minValue!1387 () V!50261)

(declare-fun zeroValue!1387 () V!50261)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21928 0))(
  ( (tuple2!21929 (_1!10974 (_ BitVec 64)) (_2!10974 V!50261)) )
))
(declare-datatypes ((List!29137 0))(
  ( (Nil!29134) (Cons!29133 (h!30342 tuple2!21928) (t!42688 List!29137)) )
))
(declare-datatypes ((ListLongMap!19597 0))(
  ( (ListLongMap!19598 (toList!9814 List!29137)) )
))
(declare-fun contains!7869 (ListLongMap!19597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4832 (array!84757 array!84759 (_ BitVec 32) (_ BitVec 32) V!50261 V!50261 (_ BitVec 32) Int) ListLongMap!19597)

(assert (=> b!1283467 (= res!852663 (contains!7869 (getCurrentListMap!4832 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283468 () Bool)

(declare-fun res!852662 () Bool)

(assert (=> b!1283468 (=> (not res!852662) (not e!733253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84757 (_ BitVec 32)) Bool)

(assert (=> b!1283468 (= res!852662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283469 () Bool)

(declare-fun res!852665 () Bool)

(assert (=> b!1283469 (=> (not res!852665) (not e!733253))))

(assert (=> b!1283469 (= res!852665 (and (= (size!41428 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41427 _keys!1741) (size!41428 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283470 () Bool)

(assert (=> b!1283470 (= e!733253 (not true))))

(declare-fun lt!576612 () ListLongMap!19597)

(assert (=> b!1283470 (contains!7869 lt!576612 k!1205)))

(declare-datatypes ((Unit!42417 0))(
  ( (Unit!42418) )
))
(declare-fun lt!576611 () Unit!42417)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!10 ((_ BitVec 64) (_ BitVec 64) V!50261 ListLongMap!19597) Unit!42417)

(assert (=> b!1283470 (= lt!576611 (lemmaInListMapAfterAddingDiffThenInBefore!10 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576612))))

(declare-fun +!4261 (ListLongMap!19597 tuple2!21928) ListLongMap!19597)

(declare-fun getCurrentListMapNoExtraKeys!5972 (array!84757 array!84759 (_ BitVec 32) (_ BitVec 32) V!50261 V!50261 (_ BitVec 32) Int) ListLongMap!19597)

(assert (=> b!1283470 (= lt!576612 (+!4261 (getCurrentListMapNoExtraKeys!5972 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21929 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun mapIsEmpty!52361 () Bool)

(declare-fun mapRes!52361 () Bool)

(assert (=> mapIsEmpty!52361 mapRes!52361))

(declare-fun b!1283471 () Bool)

(declare-fun res!852658 () Bool)

(assert (=> b!1283471 (=> (not res!852658) (not e!733253))))

(declare-datatypes ((List!29138 0))(
  ( (Nil!29135) (Cons!29134 (h!30343 (_ BitVec 64)) (t!42689 List!29138)) )
))
(declare-fun arrayNoDuplicates!0 (array!84757 (_ BitVec 32) List!29138) Bool)

(assert (=> b!1283471 (= res!852658 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29135))))

(declare-fun b!1283472 () Bool)

(declare-fun e!733252 () Bool)

(assert (=> b!1283472 (= e!733252 tp_is_empty!33869)))

(declare-fun mapNonEmpty!52361 () Bool)

(declare-fun tp!99803 () Bool)

(assert (=> mapNonEmpty!52361 (= mapRes!52361 (and tp!99803 e!733251))))

(declare-fun mapValue!52361 () ValueCell!16036)

(declare-fun mapRest!52361 () (Array (_ BitVec 32) ValueCell!16036))

(declare-fun mapKey!52361 () (_ BitVec 32))

(assert (=> mapNonEmpty!52361 (= (arr!40877 _values!1445) (store mapRest!52361 mapKey!52361 mapValue!52361))))

(declare-fun b!1283473 () Bool)

(assert (=> b!1283473 (= e!733255 (and e!733252 mapRes!52361))))

(declare-fun condMapEmpty!52361 () Bool)

(declare-fun mapDefault!52361 () ValueCell!16036)

