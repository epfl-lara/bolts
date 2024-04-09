; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109200 () Bool)

(assert start!109200)

(declare-fun b_free!28653 () Bool)

(declare-fun b_next!28653 () Bool)

(assert (=> start!109200 (= b_free!28653 (not b_next!28653))))

(declare-fun tp!101078 () Bool)

(declare-fun b_and!46753 () Bool)

(assert (=> start!109200 (= tp!101078 b_and!46753)))

(declare-fun res!857739 () Bool)

(declare-fun e!736992 () Bool)

(assert (=> start!109200 (=> (not res!857739) (not e!736992))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109200 (= res!857739 (validMask!0 mask!2175))))

(assert (=> start!109200 e!736992))

(declare-fun tp_is_empty!34293 () Bool)

(assert (=> start!109200 tp_is_empty!34293))

(assert (=> start!109200 true))

(declare-datatypes ((V!50827 0))(
  ( (V!50828 (val!17221 Int)) )
))
(declare-datatypes ((ValueCell!16248 0))(
  ( (ValueCellFull!16248 (v!19822 V!50827)) (EmptyCell!16248) )
))
(declare-datatypes ((array!85581 0))(
  ( (array!85582 (arr!41287 (Array (_ BitVec 32) ValueCell!16248)) (size!41838 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85581)

(declare-fun e!736990 () Bool)

(declare-fun array_inv!31263 (array!85581) Bool)

(assert (=> start!109200 (and (array_inv!31263 _values!1445) e!736990)))

(declare-datatypes ((array!85583 0))(
  ( (array!85584 (arr!41288 (Array (_ BitVec 32) (_ BitVec 64))) (size!41839 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85583)

(declare-fun array_inv!31264 (array!85583) Bool)

(assert (=> start!109200 (array_inv!31264 _keys!1741)))

(assert (=> start!109200 tp!101078))

(declare-fun b!1290939 () Bool)

(declare-fun res!857740 () Bool)

(assert (=> b!1290939 (=> (not res!857740) (not e!736992))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290939 (= res!857740 (not (validKeyInArray!0 (select (arr!41288 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53000 () Bool)

(declare-fun mapRes!53000 () Bool)

(assert (=> mapIsEmpty!53000 mapRes!53000))

(declare-fun b!1290940 () Bool)

(declare-fun res!857742 () Bool)

(assert (=> b!1290940 (=> (not res!857742) (not e!736992))))

(declare-fun minValue!1387 () V!50827)

(declare-fun zeroValue!1387 () V!50827)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22270 0))(
  ( (tuple2!22271 (_1!11145 (_ BitVec 64)) (_2!11145 V!50827)) )
))
(declare-datatypes ((List!29465 0))(
  ( (Nil!29462) (Cons!29461 (h!30670 tuple2!22270) (t!43036 List!29465)) )
))
(declare-datatypes ((ListLongMap!19939 0))(
  ( (ListLongMap!19940 (toList!9985 List!29465)) )
))
(declare-fun contains!8041 (ListLongMap!19939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4985 (array!85583 array!85581 (_ BitVec 32) (_ BitVec 32) V!50827 V!50827 (_ BitVec 32) Int) ListLongMap!19939)

(assert (=> b!1290940 (= res!857742 (contains!8041 (getCurrentListMap!4985 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290941 () Bool)

(declare-fun res!857744 () Bool)

(assert (=> b!1290941 (=> (not res!857744) (not e!736992))))

(declare-datatypes ((List!29466 0))(
  ( (Nil!29463) (Cons!29462 (h!30671 (_ BitVec 64)) (t!43037 List!29466)) )
))
(declare-fun arrayNoDuplicates!0 (array!85583 (_ BitVec 32) List!29466) Bool)

(assert (=> b!1290941 (= res!857744 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29463))))

(declare-fun b!1290942 () Bool)

(declare-fun res!857737 () Bool)

(assert (=> b!1290942 (=> (not res!857737) (not e!736992))))

(assert (=> b!1290942 (= res!857737 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41839 _keys!1741))))))

(declare-fun b!1290943 () Bool)

(declare-fun e!736993 () Bool)

(assert (=> b!1290943 (= e!736993 true)))

(assert (=> b!1290943 false))

(declare-datatypes ((Unit!42659 0))(
  ( (Unit!42660) )
))
(declare-fun lt!578865 () Unit!42659)

(declare-fun lt!578864 () ListLongMap!19939)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!44 ((_ BitVec 64) (_ BitVec 64) V!50827 ListLongMap!19939) Unit!42659)

(assert (=> b!1290943 (= lt!578865 (lemmaInListMapAfterAddingDiffThenInBefore!44 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578864))))

(declare-fun lt!578863 () ListLongMap!19939)

(declare-fun +!4349 (ListLongMap!19939 tuple2!22270) ListLongMap!19939)

(assert (=> b!1290943 (not (contains!8041 (+!4349 lt!578863 (tuple2!22271 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578862 () Unit!42659)

(declare-fun addStillNotContains!394 (ListLongMap!19939 (_ BitVec 64) V!50827 (_ BitVec 64)) Unit!42659)

(assert (=> b!1290943 (= lt!578862 (addStillNotContains!394 lt!578863 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290943 (not (contains!8041 lt!578864 k0!1205))))

(assert (=> b!1290943 (= lt!578864 (+!4349 lt!578863 (tuple2!22271 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578861 () Unit!42659)

(assert (=> b!1290943 (= lt!578861 (addStillNotContains!394 lt!578863 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6061 (array!85583 array!85581 (_ BitVec 32) (_ BitVec 32) V!50827 V!50827 (_ BitVec 32) Int) ListLongMap!19939)

(assert (=> b!1290943 (= lt!578863 (getCurrentListMapNoExtraKeys!6061 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290944 () Bool)

(declare-fun e!736988 () Bool)

(assert (=> b!1290944 (= e!736990 (and e!736988 mapRes!53000))))

(declare-fun condMapEmpty!53000 () Bool)

(declare-fun mapDefault!53000 () ValueCell!16248)

(assert (=> b!1290944 (= condMapEmpty!53000 (= (arr!41287 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16248)) mapDefault!53000)))))

(declare-fun b!1290945 () Bool)

(declare-fun e!736989 () Bool)

(assert (=> b!1290945 (= e!736989 tp_is_empty!34293)))

(declare-fun b!1290946 () Bool)

(assert (=> b!1290946 (= e!736988 tp_is_empty!34293)))

(declare-fun b!1290947 () Bool)

(declare-fun res!857738 () Bool)

(assert (=> b!1290947 (=> (not res!857738) (not e!736992))))

(assert (=> b!1290947 (= res!857738 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41839 _keys!1741))))))

(declare-fun b!1290948 () Bool)

(declare-fun res!857745 () Bool)

(assert (=> b!1290948 (=> (not res!857745) (not e!736992))))

(assert (=> b!1290948 (= res!857745 (and (= (size!41838 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41839 _keys!1741) (size!41838 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290949 () Bool)

(assert (=> b!1290949 (= e!736992 (not e!736993))))

(declare-fun res!857741 () Bool)

(assert (=> b!1290949 (=> res!857741 e!736993)))

(assert (=> b!1290949 (= res!857741 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290949 (not (contains!8041 (ListLongMap!19940 Nil!29462) k0!1205))))

(declare-fun lt!578866 () Unit!42659)

(declare-fun emptyContainsNothing!90 ((_ BitVec 64)) Unit!42659)

(assert (=> b!1290949 (= lt!578866 (emptyContainsNothing!90 k0!1205))))

(declare-fun mapNonEmpty!53000 () Bool)

(declare-fun tp!101079 () Bool)

(assert (=> mapNonEmpty!53000 (= mapRes!53000 (and tp!101079 e!736989))))

(declare-fun mapKey!53000 () (_ BitVec 32))

(declare-fun mapRest!53000 () (Array (_ BitVec 32) ValueCell!16248))

(declare-fun mapValue!53000 () ValueCell!16248)

(assert (=> mapNonEmpty!53000 (= (arr!41287 _values!1445) (store mapRest!53000 mapKey!53000 mapValue!53000))))

(declare-fun b!1290950 () Bool)

(declare-fun res!857743 () Bool)

(assert (=> b!1290950 (=> (not res!857743) (not e!736992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85583 (_ BitVec 32)) Bool)

(assert (=> b!1290950 (= res!857743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109200 res!857739) b!1290948))

(assert (= (and b!1290948 res!857745) b!1290950))

(assert (= (and b!1290950 res!857743) b!1290941))

(assert (= (and b!1290941 res!857744) b!1290947))

(assert (= (and b!1290947 res!857738) b!1290940))

(assert (= (and b!1290940 res!857742) b!1290942))

(assert (= (and b!1290942 res!857737) b!1290939))

(assert (= (and b!1290939 res!857740) b!1290949))

(assert (= (and b!1290949 (not res!857741)) b!1290943))

(assert (= (and b!1290944 condMapEmpty!53000) mapIsEmpty!53000))

(assert (= (and b!1290944 (not condMapEmpty!53000)) mapNonEmpty!53000))

(get-info :version)

(assert (= (and mapNonEmpty!53000 ((_ is ValueCellFull!16248) mapValue!53000)) b!1290945))

(assert (= (and b!1290944 ((_ is ValueCellFull!16248) mapDefault!53000)) b!1290946))

(assert (= start!109200 b!1290944))

(declare-fun m!1183641 () Bool)

(assert (=> b!1290940 m!1183641))

(assert (=> b!1290940 m!1183641))

(declare-fun m!1183643 () Bool)

(assert (=> b!1290940 m!1183643))

(declare-fun m!1183645 () Bool)

(assert (=> b!1290950 m!1183645))

(declare-fun m!1183647 () Bool)

(assert (=> b!1290939 m!1183647))

(assert (=> b!1290939 m!1183647))

(declare-fun m!1183649 () Bool)

(assert (=> b!1290939 m!1183649))

(declare-fun m!1183651 () Bool)

(assert (=> mapNonEmpty!53000 m!1183651))

(declare-fun m!1183653 () Bool)

(assert (=> b!1290949 m!1183653))

(declare-fun m!1183655 () Bool)

(assert (=> b!1290949 m!1183655))

(declare-fun m!1183657 () Bool)

(assert (=> b!1290941 m!1183657))

(declare-fun m!1183659 () Bool)

(assert (=> b!1290943 m!1183659))

(declare-fun m!1183661 () Bool)

(assert (=> b!1290943 m!1183661))

(declare-fun m!1183663 () Bool)

(assert (=> b!1290943 m!1183663))

(assert (=> b!1290943 m!1183661))

(declare-fun m!1183665 () Bool)

(assert (=> b!1290943 m!1183665))

(declare-fun m!1183667 () Bool)

(assert (=> b!1290943 m!1183667))

(declare-fun m!1183669 () Bool)

(assert (=> b!1290943 m!1183669))

(declare-fun m!1183671 () Bool)

(assert (=> b!1290943 m!1183671))

(declare-fun m!1183673 () Bool)

(assert (=> b!1290943 m!1183673))

(declare-fun m!1183675 () Bool)

(assert (=> start!109200 m!1183675))

(declare-fun m!1183677 () Bool)

(assert (=> start!109200 m!1183677))

(declare-fun m!1183679 () Bool)

(assert (=> start!109200 m!1183679))

(check-sat b_and!46753 (not b!1290943) (not start!109200) (not b_next!28653) (not b!1290949) (not mapNonEmpty!53000) (not b!1290941) (not b!1290940) (not b!1290939) (not b!1290950) tp_is_empty!34293)
(check-sat b_and!46753 (not b_next!28653))
