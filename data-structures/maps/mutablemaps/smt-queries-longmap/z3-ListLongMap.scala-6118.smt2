; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78846 () Bool)

(assert start!78846)

(declare-fun b_free!17031 () Bool)

(declare-fun b_next!17031 () Bool)

(assert (=> start!78846 (= b_free!17031 (not b_next!17031))))

(declare-fun tp!59534 () Bool)

(declare-fun b_and!27817 () Bool)

(assert (=> start!78846 (= tp!59534 b_and!27817)))

(declare-fun b!920065 () Bool)

(declare-fun e!516436 () Bool)

(declare-fun e!516438 () Bool)

(assert (=> b!920065 (= e!516436 e!516438)))

(declare-fun res!620547 () Bool)

(assert (=> b!920065 (=> (not res!620547) (not e!516438))))

(declare-datatypes ((V!31017 0))(
  ( (V!31018 (val!9820 Int)) )
))
(declare-datatypes ((tuple2!12856 0))(
  ( (tuple2!12857 (_1!6438 (_ BitVec 64)) (_2!6438 V!31017)) )
))
(declare-datatypes ((List!18698 0))(
  ( (Nil!18695) (Cons!18694 (h!19840 tuple2!12856) (t!26467 List!18698)) )
))
(declare-datatypes ((ListLongMap!11567 0))(
  ( (ListLongMap!11568 (toList!5799 List!18698)) )
))
(declare-fun lt!413046 () ListLongMap!11567)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4809 (ListLongMap!11567 (_ BitVec 64)) Bool)

(assert (=> b!920065 (= res!620547 (contains!4809 lt!413046 k0!1099))))

(declare-datatypes ((array!55070 0))(
  ( (array!55071 (arr!26476 (Array (_ BitVec 32) (_ BitVec 64))) (size!26936 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55070)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9288 0))(
  ( (ValueCellFull!9288 (v!12338 V!31017)) (EmptyCell!9288) )
))
(declare-datatypes ((array!55072 0))(
  ( (array!55073 (arr!26477 (Array (_ BitVec 32) ValueCell!9288)) (size!26937 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55072)

(declare-fun zeroValue!1173 () V!31017)

(declare-fun minValue!1173 () V!31017)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3021 (array!55070 array!55072 (_ BitVec 32) (_ BitVec 32) V!31017 V!31017 (_ BitVec 32) Int) ListLongMap!11567)

(assert (=> b!920065 (= lt!413046 (getCurrentListMap!3021 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31065 () Bool)

(declare-fun mapRes!31065 () Bool)

(assert (=> mapIsEmpty!31065 mapRes!31065))

(declare-fun b!920066 () Bool)

(declare-fun res!620552 () Bool)

(assert (=> b!920066 (=> (not res!620552) (not e!516436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55070 (_ BitVec 32)) Bool)

(assert (=> b!920066 (= res!620552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920067 () Bool)

(declare-fun e!516434 () Bool)

(declare-fun tp_is_empty!19539 () Bool)

(assert (=> b!920067 (= e!516434 tp_is_empty!19539)))

(declare-fun b!920069 () Bool)

(declare-fun res!620546 () Bool)

(assert (=> b!920069 (=> (not res!620546) (not e!516438))))

(assert (=> b!920069 (= res!620546 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920070 () Bool)

(declare-fun res!620543 () Bool)

(assert (=> b!920070 (=> (not res!620543) (not e!516436))))

(assert (=> b!920070 (= res!620543 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26936 _keys!1487))))))

(declare-fun b!920071 () Bool)

(declare-fun e!516437 () Bool)

(assert (=> b!920071 (= e!516437 (not true))))

(declare-datatypes ((List!18699 0))(
  ( (Nil!18696) (Cons!18695 (h!19841 (_ BitVec 64)) (t!26468 List!18699)) )
))
(declare-fun arrayNoDuplicates!0 (array!55070 (_ BitVec 32) List!18699) Bool)

(assert (=> b!920071 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18696)))

(declare-datatypes ((Unit!31045 0))(
  ( (Unit!31046) )
))
(declare-fun lt!413051 () Unit!31045)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55070 (_ BitVec 32) (_ BitVec 32)) Unit!31045)

(assert (=> b!920071 (= lt!413051 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413052 () tuple2!12856)

(declare-fun +!2619 (ListLongMap!11567 tuple2!12856) ListLongMap!11567)

(assert (=> b!920071 (contains!4809 (+!2619 lt!413046 lt!413052) k0!1099)))

(declare-fun lt!413047 () Unit!31045)

(declare-fun lt!413048 () V!31017)

(declare-fun lt!413050 () (_ BitVec 64))

(declare-fun addStillContains!381 (ListLongMap!11567 (_ BitVec 64) V!31017 (_ BitVec 64)) Unit!31045)

(assert (=> b!920071 (= lt!413047 (addStillContains!381 lt!413046 lt!413050 lt!413048 k0!1099))))

(assert (=> b!920071 (= (getCurrentListMap!3021 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2619 (getCurrentListMap!3021 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413052))))

(assert (=> b!920071 (= lt!413052 (tuple2!12857 lt!413050 lt!413048))))

(declare-fun get!13908 (ValueCell!9288 V!31017) V!31017)

(declare-fun dynLambda!1458 (Int (_ BitVec 64)) V!31017)

(assert (=> b!920071 (= lt!413048 (get!13908 (select (arr!26477 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1458 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413049 () Unit!31045)

(declare-fun lemmaListMapRecursiveValidKeyArray!54 (array!55070 array!55072 (_ BitVec 32) (_ BitVec 32) V!31017 V!31017 (_ BitVec 32) Int) Unit!31045)

(assert (=> b!920071 (= lt!413049 (lemmaListMapRecursiveValidKeyArray!54 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31065 () Bool)

(declare-fun tp!59535 () Bool)

(assert (=> mapNonEmpty!31065 (= mapRes!31065 (and tp!59535 e!516434))))

(declare-fun mapValue!31065 () ValueCell!9288)

(declare-fun mapKey!31065 () (_ BitVec 32))

(declare-fun mapRest!31065 () (Array (_ BitVec 32) ValueCell!9288))

(assert (=> mapNonEmpty!31065 (= (arr!26477 _values!1231) (store mapRest!31065 mapKey!31065 mapValue!31065))))

(declare-fun b!920072 () Bool)

(declare-fun res!620544 () Bool)

(assert (=> b!920072 (=> (not res!620544) (not e!516436))))

(assert (=> b!920072 (= res!620544 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18696))))

(declare-fun b!920073 () Bool)

(declare-fun res!620548 () Bool)

(assert (=> b!920073 (=> (not res!620548) (not e!516438))))

(declare-fun v!791 () V!31017)

(declare-fun apply!612 (ListLongMap!11567 (_ BitVec 64)) V!31017)

(assert (=> b!920073 (= res!620548 (= (apply!612 lt!413046 k0!1099) v!791))))

(declare-fun b!920074 () Bool)

(declare-fun res!620545 () Bool)

(assert (=> b!920074 (=> (not res!620545) (not e!516436))))

(assert (=> b!920074 (= res!620545 (and (= (size!26937 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26936 _keys!1487) (size!26937 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920075 () Bool)

(declare-fun res!620549 () Bool)

(assert (=> b!920075 (=> (not res!620549) (not e!516438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920075 (= res!620549 (validKeyInArray!0 k0!1099))))

(declare-fun b!920068 () Bool)

(declare-fun e!516433 () Bool)

(assert (=> b!920068 (= e!516433 tp_is_empty!19539)))

(declare-fun res!620550 () Bool)

(assert (=> start!78846 (=> (not res!620550) (not e!516436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78846 (= res!620550 (validMask!0 mask!1881))))

(assert (=> start!78846 e!516436))

(assert (=> start!78846 true))

(assert (=> start!78846 tp_is_empty!19539))

(declare-fun e!516435 () Bool)

(declare-fun array_inv!20620 (array!55072) Bool)

(assert (=> start!78846 (and (array_inv!20620 _values!1231) e!516435)))

(assert (=> start!78846 tp!59534))

(declare-fun array_inv!20621 (array!55070) Bool)

(assert (=> start!78846 (array_inv!20621 _keys!1487)))

(declare-fun b!920076 () Bool)

(assert (=> b!920076 (= e!516438 e!516437)))

(declare-fun res!620551 () Bool)

(assert (=> b!920076 (=> (not res!620551) (not e!516437))))

(assert (=> b!920076 (= res!620551 (validKeyInArray!0 lt!413050))))

(assert (=> b!920076 (= lt!413050 (select (arr!26476 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920077 () Bool)

(assert (=> b!920077 (= e!516435 (and e!516433 mapRes!31065))))

(declare-fun condMapEmpty!31065 () Bool)

(declare-fun mapDefault!31065 () ValueCell!9288)

(assert (=> b!920077 (= condMapEmpty!31065 (= (arr!26477 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9288)) mapDefault!31065)))))

(assert (= (and start!78846 res!620550) b!920074))

(assert (= (and b!920074 res!620545) b!920066))

(assert (= (and b!920066 res!620552) b!920072))

(assert (= (and b!920072 res!620544) b!920070))

(assert (= (and b!920070 res!620543) b!920065))

(assert (= (and b!920065 res!620547) b!920073))

(assert (= (and b!920073 res!620548) b!920069))

(assert (= (and b!920069 res!620546) b!920075))

(assert (= (and b!920075 res!620549) b!920076))

(assert (= (and b!920076 res!620551) b!920071))

(assert (= (and b!920077 condMapEmpty!31065) mapIsEmpty!31065))

(assert (= (and b!920077 (not condMapEmpty!31065)) mapNonEmpty!31065))

(get-info :version)

(assert (= (and mapNonEmpty!31065 ((_ is ValueCellFull!9288) mapValue!31065)) b!920067))

(assert (= (and b!920077 ((_ is ValueCellFull!9288) mapDefault!31065)) b!920068))

(assert (= start!78846 b!920077))

(declare-fun b_lambda!13563 () Bool)

(assert (=> (not b_lambda!13563) (not b!920071)))

(declare-fun t!26466 () Bool)

(declare-fun tb!5619 () Bool)

(assert (=> (and start!78846 (= defaultEntry!1235 defaultEntry!1235) t!26466) tb!5619))

(declare-fun result!11053 () Bool)

(assert (=> tb!5619 (= result!11053 tp_is_empty!19539)))

(assert (=> b!920071 t!26466))

(declare-fun b_and!27819 () Bool)

(assert (= b_and!27817 (and (=> t!26466 result!11053) b_and!27819)))

(declare-fun m!854083 () Bool)

(assert (=> b!920076 m!854083))

(declare-fun m!854085 () Bool)

(assert (=> b!920076 m!854085))

(declare-fun m!854087 () Bool)

(assert (=> b!920075 m!854087))

(declare-fun m!854089 () Bool)

(assert (=> b!920066 m!854089))

(declare-fun m!854091 () Bool)

(assert (=> b!920073 m!854091))

(declare-fun m!854093 () Bool)

(assert (=> b!920071 m!854093))

(declare-fun m!854095 () Bool)

(assert (=> b!920071 m!854095))

(declare-fun m!854097 () Bool)

(assert (=> b!920071 m!854097))

(assert (=> b!920071 m!854093))

(declare-fun m!854099 () Bool)

(assert (=> b!920071 m!854099))

(declare-fun m!854101 () Bool)

(assert (=> b!920071 m!854101))

(declare-fun m!854103 () Bool)

(assert (=> b!920071 m!854103))

(assert (=> b!920071 m!854101))

(assert (=> b!920071 m!854103))

(declare-fun m!854105 () Bool)

(assert (=> b!920071 m!854105))

(declare-fun m!854107 () Bool)

(assert (=> b!920071 m!854107))

(declare-fun m!854109 () Bool)

(assert (=> b!920071 m!854109))

(declare-fun m!854111 () Bool)

(assert (=> b!920071 m!854111))

(declare-fun m!854113 () Bool)

(assert (=> b!920071 m!854113))

(assert (=> b!920071 m!854095))

(declare-fun m!854115 () Bool)

(assert (=> b!920071 m!854115))

(declare-fun m!854117 () Bool)

(assert (=> b!920065 m!854117))

(declare-fun m!854119 () Bool)

(assert (=> b!920065 m!854119))

(declare-fun m!854121 () Bool)

(assert (=> mapNonEmpty!31065 m!854121))

(declare-fun m!854123 () Bool)

(assert (=> b!920072 m!854123))

(declare-fun m!854125 () Bool)

(assert (=> start!78846 m!854125))

(declare-fun m!854127 () Bool)

(assert (=> start!78846 m!854127))

(declare-fun m!854129 () Bool)

(assert (=> start!78846 m!854129))

(check-sat (not b!920072) (not b!920066) (not b!920075) b_and!27819 (not mapNonEmpty!31065) tp_is_empty!19539 (not b!920071) (not b_lambda!13563) (not b!920076) (not b_next!17031) (not start!78846) (not b!920073) (not b!920065))
(check-sat b_and!27819 (not b_next!17031))
