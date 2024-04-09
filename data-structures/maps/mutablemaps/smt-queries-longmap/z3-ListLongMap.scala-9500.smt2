; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112704 () Bool)

(assert start!112704)

(declare-fun b_free!31005 () Bool)

(declare-fun b_next!31005 () Bool)

(assert (=> start!112704 (= b_free!31005 (not b_next!31005))))

(declare-fun tp!108656 () Bool)

(declare-fun b_and!49957 () Bool)

(assert (=> start!112704 (= tp!108656 b_and!49957)))

(declare-fun mapIsEmpty!57050 () Bool)

(declare-fun mapRes!57050 () Bool)

(assert (=> mapIsEmpty!57050 mapRes!57050))

(declare-fun b!1336304 () Bool)

(declare-fun e!761037 () Bool)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((V!54323 0))(
  ( (V!54324 (val!18532 Int)) )
))
(declare-datatypes ((ValueCell!17559 0))(
  ( (ValueCellFull!17559 (v!21170 V!54323)) (EmptyCell!17559) )
))
(declare-datatypes ((array!90663 0))(
  ( (array!90664 (arr!43792 (Array (_ BitVec 32) ValueCell!17559)) (size!44343 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90663)

(assert (=> b!1336304 (= e!761037 (not (bvslt from!1980 (size!44343 _values!1320))))))

(declare-datatypes ((tuple2!24054 0))(
  ( (tuple2!24055 (_1!12037 (_ BitVec 64)) (_2!12037 V!54323)) )
))
(declare-datatypes ((List!31222 0))(
  ( (Nil!31219) (Cons!31218 (h!32427 tuple2!24054) (t!45515 List!31222)) )
))
(declare-datatypes ((ListLongMap!21723 0))(
  ( (ListLongMap!21724 (toList!10877 List!31222)) )
))
(declare-fun lt!592700 () ListLongMap!21723)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8978 (ListLongMap!21723 (_ BitVec 64)) Bool)

(assert (=> b!1336304 (contains!8978 lt!592700 k0!1153)))

(declare-datatypes ((Unit!43852 0))(
  ( (Unit!43853) )
))
(declare-fun lt!592701 () Unit!43852)

(declare-fun minValue!1262 () V!54323)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!310 ((_ BitVec 64) (_ BitVec 64) V!54323 ListLongMap!21723) Unit!43852)

(assert (=> b!1336304 (= lt!592701 (lemmaInListMapAfterAddingDiffThenInBefore!310 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592700))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90665 0))(
  ( (array!90666 (arr!43793 (Array (_ BitVec 32) (_ BitVec 64))) (size!44344 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90665)

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54323)

(declare-fun +!4709 (ListLongMap!21723 tuple2!24054) ListLongMap!21723)

(declare-fun getCurrentListMapNoExtraKeys!6432 (array!90665 array!90663 (_ BitVec 32) (_ BitVec 32) V!54323 V!54323 (_ BitVec 32) Int) ListLongMap!21723)

(declare-fun get!22132 (ValueCell!17559 V!54323) V!54323)

(declare-fun dynLambda!3746 (Int (_ BitVec 64)) V!54323)

(assert (=> b!1336304 (= lt!592700 (+!4709 (getCurrentListMapNoExtraKeys!6432 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24055 (select (arr!43793 _keys!1590) from!1980) (get!22132 (select (arr!43792 _values!1320) from!1980) (dynLambda!3746 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!886903 () Bool)

(assert (=> start!112704 (=> (not res!886903) (not e!761037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112704 (= res!886903 (validMask!0 mask!1998))))

(assert (=> start!112704 e!761037))

(declare-fun e!761036 () Bool)

(declare-fun array_inv!32961 (array!90663) Bool)

(assert (=> start!112704 (and (array_inv!32961 _values!1320) e!761036)))

(assert (=> start!112704 true))

(declare-fun array_inv!32962 (array!90665) Bool)

(assert (=> start!112704 (array_inv!32962 _keys!1590)))

(assert (=> start!112704 tp!108656))

(declare-fun tp_is_empty!36915 () Bool)

(assert (=> start!112704 tp_is_empty!36915))

(declare-fun b!1336305 () Bool)

(declare-fun res!886902 () Bool)

(assert (=> b!1336305 (=> (not res!886902) (not e!761037))))

(declare-fun getCurrentListMap!5785 (array!90665 array!90663 (_ BitVec 32) (_ BitVec 32) V!54323 V!54323 (_ BitVec 32) Int) ListLongMap!21723)

(assert (=> b!1336305 (= res!886902 (contains!8978 (getCurrentListMap!5785 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1336306 () Bool)

(declare-fun e!761035 () Bool)

(assert (=> b!1336306 (= e!761035 tp_is_empty!36915)))

(declare-fun b!1336307 () Bool)

(declare-fun res!886907 () Bool)

(assert (=> b!1336307 (=> (not res!886907) (not e!761037))))

(assert (=> b!1336307 (= res!886907 (and (= (size!44343 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44344 _keys!1590) (size!44343 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336308 () Bool)

(declare-fun e!761034 () Bool)

(assert (=> b!1336308 (= e!761036 (and e!761034 mapRes!57050))))

(declare-fun condMapEmpty!57050 () Bool)

(declare-fun mapDefault!57050 () ValueCell!17559)

(assert (=> b!1336308 (= condMapEmpty!57050 (= (arr!43792 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17559)) mapDefault!57050)))))

(declare-fun b!1336309 () Bool)

(declare-fun res!886905 () Bool)

(assert (=> b!1336309 (=> (not res!886905) (not e!761037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90665 (_ BitVec 32)) Bool)

(assert (=> b!1336309 (= res!886905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336310 () Bool)

(declare-fun res!886901 () Bool)

(assert (=> b!1336310 (=> (not res!886901) (not e!761037))))

(assert (=> b!1336310 (= res!886901 (not (= (select (arr!43793 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336311 () Bool)

(declare-fun res!886904 () Bool)

(assert (=> b!1336311 (=> (not res!886904) (not e!761037))))

(assert (=> b!1336311 (= res!886904 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44344 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336312 () Bool)

(declare-fun res!886909 () Bool)

(assert (=> b!1336312 (=> (not res!886909) (not e!761037))))

(declare-datatypes ((List!31223 0))(
  ( (Nil!31220) (Cons!31219 (h!32428 (_ BitVec 64)) (t!45516 List!31223)) )
))
(declare-fun arrayNoDuplicates!0 (array!90665 (_ BitVec 32) List!31223) Bool)

(assert (=> b!1336312 (= res!886909 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31220))))

(declare-fun b!1336313 () Bool)

(declare-fun res!886908 () Bool)

(assert (=> b!1336313 (=> (not res!886908) (not e!761037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336313 (= res!886908 (validKeyInArray!0 (select (arr!43793 _keys!1590) from!1980)))))

(declare-fun b!1336314 () Bool)

(assert (=> b!1336314 (= e!761034 tp_is_empty!36915)))

(declare-fun b!1336315 () Bool)

(declare-fun res!886906 () Bool)

(assert (=> b!1336315 (=> (not res!886906) (not e!761037))))

(assert (=> b!1336315 (= res!886906 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57050 () Bool)

(declare-fun tp!108657 () Bool)

(assert (=> mapNonEmpty!57050 (= mapRes!57050 (and tp!108657 e!761035))))

(declare-fun mapKey!57050 () (_ BitVec 32))

(declare-fun mapValue!57050 () ValueCell!17559)

(declare-fun mapRest!57050 () (Array (_ BitVec 32) ValueCell!17559))

(assert (=> mapNonEmpty!57050 (= (arr!43792 _values!1320) (store mapRest!57050 mapKey!57050 mapValue!57050))))

(assert (= (and start!112704 res!886903) b!1336307))

(assert (= (and b!1336307 res!886907) b!1336309))

(assert (= (and b!1336309 res!886905) b!1336312))

(assert (= (and b!1336312 res!886909) b!1336311))

(assert (= (and b!1336311 res!886904) b!1336305))

(assert (= (and b!1336305 res!886902) b!1336310))

(assert (= (and b!1336310 res!886901) b!1336313))

(assert (= (and b!1336313 res!886908) b!1336315))

(assert (= (and b!1336315 res!886906) b!1336304))

(assert (= (and b!1336308 condMapEmpty!57050) mapIsEmpty!57050))

(assert (= (and b!1336308 (not condMapEmpty!57050)) mapNonEmpty!57050))

(get-info :version)

(assert (= (and mapNonEmpty!57050 ((_ is ValueCellFull!17559) mapValue!57050)) b!1336306))

(assert (= (and b!1336308 ((_ is ValueCellFull!17559) mapDefault!57050)) b!1336314))

(assert (= start!112704 b!1336308))

(declare-fun b_lambda!24173 () Bool)

(assert (=> (not b_lambda!24173) (not b!1336304)))

(declare-fun t!45514 () Bool)

(declare-fun tb!12097 () Bool)

(assert (=> (and start!112704 (= defaultEntry!1323 defaultEntry!1323) t!45514) tb!12097))

(declare-fun result!25259 () Bool)

(assert (=> tb!12097 (= result!25259 tp_is_empty!36915)))

(assert (=> b!1336304 t!45514))

(declare-fun b_and!49959 () Bool)

(assert (= b_and!49957 (and (=> t!45514 result!25259) b_and!49959)))

(declare-fun m!1224437 () Bool)

(assert (=> b!1336304 m!1224437))

(declare-fun m!1224439 () Bool)

(assert (=> b!1336304 m!1224439))

(declare-fun m!1224441 () Bool)

(assert (=> b!1336304 m!1224441))

(declare-fun m!1224443 () Bool)

(assert (=> b!1336304 m!1224443))

(assert (=> b!1336304 m!1224441))

(declare-fun m!1224445 () Bool)

(assert (=> b!1336304 m!1224445))

(declare-fun m!1224447 () Bool)

(assert (=> b!1336304 m!1224447))

(declare-fun m!1224449 () Bool)

(assert (=> b!1336304 m!1224449))

(assert (=> b!1336304 m!1224445))

(assert (=> b!1336304 m!1224439))

(declare-fun m!1224451 () Bool)

(assert (=> b!1336304 m!1224451))

(declare-fun m!1224453 () Bool)

(assert (=> mapNonEmpty!57050 m!1224453))

(assert (=> b!1336313 m!1224447))

(assert (=> b!1336313 m!1224447))

(declare-fun m!1224455 () Bool)

(assert (=> b!1336313 m!1224455))

(declare-fun m!1224457 () Bool)

(assert (=> start!112704 m!1224457))

(declare-fun m!1224459 () Bool)

(assert (=> start!112704 m!1224459))

(declare-fun m!1224461 () Bool)

(assert (=> start!112704 m!1224461))

(assert (=> b!1336310 m!1224447))

(declare-fun m!1224463 () Bool)

(assert (=> b!1336305 m!1224463))

(assert (=> b!1336305 m!1224463))

(declare-fun m!1224465 () Bool)

(assert (=> b!1336305 m!1224465))

(declare-fun m!1224467 () Bool)

(assert (=> b!1336312 m!1224467))

(declare-fun m!1224469 () Bool)

(assert (=> b!1336309 m!1224469))

(check-sat (not b_lambda!24173) (not b!1336312) (not b_next!31005) (not mapNonEmpty!57050) (not b!1336309) b_and!49959 (not start!112704) (not b!1336305) tp_is_empty!36915 (not b!1336304) (not b!1336313))
(check-sat b_and!49959 (not b_next!31005))
