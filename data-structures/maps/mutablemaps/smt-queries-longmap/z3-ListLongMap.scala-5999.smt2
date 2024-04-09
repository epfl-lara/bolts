; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77876 () Bool)

(assert start!77876)

(declare-fun b_free!16407 () Bool)

(declare-fun b_next!16407 () Bool)

(assert (=> start!77876 (= b_free!16407 (not b_next!16407))))

(declare-fun tp!57486 () Bool)

(declare-fun b_and!26989 () Bool)

(assert (=> start!77876 (= tp!57486 b_and!26989)))

(declare-fun mapIsEmpty!29953 () Bool)

(declare-fun mapRes!29953 () Bool)

(assert (=> mapIsEmpty!29953 mapRes!29953))

(declare-fun b!908856 () Bool)

(declare-fun e!509431 () Bool)

(declare-fun e!509435 () Bool)

(assert (=> b!908856 (= e!509431 e!509435)))

(declare-fun res!613567 () Bool)

(assert (=> b!908856 (=> (not res!613567) (not e!509435))))

(declare-datatypes ((V!30065 0))(
  ( (V!30066 (val!9463 Int)) )
))
(declare-datatypes ((tuple2!12362 0))(
  ( (tuple2!12363 (_1!6191 (_ BitVec 64)) (_2!6191 V!30065)) )
))
(declare-datatypes ((List!18216 0))(
  ( (Nil!18213) (Cons!18212 (h!19358 tuple2!12362) (t!25803 List!18216)) )
))
(declare-datatypes ((ListLongMap!11073 0))(
  ( (ListLongMap!11074 (toList!5552 List!18216)) )
))
(declare-fun lt!409870 () ListLongMap!11073)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4559 (ListLongMap!11073 (_ BitVec 64)) Bool)

(assert (=> b!908856 (= res!613567 (contains!4559 lt!409870 k0!1033))))

(declare-datatypes ((ValueCell!8931 0))(
  ( (ValueCellFull!8931 (v!11970 V!30065)) (EmptyCell!8931) )
))
(declare-datatypes ((array!53672 0))(
  ( (array!53673 (arr!25790 (Array (_ BitVec 32) ValueCell!8931)) (size!26250 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53672)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30065)

(declare-datatypes ((array!53674 0))(
  ( (array!53675 (arr!25791 (Array (_ BitVec 32) (_ BitVec 64))) (size!26251 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53674)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30065)

(declare-fun getCurrentListMap!2782 (array!53674 array!53672 (_ BitVec 32) (_ BitVec 32) V!30065 V!30065 (_ BitVec 32) Int) ListLongMap!11073)

(assert (=> b!908856 (= lt!409870 (getCurrentListMap!2782 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908857 () Bool)

(declare-fun res!613568 () Bool)

(assert (=> b!908857 (=> (not res!613568) (not e!509431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53674 (_ BitVec 32)) Bool)

(assert (=> b!908857 (= res!613568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908858 () Bool)

(declare-fun res!613575 () Bool)

(assert (=> b!908858 (=> (not res!613575) (not e!509431))))

(assert (=> b!908858 (= res!613575 (and (= (size!26250 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26251 _keys!1386) (size!26250 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908859 () Bool)

(declare-fun e!509434 () Bool)

(declare-fun e!509432 () Bool)

(assert (=> b!908859 (= e!509434 (and e!509432 mapRes!29953))))

(declare-fun condMapEmpty!29953 () Bool)

(declare-fun mapDefault!29953 () ValueCell!8931)

(assert (=> b!908859 (= condMapEmpty!29953 (= (arr!25790 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8931)) mapDefault!29953)))))

(declare-fun b!908860 () Bool)

(declare-fun e!509433 () Bool)

(assert (=> b!908860 (= e!509435 (not e!509433))))

(declare-fun res!613574 () Bool)

(assert (=> b!908860 (=> res!613574 e!509433)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!908860 (= res!613574 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26251 _keys!1386))))))

(declare-fun lt!409869 () V!30065)

(declare-fun get!13595 (ValueCell!8931 V!30065) V!30065)

(declare-fun dynLambda!1390 (Int (_ BitVec 64)) V!30065)

(assert (=> b!908860 (= lt!409869 (get!13595 (select (arr!25790 _values!1152) i!717) (dynLambda!1390 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908860 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30821 0))(
  ( (Unit!30822) )
))
(declare-fun lt!409868 () Unit!30821)

(declare-fun lemmaKeyInListMapIsInArray!263 (array!53674 array!53672 (_ BitVec 32) (_ BitVec 32) V!30065 V!30065 (_ BitVec 64) Int) Unit!30821)

(assert (=> b!908860 (= lt!409868 (lemmaKeyInListMapIsInArray!263 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908861 () Bool)

(declare-fun e!509428 () Bool)

(assert (=> b!908861 (= e!509433 e!509428)))

(declare-fun res!613573 () Bool)

(assert (=> b!908861 (=> res!613573 e!509428)))

(declare-fun lt!409867 () ListLongMap!11073)

(assert (=> b!908861 (= res!613573 (not (contains!4559 lt!409867 k0!1033)))))

(assert (=> b!908861 (= lt!409867 (getCurrentListMap!2782 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908862 () Bool)

(declare-fun res!613576 () Bool)

(assert (=> b!908862 (=> (not res!613576) (not e!509435))))

(assert (=> b!908862 (= res!613576 (and (= (select (arr!25791 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908863 () Bool)

(declare-fun res!613571 () Bool)

(assert (=> b!908863 (=> (not res!613571) (not e!509431))))

(declare-datatypes ((List!18217 0))(
  ( (Nil!18214) (Cons!18213 (h!19359 (_ BitVec 64)) (t!25804 List!18217)) )
))
(declare-fun arrayNoDuplicates!0 (array!53674 (_ BitVec 32) List!18217) Bool)

(assert (=> b!908863 (= res!613571 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18214))))

(declare-fun b!908864 () Bool)

(declare-fun e!509429 () Bool)

(declare-fun tp_is_empty!18825 () Bool)

(assert (=> b!908864 (= e!509429 tp_is_empty!18825)))

(declare-fun mapNonEmpty!29953 () Bool)

(declare-fun tp!57487 () Bool)

(assert (=> mapNonEmpty!29953 (= mapRes!29953 (and tp!57487 e!509429))))

(declare-fun mapValue!29953 () ValueCell!8931)

(declare-fun mapKey!29953 () (_ BitVec 32))

(declare-fun mapRest!29953 () (Array (_ BitVec 32) ValueCell!8931))

(assert (=> mapNonEmpty!29953 (= (arr!25790 _values!1152) (store mapRest!29953 mapKey!29953 mapValue!29953))))

(declare-fun b!908866 () Bool)

(assert (=> b!908866 (= e!509432 tp_is_empty!18825)))

(declare-fun b!908865 () Bool)

(declare-fun res!613569 () Bool)

(assert (=> b!908865 (=> res!613569 e!509428)))

(declare-fun apply!523 (ListLongMap!11073 (_ BitVec 64)) V!30065)

(assert (=> b!908865 (= res!613569 (not (= (apply!523 lt!409867 k0!1033) lt!409869)))))

(declare-fun res!613570 () Bool)

(assert (=> start!77876 (=> (not res!613570) (not e!509431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77876 (= res!613570 (validMask!0 mask!1756))))

(assert (=> start!77876 e!509431))

(declare-fun array_inv!20164 (array!53672) Bool)

(assert (=> start!77876 (and (array_inv!20164 _values!1152) e!509434)))

(assert (=> start!77876 tp!57486))

(assert (=> start!77876 true))

(assert (=> start!77876 tp_is_empty!18825))

(declare-fun array_inv!20165 (array!53674) Bool)

(assert (=> start!77876 (array_inv!20165 _keys!1386)))

(declare-fun b!908867 () Bool)

(declare-fun res!613572 () Bool)

(assert (=> b!908867 (=> (not res!613572) (not e!509435))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908867 (= res!613572 (inRange!0 i!717 mask!1756))))

(declare-fun b!908868 () Bool)

(assert (=> b!908868 (= e!509428 true)))

(assert (=> b!908868 (= (apply!523 lt!409870 k0!1033) lt!409869)))

(declare-fun lt!409866 () Unit!30821)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!65 (array!53674 array!53672 (_ BitVec 32) (_ BitVec 32) V!30065 V!30065 (_ BitVec 64) V!30065 (_ BitVec 32) Int) Unit!30821)

(assert (=> b!908868 (= lt!409866 (lemmaListMapApplyFromThenApplyFromZero!65 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409869 i!717 defaultEntry!1160))))

(assert (= (and start!77876 res!613570) b!908858))

(assert (= (and b!908858 res!613575) b!908857))

(assert (= (and b!908857 res!613568) b!908863))

(assert (= (and b!908863 res!613571) b!908856))

(assert (= (and b!908856 res!613567) b!908867))

(assert (= (and b!908867 res!613572) b!908862))

(assert (= (and b!908862 res!613576) b!908860))

(assert (= (and b!908860 (not res!613574)) b!908861))

(assert (= (and b!908861 (not res!613573)) b!908865))

(assert (= (and b!908865 (not res!613569)) b!908868))

(assert (= (and b!908859 condMapEmpty!29953) mapIsEmpty!29953))

(assert (= (and b!908859 (not condMapEmpty!29953)) mapNonEmpty!29953))

(get-info :version)

(assert (= (and mapNonEmpty!29953 ((_ is ValueCellFull!8931) mapValue!29953)) b!908864))

(assert (= (and b!908859 ((_ is ValueCellFull!8931) mapDefault!29953)) b!908866))

(assert (= start!77876 b!908859))

(declare-fun b_lambda!13321 () Bool)

(assert (=> (not b_lambda!13321) (not b!908860)))

(declare-fun t!25802 () Bool)

(declare-fun tb!5437 () Bool)

(assert (=> (and start!77876 (= defaultEntry!1160 defaultEntry!1160) t!25802) tb!5437))

(declare-fun result!10663 () Bool)

(assert (=> tb!5437 (= result!10663 tp_is_empty!18825)))

(assert (=> b!908860 t!25802))

(declare-fun b_and!26991 () Bool)

(assert (= b_and!26989 (and (=> t!25802 result!10663) b_and!26991)))

(declare-fun m!844285 () Bool)

(assert (=> b!908861 m!844285))

(declare-fun m!844287 () Bool)

(assert (=> b!908861 m!844287))

(declare-fun m!844289 () Bool)

(assert (=> b!908868 m!844289))

(declare-fun m!844291 () Bool)

(assert (=> b!908868 m!844291))

(declare-fun m!844293 () Bool)

(assert (=> b!908865 m!844293))

(declare-fun m!844295 () Bool)

(assert (=> b!908857 m!844295))

(declare-fun m!844297 () Bool)

(assert (=> b!908862 m!844297))

(declare-fun m!844299 () Bool)

(assert (=> b!908860 m!844299))

(declare-fun m!844301 () Bool)

(assert (=> b!908860 m!844301))

(declare-fun m!844303 () Bool)

(assert (=> b!908860 m!844303))

(declare-fun m!844305 () Bool)

(assert (=> b!908860 m!844305))

(assert (=> b!908860 m!844299))

(assert (=> b!908860 m!844303))

(declare-fun m!844307 () Bool)

(assert (=> b!908860 m!844307))

(declare-fun m!844309 () Bool)

(assert (=> b!908863 m!844309))

(declare-fun m!844311 () Bool)

(assert (=> start!77876 m!844311))

(declare-fun m!844313 () Bool)

(assert (=> start!77876 m!844313))

(declare-fun m!844315 () Bool)

(assert (=> start!77876 m!844315))

(declare-fun m!844317 () Bool)

(assert (=> b!908867 m!844317))

(declare-fun m!844319 () Bool)

(assert (=> mapNonEmpty!29953 m!844319))

(declare-fun m!844321 () Bool)

(assert (=> b!908856 m!844321))

(declare-fun m!844323 () Bool)

(assert (=> b!908856 m!844323))

(check-sat (not b!908863) tp_is_empty!18825 (not b!908861) (not b!908867) (not b!908865) (not b!908860) (not b_next!16407) (not mapNonEmpty!29953) (not b_lambda!13321) b_and!26991 (not b!908868) (not start!77876) (not b!908856) (not b!908857))
(check-sat b_and!26991 (not b_next!16407))
