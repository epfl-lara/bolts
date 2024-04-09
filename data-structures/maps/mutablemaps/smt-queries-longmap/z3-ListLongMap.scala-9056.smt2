; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109158 () Bool)

(assert start!109158)

(declare-fun b_free!28611 () Bool)

(declare-fun b_next!28611 () Bool)

(assert (=> start!109158 (= b_free!28611 (not b_next!28611))))

(declare-fun tp!100953 () Bool)

(declare-fun b_and!46711 () Bool)

(assert (=> start!109158 (= tp!100953 b_and!46711)))

(declare-fun b!1290183 () Bool)

(declare-fun e!736613 () Bool)

(declare-fun tp_is_empty!34251 () Bool)

(assert (=> b!1290183 (= e!736613 tp_is_empty!34251)))

(declare-fun b!1290184 () Bool)

(declare-fun e!736614 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85501 0))(
  ( (array!85502 (arr!41247 (Array (_ BitVec 32) (_ BitVec 64))) (size!41798 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85501)

(assert (=> b!1290184 (= e!736614 (bvsle from!2144 (size!41798 _keys!1741)))))

(declare-datatypes ((V!50771 0))(
  ( (V!50772 (val!17200 Int)) )
))
(declare-datatypes ((tuple2!22238 0))(
  ( (tuple2!22239 (_1!11129 (_ BitVec 64)) (_2!11129 V!50771)) )
))
(declare-datatypes ((List!29434 0))(
  ( (Nil!29431) (Cons!29430 (h!30639 tuple2!22238) (t!43005 List!29434)) )
))
(declare-datatypes ((ListLongMap!19907 0))(
  ( (ListLongMap!19908 (toList!9969 List!29434)) )
))
(declare-fun lt!578474 () ListLongMap!19907)

(declare-fun minValue!1387 () V!50771)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8025 (ListLongMap!19907 (_ BitVec 64)) Bool)

(declare-fun +!4338 (ListLongMap!19907 tuple2!22238) ListLongMap!19907)

(assert (=> b!1290184 (not (contains!8025 (+!4338 lt!578474 (tuple2!22239 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42627 0))(
  ( (Unit!42628) )
))
(declare-fun lt!578473 () Unit!42627)

(declare-fun addStillNotContains!383 (ListLongMap!19907 (_ BitVec 64) V!50771 (_ BitVec 64)) Unit!42627)

(assert (=> b!1290184 (= lt!578473 (addStillNotContains!383 lt!578474 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!50771)

(assert (=> b!1290184 (not (contains!8025 (+!4338 lt!578474 (tuple2!22239 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578475 () Unit!42627)

(assert (=> b!1290184 (= lt!578475 (addStillNotContains!383 lt!578474 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-datatypes ((ValueCell!16227 0))(
  ( (ValueCellFull!16227 (v!19801 V!50771)) (EmptyCell!16227) )
))
(declare-datatypes ((array!85503 0))(
  ( (array!85504 (arr!41248 (Array (_ BitVec 32) ValueCell!16227)) (size!41799 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85503)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6050 (array!85501 array!85503 (_ BitVec 32) (_ BitVec 32) V!50771 V!50771 (_ BitVec 32) Int) ListLongMap!19907)

(assert (=> b!1290184 (= lt!578474 (getCurrentListMapNoExtraKeys!6050 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290185 () Bool)

(declare-fun res!857172 () Bool)

(declare-fun e!736610 () Bool)

(assert (=> b!1290185 (=> (not res!857172) (not e!736610))))

(declare-fun getCurrentListMap!4970 (array!85501 array!85503 (_ BitVec 32) (_ BitVec 32) V!50771 V!50771 (_ BitVec 32) Int) ListLongMap!19907)

(assert (=> b!1290185 (= res!857172 (contains!8025 (getCurrentListMap!4970 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290186 () Bool)

(declare-fun e!736611 () Bool)

(assert (=> b!1290186 (= e!736611 tp_is_empty!34251)))

(declare-fun mapIsEmpty!52937 () Bool)

(declare-fun mapRes!52937 () Bool)

(assert (=> mapIsEmpty!52937 mapRes!52937))

(declare-fun mapNonEmpty!52937 () Bool)

(declare-fun tp!100952 () Bool)

(assert (=> mapNonEmpty!52937 (= mapRes!52937 (and tp!100952 e!736613))))

(declare-fun mapValue!52937 () ValueCell!16227)

(declare-fun mapRest!52937 () (Array (_ BitVec 32) ValueCell!16227))

(declare-fun mapKey!52937 () (_ BitVec 32))

(assert (=> mapNonEmpty!52937 (= (arr!41248 _values!1445) (store mapRest!52937 mapKey!52937 mapValue!52937))))

(declare-fun b!1290187 () Bool)

(declare-fun res!857171 () Bool)

(assert (=> b!1290187 (=> (not res!857171) (not e!736610))))

(assert (=> b!1290187 (= res!857171 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41798 _keys!1741))))))

(declare-fun b!1290189 () Bool)

(declare-fun e!736612 () Bool)

(assert (=> b!1290189 (= e!736612 (and e!736611 mapRes!52937))))

(declare-fun condMapEmpty!52937 () Bool)

(declare-fun mapDefault!52937 () ValueCell!16227)

(assert (=> b!1290189 (= condMapEmpty!52937 (= (arr!41248 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16227)) mapDefault!52937)))))

(declare-fun b!1290190 () Bool)

(assert (=> b!1290190 (= e!736610 (not e!736614))))

(declare-fun res!857173 () Bool)

(assert (=> b!1290190 (=> res!857173 e!736614)))

(assert (=> b!1290190 (= res!857173 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290190 (not (contains!8025 (ListLongMap!19908 Nil!29431) k0!1205))))

(declare-fun lt!578476 () Unit!42627)

(declare-fun emptyContainsNothing!74 ((_ BitVec 64)) Unit!42627)

(assert (=> b!1290190 (= lt!578476 (emptyContainsNothing!74 k0!1205))))

(declare-fun b!1290191 () Bool)

(declare-fun res!857170 () Bool)

(assert (=> b!1290191 (=> (not res!857170) (not e!736610))))

(assert (=> b!1290191 (= res!857170 (and (= (size!41799 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41798 _keys!1741) (size!41799 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290192 () Bool)

(declare-fun res!857177 () Bool)

(assert (=> b!1290192 (=> (not res!857177) (not e!736610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290192 (= res!857177 (not (validKeyInArray!0 (select (arr!41247 _keys!1741) from!2144))))))

(declare-fun b!1290188 () Bool)

(declare-fun res!857175 () Bool)

(assert (=> b!1290188 (=> (not res!857175) (not e!736610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85501 (_ BitVec 32)) Bool)

(assert (=> b!1290188 (= res!857175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!857174 () Bool)

(assert (=> start!109158 (=> (not res!857174) (not e!736610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109158 (= res!857174 (validMask!0 mask!2175))))

(assert (=> start!109158 e!736610))

(assert (=> start!109158 tp_is_empty!34251))

(assert (=> start!109158 true))

(declare-fun array_inv!31237 (array!85503) Bool)

(assert (=> start!109158 (and (array_inv!31237 _values!1445) e!736612)))

(declare-fun array_inv!31238 (array!85501) Bool)

(assert (=> start!109158 (array_inv!31238 _keys!1741)))

(assert (=> start!109158 tp!100953))

(declare-fun b!1290193 () Bool)

(declare-fun res!857178 () Bool)

(assert (=> b!1290193 (=> (not res!857178) (not e!736610))))

(declare-datatypes ((List!29435 0))(
  ( (Nil!29432) (Cons!29431 (h!30640 (_ BitVec 64)) (t!43006 List!29435)) )
))
(declare-fun arrayNoDuplicates!0 (array!85501 (_ BitVec 32) List!29435) Bool)

(assert (=> b!1290193 (= res!857178 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29432))))

(declare-fun b!1290194 () Bool)

(declare-fun res!857176 () Bool)

(assert (=> b!1290194 (=> (not res!857176) (not e!736610))))

(assert (=> b!1290194 (= res!857176 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41798 _keys!1741))))))

(assert (= (and start!109158 res!857174) b!1290191))

(assert (= (and b!1290191 res!857170) b!1290188))

(assert (= (and b!1290188 res!857175) b!1290193))

(assert (= (and b!1290193 res!857178) b!1290187))

(assert (= (and b!1290187 res!857171) b!1290185))

(assert (= (and b!1290185 res!857172) b!1290194))

(assert (= (and b!1290194 res!857176) b!1290192))

(assert (= (and b!1290192 res!857177) b!1290190))

(assert (= (and b!1290190 (not res!857173)) b!1290184))

(assert (= (and b!1290189 condMapEmpty!52937) mapIsEmpty!52937))

(assert (= (and b!1290189 (not condMapEmpty!52937)) mapNonEmpty!52937))

(get-info :version)

(assert (= (and mapNonEmpty!52937 ((_ is ValueCellFull!16227) mapValue!52937)) b!1290183))

(assert (= (and b!1290189 ((_ is ValueCellFull!16227) mapDefault!52937)) b!1290186))

(assert (= start!109158 b!1290189))

(declare-fun m!1182793 () Bool)

(assert (=> start!109158 m!1182793))

(declare-fun m!1182795 () Bool)

(assert (=> start!109158 m!1182795))

(declare-fun m!1182797 () Bool)

(assert (=> start!109158 m!1182797))

(declare-fun m!1182799 () Bool)

(assert (=> b!1290193 m!1182799))

(declare-fun m!1182801 () Bool)

(assert (=> b!1290192 m!1182801))

(assert (=> b!1290192 m!1182801))

(declare-fun m!1182803 () Bool)

(assert (=> b!1290192 m!1182803))

(declare-fun m!1182805 () Bool)

(assert (=> b!1290190 m!1182805))

(declare-fun m!1182807 () Bool)

(assert (=> b!1290190 m!1182807))

(declare-fun m!1182809 () Bool)

(assert (=> b!1290184 m!1182809))

(declare-fun m!1182811 () Bool)

(assert (=> b!1290184 m!1182811))

(assert (=> b!1290184 m!1182809))

(declare-fun m!1182813 () Bool)

(assert (=> b!1290184 m!1182813))

(declare-fun m!1182815 () Bool)

(assert (=> b!1290184 m!1182815))

(assert (=> b!1290184 m!1182813))

(declare-fun m!1182817 () Bool)

(assert (=> b!1290184 m!1182817))

(declare-fun m!1182819 () Bool)

(assert (=> b!1290184 m!1182819))

(declare-fun m!1182821 () Bool)

(assert (=> b!1290184 m!1182821))

(declare-fun m!1182823 () Bool)

(assert (=> b!1290185 m!1182823))

(assert (=> b!1290185 m!1182823))

(declare-fun m!1182825 () Bool)

(assert (=> b!1290185 m!1182825))

(declare-fun m!1182827 () Bool)

(assert (=> mapNonEmpty!52937 m!1182827))

(declare-fun m!1182829 () Bool)

(assert (=> b!1290188 m!1182829))

(check-sat tp_is_empty!34251 (not mapNonEmpty!52937) b_and!46711 (not b!1290185) (not b!1290192) (not b!1290188) (not start!109158) (not b!1290184) (not b!1290193) (not b_next!28611) (not b!1290190))
(check-sat b_and!46711 (not b_next!28611))
