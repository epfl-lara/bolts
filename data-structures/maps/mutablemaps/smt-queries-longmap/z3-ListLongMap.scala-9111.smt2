; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109488 () Bool)

(assert start!109488)

(declare-fun b_free!28941 () Bool)

(declare-fun b_next!28941 () Bool)

(assert (=> start!109488 (= b_free!28941 (not b_next!28941))))

(declare-fun tp!101943 () Bool)

(declare-fun b_and!47041 () Bool)

(assert (=> start!109488 (= tp!101943 b_and!47041)))

(declare-fun b!1295961 () Bool)

(declare-fun e!739421 () Bool)

(assert (=> b!1295961 (= e!739421 true)))

(declare-datatypes ((V!51211 0))(
  ( (V!51212 (val!17365 Int)) )
))
(declare-datatypes ((tuple2!22514 0))(
  ( (tuple2!22515 (_1!11267 (_ BitVec 64)) (_2!11267 V!51211)) )
))
(declare-datatypes ((List!29682 0))(
  ( (Nil!29679) (Cons!29678 (h!30887 tuple2!22514) (t!43253 List!29682)) )
))
(declare-datatypes ((ListLongMap!20183 0))(
  ( (ListLongMap!20184 (toList!10107 List!29682)) )
))
(declare-fun lt!579990 () ListLongMap!20183)

(declare-fun minValue!1387 () V!51211)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8163 (ListLongMap!20183 (_ BitVec 64)) Bool)

(declare-fun +!4407 (ListLongMap!20183 tuple2!22514) ListLongMap!20183)

(assert (=> b!1295961 (not (contains!8163 (+!4407 lt!579990 (tuple2!22515 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42877 0))(
  ( (Unit!42878) )
))
(declare-fun lt!579989 () Unit!42877)

(declare-fun addStillNotContains!452 (ListLongMap!20183 (_ BitVec 64) V!51211 (_ BitVec 64)) Unit!42877)

(assert (=> b!1295961 (= lt!579989 (addStillNotContains!452 lt!579990 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51211)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16392 0))(
  ( (ValueCellFull!16392 (v!19966 V!51211)) (EmptyCell!16392) )
))
(declare-datatypes ((array!86141 0))(
  ( (array!86142 (arr!41567 (Array (_ BitVec 32) ValueCell!16392)) (size!42118 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86141)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86143 0))(
  ( (array!86144 (arr!41568 (Array (_ BitVec 32) (_ BitVec 64))) (size!42119 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86143)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6123 (array!86143 array!86141 (_ BitVec 32) (_ BitVec 32) V!51211 V!51211 (_ BitVec 32) Int) ListLongMap!20183)

(assert (=> b!1295961 (= lt!579990 (getCurrentListMapNoExtraKeys!6123 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295962 () Bool)

(declare-fun res!861467 () Bool)

(declare-fun e!739422 () Bool)

(assert (=> b!1295962 (=> (not res!861467) (not e!739422))))

(assert (=> b!1295962 (= res!861467 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42119 _keys!1741))))))

(declare-fun b!1295963 () Bool)

(declare-fun res!861470 () Bool)

(assert (=> b!1295963 (=> (not res!861470) (not e!739422))))

(declare-fun getCurrentListMap!5085 (array!86143 array!86141 (_ BitVec 32) (_ BitVec 32) V!51211 V!51211 (_ BitVec 32) Int) ListLongMap!20183)

(assert (=> b!1295963 (= res!861470 (contains!8163 (getCurrentListMap!5085 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295964 () Bool)

(assert (=> b!1295964 (= e!739422 (not e!739421))))

(declare-fun res!861464 () Bool)

(assert (=> b!1295964 (=> res!861464 e!739421)))

(assert (=> b!1295964 (= res!861464 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295964 (not (contains!8163 (ListLongMap!20184 Nil!29679) k0!1205))))

(declare-fun lt!579991 () Unit!42877)

(declare-fun emptyContainsNothing!193 ((_ BitVec 64)) Unit!42877)

(assert (=> b!1295964 (= lt!579991 (emptyContainsNothing!193 k0!1205))))

(declare-fun b!1295965 () Bool)

(declare-fun res!861466 () Bool)

(assert (=> b!1295965 (=> (not res!861466) (not e!739422))))

(declare-datatypes ((List!29683 0))(
  ( (Nil!29680) (Cons!29679 (h!30888 (_ BitVec 64)) (t!43254 List!29683)) )
))
(declare-fun arrayNoDuplicates!0 (array!86143 (_ BitVec 32) List!29683) Bool)

(assert (=> b!1295965 (= res!861466 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29680))))

(declare-fun b!1295966 () Bool)

(declare-fun e!739420 () Bool)

(declare-fun tp_is_empty!34581 () Bool)

(assert (=> b!1295966 (= e!739420 tp_is_empty!34581)))

(declare-fun b!1295967 () Bool)

(declare-fun res!861468 () Bool)

(assert (=> b!1295967 (=> (not res!861468) (not e!739422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295967 (= res!861468 (not (validKeyInArray!0 (select (arr!41568 _keys!1741) from!2144))))))

(declare-fun b!1295968 () Bool)

(declare-fun e!739419 () Bool)

(assert (=> b!1295968 (= e!739419 tp_is_empty!34581)))

(declare-fun b!1295969 () Bool)

(declare-fun res!861469 () Bool)

(assert (=> b!1295969 (=> (not res!861469) (not e!739422))))

(assert (=> b!1295969 (= res!861469 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42119 _keys!1741))))))

(declare-fun b!1295970 () Bool)

(declare-fun res!861463 () Bool)

(assert (=> b!1295970 (=> (not res!861463) (not e!739422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86143 (_ BitVec 32)) Bool)

(assert (=> b!1295970 (= res!861463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295971 () Bool)

(declare-fun res!861465 () Bool)

(assert (=> b!1295971 (=> (not res!861465) (not e!739422))))

(assert (=> b!1295971 (= res!861465 (and (= (size!42118 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42119 _keys!1741) (size!42118 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53432 () Bool)

(declare-fun mapRes!53432 () Bool)

(assert (=> mapIsEmpty!53432 mapRes!53432))

(declare-fun b!1295972 () Bool)

(declare-fun e!739423 () Bool)

(assert (=> b!1295972 (= e!739423 (and e!739420 mapRes!53432))))

(declare-fun condMapEmpty!53432 () Bool)

(declare-fun mapDefault!53432 () ValueCell!16392)

(assert (=> b!1295972 (= condMapEmpty!53432 (= (arr!41567 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16392)) mapDefault!53432)))))

(declare-fun res!861471 () Bool)

(assert (=> start!109488 (=> (not res!861471) (not e!739422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109488 (= res!861471 (validMask!0 mask!2175))))

(assert (=> start!109488 e!739422))

(assert (=> start!109488 tp_is_empty!34581))

(assert (=> start!109488 true))

(declare-fun array_inv!31459 (array!86141) Bool)

(assert (=> start!109488 (and (array_inv!31459 _values!1445) e!739423)))

(declare-fun array_inv!31460 (array!86143) Bool)

(assert (=> start!109488 (array_inv!31460 _keys!1741)))

(assert (=> start!109488 tp!101943))

(declare-fun mapNonEmpty!53432 () Bool)

(declare-fun tp!101942 () Bool)

(assert (=> mapNonEmpty!53432 (= mapRes!53432 (and tp!101942 e!739419))))

(declare-fun mapValue!53432 () ValueCell!16392)

(declare-fun mapRest!53432 () (Array (_ BitVec 32) ValueCell!16392))

(declare-fun mapKey!53432 () (_ BitVec 32))

(assert (=> mapNonEmpty!53432 (= (arr!41567 _values!1445) (store mapRest!53432 mapKey!53432 mapValue!53432))))

(assert (= (and start!109488 res!861471) b!1295971))

(assert (= (and b!1295971 res!861465) b!1295970))

(assert (= (and b!1295970 res!861463) b!1295965))

(assert (= (and b!1295965 res!861466) b!1295969))

(assert (= (and b!1295969 res!861469) b!1295963))

(assert (= (and b!1295963 res!861470) b!1295962))

(assert (= (and b!1295962 res!861467) b!1295967))

(assert (= (and b!1295967 res!861468) b!1295964))

(assert (= (and b!1295964 (not res!861464)) b!1295961))

(assert (= (and b!1295972 condMapEmpty!53432) mapIsEmpty!53432))

(assert (= (and b!1295972 (not condMapEmpty!53432)) mapNonEmpty!53432))

(get-info :version)

(assert (= (and mapNonEmpty!53432 ((_ is ValueCellFull!16392) mapValue!53432)) b!1295968))

(assert (= (and b!1295972 ((_ is ValueCellFull!16392) mapDefault!53432)) b!1295966))

(assert (= start!109488 b!1295972))

(declare-fun m!1187953 () Bool)

(assert (=> b!1295970 m!1187953))

(declare-fun m!1187955 () Bool)

(assert (=> mapNonEmpty!53432 m!1187955))

(declare-fun m!1187957 () Bool)

(assert (=> b!1295965 m!1187957))

(declare-fun m!1187959 () Bool)

(assert (=> b!1295964 m!1187959))

(declare-fun m!1187961 () Bool)

(assert (=> b!1295964 m!1187961))

(declare-fun m!1187963 () Bool)

(assert (=> start!109488 m!1187963))

(declare-fun m!1187965 () Bool)

(assert (=> start!109488 m!1187965))

(declare-fun m!1187967 () Bool)

(assert (=> start!109488 m!1187967))

(declare-fun m!1187969 () Bool)

(assert (=> b!1295963 m!1187969))

(assert (=> b!1295963 m!1187969))

(declare-fun m!1187971 () Bool)

(assert (=> b!1295963 m!1187971))

(declare-fun m!1187973 () Bool)

(assert (=> b!1295967 m!1187973))

(assert (=> b!1295967 m!1187973))

(declare-fun m!1187975 () Bool)

(assert (=> b!1295967 m!1187975))

(declare-fun m!1187977 () Bool)

(assert (=> b!1295961 m!1187977))

(assert (=> b!1295961 m!1187977))

(declare-fun m!1187979 () Bool)

(assert (=> b!1295961 m!1187979))

(declare-fun m!1187981 () Bool)

(assert (=> b!1295961 m!1187981))

(declare-fun m!1187983 () Bool)

(assert (=> b!1295961 m!1187983))

(check-sat (not b!1295961) (not b!1295970) (not b_next!28941) (not start!109488) tp_is_empty!34581 (not b!1295965) (not b!1295964) (not mapNonEmpty!53432) (not b!1295967) b_and!47041 (not b!1295963))
(check-sat b_and!47041 (not b_next!28941))
