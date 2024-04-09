; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84064 () Bool)

(assert start!84064)

(declare-fun b_free!19791 () Bool)

(declare-fun b_next!19791 () Bool)

(assert (=> start!84064 (= b_free!19791 (not b_next!19791))))

(declare-fun tp!68896 () Bool)

(declare-fun b_and!31683 () Bool)

(assert (=> start!84064 (= tp!68896 b_and!31683)))

(declare-fun mapNonEmpty!36287 () Bool)

(declare-fun mapRes!36287 () Bool)

(declare-fun tp!68897 () Bool)

(declare-fun e!553714 () Bool)

(assert (=> mapNonEmpty!36287 (= mapRes!36287 (and tp!68897 e!553714))))

(declare-datatypes ((V!35435 0))(
  ( (V!35436 (val!11470 Int)) )
))
(declare-datatypes ((ValueCell!10938 0))(
  ( (ValueCellFull!10938 (v!14032 V!35435)) (EmptyCell!10938) )
))
(declare-datatypes ((array!61665 0))(
  ( (array!61666 (arr!29686 (Array (_ BitVec 32) ValueCell!10938)) (size!30166 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61665)

(declare-fun mapRest!36287 () (Array (_ BitVec 32) ValueCell!10938))

(declare-fun mapValue!36287 () ValueCell!10938)

(declare-fun mapKey!36287 () (_ BitVec 32))

(assert (=> mapNonEmpty!36287 (= (arr!29686 _values!1278) (store mapRest!36287 mapKey!36287 mapValue!36287))))

(declare-fun res!657417 () Bool)

(declare-fun e!553717 () Bool)

(assert (=> start!84064 (=> (not res!657417) (not e!553717))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84064 (= res!657417 (validMask!0 mask!1948))))

(assert (=> start!84064 e!553717))

(assert (=> start!84064 true))

(declare-fun tp_is_empty!22839 () Bool)

(assert (=> start!84064 tp_is_empty!22839))

(declare-fun e!553718 () Bool)

(declare-fun array_inv!22829 (array!61665) Bool)

(assert (=> start!84064 (and (array_inv!22829 _values!1278) e!553718)))

(assert (=> start!84064 tp!68896))

(declare-datatypes ((array!61667 0))(
  ( (array!61668 (arr!29687 (Array (_ BitVec 32) (_ BitVec 64))) (size!30167 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61667)

(declare-fun array_inv!22830 (array!61667) Bool)

(assert (=> start!84064 (array_inv!22830 _keys!1544)))

(declare-fun b!982234 () Bool)

(declare-fun e!553715 () Bool)

(assert (=> b!982234 (= e!553715 tp_is_empty!22839)))

(declare-fun b!982235 () Bool)

(declare-fun res!657422 () Bool)

(assert (=> b!982235 (=> (not res!657422) (not e!553717))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982235 (= res!657422 (validKeyInArray!0 (select (arr!29687 _keys!1544) from!1932)))))

(declare-fun b!982236 () Bool)

(assert (=> b!982236 (= e!553714 tp_is_empty!22839)))

(declare-fun b!982237 () Bool)

(declare-fun res!657418 () Bool)

(assert (=> b!982237 (=> (not res!657418) (not e!553717))))

(assert (=> b!982237 (= res!657418 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30167 _keys!1544))))))

(declare-fun b!982238 () Bool)

(declare-fun res!657419 () Bool)

(assert (=> b!982238 (=> (not res!657419) (not e!553717))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982238 (= res!657419 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982239 () Bool)

(declare-fun e!553716 () Bool)

(assert (=> b!982239 (= e!553717 e!553716)))

(declare-fun res!657423 () Bool)

(assert (=> b!982239 (=> (not res!657423) (not e!553716))))

(assert (=> b!982239 (= res!657423 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29687 _keys!1544) from!1932))))))

(declare-fun lt!436059 () V!35435)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15415 (ValueCell!10938 V!35435) V!35435)

(declare-fun dynLambda!1802 (Int (_ BitVec 64)) V!35435)

(assert (=> b!982239 (= lt!436059 (get!15415 (select (arr!29686 _values!1278) from!1932) (dynLambda!1802 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35435)

(declare-fun zeroValue!1220 () V!35435)

(declare-datatypes ((tuple2!14798 0))(
  ( (tuple2!14799 (_1!7409 (_ BitVec 64)) (_2!7409 V!35435)) )
))
(declare-datatypes ((List!20705 0))(
  ( (Nil!20702) (Cons!20701 (h!21863 tuple2!14798) (t!29454 List!20705)) )
))
(declare-datatypes ((ListLongMap!13509 0))(
  ( (ListLongMap!13510 (toList!6770 List!20705)) )
))
(declare-fun lt!436056 () ListLongMap!13509)

(declare-fun getCurrentListMapNoExtraKeys!3429 (array!61667 array!61665 (_ BitVec 32) (_ BitVec 32) V!35435 V!35435 (_ BitVec 32) Int) ListLongMap!13509)

(assert (=> b!982239 (= lt!436056 (getCurrentListMapNoExtraKeys!3429 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982240 () Bool)

(declare-fun res!657420 () Bool)

(assert (=> b!982240 (=> (not res!657420) (not e!553717))))

(assert (=> b!982240 (= res!657420 (and (= (size!30166 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30167 _keys!1544) (size!30166 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982241 () Bool)

(declare-fun res!657421 () Bool)

(assert (=> b!982241 (=> (not res!657421) (not e!553717))))

(declare-datatypes ((List!20706 0))(
  ( (Nil!20703) (Cons!20702 (h!21864 (_ BitVec 64)) (t!29455 List!20706)) )
))
(declare-fun arrayNoDuplicates!0 (array!61667 (_ BitVec 32) List!20706) Bool)

(assert (=> b!982241 (= res!657421 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20703))))

(declare-fun b!982242 () Bool)

(declare-fun res!657416 () Bool)

(assert (=> b!982242 (=> (not res!657416) (not e!553717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61667 (_ BitVec 32)) Bool)

(assert (=> b!982242 (= res!657416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982243 () Bool)

(assert (=> b!982243 (= e!553716 (not true))))

(declare-fun lt!436057 () tuple2!14798)

(declare-fun lt!436060 () tuple2!14798)

(declare-fun +!2972 (ListLongMap!13509 tuple2!14798) ListLongMap!13509)

(assert (=> b!982243 (= (+!2972 (+!2972 lt!436056 lt!436057) lt!436060) (+!2972 (+!2972 lt!436056 lt!436060) lt!436057))))

(assert (=> b!982243 (= lt!436060 (tuple2!14799 (select (arr!29687 _keys!1544) from!1932) lt!436059))))

(assert (=> b!982243 (= lt!436057 (tuple2!14799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32619 0))(
  ( (Unit!32620) )
))
(declare-fun lt!436058 () Unit!32619)

(declare-fun addCommutativeForDiffKeys!634 (ListLongMap!13509 (_ BitVec 64) V!35435 (_ BitVec 64) V!35435) Unit!32619)

(assert (=> b!982243 (= lt!436058 (addCommutativeForDiffKeys!634 lt!436056 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29687 _keys!1544) from!1932) lt!436059))))

(declare-fun mapIsEmpty!36287 () Bool)

(assert (=> mapIsEmpty!36287 mapRes!36287))

(declare-fun b!982244 () Bool)

(assert (=> b!982244 (= e!553718 (and e!553715 mapRes!36287))))

(declare-fun condMapEmpty!36287 () Bool)

(declare-fun mapDefault!36287 () ValueCell!10938)

(assert (=> b!982244 (= condMapEmpty!36287 (= (arr!29686 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10938)) mapDefault!36287)))))

(assert (= (and start!84064 res!657417) b!982240))

(assert (= (and b!982240 res!657420) b!982242))

(assert (= (and b!982242 res!657416) b!982241))

(assert (= (and b!982241 res!657421) b!982237))

(assert (= (and b!982237 res!657418) b!982235))

(assert (= (and b!982235 res!657422) b!982238))

(assert (= (and b!982238 res!657419) b!982239))

(assert (= (and b!982239 res!657423) b!982243))

(assert (= (and b!982244 condMapEmpty!36287) mapIsEmpty!36287))

(assert (= (and b!982244 (not condMapEmpty!36287)) mapNonEmpty!36287))

(get-info :version)

(assert (= (and mapNonEmpty!36287 ((_ is ValueCellFull!10938) mapValue!36287)) b!982236))

(assert (= (and b!982244 ((_ is ValueCellFull!10938) mapDefault!36287)) b!982234))

(assert (= start!84064 b!982244))

(declare-fun b_lambda!14859 () Bool)

(assert (=> (not b_lambda!14859) (not b!982239)))

(declare-fun t!29453 () Bool)

(declare-fun tb!6599 () Bool)

(assert (=> (and start!84064 (= defaultEntry!1281 defaultEntry!1281) t!29453) tb!6599))

(declare-fun result!13179 () Bool)

(assert (=> tb!6599 (= result!13179 tp_is_empty!22839)))

(assert (=> b!982239 t!29453))

(declare-fun b_and!31685 () Bool)

(assert (= b_and!31683 (and (=> t!29453 result!13179) b_and!31685)))

(declare-fun m!909681 () Bool)

(assert (=> mapNonEmpty!36287 m!909681))

(declare-fun m!909683 () Bool)

(assert (=> b!982239 m!909683))

(declare-fun m!909685 () Bool)

(assert (=> b!982239 m!909685))

(declare-fun m!909687 () Bool)

(assert (=> b!982239 m!909687))

(declare-fun m!909689 () Bool)

(assert (=> b!982239 m!909689))

(assert (=> b!982239 m!909685))

(assert (=> b!982239 m!909689))

(declare-fun m!909691 () Bool)

(assert (=> b!982239 m!909691))

(declare-fun m!909693 () Bool)

(assert (=> b!982241 m!909693))

(declare-fun m!909695 () Bool)

(assert (=> start!84064 m!909695))

(declare-fun m!909697 () Bool)

(assert (=> start!84064 m!909697))

(declare-fun m!909699 () Bool)

(assert (=> start!84064 m!909699))

(declare-fun m!909701 () Bool)

(assert (=> b!982242 m!909701))

(assert (=> b!982243 m!909683))

(declare-fun m!909703 () Bool)

(assert (=> b!982243 m!909703))

(declare-fun m!909705 () Bool)

(assert (=> b!982243 m!909705))

(declare-fun m!909707 () Bool)

(assert (=> b!982243 m!909707))

(assert (=> b!982243 m!909703))

(assert (=> b!982243 m!909683))

(declare-fun m!909709 () Bool)

(assert (=> b!982243 m!909709))

(assert (=> b!982243 m!909707))

(declare-fun m!909711 () Bool)

(assert (=> b!982243 m!909711))

(assert (=> b!982235 m!909683))

(assert (=> b!982235 m!909683))

(declare-fun m!909713 () Bool)

(assert (=> b!982235 m!909713))

(check-sat (not b!982239) (not start!84064) (not b_lambda!14859) tp_is_empty!22839 (not b_next!19791) (not b!982241) b_and!31685 (not b!982235) (not b!982243) (not b!982242) (not mapNonEmpty!36287))
(check-sat b_and!31685 (not b_next!19791))
