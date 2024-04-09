; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77736 () Bool)

(assert start!77736)

(declare-fun b_free!16293 () Bool)

(declare-fun b_next!16293 () Bool)

(assert (=> start!77736 (= b_free!16293 (not b_next!16293))))

(declare-fun tp!57142 () Bool)

(declare-fun b_and!26757 () Bool)

(assert (=> start!77736 (= tp!57142 b_and!26757)))

(declare-fun b!906367 () Bool)

(declare-fun e!507963 () Bool)

(declare-fun tp_is_empty!18711 () Bool)

(assert (=> b!906367 (= e!507963 tp_is_empty!18711)))

(declare-fun b!906368 () Bool)

(declare-fun res!611795 () Bool)

(declare-fun e!507964 () Bool)

(assert (=> b!906368 (=> (not res!611795) (not e!507964))))

(declare-datatypes ((array!53450 0))(
  ( (array!53451 (arr!25680 (Array (_ BitVec 32) (_ BitVec 64))) (size!26140 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53450)

(declare-datatypes ((List!18127 0))(
  ( (Nil!18124) (Cons!18123 (h!19269 (_ BitVec 64)) (t!25600 List!18127)) )
))
(declare-fun arrayNoDuplicates!0 (array!53450 (_ BitVec 32) List!18127) Bool)

(assert (=> b!906368 (= res!611795 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18124))))

(declare-fun b!906369 () Bool)

(declare-fun res!611794 () Bool)

(assert (=> b!906369 (=> (not res!611794) (not e!507964))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53450 (_ BitVec 32)) Bool)

(assert (=> b!906369 (= res!611794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!611800 () Bool)

(assert (=> start!77736 (=> (not res!611800) (not e!507964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77736 (= res!611800 (validMask!0 mask!1756))))

(assert (=> start!77736 e!507964))

(declare-datatypes ((V!29913 0))(
  ( (V!29914 (val!9406 Int)) )
))
(declare-datatypes ((ValueCell!8874 0))(
  ( (ValueCellFull!8874 (v!11911 V!29913)) (EmptyCell!8874) )
))
(declare-datatypes ((array!53452 0))(
  ( (array!53453 (arr!25681 (Array (_ BitVec 32) ValueCell!8874)) (size!26141 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53452)

(declare-fun e!507960 () Bool)

(declare-fun array_inv!20088 (array!53452) Bool)

(assert (=> start!77736 (and (array_inv!20088 _values!1152) e!507960)))

(assert (=> start!77736 tp!57142))

(assert (=> start!77736 true))

(assert (=> start!77736 tp_is_empty!18711))

(declare-fun array_inv!20089 (array!53450) Bool)

(assert (=> start!77736 (array_inv!20089 _keys!1386)))

(declare-fun b!906370 () Bool)

(declare-fun res!611799 () Bool)

(assert (=> b!906370 (=> (not res!611799) (not e!507964))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!906370 (= res!611799 (and (= (size!26141 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26140 _keys!1386) (size!26141 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906371 () Bool)

(declare-fun mapRes!29779 () Bool)

(assert (=> b!906371 (= e!507960 (and e!507963 mapRes!29779))))

(declare-fun condMapEmpty!29779 () Bool)

(declare-fun mapDefault!29779 () ValueCell!8874)

(assert (=> b!906371 (= condMapEmpty!29779 (= (arr!25681 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8874)) mapDefault!29779)))))

(declare-fun mapIsEmpty!29779 () Bool)

(assert (=> mapIsEmpty!29779 mapRes!29779))

(declare-fun mapNonEmpty!29779 () Bool)

(declare-fun tp!57141 () Bool)

(declare-fun e!507962 () Bool)

(assert (=> mapNonEmpty!29779 (= mapRes!29779 (and tp!57141 e!507962))))

(declare-fun mapValue!29779 () ValueCell!8874)

(declare-fun mapRest!29779 () (Array (_ BitVec 32) ValueCell!8874))

(declare-fun mapKey!29779 () (_ BitVec 32))

(assert (=> mapNonEmpty!29779 (= (arr!25681 _values!1152) (store mapRest!29779 mapKey!29779 mapValue!29779))))

(declare-fun b!906372 () Bool)

(declare-fun e!507961 () Bool)

(declare-fun e!507958 () Bool)

(assert (=> b!906372 (= e!507961 (not e!507958))))

(declare-fun res!611798 () Bool)

(assert (=> b!906372 (=> res!611798 e!507958)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906372 (= res!611798 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26140 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408895 () V!29913)

(declare-fun get!13517 (ValueCell!8874 V!29913) V!29913)

(declare-fun dynLambda!1353 (Int (_ BitVec 64)) V!29913)

(assert (=> b!906372 (= lt!408895 (get!13517 (select (arr!25681 _values!1152) i!717) (dynLambda!1353 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906372 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!29913)

(declare-fun minValue!1094 () V!29913)

(declare-datatypes ((Unit!30733 0))(
  ( (Unit!30734) )
))
(declare-fun lt!408893 () Unit!30733)

(declare-fun lemmaKeyInListMapIsInArray!226 (array!53450 array!53452 (_ BitVec 32) (_ BitVec 32) V!29913 V!29913 (_ BitVec 64) Int) Unit!30733)

(assert (=> b!906372 (= lt!408893 (lemmaKeyInListMapIsInArray!226 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906373 () Bool)

(declare-fun res!611797 () Bool)

(assert (=> b!906373 (=> (not res!611797) (not e!507961))))

(assert (=> b!906373 (= res!611797 (and (= (select (arr!25680 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906374 () Bool)

(declare-fun e!507965 () Bool)

(assert (=> b!906374 (= e!507958 e!507965)))

(declare-fun res!611801 () Bool)

(assert (=> b!906374 (=> res!611801 e!507965)))

(declare-datatypes ((tuple2!12264 0))(
  ( (tuple2!12265 (_1!6142 (_ BitVec 64)) (_2!6142 V!29913)) )
))
(declare-datatypes ((List!18128 0))(
  ( (Nil!18125) (Cons!18124 (h!19270 tuple2!12264) (t!25601 List!18128)) )
))
(declare-datatypes ((ListLongMap!10975 0))(
  ( (ListLongMap!10976 (toList!5503 List!18128)) )
))
(declare-fun lt!408892 () ListLongMap!10975)

(declare-fun contains!4513 (ListLongMap!10975 (_ BitVec 64)) Bool)

(assert (=> b!906374 (= res!611801 (not (contains!4513 lt!408892 k0!1033)))))

(declare-fun getCurrentListMap!2737 (array!53450 array!53452 (_ BitVec 32) (_ BitVec 32) V!29913 V!29913 (_ BitVec 32) Int) ListLongMap!10975)

(assert (=> b!906374 (= lt!408892 (getCurrentListMap!2737 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906375 () Bool)

(assert (=> b!906375 (= e!507962 tp_is_empty!18711)))

(declare-fun b!906376 () Bool)

(declare-fun res!611796 () Bool)

(assert (=> b!906376 (=> (not res!611796) (not e!507961))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906376 (= res!611796 (inRange!0 i!717 mask!1756))))

(declare-fun b!906377 () Bool)

(assert (=> b!906377 (= e!507964 e!507961)))

(declare-fun res!611802 () Bool)

(assert (=> b!906377 (=> (not res!611802) (not e!507961))))

(declare-fun lt!408894 () ListLongMap!10975)

(assert (=> b!906377 (= res!611802 (contains!4513 lt!408894 k0!1033))))

(assert (=> b!906377 (= lt!408894 (getCurrentListMap!2737 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906378 () Bool)

(assert (=> b!906378 (= e!507965 true)))

(declare-fun apply!480 (ListLongMap!10975 (_ BitVec 64)) V!29913)

(assert (=> b!906378 (= (apply!480 lt!408894 k0!1033) lt!408895)))

(declare-fun lt!408896 () Unit!30733)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!29 (array!53450 array!53452 (_ BitVec 32) (_ BitVec 32) V!29913 V!29913 (_ BitVec 64) V!29913 (_ BitVec 32) Int) Unit!30733)

(assert (=> b!906378 (= lt!408896 (lemmaListMapApplyFromThenApplyFromZero!29 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408895 i!717 defaultEntry!1160))))

(declare-fun b!906379 () Bool)

(declare-fun res!611793 () Bool)

(assert (=> b!906379 (=> res!611793 e!507965)))

(assert (=> b!906379 (= res!611793 (not (= (apply!480 lt!408892 k0!1033) lt!408895)))))

(assert (= (and start!77736 res!611800) b!906370))

(assert (= (and b!906370 res!611799) b!906369))

(assert (= (and b!906369 res!611794) b!906368))

(assert (= (and b!906368 res!611795) b!906377))

(assert (= (and b!906377 res!611802) b!906376))

(assert (= (and b!906376 res!611796) b!906373))

(assert (= (and b!906373 res!611797) b!906372))

(assert (= (and b!906372 (not res!611798)) b!906374))

(assert (= (and b!906374 (not res!611801)) b!906379))

(assert (= (and b!906379 (not res!611793)) b!906378))

(assert (= (and b!906371 condMapEmpty!29779) mapIsEmpty!29779))

(assert (= (and b!906371 (not condMapEmpty!29779)) mapNonEmpty!29779))

(get-info :version)

(assert (= (and mapNonEmpty!29779 ((_ is ValueCellFull!8874) mapValue!29779)) b!906375))

(assert (= (and b!906371 ((_ is ValueCellFull!8874) mapDefault!29779)) b!906367))

(assert (= start!77736 b!906371))

(declare-fun b_lambda!13197 () Bool)

(assert (=> (not b_lambda!13197) (not b!906372)))

(declare-fun t!25599 () Bool)

(declare-fun tb!5323 () Bool)

(assert (=> (and start!77736 (= defaultEntry!1160 defaultEntry!1160) t!25599) tb!5323))

(declare-fun result!10433 () Bool)

(assert (=> tb!5323 (= result!10433 tp_is_empty!18711)))

(assert (=> b!906372 t!25599))

(declare-fun b_and!26759 () Bool)

(assert (= b_and!26757 (and (=> t!25599 result!10433) b_and!26759)))

(declare-fun m!841851 () Bool)

(assert (=> b!906378 m!841851))

(declare-fun m!841853 () Bool)

(assert (=> b!906378 m!841853))

(declare-fun m!841855 () Bool)

(assert (=> b!906374 m!841855))

(declare-fun m!841857 () Bool)

(assert (=> b!906374 m!841857))

(declare-fun m!841859 () Bool)

(assert (=> b!906377 m!841859))

(declare-fun m!841861 () Bool)

(assert (=> b!906377 m!841861))

(declare-fun m!841863 () Bool)

(assert (=> b!906373 m!841863))

(declare-fun m!841865 () Bool)

(assert (=> b!906379 m!841865))

(declare-fun m!841867 () Bool)

(assert (=> b!906369 m!841867))

(declare-fun m!841869 () Bool)

(assert (=> b!906368 m!841869))

(declare-fun m!841871 () Bool)

(assert (=> start!77736 m!841871))

(declare-fun m!841873 () Bool)

(assert (=> start!77736 m!841873))

(declare-fun m!841875 () Bool)

(assert (=> start!77736 m!841875))

(declare-fun m!841877 () Bool)

(assert (=> mapNonEmpty!29779 m!841877))

(declare-fun m!841879 () Bool)

(assert (=> b!906372 m!841879))

(declare-fun m!841881 () Bool)

(assert (=> b!906372 m!841881))

(declare-fun m!841883 () Bool)

(assert (=> b!906372 m!841883))

(declare-fun m!841885 () Bool)

(assert (=> b!906372 m!841885))

(assert (=> b!906372 m!841879))

(assert (=> b!906372 m!841883))

(declare-fun m!841887 () Bool)

(assert (=> b!906372 m!841887))

(declare-fun m!841889 () Bool)

(assert (=> b!906376 m!841889))

(check-sat b_and!26759 tp_is_empty!18711 (not b_next!16293) (not b!906378) (not b!906369) (not b_lambda!13197) (not b!906379) (not b!906372) (not b!906377) (not b!906374) (not mapNonEmpty!29779) (not b!906376) (not start!77736) (not b!906368))
(check-sat b_and!26759 (not b_next!16293))
