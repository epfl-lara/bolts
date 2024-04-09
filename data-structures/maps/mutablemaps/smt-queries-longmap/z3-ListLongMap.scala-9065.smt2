; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109212 () Bool)

(assert start!109212)

(declare-fun b_free!28665 () Bool)

(declare-fun b_next!28665 () Bool)

(assert (=> start!109212 (= b_free!28665 (not b_next!28665))))

(declare-fun tp!101115 () Bool)

(declare-fun b_and!46765 () Bool)

(assert (=> start!109212 (= tp!101115 b_and!46765)))

(declare-fun b!1291155 () Bool)

(declare-fun res!857902 () Bool)

(declare-fun e!737097 () Bool)

(assert (=> b!1291155 (=> (not res!857902) (not e!737097))))

(declare-datatypes ((array!85605 0))(
  ( (array!85606 (arr!41299 (Array (_ BitVec 32) (_ BitVec 64))) (size!41850 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85605)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85605 (_ BitVec 32)) Bool)

(assert (=> b!1291155 (= res!857902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291156 () Bool)

(declare-fun res!857906 () Bool)

(assert (=> b!1291156 (=> (not res!857906) (not e!737097))))

(declare-datatypes ((V!50843 0))(
  ( (V!50844 (val!17227 Int)) )
))
(declare-datatypes ((ValueCell!16254 0))(
  ( (ValueCellFull!16254 (v!19828 V!50843)) (EmptyCell!16254) )
))
(declare-datatypes ((array!85607 0))(
  ( (array!85608 (arr!41300 (Array (_ BitVec 32) ValueCell!16254)) (size!41851 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85607)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291156 (= res!857906 (and (= (size!41851 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41850 _keys!1741) (size!41851 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!857899 () Bool)

(assert (=> start!109212 (=> (not res!857899) (not e!737097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109212 (= res!857899 (validMask!0 mask!2175))))

(assert (=> start!109212 e!737097))

(declare-fun tp_is_empty!34305 () Bool)

(assert (=> start!109212 tp_is_empty!34305))

(assert (=> start!109212 true))

(declare-fun e!737101 () Bool)

(declare-fun array_inv!31271 (array!85607) Bool)

(assert (=> start!109212 (and (array_inv!31271 _values!1445) e!737101)))

(declare-fun array_inv!31272 (array!85605) Bool)

(assert (=> start!109212 (array_inv!31272 _keys!1741)))

(assert (=> start!109212 tp!101115))

(declare-fun b!1291157 () Bool)

(declare-fun e!737099 () Bool)

(assert (=> b!1291157 (= e!737099 tp_is_empty!34305)))

(declare-fun mapNonEmpty!53018 () Bool)

(declare-fun mapRes!53018 () Bool)

(declare-fun tp!101114 () Bool)

(declare-fun e!737100 () Bool)

(assert (=> mapNonEmpty!53018 (= mapRes!53018 (and tp!101114 e!737100))))

(declare-fun mapKey!53018 () (_ BitVec 32))

(declare-fun mapValue!53018 () ValueCell!16254)

(declare-fun mapRest!53018 () (Array (_ BitVec 32) ValueCell!16254))

(assert (=> mapNonEmpty!53018 (= (arr!41300 _values!1445) (store mapRest!53018 mapKey!53018 mapValue!53018))))

(declare-fun b!1291158 () Bool)

(declare-fun res!857903 () Bool)

(assert (=> b!1291158 (=> (not res!857903) (not e!737097))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1291158 (= res!857903 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41850 _keys!1741))))))

(declare-fun b!1291159 () Bool)

(declare-fun res!857907 () Bool)

(assert (=> b!1291159 (=> (not res!857907) (not e!737097))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1291159 (= res!857907 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41850 _keys!1741))))))

(declare-fun b!1291160 () Bool)

(assert (=> b!1291160 (= e!737100 tp_is_empty!34305)))

(declare-fun b!1291161 () Bool)

(declare-fun e!737098 () Bool)

(assert (=> b!1291161 (= e!737097 (not e!737098))))

(declare-fun res!857900 () Bool)

(assert (=> b!1291161 (=> res!857900 e!737098)))

(assert (=> b!1291161 (= res!857900 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!22280 0))(
  ( (tuple2!22281 (_1!11150 (_ BitVec 64)) (_2!11150 V!50843)) )
))
(declare-datatypes ((List!29473 0))(
  ( (Nil!29470) (Cons!29469 (h!30678 tuple2!22280) (t!43044 List!29473)) )
))
(declare-datatypes ((ListLongMap!19949 0))(
  ( (ListLongMap!19950 (toList!9990 List!29473)) )
))
(declare-fun contains!8046 (ListLongMap!19949 (_ BitVec 64)) Bool)

(assert (=> b!1291161 (not (contains!8046 (ListLongMap!19950 Nil!29470) k0!1205))))

(declare-datatypes ((Unit!42669 0))(
  ( (Unit!42670) )
))
(declare-fun lt!578973 () Unit!42669)

(declare-fun emptyContainsNothing!94 ((_ BitVec 64)) Unit!42669)

(assert (=> b!1291161 (= lt!578973 (emptyContainsNothing!94 k0!1205))))

(declare-fun mapIsEmpty!53018 () Bool)

(assert (=> mapIsEmpty!53018 mapRes!53018))

(declare-fun b!1291162 () Bool)

(assert (=> b!1291162 (= e!737098 true)))

(assert (=> b!1291162 false))

(declare-fun minValue!1387 () V!50843)

(declare-fun lt!578969 () ListLongMap!19949)

(declare-fun lt!578972 () Unit!42669)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!48 ((_ BitVec 64) (_ BitVec 64) V!50843 ListLongMap!19949) Unit!42669)

(assert (=> b!1291162 (= lt!578972 (lemmaInListMapAfterAddingDiffThenInBefore!48 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578969))))

(declare-fun lt!578974 () ListLongMap!19949)

(declare-fun +!4353 (ListLongMap!19949 tuple2!22280) ListLongMap!19949)

(assert (=> b!1291162 (not (contains!8046 (+!4353 lt!578974 (tuple2!22281 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578971 () Unit!42669)

(declare-fun addStillNotContains!398 (ListLongMap!19949 (_ BitVec 64) V!50843 (_ BitVec 64)) Unit!42669)

(assert (=> b!1291162 (= lt!578971 (addStillNotContains!398 lt!578974 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291162 (not (contains!8046 lt!578969 k0!1205))))

(declare-fun zeroValue!1387 () V!50843)

(assert (=> b!1291162 (= lt!578969 (+!4353 lt!578974 (tuple2!22281 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578970 () Unit!42669)

(assert (=> b!1291162 (= lt!578970 (addStillNotContains!398 lt!578974 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6065 (array!85605 array!85607 (_ BitVec 32) (_ BitVec 32) V!50843 V!50843 (_ BitVec 32) Int) ListLongMap!19949)

(assert (=> b!1291162 (= lt!578974 (getCurrentListMapNoExtraKeys!6065 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291163 () Bool)

(declare-fun res!857905 () Bool)

(assert (=> b!1291163 (=> (not res!857905) (not e!737097))))

(declare-fun getCurrentListMap!4987 (array!85605 array!85607 (_ BitVec 32) (_ BitVec 32) V!50843 V!50843 (_ BitVec 32) Int) ListLongMap!19949)

(assert (=> b!1291163 (= res!857905 (contains!8046 (getCurrentListMap!4987 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291164 () Bool)

(declare-fun res!857904 () Bool)

(assert (=> b!1291164 (=> (not res!857904) (not e!737097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291164 (= res!857904 (not (validKeyInArray!0 (select (arr!41299 _keys!1741) from!2144))))))

(declare-fun b!1291165 () Bool)

(assert (=> b!1291165 (= e!737101 (and e!737099 mapRes!53018))))

(declare-fun condMapEmpty!53018 () Bool)

(declare-fun mapDefault!53018 () ValueCell!16254)

(assert (=> b!1291165 (= condMapEmpty!53018 (= (arr!41300 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16254)) mapDefault!53018)))))

(declare-fun b!1291166 () Bool)

(declare-fun res!857901 () Bool)

(assert (=> b!1291166 (=> (not res!857901) (not e!737097))))

(declare-datatypes ((List!29474 0))(
  ( (Nil!29471) (Cons!29470 (h!30679 (_ BitVec 64)) (t!43045 List!29474)) )
))
(declare-fun arrayNoDuplicates!0 (array!85605 (_ BitVec 32) List!29474) Bool)

(assert (=> b!1291166 (= res!857901 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29471))))

(assert (= (and start!109212 res!857899) b!1291156))

(assert (= (and b!1291156 res!857906) b!1291155))

(assert (= (and b!1291155 res!857902) b!1291166))

(assert (= (and b!1291166 res!857901) b!1291158))

(assert (= (and b!1291158 res!857903) b!1291163))

(assert (= (and b!1291163 res!857905) b!1291159))

(assert (= (and b!1291159 res!857907) b!1291164))

(assert (= (and b!1291164 res!857904) b!1291161))

(assert (= (and b!1291161 (not res!857900)) b!1291162))

(assert (= (and b!1291165 condMapEmpty!53018) mapIsEmpty!53018))

(assert (= (and b!1291165 (not condMapEmpty!53018)) mapNonEmpty!53018))

(get-info :version)

(assert (= (and mapNonEmpty!53018 ((_ is ValueCellFull!16254) mapValue!53018)) b!1291160))

(assert (= (and b!1291165 ((_ is ValueCellFull!16254) mapDefault!53018)) b!1291157))

(assert (= start!109212 b!1291165))

(declare-fun m!1183881 () Bool)

(assert (=> b!1291164 m!1183881))

(assert (=> b!1291164 m!1183881))

(declare-fun m!1183883 () Bool)

(assert (=> b!1291164 m!1183883))

(declare-fun m!1183885 () Bool)

(assert (=> start!109212 m!1183885))

(declare-fun m!1183887 () Bool)

(assert (=> start!109212 m!1183887))

(declare-fun m!1183889 () Bool)

(assert (=> start!109212 m!1183889))

(declare-fun m!1183891 () Bool)

(assert (=> b!1291161 m!1183891))

(declare-fun m!1183893 () Bool)

(assert (=> b!1291161 m!1183893))

(declare-fun m!1183895 () Bool)

(assert (=> b!1291155 m!1183895))

(declare-fun m!1183897 () Bool)

(assert (=> b!1291162 m!1183897))

(declare-fun m!1183899 () Bool)

(assert (=> b!1291162 m!1183899))

(declare-fun m!1183901 () Bool)

(assert (=> b!1291162 m!1183901))

(declare-fun m!1183903 () Bool)

(assert (=> b!1291162 m!1183903))

(assert (=> b!1291162 m!1183901))

(declare-fun m!1183905 () Bool)

(assert (=> b!1291162 m!1183905))

(declare-fun m!1183907 () Bool)

(assert (=> b!1291162 m!1183907))

(declare-fun m!1183909 () Bool)

(assert (=> b!1291162 m!1183909))

(declare-fun m!1183911 () Bool)

(assert (=> b!1291162 m!1183911))

(declare-fun m!1183913 () Bool)

(assert (=> mapNonEmpty!53018 m!1183913))

(declare-fun m!1183915 () Bool)

(assert (=> b!1291163 m!1183915))

(assert (=> b!1291163 m!1183915))

(declare-fun m!1183917 () Bool)

(assert (=> b!1291163 m!1183917))

(declare-fun m!1183919 () Bool)

(assert (=> b!1291166 m!1183919))

(check-sat tp_is_empty!34305 b_and!46765 (not b!1291163) (not b!1291155) (not b!1291164) (not b!1291161) (not b!1291162) (not b!1291166) (not mapNonEmpty!53018) (not b_next!28665) (not start!109212))
(check-sat b_and!46765 (not b_next!28665))
