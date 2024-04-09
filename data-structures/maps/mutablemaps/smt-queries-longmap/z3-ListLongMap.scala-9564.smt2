; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113284 () Bool)

(assert start!113284)

(declare-fun b_free!31299 () Bool)

(declare-fun b_next!31299 () Bool)

(assert (=> start!113284 (= b_free!31299 (not b_next!31299))))

(declare-fun tp!109702 () Bool)

(declare-fun b_and!50515 () Bool)

(assert (=> start!113284 (= tp!109702 b_and!50515)))

(declare-fun mapIsEmpty!57655 () Bool)

(declare-fun mapRes!57655 () Bool)

(assert (=> mapIsEmpty!57655 mapRes!57655))

(declare-fun b!1343475 () Bool)

(declare-fun e!764694 () Bool)

(declare-fun e!764693 () Bool)

(assert (=> b!1343475 (= e!764694 (and e!764693 mapRes!57655))))

(declare-fun condMapEmpty!57655 () Bool)

(declare-datatypes ((V!54835 0))(
  ( (V!54836 (val!18724 Int)) )
))
(declare-datatypes ((ValueCell!17751 0))(
  ( (ValueCellFull!17751 (v!21370 V!54835)) (EmptyCell!17751) )
))
(declare-datatypes ((array!91397 0))(
  ( (array!91398 (arr!44150 (Array (_ BitVec 32) ValueCell!17751)) (size!44701 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91397)

(declare-fun mapDefault!57655 () ValueCell!17751)

(assert (=> b!1343475 (= condMapEmpty!57655 (= (arr!44150 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17751)) mapDefault!57655)))))

(declare-fun b!1343476 () Bool)

(declare-fun res!891457 () Bool)

(declare-fun e!764696 () Bool)

(assert (=> b!1343476 (=> (not res!891457) (not e!764696))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343476 (= res!891457 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343477 () Bool)

(declare-fun res!891460 () Bool)

(assert (=> b!1343477 (=> (not res!891460) (not e!764696))))

(declare-datatypes ((array!91399 0))(
  ( (array!91400 (arr!44151 (Array (_ BitVec 32) (_ BitVec 64))) (size!44702 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91399)

(declare-datatypes ((List!31449 0))(
  ( (Nil!31446) (Cons!31445 (h!32654 (_ BitVec 64)) (t!45966 List!31449)) )
))
(declare-fun arrayNoDuplicates!0 (array!91399 (_ BitVec 32) List!31449) Bool)

(assert (=> b!1343477 (= res!891460 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31446))))

(declare-fun b!1343478 () Bool)

(declare-fun res!891456 () Bool)

(assert (=> b!1343478 (=> (not res!891456) (not e!764696))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343478 (= res!891456 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44702 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343479 () Bool)

(declare-fun res!891459 () Bool)

(assert (=> b!1343479 (=> (not res!891459) (not e!764696))))

(declare-fun minValue!1245 () V!54835)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54835)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24272 0))(
  ( (tuple2!24273 (_1!12146 (_ BitVec 64)) (_2!12146 V!54835)) )
))
(declare-datatypes ((List!31450 0))(
  ( (Nil!31447) (Cons!31446 (h!32655 tuple2!24272) (t!45967 List!31450)) )
))
(declare-datatypes ((ListLongMap!21941 0))(
  ( (ListLongMap!21942 (toList!10986 List!31450)) )
))
(declare-fun contains!9098 (ListLongMap!21941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5881 (array!91399 array!91397 (_ BitVec 32) (_ BitVec 32) V!54835 V!54835 (_ BitVec 32) Int) ListLongMap!21941)

(assert (=> b!1343479 (= res!891459 (contains!9098 (getCurrentListMap!5881 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343480 () Bool)

(declare-fun res!891461 () Bool)

(assert (=> b!1343480 (=> (not res!891461) (not e!764696))))

(assert (=> b!1343480 (= res!891461 (not (= (select (arr!44151 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1343481 () Bool)

(declare-fun res!891454 () Bool)

(assert (=> b!1343481 (=> (not res!891454) (not e!764696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343481 (= res!891454 (validKeyInArray!0 (select (arr!44151 _keys!1571) from!1960)))))

(declare-fun b!1343482 () Bool)

(declare-fun tp_is_empty!37299 () Bool)

(assert (=> b!1343482 (= e!764693 tp_is_empty!37299)))

(declare-fun b!1343474 () Bool)

(declare-fun res!891455 () Bool)

(assert (=> b!1343474 (=> (not res!891455) (not e!764696))))

(assert (=> b!1343474 (= res!891455 (and (= (size!44701 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44702 _keys!1571) (size!44701 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!891458 () Bool)

(assert (=> start!113284 (=> (not res!891458) (not e!764696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113284 (= res!891458 (validMask!0 mask!1977))))

(assert (=> start!113284 e!764696))

(assert (=> start!113284 tp_is_empty!37299))

(assert (=> start!113284 true))

(declare-fun array_inv!33195 (array!91399) Bool)

(assert (=> start!113284 (array_inv!33195 _keys!1571)))

(declare-fun array_inv!33196 (array!91397) Bool)

(assert (=> start!113284 (and (array_inv!33196 _values!1303) e!764694)))

(assert (=> start!113284 tp!109702))

(declare-fun b!1343483 () Bool)

(assert (=> b!1343483 (= e!764696 (not true))))

(declare-fun lt!594921 () ListLongMap!21941)

(declare-fun +!4784 (ListLongMap!21941 tuple2!24272) ListLongMap!21941)

(assert (=> b!1343483 (contains!9098 (+!4784 lt!594921 (tuple2!24273 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44033 0))(
  ( (Unit!44034) )
))
(declare-fun lt!594922 () Unit!44033)

(declare-fun addStillContains!1210 (ListLongMap!21941 (_ BitVec 64) V!54835 (_ BitVec 64)) Unit!44033)

(assert (=> b!1343483 (= lt!594922 (addStillContains!1210 lt!594921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343483 (contains!9098 lt!594921 k0!1142)))

(declare-fun lt!594920 () V!54835)

(declare-fun lt!594925 () Unit!44033)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!376 ((_ BitVec 64) (_ BitVec 64) V!54835 ListLongMap!21941) Unit!44033)

(assert (=> b!1343483 (= lt!594925 (lemmaInListMapAfterAddingDiffThenInBefore!376 k0!1142 (select (arr!44151 _keys!1571) from!1960) lt!594920 lt!594921))))

(declare-fun lt!594923 () ListLongMap!21941)

(assert (=> b!1343483 (contains!9098 lt!594923 k0!1142)))

(declare-fun lt!594924 () Unit!44033)

(assert (=> b!1343483 (= lt!594924 (lemmaInListMapAfterAddingDiffThenInBefore!376 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594923))))

(assert (=> b!1343483 (= lt!594923 (+!4784 lt!594921 (tuple2!24273 (select (arr!44151 _keys!1571) from!1960) lt!594920)))))

(declare-fun get!22345 (ValueCell!17751 V!54835) V!54835)

(declare-fun dynLambda!3821 (Int (_ BitVec 64)) V!54835)

(assert (=> b!1343483 (= lt!594920 (get!22345 (select (arr!44150 _values!1303) from!1960) (dynLambda!3821 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6507 (array!91399 array!91397 (_ BitVec 32) (_ BitVec 32) V!54835 V!54835 (_ BitVec 32) Int) ListLongMap!21941)

(assert (=> b!1343483 (= lt!594921 (getCurrentListMapNoExtraKeys!6507 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapNonEmpty!57655 () Bool)

(declare-fun tp!109703 () Bool)

(declare-fun e!764692 () Bool)

(assert (=> mapNonEmpty!57655 (= mapRes!57655 (and tp!109703 e!764692))))

(declare-fun mapKey!57655 () (_ BitVec 32))

(declare-fun mapValue!57655 () ValueCell!17751)

(declare-fun mapRest!57655 () (Array (_ BitVec 32) ValueCell!17751))

(assert (=> mapNonEmpty!57655 (= (arr!44150 _values!1303) (store mapRest!57655 mapKey!57655 mapValue!57655))))

(declare-fun b!1343484 () Bool)

(declare-fun res!891453 () Bool)

(assert (=> b!1343484 (=> (not res!891453) (not e!764696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91399 (_ BitVec 32)) Bool)

(assert (=> b!1343484 (= res!891453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343485 () Bool)

(assert (=> b!1343485 (= e!764692 tp_is_empty!37299)))

(assert (= (and start!113284 res!891458) b!1343474))

(assert (= (and b!1343474 res!891455) b!1343484))

(assert (= (and b!1343484 res!891453) b!1343477))

(assert (= (and b!1343477 res!891460) b!1343478))

(assert (= (and b!1343478 res!891456) b!1343479))

(assert (= (and b!1343479 res!891459) b!1343480))

(assert (= (and b!1343480 res!891461) b!1343481))

(assert (= (and b!1343481 res!891454) b!1343476))

(assert (= (and b!1343476 res!891457) b!1343483))

(assert (= (and b!1343475 condMapEmpty!57655) mapIsEmpty!57655))

(assert (= (and b!1343475 (not condMapEmpty!57655)) mapNonEmpty!57655))

(get-info :version)

(assert (= (and mapNonEmpty!57655 ((_ is ValueCellFull!17751) mapValue!57655)) b!1343485))

(assert (= (and b!1343475 ((_ is ValueCellFull!17751) mapDefault!57655)) b!1343482))

(assert (= start!113284 b!1343475))

(declare-fun b_lambda!24485 () Bool)

(assert (=> (not b_lambda!24485) (not b!1343483)))

(declare-fun t!45965 () Bool)

(declare-fun tb!12321 () Bool)

(assert (=> (and start!113284 (= defaultEntry!1306 defaultEntry!1306) t!45965) tb!12321))

(declare-fun result!25725 () Bool)

(assert (=> tb!12321 (= result!25725 tp_is_empty!37299)))

(assert (=> b!1343483 t!45965))

(declare-fun b_and!50517 () Bool)

(assert (= b_and!50515 (and (=> t!45965 result!25725) b_and!50517)))

(declare-fun m!1231251 () Bool)

(assert (=> start!113284 m!1231251))

(declare-fun m!1231253 () Bool)

(assert (=> start!113284 m!1231253))

(declare-fun m!1231255 () Bool)

(assert (=> start!113284 m!1231255))

(declare-fun m!1231257 () Bool)

(assert (=> b!1343480 m!1231257))

(declare-fun m!1231259 () Bool)

(assert (=> b!1343477 m!1231259))

(declare-fun m!1231261 () Bool)

(assert (=> b!1343483 m!1231261))

(declare-fun m!1231263 () Bool)

(assert (=> b!1343483 m!1231263))

(declare-fun m!1231265 () Bool)

(assert (=> b!1343483 m!1231265))

(assert (=> b!1343483 m!1231257))

(declare-fun m!1231267 () Bool)

(assert (=> b!1343483 m!1231267))

(declare-fun m!1231269 () Bool)

(assert (=> b!1343483 m!1231269))

(declare-fun m!1231271 () Bool)

(assert (=> b!1343483 m!1231271))

(assert (=> b!1343483 m!1231263))

(declare-fun m!1231273 () Bool)

(assert (=> b!1343483 m!1231273))

(declare-fun m!1231275 () Bool)

(assert (=> b!1343483 m!1231275))

(declare-fun m!1231277 () Bool)

(assert (=> b!1343483 m!1231277))

(assert (=> b!1343483 m!1231257))

(assert (=> b!1343483 m!1231269))

(declare-fun m!1231279 () Bool)

(assert (=> b!1343483 m!1231279))

(declare-fun m!1231281 () Bool)

(assert (=> b!1343483 m!1231281))

(assert (=> b!1343483 m!1231261))

(declare-fun m!1231283 () Bool)

(assert (=> b!1343483 m!1231283))

(assert (=> b!1343481 m!1231257))

(assert (=> b!1343481 m!1231257))

(declare-fun m!1231285 () Bool)

(assert (=> b!1343481 m!1231285))

(declare-fun m!1231287 () Bool)

(assert (=> b!1343484 m!1231287))

(declare-fun m!1231289 () Bool)

(assert (=> mapNonEmpty!57655 m!1231289))

(declare-fun m!1231291 () Bool)

(assert (=> b!1343479 m!1231291))

(assert (=> b!1343479 m!1231291))

(declare-fun m!1231293 () Bool)

(assert (=> b!1343479 m!1231293))

(check-sat (not b!1343477) (not b_lambda!24485) (not b!1343484) (not b_next!31299) (not b!1343479) (not mapNonEmpty!57655) (not b!1343483) b_and!50517 (not start!113284) (not b!1343481) tp_is_empty!37299)
(check-sat b_and!50517 (not b_next!31299))
