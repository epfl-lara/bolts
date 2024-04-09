; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109176 () Bool)

(assert start!109176)

(declare-fun b_free!28629 () Bool)

(declare-fun b_next!28629 () Bool)

(assert (=> start!109176 (= b_free!28629 (not b_next!28629))))

(declare-fun tp!101007 () Bool)

(declare-fun b_and!46729 () Bool)

(assert (=> start!109176 (= tp!101007 b_and!46729)))

(declare-fun b!1290507 () Bool)

(declare-fun res!857421 () Bool)

(declare-fun e!736772 () Bool)

(assert (=> b!1290507 (=> (not res!857421) (not e!736772))))

(declare-datatypes ((array!85535 0))(
  ( (array!85536 (arr!41264 (Array (_ BitVec 32) (_ BitVec 64))) (size!41815 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85535)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290507 (= res!857421 (not (validKeyInArray!0 (select (arr!41264 _keys!1741) from!2144))))))

(declare-fun b!1290508 () Bool)

(declare-fun res!857414 () Bool)

(assert (=> b!1290508 (=> (not res!857414) (not e!736772))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85535 (_ BitVec 32)) Bool)

(assert (=> b!1290508 (= res!857414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290509 () Bool)

(declare-fun e!736775 () Bool)

(assert (=> b!1290509 (= e!736775 true)))

(assert (=> b!1290509 false))

(declare-datatypes ((V!50795 0))(
  ( (V!50796 (val!17209 Int)) )
))
(declare-fun minValue!1387 () V!50795)

(declare-datatypes ((tuple2!22252 0))(
  ( (tuple2!22253 (_1!11136 (_ BitVec 64)) (_2!11136 V!50795)) )
))
(declare-datatypes ((List!29448 0))(
  ( (Nil!29445) (Cons!29444 (h!30653 tuple2!22252) (t!43019 List!29448)) )
))
(declare-datatypes ((ListLongMap!19921 0))(
  ( (ListLongMap!19922 (toList!9976 List!29448)) )
))
(declare-fun lt!578645 () ListLongMap!19921)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!42641 0))(
  ( (Unit!42642) )
))
(declare-fun lt!578646 () Unit!42641)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!38 ((_ BitVec 64) (_ BitVec 64) V!50795 ListLongMap!19921) Unit!42641)

(assert (=> b!1290509 (= lt!578646 (lemmaInListMapAfterAddingDiffThenInBefore!38 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578645))))

(declare-fun lt!578648 () ListLongMap!19921)

(declare-fun contains!8032 (ListLongMap!19921 (_ BitVec 64)) Bool)

(declare-fun +!4343 (ListLongMap!19921 tuple2!22252) ListLongMap!19921)

(assert (=> b!1290509 (not (contains!8032 (+!4343 lt!578648 (tuple2!22253 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578647 () Unit!42641)

(declare-fun addStillNotContains!388 (ListLongMap!19921 (_ BitVec 64) V!50795 (_ BitVec 64)) Unit!42641)

(assert (=> b!1290509 (= lt!578647 (addStillNotContains!388 lt!578648 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290509 (not (contains!8032 lt!578645 k0!1205))))

(declare-fun zeroValue!1387 () V!50795)

(assert (=> b!1290509 (= lt!578645 (+!4343 lt!578648 (tuple2!22253 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578650 () Unit!42641)

(assert (=> b!1290509 (= lt!578650 (addStillNotContains!388 lt!578648 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-datatypes ((ValueCell!16236 0))(
  ( (ValueCellFull!16236 (v!19810 V!50795)) (EmptyCell!16236) )
))
(declare-datatypes ((array!85537 0))(
  ( (array!85538 (arr!41265 (Array (_ BitVec 32) ValueCell!16236)) (size!41816 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85537)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6055 (array!85535 array!85537 (_ BitVec 32) (_ BitVec 32) V!50795 V!50795 (_ BitVec 32) Int) ListLongMap!19921)

(assert (=> b!1290509 (= lt!578648 (getCurrentListMapNoExtraKeys!6055 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290510 () Bool)

(declare-fun e!736774 () Bool)

(declare-fun tp_is_empty!34269 () Bool)

(assert (=> b!1290510 (= e!736774 tp_is_empty!34269)))

(declare-fun b!1290511 () Bool)

(declare-fun res!857420 () Bool)

(assert (=> b!1290511 (=> (not res!857420) (not e!736772))))

(assert (=> b!1290511 (= res!857420 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41815 _keys!1741))))))

(declare-fun b!1290512 () Bool)

(declare-fun e!736777 () Bool)

(declare-fun mapRes!52964 () Bool)

(assert (=> b!1290512 (= e!736777 (and e!736774 mapRes!52964))))

(declare-fun condMapEmpty!52964 () Bool)

(declare-fun mapDefault!52964 () ValueCell!16236)

(assert (=> b!1290512 (= condMapEmpty!52964 (= (arr!41265 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16236)) mapDefault!52964)))))

(declare-fun b!1290513 () Bool)

(declare-fun e!736773 () Bool)

(assert (=> b!1290513 (= e!736773 tp_is_empty!34269)))

(declare-fun b!1290514 () Bool)

(declare-fun res!857418 () Bool)

(assert (=> b!1290514 (=> (not res!857418) (not e!736772))))

(declare-fun getCurrentListMap!4976 (array!85535 array!85537 (_ BitVec 32) (_ BitVec 32) V!50795 V!50795 (_ BitVec 32) Int) ListLongMap!19921)

(assert (=> b!1290514 (= res!857418 (contains!8032 (getCurrentListMap!4976 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290515 () Bool)

(declare-fun res!857417 () Bool)

(assert (=> b!1290515 (=> (not res!857417) (not e!736772))))

(assert (=> b!1290515 (= res!857417 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41815 _keys!1741))))))

(declare-fun b!1290516 () Bool)

(declare-fun res!857419 () Bool)

(assert (=> b!1290516 (=> (not res!857419) (not e!736772))))

(declare-datatypes ((List!29449 0))(
  ( (Nil!29446) (Cons!29445 (h!30654 (_ BitVec 64)) (t!43020 List!29449)) )
))
(declare-fun arrayNoDuplicates!0 (array!85535 (_ BitVec 32) List!29449) Bool)

(assert (=> b!1290516 (= res!857419 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29446))))

(declare-fun b!1290517 () Bool)

(assert (=> b!1290517 (= e!736772 (not e!736775))))

(declare-fun res!857415 () Bool)

(assert (=> b!1290517 (=> res!857415 e!736775)))

(assert (=> b!1290517 (= res!857415 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290517 (not (contains!8032 (ListLongMap!19922 Nil!29445) k0!1205))))

(declare-fun lt!578649 () Unit!42641)

(declare-fun emptyContainsNothing!81 ((_ BitVec 64)) Unit!42641)

(assert (=> b!1290517 (= lt!578649 (emptyContainsNothing!81 k0!1205))))

(declare-fun mapNonEmpty!52964 () Bool)

(declare-fun tp!101006 () Bool)

(assert (=> mapNonEmpty!52964 (= mapRes!52964 (and tp!101006 e!736773))))

(declare-fun mapRest!52964 () (Array (_ BitVec 32) ValueCell!16236))

(declare-fun mapValue!52964 () ValueCell!16236)

(declare-fun mapKey!52964 () (_ BitVec 32))

(assert (=> mapNonEmpty!52964 (= (arr!41265 _values!1445) (store mapRest!52964 mapKey!52964 mapValue!52964))))

(declare-fun b!1290518 () Bool)

(declare-fun res!857416 () Bool)

(assert (=> b!1290518 (=> (not res!857416) (not e!736772))))

(assert (=> b!1290518 (= res!857416 (and (= (size!41816 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41815 _keys!1741) (size!41816 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!857413 () Bool)

(assert (=> start!109176 (=> (not res!857413) (not e!736772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109176 (= res!857413 (validMask!0 mask!2175))))

(assert (=> start!109176 e!736772))

(assert (=> start!109176 tp_is_empty!34269))

(assert (=> start!109176 true))

(declare-fun array_inv!31247 (array!85537) Bool)

(assert (=> start!109176 (and (array_inv!31247 _values!1445) e!736777)))

(declare-fun array_inv!31248 (array!85535) Bool)

(assert (=> start!109176 (array_inv!31248 _keys!1741)))

(assert (=> start!109176 tp!101007))

(declare-fun mapIsEmpty!52964 () Bool)

(assert (=> mapIsEmpty!52964 mapRes!52964))

(assert (= (and start!109176 res!857413) b!1290518))

(assert (= (and b!1290518 res!857416) b!1290508))

(assert (= (and b!1290508 res!857414) b!1290516))

(assert (= (and b!1290516 res!857419) b!1290515))

(assert (= (and b!1290515 res!857417) b!1290514))

(assert (= (and b!1290514 res!857418) b!1290511))

(assert (= (and b!1290511 res!857420) b!1290507))

(assert (= (and b!1290507 res!857421) b!1290517))

(assert (= (and b!1290517 (not res!857415)) b!1290509))

(assert (= (and b!1290512 condMapEmpty!52964) mapIsEmpty!52964))

(assert (= (and b!1290512 (not condMapEmpty!52964)) mapNonEmpty!52964))

(get-info :version)

(assert (= (and mapNonEmpty!52964 ((_ is ValueCellFull!16236) mapValue!52964)) b!1290513))

(assert (= (and b!1290512 ((_ is ValueCellFull!16236) mapDefault!52964)) b!1290510))

(assert (= start!109176 b!1290512))

(declare-fun m!1183161 () Bool)

(assert (=> mapNonEmpty!52964 m!1183161))

(declare-fun m!1183163 () Bool)

(assert (=> b!1290508 m!1183163))

(declare-fun m!1183165 () Bool)

(assert (=> b!1290509 m!1183165))

(declare-fun m!1183167 () Bool)

(assert (=> b!1290509 m!1183167))

(declare-fun m!1183169 () Bool)

(assert (=> b!1290509 m!1183169))

(declare-fun m!1183171 () Bool)

(assert (=> b!1290509 m!1183171))

(assert (=> b!1290509 m!1183169))

(declare-fun m!1183173 () Bool)

(assert (=> b!1290509 m!1183173))

(declare-fun m!1183175 () Bool)

(assert (=> b!1290509 m!1183175))

(declare-fun m!1183177 () Bool)

(assert (=> b!1290509 m!1183177))

(declare-fun m!1183179 () Bool)

(assert (=> b!1290509 m!1183179))

(declare-fun m!1183181 () Bool)

(assert (=> start!109176 m!1183181))

(declare-fun m!1183183 () Bool)

(assert (=> start!109176 m!1183183))

(declare-fun m!1183185 () Bool)

(assert (=> start!109176 m!1183185))

(declare-fun m!1183187 () Bool)

(assert (=> b!1290514 m!1183187))

(assert (=> b!1290514 m!1183187))

(declare-fun m!1183189 () Bool)

(assert (=> b!1290514 m!1183189))

(declare-fun m!1183191 () Bool)

(assert (=> b!1290516 m!1183191))

(declare-fun m!1183193 () Bool)

(assert (=> b!1290507 m!1183193))

(assert (=> b!1290507 m!1183193))

(declare-fun m!1183195 () Bool)

(assert (=> b!1290507 m!1183195))

(declare-fun m!1183197 () Bool)

(assert (=> b!1290517 m!1183197))

(declare-fun m!1183199 () Bool)

(assert (=> b!1290517 m!1183199))

(check-sat (not start!109176) (not b!1290517) (not b!1290508) b_and!46729 (not b_next!28629) (not b!1290509) (not b!1290507) (not b!1290514) tp_is_empty!34269 (not mapNonEmpty!52964) (not b!1290516))
(check-sat b_and!46729 (not b_next!28629))
