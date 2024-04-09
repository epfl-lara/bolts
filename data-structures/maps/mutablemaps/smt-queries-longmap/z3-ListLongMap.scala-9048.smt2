; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109110 () Bool)

(assert start!109110)

(declare-fun b_free!28563 () Bool)

(declare-fun b_next!28563 () Bool)

(assert (=> start!109110 (= b_free!28563 (not b_next!28563))))

(declare-fun tp!100809 () Bool)

(declare-fun b_and!46663 () Bool)

(assert (=> start!109110 (= tp!100809 b_and!46663)))

(declare-fun mapIsEmpty!52865 () Bool)

(declare-fun mapRes!52865 () Bool)

(assert (=> mapIsEmpty!52865 mapRes!52865))

(declare-fun b!1289319 () Bool)

(declare-fun e!736181 () Bool)

(assert (=> b!1289319 (= e!736181 true)))

(declare-datatypes ((V!50707 0))(
  ( (V!50708 (val!17176 Int)) )
))
(declare-datatypes ((tuple2!22192 0))(
  ( (tuple2!22193 (_1!11106 (_ BitVec 64)) (_2!11106 V!50707)) )
))
(declare-datatypes ((List!29392 0))(
  ( (Nil!29389) (Cons!29388 (h!30597 tuple2!22192) (t!42963 List!29392)) )
))
(declare-datatypes ((ListLongMap!19861 0))(
  ( (ListLongMap!19862 (toList!9946 List!29392)) )
))
(declare-fun lt!578186 () ListLongMap!19861)

(declare-fun minValue!1387 () V!50707)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8002 (ListLongMap!19861 (_ BitVec 64)) Bool)

(declare-fun +!4319 (ListLongMap!19861 tuple2!22192) ListLongMap!19861)

(assert (=> b!1289319 (not (contains!8002 (+!4319 lt!578186 (tuple2!22193 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42587 0))(
  ( (Unit!42588) )
))
(declare-fun lt!578187 () Unit!42587)

(declare-fun addStillNotContains!364 (ListLongMap!19861 (_ BitVec 64) V!50707 (_ BitVec 64)) Unit!42587)

(assert (=> b!1289319 (= lt!578187 (addStillNotContains!364 lt!578186 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!50707)

(assert (=> b!1289319 (not (contains!8002 (+!4319 lt!578186 (tuple2!22193 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578188 () Unit!42587)

(assert (=> b!1289319 (= lt!578188 (addStillNotContains!364 lt!578186 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16203 0))(
  ( (ValueCellFull!16203 (v!19777 V!50707)) (EmptyCell!16203) )
))
(declare-datatypes ((array!85405 0))(
  ( (array!85406 (arr!41199 (Array (_ BitVec 32) ValueCell!16203)) (size!41750 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85405)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85407 0))(
  ( (array!85408 (arr!41200 (Array (_ BitVec 32) (_ BitVec 64))) (size!41751 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85407)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6031 (array!85407 array!85405 (_ BitVec 32) (_ BitVec 32) V!50707 V!50707 (_ BitVec 32) Int) ListLongMap!19861)

(assert (=> b!1289319 (= lt!578186 (getCurrentListMapNoExtraKeys!6031 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289320 () Bool)

(declare-fun res!856524 () Bool)

(declare-fun e!736180 () Bool)

(assert (=> b!1289320 (=> (not res!856524) (not e!736180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85407 (_ BitVec 32)) Bool)

(assert (=> b!1289320 (= res!856524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289321 () Bool)

(declare-fun res!856526 () Bool)

(assert (=> b!1289321 (=> (not res!856526) (not e!736180))))

(declare-fun getCurrentListMap!4949 (array!85407 array!85405 (_ BitVec 32) (_ BitVec 32) V!50707 V!50707 (_ BitVec 32) Int) ListLongMap!19861)

(assert (=> b!1289321 (= res!856526 (contains!8002 (getCurrentListMap!4949 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!856528 () Bool)

(assert (=> start!109110 (=> (not res!856528) (not e!736180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109110 (= res!856528 (validMask!0 mask!2175))))

(assert (=> start!109110 e!736180))

(declare-fun tp_is_empty!34203 () Bool)

(assert (=> start!109110 tp_is_empty!34203))

(assert (=> start!109110 true))

(declare-fun e!736182 () Bool)

(declare-fun array_inv!31207 (array!85405) Bool)

(assert (=> start!109110 (and (array_inv!31207 _values!1445) e!736182)))

(declare-fun array_inv!31208 (array!85407) Bool)

(assert (=> start!109110 (array_inv!31208 _keys!1741)))

(assert (=> start!109110 tp!100809))

(declare-fun b!1289322 () Bool)

(declare-fun res!856527 () Bool)

(assert (=> b!1289322 (=> (not res!856527) (not e!736180))))

(assert (=> b!1289322 (= res!856527 (and (= (size!41750 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41751 _keys!1741) (size!41750 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289323 () Bool)

(declare-fun res!856529 () Bool)

(assert (=> b!1289323 (=> (not res!856529) (not e!736180))))

(assert (=> b!1289323 (= res!856529 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41751 _keys!1741))))))

(declare-fun b!1289324 () Bool)

(declare-fun res!856530 () Bool)

(assert (=> b!1289324 (=> (not res!856530) (not e!736180))))

(assert (=> b!1289324 (= res!856530 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41751 _keys!1741))))))

(declare-fun b!1289325 () Bool)

(declare-fun res!856525 () Bool)

(assert (=> b!1289325 (=> (not res!856525) (not e!736180))))

(declare-datatypes ((List!29393 0))(
  ( (Nil!29390) (Cons!29389 (h!30598 (_ BitVec 64)) (t!42964 List!29393)) )
))
(declare-fun arrayNoDuplicates!0 (array!85407 (_ BitVec 32) List!29393) Bool)

(assert (=> b!1289325 (= res!856525 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29390))))

(declare-fun b!1289326 () Bool)

(assert (=> b!1289326 (= e!736180 (not e!736181))))

(declare-fun res!856523 () Bool)

(assert (=> b!1289326 (=> res!856523 e!736181)))

(assert (=> b!1289326 (= res!856523 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289326 (not (contains!8002 (ListLongMap!19862 Nil!29389) k0!1205))))

(declare-fun lt!578185 () Unit!42587)

(declare-fun emptyContainsNothing!58 ((_ BitVec 64)) Unit!42587)

(assert (=> b!1289326 (= lt!578185 (emptyContainsNothing!58 k0!1205))))

(declare-fun mapNonEmpty!52865 () Bool)

(declare-fun tp!100808 () Bool)

(declare-fun e!736178 () Bool)

(assert (=> mapNonEmpty!52865 (= mapRes!52865 (and tp!100808 e!736178))))

(declare-fun mapValue!52865 () ValueCell!16203)

(declare-fun mapRest!52865 () (Array (_ BitVec 32) ValueCell!16203))

(declare-fun mapKey!52865 () (_ BitVec 32))

(assert (=> mapNonEmpty!52865 (= (arr!41199 _values!1445) (store mapRest!52865 mapKey!52865 mapValue!52865))))

(declare-fun b!1289327 () Bool)

(declare-fun e!736179 () Bool)

(assert (=> b!1289327 (= e!736182 (and e!736179 mapRes!52865))))

(declare-fun condMapEmpty!52865 () Bool)

(declare-fun mapDefault!52865 () ValueCell!16203)

(assert (=> b!1289327 (= condMapEmpty!52865 (= (arr!41199 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16203)) mapDefault!52865)))))

(declare-fun b!1289328 () Bool)

(assert (=> b!1289328 (= e!736179 tp_is_empty!34203)))

(declare-fun b!1289329 () Bool)

(assert (=> b!1289329 (= e!736178 tp_is_empty!34203)))

(declare-fun b!1289330 () Bool)

(declare-fun res!856522 () Bool)

(assert (=> b!1289330 (=> (not res!856522) (not e!736180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289330 (= res!856522 (not (validKeyInArray!0 (select (arr!41200 _keys!1741) from!2144))))))

(assert (= (and start!109110 res!856528) b!1289322))

(assert (= (and b!1289322 res!856527) b!1289320))

(assert (= (and b!1289320 res!856524) b!1289325))

(assert (= (and b!1289325 res!856525) b!1289324))

(assert (= (and b!1289324 res!856530) b!1289321))

(assert (= (and b!1289321 res!856526) b!1289323))

(assert (= (and b!1289323 res!856529) b!1289330))

(assert (= (and b!1289330 res!856522) b!1289326))

(assert (= (and b!1289326 (not res!856523)) b!1289319))

(assert (= (and b!1289327 condMapEmpty!52865) mapIsEmpty!52865))

(assert (= (and b!1289327 (not condMapEmpty!52865)) mapNonEmpty!52865))

(get-info :version)

(assert (= (and mapNonEmpty!52865 ((_ is ValueCellFull!16203) mapValue!52865)) b!1289329))

(assert (= (and b!1289327 ((_ is ValueCellFull!16203) mapDefault!52865)) b!1289328))

(assert (= start!109110 b!1289327))

(declare-fun m!1181881 () Bool)

(assert (=> b!1289325 m!1181881))

(declare-fun m!1181883 () Bool)

(assert (=> mapNonEmpty!52865 m!1181883))

(declare-fun m!1181885 () Bool)

(assert (=> b!1289330 m!1181885))

(assert (=> b!1289330 m!1181885))

(declare-fun m!1181887 () Bool)

(assert (=> b!1289330 m!1181887))

(declare-fun m!1181889 () Bool)

(assert (=> b!1289319 m!1181889))

(declare-fun m!1181891 () Bool)

(assert (=> b!1289319 m!1181891))

(declare-fun m!1181893 () Bool)

(assert (=> b!1289319 m!1181893))

(declare-fun m!1181895 () Bool)

(assert (=> b!1289319 m!1181895))

(assert (=> b!1289319 m!1181893))

(declare-fun m!1181897 () Bool)

(assert (=> b!1289319 m!1181897))

(declare-fun m!1181899 () Bool)

(assert (=> b!1289319 m!1181899))

(assert (=> b!1289319 m!1181889))

(declare-fun m!1181901 () Bool)

(assert (=> b!1289319 m!1181901))

(declare-fun m!1181903 () Bool)

(assert (=> b!1289320 m!1181903))

(declare-fun m!1181905 () Bool)

(assert (=> b!1289321 m!1181905))

(assert (=> b!1289321 m!1181905))

(declare-fun m!1181907 () Bool)

(assert (=> b!1289321 m!1181907))

(declare-fun m!1181909 () Bool)

(assert (=> start!109110 m!1181909))

(declare-fun m!1181911 () Bool)

(assert (=> start!109110 m!1181911))

(declare-fun m!1181913 () Bool)

(assert (=> start!109110 m!1181913))

(declare-fun m!1181915 () Bool)

(assert (=> b!1289326 m!1181915))

(declare-fun m!1181917 () Bool)

(assert (=> b!1289326 m!1181917))

(check-sat (not b!1289319) b_and!46663 (not b!1289325) tp_is_empty!34203 (not b!1289320) (not mapNonEmpty!52865) (not b!1289330) (not b!1289326) (not b!1289321) (not b_next!28563) (not start!109110))
(check-sat b_and!46663 (not b_next!28563))
