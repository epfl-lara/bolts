; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78406 () Bool)

(assert start!78406)

(declare-fun b_free!16743 () Bool)

(declare-fun b_next!16743 () Bool)

(assert (=> start!78406 (= b_free!16743 (not b_next!16743))))

(declare-fun tp!58517 () Bool)

(declare-fun b_and!27371 () Bool)

(assert (=> start!78406 (= tp!58517 b_and!27371)))

(declare-fun b!914094 () Bool)

(declare-fun e!512817 () Bool)

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((V!30513 0))(
  ( (V!30514 (val!9631 Int)) )
))
(declare-datatypes ((ValueCell!9099 0))(
  ( (ValueCellFull!9099 (v!12147 V!30513)) (EmptyCell!9099) )
))
(declare-datatypes ((array!54330 0))(
  ( (array!54331 (arr!26112 (Array (_ BitVec 32) ValueCell!9099)) (size!26572 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54330)

(assert (=> b!914094 (= e!512817 (bvslt i!717 (size!26572 _values!1152)))))

(declare-datatypes ((tuple2!12614 0))(
  ( (tuple2!12615 (_1!6317 (_ BitVec 64)) (_2!6317 V!30513)) )
))
(declare-datatypes ((List!18453 0))(
  ( (Nil!18450) (Cons!18449 (h!19595 tuple2!12614) (t!26064 List!18453)) )
))
(declare-datatypes ((ListLongMap!11325 0))(
  ( (ListLongMap!11326 (toList!5678 List!18453)) )
))
(declare-fun lt!411361 () ListLongMap!11325)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!411364 () V!30513)

(declare-fun apply!534 (ListLongMap!11325 (_ BitVec 64)) V!30513)

(assert (=> b!914094 (= (apply!534 lt!411361 k0!1033) lt!411364)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30513)

(declare-datatypes ((array!54332 0))(
  ( (array!54333 (arr!26113 (Array (_ BitVec 32) (_ BitVec 64))) (size!26573 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54332)

(declare-datatypes ((Unit!30919 0))(
  ( (Unit!30920) )
))
(declare-fun lt!411363 () Unit!30919)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30513)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!67 (array!54332 array!54330 (_ BitVec 32) (_ BitVec 32) V!30513 V!30513 (_ BitVec 64) V!30513 (_ BitVec 32) Int) Unit!30919)

(assert (=> b!914094 (= lt!411363 (lemmaListMapApplyFromThenApplyFromZero!67 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!411364 i!717 defaultEntry!1160))))

(declare-fun b!914095 () Bool)

(declare-fun res!616579 () Bool)

(declare-fun e!512819 () Bool)

(assert (=> b!914095 (=> (not res!616579) (not e!512819))))

(assert (=> b!914095 (= res!616579 (and (= (select (arr!26113 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914096 () Bool)

(declare-fun e!512821 () Bool)

(assert (=> b!914096 (= e!512821 e!512819)))

(declare-fun res!616584 () Bool)

(assert (=> b!914096 (=> (not res!616584) (not e!512819))))

(declare-fun contains!4693 (ListLongMap!11325 (_ BitVec 64)) Bool)

(assert (=> b!914096 (= res!616584 (contains!4693 lt!411361 k0!1033))))

(declare-fun getCurrentListMap!2907 (array!54332 array!54330 (_ BitVec 32) (_ BitVec 32) V!30513 V!30513 (_ BitVec 32) Int) ListLongMap!11325)

(assert (=> b!914096 (= lt!411361 (getCurrentListMap!2907 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!914097 () Bool)

(declare-fun e!512818 () Bool)

(declare-fun e!512816 () Bool)

(declare-fun mapRes!30480 () Bool)

(assert (=> b!914097 (= e!512818 (and e!512816 mapRes!30480))))

(declare-fun condMapEmpty!30480 () Bool)

(declare-fun mapDefault!30480 () ValueCell!9099)

(assert (=> b!914097 (= condMapEmpty!30480 (= (arr!26112 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9099)) mapDefault!30480)))))

(declare-fun b!914098 () Bool)

(declare-fun e!512815 () Bool)

(declare-fun tp_is_empty!19161 () Bool)

(assert (=> b!914098 (= e!512815 tp_is_empty!19161)))

(declare-fun b!914099 () Bool)

(declare-fun res!616576 () Bool)

(assert (=> b!914099 (=> (not res!616576) (not e!512821))))

(assert (=> b!914099 (= res!616576 (and (= (size!26572 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26573 _keys!1386) (size!26572 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!914100 () Bool)

(declare-fun res!616583 () Bool)

(assert (=> b!914100 (=> res!616583 e!512817)))

(declare-fun lt!411362 () ListLongMap!11325)

(assert (=> b!914100 (= res!616583 (not (= (apply!534 lt!411362 k0!1033) lt!411364)))))

(declare-fun b!914101 () Bool)

(declare-fun res!616578 () Bool)

(assert (=> b!914101 (=> (not res!616578) (not e!512821))))

(declare-datatypes ((List!18454 0))(
  ( (Nil!18451) (Cons!18450 (h!19596 (_ BitVec 64)) (t!26065 List!18454)) )
))
(declare-fun arrayNoDuplicates!0 (array!54332 (_ BitVec 32) List!18454) Bool)

(assert (=> b!914101 (= res!616578 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18451))))

(declare-fun b!914102 () Bool)

(declare-fun e!512814 () Bool)

(assert (=> b!914102 (= e!512814 e!512817)))

(declare-fun res!616575 () Bool)

(assert (=> b!914102 (=> res!616575 e!512817)))

(assert (=> b!914102 (= res!616575 (not (contains!4693 lt!411362 k0!1033)))))

(assert (=> b!914102 (= lt!411362 (getCurrentListMap!2907 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!914103 () Bool)

(declare-fun res!616582 () Bool)

(assert (=> b!914103 (=> (not res!616582) (not e!512819))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914103 (= res!616582 (inRange!0 i!717 mask!1756))))

(declare-fun b!914104 () Bool)

(assert (=> b!914104 (= e!512816 tp_is_empty!19161)))

(declare-fun mapNonEmpty!30480 () Bool)

(declare-fun tp!58518 () Bool)

(assert (=> mapNonEmpty!30480 (= mapRes!30480 (and tp!58518 e!512815))))

(declare-fun mapValue!30480 () ValueCell!9099)

(declare-fun mapKey!30480 () (_ BitVec 32))

(declare-fun mapRest!30480 () (Array (_ BitVec 32) ValueCell!9099))

(assert (=> mapNonEmpty!30480 (= (arr!26112 _values!1152) (store mapRest!30480 mapKey!30480 mapValue!30480))))

(declare-fun b!914105 () Bool)

(declare-fun res!616580 () Bool)

(assert (=> b!914105 (=> (not res!616580) (not e!512821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54332 (_ BitVec 32)) Bool)

(assert (=> b!914105 (= res!616580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914106 () Bool)

(assert (=> b!914106 (= e!512819 (not e!512814))))

(declare-fun res!616581 () Bool)

(assert (=> b!914106 (=> res!616581 e!512814)))

(assert (=> b!914106 (= res!616581 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26573 _keys!1386))))))

(declare-fun get!13723 (ValueCell!9099 V!30513) V!30513)

(declare-fun dynLambda!1400 (Int (_ BitVec 64)) V!30513)

(assert (=> b!914106 (= lt!411364 (get!13723 (select (arr!26112 _values!1152) i!717) (dynLambda!1400 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!54332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914106 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!411365 () Unit!30919)

(declare-fun lemmaKeyInListMapIsInArray!292 (array!54332 array!54330 (_ BitVec 32) (_ BitVec 32) V!30513 V!30513 (_ BitVec 64) Int) Unit!30919)

(assert (=> b!914106 (= lt!411365 (lemmaKeyInListMapIsInArray!292 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30480 () Bool)

(assert (=> mapIsEmpty!30480 mapRes!30480))

(declare-fun res!616577 () Bool)

(assert (=> start!78406 (=> (not res!616577) (not e!512821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78406 (= res!616577 (validMask!0 mask!1756))))

(assert (=> start!78406 e!512821))

(declare-fun array_inv!20384 (array!54330) Bool)

(assert (=> start!78406 (and (array_inv!20384 _values!1152) e!512818)))

(assert (=> start!78406 tp!58517))

(assert (=> start!78406 true))

(assert (=> start!78406 tp_is_empty!19161))

(declare-fun array_inv!20385 (array!54332) Bool)

(assert (=> start!78406 (array_inv!20385 _keys!1386)))

(assert (= (and start!78406 res!616577) b!914099))

(assert (= (and b!914099 res!616576) b!914105))

(assert (= (and b!914105 res!616580) b!914101))

(assert (= (and b!914101 res!616578) b!914096))

(assert (= (and b!914096 res!616584) b!914103))

(assert (= (and b!914103 res!616582) b!914095))

(assert (= (and b!914095 res!616579) b!914106))

(assert (= (and b!914106 (not res!616581)) b!914102))

(assert (= (and b!914102 (not res!616575)) b!914100))

(assert (= (and b!914100 (not res!616583)) b!914094))

(assert (= (and b!914097 condMapEmpty!30480) mapIsEmpty!30480))

(assert (= (and b!914097 (not condMapEmpty!30480)) mapNonEmpty!30480))

(get-info :version)

(assert (= (and mapNonEmpty!30480 ((_ is ValueCellFull!9099) mapValue!30480)) b!914098))

(assert (= (and b!914097 ((_ is ValueCellFull!9099) mapDefault!30480)) b!914104))

(assert (= start!78406 b!914097))

(declare-fun b_lambda!13403 () Bool)

(assert (=> (not b_lambda!13403) (not b!914106)))

(declare-fun t!26063 () Bool)

(declare-fun tb!5461 () Bool)

(assert (=> (and start!78406 (= defaultEntry!1160 defaultEntry!1160) t!26063) tb!5461))

(declare-fun result!10725 () Bool)

(assert (=> tb!5461 (= result!10725 tp_is_empty!19161)))

(assert (=> b!914106 t!26063))

(declare-fun b_and!27373 () Bool)

(assert (= b_and!27371 (and (=> t!26063 result!10725) b_and!27373)))

(declare-fun m!848931 () Bool)

(assert (=> b!914103 m!848931))

(declare-fun m!848933 () Bool)

(assert (=> mapNonEmpty!30480 m!848933))

(declare-fun m!848935 () Bool)

(assert (=> b!914106 m!848935))

(declare-fun m!848937 () Bool)

(assert (=> b!914106 m!848937))

(declare-fun m!848939 () Bool)

(assert (=> b!914106 m!848939))

(declare-fun m!848941 () Bool)

(assert (=> b!914106 m!848941))

(assert (=> b!914106 m!848935))

(assert (=> b!914106 m!848939))

(declare-fun m!848943 () Bool)

(assert (=> b!914106 m!848943))

(declare-fun m!848945 () Bool)

(assert (=> b!914105 m!848945))

(declare-fun m!848947 () Bool)

(assert (=> b!914101 m!848947))

(declare-fun m!848949 () Bool)

(assert (=> b!914100 m!848949))

(declare-fun m!848951 () Bool)

(assert (=> b!914094 m!848951))

(declare-fun m!848953 () Bool)

(assert (=> b!914094 m!848953))

(declare-fun m!848955 () Bool)

(assert (=> start!78406 m!848955))

(declare-fun m!848957 () Bool)

(assert (=> start!78406 m!848957))

(declare-fun m!848959 () Bool)

(assert (=> start!78406 m!848959))

(declare-fun m!848961 () Bool)

(assert (=> b!914102 m!848961))

(declare-fun m!848963 () Bool)

(assert (=> b!914102 m!848963))

(declare-fun m!848965 () Bool)

(assert (=> b!914095 m!848965))

(declare-fun m!848967 () Bool)

(assert (=> b!914096 m!848967))

(declare-fun m!848969 () Bool)

(assert (=> b!914096 m!848969))

(check-sat (not b_lambda!13403) b_and!27373 (not b!914102) (not b!914103) (not b!914096) (not mapNonEmpty!30480) (not b!914094) (not b_next!16743) (not b!914105) (not b!914106) tp_is_empty!19161 (not b!914100) (not start!78406) (not b!914101))
(check-sat b_and!27373 (not b_next!16743))
