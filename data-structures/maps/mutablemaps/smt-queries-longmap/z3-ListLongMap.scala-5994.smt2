; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77846 () Bool)

(assert start!77846)

(declare-fun b_free!16377 () Bool)

(declare-fun b_next!16377 () Bool)

(assert (=> start!77846 (= b_free!16377 (not b_next!16377))))

(declare-fun tp!57397 () Bool)

(declare-fun b_and!26929 () Bool)

(assert (=> start!77846 (= tp!57397 b_and!26929)))

(declare-fun mapIsEmpty!29908 () Bool)

(declare-fun mapRes!29908 () Bool)

(assert (=> mapIsEmpty!29908 mapRes!29908))

(declare-fun b!908241 () Bool)

(declare-fun e!509072 () Bool)

(declare-fun e!509073 () Bool)

(assert (=> b!908241 (= e!509072 (not e!509073))))

(declare-fun res!613121 () Bool)

(assert (=> b!908241 (=> res!613121 e!509073)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53616 0))(
  ( (array!53617 (arr!25762 (Array (_ BitVec 32) (_ BitVec 64))) (size!26222 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53616)

(assert (=> b!908241 (= res!613121 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26222 _keys!1386))))))

(declare-datatypes ((V!30025 0))(
  ( (V!30026 (val!9448 Int)) )
))
(declare-datatypes ((ValueCell!8916 0))(
  ( (ValueCellFull!8916 (v!11955 V!30025)) (EmptyCell!8916) )
))
(declare-datatypes ((array!53618 0))(
  ( (array!53619 (arr!25763 (Array (_ BitVec 32) ValueCell!8916)) (size!26223 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53618)

(declare-fun lt!409645 () V!30025)

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13576 (ValueCell!8916 V!30025) V!30025)

(declare-fun dynLambda!1381 (Int (_ BitVec 64)) V!30025)

(assert (=> b!908241 (= lt!409645 (get!13576 (select (arr!25763 _values!1152) i!717) (dynLambda!1381 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908241 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((Unit!30803 0))(
  ( (Unit!30804) )
))
(declare-fun lt!409642 () Unit!30803)

(declare-fun zeroValue!1094 () V!30025)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30025)

(declare-fun lemmaKeyInListMapIsInArray!254 (array!53616 array!53618 (_ BitVec 32) (_ BitVec 32) V!30025 V!30025 (_ BitVec 64) Int) Unit!30803)

(assert (=> b!908241 (= lt!409642 (lemmaKeyInListMapIsInArray!254 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908242 () Bool)

(declare-fun e!509070 () Bool)

(assert (=> b!908242 (= e!509070 true)))

(declare-datatypes ((tuple2!12338 0))(
  ( (tuple2!12339 (_1!6179 (_ BitVec 64)) (_2!6179 V!30025)) )
))
(declare-datatypes ((List!18194 0))(
  ( (Nil!18191) (Cons!18190 (h!19336 tuple2!12338) (t!25751 List!18194)) )
))
(declare-datatypes ((ListLongMap!11049 0))(
  ( (ListLongMap!11050 (toList!5540 List!18194)) )
))
(declare-fun lt!409643 () ListLongMap!11049)

(declare-fun apply!513 (ListLongMap!11049 (_ BitVec 64)) V!30025)

(assert (=> b!908242 (= (apply!513 lt!409643 k0!1033) lt!409645)))

(declare-fun lt!409644 () Unit!30803)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!57 (array!53616 array!53618 (_ BitVec 32) (_ BitVec 32) V!30025 V!30025 (_ BitVec 64) V!30025 (_ BitVec 32) Int) Unit!30803)

(assert (=> b!908242 (= lt!409644 (lemmaListMapApplyFromThenApplyFromZero!57 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409645 i!717 defaultEntry!1160))))

(declare-fun b!908243 () Bool)

(declare-fun e!509075 () Bool)

(declare-fun tp_is_empty!18795 () Bool)

(assert (=> b!908243 (= e!509075 tp_is_empty!18795)))

(declare-fun b!908244 () Bool)

(declare-fun res!613125 () Bool)

(assert (=> b!908244 (=> (not res!613125) (not e!509072))))

(assert (=> b!908244 (= res!613125 (and (= (select (arr!25762 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29908 () Bool)

(declare-fun tp!57396 () Bool)

(declare-fun e!509071 () Bool)

(assert (=> mapNonEmpty!29908 (= mapRes!29908 (and tp!57396 e!509071))))

(declare-fun mapValue!29908 () ValueCell!8916)

(declare-fun mapKey!29908 () (_ BitVec 32))

(declare-fun mapRest!29908 () (Array (_ BitVec 32) ValueCell!8916))

(assert (=> mapNonEmpty!29908 (= (arr!25763 _values!1152) (store mapRest!29908 mapKey!29908 mapValue!29908))))

(declare-fun b!908245 () Bool)

(declare-fun e!509069 () Bool)

(assert (=> b!908245 (= e!509069 (and e!509075 mapRes!29908))))

(declare-fun condMapEmpty!29908 () Bool)

(declare-fun mapDefault!29908 () ValueCell!8916)

(assert (=> b!908245 (= condMapEmpty!29908 (= (arr!25763 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8916)) mapDefault!29908)))))

(declare-fun b!908246 () Bool)

(declare-fun res!613122 () Bool)

(declare-fun e!509068 () Bool)

(assert (=> b!908246 (=> (not res!613122) (not e!509068))))

(assert (=> b!908246 (= res!613122 (and (= (size!26223 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26222 _keys!1386) (size!26223 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908247 () Bool)

(declare-fun res!613123 () Bool)

(assert (=> b!908247 (=> res!613123 e!509070)))

(declare-fun lt!409641 () ListLongMap!11049)

(assert (=> b!908247 (= res!613123 (not (= (apply!513 lt!409641 k0!1033) lt!409645)))))

(declare-fun res!613124 () Bool)

(assert (=> start!77846 (=> (not res!613124) (not e!509068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77846 (= res!613124 (validMask!0 mask!1756))))

(assert (=> start!77846 e!509068))

(declare-fun array_inv!20144 (array!53618) Bool)

(assert (=> start!77846 (and (array_inv!20144 _values!1152) e!509069)))

(assert (=> start!77846 tp!57397))

(assert (=> start!77846 true))

(assert (=> start!77846 tp_is_empty!18795))

(declare-fun array_inv!20145 (array!53616) Bool)

(assert (=> start!77846 (array_inv!20145 _keys!1386)))

(declare-fun b!908248 () Bool)

(assert (=> b!908248 (= e!509073 e!509070)))

(declare-fun res!613119 () Bool)

(assert (=> b!908248 (=> res!613119 e!509070)))

(declare-fun contains!4549 (ListLongMap!11049 (_ BitVec 64)) Bool)

(assert (=> b!908248 (= res!613119 (not (contains!4549 lt!409641 k0!1033)))))

(declare-fun getCurrentListMap!2772 (array!53616 array!53618 (_ BitVec 32) (_ BitVec 32) V!30025 V!30025 (_ BitVec 32) Int) ListLongMap!11049)

(assert (=> b!908248 (= lt!409641 (getCurrentListMap!2772 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908249 () Bool)

(declare-fun res!613118 () Bool)

(assert (=> b!908249 (=> (not res!613118) (not e!509068))))

(declare-datatypes ((List!18195 0))(
  ( (Nil!18192) (Cons!18191 (h!19337 (_ BitVec 64)) (t!25752 List!18195)) )
))
(declare-fun arrayNoDuplicates!0 (array!53616 (_ BitVec 32) List!18195) Bool)

(assert (=> b!908249 (= res!613118 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18192))))

(declare-fun b!908250 () Bool)

(declare-fun res!613120 () Bool)

(assert (=> b!908250 (=> (not res!613120) (not e!509072))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908250 (= res!613120 (inRange!0 i!717 mask!1756))))

(declare-fun b!908251 () Bool)

(assert (=> b!908251 (= e!509071 tp_is_empty!18795)))

(declare-fun b!908252 () Bool)

(assert (=> b!908252 (= e!509068 e!509072)))

(declare-fun res!613117 () Bool)

(assert (=> b!908252 (=> (not res!613117) (not e!509072))))

(assert (=> b!908252 (= res!613117 (contains!4549 lt!409643 k0!1033))))

(assert (=> b!908252 (= lt!409643 (getCurrentListMap!2772 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908253 () Bool)

(declare-fun res!613126 () Bool)

(assert (=> b!908253 (=> (not res!613126) (not e!509068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53616 (_ BitVec 32)) Bool)

(assert (=> b!908253 (= res!613126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77846 res!613124) b!908246))

(assert (= (and b!908246 res!613122) b!908253))

(assert (= (and b!908253 res!613126) b!908249))

(assert (= (and b!908249 res!613118) b!908252))

(assert (= (and b!908252 res!613117) b!908250))

(assert (= (and b!908250 res!613120) b!908244))

(assert (= (and b!908244 res!613125) b!908241))

(assert (= (and b!908241 (not res!613121)) b!908248))

(assert (= (and b!908248 (not res!613119)) b!908247))

(assert (= (and b!908247 (not res!613123)) b!908242))

(assert (= (and b!908245 condMapEmpty!29908) mapIsEmpty!29908))

(assert (= (and b!908245 (not condMapEmpty!29908)) mapNonEmpty!29908))

(get-info :version)

(assert (= (and mapNonEmpty!29908 ((_ is ValueCellFull!8916) mapValue!29908)) b!908251))

(assert (= (and b!908245 ((_ is ValueCellFull!8916) mapDefault!29908)) b!908243))

(assert (= start!77846 b!908245))

(declare-fun b_lambda!13291 () Bool)

(assert (=> (not b_lambda!13291) (not b!908241)))

(declare-fun t!25750 () Bool)

(declare-fun tb!5407 () Bool)

(assert (=> (and start!77846 (= defaultEntry!1160 defaultEntry!1160) t!25750) tb!5407))

(declare-fun result!10603 () Bool)

(assert (=> tb!5407 (= result!10603 tp_is_empty!18795)))

(assert (=> b!908241 t!25750))

(declare-fun b_and!26931 () Bool)

(assert (= b_and!26929 (and (=> t!25750 result!10603) b_and!26931)))

(declare-fun m!843685 () Bool)

(assert (=> b!908247 m!843685))

(declare-fun m!843687 () Bool)

(assert (=> mapNonEmpty!29908 m!843687))

(declare-fun m!843689 () Bool)

(assert (=> b!908244 m!843689))

(declare-fun m!843691 () Bool)

(assert (=> b!908250 m!843691))

(declare-fun m!843693 () Bool)

(assert (=> start!77846 m!843693))

(declare-fun m!843695 () Bool)

(assert (=> start!77846 m!843695))

(declare-fun m!843697 () Bool)

(assert (=> start!77846 m!843697))

(declare-fun m!843699 () Bool)

(assert (=> b!908242 m!843699))

(declare-fun m!843701 () Bool)

(assert (=> b!908242 m!843701))

(declare-fun m!843703 () Bool)

(assert (=> b!908241 m!843703))

(declare-fun m!843705 () Bool)

(assert (=> b!908241 m!843705))

(declare-fun m!843707 () Bool)

(assert (=> b!908241 m!843707))

(declare-fun m!843709 () Bool)

(assert (=> b!908241 m!843709))

(assert (=> b!908241 m!843703))

(assert (=> b!908241 m!843707))

(declare-fun m!843711 () Bool)

(assert (=> b!908241 m!843711))

(declare-fun m!843713 () Bool)

(assert (=> b!908248 m!843713))

(declare-fun m!843715 () Bool)

(assert (=> b!908248 m!843715))

(declare-fun m!843717 () Bool)

(assert (=> b!908252 m!843717))

(declare-fun m!843719 () Bool)

(assert (=> b!908252 m!843719))

(declare-fun m!843721 () Bool)

(assert (=> b!908249 m!843721))

(declare-fun m!843723 () Bool)

(assert (=> b!908253 m!843723))

(check-sat (not b!908252) b_and!26931 (not b_next!16377) tp_is_empty!18795 (not b!908249) (not b!908242) (not b!908248) (not b_lambda!13291) (not b!908241) (not start!77846) (not b!908250) (not b!908253) (not b!908247) (not mapNonEmpty!29908))
(check-sat b_and!26931 (not b_next!16377))
