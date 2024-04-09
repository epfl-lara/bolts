; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108912 () Bool)

(assert start!108912)

(declare-fun b_free!28389 () Bool)

(declare-fun b_next!28389 () Bool)

(assert (=> start!108912 (= b_free!28389 (not b_next!28389))))

(declare-fun tp!100283 () Bool)

(declare-fun b_and!46465 () Bool)

(assert (=> start!108912 (= tp!100283 b_and!46465)))

(declare-fun b!1285748 () Bool)

(declare-fun res!854229 () Bool)

(declare-fun e!734454 () Bool)

(assert (=> b!1285748 (=> (not res!854229) (not e!734454))))

(declare-datatypes ((V!50475 0))(
  ( (V!50476 (val!17089 Int)) )
))
(declare-fun minValue!1387 () V!50475)

(declare-fun zeroValue!1387 () V!50475)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16116 0))(
  ( (ValueCellFull!16116 (v!19689 V!50475)) (EmptyCell!16116) )
))
(declare-datatypes ((array!85067 0))(
  ( (array!85068 (arr!41031 (Array (_ BitVec 32) ValueCell!16116)) (size!41582 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85067)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85069 0))(
  ( (array!85070 (arr!41032 (Array (_ BitVec 32) (_ BitVec 64))) (size!41583 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85069)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22040 0))(
  ( (tuple2!22041 (_1!11030 (_ BitVec 64)) (_2!11030 V!50475)) )
))
(declare-datatypes ((List!29251 0))(
  ( (Nil!29248) (Cons!29247 (h!30456 tuple2!22040) (t!42802 List!29251)) )
))
(declare-datatypes ((ListLongMap!19709 0))(
  ( (ListLongMap!19710 (toList!9870 List!29251)) )
))
(declare-fun contains!7925 (ListLongMap!19709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4886 (array!85069 array!85067 (_ BitVec 32) (_ BitVec 32) V!50475 V!50475 (_ BitVec 32) Int) ListLongMap!19709)

(assert (=> b!1285748 (= res!854229 (contains!7925 (getCurrentListMap!4886 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!52601 () Bool)

(declare-fun mapRes!52601 () Bool)

(assert (=> mapIsEmpty!52601 mapRes!52601))

(declare-fun b!1285749 () Bool)

(declare-fun res!854224 () Bool)

(assert (=> b!1285749 (=> (not res!854224) (not e!734454))))

(assert (=> b!1285749 (= res!854224 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41583 _keys!1741))))))

(declare-fun b!1285750 () Bool)

(declare-fun res!854227 () Bool)

(assert (=> b!1285750 (=> (not res!854227) (not e!734454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285750 (= res!854227 (validKeyInArray!0 (select (arr!41032 _keys!1741) from!2144)))))

(declare-fun mapNonEmpty!52601 () Bool)

(declare-fun tp!100284 () Bool)

(declare-fun e!734455 () Bool)

(assert (=> mapNonEmpty!52601 (= mapRes!52601 (and tp!100284 e!734455))))

(declare-fun mapKey!52601 () (_ BitVec 32))

(declare-fun mapRest!52601 () (Array (_ BitVec 32) ValueCell!16116))

(declare-fun mapValue!52601 () ValueCell!16116)

(assert (=> mapNonEmpty!52601 (= (arr!41031 _values!1445) (store mapRest!52601 mapKey!52601 mapValue!52601))))

(declare-fun b!1285751 () Bool)

(assert (=> b!1285751 (= e!734454 false)))

(declare-fun lt!576888 () Bool)

(declare-fun +!4280 (ListLongMap!19709 tuple2!22040) ListLongMap!19709)

(declare-fun getCurrentListMapNoExtraKeys!5991 (array!85069 array!85067 (_ BitVec 32) (_ BitVec 32) V!50475 V!50475 (_ BitVec 32) Int) ListLongMap!19709)

(assert (=> b!1285751 (= lt!576888 (contains!7925 (+!4280 (getCurrentListMapNoExtraKeys!5991 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22041 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1285752 () Bool)

(declare-fun e!734453 () Bool)

(declare-fun tp_is_empty!34029 () Bool)

(assert (=> b!1285752 (= e!734453 tp_is_empty!34029)))

(declare-fun res!854226 () Bool)

(assert (=> start!108912 (=> (not res!854226) (not e!734454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108912 (= res!854226 (validMask!0 mask!2175))))

(assert (=> start!108912 e!734454))

(assert (=> start!108912 tp_is_empty!34029))

(assert (=> start!108912 true))

(declare-fun e!734452 () Bool)

(declare-fun array_inv!31093 (array!85067) Bool)

(assert (=> start!108912 (and (array_inv!31093 _values!1445) e!734452)))

(declare-fun array_inv!31094 (array!85069) Bool)

(assert (=> start!108912 (array_inv!31094 _keys!1741)))

(assert (=> start!108912 tp!100283))

(declare-fun b!1285753 () Bool)

(assert (=> b!1285753 (= e!734455 tp_is_empty!34029)))

(declare-fun b!1285754 () Bool)

(declare-fun res!854230 () Bool)

(assert (=> b!1285754 (=> (not res!854230) (not e!734454))))

(declare-datatypes ((List!29252 0))(
  ( (Nil!29249) (Cons!29248 (h!30457 (_ BitVec 64)) (t!42803 List!29252)) )
))
(declare-fun arrayNoDuplicates!0 (array!85069 (_ BitVec 32) List!29252) Bool)

(assert (=> b!1285754 (= res!854230 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29249))))

(declare-fun b!1285755 () Bool)

(assert (=> b!1285755 (= e!734452 (and e!734453 mapRes!52601))))

(declare-fun condMapEmpty!52601 () Bool)

(declare-fun mapDefault!52601 () ValueCell!16116)

(assert (=> b!1285755 (= condMapEmpty!52601 (= (arr!41031 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16116)) mapDefault!52601)))))

(declare-fun b!1285756 () Bool)

(declare-fun res!854232 () Bool)

(assert (=> b!1285756 (=> (not res!854232) (not e!734454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85069 (_ BitVec 32)) Bool)

(assert (=> b!1285756 (= res!854232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285757 () Bool)

(declare-fun res!854231 () Bool)

(assert (=> b!1285757 (=> (not res!854231) (not e!734454))))

(assert (=> b!1285757 (= res!854231 (and (= (size!41582 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41583 _keys!1741) (size!41582 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285758 () Bool)

(declare-fun res!854225 () Bool)

(assert (=> b!1285758 (=> (not res!854225) (not e!734454))))

(assert (=> b!1285758 (= res!854225 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41583 _keys!1741))))))

(declare-fun b!1285759 () Bool)

(declare-fun res!854228 () Bool)

(assert (=> b!1285759 (=> (not res!854228) (not e!734454))))

(assert (=> b!1285759 (= res!854228 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!108912 res!854226) b!1285757))

(assert (= (and b!1285757 res!854231) b!1285756))

(assert (= (and b!1285756 res!854232) b!1285754))

(assert (= (and b!1285754 res!854230) b!1285749))

(assert (= (and b!1285749 res!854224) b!1285748))

(assert (= (and b!1285748 res!854229) b!1285758))

(assert (= (and b!1285758 res!854225) b!1285750))

(assert (= (and b!1285750 res!854227) b!1285759))

(assert (= (and b!1285759 res!854228) b!1285751))

(assert (= (and b!1285755 condMapEmpty!52601) mapIsEmpty!52601))

(assert (= (and b!1285755 (not condMapEmpty!52601)) mapNonEmpty!52601))

(get-info :version)

(assert (= (and mapNonEmpty!52601 ((_ is ValueCellFull!16116) mapValue!52601)) b!1285753))

(assert (= (and b!1285755 ((_ is ValueCellFull!16116) mapDefault!52601)) b!1285752))

(assert (= start!108912 b!1285755))

(declare-fun m!1179005 () Bool)

(assert (=> mapNonEmpty!52601 m!1179005))

(declare-fun m!1179007 () Bool)

(assert (=> b!1285748 m!1179007))

(assert (=> b!1285748 m!1179007))

(declare-fun m!1179009 () Bool)

(assert (=> b!1285748 m!1179009))

(declare-fun m!1179011 () Bool)

(assert (=> b!1285754 m!1179011))

(declare-fun m!1179013 () Bool)

(assert (=> b!1285756 m!1179013))

(declare-fun m!1179015 () Bool)

(assert (=> start!108912 m!1179015))

(declare-fun m!1179017 () Bool)

(assert (=> start!108912 m!1179017))

(declare-fun m!1179019 () Bool)

(assert (=> start!108912 m!1179019))

(declare-fun m!1179021 () Bool)

(assert (=> b!1285751 m!1179021))

(assert (=> b!1285751 m!1179021))

(declare-fun m!1179023 () Bool)

(assert (=> b!1285751 m!1179023))

(assert (=> b!1285751 m!1179023))

(declare-fun m!1179025 () Bool)

(assert (=> b!1285751 m!1179025))

(declare-fun m!1179027 () Bool)

(assert (=> b!1285750 m!1179027))

(assert (=> b!1285750 m!1179027))

(declare-fun m!1179029 () Bool)

(assert (=> b!1285750 m!1179029))

(check-sat (not b!1285748) (not b_next!28389) (not b!1285754) (not mapNonEmpty!52601) tp_is_empty!34029 (not b!1285751) b_and!46465 (not b!1285750) (not start!108912) (not b!1285756))
(check-sat b_and!46465 (not b_next!28389))
