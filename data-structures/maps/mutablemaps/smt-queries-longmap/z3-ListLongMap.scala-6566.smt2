; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83310 () Bool)

(assert start!83310)

(declare-fun b_free!19275 () Bool)

(declare-fun b_next!19275 () Bool)

(assert (=> start!83310 (= b_free!19275 (not b_next!19275))))

(declare-fun tp!67104 () Bool)

(declare-fun b_and!30789 () Bool)

(assert (=> start!83310 (= tp!67104 b_and!30789)))

(declare-fun b!971801 () Bool)

(declare-fun e!547823 () Bool)

(declare-fun e!547825 () Bool)

(declare-fun mapRes!35269 () Bool)

(assert (=> b!971801 (= e!547823 (and e!547825 mapRes!35269))))

(declare-fun condMapEmpty!35269 () Bool)

(declare-datatypes ((V!34547 0))(
  ( (V!34548 (val!11137 Int)) )
))
(declare-datatypes ((ValueCell!10605 0))(
  ( (ValueCellFull!10605 (v!13696 V!34547)) (EmptyCell!10605) )
))
(declare-datatypes ((array!60377 0))(
  ( (array!60378 (arr!29048 (Array (_ BitVec 32) ValueCell!10605)) (size!29528 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60377)

(declare-fun mapDefault!35269 () ValueCell!10605)

(assert (=> b!971801 (= condMapEmpty!35269 (= (arr!29048 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10605)) mapDefault!35269)))))

(declare-fun b!971802 () Bool)

(declare-fun res!650588 () Bool)

(declare-fun e!547824 () Bool)

(assert (=> b!971802 (=> (not res!650588) (not e!547824))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34547)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34547)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60379 0))(
  ( (array!60380 (arr!29049 (Array (_ BitVec 32) (_ BitVec 64))) (size!29529 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60379)

(declare-datatypes ((tuple2!14380 0))(
  ( (tuple2!14381 (_1!7200 (_ BitVec 64)) (_2!7200 V!34547)) )
))
(declare-datatypes ((List!20272 0))(
  ( (Nil!20269) (Cons!20268 (h!21430 tuple2!14380) (t!28653 List!20272)) )
))
(declare-datatypes ((ListLongMap!13091 0))(
  ( (ListLongMap!13092 (toList!6561 List!20272)) )
))
(declare-fun contains!5611 (ListLongMap!13091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3746 (array!60379 array!60377 (_ BitVec 32) (_ BitVec 32) V!34547 V!34547 (_ BitVec 32) Int) ListLongMap!13091)

(assert (=> b!971802 (= res!650588 (contains!5611 (getCurrentListMap!3746 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29049 _keys!1717) i!822)))))

(declare-fun b!971803 () Bool)

(declare-fun e!547827 () Bool)

(assert (=> b!971803 (= e!547824 e!547827)))

(declare-fun res!650591 () Bool)

(assert (=> b!971803 (=> (not res!650591) (not e!547827))))

(declare-fun lt!431856 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971803 (= res!650591 (validKeyInArray!0 lt!431856))))

(assert (=> b!971803 (= lt!431856 (select (arr!29049 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!431855 () ListLongMap!13091)

(assert (=> b!971803 (= lt!431855 (getCurrentListMap!3746 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971804 () Bool)

(declare-fun res!650586 () Bool)

(assert (=> b!971804 (=> (not res!650586) (not e!547824))))

(assert (=> b!971804 (= res!650586 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29529 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29529 _keys!1717))))))

(declare-fun b!971805 () Bool)

(declare-fun res!650587 () Bool)

(assert (=> b!971805 (=> (not res!650587) (not e!547824))))

(assert (=> b!971805 (= res!650587 (and (= (size!29528 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29529 _keys!1717) (size!29528 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971806 () Bool)

(declare-fun tp_is_empty!22173 () Bool)

(assert (=> b!971806 (= e!547825 tp_is_empty!22173)))

(declare-fun b!971807 () Bool)

(declare-fun res!650590 () Bool)

(assert (=> b!971807 (=> (not res!650590) (not e!547824))))

(declare-datatypes ((List!20273 0))(
  ( (Nil!20270) (Cons!20269 (h!21431 (_ BitVec 64)) (t!28654 List!20273)) )
))
(declare-fun arrayNoDuplicates!0 (array!60379 (_ BitVec 32) List!20273) Bool)

(assert (=> b!971807 (= res!650590 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20270))))

(declare-fun res!650589 () Bool)

(assert (=> start!83310 (=> (not res!650589) (not e!547824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83310 (= res!650589 (validMask!0 mask!2147))))

(assert (=> start!83310 e!547824))

(assert (=> start!83310 true))

(declare-fun array_inv!22371 (array!60377) Bool)

(assert (=> start!83310 (and (array_inv!22371 _values!1425) e!547823)))

(assert (=> start!83310 tp_is_empty!22173))

(assert (=> start!83310 tp!67104))

(declare-fun array_inv!22372 (array!60379) Bool)

(assert (=> start!83310 (array_inv!22372 _keys!1717)))

(declare-fun b!971808 () Bool)

(declare-fun e!547822 () Bool)

(assert (=> b!971808 (= e!547822 tp_is_empty!22173)))

(declare-fun b!971809 () Bool)

(declare-fun res!650592 () Bool)

(assert (=> b!971809 (=> (not res!650592) (not e!547824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60379 (_ BitVec 32)) Bool)

(assert (=> b!971809 (= res!650592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971810 () Bool)

(assert (=> b!971810 (= e!547827 (not true))))

(declare-fun +!2842 (ListLongMap!13091 tuple2!14380) ListLongMap!13091)

(declare-fun get!15069 (ValueCell!10605 V!34547) V!34547)

(declare-fun dynLambda!1681 (Int (_ BitVec 64)) V!34547)

(assert (=> b!971810 (= lt!431855 (+!2842 (getCurrentListMap!3746 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14381 lt!431856 (get!15069 (select (arr!29048 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1681 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32345 0))(
  ( (Unit!32346) )
))
(declare-fun lt!431857 () Unit!32345)

(declare-fun lemmaListMapRecursiveValidKeyArray!253 (array!60379 array!60377 (_ BitVec 32) (_ BitVec 32) V!34547 V!34547 (_ BitVec 32) Int) Unit!32345)

(assert (=> b!971810 (= lt!431857 (lemmaListMapRecursiveValidKeyArray!253 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35269 () Bool)

(declare-fun tp!67105 () Bool)

(assert (=> mapNonEmpty!35269 (= mapRes!35269 (and tp!67105 e!547822))))

(declare-fun mapRest!35269 () (Array (_ BitVec 32) ValueCell!10605))

(declare-fun mapKey!35269 () (_ BitVec 32))

(declare-fun mapValue!35269 () ValueCell!10605)

(assert (=> mapNonEmpty!35269 (= (arr!29048 _values!1425) (store mapRest!35269 mapKey!35269 mapValue!35269))))

(declare-fun b!971811 () Bool)

(declare-fun res!650593 () Bool)

(assert (=> b!971811 (=> (not res!650593) (not e!547824))))

(assert (=> b!971811 (= res!650593 (validKeyInArray!0 (select (arr!29049 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35269 () Bool)

(assert (=> mapIsEmpty!35269 mapRes!35269))

(assert (= (and start!83310 res!650589) b!971805))

(assert (= (and b!971805 res!650587) b!971809))

(assert (= (and b!971809 res!650592) b!971807))

(assert (= (and b!971807 res!650590) b!971804))

(assert (= (and b!971804 res!650586) b!971811))

(assert (= (and b!971811 res!650593) b!971802))

(assert (= (and b!971802 res!650588) b!971803))

(assert (= (and b!971803 res!650591) b!971810))

(assert (= (and b!971801 condMapEmpty!35269) mapIsEmpty!35269))

(assert (= (and b!971801 (not condMapEmpty!35269)) mapNonEmpty!35269))

(get-info :version)

(assert (= (and mapNonEmpty!35269 ((_ is ValueCellFull!10605) mapValue!35269)) b!971808))

(assert (= (and b!971801 ((_ is ValueCellFull!10605) mapDefault!35269)) b!971806))

(assert (= start!83310 b!971801))

(declare-fun b_lambda!14469 () Bool)

(assert (=> (not b_lambda!14469) (not b!971810)))

(declare-fun t!28652 () Bool)

(declare-fun tb!6231 () Bool)

(assert (=> (and start!83310 (= defaultEntry!1428 defaultEntry!1428) t!28652) tb!6231))

(declare-fun result!12431 () Bool)

(assert (=> tb!6231 (= result!12431 tp_is_empty!22173)))

(assert (=> b!971810 t!28652))

(declare-fun b_and!30791 () Bool)

(assert (= b_and!30789 (and (=> t!28652 result!12431) b_and!30791)))

(declare-fun m!899275 () Bool)

(assert (=> b!971807 m!899275))

(declare-fun m!899277 () Bool)

(assert (=> mapNonEmpty!35269 m!899277))

(declare-fun m!899279 () Bool)

(assert (=> start!83310 m!899279))

(declare-fun m!899281 () Bool)

(assert (=> start!83310 m!899281))

(declare-fun m!899283 () Bool)

(assert (=> start!83310 m!899283))

(declare-fun m!899285 () Bool)

(assert (=> b!971811 m!899285))

(assert (=> b!971811 m!899285))

(declare-fun m!899287 () Bool)

(assert (=> b!971811 m!899287))

(declare-fun m!899289 () Bool)

(assert (=> b!971810 m!899289))

(declare-fun m!899291 () Bool)

(assert (=> b!971810 m!899291))

(declare-fun m!899293 () Bool)

(assert (=> b!971810 m!899293))

(assert (=> b!971810 m!899291))

(declare-fun m!899295 () Bool)

(assert (=> b!971810 m!899295))

(assert (=> b!971810 m!899289))

(assert (=> b!971810 m!899295))

(declare-fun m!899297 () Bool)

(assert (=> b!971810 m!899297))

(declare-fun m!899299 () Bool)

(assert (=> b!971810 m!899299))

(declare-fun m!899301 () Bool)

(assert (=> b!971802 m!899301))

(assert (=> b!971802 m!899285))

(assert (=> b!971802 m!899301))

(assert (=> b!971802 m!899285))

(declare-fun m!899303 () Bool)

(assert (=> b!971802 m!899303))

(declare-fun m!899305 () Bool)

(assert (=> b!971809 m!899305))

(declare-fun m!899307 () Bool)

(assert (=> b!971803 m!899307))

(declare-fun m!899309 () Bool)

(assert (=> b!971803 m!899309))

(declare-fun m!899311 () Bool)

(assert (=> b!971803 m!899311))

(check-sat b_and!30791 (not mapNonEmpty!35269) (not b_lambda!14469) (not b!971809) (not b!971811) (not start!83310) tp_is_empty!22173 (not b!971807) (not b!971803) (not b_next!19275) (not b!971810) (not b!971802))
(check-sat b_and!30791 (not b_next!19275))
