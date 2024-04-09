; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77664 () Bool)

(assert start!77664)

(declare-fun b_free!16221 () Bool)

(declare-fun b_next!16221 () Bool)

(assert (=> start!77664 (= b_free!16221 (not b_next!16221))))

(declare-fun tp!56925 () Bool)

(declare-fun b_and!26613 () Bool)

(assert (=> start!77664 (= tp!56925 b_and!26613)))

(declare-fun b!904891 () Bool)

(declare-fun res!610715 () Bool)

(declare-fun e!507098 () Bool)

(assert (=> b!904891 (=> (not res!610715) (not e!507098))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53308 0))(
  ( (array!53309 (arr!25609 (Array (_ BitVec 32) (_ BitVec 64))) (size!26069 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53308)

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!904891 (= res!610715 (and (= (select (arr!25609 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904892 () Bool)

(declare-fun res!610720 () Bool)

(assert (=> b!904892 (=> (not res!610720) (not e!507098))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904892 (= res!610720 (inRange!0 i!717 mask!1756))))

(declare-fun b!904893 () Bool)

(declare-fun e!507095 () Bool)

(declare-fun tp_is_empty!18639 () Bool)

(assert (=> b!904893 (= e!507095 tp_is_empty!18639)))

(declare-fun b!904894 () Bool)

(declare-fun e!507097 () Bool)

(assert (=> b!904894 (= e!507097 e!507098)))

(declare-fun res!610717 () Bool)

(assert (=> b!904894 (=> (not res!610717) (not e!507098))))

(declare-datatypes ((V!29817 0))(
  ( (V!29818 (val!9370 Int)) )
))
(declare-datatypes ((tuple2!12202 0))(
  ( (tuple2!12203 (_1!6111 (_ BitVec 64)) (_2!6111 V!29817)) )
))
(declare-datatypes ((List!18072 0))(
  ( (Nil!18069) (Cons!18068 (h!19214 tuple2!12202) (t!25473 List!18072)) )
))
(declare-datatypes ((ListLongMap!10913 0))(
  ( (ListLongMap!10914 (toList!5472 List!18072)) )
))
(declare-fun lt!408355 () ListLongMap!10913)

(declare-fun contains!4485 (ListLongMap!10913 (_ BitVec 64)) Bool)

(assert (=> b!904894 (= res!610717 (contains!4485 lt!408355 k0!1033))))

(declare-datatypes ((ValueCell!8838 0))(
  ( (ValueCellFull!8838 (v!11875 V!29817)) (EmptyCell!8838) )
))
(declare-datatypes ((array!53310 0))(
  ( (array!53311 (arr!25610 (Array (_ BitVec 32) ValueCell!8838)) (size!26070 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53310)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29817)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29817)

(declare-fun getCurrentListMap!2709 (array!53308 array!53310 (_ BitVec 32) (_ BitVec 32) V!29817 V!29817 (_ BitVec 32) Int) ListLongMap!10913)

(assert (=> b!904894 (= lt!408355 (getCurrentListMap!2709 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!904895 () Bool)

(declare-fun res!610713 () Bool)

(declare-fun e!507099 () Bool)

(assert (=> b!904895 (=> res!610713 e!507099)))

(declare-fun lt!408356 () ListLongMap!10913)

(declare-fun lt!408353 () V!29817)

(declare-fun apply!450 (ListLongMap!10913 (_ BitVec 64)) V!29817)

(assert (=> b!904895 (= res!610713 (not (= (apply!450 lt!408356 k0!1033) lt!408353)))))

(declare-fun b!904897 () Bool)

(assert (=> b!904897 (= e!507099 true)))

(assert (=> b!904897 (= (apply!450 lt!408355 k0!1033) lt!408353)))

(declare-datatypes ((Unit!30673 0))(
  ( (Unit!30674) )
))
(declare-fun lt!408352 () Unit!30673)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!4 (array!53308 array!53310 (_ BitVec 32) (_ BitVec 32) V!29817 V!29817 (_ BitVec 64) V!29817 (_ BitVec 32) Int) Unit!30673)

(assert (=> b!904897 (= lt!408352 (lemmaListMapApplyFromThenApplyFromZero!4 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408353 i!717 defaultEntry!1160))))

(declare-fun b!904898 () Bool)

(declare-fun res!610719 () Bool)

(assert (=> b!904898 (=> (not res!610719) (not e!507097))))

(assert (=> b!904898 (= res!610719 (and (= (size!26070 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26069 _keys!1386) (size!26070 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904899 () Bool)

(declare-fun res!610714 () Bool)

(assert (=> b!904899 (=> (not res!610714) (not e!507097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53308 (_ BitVec 32)) Bool)

(assert (=> b!904899 (= res!610714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904900 () Bool)

(declare-fun e!507096 () Bool)

(assert (=> b!904900 (= e!507096 e!507099)))

(declare-fun res!610718 () Bool)

(assert (=> b!904900 (=> res!610718 e!507099)))

(assert (=> b!904900 (= res!610718 (not (contains!4485 lt!408356 k0!1033)))))

(assert (=> b!904900 (= lt!408356 (getCurrentListMap!2709 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904901 () Bool)

(declare-fun e!507101 () Bool)

(declare-fun e!507100 () Bool)

(declare-fun mapRes!29671 () Bool)

(assert (=> b!904901 (= e!507101 (and e!507100 mapRes!29671))))

(declare-fun condMapEmpty!29671 () Bool)

(declare-fun mapDefault!29671 () ValueCell!8838)

(assert (=> b!904901 (= condMapEmpty!29671 (= (arr!25610 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8838)) mapDefault!29671)))))

(declare-fun b!904902 () Bool)

(assert (=> b!904902 (= e!507098 (not e!507096))))

(declare-fun res!610721 () Bool)

(assert (=> b!904902 (=> res!610721 e!507096)))

(assert (=> b!904902 (= res!610721 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26069 _keys!1386))))))

(declare-fun get!13466 (ValueCell!8838 V!29817) V!29817)

(declare-fun dynLambda!1326 (Int (_ BitVec 64)) V!29817)

(assert (=> b!904902 (= lt!408353 (get!13466 (select (arr!25610 _values!1152) i!717) (dynLambda!1326 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904902 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408354 () Unit!30673)

(declare-fun lemmaKeyInListMapIsInArray!199 (array!53308 array!53310 (_ BitVec 32) (_ BitVec 32) V!29817 V!29817 (_ BitVec 64) Int) Unit!30673)

(assert (=> b!904902 (= lt!408354 (lemmaKeyInListMapIsInArray!199 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904903 () Bool)

(assert (=> b!904903 (= e!507100 tp_is_empty!18639)))

(declare-fun mapNonEmpty!29671 () Bool)

(declare-fun tp!56926 () Bool)

(assert (=> mapNonEmpty!29671 (= mapRes!29671 (and tp!56926 e!507095))))

(declare-fun mapValue!29671 () ValueCell!8838)

(declare-fun mapRest!29671 () (Array (_ BitVec 32) ValueCell!8838))

(declare-fun mapKey!29671 () (_ BitVec 32))

(assert (=> mapNonEmpty!29671 (= (arr!25610 _values!1152) (store mapRest!29671 mapKey!29671 mapValue!29671))))

(declare-fun mapIsEmpty!29671 () Bool)

(assert (=> mapIsEmpty!29671 mapRes!29671))

(declare-fun res!610716 () Bool)

(assert (=> start!77664 (=> (not res!610716) (not e!507097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77664 (= res!610716 (validMask!0 mask!1756))))

(assert (=> start!77664 e!507097))

(declare-fun array_inv!20044 (array!53310) Bool)

(assert (=> start!77664 (and (array_inv!20044 _values!1152) e!507101)))

(assert (=> start!77664 tp!56925))

(assert (=> start!77664 true))

(assert (=> start!77664 tp_is_empty!18639))

(declare-fun array_inv!20045 (array!53308) Bool)

(assert (=> start!77664 (array_inv!20045 _keys!1386)))

(declare-fun b!904896 () Bool)

(declare-fun res!610722 () Bool)

(assert (=> b!904896 (=> (not res!610722) (not e!507097))))

(declare-datatypes ((List!18073 0))(
  ( (Nil!18070) (Cons!18069 (h!19215 (_ BitVec 64)) (t!25474 List!18073)) )
))
(declare-fun arrayNoDuplicates!0 (array!53308 (_ BitVec 32) List!18073) Bool)

(assert (=> b!904896 (= res!610722 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18070))))

(assert (= (and start!77664 res!610716) b!904898))

(assert (= (and b!904898 res!610719) b!904899))

(assert (= (and b!904899 res!610714) b!904896))

(assert (= (and b!904896 res!610722) b!904894))

(assert (= (and b!904894 res!610717) b!904892))

(assert (= (and b!904892 res!610720) b!904891))

(assert (= (and b!904891 res!610715) b!904902))

(assert (= (and b!904902 (not res!610721)) b!904900))

(assert (= (and b!904900 (not res!610718)) b!904895))

(assert (= (and b!904895 (not res!610713)) b!904897))

(assert (= (and b!904901 condMapEmpty!29671) mapIsEmpty!29671))

(assert (= (and b!904901 (not condMapEmpty!29671)) mapNonEmpty!29671))

(get-info :version)

(assert (= (and mapNonEmpty!29671 ((_ is ValueCellFull!8838) mapValue!29671)) b!904893))

(assert (= (and b!904901 ((_ is ValueCellFull!8838) mapDefault!29671)) b!904903))

(assert (= start!77664 b!904901))

(declare-fun b_lambda!13125 () Bool)

(assert (=> (not b_lambda!13125) (not b!904902)))

(declare-fun t!25472 () Bool)

(declare-fun tb!5251 () Bool)

(assert (=> (and start!77664 (= defaultEntry!1160 defaultEntry!1160) t!25472) tb!5251))

(declare-fun result!10289 () Bool)

(assert (=> tb!5251 (= result!10289 tp_is_empty!18639)))

(assert (=> b!904902 t!25472))

(declare-fun b_and!26615 () Bool)

(assert (= b_and!26613 (and (=> t!25472 result!10289) b_and!26615)))

(declare-fun m!840411 () Bool)

(assert (=> start!77664 m!840411))

(declare-fun m!840413 () Bool)

(assert (=> start!77664 m!840413))

(declare-fun m!840415 () Bool)

(assert (=> start!77664 m!840415))

(declare-fun m!840417 () Bool)

(assert (=> b!904891 m!840417))

(declare-fun m!840419 () Bool)

(assert (=> b!904896 m!840419))

(declare-fun m!840421 () Bool)

(assert (=> mapNonEmpty!29671 m!840421))

(declare-fun m!840423 () Bool)

(assert (=> b!904899 m!840423))

(declare-fun m!840425 () Bool)

(assert (=> b!904894 m!840425))

(declare-fun m!840427 () Bool)

(assert (=> b!904894 m!840427))

(declare-fun m!840429 () Bool)

(assert (=> b!904892 m!840429))

(declare-fun m!840431 () Bool)

(assert (=> b!904897 m!840431))

(declare-fun m!840433 () Bool)

(assert (=> b!904897 m!840433))

(declare-fun m!840435 () Bool)

(assert (=> b!904902 m!840435))

(declare-fun m!840437 () Bool)

(assert (=> b!904902 m!840437))

(declare-fun m!840439 () Bool)

(assert (=> b!904902 m!840439))

(declare-fun m!840441 () Bool)

(assert (=> b!904902 m!840441))

(assert (=> b!904902 m!840435))

(assert (=> b!904902 m!840439))

(declare-fun m!840443 () Bool)

(assert (=> b!904902 m!840443))

(declare-fun m!840445 () Bool)

(assert (=> b!904900 m!840445))

(declare-fun m!840447 () Bool)

(assert (=> b!904900 m!840447))

(declare-fun m!840449 () Bool)

(assert (=> b!904895 m!840449))

(check-sat (not b!904896) tp_is_empty!18639 (not b!904899) (not b!904897) (not b_lambda!13125) (not b!904894) (not b!904892) (not b!904902) (not mapNonEmpty!29671) (not b!904895) (not start!77664) b_and!26615 (not b!904900) (not b_next!16221))
(check-sat b_and!26615 (not b_next!16221))
