; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83394 () Bool)

(assert start!83394)

(declare-fun b_free!19359 () Bool)

(declare-fun b_next!19359 () Bool)

(assert (=> start!83394 (= b_free!19359 (not b_next!19359))))

(declare-fun tp!67357 () Bool)

(declare-fun b_and!30957 () Bool)

(assert (=> start!83394 (= tp!67357 b_and!30957)))

(declare-fun b!973271 () Bool)

(declare-fun res!651601 () Bool)

(declare-fun e!548632 () Bool)

(assert (=> b!973271 (=> (not res!651601) (not e!548632))))

(declare-datatypes ((array!60539 0))(
  ( (array!60540 (arr!29129 (Array (_ BitVec 32) (_ BitVec 64))) (size!29609 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60539)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973271 (= res!651601 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29609 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29609 _keys!1717))))))

(declare-fun b!973272 () Bool)

(declare-fun e!548628 () Bool)

(declare-fun tp_is_empty!22257 () Bool)

(assert (=> b!973272 (= e!548628 tp_is_empty!22257)))

(declare-fun mapNonEmpty!35395 () Bool)

(declare-fun mapRes!35395 () Bool)

(declare-fun tp!67356 () Bool)

(assert (=> mapNonEmpty!35395 (= mapRes!35395 (and tp!67356 e!548628))))

(declare-datatypes ((V!34659 0))(
  ( (V!34660 (val!11179 Int)) )
))
(declare-datatypes ((ValueCell!10647 0))(
  ( (ValueCellFull!10647 (v!13738 V!34659)) (EmptyCell!10647) )
))
(declare-datatypes ((array!60541 0))(
  ( (array!60542 (arr!29130 (Array (_ BitVec 32) ValueCell!10647)) (size!29610 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60541)

(declare-fun mapRest!35395 () (Array (_ BitVec 32) ValueCell!10647))

(declare-fun mapValue!35395 () ValueCell!10647)

(declare-fun mapKey!35395 () (_ BitVec 32))

(assert (=> mapNonEmpty!35395 (= (arr!29130 _values!1425) (store mapRest!35395 mapKey!35395 mapValue!35395))))

(declare-fun res!651594 () Bool)

(assert (=> start!83394 (=> (not res!651594) (not e!548632))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83394 (= res!651594 (validMask!0 mask!2147))))

(assert (=> start!83394 e!548632))

(assert (=> start!83394 true))

(declare-fun e!548629 () Bool)

(declare-fun array_inv!22431 (array!60541) Bool)

(assert (=> start!83394 (and (array_inv!22431 _values!1425) e!548629)))

(assert (=> start!83394 tp_is_empty!22257))

(assert (=> start!83394 tp!67357))

(declare-fun array_inv!22432 (array!60539) Bool)

(assert (=> start!83394 (array_inv!22432 _keys!1717)))

(declare-fun b!973273 () Bool)

(declare-fun res!651596 () Bool)

(assert (=> b!973273 (=> (not res!651596) (not e!548632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60539 (_ BitVec 32)) Bool)

(assert (=> b!973273 (= res!651596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973274 () Bool)

(declare-fun e!548630 () Bool)

(assert (=> b!973274 (= e!548630 (not true))))

(declare-datatypes ((tuple2!14452 0))(
  ( (tuple2!14453 (_1!7236 (_ BitVec 64)) (_2!7236 V!34659)) )
))
(declare-datatypes ((List!20333 0))(
  ( (Nil!20330) (Cons!20329 (h!21491 tuple2!14452) (t!28798 List!20333)) )
))
(declare-datatypes ((ListLongMap!13163 0))(
  ( (ListLongMap!13164 (toList!6597 List!20333)) )
))
(declare-fun lt!432439 () ListLongMap!13163)

(declare-fun lt!432437 () tuple2!14452)

(declare-fun contains!5641 (ListLongMap!13163 (_ BitVec 64)) Bool)

(declare-fun +!2867 (ListLongMap!13163 tuple2!14452) ListLongMap!13163)

(assert (=> b!973274 (contains!5641 (+!2867 lt!432439 lt!432437) (select (arr!29129 _keys!1717) i!822))))

(declare-fun lt!432435 () (_ BitVec 64))

(declare-datatypes ((Unit!32395 0))(
  ( (Unit!32396) )
))
(declare-fun lt!432436 () Unit!32395)

(declare-fun lt!432433 () V!34659)

(declare-fun addStillContains!606 (ListLongMap!13163 (_ BitVec 64) V!34659 (_ BitVec 64)) Unit!32395)

(assert (=> b!973274 (= lt!432436 (addStillContains!606 lt!432439 lt!432435 lt!432433 (select (arr!29129 _keys!1717) i!822)))))

(declare-fun lt!432438 () ListLongMap!13163)

(declare-fun zeroValue!1367 () V!34659)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34659)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3782 (array!60539 array!60541 (_ BitVec 32) (_ BitVec 32) V!34659 V!34659 (_ BitVec 32) Int) ListLongMap!13163)

(assert (=> b!973274 (= lt!432438 (+!2867 (getCurrentListMap!3782 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432437))))

(assert (=> b!973274 (= lt!432437 (tuple2!14453 lt!432435 lt!432433))))

(declare-fun get!15122 (ValueCell!10647 V!34659) V!34659)

(declare-fun dynLambda!1706 (Int (_ BitVec 64)) V!34659)

(assert (=> b!973274 (= lt!432433 (get!15122 (select (arr!29130 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1706 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432434 () Unit!32395)

(declare-fun lemmaListMapRecursiveValidKeyArray!278 (array!60539 array!60541 (_ BitVec 32) (_ BitVec 32) V!34659 V!34659 (_ BitVec 32) Int) Unit!32395)

(assert (=> b!973274 (= lt!432434 (lemmaListMapRecursiveValidKeyArray!278 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973275 () Bool)

(declare-fun res!651600 () Bool)

(assert (=> b!973275 (=> (not res!651600) (not e!548632))))

(assert (=> b!973275 (= res!651600 (and (= (size!29610 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29609 _keys!1717) (size!29610 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973276 () Bool)

(declare-fun res!651597 () Bool)

(assert (=> b!973276 (=> (not res!651597) (not e!548632))))

(declare-datatypes ((List!20334 0))(
  ( (Nil!20331) (Cons!20330 (h!21492 (_ BitVec 64)) (t!28799 List!20334)) )
))
(declare-fun arrayNoDuplicates!0 (array!60539 (_ BitVec 32) List!20334) Bool)

(assert (=> b!973276 (= res!651597 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20331))))

(declare-fun b!973277 () Bool)

(declare-fun e!548633 () Bool)

(assert (=> b!973277 (= e!548629 (and e!548633 mapRes!35395))))

(declare-fun condMapEmpty!35395 () Bool)

(declare-fun mapDefault!35395 () ValueCell!10647)

(assert (=> b!973277 (= condMapEmpty!35395 (= (arr!29130 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10647)) mapDefault!35395)))))

(declare-fun b!973278 () Bool)

(declare-fun e!548634 () Bool)

(assert (=> b!973278 (= e!548632 e!548634)))

(declare-fun res!651598 () Bool)

(assert (=> b!973278 (=> (not res!651598) (not e!548634))))

(assert (=> b!973278 (= res!651598 (contains!5641 lt!432439 (select (arr!29129 _keys!1717) i!822)))))

(assert (=> b!973278 (= lt!432439 (getCurrentListMap!3782 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973279 () Bool)

(assert (=> b!973279 (= e!548634 e!548630)))

(declare-fun res!651595 () Bool)

(assert (=> b!973279 (=> (not res!651595) (not e!548630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973279 (= res!651595 (validKeyInArray!0 lt!432435))))

(assert (=> b!973279 (= lt!432435 (select (arr!29129 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973279 (= lt!432438 (getCurrentListMap!3782 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973280 () Bool)

(declare-fun res!651599 () Bool)

(assert (=> b!973280 (=> (not res!651599) (not e!548632))))

(assert (=> b!973280 (= res!651599 (validKeyInArray!0 (select (arr!29129 _keys!1717) i!822)))))

(declare-fun b!973281 () Bool)

(assert (=> b!973281 (= e!548633 tp_is_empty!22257)))

(declare-fun mapIsEmpty!35395 () Bool)

(assert (=> mapIsEmpty!35395 mapRes!35395))

(assert (= (and start!83394 res!651594) b!973275))

(assert (= (and b!973275 res!651600) b!973273))

(assert (= (and b!973273 res!651596) b!973276))

(assert (= (and b!973276 res!651597) b!973271))

(assert (= (and b!973271 res!651601) b!973280))

(assert (= (and b!973280 res!651599) b!973278))

(assert (= (and b!973278 res!651598) b!973279))

(assert (= (and b!973279 res!651595) b!973274))

(assert (= (and b!973277 condMapEmpty!35395) mapIsEmpty!35395))

(assert (= (and b!973277 (not condMapEmpty!35395)) mapNonEmpty!35395))

(get-info :version)

(assert (= (and mapNonEmpty!35395 ((_ is ValueCellFull!10647) mapValue!35395)) b!973272))

(assert (= (and b!973277 ((_ is ValueCellFull!10647) mapDefault!35395)) b!973281))

(assert (= start!83394 b!973277))

(declare-fun b_lambda!14553 () Bool)

(assert (=> (not b_lambda!14553) (not b!973274)))

(declare-fun t!28797 () Bool)

(declare-fun tb!6315 () Bool)

(assert (=> (and start!83394 (= defaultEntry!1428 defaultEntry!1428) t!28797) tb!6315))

(declare-fun result!12599 () Bool)

(assert (=> tb!6315 (= result!12599 tp_is_empty!22257)))

(assert (=> b!973274 t!28797))

(declare-fun b_and!30959 () Bool)

(assert (= b_and!30957 (and (=> t!28797 result!12599) b_and!30959)))

(declare-fun m!900967 () Bool)

(assert (=> b!973273 m!900967))

(declare-fun m!900969 () Bool)

(assert (=> b!973274 m!900969))

(declare-fun m!900971 () Bool)

(assert (=> b!973274 m!900971))

(declare-fun m!900973 () Bool)

(assert (=> b!973274 m!900973))

(declare-fun m!900975 () Bool)

(assert (=> b!973274 m!900975))

(declare-fun m!900977 () Bool)

(assert (=> b!973274 m!900977))

(declare-fun m!900979 () Bool)

(assert (=> b!973274 m!900979))

(assert (=> b!973274 m!900977))

(assert (=> b!973274 m!900977))

(declare-fun m!900981 () Bool)

(assert (=> b!973274 m!900981))

(assert (=> b!973274 m!900975))

(declare-fun m!900983 () Bool)

(assert (=> b!973274 m!900983))

(assert (=> b!973274 m!900969))

(assert (=> b!973274 m!900973))

(declare-fun m!900985 () Bool)

(assert (=> b!973274 m!900985))

(assert (=> b!973274 m!900971))

(declare-fun m!900987 () Bool)

(assert (=> b!973274 m!900987))

(declare-fun m!900989 () Bool)

(assert (=> b!973276 m!900989))

(declare-fun m!900991 () Bool)

(assert (=> b!973279 m!900991))

(declare-fun m!900993 () Bool)

(assert (=> b!973279 m!900993))

(declare-fun m!900995 () Bool)

(assert (=> b!973279 m!900995))

(assert (=> b!973280 m!900977))

(assert (=> b!973280 m!900977))

(declare-fun m!900997 () Bool)

(assert (=> b!973280 m!900997))

(declare-fun m!900999 () Bool)

(assert (=> mapNonEmpty!35395 m!900999))

(assert (=> b!973278 m!900977))

(assert (=> b!973278 m!900977))

(declare-fun m!901001 () Bool)

(assert (=> b!973278 m!901001))

(declare-fun m!901003 () Bool)

(assert (=> b!973278 m!901003))

(declare-fun m!901005 () Bool)

(assert (=> start!83394 m!901005))

(declare-fun m!901007 () Bool)

(assert (=> start!83394 m!901007))

(declare-fun m!901009 () Bool)

(assert (=> start!83394 m!901009))

(check-sat (not b!973274) (not b!973276) (not b_lambda!14553) (not b_next!19359) (not mapNonEmpty!35395) (not b!973278) (not b!973280) (not b!973279) (not start!83394) b_and!30959 tp_is_empty!22257 (not b!973273))
(check-sat b_and!30959 (not b_next!19359))
