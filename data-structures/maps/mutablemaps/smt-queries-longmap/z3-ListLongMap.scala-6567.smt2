; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83316 () Bool)

(assert start!83316)

(declare-fun b_free!19281 () Bool)

(declare-fun b_next!19281 () Bool)

(assert (=> start!83316 (= b_free!19281 (not b_next!19281))))

(declare-fun tp!67123 () Bool)

(declare-fun b_and!30801 () Bool)

(assert (=> start!83316 (= tp!67123 b_and!30801)))

(declare-fun b!971906 () Bool)

(declare-fun e!547877 () Bool)

(declare-fun e!547879 () Bool)

(declare-fun mapRes!35278 () Bool)

(assert (=> b!971906 (= e!547877 (and e!547879 mapRes!35278))))

(declare-fun condMapEmpty!35278 () Bool)

(declare-datatypes ((V!34555 0))(
  ( (V!34556 (val!11140 Int)) )
))
(declare-datatypes ((ValueCell!10608 0))(
  ( (ValueCellFull!10608 (v!13699 V!34555)) (EmptyCell!10608) )
))
(declare-datatypes ((array!60389 0))(
  ( (array!60390 (arr!29054 (Array (_ BitVec 32) ValueCell!10608)) (size!29534 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60389)

(declare-fun mapDefault!35278 () ValueCell!10608)

(assert (=> b!971906 (= condMapEmpty!35278 (= (arr!29054 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10608)) mapDefault!35278)))))

(declare-fun b!971907 () Bool)

(declare-fun res!650660 () Bool)

(declare-fun e!547878 () Bool)

(assert (=> b!971907 (=> (not res!650660) (not e!547878))))

(declare-datatypes ((array!60391 0))(
  ( (array!60392 (arr!29055 (Array (_ BitVec 32) (_ BitVec 64))) (size!29535 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60391)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60391 (_ BitVec 32)) Bool)

(assert (=> b!971907 (= res!650660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971908 () Bool)

(declare-fun res!650659 () Bool)

(assert (=> b!971908 (=> (not res!650659) (not e!547878))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!971908 (= res!650659 (and (= (size!29534 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29535 _keys!1717) (size!29534 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971909 () Bool)

(declare-fun e!547880 () Bool)

(declare-fun tp_is_empty!22179 () Bool)

(assert (=> b!971909 (= e!547880 tp_is_empty!22179)))

(declare-fun mapNonEmpty!35278 () Bool)

(declare-fun tp!67122 () Bool)

(assert (=> mapNonEmpty!35278 (= mapRes!35278 (and tp!67122 e!547880))))

(declare-fun mapValue!35278 () ValueCell!10608)

(declare-fun mapRest!35278 () (Array (_ BitVec 32) ValueCell!10608))

(declare-fun mapKey!35278 () (_ BitVec 32))

(assert (=> mapNonEmpty!35278 (= (arr!29054 _values!1425) (store mapRest!35278 mapKey!35278 mapValue!35278))))

(declare-fun b!971910 () Bool)

(declare-fun res!650663 () Bool)

(assert (=> b!971910 (=> (not res!650663) (not e!547878))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971910 (= res!650663 (validKeyInArray!0 (select (arr!29055 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35278 () Bool)

(assert (=> mapIsEmpty!35278 mapRes!35278))

(declare-fun b!971911 () Bool)

(declare-fun e!547876 () Bool)

(assert (=> b!971911 (= e!547876 (not true))))

(declare-fun lt!431883 () (_ BitVec 64))

(declare-fun zeroValue!1367 () V!34555)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34555)

(declare-datatypes ((tuple2!14386 0))(
  ( (tuple2!14387 (_1!7203 (_ BitVec 64)) (_2!7203 V!34555)) )
))
(declare-datatypes ((List!20277 0))(
  ( (Nil!20274) (Cons!20273 (h!21435 tuple2!14386) (t!28664 List!20277)) )
))
(declare-datatypes ((ListLongMap!13097 0))(
  ( (ListLongMap!13098 (toList!6564 List!20277)) )
))
(declare-fun lt!431884 () ListLongMap!13097)

(declare-fun +!2843 (ListLongMap!13097 tuple2!14386) ListLongMap!13097)

(declare-fun getCurrentListMap!3749 (array!60391 array!60389 (_ BitVec 32) (_ BitVec 32) V!34555 V!34555 (_ BitVec 32) Int) ListLongMap!13097)

(declare-fun get!15072 (ValueCell!10608 V!34555) V!34555)

(declare-fun dynLambda!1682 (Int (_ BitVec 64)) V!34555)

(assert (=> b!971911 (= lt!431884 (+!2843 (getCurrentListMap!3749 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14387 lt!431883 (get!15072 (select (arr!29054 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1682 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32347 0))(
  ( (Unit!32348) )
))
(declare-fun lt!431882 () Unit!32347)

(declare-fun lemmaListMapRecursiveValidKeyArray!254 (array!60391 array!60389 (_ BitVec 32) (_ BitVec 32) V!34555 V!34555 (_ BitVec 32) Int) Unit!32347)

(assert (=> b!971911 (= lt!431882 (lemmaListMapRecursiveValidKeyArray!254 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971912 () Bool)

(declare-fun res!650662 () Bool)

(assert (=> b!971912 (=> (not res!650662) (not e!547878))))

(declare-fun contains!5613 (ListLongMap!13097 (_ BitVec 64)) Bool)

(assert (=> b!971912 (= res!650662 (contains!5613 (getCurrentListMap!3749 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29055 _keys!1717) i!822)))))

(declare-fun res!650664 () Bool)

(assert (=> start!83316 (=> (not res!650664) (not e!547878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83316 (= res!650664 (validMask!0 mask!2147))))

(assert (=> start!83316 e!547878))

(assert (=> start!83316 true))

(declare-fun array_inv!22377 (array!60389) Bool)

(assert (=> start!83316 (and (array_inv!22377 _values!1425) e!547877)))

(assert (=> start!83316 tp_is_empty!22179))

(assert (=> start!83316 tp!67123))

(declare-fun array_inv!22378 (array!60391) Bool)

(assert (=> start!83316 (array_inv!22378 _keys!1717)))

(declare-fun b!971913 () Bool)

(assert (=> b!971913 (= e!547879 tp_is_empty!22179)))

(declare-fun b!971914 () Bool)

(assert (=> b!971914 (= e!547878 e!547876)))

(declare-fun res!650661 () Bool)

(assert (=> b!971914 (=> (not res!650661) (not e!547876))))

(assert (=> b!971914 (= res!650661 (validKeyInArray!0 lt!431883))))

(assert (=> b!971914 (= lt!431883 (select (arr!29055 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!971914 (= lt!431884 (getCurrentListMap!3749 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971915 () Bool)

(declare-fun res!650658 () Bool)

(assert (=> b!971915 (=> (not res!650658) (not e!547878))))

(declare-datatypes ((List!20278 0))(
  ( (Nil!20275) (Cons!20274 (h!21436 (_ BitVec 64)) (t!28665 List!20278)) )
))
(declare-fun arrayNoDuplicates!0 (array!60391 (_ BitVec 32) List!20278) Bool)

(assert (=> b!971915 (= res!650658 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20275))))

(declare-fun b!971916 () Bool)

(declare-fun res!650665 () Bool)

(assert (=> b!971916 (=> (not res!650665) (not e!547878))))

(assert (=> b!971916 (= res!650665 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29535 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29535 _keys!1717))))))

(assert (= (and start!83316 res!650664) b!971908))

(assert (= (and b!971908 res!650659) b!971907))

(assert (= (and b!971907 res!650660) b!971915))

(assert (= (and b!971915 res!650658) b!971916))

(assert (= (and b!971916 res!650665) b!971910))

(assert (= (and b!971910 res!650663) b!971912))

(assert (= (and b!971912 res!650662) b!971914))

(assert (= (and b!971914 res!650661) b!971911))

(assert (= (and b!971906 condMapEmpty!35278) mapIsEmpty!35278))

(assert (= (and b!971906 (not condMapEmpty!35278)) mapNonEmpty!35278))

(get-info :version)

(assert (= (and mapNonEmpty!35278 ((_ is ValueCellFull!10608) mapValue!35278)) b!971909))

(assert (= (and b!971906 ((_ is ValueCellFull!10608) mapDefault!35278)) b!971913))

(assert (= start!83316 b!971906))

(declare-fun b_lambda!14475 () Bool)

(assert (=> (not b_lambda!14475) (not b!971911)))

(declare-fun t!28663 () Bool)

(declare-fun tb!6237 () Bool)

(assert (=> (and start!83316 (= defaultEntry!1428 defaultEntry!1428) t!28663) tb!6237))

(declare-fun result!12443 () Bool)

(assert (=> tb!6237 (= result!12443 tp_is_empty!22179)))

(assert (=> b!971911 t!28663))

(declare-fun b_and!30803 () Bool)

(assert (= b_and!30801 (and (=> t!28663 result!12443) b_and!30803)))

(declare-fun m!899389 () Bool)

(assert (=> mapNonEmpty!35278 m!899389))

(declare-fun m!899391 () Bool)

(assert (=> b!971910 m!899391))

(assert (=> b!971910 m!899391))

(declare-fun m!899393 () Bool)

(assert (=> b!971910 m!899393))

(declare-fun m!899395 () Bool)

(assert (=> start!83316 m!899395))

(declare-fun m!899397 () Bool)

(assert (=> start!83316 m!899397))

(declare-fun m!899399 () Bool)

(assert (=> start!83316 m!899399))

(declare-fun m!899401 () Bool)

(assert (=> b!971911 m!899401))

(declare-fun m!899403 () Bool)

(assert (=> b!971911 m!899403))

(assert (=> b!971911 m!899401))

(assert (=> b!971911 m!899403))

(declare-fun m!899405 () Bool)

(assert (=> b!971911 m!899405))

(declare-fun m!899407 () Bool)

(assert (=> b!971911 m!899407))

(declare-fun m!899409 () Bool)

(assert (=> b!971911 m!899409))

(assert (=> b!971911 m!899409))

(declare-fun m!899411 () Bool)

(assert (=> b!971911 m!899411))

(declare-fun m!899413 () Bool)

(assert (=> b!971907 m!899413))

(declare-fun m!899415 () Bool)

(assert (=> b!971912 m!899415))

(assert (=> b!971912 m!899391))

(assert (=> b!971912 m!899415))

(assert (=> b!971912 m!899391))

(declare-fun m!899417 () Bool)

(assert (=> b!971912 m!899417))

(declare-fun m!899419 () Bool)

(assert (=> b!971915 m!899419))

(declare-fun m!899421 () Bool)

(assert (=> b!971914 m!899421))

(declare-fun m!899423 () Bool)

(assert (=> b!971914 m!899423))

(declare-fun m!899425 () Bool)

(assert (=> b!971914 m!899425))

(check-sat (not b!971907) (not b!971911) (not b_lambda!14475) (not b!971910) (not mapNonEmpty!35278) (not b!971915) b_and!30803 (not b_next!19281) tp_is_empty!22179 (not start!83316) (not b!971914) (not b!971912))
(check-sat b_and!30803 (not b_next!19281))
