; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77864 () Bool)

(assert start!77864)

(declare-fun b_free!16395 () Bool)

(declare-fun b_next!16395 () Bool)

(assert (=> start!77864 (= b_free!16395 (not b_next!16395))))

(declare-fun tp!57451 () Bool)

(declare-fun b_and!26965 () Bool)

(assert (=> start!77864 (= tp!57451 b_and!26965)))

(declare-fun b!908610 () Bool)

(declare-fun e!509287 () Bool)

(declare-fun tp_is_empty!18813 () Bool)

(assert (=> b!908610 (= e!509287 tp_is_empty!18813)))

(declare-fun b!908611 () Bool)

(declare-fun res!613393 () Bool)

(declare-fun e!509284 () Bool)

(assert (=> b!908611 (=> (not res!613393) (not e!509284))))

(declare-datatypes ((V!30049 0))(
  ( (V!30050 (val!9457 Int)) )
))
(declare-datatypes ((ValueCell!8925 0))(
  ( (ValueCellFull!8925 (v!11964 V!30049)) (EmptyCell!8925) )
))
(declare-datatypes ((array!53648 0))(
  ( (array!53649 (arr!25778 (Array (_ BitVec 32) ValueCell!8925)) (size!26238 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53648)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53650 0))(
  ( (array!53651 (arr!25779 (Array (_ BitVec 32) (_ BitVec 64))) (size!26239 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53650)

(assert (=> b!908611 (= res!613393 (and (= (size!26238 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26239 _keys!1386) (size!26238 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908612 () Bool)

(declare-fun res!613388 () Bool)

(declare-fun e!509289 () Bool)

(assert (=> b!908612 (=> res!613388 e!509289)))

(declare-fun lt!409780 () V!30049)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12352 0))(
  ( (tuple2!12353 (_1!6186 (_ BitVec 64)) (_2!6186 V!30049)) )
))
(declare-datatypes ((List!18206 0))(
  ( (Nil!18203) (Cons!18202 (h!19348 tuple2!12352) (t!25781 List!18206)) )
))
(declare-datatypes ((ListLongMap!11063 0))(
  ( (ListLongMap!11064 (toList!5547 List!18206)) )
))
(declare-fun lt!409778 () ListLongMap!11063)

(declare-fun apply!520 (ListLongMap!11063 (_ BitVec 64)) V!30049)

(assert (=> b!908612 (= res!613388 (not (= (apply!520 lt!409778 k0!1033) lt!409780)))))

(declare-fun b!908613 () Bool)

(declare-fun e!509290 () Bool)

(assert (=> b!908613 (= e!509290 tp_is_empty!18813)))

(declare-fun b!908614 () Bool)

(declare-fun e!509285 () Bool)

(assert (=> b!908614 (= e!509285 e!509289)))

(declare-fun res!613394 () Bool)

(assert (=> b!908614 (=> res!613394 e!509289)))

(declare-fun contains!4555 (ListLongMap!11063 (_ BitVec 64)) Bool)

(assert (=> b!908614 (= res!613394 (not (contains!4555 lt!409778 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30049)

(declare-fun minValue!1094 () V!30049)

(declare-fun getCurrentListMap!2778 (array!53650 array!53648 (_ BitVec 32) (_ BitVec 32) V!30049 V!30049 (_ BitVec 32) Int) ListLongMap!11063)

(assert (=> b!908614 (= lt!409778 (getCurrentListMap!2778 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908615 () Bool)

(declare-fun e!509288 () Bool)

(assert (=> b!908615 (= e!509284 e!509288)))

(declare-fun res!613395 () Bool)

(assert (=> b!908615 (=> (not res!613395) (not e!509288))))

(declare-fun lt!409779 () ListLongMap!11063)

(assert (=> b!908615 (= res!613395 (contains!4555 lt!409779 k0!1033))))

(assert (=> b!908615 (= lt!409779 (getCurrentListMap!2778 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908616 () Bool)

(declare-fun res!613389 () Bool)

(assert (=> b!908616 (=> (not res!613389) (not e!509284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53650 (_ BitVec 32)) Bool)

(assert (=> b!908616 (= res!613389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908617 () Bool)

(declare-fun e!509291 () Bool)

(declare-fun mapRes!29935 () Bool)

(assert (=> b!908617 (= e!509291 (and e!509290 mapRes!29935))))

(declare-fun condMapEmpty!29935 () Bool)

(declare-fun mapDefault!29935 () ValueCell!8925)

(assert (=> b!908617 (= condMapEmpty!29935 (= (arr!25778 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8925)) mapDefault!29935)))))

(declare-fun b!908618 () Bool)

(assert (=> b!908618 (= e!509288 (not e!509285))))

(declare-fun res!613390 () Bool)

(assert (=> b!908618 (=> res!613390 e!509285)))

(assert (=> b!908618 (= res!613390 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26239 _keys!1386))))))

(declare-fun get!13589 (ValueCell!8925 V!30049) V!30049)

(declare-fun dynLambda!1388 (Int (_ BitVec 64)) V!30049)

(assert (=> b!908618 (= lt!409780 (get!13589 (select (arr!25778 _values!1152) i!717) (dynLambda!1388 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908618 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30817 0))(
  ( (Unit!30818) )
))
(declare-fun lt!409776 () Unit!30817)

(declare-fun lemmaKeyInListMapIsInArray!261 (array!53650 array!53648 (_ BitVec 32) (_ BitVec 32) V!30049 V!30049 (_ BitVec 64) Int) Unit!30817)

(assert (=> b!908618 (= lt!409776 (lemmaKeyInListMapIsInArray!261 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908619 () Bool)

(declare-fun res!613392 () Bool)

(assert (=> b!908619 (=> (not res!613392) (not e!509288))))

(assert (=> b!908619 (= res!613392 (and (= (select (arr!25779 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!613391 () Bool)

(assert (=> start!77864 (=> (not res!613391) (not e!509284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77864 (= res!613391 (validMask!0 mask!1756))))

(assert (=> start!77864 e!509284))

(declare-fun array_inv!20156 (array!53648) Bool)

(assert (=> start!77864 (and (array_inv!20156 _values!1152) e!509291)))

(assert (=> start!77864 tp!57451))

(assert (=> start!77864 true))

(assert (=> start!77864 tp_is_empty!18813))

(declare-fun array_inv!20157 (array!53650) Bool)

(assert (=> start!77864 (array_inv!20157 _keys!1386)))

(declare-fun b!908620 () Bool)

(assert (=> b!908620 (= e!509289 true)))

(assert (=> b!908620 (= (apply!520 lt!409779 k0!1033) lt!409780)))

(declare-fun lt!409777 () Unit!30817)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!63 (array!53650 array!53648 (_ BitVec 32) (_ BitVec 32) V!30049 V!30049 (_ BitVec 64) V!30049 (_ BitVec 32) Int) Unit!30817)

(assert (=> b!908620 (= lt!409777 (lemmaListMapApplyFromThenApplyFromZero!63 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409780 i!717 defaultEntry!1160))))

(declare-fun b!908621 () Bool)

(declare-fun res!613396 () Bool)

(assert (=> b!908621 (=> (not res!613396) (not e!509288))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908621 (= res!613396 (inRange!0 i!717 mask!1756))))

(declare-fun b!908622 () Bool)

(declare-fun res!613387 () Bool)

(assert (=> b!908622 (=> (not res!613387) (not e!509284))))

(declare-datatypes ((List!18207 0))(
  ( (Nil!18204) (Cons!18203 (h!19349 (_ BitVec 64)) (t!25782 List!18207)) )
))
(declare-fun arrayNoDuplicates!0 (array!53650 (_ BitVec 32) List!18207) Bool)

(assert (=> b!908622 (= res!613387 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18204))))

(declare-fun mapNonEmpty!29935 () Bool)

(declare-fun tp!57450 () Bool)

(assert (=> mapNonEmpty!29935 (= mapRes!29935 (and tp!57450 e!509287))))

(declare-fun mapKey!29935 () (_ BitVec 32))

(declare-fun mapValue!29935 () ValueCell!8925)

(declare-fun mapRest!29935 () (Array (_ BitVec 32) ValueCell!8925))

(assert (=> mapNonEmpty!29935 (= (arr!25778 _values!1152) (store mapRest!29935 mapKey!29935 mapValue!29935))))

(declare-fun mapIsEmpty!29935 () Bool)

(assert (=> mapIsEmpty!29935 mapRes!29935))

(assert (= (and start!77864 res!613391) b!908611))

(assert (= (and b!908611 res!613393) b!908616))

(assert (= (and b!908616 res!613389) b!908622))

(assert (= (and b!908622 res!613387) b!908615))

(assert (= (and b!908615 res!613395) b!908621))

(assert (= (and b!908621 res!613396) b!908619))

(assert (= (and b!908619 res!613392) b!908618))

(assert (= (and b!908618 (not res!613390)) b!908614))

(assert (= (and b!908614 (not res!613394)) b!908612))

(assert (= (and b!908612 (not res!613388)) b!908620))

(assert (= (and b!908617 condMapEmpty!29935) mapIsEmpty!29935))

(assert (= (and b!908617 (not condMapEmpty!29935)) mapNonEmpty!29935))

(get-info :version)

(assert (= (and mapNonEmpty!29935 ((_ is ValueCellFull!8925) mapValue!29935)) b!908610))

(assert (= (and b!908617 ((_ is ValueCellFull!8925) mapDefault!29935)) b!908613))

(assert (= start!77864 b!908617))

(declare-fun b_lambda!13309 () Bool)

(assert (=> (not b_lambda!13309) (not b!908618)))

(declare-fun t!25780 () Bool)

(declare-fun tb!5425 () Bool)

(assert (=> (and start!77864 (= defaultEntry!1160 defaultEntry!1160) t!25780) tb!5425))

(declare-fun result!10639 () Bool)

(assert (=> tb!5425 (= result!10639 tp_is_empty!18813)))

(assert (=> b!908618 t!25780))

(declare-fun b_and!26967 () Bool)

(assert (= b_and!26965 (and (=> t!25780 result!10639) b_and!26967)))

(declare-fun m!844045 () Bool)

(assert (=> b!908612 m!844045))

(declare-fun m!844047 () Bool)

(assert (=> b!908615 m!844047))

(declare-fun m!844049 () Bool)

(assert (=> b!908615 m!844049))

(declare-fun m!844051 () Bool)

(assert (=> b!908622 m!844051))

(declare-fun m!844053 () Bool)

(assert (=> start!77864 m!844053))

(declare-fun m!844055 () Bool)

(assert (=> start!77864 m!844055))

(declare-fun m!844057 () Bool)

(assert (=> start!77864 m!844057))

(declare-fun m!844059 () Bool)

(assert (=> b!908621 m!844059))

(declare-fun m!844061 () Bool)

(assert (=> b!908618 m!844061))

(declare-fun m!844063 () Bool)

(assert (=> b!908618 m!844063))

(declare-fun m!844065 () Bool)

(assert (=> b!908618 m!844065))

(declare-fun m!844067 () Bool)

(assert (=> b!908618 m!844067))

(assert (=> b!908618 m!844061))

(assert (=> b!908618 m!844065))

(declare-fun m!844069 () Bool)

(assert (=> b!908618 m!844069))

(declare-fun m!844071 () Bool)

(assert (=> mapNonEmpty!29935 m!844071))

(declare-fun m!844073 () Bool)

(assert (=> b!908619 m!844073))

(declare-fun m!844075 () Bool)

(assert (=> b!908620 m!844075))

(declare-fun m!844077 () Bool)

(assert (=> b!908620 m!844077))

(declare-fun m!844079 () Bool)

(assert (=> b!908614 m!844079))

(declare-fun m!844081 () Bool)

(assert (=> b!908614 m!844081))

(declare-fun m!844083 () Bool)

(assert (=> b!908616 m!844083))

(check-sat (not b_lambda!13309) (not b!908616) tp_is_empty!18813 (not b!908620) (not b!908612) (not b!908621) (not b!908622) (not b!908615) (not start!77864) (not mapNonEmpty!29935) b_and!26967 (not b_next!16395) (not b!908614) (not b!908618))
(check-sat b_and!26967 (not b_next!16395))
