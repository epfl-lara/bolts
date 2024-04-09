; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108466 () Bool)

(assert start!108466)

(declare-fun b_free!27977 () Bool)

(declare-fun b_next!27977 () Bool)

(assert (=> start!108466 (= b_free!27977 (not b_next!27977))))

(declare-fun tp!99042 () Bool)

(declare-fun b_and!46047 () Bool)

(assert (=> start!108466 (= tp!99042 b_and!46047)))

(declare-fun b!1279639 () Bool)

(declare-fun e!731166 () Bool)

(declare-fun tp_is_empty!33617 () Bool)

(assert (=> b!1279639 (= e!731166 tp_is_empty!33617)))

(declare-fun b!1279640 () Bool)

(declare-fun e!731170 () Bool)

(assert (=> b!1279640 (= e!731170 false)))

(declare-datatypes ((V!49925 0))(
  ( (V!49926 (val!16883 Int)) )
))
(declare-fun minValue!1387 () V!49925)

(declare-fun zeroValue!1387 () V!49925)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15910 0))(
  ( (ValueCellFull!15910 (v!19481 V!49925)) (EmptyCell!15910) )
))
(declare-datatypes ((array!84269 0))(
  ( (array!84270 (arr!40634 (Array (_ BitVec 32) ValueCell!15910)) (size!41185 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84269)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!575974 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84271 0))(
  ( (array!84272 (arr!40635 (Array (_ BitVec 32) (_ BitVec 64))) (size!41186 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84271)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21752 0))(
  ( (tuple2!21753 (_1!10886 (_ BitVec 64)) (_2!10886 V!49925)) )
))
(declare-datatypes ((List!28964 0))(
  ( (Nil!28961) (Cons!28960 (h!30169 tuple2!21752) (t!42511 List!28964)) )
))
(declare-datatypes ((ListLongMap!19421 0))(
  ( (ListLongMap!19422 (toList!9726 List!28964)) )
))
(declare-fun contains!7779 (ListLongMap!19421 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4746 (array!84271 array!84269 (_ BitVec 32) (_ BitVec 32) V!49925 V!49925 (_ BitVec 32) Int) ListLongMap!19421)

(assert (=> b!1279640 (= lt!575974 (contains!7779 (getCurrentListMap!4746 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279641 () Bool)

(declare-fun res!850119 () Bool)

(assert (=> b!1279641 (=> (not res!850119) (not e!731170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84271 (_ BitVec 32)) Bool)

(assert (=> b!1279641 (= res!850119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279642 () Bool)

(declare-fun res!850117 () Bool)

(assert (=> b!1279642 (=> (not res!850117) (not e!731170))))

(assert (=> b!1279642 (= res!850117 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41186 _keys!1741))))))

(declare-fun mapNonEmpty!51977 () Bool)

(declare-fun mapRes!51977 () Bool)

(declare-fun tp!99041 () Bool)

(assert (=> mapNonEmpty!51977 (= mapRes!51977 (and tp!99041 e!731166))))

(declare-fun mapRest!51977 () (Array (_ BitVec 32) ValueCell!15910))

(declare-fun mapKey!51977 () (_ BitVec 32))

(declare-fun mapValue!51977 () ValueCell!15910)

(assert (=> mapNonEmpty!51977 (= (arr!40634 _values!1445) (store mapRest!51977 mapKey!51977 mapValue!51977))))

(declare-fun res!850121 () Bool)

(assert (=> start!108466 (=> (not res!850121) (not e!731170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108466 (= res!850121 (validMask!0 mask!2175))))

(assert (=> start!108466 e!731170))

(assert (=> start!108466 tp_is_empty!33617))

(assert (=> start!108466 true))

(declare-fun e!731169 () Bool)

(declare-fun array_inv!30827 (array!84269) Bool)

(assert (=> start!108466 (and (array_inv!30827 _values!1445) e!731169)))

(declare-fun array_inv!30828 (array!84271) Bool)

(assert (=> start!108466 (array_inv!30828 _keys!1741)))

(assert (=> start!108466 tp!99042))

(declare-fun b!1279643 () Bool)

(declare-fun e!731168 () Bool)

(assert (=> b!1279643 (= e!731168 tp_is_empty!33617)))

(declare-fun b!1279644 () Bool)

(declare-fun res!850120 () Bool)

(assert (=> b!1279644 (=> (not res!850120) (not e!731170))))

(assert (=> b!1279644 (= res!850120 (and (= (size!41185 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41186 _keys!1741) (size!41185 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279645 () Bool)

(declare-fun res!850118 () Bool)

(assert (=> b!1279645 (=> (not res!850118) (not e!731170))))

(declare-datatypes ((List!28965 0))(
  ( (Nil!28962) (Cons!28961 (h!30170 (_ BitVec 64)) (t!42512 List!28965)) )
))
(declare-fun arrayNoDuplicates!0 (array!84271 (_ BitVec 32) List!28965) Bool)

(assert (=> b!1279645 (= res!850118 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28962))))

(declare-fun mapIsEmpty!51977 () Bool)

(assert (=> mapIsEmpty!51977 mapRes!51977))

(declare-fun b!1279646 () Bool)

(assert (=> b!1279646 (= e!731169 (and e!731168 mapRes!51977))))

(declare-fun condMapEmpty!51977 () Bool)

(declare-fun mapDefault!51977 () ValueCell!15910)

