; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77828 () Bool)

(assert start!77828)

(declare-fun b_free!16359 () Bool)

(declare-fun b_next!16359 () Bool)

(assert (=> start!77828 (= b_free!16359 (not b_next!16359))))

(declare-fun tp!57343 () Bool)

(declare-fun b_and!26893 () Bool)

(assert (=> start!77828 (= tp!57343 b_and!26893)))

(declare-fun b!907872 () Bool)

(declare-fun e!508857 () Bool)

(declare-fun tp_is_empty!18777 () Bool)

(assert (=> b!907872 (= e!508857 tp_is_empty!18777)))

(declare-fun b!907873 () Bool)

(declare-fun res!612853 () Bool)

(declare-fun e!508856 () Bool)

(assert (=> b!907873 (=> (not res!612853) (not e!508856))))

(declare-datatypes ((array!53580 0))(
  ( (array!53581 (arr!25744 (Array (_ BitVec 32) (_ BitVec 64))) (size!26204 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53580)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53580 (_ BitVec 32)) Bool)

(assert (=> b!907873 (= res!612853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907874 () Bool)

(declare-fun res!612852 () Bool)

(declare-fun e!508852 () Bool)

(assert (=> b!907874 (=> (not res!612852) (not e!508852))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!907874 (= res!612852 (and (= (select (arr!25744 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907875 () Bool)

(declare-fun e!508858 () Bool)

(assert (=> b!907875 (= e!508858 true)))

(declare-datatypes ((V!30001 0))(
  ( (V!30002 (val!9439 Int)) )
))
(declare-datatypes ((tuple2!12320 0))(
  ( (tuple2!12321 (_1!6170 (_ BitVec 64)) (_2!6170 V!30001)) )
))
(declare-datatypes ((List!18178 0))(
  ( (Nil!18175) (Cons!18174 (h!19320 tuple2!12320) (t!25717 List!18178)) )
))
(declare-datatypes ((ListLongMap!11031 0))(
  ( (ListLongMap!11032 (toList!5531 List!18178)) )
))
(declare-fun lt!409507 () ListLongMap!11031)

(declare-fun lt!409506 () V!30001)

(declare-fun apply!506 (ListLongMap!11031 (_ BitVec 64)) V!30001)

(assert (=> b!907875 (= (apply!506 lt!409507 k0!1033) lt!409506)))

(declare-datatypes ((ValueCell!8907 0))(
  ( (ValueCellFull!8907 (v!11946 V!30001)) (EmptyCell!8907) )
))
(declare-datatypes ((array!53582 0))(
  ( (array!53583 (arr!25745 (Array (_ BitVec 32) ValueCell!8907)) (size!26205 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53582)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30001)

(declare-datatypes ((Unit!30791 0))(
  ( (Unit!30792) )
))
(declare-fun lt!409509 () Unit!30791)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30001)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!52 (array!53580 array!53582 (_ BitVec 32) (_ BitVec 32) V!30001 V!30001 (_ BitVec 64) V!30001 (_ BitVec 32) Int) Unit!30791)

(assert (=> b!907875 (= lt!409509 (lemmaListMapApplyFromThenApplyFromZero!52 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409506 i!717 defaultEntry!1160))))

(declare-fun b!907876 () Bool)

(declare-fun res!612847 () Bool)

(assert (=> b!907876 (=> (not res!612847) (not e!508856))))

(assert (=> b!907876 (= res!612847 (and (= (size!26205 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26204 _keys!1386) (size!26205 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907877 () Bool)

(declare-fun res!612848 () Bool)

(assert (=> b!907877 (=> res!612848 e!508858)))

(declare-fun lt!409508 () ListLongMap!11031)

(assert (=> b!907877 (= res!612848 (not (= (apply!506 lt!409508 k0!1033) lt!409506)))))

(declare-fun b!907878 () Bool)

(declare-fun res!612855 () Bool)

(assert (=> b!907878 (=> (not res!612855) (not e!508852))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907878 (= res!612855 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29881 () Bool)

(declare-fun mapRes!29881 () Bool)

(assert (=> mapIsEmpty!29881 mapRes!29881))

(declare-fun b!907879 () Bool)

(declare-fun e!508855 () Bool)

(assert (=> b!907879 (= e!508855 tp_is_empty!18777)))

(declare-fun b!907880 () Bool)

(declare-fun e!508854 () Bool)

(assert (=> b!907880 (= e!508852 (not e!508854))))

(declare-fun res!612849 () Bool)

(assert (=> b!907880 (=> res!612849 e!508854)))

(assert (=> b!907880 (= res!612849 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26204 _keys!1386))))))

(declare-fun get!13565 (ValueCell!8907 V!30001) V!30001)

(declare-fun dynLambda!1376 (Int (_ BitVec 64)) V!30001)

(assert (=> b!907880 (= lt!409506 (get!13565 (select (arr!25745 _values!1152) i!717) (dynLambda!1376 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907880 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409510 () Unit!30791)

(declare-fun lemmaKeyInListMapIsInArray!249 (array!53580 array!53582 (_ BitVec 32) (_ BitVec 32) V!30001 V!30001 (_ BitVec 64) Int) Unit!30791)

(assert (=> b!907880 (= lt!409510 (lemmaKeyInListMapIsInArray!249 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!907881 () Bool)

(assert (=> b!907881 (= e!508854 e!508858)))

(declare-fun res!612850 () Bool)

(assert (=> b!907881 (=> res!612850 e!508858)))

(declare-fun contains!4540 (ListLongMap!11031 (_ BitVec 64)) Bool)

(assert (=> b!907881 (= res!612850 (not (contains!4540 lt!409508 k0!1033)))))

(declare-fun getCurrentListMap!2763 (array!53580 array!53582 (_ BitVec 32) (_ BitVec 32) V!30001 V!30001 (_ BitVec 32) Int) ListLongMap!11031)

(assert (=> b!907881 (= lt!409508 (getCurrentListMap!2763 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907882 () Bool)

(declare-fun res!612851 () Bool)

(assert (=> b!907882 (=> (not res!612851) (not e!508856))))

(declare-datatypes ((List!18179 0))(
  ( (Nil!18176) (Cons!18175 (h!19321 (_ BitVec 64)) (t!25718 List!18179)) )
))
(declare-fun arrayNoDuplicates!0 (array!53580 (_ BitVec 32) List!18179) Bool)

(assert (=> b!907882 (= res!612851 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18176))))

(declare-fun b!907883 () Bool)

(declare-fun e!508859 () Bool)

(assert (=> b!907883 (= e!508859 (and e!508857 mapRes!29881))))

(declare-fun condMapEmpty!29881 () Bool)

(declare-fun mapDefault!29881 () ValueCell!8907)

(assert (=> b!907883 (= condMapEmpty!29881 (= (arr!25745 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8907)) mapDefault!29881)))))

(declare-fun b!907884 () Bool)

(assert (=> b!907884 (= e!508856 e!508852)))

(declare-fun res!612854 () Bool)

(assert (=> b!907884 (=> (not res!612854) (not e!508852))))

(assert (=> b!907884 (= res!612854 (contains!4540 lt!409507 k0!1033))))

(assert (=> b!907884 (= lt!409507 (getCurrentListMap!2763 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29881 () Bool)

(declare-fun tp!57342 () Bool)

(assert (=> mapNonEmpty!29881 (= mapRes!29881 (and tp!57342 e!508855))))

(declare-fun mapRest!29881 () (Array (_ BitVec 32) ValueCell!8907))

(declare-fun mapValue!29881 () ValueCell!8907)

(declare-fun mapKey!29881 () (_ BitVec 32))

(assert (=> mapNonEmpty!29881 (= (arr!25745 _values!1152) (store mapRest!29881 mapKey!29881 mapValue!29881))))

(declare-fun res!612856 () Bool)

(assert (=> start!77828 (=> (not res!612856) (not e!508856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77828 (= res!612856 (validMask!0 mask!1756))))

(assert (=> start!77828 e!508856))

(declare-fun array_inv!20130 (array!53582) Bool)

(assert (=> start!77828 (and (array_inv!20130 _values!1152) e!508859)))

(assert (=> start!77828 tp!57343))

(assert (=> start!77828 true))

(assert (=> start!77828 tp_is_empty!18777))

(declare-fun array_inv!20131 (array!53580) Bool)

(assert (=> start!77828 (array_inv!20131 _keys!1386)))

(assert (= (and start!77828 res!612856) b!907876))

(assert (= (and b!907876 res!612847) b!907873))

(assert (= (and b!907873 res!612853) b!907882))

(assert (= (and b!907882 res!612851) b!907884))

(assert (= (and b!907884 res!612854) b!907878))

(assert (= (and b!907878 res!612855) b!907874))

(assert (= (and b!907874 res!612852) b!907880))

(assert (= (and b!907880 (not res!612849)) b!907881))

(assert (= (and b!907881 (not res!612850)) b!907877))

(assert (= (and b!907877 (not res!612848)) b!907875))

(assert (= (and b!907883 condMapEmpty!29881) mapIsEmpty!29881))

(assert (= (and b!907883 (not condMapEmpty!29881)) mapNonEmpty!29881))

(get-info :version)

(assert (= (and mapNonEmpty!29881 ((_ is ValueCellFull!8907) mapValue!29881)) b!907879))

(assert (= (and b!907883 ((_ is ValueCellFull!8907) mapDefault!29881)) b!907872))

(assert (= start!77828 b!907883))

(declare-fun b_lambda!13273 () Bool)

(assert (=> (not b_lambda!13273) (not b!907880)))

(declare-fun t!25716 () Bool)

(declare-fun tb!5389 () Bool)

(assert (=> (and start!77828 (= defaultEntry!1160 defaultEntry!1160) t!25716) tb!5389))

(declare-fun result!10567 () Bool)

(assert (=> tb!5389 (= result!10567 tp_is_empty!18777)))

(assert (=> b!907880 t!25716))

(declare-fun b_and!26895 () Bool)

(assert (= b_and!26893 (and (=> t!25716 result!10567) b_and!26895)))

(declare-fun m!843325 () Bool)

(assert (=> b!907875 m!843325))

(declare-fun m!843327 () Bool)

(assert (=> b!907875 m!843327))

(declare-fun m!843329 () Bool)

(assert (=> b!907878 m!843329))

(declare-fun m!843331 () Bool)

(assert (=> b!907880 m!843331))

(declare-fun m!843333 () Bool)

(assert (=> b!907880 m!843333))

(declare-fun m!843335 () Bool)

(assert (=> b!907880 m!843335))

(declare-fun m!843337 () Bool)

(assert (=> b!907880 m!843337))

(assert (=> b!907880 m!843331))

(assert (=> b!907880 m!843335))

(declare-fun m!843339 () Bool)

(assert (=> b!907880 m!843339))

(declare-fun m!843341 () Bool)

(assert (=> b!907877 m!843341))

(declare-fun m!843343 () Bool)

(assert (=> b!907881 m!843343))

(declare-fun m!843345 () Bool)

(assert (=> b!907881 m!843345))

(declare-fun m!843347 () Bool)

(assert (=> b!907873 m!843347))

(declare-fun m!843349 () Bool)

(assert (=> b!907882 m!843349))

(declare-fun m!843351 () Bool)

(assert (=> b!907874 m!843351))

(declare-fun m!843353 () Bool)

(assert (=> mapNonEmpty!29881 m!843353))

(declare-fun m!843355 () Bool)

(assert (=> b!907884 m!843355))

(declare-fun m!843357 () Bool)

(assert (=> b!907884 m!843357))

(declare-fun m!843359 () Bool)

(assert (=> start!77828 m!843359))

(declare-fun m!843361 () Bool)

(assert (=> start!77828 m!843361))

(declare-fun m!843363 () Bool)

(assert (=> start!77828 m!843363))

(check-sat (not b!907873) (not b_lambda!13273) (not b!907882) (not start!77828) (not b!907880) (not b!907875) tp_is_empty!18777 (not b!907884) (not b!907877) (not mapNonEmpty!29881) (not b!907881) b_and!26895 (not b!907878) (not b_next!16359))
(check-sat b_and!26895 (not b_next!16359))
