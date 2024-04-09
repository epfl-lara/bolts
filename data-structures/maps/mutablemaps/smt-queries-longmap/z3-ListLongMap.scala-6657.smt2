; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83944 () Bool)

(assert start!83944)

(declare-fun b_free!19725 () Bool)

(declare-fun b_next!19725 () Bool)

(assert (=> start!83944 (= b_free!19725 (not b_next!19725))))

(declare-fun tp!68617 () Bool)

(declare-fun b_and!31557 () Bool)

(assert (=> start!83944 (= tp!68617 b_and!31557)))

(declare-fun b!980581 () Bool)

(declare-fun e!552723 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980581 (= e!552723 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000))))

(declare-datatypes ((V!35275 0))(
  ( (V!35276 (val!11410 Int)) )
))
(declare-datatypes ((tuple2!14748 0))(
  ( (tuple2!14749 (_1!7384 (_ BitVec 64)) (_2!7384 V!35275)) )
))
(declare-fun lt!435513 () tuple2!14748)

(declare-datatypes ((List!20639 0))(
  ( (Nil!20636) (Cons!20635 (h!21797 tuple2!14748) (t!29328 List!20639)) )
))
(declare-datatypes ((ListLongMap!13459 0))(
  ( (ListLongMap!13460 (toList!6745 List!20639)) )
))
(declare-fun lt!435507 () ListLongMap!13459)

(declare-fun lt!435512 () ListLongMap!13459)

(declare-fun lt!435508 () tuple2!14748)

(declare-fun +!2951 (ListLongMap!13459 tuple2!14748) ListLongMap!13459)

(assert (=> b!980581 (= lt!435512 (+!2951 (+!2951 lt!435507 lt!435508) lt!435513))))

(declare-fun zeroValue!1220 () V!35275)

(declare-datatypes ((Unit!32577 0))(
  ( (Unit!32578) )
))
(declare-fun lt!435514 () Unit!32577)

(declare-datatypes ((array!61445 0))(
  ( (array!61446 (arr!29576 (Array (_ BitVec 32) (_ BitVec 64))) (size!30056 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61445)

(declare-fun lt!435506 () V!35275)

(declare-fun addCommutativeForDiffKeys!613 (ListLongMap!13459 (_ BitVec 64) V!35275 (_ BitVec 64) V!35275) Unit!32577)

(assert (=> b!980581 (= lt!435514 (addCommutativeForDiffKeys!613 lt!435507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29576 _keys!1544) from!1932) lt!435506))))

(declare-fun b!980582 () Bool)

(declare-fun e!552724 () Bool)

(declare-fun e!552726 () Bool)

(declare-fun mapRes!36107 () Bool)

(assert (=> b!980582 (= e!552724 (and e!552726 mapRes!36107))))

(declare-fun condMapEmpty!36107 () Bool)

(declare-datatypes ((ValueCell!10878 0))(
  ( (ValueCellFull!10878 (v!13972 V!35275)) (EmptyCell!10878) )
))
(declare-datatypes ((array!61447 0))(
  ( (array!61448 (arr!29577 (Array (_ BitVec 32) ValueCell!10878)) (size!30057 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61447)

(declare-fun mapDefault!36107 () ValueCell!10878)

(assert (=> b!980582 (= condMapEmpty!36107 (= (arr!29577 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10878)) mapDefault!36107)))))

(declare-fun b!980583 () Bool)

(declare-fun res!656369 () Bool)

(declare-fun e!552728 () Bool)

(assert (=> b!980583 (=> (not res!656369) (not e!552728))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980583 (= res!656369 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!656366 () Bool)

(assert (=> start!83944 (=> (not res!656366) (not e!552728))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83944 (= res!656366 (validMask!0 mask!1948))))

(assert (=> start!83944 e!552728))

(assert (=> start!83944 true))

(declare-fun tp_is_empty!22719 () Bool)

(assert (=> start!83944 tp_is_empty!22719))

(declare-fun array_inv!22751 (array!61447) Bool)

(assert (=> start!83944 (and (array_inv!22751 _values!1278) e!552724)))

(assert (=> start!83944 tp!68617))

(declare-fun array_inv!22752 (array!61445) Bool)

(assert (=> start!83944 (array_inv!22752 _keys!1544)))

(declare-fun b!980584 () Bool)

(declare-fun res!656364 () Bool)

(assert (=> b!980584 (=> (not res!656364) (not e!552728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61445 (_ BitVec 32)) Bool)

(assert (=> b!980584 (= res!656364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980585 () Bool)

(declare-fun e!552725 () Bool)

(assert (=> b!980585 (= e!552725 tp_is_empty!22719)))

(declare-fun b!980586 () Bool)

(declare-fun res!656368 () Bool)

(assert (=> b!980586 (=> (not res!656368) (not e!552728))))

(declare-datatypes ((List!20640 0))(
  ( (Nil!20637) (Cons!20636 (h!21798 (_ BitVec 64)) (t!29329 List!20640)) )
))
(declare-fun arrayNoDuplicates!0 (array!61445 (_ BitVec 32) List!20640) Bool)

(assert (=> b!980586 (= res!656368 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20637))))

(declare-fun b!980587 () Bool)

(assert (=> b!980587 (= e!552726 tp_is_empty!22719)))

(declare-fun mapNonEmpty!36107 () Bool)

(declare-fun tp!68618 () Bool)

(assert (=> mapNonEmpty!36107 (= mapRes!36107 (and tp!68618 e!552725))))

(declare-fun mapValue!36107 () ValueCell!10878)

(declare-fun mapRest!36107 () (Array (_ BitVec 32) ValueCell!10878))

(declare-fun mapKey!36107 () (_ BitVec 32))

(assert (=> mapNonEmpty!36107 (= (arr!29577 _values!1278) (store mapRest!36107 mapKey!36107 mapValue!36107))))

(declare-fun b!980588 () Bool)

(declare-fun res!656365 () Bool)

(assert (=> b!980588 (=> (not res!656365) (not e!552728))))

(assert (=> b!980588 (= res!656365 (and (= (size!30057 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30056 _keys!1544) (size!30057 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980589 () Bool)

(assert (=> b!980589 (= e!552728 (not e!552723))))

(declare-fun res!656367 () Bool)

(assert (=> b!980589 (=> res!656367 e!552723)))

(assert (=> b!980589 (= res!656367 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29576 _keys!1544) from!1932)))))

(declare-fun lt!435505 () ListLongMap!13459)

(declare-fun lt!435511 () tuple2!14748)

(assert (=> b!980589 (= (+!2951 lt!435505 lt!435508) (+!2951 lt!435512 lt!435511))))

(declare-fun lt!435510 () ListLongMap!13459)

(assert (=> b!980589 (= lt!435512 (+!2951 lt!435510 lt!435508))))

(assert (=> b!980589 (= lt!435508 (tuple2!14749 (select (arr!29576 _keys!1544) from!1932) lt!435506))))

(assert (=> b!980589 (= lt!435505 (+!2951 lt!435510 lt!435511))))

(declare-fun minValue!1220 () V!35275)

(assert (=> b!980589 (= lt!435511 (tuple2!14749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435509 () Unit!32577)

(assert (=> b!980589 (= lt!435509 (addCommutativeForDiffKeys!613 lt!435510 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29576 _keys!1544) from!1932) lt!435506))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15355 (ValueCell!10878 V!35275) V!35275)

(declare-fun dynLambda!1782 (Int (_ BitVec 64)) V!35275)

(assert (=> b!980589 (= lt!435506 (get!15355 (select (arr!29577 _values!1278) from!1932) (dynLambda!1782 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980589 (= lt!435510 (+!2951 lt!435507 lt!435513))))

(assert (=> b!980589 (= lt!435513 (tuple2!14749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3407 (array!61445 array!61447 (_ BitVec 32) (_ BitVec 32) V!35275 V!35275 (_ BitVec 32) Int) ListLongMap!13459)

(assert (=> b!980589 (= lt!435507 (getCurrentListMapNoExtraKeys!3407 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!36107 () Bool)

(assert (=> mapIsEmpty!36107 mapRes!36107))

(declare-fun b!980590 () Bool)

(declare-fun res!656370 () Bool)

(assert (=> b!980590 (=> (not res!656370) (not e!552728))))

(assert (=> b!980590 (= res!656370 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30056 _keys!1544))))))

(declare-fun b!980591 () Bool)

(declare-fun res!656363 () Bool)

(assert (=> b!980591 (=> (not res!656363) (not e!552728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980591 (= res!656363 (validKeyInArray!0 (select (arr!29576 _keys!1544) from!1932)))))

(assert (= (and start!83944 res!656366) b!980588))

(assert (= (and b!980588 res!656365) b!980584))

(assert (= (and b!980584 res!656364) b!980586))

(assert (= (and b!980586 res!656368) b!980590))

(assert (= (and b!980590 res!656370) b!980591))

(assert (= (and b!980591 res!656363) b!980583))

(assert (= (and b!980583 res!656369) b!980589))

(assert (= (and b!980589 (not res!656367)) b!980581))

(assert (= (and b!980582 condMapEmpty!36107) mapIsEmpty!36107))

(assert (= (and b!980582 (not condMapEmpty!36107)) mapNonEmpty!36107))

(get-info :version)

(assert (= (and mapNonEmpty!36107 ((_ is ValueCellFull!10878) mapValue!36107)) b!980585))

(assert (= (and b!980582 ((_ is ValueCellFull!10878) mapDefault!36107)) b!980587))

(assert (= start!83944 b!980582))

(declare-fun b_lambda!14799 () Bool)

(assert (=> (not b_lambda!14799) (not b!980589)))

(declare-fun t!29327 () Bool)

(declare-fun tb!6539 () Bool)

(assert (=> (and start!83944 (= defaultEntry!1281 defaultEntry!1281) t!29327) tb!6539))

(declare-fun result!13059 () Bool)

(assert (=> tb!6539 (= result!13059 tp_is_empty!22719)))

(assert (=> b!980589 t!29327))

(declare-fun b_and!31559 () Bool)

(assert (= b_and!31557 (and (=> t!29327 result!13059) b_and!31559)))

(declare-fun m!908255 () Bool)

(assert (=> b!980581 m!908255))

(assert (=> b!980581 m!908255))

(declare-fun m!908257 () Bool)

(assert (=> b!980581 m!908257))

(declare-fun m!908259 () Bool)

(assert (=> b!980581 m!908259))

(assert (=> b!980581 m!908259))

(declare-fun m!908261 () Bool)

(assert (=> b!980581 m!908261))

(assert (=> b!980589 m!908259))

(declare-fun m!908263 () Bool)

(assert (=> b!980589 m!908263))

(declare-fun m!908265 () Bool)

(assert (=> b!980589 m!908265))

(declare-fun m!908267 () Bool)

(assert (=> b!980589 m!908267))

(declare-fun m!908269 () Bool)

(assert (=> b!980589 m!908269))

(declare-fun m!908271 () Bool)

(assert (=> b!980589 m!908271))

(declare-fun m!908273 () Bool)

(assert (=> b!980589 m!908273))

(declare-fun m!908275 () Bool)

(assert (=> b!980589 m!908275))

(assert (=> b!980589 m!908259))

(declare-fun m!908277 () Bool)

(assert (=> b!980589 m!908277))

(declare-fun m!908279 () Bool)

(assert (=> b!980589 m!908279))

(assert (=> b!980589 m!908263))

(assert (=> b!980589 m!908279))

(declare-fun m!908281 () Bool)

(assert (=> b!980589 m!908281))

(declare-fun m!908283 () Bool)

(assert (=> start!83944 m!908283))

(declare-fun m!908285 () Bool)

(assert (=> start!83944 m!908285))

(declare-fun m!908287 () Bool)

(assert (=> start!83944 m!908287))

(declare-fun m!908289 () Bool)

(assert (=> mapNonEmpty!36107 m!908289))

(declare-fun m!908291 () Bool)

(assert (=> b!980584 m!908291))

(declare-fun m!908293 () Bool)

(assert (=> b!980586 m!908293))

(assert (=> b!980591 m!908259))

(assert (=> b!980591 m!908259))

(declare-fun m!908295 () Bool)

(assert (=> b!980591 m!908295))

(check-sat tp_is_empty!22719 (not start!83944) (not b!980584) (not b_lambda!14799) (not b!980591) (not mapNonEmpty!36107) (not b!980586) b_and!31559 (not b!980581) (not b_next!19725) (not b!980589))
(check-sat b_and!31559 (not b_next!19725))
