; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83370 () Bool)

(assert start!83370)

(declare-fun b_free!19335 () Bool)

(declare-fun b_next!19335 () Bool)

(assert (=> start!83370 (= b_free!19335 (not b_next!19335))))

(declare-fun tp!67284 () Bool)

(declare-fun b_and!30909 () Bool)

(assert (=> start!83370 (= tp!67284 b_and!30909)))

(declare-fun b!972851 () Bool)

(declare-fun e!548381 () Bool)

(declare-fun e!548382 () Bool)

(declare-fun mapRes!35359 () Bool)

(assert (=> b!972851 (= e!548381 (and e!548382 mapRes!35359))))

(declare-fun condMapEmpty!35359 () Bool)

(declare-datatypes ((V!34627 0))(
  ( (V!34628 (val!11167 Int)) )
))
(declare-datatypes ((ValueCell!10635 0))(
  ( (ValueCellFull!10635 (v!13726 V!34627)) (EmptyCell!10635) )
))
(declare-datatypes ((array!60491 0))(
  ( (array!60492 (arr!29105 (Array (_ BitVec 32) ValueCell!10635)) (size!29585 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60491)

(declare-fun mapDefault!35359 () ValueCell!10635)

(assert (=> b!972851 (= condMapEmpty!35359 (= (arr!29105 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10635)) mapDefault!35359)))))

(declare-fun res!651307 () Bool)

(declare-fun e!548380 () Bool)

(assert (=> start!83370 (=> (not res!651307) (not e!548380))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83370 (= res!651307 (validMask!0 mask!2147))))

(assert (=> start!83370 e!548380))

(assert (=> start!83370 true))

(declare-fun array_inv!22413 (array!60491) Bool)

(assert (=> start!83370 (and (array_inv!22413 _values!1425) e!548381)))

(declare-fun tp_is_empty!22233 () Bool)

(assert (=> start!83370 tp_is_empty!22233))

(assert (=> start!83370 tp!67284))

(declare-datatypes ((array!60493 0))(
  ( (array!60494 (arr!29106 (Array (_ BitVec 32) (_ BitVec 64))) (size!29586 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60493)

(declare-fun array_inv!22414 (array!60493) Bool)

(assert (=> start!83370 (array_inv!22414 _keys!1717)))

(declare-fun b!972852 () Bool)

(declare-fun e!548379 () Bool)

(assert (=> b!972852 (= e!548379 tp_is_empty!22233)))

(declare-fun b!972853 () Bool)

(declare-fun res!651309 () Bool)

(assert (=> b!972853 (=> (not res!651309) (not e!548380))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972853 (= res!651309 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29586 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29586 _keys!1717))))))

(declare-fun b!972854 () Bool)

(assert (=> b!972854 (= e!548382 tp_is_empty!22233)))

(declare-fun mapIsEmpty!35359 () Bool)

(assert (=> mapIsEmpty!35359 mapRes!35359))

(declare-fun b!972855 () Bool)

(declare-fun e!548376 () Bool)

(assert (=> b!972855 (= e!548376 (not true))))

(declare-datatypes ((tuple2!14428 0))(
  ( (tuple2!14429 (_1!7224 (_ BitVec 64)) (_2!7224 V!34627)) )
))
(declare-fun lt!432187 () tuple2!14428)

(declare-datatypes ((List!20313 0))(
  ( (Nil!20310) (Cons!20309 (h!21471 tuple2!14428) (t!28754 List!20313)) )
))
(declare-datatypes ((ListLongMap!13139 0))(
  ( (ListLongMap!13140 (toList!6585 List!20313)) )
))
(declare-fun lt!432184 () ListLongMap!13139)

(declare-fun contains!5632 (ListLongMap!13139 (_ BitVec 64)) Bool)

(declare-fun +!2859 (ListLongMap!13139 tuple2!14428) ListLongMap!13139)

(assert (=> b!972855 (contains!5632 (+!2859 lt!432184 lt!432187) (select (arr!29106 _keys!1717) i!822))))

(declare-fun lt!432182 () (_ BitVec 64))

(declare-datatypes ((Unit!32379 0))(
  ( (Unit!32380) )
))
(declare-fun lt!432186 () Unit!32379)

(declare-fun lt!432183 () V!34627)

(declare-fun addStillContains!598 (ListLongMap!13139 (_ BitVec 64) V!34627 (_ BitVec 64)) Unit!32379)

(assert (=> b!972855 (= lt!432186 (addStillContains!598 lt!432184 lt!432182 lt!432183 (select (arr!29106 _keys!1717) i!822)))))

(declare-fun lt!432185 () ListLongMap!13139)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34627)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34627)

(declare-fun getCurrentListMap!3770 (array!60493 array!60491 (_ BitVec 32) (_ BitVec 32) V!34627 V!34627 (_ BitVec 32) Int) ListLongMap!13139)

(assert (=> b!972855 (= lt!432185 (+!2859 (getCurrentListMap!3770 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432187))))

(assert (=> b!972855 (= lt!432187 (tuple2!14429 lt!432182 lt!432183))))

(declare-fun get!15106 (ValueCell!10635 V!34627) V!34627)

(declare-fun dynLambda!1698 (Int (_ BitVec 64)) V!34627)

(assert (=> b!972855 (= lt!432183 (get!15106 (select (arr!29105 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1698 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432181 () Unit!32379)

(declare-fun lemmaListMapRecursiveValidKeyArray!270 (array!60493 array!60491 (_ BitVec 32) (_ BitVec 32) V!34627 V!34627 (_ BitVec 32) Int) Unit!32379)

(assert (=> b!972855 (= lt!432181 (lemmaListMapRecursiveValidKeyArray!270 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972856 () Bool)

(declare-fun res!651311 () Bool)

(assert (=> b!972856 (=> (not res!651311) (not e!548380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972856 (= res!651311 (validKeyInArray!0 (select (arr!29106 _keys!1717) i!822)))))

(declare-fun b!972857 () Bool)

(declare-fun e!548377 () Bool)

(assert (=> b!972857 (= e!548377 e!548376)))

(declare-fun res!651310 () Bool)

(assert (=> b!972857 (=> (not res!651310) (not e!548376))))

(assert (=> b!972857 (= res!651310 (validKeyInArray!0 lt!432182))))

(assert (=> b!972857 (= lt!432182 (select (arr!29106 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972857 (= lt!432185 (getCurrentListMap!3770 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35359 () Bool)

(declare-fun tp!67285 () Bool)

(assert (=> mapNonEmpty!35359 (= mapRes!35359 (and tp!67285 e!548379))))

(declare-fun mapRest!35359 () (Array (_ BitVec 32) ValueCell!10635))

(declare-fun mapKey!35359 () (_ BitVec 32))

(declare-fun mapValue!35359 () ValueCell!10635)

(assert (=> mapNonEmpty!35359 (= (arr!29105 _values!1425) (store mapRest!35359 mapKey!35359 mapValue!35359))))

(declare-fun b!972858 () Bool)

(declare-fun res!651308 () Bool)

(assert (=> b!972858 (=> (not res!651308) (not e!548380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60493 (_ BitVec 32)) Bool)

(assert (=> b!972858 (= res!651308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972859 () Bool)

(declare-fun res!651306 () Bool)

(assert (=> b!972859 (=> (not res!651306) (not e!548380))))

(declare-datatypes ((List!20314 0))(
  ( (Nil!20311) (Cons!20310 (h!21472 (_ BitVec 64)) (t!28755 List!20314)) )
))
(declare-fun arrayNoDuplicates!0 (array!60493 (_ BitVec 32) List!20314) Bool)

(assert (=> b!972859 (= res!651306 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20311))))

(declare-fun b!972860 () Bool)

(assert (=> b!972860 (= e!548380 e!548377)))

(declare-fun res!651313 () Bool)

(assert (=> b!972860 (=> (not res!651313) (not e!548377))))

(assert (=> b!972860 (= res!651313 (contains!5632 lt!432184 (select (arr!29106 _keys!1717) i!822)))))

(assert (=> b!972860 (= lt!432184 (getCurrentListMap!3770 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!972861 () Bool)

(declare-fun res!651312 () Bool)

(assert (=> b!972861 (=> (not res!651312) (not e!548380))))

(assert (=> b!972861 (= res!651312 (and (= (size!29585 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29586 _keys!1717) (size!29585 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83370 res!651307) b!972861))

(assert (= (and b!972861 res!651312) b!972858))

(assert (= (and b!972858 res!651308) b!972859))

(assert (= (and b!972859 res!651306) b!972853))

(assert (= (and b!972853 res!651309) b!972856))

(assert (= (and b!972856 res!651311) b!972860))

(assert (= (and b!972860 res!651313) b!972857))

(assert (= (and b!972857 res!651310) b!972855))

(assert (= (and b!972851 condMapEmpty!35359) mapIsEmpty!35359))

(assert (= (and b!972851 (not condMapEmpty!35359)) mapNonEmpty!35359))

(get-info :version)

(assert (= (and mapNonEmpty!35359 ((_ is ValueCellFull!10635) mapValue!35359)) b!972852))

(assert (= (and b!972851 ((_ is ValueCellFull!10635) mapDefault!35359)) b!972854))

(assert (= start!83370 b!972851))

(declare-fun b_lambda!14529 () Bool)

(assert (=> (not b_lambda!14529) (not b!972855)))

(declare-fun t!28753 () Bool)

(declare-fun tb!6291 () Bool)

(assert (=> (and start!83370 (= defaultEntry!1428 defaultEntry!1428) t!28753) tb!6291))

(declare-fun result!12551 () Bool)

(assert (=> tb!6291 (= result!12551 tp_is_empty!22233)))

(assert (=> b!972855 t!28753))

(declare-fun b_and!30911 () Bool)

(assert (= b_and!30909 (and (=> t!28753 result!12551) b_and!30911)))

(declare-fun m!900439 () Bool)

(assert (=> mapNonEmpty!35359 m!900439))

(declare-fun m!900441 () Bool)

(assert (=> b!972858 m!900441))

(declare-fun m!900443 () Bool)

(assert (=> b!972855 m!900443))

(declare-fun m!900445 () Bool)

(assert (=> b!972855 m!900445))

(assert (=> b!972855 m!900445))

(declare-fun m!900447 () Bool)

(assert (=> b!972855 m!900447))

(declare-fun m!900449 () Bool)

(assert (=> b!972855 m!900449))

(declare-fun m!900451 () Bool)

(assert (=> b!972855 m!900451))

(declare-fun m!900453 () Bool)

(assert (=> b!972855 m!900453))

(assert (=> b!972855 m!900451))

(assert (=> b!972855 m!900443))

(declare-fun m!900455 () Bool)

(assert (=> b!972855 m!900455))

(declare-fun m!900457 () Bool)

(assert (=> b!972855 m!900457))

(assert (=> b!972855 m!900451))

(declare-fun m!900459 () Bool)

(assert (=> b!972855 m!900459))

(declare-fun m!900461 () Bool)

(assert (=> b!972855 m!900461))

(assert (=> b!972855 m!900449))

(assert (=> b!972855 m!900455))

(assert (=> b!972860 m!900451))

(assert (=> b!972860 m!900451))

(declare-fun m!900463 () Bool)

(assert (=> b!972860 m!900463))

(declare-fun m!900465 () Bool)

(assert (=> b!972860 m!900465))

(declare-fun m!900467 () Bool)

(assert (=> start!83370 m!900467))

(declare-fun m!900469 () Bool)

(assert (=> start!83370 m!900469))

(declare-fun m!900471 () Bool)

(assert (=> start!83370 m!900471))

(declare-fun m!900473 () Bool)

(assert (=> b!972857 m!900473))

(declare-fun m!900475 () Bool)

(assert (=> b!972857 m!900475))

(declare-fun m!900477 () Bool)

(assert (=> b!972857 m!900477))

(assert (=> b!972856 m!900451))

(assert (=> b!972856 m!900451))

(declare-fun m!900479 () Bool)

(assert (=> b!972856 m!900479))

(declare-fun m!900481 () Bool)

(assert (=> b!972859 m!900481))

(check-sat (not b!972855) (not b!972860) b_and!30911 (not b!972859) (not mapNonEmpty!35359) (not start!83370) (not b_next!19335) (not b_lambda!14529) (not b!972857) (not b!972856) (not b!972858) tp_is_empty!22233)
(check-sat b_and!30911 (not b_next!19335))
