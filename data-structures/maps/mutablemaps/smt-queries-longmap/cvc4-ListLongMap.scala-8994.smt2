; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108764 () Bool)

(assert start!108764)

(declare-fun b_free!28241 () Bool)

(declare-fun b_next!28241 () Bool)

(assert (=> start!108764 (= b_free!28241 (not b_next!28241))))

(declare-fun tp!99840 () Bool)

(declare-fun b_and!46317 () Bool)

(assert (=> start!108764 (= tp!99840 b_and!46317)))

(declare-fun b!1283678 () Bool)

(declare-fun e!733344 () Bool)

(declare-fun tp_is_empty!33881 () Bool)

(assert (=> b!1283678 (= e!733344 tp_is_empty!33881)))

(declare-fun b!1283679 () Bool)

(declare-fun res!852826 () Bool)

(declare-fun e!733341 () Bool)

(assert (=> b!1283679 (=> (not res!852826) (not e!733341))))

(declare-datatypes ((array!84779 0))(
  ( (array!84780 (arr!40887 (Array (_ BitVec 32) (_ BitVec 64))) (size!41438 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84779)

(declare-datatypes ((List!29144 0))(
  ( (Nil!29141) (Cons!29140 (h!30349 (_ BitVec 64)) (t!42695 List!29144)) )
))
(declare-fun arrayNoDuplicates!0 (array!84779 (_ BitVec 32) List!29144) Bool)

(assert (=> b!1283679 (= res!852826 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29141))))

(declare-fun b!1283680 () Bool)

(declare-fun res!852822 () Bool)

(assert (=> b!1283680 (=> (not res!852822) (not e!733341))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50277 0))(
  ( (V!50278 (val!17015 Int)) )
))
(declare-datatypes ((ValueCell!16042 0))(
  ( (ValueCellFull!16042 (v!19615 V!50277)) (EmptyCell!16042) )
))
(declare-datatypes ((array!84781 0))(
  ( (array!84782 (arr!40888 (Array (_ BitVec 32) ValueCell!16042)) (size!41439 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84781)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283680 (= res!852822 (and (= (size!41439 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41438 _keys!1741) (size!41439 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283681 () Bool)

(declare-fun e!733343 () Bool)

(assert (=> b!1283681 (= e!733343 tp_is_empty!33881)))

(declare-fun res!852827 () Bool)

(assert (=> start!108764 (=> (not res!852827) (not e!733341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108764 (= res!852827 (validMask!0 mask!2175))))

(assert (=> start!108764 e!733341))

(assert (=> start!108764 tp_is_empty!33881))

(assert (=> start!108764 true))

(declare-fun e!733345 () Bool)

(declare-fun array_inv!30997 (array!84781) Bool)

(assert (=> start!108764 (and (array_inv!30997 _values!1445) e!733345)))

(declare-fun array_inv!30998 (array!84779) Bool)

(assert (=> start!108764 (array_inv!30998 _keys!1741)))

(assert (=> start!108764 tp!99840))

(declare-fun b!1283682 () Bool)

(declare-fun res!852821 () Bool)

(assert (=> b!1283682 (=> (not res!852821) (not e!733341))))

(declare-fun minValue!1387 () V!50277)

(declare-fun zeroValue!1387 () V!50277)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21936 0))(
  ( (tuple2!21937 (_1!10978 (_ BitVec 64)) (_2!10978 V!50277)) )
))
(declare-datatypes ((List!29145 0))(
  ( (Nil!29142) (Cons!29141 (h!30350 tuple2!21936) (t!42696 List!29145)) )
))
(declare-datatypes ((ListLongMap!19605 0))(
  ( (ListLongMap!19606 (toList!9818 List!29145)) )
))
(declare-fun contains!7873 (ListLongMap!19605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4836 (array!84779 array!84781 (_ BitVec 32) (_ BitVec 32) V!50277 V!50277 (_ BitVec 32) Int) ListLongMap!19605)

(assert (=> b!1283682 (= res!852821 (contains!7873 (getCurrentListMap!4836 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283683 () Bool)

(assert (=> b!1283683 (= e!733341 (not true))))

(declare-fun lt!576647 () ListLongMap!19605)

(assert (=> b!1283683 (contains!7873 lt!576647 k!1205)))

(declare-datatypes ((Unit!42425 0))(
  ( (Unit!42426) )
))
(declare-fun lt!576648 () Unit!42425)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!14 ((_ BitVec 64) (_ BitVec 64) V!50277 ListLongMap!19605) Unit!42425)

(assert (=> b!1283683 (= lt!576648 (lemmaInListMapAfterAddingDiffThenInBefore!14 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576647))))

(declare-fun +!4265 (ListLongMap!19605 tuple2!21936) ListLongMap!19605)

(declare-fun getCurrentListMapNoExtraKeys!5976 (array!84779 array!84781 (_ BitVec 32) (_ BitVec 32) V!50277 V!50277 (_ BitVec 32) Int) ListLongMap!19605)

(assert (=> b!1283683 (= lt!576647 (+!4265 (getCurrentListMapNoExtraKeys!5976 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283684 () Bool)

(declare-fun res!852820 () Bool)

(assert (=> b!1283684 (=> (not res!852820) (not e!733341))))

(assert (=> b!1283684 (= res!852820 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41438 _keys!1741))))))

(declare-fun b!1283685 () Bool)

(declare-fun res!852828 () Bool)

(assert (=> b!1283685 (=> (not res!852828) (not e!733341))))

(assert (=> b!1283685 (= res!852828 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41438 _keys!1741))))))

(declare-fun b!1283686 () Bool)

(declare-fun res!852824 () Bool)

(assert (=> b!1283686 (=> (not res!852824) (not e!733341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84779 (_ BitVec 32)) Bool)

(assert (=> b!1283686 (= res!852824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52379 () Bool)

(declare-fun mapRes!52379 () Bool)

(assert (=> mapIsEmpty!52379 mapRes!52379))

(declare-fun b!1283687 () Bool)

(declare-fun res!852825 () Bool)

(assert (=> b!1283687 (=> (not res!852825) (not e!733341))))

(assert (=> b!1283687 (= res!852825 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283688 () Bool)

(assert (=> b!1283688 (= e!733345 (and e!733344 mapRes!52379))))

(declare-fun condMapEmpty!52379 () Bool)

(declare-fun mapDefault!52379 () ValueCell!16042)

