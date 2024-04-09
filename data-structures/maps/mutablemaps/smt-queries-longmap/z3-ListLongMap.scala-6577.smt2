; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83376 () Bool)

(assert start!83376)

(declare-fun b_free!19341 () Bool)

(declare-fun b_next!19341 () Bool)

(assert (=> start!83376 (= b_free!19341 (not b_next!19341))))

(declare-fun tp!67302 () Bool)

(declare-fun b_and!30921 () Bool)

(assert (=> start!83376 (= tp!67302 b_and!30921)))

(declare-fun b!972956 () Bool)

(declare-fun res!651385 () Bool)

(declare-fun e!548444 () Bool)

(assert (=> b!972956 (=> (not res!651385) (not e!548444))))

(declare-datatypes ((array!60503 0))(
  ( (array!60504 (arr!29111 (Array (_ BitVec 32) (_ BitVec 64))) (size!29591 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60503)

(declare-datatypes ((List!20318 0))(
  ( (Nil!20315) (Cons!20314 (h!21476 (_ BitVec 64)) (t!28765 List!20318)) )
))
(declare-fun arrayNoDuplicates!0 (array!60503 (_ BitVec 32) List!20318) Bool)

(assert (=> b!972956 (= res!651385 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20315))))

(declare-fun b!972957 () Bool)

(declare-fun res!651379 () Bool)

(assert (=> b!972957 (=> (not res!651379) (not e!548444))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34635 0))(
  ( (V!34636 (val!11170 Int)) )
))
(declare-datatypes ((ValueCell!10638 0))(
  ( (ValueCellFull!10638 (v!13729 V!34635)) (EmptyCell!10638) )
))
(declare-datatypes ((array!60505 0))(
  ( (array!60506 (arr!29112 (Array (_ BitVec 32) ValueCell!10638)) (size!29592 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60505)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!972957 (= res!651379 (and (= (size!29592 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29591 _keys!1717) (size!29592 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972958 () Bool)

(declare-fun res!651382 () Bool)

(assert (=> b!972958 (=> (not res!651382) (not e!548444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60503 (_ BitVec 32)) Bool)

(assert (=> b!972958 (= res!651382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972959 () Bool)

(declare-fun e!548439 () Bool)

(assert (=> b!972959 (= e!548439 (not true))))

(declare-datatypes ((tuple2!14434 0))(
  ( (tuple2!14435 (_1!7227 (_ BitVec 64)) (_2!7227 V!34635)) )
))
(declare-fun lt!432247 () tuple2!14434)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((List!20319 0))(
  ( (Nil!20316) (Cons!20315 (h!21477 tuple2!14434) (t!28766 List!20319)) )
))
(declare-datatypes ((ListLongMap!13145 0))(
  ( (ListLongMap!13146 (toList!6588 List!20319)) )
))
(declare-fun lt!432244 () ListLongMap!13145)

(declare-fun contains!5634 (ListLongMap!13145 (_ BitVec 64)) Bool)

(declare-fun +!2861 (ListLongMap!13145 tuple2!14434) ListLongMap!13145)

(assert (=> b!972959 (contains!5634 (+!2861 lt!432244 lt!432247) (select (arr!29111 _keys!1717) i!822))))

(declare-fun lt!432246 () V!34635)

(declare-datatypes ((Unit!32383 0))(
  ( (Unit!32384) )
))
(declare-fun lt!432249 () Unit!32383)

(declare-fun lt!432250 () (_ BitVec 64))

(declare-fun addStillContains!600 (ListLongMap!13145 (_ BitVec 64) V!34635 (_ BitVec 64)) Unit!32383)

(assert (=> b!972959 (= lt!432249 (addStillContains!600 lt!432244 lt!432250 lt!432246 (select (arr!29111 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34635)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34635)

(declare-fun lt!432245 () ListLongMap!13145)

(declare-fun getCurrentListMap!3773 (array!60503 array!60505 (_ BitVec 32) (_ BitVec 32) V!34635 V!34635 (_ BitVec 32) Int) ListLongMap!13145)

(assert (=> b!972959 (= lt!432245 (+!2861 (getCurrentListMap!3773 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432247))))

(assert (=> b!972959 (= lt!432247 (tuple2!14435 lt!432250 lt!432246))))

(declare-fun get!15110 (ValueCell!10638 V!34635) V!34635)

(declare-fun dynLambda!1700 (Int (_ BitVec 64)) V!34635)

(assert (=> b!972959 (= lt!432246 (get!15110 (select (arr!29112 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1700 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432248 () Unit!32383)

(declare-fun lemmaListMapRecursiveValidKeyArray!272 (array!60503 array!60505 (_ BitVec 32) (_ BitVec 32) V!34635 V!34635 (_ BitVec 32) Int) Unit!32383)

(assert (=> b!972959 (= lt!432248 (lemmaListMapRecursiveValidKeyArray!272 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972960 () Bool)

(declare-fun e!548442 () Bool)

(assert (=> b!972960 (= e!548444 e!548442)))

(declare-fun res!651384 () Bool)

(assert (=> b!972960 (=> (not res!651384) (not e!548442))))

(assert (=> b!972960 (= res!651384 (contains!5634 lt!432244 (select (arr!29111 _keys!1717) i!822)))))

(assert (=> b!972960 (= lt!432244 (getCurrentListMap!3773 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!972961 () Bool)

(declare-fun res!651378 () Bool)

(assert (=> b!972961 (=> (not res!651378) (not e!548444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972961 (= res!651378 (validKeyInArray!0 (select (arr!29111 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35368 () Bool)

(declare-fun mapRes!35368 () Bool)

(declare-fun tp!67303 () Bool)

(declare-fun e!548443 () Bool)

(assert (=> mapNonEmpty!35368 (= mapRes!35368 (and tp!67303 e!548443))))

(declare-fun mapValue!35368 () ValueCell!10638)

(declare-fun mapRest!35368 () (Array (_ BitVec 32) ValueCell!10638))

(declare-fun mapKey!35368 () (_ BitVec 32))

(assert (=> mapNonEmpty!35368 (= (arr!29112 _values!1425) (store mapRest!35368 mapKey!35368 mapValue!35368))))

(declare-fun b!972962 () Bool)

(declare-fun res!651381 () Bool)

(assert (=> b!972962 (=> (not res!651381) (not e!548444))))

(assert (=> b!972962 (= res!651381 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29591 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29591 _keys!1717))))))

(declare-fun mapIsEmpty!35368 () Bool)

(assert (=> mapIsEmpty!35368 mapRes!35368))

(declare-fun res!651383 () Bool)

(assert (=> start!83376 (=> (not res!651383) (not e!548444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83376 (= res!651383 (validMask!0 mask!2147))))

(assert (=> start!83376 e!548444))

(assert (=> start!83376 true))

(declare-fun e!548440 () Bool)

(declare-fun array_inv!22417 (array!60505) Bool)

(assert (=> start!83376 (and (array_inv!22417 _values!1425) e!548440)))

(declare-fun tp_is_empty!22239 () Bool)

(assert (=> start!83376 tp_is_empty!22239))

(assert (=> start!83376 tp!67302))

(declare-fun array_inv!22418 (array!60503) Bool)

(assert (=> start!83376 (array_inv!22418 _keys!1717)))

(declare-fun b!972963 () Bool)

(declare-fun e!548445 () Bool)

(assert (=> b!972963 (= e!548440 (and e!548445 mapRes!35368))))

(declare-fun condMapEmpty!35368 () Bool)

(declare-fun mapDefault!35368 () ValueCell!10638)

(assert (=> b!972963 (= condMapEmpty!35368 (= (arr!29112 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10638)) mapDefault!35368)))))

(declare-fun b!972964 () Bool)

(assert (=> b!972964 (= e!548442 e!548439)))

(declare-fun res!651380 () Bool)

(assert (=> b!972964 (=> (not res!651380) (not e!548439))))

(assert (=> b!972964 (= res!651380 (validKeyInArray!0 lt!432250))))

(assert (=> b!972964 (= lt!432250 (select (arr!29111 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972964 (= lt!432245 (getCurrentListMap!3773 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972965 () Bool)

(assert (=> b!972965 (= e!548445 tp_is_empty!22239)))

(declare-fun b!972966 () Bool)

(assert (=> b!972966 (= e!548443 tp_is_empty!22239)))

(assert (= (and start!83376 res!651383) b!972957))

(assert (= (and b!972957 res!651379) b!972958))

(assert (= (and b!972958 res!651382) b!972956))

(assert (= (and b!972956 res!651385) b!972962))

(assert (= (and b!972962 res!651381) b!972961))

(assert (= (and b!972961 res!651378) b!972960))

(assert (= (and b!972960 res!651384) b!972964))

(assert (= (and b!972964 res!651380) b!972959))

(assert (= (and b!972963 condMapEmpty!35368) mapIsEmpty!35368))

(assert (= (and b!972963 (not condMapEmpty!35368)) mapNonEmpty!35368))

(get-info :version)

(assert (= (and mapNonEmpty!35368 ((_ is ValueCellFull!10638) mapValue!35368)) b!972966))

(assert (= (and b!972963 ((_ is ValueCellFull!10638) mapDefault!35368)) b!972965))

(assert (= start!83376 b!972963))

(declare-fun b_lambda!14535 () Bool)

(assert (=> (not b_lambda!14535) (not b!972959)))

(declare-fun t!28764 () Bool)

(declare-fun tb!6297 () Bool)

(assert (=> (and start!83376 (= defaultEntry!1428 defaultEntry!1428) t!28764) tb!6297))

(declare-fun result!12563 () Bool)

(assert (=> tb!6297 (= result!12563 tp_is_empty!22239)))

(assert (=> b!972959 t!28764))

(declare-fun b_and!30923 () Bool)

(assert (= b_and!30921 (and (=> t!28764 result!12563) b_and!30923)))

(declare-fun m!900571 () Bool)

(assert (=> b!972961 m!900571))

(assert (=> b!972961 m!900571))

(declare-fun m!900573 () Bool)

(assert (=> b!972961 m!900573))

(declare-fun m!900575 () Bool)

(assert (=> mapNonEmpty!35368 m!900575))

(declare-fun m!900577 () Bool)

(assert (=> start!83376 m!900577))

(declare-fun m!900579 () Bool)

(assert (=> start!83376 m!900579))

(declare-fun m!900581 () Bool)

(assert (=> start!83376 m!900581))

(declare-fun m!900583 () Bool)

(assert (=> b!972958 m!900583))

(declare-fun m!900585 () Bool)

(assert (=> b!972956 m!900585))

(assert (=> b!972960 m!900571))

(assert (=> b!972960 m!900571))

(declare-fun m!900587 () Bool)

(assert (=> b!972960 m!900587))

(declare-fun m!900589 () Bool)

(assert (=> b!972960 m!900589))

(declare-fun m!900591 () Bool)

(assert (=> b!972959 m!900591))

(declare-fun m!900593 () Bool)

(assert (=> b!972959 m!900593))

(assert (=> b!972959 m!900591))

(assert (=> b!972959 m!900571))

(declare-fun m!900595 () Bool)

(assert (=> b!972959 m!900595))

(declare-fun m!900597 () Bool)

(assert (=> b!972959 m!900597))

(declare-fun m!900599 () Bool)

(assert (=> b!972959 m!900599))

(assert (=> b!972959 m!900571))

(assert (=> b!972959 m!900593))

(assert (=> b!972959 m!900599))

(declare-fun m!900601 () Bool)

(assert (=> b!972959 m!900601))

(assert (=> b!972959 m!900597))

(declare-fun m!900603 () Bool)

(assert (=> b!972959 m!900603))

(assert (=> b!972959 m!900571))

(declare-fun m!900605 () Bool)

(assert (=> b!972959 m!900605))

(declare-fun m!900607 () Bool)

(assert (=> b!972959 m!900607))

(declare-fun m!900609 () Bool)

(assert (=> b!972964 m!900609))

(declare-fun m!900611 () Bool)

(assert (=> b!972964 m!900611))

(declare-fun m!900613 () Bool)

(assert (=> b!972964 m!900613))

(check-sat (not b!972958) (not b!972960) b_and!30923 (not b_lambda!14535) (not b!972961) tp_is_empty!22239 (not b!972956) (not b_next!19341) (not b!972959) (not mapNonEmpty!35368) (not start!83376) (not b!972964))
(check-sat b_and!30923 (not b_next!19341))
