; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78936 () Bool)

(assert start!78936)

(declare-fun b_free!17121 () Bool)

(declare-fun b_next!17121 () Bool)

(assert (=> start!78936 (= b_free!17121 (not b_next!17121))))

(declare-fun tp!59804 () Bool)

(declare-fun b_and!27997 () Bool)

(assert (=> start!78936 (= tp!59804 b_and!27997)))

(declare-fun b!922415 () Bool)

(declare-fun e!517594 () Bool)

(assert (=> b!922415 (= e!517594 (not true))))

(declare-fun lt!414261 () (_ BitVec 64))

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!922415 (not (= lt!414261 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31111 0))(
  ( (Unit!31112) )
))
(declare-fun lt!414259 () Unit!31111)

(declare-datatypes ((array!55244 0))(
  ( (array!55245 (arr!26563 (Array (_ BitVec 32) (_ BitVec 64))) (size!27023 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55244)

(declare-datatypes ((List!18775 0))(
  ( (Nil!18772) (Cons!18771 (h!19917 (_ BitVec 64)) (t!26634 List!18775)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55244 (_ BitVec 64) (_ BitVec 32) List!18775) Unit!31111)

(assert (=> b!922415 (= lt!414259 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18772))))

(declare-fun e!517595 () Bool)

(assert (=> b!922415 e!517595))

(declare-fun c!96101 () Bool)

(assert (=> b!922415 (= c!96101 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414258 () Unit!31111)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31137 0))(
  ( (V!31138 (val!9865 Int)) )
))
(declare-datatypes ((ValueCell!9333 0))(
  ( (ValueCellFull!9333 (v!12383 V!31137)) (EmptyCell!9333) )
))
(declare-datatypes ((array!55246 0))(
  ( (array!55247 (arr!26564 (Array (_ BitVec 32) ValueCell!9333)) (size!27024 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55246)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31137)

(declare-fun minValue!1173 () V!31137)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!198 (array!55244 array!55246 (_ BitVec 32) (_ BitVec 32) V!31137 V!31137 (_ BitVec 64) (_ BitVec 32) Int) Unit!31111)

(assert (=> b!922415 (= lt!414258 (lemmaListMapContainsThenArrayContainsFrom!198 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55244 (_ BitVec 32) List!18775) Bool)

(assert (=> b!922415 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18772)))

(declare-fun lt!414254 () Unit!31111)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55244 (_ BitVec 32) (_ BitVec 32)) Unit!31111)

(assert (=> b!922415 (= lt!414254 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12938 0))(
  ( (tuple2!12939 (_1!6479 (_ BitVec 64)) (_2!6479 V!31137)) )
))
(declare-datatypes ((List!18776 0))(
  ( (Nil!18773) (Cons!18772 (h!19918 tuple2!12938) (t!26635 List!18776)) )
))
(declare-datatypes ((ListLongMap!11649 0))(
  ( (ListLongMap!11650 (toList!5840 List!18776)) )
))
(declare-fun lt!414256 () ListLongMap!11649)

(declare-fun lt!414257 () tuple2!12938)

(declare-fun contains!4865 (ListLongMap!11649 (_ BitVec 64)) Bool)

(declare-fun +!2652 (ListLongMap!11649 tuple2!12938) ListLongMap!11649)

(assert (=> b!922415 (contains!4865 (+!2652 lt!414256 lt!414257) k0!1099)))

(declare-fun lt!414253 () V!31137)

(declare-fun lt!414260 () Unit!31111)

(declare-fun addStillContains!414 (ListLongMap!11649 (_ BitVec 64) V!31137 (_ BitVec 64)) Unit!31111)

(assert (=> b!922415 (= lt!414260 (addStillContains!414 lt!414256 lt!414261 lt!414253 k0!1099))))

(declare-fun getCurrentListMap!3059 (array!55244 array!55246 (_ BitVec 32) (_ BitVec 32) V!31137 V!31137 (_ BitVec 32) Int) ListLongMap!11649)

(assert (=> b!922415 (= (getCurrentListMap!3059 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2652 (getCurrentListMap!3059 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414257))))

(assert (=> b!922415 (= lt!414257 (tuple2!12939 lt!414261 lt!414253))))

(declare-fun get!13971 (ValueCell!9333 V!31137) V!31137)

(declare-fun dynLambda!1491 (Int (_ BitVec 64)) V!31137)

(assert (=> b!922415 (= lt!414253 (get!13971 (select (arr!26564 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1491 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414255 () Unit!31111)

(declare-fun lemmaListMapRecursiveValidKeyArray!87 (array!55244 array!55246 (_ BitVec 32) (_ BitVec 32) V!31137 V!31137 (_ BitVec 32) Int) Unit!31111)

(assert (=> b!922415 (= lt!414255 (lemmaListMapRecursiveValidKeyArray!87 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31200 () Bool)

(declare-fun mapRes!31200 () Bool)

(assert (=> mapIsEmpty!31200 mapRes!31200))

(declare-fun b!922416 () Bool)

(declare-fun e!517592 () Bool)

(declare-fun tp_is_empty!19629 () Bool)

(assert (=> b!922416 (= e!517592 tp_is_empty!19629)))

(declare-fun b!922417 () Bool)

(declare-fun e!517590 () Bool)

(assert (=> b!922417 (= e!517590 tp_is_empty!19629)))

(declare-fun b!922418 () Bool)

(declare-fun res!622144 () Bool)

(declare-fun e!517596 () Bool)

(assert (=> b!922418 (=> (not res!622144) (not e!517596))))

(assert (=> b!922418 (= res!622144 (and (= (size!27024 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27023 _keys!1487) (size!27024 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922420 () Bool)

(declare-fun res!622138 () Bool)

(assert (=> b!922420 (=> (not res!622138) (not e!517596))))

(assert (=> b!922420 (= res!622138 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18772))))

(declare-fun b!922421 () Bool)

(declare-fun e!517589 () Bool)

(assert (=> b!922421 (= e!517589 (and e!517592 mapRes!31200))))

(declare-fun condMapEmpty!31200 () Bool)

(declare-fun mapDefault!31200 () ValueCell!9333)

(assert (=> b!922421 (= condMapEmpty!31200 (= (arr!26564 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9333)) mapDefault!31200)))))

(declare-fun b!922422 () Bool)

(declare-fun res!622136 () Bool)

(assert (=> b!922422 (=> (not res!622136) (not e!517596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55244 (_ BitVec 32)) Bool)

(assert (=> b!922422 (= res!622136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922423 () Bool)

(declare-fun arrayContainsKey!0 (array!55244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922423 (= e!517595 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922424 () Bool)

(declare-fun res!622145 () Bool)

(declare-fun e!517593 () Bool)

(assert (=> b!922424 (=> (not res!622145) (not e!517593))))

(assert (=> b!922424 (= res!622145 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922425 () Bool)

(assert (=> b!922425 (= e!517595 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922426 () Bool)

(assert (=> b!922426 (= e!517596 e!517593)))

(declare-fun res!622143 () Bool)

(assert (=> b!922426 (=> (not res!622143) (not e!517593))))

(assert (=> b!922426 (= res!622143 (contains!4865 lt!414256 k0!1099))))

(assert (=> b!922426 (= lt!414256 (getCurrentListMap!3059 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922419 () Bool)

(declare-fun res!622140 () Bool)

(assert (=> b!922419 (=> (not res!622140) (not e!517596))))

(assert (=> b!922419 (= res!622140 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27023 _keys!1487))))))

(declare-fun res!622137 () Bool)

(assert (=> start!78936 (=> (not res!622137) (not e!517596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78936 (= res!622137 (validMask!0 mask!1881))))

(assert (=> start!78936 e!517596))

(assert (=> start!78936 true))

(assert (=> start!78936 tp_is_empty!19629))

(declare-fun array_inv!20680 (array!55246) Bool)

(assert (=> start!78936 (and (array_inv!20680 _values!1231) e!517589)))

(assert (=> start!78936 tp!59804))

(declare-fun array_inv!20681 (array!55244) Bool)

(assert (=> start!78936 (array_inv!20681 _keys!1487)))

(declare-fun mapNonEmpty!31200 () Bool)

(declare-fun tp!59805 () Bool)

(assert (=> mapNonEmpty!31200 (= mapRes!31200 (and tp!59805 e!517590))))

(declare-fun mapValue!31200 () ValueCell!9333)

(declare-fun mapRest!31200 () (Array (_ BitVec 32) ValueCell!9333))

(declare-fun mapKey!31200 () (_ BitVec 32))

(assert (=> mapNonEmpty!31200 (= (arr!26564 _values!1231) (store mapRest!31200 mapKey!31200 mapValue!31200))))

(declare-fun b!922427 () Bool)

(declare-fun res!622141 () Bool)

(assert (=> b!922427 (=> (not res!622141) (not e!517593))))

(declare-fun v!791 () V!31137)

(declare-fun apply!645 (ListLongMap!11649 (_ BitVec 64)) V!31137)

(assert (=> b!922427 (= res!622141 (= (apply!645 lt!414256 k0!1099) v!791))))

(declare-fun b!922428 () Bool)

(assert (=> b!922428 (= e!517593 e!517594)))

(declare-fun res!622139 () Bool)

(assert (=> b!922428 (=> (not res!622139) (not e!517594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922428 (= res!622139 (validKeyInArray!0 lt!414261))))

(assert (=> b!922428 (= lt!414261 (select (arr!26563 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922429 () Bool)

(declare-fun res!622142 () Bool)

(assert (=> b!922429 (=> (not res!622142) (not e!517593))))

(assert (=> b!922429 (= res!622142 (validKeyInArray!0 k0!1099))))

(assert (= (and start!78936 res!622137) b!922418))

(assert (= (and b!922418 res!622144) b!922422))

(assert (= (and b!922422 res!622136) b!922420))

(assert (= (and b!922420 res!622138) b!922419))

(assert (= (and b!922419 res!622140) b!922426))

(assert (= (and b!922426 res!622143) b!922427))

(assert (= (and b!922427 res!622141) b!922424))

(assert (= (and b!922424 res!622145) b!922429))

(assert (= (and b!922429 res!622142) b!922428))

(assert (= (and b!922428 res!622139) b!922415))

(assert (= (and b!922415 c!96101) b!922423))

(assert (= (and b!922415 (not c!96101)) b!922425))

(assert (= (and b!922421 condMapEmpty!31200) mapIsEmpty!31200))

(assert (= (and b!922421 (not condMapEmpty!31200)) mapNonEmpty!31200))

(get-info :version)

(assert (= (and mapNonEmpty!31200 ((_ is ValueCellFull!9333) mapValue!31200)) b!922417))

(assert (= (and b!922421 ((_ is ValueCellFull!9333) mapDefault!31200)) b!922416))

(assert (= start!78936 b!922421))

(declare-fun b_lambda!13653 () Bool)

(assert (=> (not b_lambda!13653) (not b!922415)))

(declare-fun t!26633 () Bool)

(declare-fun tb!5709 () Bool)

(assert (=> (and start!78936 (= defaultEntry!1235 defaultEntry!1235) t!26633) tb!5709))

(declare-fun result!11233 () Bool)

(assert (=> tb!5709 (= result!11233 tp_is_empty!19629)))

(assert (=> b!922415 t!26633))

(declare-fun b_and!27999 () Bool)

(assert (= b_and!27997 (and (=> t!26633 result!11233) b_and!27999)))

(declare-fun m!856609 () Bool)

(assert (=> b!922415 m!856609))

(declare-fun m!856611 () Bool)

(assert (=> b!922415 m!856611))

(declare-fun m!856613 () Bool)

(assert (=> b!922415 m!856613))

(declare-fun m!856615 () Bool)

(assert (=> b!922415 m!856615))

(assert (=> b!922415 m!856609))

(assert (=> b!922415 m!856611))

(declare-fun m!856617 () Bool)

(assert (=> b!922415 m!856617))

(declare-fun m!856619 () Bool)

(assert (=> b!922415 m!856619))

(declare-fun m!856621 () Bool)

(assert (=> b!922415 m!856621))

(declare-fun m!856623 () Bool)

(assert (=> b!922415 m!856623))

(declare-fun m!856625 () Bool)

(assert (=> b!922415 m!856625))

(declare-fun m!856627 () Bool)

(assert (=> b!922415 m!856627))

(declare-fun m!856629 () Bool)

(assert (=> b!922415 m!856629))

(declare-fun m!856631 () Bool)

(assert (=> b!922415 m!856631))

(declare-fun m!856633 () Bool)

(assert (=> b!922415 m!856633))

(assert (=> b!922415 m!856613))

(assert (=> b!922415 m!856631))

(declare-fun m!856635 () Bool)

(assert (=> b!922415 m!856635))

(declare-fun m!856637 () Bool)

(assert (=> b!922429 m!856637))

(declare-fun m!856639 () Bool)

(assert (=> b!922428 m!856639))

(declare-fun m!856641 () Bool)

(assert (=> b!922428 m!856641))

(declare-fun m!856643 () Bool)

(assert (=> b!922423 m!856643))

(declare-fun m!856645 () Bool)

(assert (=> start!78936 m!856645))

(declare-fun m!856647 () Bool)

(assert (=> start!78936 m!856647))

(declare-fun m!856649 () Bool)

(assert (=> start!78936 m!856649))

(declare-fun m!856651 () Bool)

(assert (=> b!922427 m!856651))

(declare-fun m!856653 () Bool)

(assert (=> b!922426 m!856653))

(declare-fun m!856655 () Bool)

(assert (=> b!922426 m!856655))

(declare-fun m!856657 () Bool)

(assert (=> b!922420 m!856657))

(declare-fun m!856659 () Bool)

(assert (=> mapNonEmpty!31200 m!856659))

(declare-fun m!856661 () Bool)

(assert (=> b!922422 m!856661))

(check-sat (not b!922415) (not b!922428) (not b!922420) b_and!27999 (not b!922426) (not start!78936) (not b!922429) (not b!922427) (not b_lambda!13653) (not b_next!17121) (not mapNonEmpty!31200) (not b!922422) tp_is_empty!19629 (not b!922423))
(check-sat b_and!27999 (not b_next!17121))
