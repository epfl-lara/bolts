; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83364 () Bool)

(assert start!83364)

(declare-fun b_free!19329 () Bool)

(declare-fun b_next!19329 () Bool)

(assert (=> start!83364 (= b_free!19329 (not b_next!19329))))

(declare-fun tp!67267 () Bool)

(declare-fun b_and!30897 () Bool)

(assert (=> start!83364 (= tp!67267 b_and!30897)))

(declare-fun mapNonEmpty!35350 () Bool)

(declare-fun mapRes!35350 () Bool)

(declare-fun tp!67266 () Bool)

(declare-fun e!548318 () Bool)

(assert (=> mapNonEmpty!35350 (= mapRes!35350 (and tp!67266 e!548318))))

(declare-datatypes ((V!34619 0))(
  ( (V!34620 (val!11164 Int)) )
))
(declare-datatypes ((ValueCell!10632 0))(
  ( (ValueCellFull!10632 (v!13723 V!34619)) (EmptyCell!10632) )
))
(declare-fun mapRest!35350 () (Array (_ BitVec 32) ValueCell!10632))

(declare-fun mapKey!35350 () (_ BitVec 32))

(declare-datatypes ((array!60481 0))(
  ( (array!60482 (arr!29100 (Array (_ BitVec 32) ValueCell!10632)) (size!29580 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60481)

(declare-fun mapValue!35350 () ValueCell!10632)

(assert (=> mapNonEmpty!35350 (= (arr!29100 _values!1425) (store mapRest!35350 mapKey!35350 mapValue!35350))))

(declare-fun b!972746 () Bool)

(declare-fun res!651236 () Bool)

(declare-fun e!548317 () Bool)

(assert (=> b!972746 (=> (not res!651236) (not e!548317))))

(declare-datatypes ((array!60483 0))(
  ( (array!60484 (arr!29101 (Array (_ BitVec 32) (_ BitVec 64))) (size!29581 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60483)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972746 (= res!651236 (validKeyInArray!0 (select (arr!29101 _keys!1717) i!822)))))

(declare-fun b!972747 () Bool)

(declare-fun e!548313 () Bool)

(declare-fun e!548315 () Bool)

(assert (=> b!972747 (= e!548313 (and e!548315 mapRes!35350))))

(declare-fun condMapEmpty!35350 () Bool)

(declare-fun mapDefault!35350 () ValueCell!10632)

(assert (=> b!972747 (= condMapEmpty!35350 (= (arr!29100 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10632)) mapDefault!35350)))))

(declare-fun b!972748 () Bool)

(declare-fun tp_is_empty!22227 () Bool)

(assert (=> b!972748 (= e!548318 tp_is_empty!22227)))

(declare-fun b!972749 () Bool)

(assert (=> b!972749 (= e!548315 tp_is_empty!22227)))

(declare-fun b!972750 () Bool)

(declare-fun res!651237 () Bool)

(assert (=> b!972750 (=> (not res!651237) (not e!548317))))

(declare-datatypes ((List!20310 0))(
  ( (Nil!20307) (Cons!20306 (h!21468 (_ BitVec 64)) (t!28745 List!20310)) )
))
(declare-fun arrayNoDuplicates!0 (array!60483 (_ BitVec 32) List!20310) Bool)

(assert (=> b!972750 (= res!651237 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20307))))

(declare-fun b!972752 () Bool)

(declare-fun res!651234 () Bool)

(assert (=> b!972752 (=> (not res!651234) (not e!548317))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!972752 (= res!651234 (and (= (size!29580 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29581 _keys!1717) (size!29580 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972753 () Bool)

(declare-fun e!548316 () Bool)

(assert (=> b!972753 (= e!548316 (not true))))

(declare-datatypes ((tuple2!14424 0))(
  ( (tuple2!14425 (_1!7222 (_ BitVec 64)) (_2!7222 V!34619)) )
))
(declare-fun lt!432124 () tuple2!14424)

(declare-datatypes ((List!20311 0))(
  ( (Nil!20308) (Cons!20307 (h!21469 tuple2!14424) (t!28746 List!20311)) )
))
(declare-datatypes ((ListLongMap!13135 0))(
  ( (ListLongMap!13136 (toList!6583 List!20311)) )
))
(declare-fun lt!432120 () ListLongMap!13135)

(declare-fun contains!5630 (ListLongMap!13135 (_ BitVec 64)) Bool)

(declare-fun +!2857 (ListLongMap!13135 tuple2!14424) ListLongMap!13135)

(assert (=> b!972753 (contains!5630 (+!2857 lt!432120 lt!432124) (select (arr!29101 _keys!1717) i!822))))

(declare-fun lt!432119 () (_ BitVec 64))

(declare-datatypes ((Unit!32375 0))(
  ( (Unit!32376) )
))
(declare-fun lt!432118 () Unit!32375)

(declare-fun lt!432122 () V!34619)

(declare-fun addStillContains!596 (ListLongMap!13135 (_ BitVec 64) V!34619 (_ BitVec 64)) Unit!32375)

(assert (=> b!972753 (= lt!432118 (addStillContains!596 lt!432120 lt!432119 lt!432122 (select (arr!29101 _keys!1717) i!822)))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34619)

(declare-fun zeroValue!1367 () V!34619)

(declare-fun lt!432121 () ListLongMap!13135)

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3768 (array!60483 array!60481 (_ BitVec 32) (_ BitVec 32) V!34619 V!34619 (_ BitVec 32) Int) ListLongMap!13135)

(assert (=> b!972753 (= lt!432121 (+!2857 (getCurrentListMap!3768 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432124))))

(assert (=> b!972753 (= lt!432124 (tuple2!14425 lt!432119 lt!432122))))

(declare-fun get!15102 (ValueCell!10632 V!34619) V!34619)

(declare-fun dynLambda!1696 (Int (_ BitVec 64)) V!34619)

(assert (=> b!972753 (= lt!432122 (get!15102 (select (arr!29100 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1696 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432123 () Unit!32375)

(declare-fun lemmaListMapRecursiveValidKeyArray!268 (array!60483 array!60481 (_ BitVec 32) (_ BitVec 32) V!34619 V!34619 (_ BitVec 32) Int) Unit!32375)

(assert (=> b!972753 (= lt!432123 (lemmaListMapRecursiveValidKeyArray!268 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972754 () Bool)

(declare-fun res!651241 () Bool)

(assert (=> b!972754 (=> (not res!651241) (not e!548317))))

(assert (=> b!972754 (= res!651241 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29581 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29581 _keys!1717))))))

(declare-fun b!972755 () Bool)

(declare-fun e!548314 () Bool)

(assert (=> b!972755 (= e!548317 e!548314)))

(declare-fun res!651238 () Bool)

(assert (=> b!972755 (=> (not res!651238) (not e!548314))))

(assert (=> b!972755 (= res!651238 (contains!5630 lt!432120 (select (arr!29101 _keys!1717) i!822)))))

(assert (=> b!972755 (= lt!432120 (getCurrentListMap!3768 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!972751 () Bool)

(declare-fun res!651235 () Bool)

(assert (=> b!972751 (=> (not res!651235) (not e!548317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60483 (_ BitVec 32)) Bool)

(assert (=> b!972751 (= res!651235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!651239 () Bool)

(assert (=> start!83364 (=> (not res!651239) (not e!548317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83364 (= res!651239 (validMask!0 mask!2147))))

(assert (=> start!83364 e!548317))

(assert (=> start!83364 true))

(declare-fun array_inv!22409 (array!60481) Bool)

(assert (=> start!83364 (and (array_inv!22409 _values!1425) e!548313)))

(assert (=> start!83364 tp_is_empty!22227))

(assert (=> start!83364 tp!67267))

(declare-fun array_inv!22410 (array!60483) Bool)

(assert (=> start!83364 (array_inv!22410 _keys!1717)))

(declare-fun b!972756 () Bool)

(assert (=> b!972756 (= e!548314 e!548316)))

(declare-fun res!651240 () Bool)

(assert (=> b!972756 (=> (not res!651240) (not e!548316))))

(assert (=> b!972756 (= res!651240 (validKeyInArray!0 lt!432119))))

(assert (=> b!972756 (= lt!432119 (select (arr!29101 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972756 (= lt!432121 (getCurrentListMap!3768 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35350 () Bool)

(assert (=> mapIsEmpty!35350 mapRes!35350))

(assert (= (and start!83364 res!651239) b!972752))

(assert (= (and b!972752 res!651234) b!972751))

(assert (= (and b!972751 res!651235) b!972750))

(assert (= (and b!972750 res!651237) b!972754))

(assert (= (and b!972754 res!651241) b!972746))

(assert (= (and b!972746 res!651236) b!972755))

(assert (= (and b!972755 res!651238) b!972756))

(assert (= (and b!972756 res!651240) b!972753))

(assert (= (and b!972747 condMapEmpty!35350) mapIsEmpty!35350))

(assert (= (and b!972747 (not condMapEmpty!35350)) mapNonEmpty!35350))

(get-info :version)

(assert (= (and mapNonEmpty!35350 ((_ is ValueCellFull!10632) mapValue!35350)) b!972748))

(assert (= (and b!972747 ((_ is ValueCellFull!10632) mapDefault!35350)) b!972749))

(assert (= start!83364 b!972747))

(declare-fun b_lambda!14523 () Bool)

(assert (=> (not b_lambda!14523) (not b!972753)))

(declare-fun t!28744 () Bool)

(declare-fun tb!6285 () Bool)

(assert (=> (and start!83364 (= defaultEntry!1428 defaultEntry!1428) t!28744) tb!6285))

(declare-fun result!12539 () Bool)

(assert (=> tb!6285 (= result!12539 tp_is_empty!22227)))

(assert (=> b!972753 t!28744))

(declare-fun b_and!30899 () Bool)

(assert (= b_and!30897 (and (=> t!28744 result!12539) b_and!30899)))

(declare-fun m!900307 () Bool)

(assert (=> b!972753 m!900307))

(declare-fun m!900309 () Bool)

(assert (=> b!972753 m!900309))

(declare-fun m!900311 () Bool)

(assert (=> b!972753 m!900311))

(declare-fun m!900313 () Bool)

(assert (=> b!972753 m!900313))

(declare-fun m!900315 () Bool)

(assert (=> b!972753 m!900315))

(assert (=> b!972753 m!900309))

(assert (=> b!972753 m!900313))

(declare-fun m!900317 () Bool)

(assert (=> b!972753 m!900317))

(declare-fun m!900319 () Bool)

(assert (=> b!972753 m!900319))

(declare-fun m!900321 () Bool)

(assert (=> b!972753 m!900321))

(assert (=> b!972753 m!900307))

(assert (=> b!972753 m!900309))

(declare-fun m!900323 () Bool)

(assert (=> b!972753 m!900323))

(assert (=> b!972753 m!900321))

(assert (=> b!972753 m!900315))

(declare-fun m!900325 () Bool)

(assert (=> b!972753 m!900325))

(assert (=> b!972755 m!900309))

(assert (=> b!972755 m!900309))

(declare-fun m!900327 () Bool)

(assert (=> b!972755 m!900327))

(declare-fun m!900329 () Bool)

(assert (=> b!972755 m!900329))

(declare-fun m!900331 () Bool)

(assert (=> start!83364 m!900331))

(declare-fun m!900333 () Bool)

(assert (=> start!83364 m!900333))

(declare-fun m!900335 () Bool)

(assert (=> start!83364 m!900335))

(declare-fun m!900337 () Bool)

(assert (=> mapNonEmpty!35350 m!900337))

(declare-fun m!900339 () Bool)

(assert (=> b!972750 m!900339))

(declare-fun m!900341 () Bool)

(assert (=> b!972756 m!900341))

(declare-fun m!900343 () Bool)

(assert (=> b!972756 m!900343))

(declare-fun m!900345 () Bool)

(assert (=> b!972756 m!900345))

(declare-fun m!900347 () Bool)

(assert (=> b!972751 m!900347))

(assert (=> b!972746 m!900309))

(assert (=> b!972746 m!900309))

(declare-fun m!900349 () Bool)

(assert (=> b!972746 m!900349))

(check-sat tp_is_empty!22227 (not b!972751) (not b!972750) (not mapNonEmpty!35350) (not b_next!19329) (not b_lambda!14523) b_and!30899 (not b!972755) (not start!83364) (not b!972756) (not b!972746) (not b!972753))
(check-sat b_and!30899 (not b_next!19329))
