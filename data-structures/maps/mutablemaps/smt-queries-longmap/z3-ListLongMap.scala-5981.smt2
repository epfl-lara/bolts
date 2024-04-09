; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77742 () Bool)

(assert start!77742)

(declare-fun b_free!16299 () Bool)

(declare-fun b_next!16299 () Bool)

(assert (=> start!77742 (= b_free!16299 (not b_next!16299))))

(declare-fun tp!57160 () Bool)

(declare-fun b_and!26769 () Bool)

(assert (=> start!77742 (= tp!57160 b_and!26769)))

(declare-fun b!906490 () Bool)

(declare-fun e!508030 () Bool)

(declare-fun e!508034 () Bool)

(declare-fun mapRes!29788 () Bool)

(assert (=> b!906490 (= e!508030 (and e!508034 mapRes!29788))))

(declare-fun condMapEmpty!29788 () Bool)

(declare-datatypes ((V!29921 0))(
  ( (V!29922 (val!9409 Int)) )
))
(declare-datatypes ((ValueCell!8877 0))(
  ( (ValueCellFull!8877 (v!11914 V!29921)) (EmptyCell!8877) )
))
(declare-datatypes ((array!53460 0))(
  ( (array!53461 (arr!25685 (Array (_ BitVec 32) ValueCell!8877)) (size!26145 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53460)

(declare-fun mapDefault!29788 () ValueCell!8877)

(assert (=> b!906490 (= condMapEmpty!29788 (= (arr!25685 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8877)) mapDefault!29788)))))

(declare-fun b!906491 () Bool)

(declare-fun e!508035 () Bool)

(declare-fun tp_is_empty!18717 () Bool)

(assert (=> b!906491 (= e!508035 tp_is_empty!18717)))

(declare-fun b!906492 () Bool)

(declare-fun e!508032 () Bool)

(assert (=> b!906492 (= e!508032 true)))

(declare-datatypes ((tuple2!12268 0))(
  ( (tuple2!12269 (_1!6144 (_ BitVec 64)) (_2!6144 V!29921)) )
))
(declare-datatypes ((List!18130 0))(
  ( (Nil!18127) (Cons!18126 (h!19272 tuple2!12268) (t!25609 List!18130)) )
))
(declare-datatypes ((ListLongMap!10979 0))(
  ( (ListLongMap!10980 (toList!5505 List!18130)) )
))
(declare-fun lt!408941 () ListLongMap!10979)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!408939 () V!29921)

(declare-fun apply!481 (ListLongMap!10979 (_ BitVec 64)) V!29921)

(assert (=> b!906492 (= (apply!481 lt!408941 k0!1033) lt!408939)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29921)

(declare-datatypes ((array!53462 0))(
  ( (array!53463 (arr!25686 (Array (_ BitVec 32) (_ BitVec 64))) (size!26146 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53462)

(declare-datatypes ((Unit!30737 0))(
  ( (Unit!30738) )
))
(declare-fun lt!408940 () Unit!30737)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29921)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!30 (array!53462 array!53460 (_ BitVec 32) (_ BitVec 32) V!29921 V!29921 (_ BitVec 64) V!29921 (_ BitVec 32) Int) Unit!30737)

(assert (=> b!906492 (= lt!408940 (lemmaListMapApplyFromThenApplyFromZero!30 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408939 i!717 defaultEntry!1160))))

(declare-fun b!906494 () Bool)

(declare-fun e!508033 () Bool)

(assert (=> b!906494 (= e!508033 e!508032)))

(declare-fun res!611886 () Bool)

(assert (=> b!906494 (=> res!611886 e!508032)))

(declare-fun lt!408937 () ListLongMap!10979)

(declare-fun contains!4515 (ListLongMap!10979 (_ BitVec 64)) Bool)

(assert (=> b!906494 (= res!611886 (not (contains!4515 lt!408937 k0!1033)))))

(declare-fun getCurrentListMap!2739 (array!53462 array!53460 (_ BitVec 32) (_ BitVec 32) V!29921 V!29921 (_ BitVec 32) Int) ListLongMap!10979)

(assert (=> b!906494 (= lt!408937 (getCurrentListMap!2739 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906495 () Bool)

(declare-fun e!508037 () Bool)

(assert (=> b!906495 (= e!508037 (not e!508033))))

(declare-fun res!611891 () Bool)

(assert (=> b!906495 (=> res!611891 e!508033)))

(assert (=> b!906495 (= res!611891 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26146 _keys!1386))))))

(declare-fun get!13521 (ValueCell!8877 V!29921) V!29921)

(declare-fun dynLambda!1355 (Int (_ BitVec 64)) V!29921)

(assert (=> b!906495 (= lt!408939 (get!13521 (select (arr!25685 _values!1152) i!717) (dynLambda!1355 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906495 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408938 () Unit!30737)

(declare-fun lemmaKeyInListMapIsInArray!228 (array!53462 array!53460 (_ BitVec 32) (_ BitVec 32) V!29921 V!29921 (_ BitVec 64) Int) Unit!30737)

(assert (=> b!906495 (= lt!408938 (lemmaKeyInListMapIsInArray!228 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906496 () Bool)

(declare-fun res!611888 () Bool)

(assert (=> b!906496 (=> res!611888 e!508032)))

(assert (=> b!906496 (= res!611888 (not (= (apply!481 lt!408937 k0!1033) lt!408939)))))

(declare-fun b!906497 () Bool)

(declare-fun res!611887 () Bool)

(declare-fun e!508036 () Bool)

(assert (=> b!906497 (=> (not res!611887) (not e!508036))))

(declare-datatypes ((List!18131 0))(
  ( (Nil!18128) (Cons!18127 (h!19273 (_ BitVec 64)) (t!25610 List!18131)) )
))
(declare-fun arrayNoDuplicates!0 (array!53462 (_ BitVec 32) List!18131) Bool)

(assert (=> b!906497 (= res!611887 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18128))))

(declare-fun b!906498 () Bool)

(declare-fun res!611883 () Bool)

(assert (=> b!906498 (=> (not res!611883) (not e!508037))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906498 (= res!611883 (inRange!0 i!717 mask!1756))))

(declare-fun b!906493 () Bool)

(declare-fun res!611890 () Bool)

(assert (=> b!906493 (=> (not res!611890) (not e!508036))))

(assert (=> b!906493 (= res!611890 (and (= (size!26145 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26146 _keys!1386) (size!26145 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!611885 () Bool)

(assert (=> start!77742 (=> (not res!611885) (not e!508036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77742 (= res!611885 (validMask!0 mask!1756))))

(assert (=> start!77742 e!508036))

(declare-fun array_inv!20092 (array!53460) Bool)

(assert (=> start!77742 (and (array_inv!20092 _values!1152) e!508030)))

(assert (=> start!77742 tp!57160))

(assert (=> start!77742 true))

(assert (=> start!77742 tp_is_empty!18717))

(declare-fun array_inv!20093 (array!53462) Bool)

(assert (=> start!77742 (array_inv!20093 _keys!1386)))

(declare-fun b!906499 () Bool)

(declare-fun res!611889 () Bool)

(assert (=> b!906499 (=> (not res!611889) (not e!508037))))

(assert (=> b!906499 (= res!611889 (and (= (select (arr!25686 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29788 () Bool)

(declare-fun tp!57159 () Bool)

(assert (=> mapNonEmpty!29788 (= mapRes!29788 (and tp!57159 e!508035))))

(declare-fun mapRest!29788 () (Array (_ BitVec 32) ValueCell!8877))

(declare-fun mapValue!29788 () ValueCell!8877)

(declare-fun mapKey!29788 () (_ BitVec 32))

(assert (=> mapNonEmpty!29788 (= (arr!25685 _values!1152) (store mapRest!29788 mapKey!29788 mapValue!29788))))

(declare-fun b!906500 () Bool)

(declare-fun res!611884 () Bool)

(assert (=> b!906500 (=> (not res!611884) (not e!508036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53462 (_ BitVec 32)) Bool)

(assert (=> b!906500 (= res!611884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29788 () Bool)

(assert (=> mapIsEmpty!29788 mapRes!29788))

(declare-fun b!906501 () Bool)

(assert (=> b!906501 (= e!508036 e!508037)))

(declare-fun res!611892 () Bool)

(assert (=> b!906501 (=> (not res!611892) (not e!508037))))

(assert (=> b!906501 (= res!611892 (contains!4515 lt!408941 k0!1033))))

(assert (=> b!906501 (= lt!408941 (getCurrentListMap!2739 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906502 () Bool)

(assert (=> b!906502 (= e!508034 tp_is_empty!18717)))

(assert (= (and start!77742 res!611885) b!906493))

(assert (= (and b!906493 res!611890) b!906500))

(assert (= (and b!906500 res!611884) b!906497))

(assert (= (and b!906497 res!611887) b!906501))

(assert (= (and b!906501 res!611892) b!906498))

(assert (= (and b!906498 res!611883) b!906499))

(assert (= (and b!906499 res!611889) b!906495))

(assert (= (and b!906495 (not res!611891)) b!906494))

(assert (= (and b!906494 (not res!611886)) b!906496))

(assert (= (and b!906496 (not res!611888)) b!906492))

(assert (= (and b!906490 condMapEmpty!29788) mapIsEmpty!29788))

(assert (= (and b!906490 (not condMapEmpty!29788)) mapNonEmpty!29788))

(get-info :version)

(assert (= (and mapNonEmpty!29788 ((_ is ValueCellFull!8877) mapValue!29788)) b!906491))

(assert (= (and b!906490 ((_ is ValueCellFull!8877) mapDefault!29788)) b!906502))

(assert (= start!77742 b!906490))

(declare-fun b_lambda!13203 () Bool)

(assert (=> (not b_lambda!13203) (not b!906495)))

(declare-fun t!25608 () Bool)

(declare-fun tb!5329 () Bool)

(assert (=> (and start!77742 (= defaultEntry!1160 defaultEntry!1160) t!25608) tb!5329))

(declare-fun result!10445 () Bool)

(assert (=> tb!5329 (= result!10445 tp_is_empty!18717)))

(assert (=> b!906495 t!25608))

(declare-fun b_and!26771 () Bool)

(assert (= b_and!26769 (and (=> t!25608 result!10445) b_and!26771)))

(declare-fun m!841971 () Bool)

(assert (=> b!906496 m!841971))

(declare-fun m!841973 () Bool)

(assert (=> start!77742 m!841973))

(declare-fun m!841975 () Bool)

(assert (=> start!77742 m!841975))

(declare-fun m!841977 () Bool)

(assert (=> start!77742 m!841977))

(declare-fun m!841979 () Bool)

(assert (=> b!906500 m!841979))

(declare-fun m!841981 () Bool)

(assert (=> b!906497 m!841981))

(declare-fun m!841983 () Bool)

(assert (=> b!906495 m!841983))

(declare-fun m!841985 () Bool)

(assert (=> b!906495 m!841985))

(declare-fun m!841987 () Bool)

(assert (=> b!906495 m!841987))

(declare-fun m!841989 () Bool)

(assert (=> b!906495 m!841989))

(assert (=> b!906495 m!841983))

(assert (=> b!906495 m!841987))

(declare-fun m!841991 () Bool)

(assert (=> b!906495 m!841991))

(declare-fun m!841993 () Bool)

(assert (=> mapNonEmpty!29788 m!841993))

(declare-fun m!841995 () Bool)

(assert (=> b!906492 m!841995))

(declare-fun m!841997 () Bool)

(assert (=> b!906492 m!841997))

(declare-fun m!841999 () Bool)

(assert (=> b!906498 m!841999))

(declare-fun m!842001 () Bool)

(assert (=> b!906494 m!842001))

(declare-fun m!842003 () Bool)

(assert (=> b!906494 m!842003))

(declare-fun m!842005 () Bool)

(assert (=> b!906501 m!842005))

(declare-fun m!842007 () Bool)

(assert (=> b!906501 m!842007))

(declare-fun m!842009 () Bool)

(assert (=> b!906499 m!842009))

(check-sat (not b!906497) b_and!26771 (not b!906492) tp_is_empty!18717 (not b!906494) (not b_lambda!13203) (not b!906500) (not b!906501) (not b_next!16299) (not b!906498) (not b!906496) (not b!906495) (not start!77742) (not mapNonEmpty!29788))
(check-sat b_and!26771 (not b_next!16299))
