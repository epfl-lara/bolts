; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77858 () Bool)

(assert start!77858)

(declare-fun b_free!16389 () Bool)

(declare-fun b_next!16389 () Bool)

(assert (=> start!77858 (= b_free!16389 (not b_next!16389))))

(declare-fun tp!57432 () Bool)

(declare-fun b_and!26953 () Bool)

(assert (=> start!77858 (= tp!57432 b_and!26953)))

(declare-fun mapIsEmpty!29926 () Bool)

(declare-fun mapRes!29926 () Bool)

(assert (=> mapIsEmpty!29926 mapRes!29926))

(declare-fun b!908488 () Bool)

(declare-fun e!509213 () Bool)

(assert (=> b!908488 (= e!509213 true)))

(declare-datatypes ((V!30041 0))(
  ( (V!30042 (val!9454 Int)) )
))
(declare-datatypes ((tuple2!12348 0))(
  ( (tuple2!12349 (_1!6184 (_ BitVec 64)) (_2!6184 V!30041)) )
))
(declare-datatypes ((List!18203 0))(
  ( (Nil!18200) (Cons!18199 (h!19345 tuple2!12348) (t!25772 List!18203)) )
))
(declare-datatypes ((ListLongMap!11059 0))(
  ( (ListLongMap!11060 (toList!5545 List!18203)) )
))
(declare-fun lt!409731 () ListLongMap!11059)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!409732 () V!30041)

(declare-fun apply!518 (ListLongMap!11059 (_ BitVec 64)) V!30041)

(assert (=> b!908488 (= (apply!518 lt!409731 k0!1033) lt!409732)))

(declare-datatypes ((ValueCell!8922 0))(
  ( (ValueCellFull!8922 (v!11961 V!30041)) (EmptyCell!8922) )
))
(declare-datatypes ((array!53638 0))(
  ( (array!53639 (arr!25773 (Array (_ BitVec 32) ValueCell!8922)) (size!26233 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53638)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53640 0))(
  ( (array!53641 (arr!25774 (Array (_ BitVec 32) (_ BitVec 64))) (size!26234 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53640)

(declare-datatypes ((Unit!30813 0))(
  ( (Unit!30814) )
))
(declare-fun lt!409733 () Unit!30813)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30041)

(declare-fun zeroValue!1094 () V!30041)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!61 (array!53640 array!53638 (_ BitVec 32) (_ BitVec 32) V!30041 V!30041 (_ BitVec 64) V!30041 (_ BitVec 32) Int) Unit!30813)

(assert (=> b!908488 (= lt!409733 (lemmaListMapApplyFromThenApplyFromZero!61 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409732 i!717 defaultEntry!1160))))

(declare-fun b!908489 () Bool)

(declare-fun e!509214 () Bool)

(declare-fun tp_is_empty!18807 () Bool)

(assert (=> b!908489 (= e!509214 tp_is_empty!18807)))

(declare-fun mapNonEmpty!29926 () Bool)

(declare-fun tp!57433 () Bool)

(declare-fun e!509212 () Bool)

(assert (=> mapNonEmpty!29926 (= mapRes!29926 (and tp!57433 e!509212))))

(declare-fun mapRest!29926 () (Array (_ BitVec 32) ValueCell!8922))

(declare-fun mapKey!29926 () (_ BitVec 32))

(declare-fun mapValue!29926 () ValueCell!8922)

(assert (=> mapNonEmpty!29926 (= (arr!25773 _values!1152) (store mapRest!29926 mapKey!29926 mapValue!29926))))

(declare-fun b!908490 () Bool)

(declare-fun res!613304 () Bool)

(declare-fun e!509215 () Bool)

(assert (=> b!908490 (=> (not res!613304) (not e!509215))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908490 (= res!613304 (inRange!0 i!717 mask!1756))))

(declare-fun b!908491 () Bool)

(declare-fun res!613299 () Bool)

(assert (=> b!908491 (=> (not res!613299) (not e!509215))))

(assert (=> b!908491 (= res!613299 (and (= (select (arr!25774 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908487 () Bool)

(declare-fun e!509218 () Bool)

(assert (=> b!908487 (= e!509215 (not e!509218))))

(declare-fun res!613303 () Bool)

(assert (=> b!908487 (=> res!613303 e!509218)))

(assert (=> b!908487 (= res!613303 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26234 _keys!1386))))))

(declare-fun get!13585 (ValueCell!8922 V!30041) V!30041)

(declare-fun dynLambda!1386 (Int (_ BitVec 64)) V!30041)

(assert (=> b!908487 (= lt!409732 (get!13585 (select (arr!25773 _values!1152) i!717) (dynLambda!1386 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908487 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409735 () Unit!30813)

(declare-fun lemmaKeyInListMapIsInArray!259 (array!53640 array!53638 (_ BitVec 32) (_ BitVec 32) V!30041 V!30041 (_ BitVec 64) Int) Unit!30813)

(assert (=> b!908487 (= lt!409735 (lemmaKeyInListMapIsInArray!259 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun res!613301 () Bool)

(declare-fun e!509216 () Bool)

(assert (=> start!77858 (=> (not res!613301) (not e!509216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77858 (= res!613301 (validMask!0 mask!1756))))

(assert (=> start!77858 e!509216))

(declare-fun e!509219 () Bool)

(declare-fun array_inv!20152 (array!53638) Bool)

(assert (=> start!77858 (and (array_inv!20152 _values!1152) e!509219)))

(assert (=> start!77858 tp!57432))

(assert (=> start!77858 true))

(assert (=> start!77858 tp_is_empty!18807))

(declare-fun array_inv!20153 (array!53640) Bool)

(assert (=> start!77858 (array_inv!20153 _keys!1386)))

(declare-fun b!908492 () Bool)

(declare-fun res!613306 () Bool)

(assert (=> b!908492 (=> (not res!613306) (not e!509216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53640 (_ BitVec 32)) Bool)

(assert (=> b!908492 (= res!613306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908493 () Bool)

(declare-fun res!613298 () Bool)

(assert (=> b!908493 (=> (not res!613298) (not e!509216))))

(assert (=> b!908493 (= res!613298 (and (= (size!26233 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26234 _keys!1386) (size!26233 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908494 () Bool)

(assert (=> b!908494 (= e!509216 e!509215)))

(declare-fun res!613302 () Bool)

(assert (=> b!908494 (=> (not res!613302) (not e!509215))))

(declare-fun contains!4554 (ListLongMap!11059 (_ BitVec 64)) Bool)

(assert (=> b!908494 (= res!613302 (contains!4554 lt!409731 k0!1033))))

(declare-fun getCurrentListMap!2777 (array!53640 array!53638 (_ BitVec 32) (_ BitVec 32) V!30041 V!30041 (_ BitVec 32) Int) ListLongMap!11059)

(assert (=> b!908494 (= lt!409731 (getCurrentListMap!2777 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908495 () Bool)

(declare-fun res!613300 () Bool)

(assert (=> b!908495 (=> res!613300 e!509213)))

(declare-fun lt!409734 () ListLongMap!11059)

(assert (=> b!908495 (= res!613300 (not (= (apply!518 lt!409734 k0!1033) lt!409732)))))

(declare-fun b!908496 () Bool)

(assert (=> b!908496 (= e!509218 e!509213)))

(declare-fun res!613297 () Bool)

(assert (=> b!908496 (=> res!613297 e!509213)))

(assert (=> b!908496 (= res!613297 (not (contains!4554 lt!409734 k0!1033)))))

(assert (=> b!908496 (= lt!409734 (getCurrentListMap!2777 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908497 () Bool)

(assert (=> b!908497 (= e!509212 tp_is_empty!18807)))

(declare-fun b!908498 () Bool)

(declare-fun res!613305 () Bool)

(assert (=> b!908498 (=> (not res!613305) (not e!509216))))

(declare-datatypes ((List!18204 0))(
  ( (Nil!18201) (Cons!18200 (h!19346 (_ BitVec 64)) (t!25773 List!18204)) )
))
(declare-fun arrayNoDuplicates!0 (array!53640 (_ BitVec 32) List!18204) Bool)

(assert (=> b!908498 (= res!613305 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18201))))

(declare-fun b!908499 () Bool)

(assert (=> b!908499 (= e!509219 (and e!509214 mapRes!29926))))

(declare-fun condMapEmpty!29926 () Bool)

(declare-fun mapDefault!29926 () ValueCell!8922)

(assert (=> b!908499 (= condMapEmpty!29926 (= (arr!25773 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8922)) mapDefault!29926)))))

(assert (= (and start!77858 res!613301) b!908493))

(assert (= (and b!908493 res!613298) b!908492))

(assert (= (and b!908492 res!613306) b!908498))

(assert (= (and b!908498 res!613305) b!908494))

(assert (= (and b!908494 res!613302) b!908490))

(assert (= (and b!908490 res!613304) b!908491))

(assert (= (and b!908491 res!613299) b!908487))

(assert (= (and b!908487 (not res!613303)) b!908496))

(assert (= (and b!908496 (not res!613297)) b!908495))

(assert (= (and b!908495 (not res!613300)) b!908488))

(assert (= (and b!908499 condMapEmpty!29926) mapIsEmpty!29926))

(assert (= (and b!908499 (not condMapEmpty!29926)) mapNonEmpty!29926))

(get-info :version)

(assert (= (and mapNonEmpty!29926 ((_ is ValueCellFull!8922) mapValue!29926)) b!908497))

(assert (= (and b!908499 ((_ is ValueCellFull!8922) mapDefault!29926)) b!908489))

(assert (= start!77858 b!908499))

(declare-fun b_lambda!13303 () Bool)

(assert (=> (not b_lambda!13303) (not b!908487)))

(declare-fun t!25771 () Bool)

(declare-fun tb!5419 () Bool)

(assert (=> (and start!77858 (= defaultEntry!1160 defaultEntry!1160) t!25771) tb!5419))

(declare-fun result!10627 () Bool)

(assert (=> tb!5419 (= result!10627 tp_is_empty!18807)))

(assert (=> b!908487 t!25771))

(declare-fun b_and!26955 () Bool)

(assert (= b_and!26953 (and (=> t!25771 result!10627) b_and!26955)))

(declare-fun m!843925 () Bool)

(assert (=> b!908487 m!843925))

(declare-fun m!843927 () Bool)

(assert (=> b!908487 m!843927))

(declare-fun m!843929 () Bool)

(assert (=> b!908487 m!843929))

(declare-fun m!843931 () Bool)

(assert (=> b!908487 m!843931))

(assert (=> b!908487 m!843925))

(assert (=> b!908487 m!843929))

(declare-fun m!843933 () Bool)

(assert (=> b!908487 m!843933))

(declare-fun m!843935 () Bool)

(assert (=> mapNonEmpty!29926 m!843935))

(declare-fun m!843937 () Bool)

(assert (=> b!908494 m!843937))

(declare-fun m!843939 () Bool)

(assert (=> b!908494 m!843939))

(declare-fun m!843941 () Bool)

(assert (=> b!908498 m!843941))

(declare-fun m!843943 () Bool)

(assert (=> b!908488 m!843943))

(declare-fun m!843945 () Bool)

(assert (=> b!908488 m!843945))

(declare-fun m!843947 () Bool)

(assert (=> b!908495 m!843947))

(declare-fun m!843949 () Bool)

(assert (=> start!77858 m!843949))

(declare-fun m!843951 () Bool)

(assert (=> start!77858 m!843951))

(declare-fun m!843953 () Bool)

(assert (=> start!77858 m!843953))

(declare-fun m!843955 () Bool)

(assert (=> b!908490 m!843955))

(declare-fun m!843957 () Bool)

(assert (=> b!908492 m!843957))

(declare-fun m!843959 () Bool)

(assert (=> b!908491 m!843959))

(declare-fun m!843961 () Bool)

(assert (=> b!908496 m!843961))

(declare-fun m!843963 () Bool)

(assert (=> b!908496 m!843963))

(check-sat (not b!908495) b_and!26955 tp_is_empty!18807 (not b!908498) (not b_next!16389) (not b_lambda!13303) (not b!908496) (not b!908487) (not b!908488) (not start!77858) (not b!908490) (not b!908494) (not mapNonEmpty!29926) (not b!908492))
(check-sat b_and!26955 (not b_next!16389))
