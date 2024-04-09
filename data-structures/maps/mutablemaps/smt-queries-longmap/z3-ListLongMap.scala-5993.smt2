; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77840 () Bool)

(assert start!77840)

(declare-fun b_free!16371 () Bool)

(declare-fun b_next!16371 () Bool)

(assert (=> start!77840 (= b_free!16371 (not b_next!16371))))

(declare-fun tp!57379 () Bool)

(declare-fun b_and!26917 () Bool)

(assert (=> start!77840 (= tp!57379 b_and!26917)))

(declare-fun mapNonEmpty!29899 () Bool)

(declare-fun mapRes!29899 () Bool)

(declare-fun tp!57378 () Bool)

(declare-fun e!509001 () Bool)

(assert (=> mapNonEmpty!29899 (= mapRes!29899 (and tp!57378 e!509001))))

(declare-datatypes ((V!30017 0))(
  ( (V!30018 (val!9445 Int)) )
))
(declare-datatypes ((ValueCell!8913 0))(
  ( (ValueCellFull!8913 (v!11952 V!30017)) (EmptyCell!8913) )
))
(declare-datatypes ((array!53604 0))(
  ( (array!53605 (arr!25756 (Array (_ BitVec 32) ValueCell!8913)) (size!26216 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53604)

(declare-fun mapKey!29899 () (_ BitVec 32))

(declare-fun mapValue!29899 () ValueCell!8913)

(declare-fun mapRest!29899 () (Array (_ BitVec 32) ValueCell!8913))

(assert (=> mapNonEmpty!29899 (= (arr!25756 _values!1152) (store mapRest!29899 mapKey!29899 mapValue!29899))))

(declare-fun b!908119 () Bool)

(declare-fun res!613032 () Bool)

(declare-fun e!509002 () Bool)

(assert (=> b!908119 (=> (not res!613032) (not e!509002))))

(declare-datatypes ((array!53606 0))(
  ( (array!53607 (arr!25757 (Array (_ BitVec 32) (_ BitVec 64))) (size!26217 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53606)

(declare-datatypes ((List!18188 0))(
  ( (Nil!18185) (Cons!18184 (h!19330 (_ BitVec 64)) (t!25739 List!18188)) )
))
(declare-fun arrayNoDuplicates!0 (array!53606 (_ BitVec 32) List!18188) Bool)

(assert (=> b!908119 (= res!613032 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18185))))

(declare-fun b!908120 () Bool)

(declare-fun e!508996 () Bool)

(assert (=> b!908120 (= e!509002 e!508996)))

(declare-fun res!613034 () Bool)

(assert (=> b!908120 (=> (not res!613034) (not e!508996))))

(declare-datatypes ((tuple2!12332 0))(
  ( (tuple2!12333 (_1!6176 (_ BitVec 64)) (_2!6176 V!30017)) )
))
(declare-datatypes ((List!18189 0))(
  ( (Nil!18186) (Cons!18185 (h!19331 tuple2!12332) (t!25740 List!18189)) )
))
(declare-datatypes ((ListLongMap!11043 0))(
  ( (ListLongMap!11044 (toList!5537 List!18189)) )
))
(declare-fun lt!409597 () ListLongMap!11043)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4546 (ListLongMap!11043 (_ BitVec 64)) Bool)

(assert (=> b!908120 (= res!613034 (contains!4546 lt!409597 k0!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30017)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30017)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun getCurrentListMap!2769 (array!53606 array!53604 (_ BitVec 32) (_ BitVec 32) V!30017 V!30017 (_ BitVec 32) Int) ListLongMap!11043)

(assert (=> b!908120 (= lt!409597 (getCurrentListMap!2769 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908121 () Bool)

(declare-fun res!613028 () Bool)

(declare-fun e!509000 () Bool)

(assert (=> b!908121 (=> res!613028 e!509000)))

(declare-fun lt!409596 () ListLongMap!11043)

(declare-fun lt!409598 () V!30017)

(declare-fun apply!511 (ListLongMap!11043 (_ BitVec 64)) V!30017)

(assert (=> b!908121 (= res!613028 (not (= (apply!511 lt!409596 k0!1033) lt!409598)))))

(declare-fun b!908122 () Bool)

(declare-fun e!508998 () Bool)

(assert (=> b!908122 (= e!508998 e!509000)))

(declare-fun res!613031 () Bool)

(assert (=> b!908122 (=> res!613031 e!509000)))

(assert (=> b!908122 (= res!613031 (not (contains!4546 lt!409596 k0!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!908122 (= lt!409596 (getCurrentListMap!2769 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908123 () Bool)

(declare-fun res!613035 () Bool)

(assert (=> b!908123 (=> (not res!613035) (not e!509002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53606 (_ BitVec 32)) Bool)

(assert (=> b!908123 (= res!613035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908124 () Bool)

(assert (=> b!908124 (= e!508996 (not e!508998))))

(declare-fun res!613036 () Bool)

(assert (=> b!908124 (=> res!613036 e!508998)))

(assert (=> b!908124 (= res!613036 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26217 _keys!1386))))))

(declare-fun get!13573 (ValueCell!8913 V!30017) V!30017)

(declare-fun dynLambda!1380 (Int (_ BitVec 64)) V!30017)

(assert (=> b!908124 (= lt!409598 (get!13573 (select (arr!25756 _values!1152) i!717) (dynLambda!1380 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908124 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30801 0))(
  ( (Unit!30802) )
))
(declare-fun lt!409599 () Unit!30801)

(declare-fun lemmaKeyInListMapIsInArray!253 (array!53606 array!53604 (_ BitVec 32) (_ BitVec 32) V!30017 V!30017 (_ BitVec 64) Int) Unit!30801)

(assert (=> b!908124 (= lt!409599 (lemmaKeyInListMapIsInArray!253 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908125 () Bool)

(declare-fun res!613029 () Bool)

(assert (=> b!908125 (=> (not res!613029) (not e!508996))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908125 (= res!613029 (inRange!0 i!717 mask!1756))))

(declare-fun b!908118 () Bool)

(declare-fun e!508997 () Bool)

(declare-fun e!508999 () Bool)

(assert (=> b!908118 (= e!508997 (and e!508999 mapRes!29899))))

(declare-fun condMapEmpty!29899 () Bool)

(declare-fun mapDefault!29899 () ValueCell!8913)

(assert (=> b!908118 (= condMapEmpty!29899 (= (arr!25756 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8913)) mapDefault!29899)))))

(declare-fun res!613030 () Bool)

(assert (=> start!77840 (=> (not res!613030) (not e!509002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77840 (= res!613030 (validMask!0 mask!1756))))

(assert (=> start!77840 e!509002))

(declare-fun array_inv!20140 (array!53604) Bool)

(assert (=> start!77840 (and (array_inv!20140 _values!1152) e!508997)))

(assert (=> start!77840 tp!57379))

(assert (=> start!77840 true))

(declare-fun tp_is_empty!18789 () Bool)

(assert (=> start!77840 tp_is_empty!18789))

(declare-fun array_inv!20141 (array!53606) Bool)

(assert (=> start!77840 (array_inv!20141 _keys!1386)))

(declare-fun b!908126 () Bool)

(assert (=> b!908126 (= e!509001 tp_is_empty!18789)))

(declare-fun b!908127 () Bool)

(assert (=> b!908127 (= e!508999 tp_is_empty!18789)))

(declare-fun b!908128 () Bool)

(declare-fun res!613027 () Bool)

(assert (=> b!908128 (=> (not res!613027) (not e!508996))))

(assert (=> b!908128 (= res!613027 (and (= (select (arr!25757 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!29899 () Bool)

(assert (=> mapIsEmpty!29899 mapRes!29899))

(declare-fun b!908129 () Bool)

(declare-fun res!613033 () Bool)

(assert (=> b!908129 (=> (not res!613033) (not e!509002))))

(assert (=> b!908129 (= res!613033 (and (= (size!26216 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26217 _keys!1386) (size!26216 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908130 () Bool)

(assert (=> b!908130 (= e!509000 true)))

(assert (=> b!908130 (= (apply!511 lt!409597 k0!1033) lt!409598)))

(declare-fun lt!409600 () Unit!30801)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!56 (array!53606 array!53604 (_ BitVec 32) (_ BitVec 32) V!30017 V!30017 (_ BitVec 64) V!30017 (_ BitVec 32) Int) Unit!30801)

(assert (=> b!908130 (= lt!409600 (lemmaListMapApplyFromThenApplyFromZero!56 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409598 i!717 defaultEntry!1160))))

(assert (= (and start!77840 res!613030) b!908129))

(assert (= (and b!908129 res!613033) b!908123))

(assert (= (and b!908123 res!613035) b!908119))

(assert (= (and b!908119 res!613032) b!908120))

(assert (= (and b!908120 res!613034) b!908125))

(assert (= (and b!908125 res!613029) b!908128))

(assert (= (and b!908128 res!613027) b!908124))

(assert (= (and b!908124 (not res!613036)) b!908122))

(assert (= (and b!908122 (not res!613031)) b!908121))

(assert (= (and b!908121 (not res!613028)) b!908130))

(assert (= (and b!908118 condMapEmpty!29899) mapIsEmpty!29899))

(assert (= (and b!908118 (not condMapEmpty!29899)) mapNonEmpty!29899))

(get-info :version)

(assert (= (and mapNonEmpty!29899 ((_ is ValueCellFull!8913) mapValue!29899)) b!908126))

(assert (= (and b!908118 ((_ is ValueCellFull!8913) mapDefault!29899)) b!908127))

(assert (= start!77840 b!908118))

(declare-fun b_lambda!13285 () Bool)

(assert (=> (not b_lambda!13285) (not b!908124)))

(declare-fun t!25738 () Bool)

(declare-fun tb!5401 () Bool)

(assert (=> (and start!77840 (= defaultEntry!1160 defaultEntry!1160) t!25738) tb!5401))

(declare-fun result!10591 () Bool)

(assert (=> tb!5401 (= result!10591 tp_is_empty!18789)))

(assert (=> b!908124 t!25738))

(declare-fun b_and!26919 () Bool)

(assert (= b_and!26917 (and (=> t!25738 result!10591) b_and!26919)))

(declare-fun m!843565 () Bool)

(assert (=> b!908119 m!843565))

(declare-fun m!843567 () Bool)

(assert (=> b!908130 m!843567))

(declare-fun m!843569 () Bool)

(assert (=> b!908130 m!843569))

(declare-fun m!843571 () Bool)

(assert (=> start!77840 m!843571))

(declare-fun m!843573 () Bool)

(assert (=> start!77840 m!843573))

(declare-fun m!843575 () Bool)

(assert (=> start!77840 m!843575))

(declare-fun m!843577 () Bool)

(assert (=> b!908123 m!843577))

(declare-fun m!843579 () Bool)

(assert (=> mapNonEmpty!29899 m!843579))

(declare-fun m!843581 () Bool)

(assert (=> b!908120 m!843581))

(declare-fun m!843583 () Bool)

(assert (=> b!908120 m!843583))

(declare-fun m!843585 () Bool)

(assert (=> b!908125 m!843585))

(declare-fun m!843587 () Bool)

(assert (=> b!908124 m!843587))

(declare-fun m!843589 () Bool)

(assert (=> b!908124 m!843589))

(declare-fun m!843591 () Bool)

(assert (=> b!908124 m!843591))

(declare-fun m!843593 () Bool)

(assert (=> b!908124 m!843593))

(assert (=> b!908124 m!843587))

(assert (=> b!908124 m!843591))

(declare-fun m!843595 () Bool)

(assert (=> b!908124 m!843595))

(declare-fun m!843597 () Bool)

(assert (=> b!908122 m!843597))

(declare-fun m!843599 () Bool)

(assert (=> b!908122 m!843599))

(declare-fun m!843601 () Bool)

(assert (=> b!908128 m!843601))

(declare-fun m!843603 () Bool)

(assert (=> b!908121 m!843603))

(check-sat (not b!908130) (not mapNonEmpty!29899) (not b!908123) b_and!26919 tp_is_empty!18789 (not b!908119) (not b!908122) (not start!77840) (not b!908124) (not b!908125) (not b_next!16371) (not b!908121) (not b_lambda!13285) (not b!908120))
(check-sat b_and!26919 (not b_next!16371))
