; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108712 () Bool)

(assert start!108712)

(declare-fun b_free!28189 () Bool)

(declare-fun b_next!28189 () Bool)

(assert (=> start!108712 (= b_free!28189 (not b_next!28189))))

(declare-fun tp!99684 () Bool)

(declare-fun b_and!46265 () Bool)

(assert (=> start!108712 (= tp!99684 b_and!46265)))

(declare-fun b!1282742 () Bool)

(declare-fun res!852124 () Bool)

(declare-fun e!732955 () Bool)

(assert (=> b!1282742 (=> (not res!852124) (not e!732955))))

(declare-datatypes ((array!84679 0))(
  ( (array!84680 (arr!40837 (Array (_ BitVec 32) (_ BitVec 64))) (size!41388 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84679)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282742 (= res!852124 (validKeyInArray!0 (select (arr!40837 _keys!1741) from!2144)))))

(declare-fun b!1282744 () Bool)

(declare-fun res!852125 () Bool)

(assert (=> b!1282744 (=> (not res!852125) (not e!732955))))

(assert (=> b!1282744 (= res!852125 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41388 _keys!1741))))))

(declare-fun b!1282745 () Bool)

(assert (=> b!1282745 (= e!732955 false)))

(declare-datatypes ((V!50209 0))(
  ( (V!50210 (val!16989 Int)) )
))
(declare-fun minValue!1387 () V!50209)

(declare-fun zeroValue!1387 () V!50209)

(declare-datatypes ((ValueCell!16016 0))(
  ( (ValueCellFull!16016 (v!19589 V!50209)) (EmptyCell!16016) )
))
(declare-datatypes ((array!84681 0))(
  ( (array!84682 (arr!40838 (Array (_ BitVec 32) ValueCell!16016)) (size!41389 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84681)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576507 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21900 0))(
  ( (tuple2!21901 (_1!10960 (_ BitVec 64)) (_2!10960 V!50209)) )
))
(declare-datatypes ((List!29109 0))(
  ( (Nil!29106) (Cons!29105 (h!30314 tuple2!21900) (t!42660 List!29109)) )
))
(declare-datatypes ((ListLongMap!19569 0))(
  ( (ListLongMap!19570 (toList!9800 List!29109)) )
))
(declare-fun contains!7855 (ListLongMap!19569 (_ BitVec 64)) Bool)

(declare-fun +!4248 (ListLongMap!19569 tuple2!21900) ListLongMap!19569)

(declare-fun getCurrentListMapNoExtraKeys!5959 (array!84679 array!84681 (_ BitVec 32) (_ BitVec 32) V!50209 V!50209 (_ BitVec 32) Int) ListLongMap!19569)

(assert (=> b!1282745 (= lt!576507 (contains!7855 (+!4248 (+!4248 (getCurrentListMapNoExtraKeys!5959 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21901 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!21901 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun b!1282746 () Bool)

(declare-fun res!852126 () Bool)

(assert (=> b!1282746 (=> (not res!852126) (not e!732955))))

(assert (=> b!1282746 (= res!852126 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41388 _keys!1741))))))

(declare-fun b!1282747 () Bool)

(declare-fun e!732952 () Bool)

(declare-fun tp_is_empty!33829 () Bool)

(assert (=> b!1282747 (= e!732952 tp_is_empty!33829)))

(declare-fun b!1282748 () Bool)

(declare-fun res!852119 () Bool)

(assert (=> b!1282748 (=> (not res!852119) (not e!732955))))

(declare-fun getCurrentListMap!4820 (array!84679 array!84681 (_ BitVec 32) (_ BitVec 32) V!50209 V!50209 (_ BitVec 32) Int) ListLongMap!19569)

(assert (=> b!1282748 (= res!852119 (contains!7855 (getCurrentListMap!4820 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282749 () Bool)

(declare-fun res!852121 () Bool)

(assert (=> b!1282749 (=> (not res!852121) (not e!732955))))

(declare-datatypes ((List!29110 0))(
  ( (Nil!29107) (Cons!29106 (h!30315 (_ BitVec 64)) (t!42661 List!29110)) )
))
(declare-fun arrayNoDuplicates!0 (array!84679 (_ BitVec 32) List!29110) Bool)

(assert (=> b!1282749 (= res!852121 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29107))))

(declare-fun mapNonEmpty!52301 () Bool)

(declare-fun mapRes!52301 () Bool)

(declare-fun tp!99683 () Bool)

(assert (=> mapNonEmpty!52301 (= mapRes!52301 (and tp!99683 e!732952))))

(declare-fun mapRest!52301 () (Array (_ BitVec 32) ValueCell!16016))

(declare-fun mapValue!52301 () ValueCell!16016)

(declare-fun mapKey!52301 () (_ BitVec 32))

(assert (=> mapNonEmpty!52301 (= (arr!40838 _values!1445) (store mapRest!52301 mapKey!52301 mapValue!52301))))

(declare-fun b!1282750 () Bool)

(declare-fun res!852118 () Bool)

(assert (=> b!1282750 (=> (not res!852118) (not e!732955))))

(assert (=> b!1282750 (= res!852118 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!852123 () Bool)

(assert (=> start!108712 (=> (not res!852123) (not e!732955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108712 (= res!852123 (validMask!0 mask!2175))))

(assert (=> start!108712 e!732955))

(assert (=> start!108712 tp_is_empty!33829))

(assert (=> start!108712 true))

(declare-fun e!732954 () Bool)

(declare-fun array_inv!30959 (array!84681) Bool)

(assert (=> start!108712 (and (array_inv!30959 _values!1445) e!732954)))

(declare-fun array_inv!30960 (array!84679) Bool)

(assert (=> start!108712 (array_inv!30960 _keys!1741)))

(assert (=> start!108712 tp!99684))

(declare-fun b!1282743 () Bool)

(declare-fun e!732953 () Bool)

(assert (=> b!1282743 (= e!732954 (and e!732953 mapRes!52301))))

(declare-fun condMapEmpty!52301 () Bool)

(declare-fun mapDefault!52301 () ValueCell!16016)

