; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83280 () Bool)

(assert start!83280)

(declare-fun b_free!19245 () Bool)

(declare-fun b_next!19245 () Bool)

(assert (=> start!83280 (= b_free!19245 (not b_next!19245))))

(declare-fun tp!67015 () Bool)

(declare-fun b_and!30751 () Bool)

(assert (=> start!83280 (= tp!67015 b_and!30751)))

(declare-fun b!971329 () Bool)

(declare-fun res!650259 () Bool)

(declare-fun e!547584 () Bool)

(assert (=> b!971329 (=> (not res!650259) (not e!547584))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34507 0))(
  ( (V!34508 (val!11122 Int)) )
))
(declare-datatypes ((ValueCell!10590 0))(
  ( (ValueCellFull!10590 (v!13681 V!34507)) (EmptyCell!10590) )
))
(declare-datatypes ((array!60319 0))(
  ( (array!60320 (arr!29019 (Array (_ BitVec 32) ValueCell!10590)) (size!29499 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60319)

(declare-fun zeroValue!1367 () V!34507)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60321 0))(
  ( (array!60322 (arr!29020 (Array (_ BitVec 32) (_ BitVec 64))) (size!29500 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60321)

(declare-fun minValue!1367 () V!34507)

(declare-datatypes ((tuple2!14360 0))(
  ( (tuple2!14361 (_1!7190 (_ BitVec 64)) (_2!7190 V!34507)) )
))
(declare-datatypes ((List!20249 0))(
  ( (Nil!20246) (Cons!20245 (h!21407 tuple2!14360) (t!28620 List!20249)) )
))
(declare-datatypes ((ListLongMap!13071 0))(
  ( (ListLongMap!13072 (toList!6551 List!20249)) )
))
(declare-fun contains!5602 (ListLongMap!13071 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3736 (array!60321 array!60319 (_ BitVec 32) (_ BitVec 32) V!34507 V!34507 (_ BitVec 32) Int) ListLongMap!13071)

(assert (=> b!971329 (= res!650259 (contains!5602 (getCurrentListMap!3736 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29020 _keys!1717) i!822)))))

(declare-fun b!971330 () Bool)

(declare-fun e!547586 () Bool)

(declare-fun tp_is_empty!22143 () Bool)

(assert (=> b!971330 (= e!547586 tp_is_empty!22143)))

(declare-fun b!971331 () Bool)

(declare-fun e!547583 () Bool)

(declare-fun mapRes!35224 () Bool)

(assert (=> b!971331 (= e!547583 (and e!547586 mapRes!35224))))

(declare-fun condMapEmpty!35224 () Bool)

(declare-fun mapDefault!35224 () ValueCell!10590)

(assert (=> b!971331 (= condMapEmpty!35224 (= (arr!29019 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10590)) mapDefault!35224)))))

(declare-fun b!971332 () Bool)

(declare-fun res!650263 () Bool)

(assert (=> b!971332 (=> (not res!650263) (not e!547584))))

(assert (=> b!971332 (= res!650263 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29500 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29500 _keys!1717))))))

(declare-fun mapNonEmpty!35224 () Bool)

(declare-fun tp!67014 () Bool)

(declare-fun e!547587 () Bool)

(assert (=> mapNonEmpty!35224 (= mapRes!35224 (and tp!67014 e!547587))))

(declare-fun mapKey!35224 () (_ BitVec 32))

(declare-fun mapValue!35224 () ValueCell!10590)

(declare-fun mapRest!35224 () (Array (_ BitVec 32) ValueCell!10590))

(assert (=> mapNonEmpty!35224 (= (arr!29019 _values!1425) (store mapRest!35224 mapKey!35224 mapValue!35224))))

(declare-fun mapIsEmpty!35224 () Bool)

(assert (=> mapIsEmpty!35224 mapRes!35224))

(declare-fun b!971333 () Bool)

(assert (=> b!971333 (= e!547584 false)))

(declare-fun lt!431782 () ListLongMap!13071)

(assert (=> b!971333 (= lt!431782 (getCurrentListMap!3736 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971334 () Bool)

(declare-fun res!650258 () Bool)

(assert (=> b!971334 (=> (not res!650258) (not e!547584))))

(assert (=> b!971334 (= res!650258 (and (= (size!29499 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29500 _keys!1717) (size!29499 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971335 () Bool)

(declare-fun res!650257 () Bool)

(assert (=> b!971335 (=> (not res!650257) (not e!547584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60321 (_ BitVec 32)) Bool)

(assert (=> b!971335 (= res!650257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971336 () Bool)

(declare-fun res!650262 () Bool)

(assert (=> b!971336 (=> (not res!650262) (not e!547584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971336 (= res!650262 (validKeyInArray!0 (select (arr!29020 _keys!1717) i!822)))))

(declare-fun b!971337 () Bool)

(assert (=> b!971337 (= e!547587 tp_is_empty!22143)))

(declare-fun res!650260 () Bool)

(assert (=> start!83280 (=> (not res!650260) (not e!547584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83280 (= res!650260 (validMask!0 mask!2147))))

(assert (=> start!83280 e!547584))

(assert (=> start!83280 true))

(declare-fun array_inv!22347 (array!60319) Bool)

(assert (=> start!83280 (and (array_inv!22347 _values!1425) e!547583)))

(assert (=> start!83280 tp_is_empty!22143))

(assert (=> start!83280 tp!67015))

(declare-fun array_inv!22348 (array!60321) Bool)

(assert (=> start!83280 (array_inv!22348 _keys!1717)))

(declare-fun b!971338 () Bool)

(declare-fun res!650261 () Bool)

(assert (=> b!971338 (=> (not res!650261) (not e!547584))))

(declare-datatypes ((List!20250 0))(
  ( (Nil!20247) (Cons!20246 (h!21408 (_ BitVec 64)) (t!28621 List!20250)) )
))
(declare-fun arrayNoDuplicates!0 (array!60321 (_ BitVec 32) List!20250) Bool)

(assert (=> b!971338 (= res!650261 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20247))))

(assert (= (and start!83280 res!650260) b!971334))

(assert (= (and b!971334 res!650258) b!971335))

(assert (= (and b!971335 res!650257) b!971338))

(assert (= (and b!971338 res!650261) b!971332))

(assert (= (and b!971332 res!650263) b!971336))

(assert (= (and b!971336 res!650262) b!971329))

(assert (= (and b!971329 res!650259) b!971333))

(assert (= (and b!971331 condMapEmpty!35224) mapIsEmpty!35224))

(assert (= (and b!971331 (not condMapEmpty!35224)) mapNonEmpty!35224))

(get-info :version)

(assert (= (and mapNonEmpty!35224 ((_ is ValueCellFull!10590) mapValue!35224)) b!971337))

(assert (= (and b!971331 ((_ is ValueCellFull!10590) mapDefault!35224)) b!971330))

(assert (= start!83280 b!971331))

(declare-fun m!898881 () Bool)

(assert (=> b!971335 m!898881))

(declare-fun m!898883 () Bool)

(assert (=> mapNonEmpty!35224 m!898883))

(declare-fun m!898885 () Bool)

(assert (=> b!971333 m!898885))

(declare-fun m!898887 () Bool)

(assert (=> b!971329 m!898887))

(declare-fun m!898889 () Bool)

(assert (=> b!971329 m!898889))

(assert (=> b!971329 m!898887))

(assert (=> b!971329 m!898889))

(declare-fun m!898891 () Bool)

(assert (=> b!971329 m!898891))

(assert (=> b!971336 m!898889))

(assert (=> b!971336 m!898889))

(declare-fun m!898893 () Bool)

(assert (=> b!971336 m!898893))

(declare-fun m!898895 () Bool)

(assert (=> start!83280 m!898895))

(declare-fun m!898897 () Bool)

(assert (=> start!83280 m!898897))

(declare-fun m!898899 () Bool)

(assert (=> start!83280 m!898899))

(declare-fun m!898901 () Bool)

(assert (=> b!971338 m!898901))

(check-sat (not start!83280) (not b_next!19245) (not b!971329) tp_is_empty!22143 (not b!971333) (not mapNonEmpty!35224) (not b!971336) (not b!971335) (not b!971338) b_and!30751)
(check-sat b_and!30751 (not b_next!19245))
