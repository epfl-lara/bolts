; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83860 () Bool)

(assert start!83860)

(declare-fun b_free!19641 () Bool)

(declare-fun b_next!19641 () Bool)

(assert (=> start!83860 (= b_free!19641 (not b_next!19641))))

(declare-fun tp!68366 () Bool)

(declare-fun b_and!31389 () Bool)

(assert (=> start!83860 (= tp!68366 b_and!31389)))

(declare-fun b!979111 () Bool)

(declare-fun e!551968 () Bool)

(declare-fun e!551967 () Bool)

(assert (=> b!979111 (= e!551968 (not e!551967))))

(declare-fun res!655355 () Bool)

(assert (=> b!979111 (=> res!655355 e!551967)))

(declare-datatypes ((array!61283 0))(
  ( (array!61284 (arr!29495 (Array (_ BitVec 32) (_ BitVec 64))) (size!29975 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61283)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979111 (= res!655355 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29495 _keys!1544) from!1932)))))

(declare-datatypes ((V!35163 0))(
  ( (V!35164 (val!11368 Int)) )
))
(declare-datatypes ((tuple2!14678 0))(
  ( (tuple2!14679 (_1!7349 (_ BitVec 64)) (_2!7349 V!35163)) )
))
(declare-datatypes ((List!20574 0))(
  ( (Nil!20571) (Cons!20570 (h!21732 tuple2!14678) (t!29179 List!20574)) )
))
(declare-datatypes ((ListLongMap!13389 0))(
  ( (ListLongMap!13390 (toList!6710 List!20574)) )
))
(declare-fun lt!434249 () ListLongMap!13389)

(declare-fun lt!434245 () tuple2!14678)

(declare-fun lt!434252 () ListLongMap!13389)

(declare-fun lt!434247 () tuple2!14678)

(declare-fun +!2916 (ListLongMap!13389 tuple2!14678) ListLongMap!13389)

(assert (=> b!979111 (= (+!2916 lt!434249 lt!434247) (+!2916 lt!434252 lt!434245))))

(declare-fun lt!434250 () ListLongMap!13389)

(assert (=> b!979111 (= lt!434252 (+!2916 lt!434250 lt!434247))))

(declare-fun lt!434246 () V!35163)

(assert (=> b!979111 (= lt!434247 (tuple2!14679 (select (arr!29495 _keys!1544) from!1932) lt!434246))))

(assert (=> b!979111 (= lt!434249 (+!2916 lt!434250 lt!434245))))

(declare-fun minValue!1220 () V!35163)

(assert (=> b!979111 (= lt!434245 (tuple2!14679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32507 0))(
  ( (Unit!32508) )
))
(declare-fun lt!434251 () Unit!32507)

(declare-fun addCommutativeForDiffKeys!578 (ListLongMap!13389 (_ BitVec 64) V!35163 (_ BitVec 64) V!35163) Unit!32507)

(assert (=> b!979111 (= lt!434251 (addCommutativeForDiffKeys!578 lt!434250 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29495 _keys!1544) from!1932) lt!434246))))

(declare-datatypes ((ValueCell!10836 0))(
  ( (ValueCellFull!10836 (v!13930 V!35163)) (EmptyCell!10836) )
))
(declare-datatypes ((array!61285 0))(
  ( (array!61286 (arr!29496 (Array (_ BitVec 32) ValueCell!10836)) (size!29976 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61285)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15297 (ValueCell!10836 V!35163) V!35163)

(declare-fun dynLambda!1752 (Int (_ BitVec 64)) V!35163)

(assert (=> b!979111 (= lt!434246 (get!15297 (select (arr!29496 _values!1278) from!1932) (dynLambda!1752 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434253 () ListLongMap!13389)

(declare-fun lt!434254 () tuple2!14678)

(assert (=> b!979111 (= lt!434250 (+!2916 lt!434253 lt!434254))))

(declare-fun zeroValue!1220 () V!35163)

(assert (=> b!979111 (= lt!434254 (tuple2!14679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3377 (array!61283 array!61285 (_ BitVec 32) (_ BitVec 32) V!35163 V!35163 (_ BitVec 32) Int) ListLongMap!13389)

(assert (=> b!979111 (= lt!434253 (getCurrentListMapNoExtraKeys!3377 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979112 () Bool)

(declare-fun res!655362 () Bool)

(assert (=> b!979112 (=> (not res!655362) (not e!551968))))

(assert (=> b!979112 (= res!655362 (and (= (size!29976 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29975 _keys!1544) (size!29976 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979113 () Bool)

(declare-fun res!655357 () Bool)

(assert (=> b!979113 (=> (not res!655357) (not e!551968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61283 (_ BitVec 32)) Bool)

(assert (=> b!979113 (= res!655357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35981 () Bool)

(declare-fun mapRes!35981 () Bool)

(assert (=> mapIsEmpty!35981 mapRes!35981))

(declare-fun b!979114 () Bool)

(declare-fun e!551971 () Bool)

(declare-fun tp_is_empty!22635 () Bool)

(assert (=> b!979114 (= e!551971 tp_is_empty!22635)))

(declare-fun b!979115 () Bool)

(declare-fun res!655358 () Bool)

(assert (=> b!979115 (=> (not res!655358) (not e!551968))))

(assert (=> b!979115 (= res!655358 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29975 _keys!1544))))))

(declare-fun res!655356 () Bool)

(assert (=> start!83860 (=> (not res!655356) (not e!551968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83860 (= res!655356 (validMask!0 mask!1948))))

(assert (=> start!83860 e!551968))

(assert (=> start!83860 true))

(assert (=> start!83860 tp_is_empty!22635))

(declare-fun e!551970 () Bool)

(declare-fun array_inv!22701 (array!61285) Bool)

(assert (=> start!83860 (and (array_inv!22701 _values!1278) e!551970)))

(assert (=> start!83860 tp!68366))

(declare-fun array_inv!22702 (array!61283) Bool)

(assert (=> start!83860 (array_inv!22702 _keys!1544)))

(declare-fun b!979116 () Bool)

(declare-fun e!551972 () Bool)

(assert (=> b!979116 (= e!551972 tp_is_empty!22635)))

(declare-fun b!979117 () Bool)

(declare-fun res!655361 () Bool)

(assert (=> b!979117 (=> (not res!655361) (not e!551968))))

(assert (=> b!979117 (= res!655361 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979118 () Bool)

(assert (=> b!979118 (= e!551967 true)))

(assert (=> b!979118 (= lt!434252 (+!2916 (+!2916 lt!434253 lt!434247) lt!434254))))

(declare-fun lt!434248 () Unit!32507)

(assert (=> b!979118 (= lt!434248 (addCommutativeForDiffKeys!578 lt!434253 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29495 _keys!1544) from!1932) lt!434246))))

(declare-fun b!979119 () Bool)

(declare-fun res!655360 () Bool)

(assert (=> b!979119 (=> (not res!655360) (not e!551968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979119 (= res!655360 (validKeyInArray!0 (select (arr!29495 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!35981 () Bool)

(declare-fun tp!68365 () Bool)

(assert (=> mapNonEmpty!35981 (= mapRes!35981 (and tp!68365 e!551971))))

(declare-fun mapKey!35981 () (_ BitVec 32))

(declare-fun mapRest!35981 () (Array (_ BitVec 32) ValueCell!10836))

(declare-fun mapValue!35981 () ValueCell!10836)

(assert (=> mapNonEmpty!35981 (= (arr!29496 _values!1278) (store mapRest!35981 mapKey!35981 mapValue!35981))))

(declare-fun b!979120 () Bool)

(assert (=> b!979120 (= e!551970 (and e!551972 mapRes!35981))))

(declare-fun condMapEmpty!35981 () Bool)

(declare-fun mapDefault!35981 () ValueCell!10836)

(assert (=> b!979120 (= condMapEmpty!35981 (= (arr!29496 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10836)) mapDefault!35981)))))

(declare-fun b!979121 () Bool)

(declare-fun res!655359 () Bool)

(assert (=> b!979121 (=> (not res!655359) (not e!551968))))

(declare-datatypes ((List!20575 0))(
  ( (Nil!20572) (Cons!20571 (h!21733 (_ BitVec 64)) (t!29180 List!20575)) )
))
(declare-fun arrayNoDuplicates!0 (array!61283 (_ BitVec 32) List!20575) Bool)

(assert (=> b!979121 (= res!655359 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20572))))

(assert (= (and start!83860 res!655356) b!979112))

(assert (= (and b!979112 res!655362) b!979113))

(assert (= (and b!979113 res!655357) b!979121))

(assert (= (and b!979121 res!655359) b!979115))

(assert (= (and b!979115 res!655358) b!979119))

(assert (= (and b!979119 res!655360) b!979117))

(assert (= (and b!979117 res!655361) b!979111))

(assert (= (and b!979111 (not res!655355)) b!979118))

(assert (= (and b!979120 condMapEmpty!35981) mapIsEmpty!35981))

(assert (= (and b!979120 (not condMapEmpty!35981)) mapNonEmpty!35981))

(get-info :version)

(assert (= (and mapNonEmpty!35981 ((_ is ValueCellFull!10836) mapValue!35981)) b!979114))

(assert (= (and b!979120 ((_ is ValueCellFull!10836) mapDefault!35981)) b!979116))

(assert (= start!83860 b!979120))

(declare-fun b_lambda!14715 () Bool)

(assert (=> (not b_lambda!14715) (not b!979111)))

(declare-fun t!29178 () Bool)

(declare-fun tb!6455 () Bool)

(assert (=> (and start!83860 (= defaultEntry!1281 defaultEntry!1281) t!29178) tb!6455))

(declare-fun result!12891 () Bool)

(assert (=> tb!6455 (= result!12891 tp_is_empty!22635)))

(assert (=> b!979111 t!29178))

(declare-fun b_and!31391 () Bool)

(assert (= b_and!31389 (and (=> t!29178 result!12891) b_and!31391)))

(declare-fun m!906491 () Bool)

(assert (=> b!979119 m!906491))

(assert (=> b!979119 m!906491))

(declare-fun m!906493 () Bool)

(assert (=> b!979119 m!906493))

(declare-fun m!906495 () Bool)

(assert (=> b!979121 m!906495))

(declare-fun m!906497 () Bool)

(assert (=> mapNonEmpty!35981 m!906497))

(declare-fun m!906499 () Bool)

(assert (=> b!979113 m!906499))

(declare-fun m!906501 () Bool)

(assert (=> start!83860 m!906501))

(declare-fun m!906503 () Bool)

(assert (=> start!83860 m!906503))

(declare-fun m!906505 () Bool)

(assert (=> start!83860 m!906505))

(declare-fun m!906507 () Bool)

(assert (=> b!979111 m!906507))

(assert (=> b!979111 m!906491))

(declare-fun m!906509 () Bool)

(assert (=> b!979111 m!906509))

(declare-fun m!906511 () Bool)

(assert (=> b!979111 m!906511))

(declare-fun m!906513 () Bool)

(assert (=> b!979111 m!906513))

(declare-fun m!906515 () Bool)

(assert (=> b!979111 m!906515))

(declare-fun m!906517 () Bool)

(assert (=> b!979111 m!906517))

(declare-fun m!906519 () Bool)

(assert (=> b!979111 m!906519))

(assert (=> b!979111 m!906491))

(declare-fun m!906521 () Bool)

(assert (=> b!979111 m!906521))

(declare-fun m!906523 () Bool)

(assert (=> b!979111 m!906523))

(assert (=> b!979111 m!906509))

(assert (=> b!979111 m!906523))

(declare-fun m!906525 () Bool)

(assert (=> b!979111 m!906525))

(declare-fun m!906527 () Bool)

(assert (=> b!979118 m!906527))

(assert (=> b!979118 m!906527))

(declare-fun m!906529 () Bool)

(assert (=> b!979118 m!906529))

(assert (=> b!979118 m!906491))

(assert (=> b!979118 m!906491))

(declare-fun m!906531 () Bool)

(assert (=> b!979118 m!906531))

(check-sat (not b_next!19641) (not b!979119) (not mapNonEmpty!35981) (not b!979111) (not b!979113) b_and!31391 tp_is_empty!22635 (not start!83860) (not b!979121) (not b!979118) (not b_lambda!14715))
(check-sat b_and!31391 (not b_next!19641))
