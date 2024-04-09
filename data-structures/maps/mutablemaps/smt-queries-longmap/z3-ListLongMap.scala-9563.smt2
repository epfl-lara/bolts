; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113278 () Bool)

(assert start!113278)

(declare-fun b_free!31293 () Bool)

(declare-fun b_next!31293 () Bool)

(assert (=> start!113278 (= b_free!31293 (not b_next!31293))))

(declare-fun tp!109685 () Bool)

(declare-fun b_and!50503 () Bool)

(assert (=> start!113278 (= tp!109685 b_and!50503)))

(declare-fun b!1343360 () Bool)

(declare-fun res!891372 () Bool)

(declare-fun e!764650 () Bool)

(assert (=> b!1343360 (=> (not res!891372) (not e!764650))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343360 (= res!891372 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57646 () Bool)

(declare-fun mapRes!57646 () Bool)

(assert (=> mapIsEmpty!57646 mapRes!57646))

(declare-fun b!1343361 () Bool)

(declare-fun res!891376 () Bool)

(assert (=> b!1343361 (=> (not res!891376) (not e!764650))))

(declare-datatypes ((V!54827 0))(
  ( (V!54828 (val!18721 Int)) )
))
(declare-fun minValue!1245 () V!54827)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91387 0))(
  ( (array!91388 (arr!44145 (Array (_ BitVec 32) (_ BitVec 64))) (size!44696 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91387)

(declare-fun zeroValue!1245 () V!54827)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17748 0))(
  ( (ValueCellFull!17748 (v!21367 V!54827)) (EmptyCell!17748) )
))
(declare-datatypes ((array!91389 0))(
  ( (array!91390 (arr!44146 (Array (_ BitVec 32) ValueCell!17748)) (size!44697 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91389)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24268 0))(
  ( (tuple2!24269 (_1!12144 (_ BitVec 64)) (_2!12144 V!54827)) )
))
(declare-datatypes ((List!31445 0))(
  ( (Nil!31442) (Cons!31441 (h!32650 tuple2!24268) (t!45956 List!31445)) )
))
(declare-datatypes ((ListLongMap!21937 0))(
  ( (ListLongMap!21938 (toList!10984 List!31445)) )
))
(declare-fun contains!9096 (ListLongMap!21937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5879 (array!91387 array!91389 (_ BitVec 32) (_ BitVec 32) V!54827 V!54827 (_ BitVec 32) Int) ListLongMap!21937)

(assert (=> b!1343361 (= res!891376 (contains!9096 (getCurrentListMap!5879 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343362 () Bool)

(declare-fun e!764648 () Bool)

(declare-fun tp_is_empty!37293 () Bool)

(assert (=> b!1343362 (= e!764648 tp_is_empty!37293)))

(declare-fun b!1343363 () Bool)

(declare-fun res!891375 () Bool)

(assert (=> b!1343363 (=> (not res!891375) (not e!764650))))

(declare-datatypes ((List!31446 0))(
  ( (Nil!31443) (Cons!31442 (h!32651 (_ BitVec 64)) (t!45957 List!31446)) )
))
(declare-fun arrayNoDuplicates!0 (array!91387 (_ BitVec 32) List!31446) Bool)

(assert (=> b!1343363 (= res!891375 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31443))))

(declare-fun b!1343364 () Bool)

(declare-fun e!764649 () Bool)

(assert (=> b!1343364 (= e!764649 tp_is_empty!37293)))

(declare-fun res!891374 () Bool)

(assert (=> start!113278 (=> (not res!891374) (not e!764650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113278 (= res!891374 (validMask!0 mask!1977))))

(assert (=> start!113278 e!764650))

(assert (=> start!113278 tp_is_empty!37293))

(assert (=> start!113278 true))

(declare-fun array_inv!33193 (array!91387) Bool)

(assert (=> start!113278 (array_inv!33193 _keys!1571)))

(declare-fun e!764647 () Bool)

(declare-fun array_inv!33194 (array!91389) Bool)

(assert (=> start!113278 (and (array_inv!33194 _values!1303) e!764647)))

(assert (=> start!113278 tp!109685))

(declare-fun b!1343365 () Bool)

(declare-fun res!891373 () Bool)

(assert (=> b!1343365 (=> (not res!891373) (not e!764650))))

(assert (=> b!1343365 (= res!891373 (not (= (select (arr!44145 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1343366 () Bool)

(declare-fun res!891380 () Bool)

(assert (=> b!1343366 (=> (not res!891380) (not e!764650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91387 (_ BitVec 32)) Bool)

(assert (=> b!1343366 (= res!891380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343367 () Bool)

(declare-fun res!891377 () Bool)

(assert (=> b!1343367 (=> (not res!891377) (not e!764650))))

(assert (=> b!1343367 (= res!891377 (and (= (size!44697 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44696 _keys!1571) (size!44697 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343368 () Bool)

(declare-fun res!891379 () Bool)

(assert (=> b!1343368 (=> (not res!891379) (not e!764650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343368 (= res!891379 (validKeyInArray!0 (select (arr!44145 _keys!1571) from!1960)))))

(declare-fun b!1343369 () Bool)

(declare-fun res!891378 () Bool)

(assert (=> b!1343369 (=> (not res!891378) (not e!764650))))

(assert (=> b!1343369 (= res!891378 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44696 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57646 () Bool)

(declare-fun tp!109684 () Bool)

(assert (=> mapNonEmpty!57646 (= mapRes!57646 (and tp!109684 e!764649))))

(declare-fun mapKey!57646 () (_ BitVec 32))

(declare-fun mapRest!57646 () (Array (_ BitVec 32) ValueCell!17748))

(declare-fun mapValue!57646 () ValueCell!17748)

(assert (=> mapNonEmpty!57646 (= (arr!44146 _values!1303) (store mapRest!57646 mapKey!57646 mapValue!57646))))

(declare-fun b!1343370 () Bool)

(assert (=> b!1343370 (= e!764650 (not true))))

(declare-fun lt!594867 () ListLongMap!21937)

(declare-fun +!4782 (ListLongMap!21937 tuple2!24268) ListLongMap!21937)

(assert (=> b!1343370 (contains!9096 (+!4782 lt!594867 (tuple2!24269 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44029 0))(
  ( (Unit!44030) )
))
(declare-fun lt!594866 () Unit!44029)

(declare-fun addStillContains!1208 (ListLongMap!21937 (_ BitVec 64) V!54827 (_ BitVec 64)) Unit!44029)

(assert (=> b!1343370 (= lt!594866 (addStillContains!1208 lt!594867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343370 (contains!9096 lt!594867 k0!1142)))

(declare-fun lt!594871 () V!54827)

(declare-fun lt!594868 () Unit!44029)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!374 ((_ BitVec 64) (_ BitVec 64) V!54827 ListLongMap!21937) Unit!44029)

(assert (=> b!1343370 (= lt!594868 (lemmaInListMapAfterAddingDiffThenInBefore!374 k0!1142 (select (arr!44145 _keys!1571) from!1960) lt!594871 lt!594867))))

(declare-fun lt!594869 () ListLongMap!21937)

(assert (=> b!1343370 (contains!9096 lt!594869 k0!1142)))

(declare-fun lt!594870 () Unit!44029)

(assert (=> b!1343370 (= lt!594870 (lemmaInListMapAfterAddingDiffThenInBefore!374 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594869))))

(assert (=> b!1343370 (= lt!594869 (+!4782 lt!594867 (tuple2!24269 (select (arr!44145 _keys!1571) from!1960) lt!594871)))))

(declare-fun get!22341 (ValueCell!17748 V!54827) V!54827)

(declare-fun dynLambda!3819 (Int (_ BitVec 64)) V!54827)

(assert (=> b!1343370 (= lt!594871 (get!22341 (select (arr!44146 _values!1303) from!1960) (dynLambda!3819 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6505 (array!91387 array!91389 (_ BitVec 32) (_ BitVec 32) V!54827 V!54827 (_ BitVec 32) Int) ListLongMap!21937)

(assert (=> b!1343370 (= lt!594867 (getCurrentListMapNoExtraKeys!6505 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343371 () Bool)

(assert (=> b!1343371 (= e!764647 (and e!764648 mapRes!57646))))

(declare-fun condMapEmpty!57646 () Bool)

(declare-fun mapDefault!57646 () ValueCell!17748)

(assert (=> b!1343371 (= condMapEmpty!57646 (= (arr!44146 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17748)) mapDefault!57646)))))

(assert (= (and start!113278 res!891374) b!1343367))

(assert (= (and b!1343367 res!891377) b!1343366))

(assert (= (and b!1343366 res!891380) b!1343363))

(assert (= (and b!1343363 res!891375) b!1343369))

(assert (= (and b!1343369 res!891378) b!1343361))

(assert (= (and b!1343361 res!891376) b!1343365))

(assert (= (and b!1343365 res!891373) b!1343368))

(assert (= (and b!1343368 res!891379) b!1343360))

(assert (= (and b!1343360 res!891372) b!1343370))

(assert (= (and b!1343371 condMapEmpty!57646) mapIsEmpty!57646))

(assert (= (and b!1343371 (not condMapEmpty!57646)) mapNonEmpty!57646))

(get-info :version)

(assert (= (and mapNonEmpty!57646 ((_ is ValueCellFull!17748) mapValue!57646)) b!1343364))

(assert (= (and b!1343371 ((_ is ValueCellFull!17748) mapDefault!57646)) b!1343362))

(assert (= start!113278 b!1343371))

(declare-fun b_lambda!24479 () Bool)

(assert (=> (not b_lambda!24479) (not b!1343370)))

(declare-fun t!45955 () Bool)

(declare-fun tb!12315 () Bool)

(assert (=> (and start!113278 (= defaultEntry!1306 defaultEntry!1306) t!45955) tb!12315))

(declare-fun result!25713 () Bool)

(assert (=> tb!12315 (= result!25713 tp_is_empty!37293)))

(assert (=> b!1343370 t!45955))

(declare-fun b_and!50505 () Bool)

(assert (= b_and!50503 (and (=> t!45955 result!25713) b_and!50505)))

(declare-fun m!1231119 () Bool)

(assert (=> mapNonEmpty!57646 m!1231119))

(declare-fun m!1231121 () Bool)

(assert (=> b!1343366 m!1231121))

(declare-fun m!1231123 () Bool)

(assert (=> b!1343368 m!1231123))

(assert (=> b!1343368 m!1231123))

(declare-fun m!1231125 () Bool)

(assert (=> b!1343368 m!1231125))

(declare-fun m!1231127 () Bool)

(assert (=> b!1343361 m!1231127))

(assert (=> b!1343361 m!1231127))

(declare-fun m!1231129 () Bool)

(assert (=> b!1343361 m!1231129))

(declare-fun m!1231131 () Bool)

(assert (=> b!1343363 m!1231131))

(declare-fun m!1231133 () Bool)

(assert (=> b!1343370 m!1231133))

(declare-fun m!1231135 () Bool)

(assert (=> b!1343370 m!1231135))

(declare-fun m!1231137 () Bool)

(assert (=> b!1343370 m!1231137))

(declare-fun m!1231139 () Bool)

(assert (=> b!1343370 m!1231139))

(declare-fun m!1231141 () Bool)

(assert (=> b!1343370 m!1231141))

(declare-fun m!1231143 () Bool)

(assert (=> b!1343370 m!1231143))

(declare-fun m!1231145 () Bool)

(assert (=> b!1343370 m!1231145))

(assert (=> b!1343370 m!1231143))

(declare-fun m!1231147 () Bool)

(assert (=> b!1343370 m!1231147))

(assert (=> b!1343370 m!1231139))

(declare-fun m!1231149 () Bool)

(assert (=> b!1343370 m!1231149))

(assert (=> b!1343370 m!1231123))

(declare-fun m!1231151 () Bool)

(assert (=> b!1343370 m!1231151))

(assert (=> b!1343370 m!1231123))

(declare-fun m!1231153 () Bool)

(assert (=> b!1343370 m!1231153))

(declare-fun m!1231155 () Bool)

(assert (=> b!1343370 m!1231155))

(assert (=> b!1343370 m!1231137))

(declare-fun m!1231157 () Bool)

(assert (=> start!113278 m!1231157))

(declare-fun m!1231159 () Bool)

(assert (=> start!113278 m!1231159))

(declare-fun m!1231161 () Bool)

(assert (=> start!113278 m!1231161))

(assert (=> b!1343365 m!1231123))

(check-sat (not mapNonEmpty!57646) (not b!1343361) b_and!50505 (not b!1343370) tp_is_empty!37293 (not b!1343363) (not b!1343366) (not b_lambda!24479) (not start!113278) (not b_next!31293) (not b!1343368))
(check-sat b_and!50505 (not b_next!31293))
