; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77658 () Bool)

(assert start!77658)

(declare-fun b_free!16215 () Bool)

(declare-fun b_next!16215 () Bool)

(assert (=> start!77658 (= b_free!16215 (not b_next!16215))))

(declare-fun tp!56908 () Bool)

(declare-fun b_and!26601 () Bool)

(assert (=> start!77658 (= tp!56908 b_and!26601)))

(declare-fun b!904768 () Bool)

(declare-fun res!610631 () Bool)

(declare-fun e!507029 () Bool)

(assert (=> b!904768 (=> (not res!610631) (not e!507029))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904768 (= res!610631 (inRange!0 i!717 mask!1756))))

(declare-fun b!904769 () Bool)

(declare-fun e!507025 () Bool)

(assert (=> b!904769 (= e!507025 true)))

(declare-datatypes ((V!29809 0))(
  ( (V!29810 (val!9367 Int)) )
))
(declare-datatypes ((tuple2!12196 0))(
  ( (tuple2!12197 (_1!6108 (_ BitVec 64)) (_2!6108 V!29809)) )
))
(declare-datatypes ((List!18067 0))(
  ( (Nil!18064) (Cons!18063 (h!19209 tuple2!12196) (t!25462 List!18067)) )
))
(declare-datatypes ((ListLongMap!10907 0))(
  ( (ListLongMap!10908 (toList!5469 List!18067)) )
))
(declare-fun lt!408309 () ListLongMap!10907)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!408311 () V!29809)

(declare-fun apply!447 (ListLongMap!10907 (_ BitVec 64)) V!29809)

(assert (=> b!904769 (= (apply!447 lt!408309 k0!1033) lt!408311)))

(declare-datatypes ((ValueCell!8835 0))(
  ( (ValueCellFull!8835 (v!11872 V!29809)) (EmptyCell!8835) )
))
(declare-datatypes ((array!53296 0))(
  ( (array!53297 (arr!25603 (Array (_ BitVec 32) ValueCell!8835)) (size!26063 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53296)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29809)

(declare-datatypes ((array!53298 0))(
  ( (array!53299 (arr!25604 (Array (_ BitVec 32) (_ BitVec 64))) (size!26064 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53298)

(declare-datatypes ((Unit!30667 0))(
  ( (Unit!30668) )
))
(declare-fun lt!408307 () Unit!30667)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29809)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!2 (array!53298 array!53296 (_ BitVec 32) (_ BitVec 32) V!29809 V!29809 (_ BitVec 64) V!29809 (_ BitVec 32) Int) Unit!30667)

(assert (=> b!904769 (= lt!408307 (lemmaListMapApplyFromThenApplyFromZero!2 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408311 i!717 defaultEntry!1160))))

(declare-fun b!904770 () Bool)

(declare-fun e!507024 () Bool)

(assert (=> b!904770 (= e!507029 (not e!507024))))

(declare-fun res!610624 () Bool)

(assert (=> b!904770 (=> res!610624 e!507024)))

(assert (=> b!904770 (= res!610624 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26064 _keys!1386))))))

(declare-fun get!13461 (ValueCell!8835 V!29809) V!29809)

(declare-fun dynLambda!1323 (Int (_ BitVec 64)) V!29809)

(assert (=> b!904770 (= lt!408311 (get!13461 (select (arr!25603 _values!1152) i!717) (dynLambda!1323 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904770 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408310 () Unit!30667)

(declare-fun lemmaKeyInListMapIsInArray!196 (array!53298 array!53296 (_ BitVec 32) (_ BitVec 32) V!29809 V!29809 (_ BitVec 64) Int) Unit!30667)

(assert (=> b!904770 (= lt!408310 (lemmaKeyInListMapIsInArray!196 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29662 () Bool)

(declare-fun mapRes!29662 () Bool)

(assert (=> mapIsEmpty!29662 mapRes!29662))

(declare-fun b!904771 () Bool)

(assert (=> b!904771 (= e!507024 e!507025)))

(declare-fun res!610632 () Bool)

(assert (=> b!904771 (=> res!610632 e!507025)))

(declare-fun lt!408308 () ListLongMap!10907)

(declare-fun contains!4482 (ListLongMap!10907 (_ BitVec 64)) Bool)

(assert (=> b!904771 (= res!610632 (not (contains!4482 lt!408308 k0!1033)))))

(declare-fun getCurrentListMap!2706 (array!53298 array!53296 (_ BitVec 32) (_ BitVec 32) V!29809 V!29809 (_ BitVec 32) Int) ListLongMap!10907)

(assert (=> b!904771 (= lt!408308 (getCurrentListMap!2706 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904772 () Bool)

(declare-fun res!610626 () Bool)

(declare-fun e!507028 () Bool)

(assert (=> b!904772 (=> (not res!610626) (not e!507028))))

(declare-datatypes ((List!18068 0))(
  ( (Nil!18065) (Cons!18064 (h!19210 (_ BitVec 64)) (t!25463 List!18068)) )
))
(declare-fun arrayNoDuplicates!0 (array!53298 (_ BitVec 32) List!18068) Bool)

(assert (=> b!904772 (= res!610626 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18065))))

(declare-fun b!904773 () Bool)

(declare-fun res!610623 () Bool)

(assert (=> b!904773 (=> (not res!610623) (not e!507028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53298 (_ BitVec 32)) Bool)

(assert (=> b!904773 (= res!610623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904774 () Bool)

(assert (=> b!904774 (= e!507028 e!507029)))

(declare-fun res!610625 () Bool)

(assert (=> b!904774 (=> (not res!610625) (not e!507029))))

(assert (=> b!904774 (= res!610625 (contains!4482 lt!408309 k0!1033))))

(assert (=> b!904774 (= lt!408309 (getCurrentListMap!2706 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!904775 () Bool)

(declare-fun res!610630 () Bool)

(assert (=> b!904775 (=> (not res!610630) (not e!507028))))

(assert (=> b!904775 (= res!610630 (and (= (size!26063 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26064 _keys!1386) (size!26063 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29662 () Bool)

(declare-fun tp!56907 () Bool)

(declare-fun e!507026 () Bool)

(assert (=> mapNonEmpty!29662 (= mapRes!29662 (and tp!56907 e!507026))))

(declare-fun mapRest!29662 () (Array (_ BitVec 32) ValueCell!8835))

(declare-fun mapKey!29662 () (_ BitVec 32))

(declare-fun mapValue!29662 () ValueCell!8835)

(assert (=> mapNonEmpty!29662 (= (arr!25603 _values!1152) (store mapRest!29662 mapKey!29662 mapValue!29662))))

(declare-fun b!904776 () Bool)

(declare-fun e!507027 () Bool)

(declare-fun e!507022 () Bool)

(assert (=> b!904776 (= e!507027 (and e!507022 mapRes!29662))))

(declare-fun condMapEmpty!29662 () Bool)

(declare-fun mapDefault!29662 () ValueCell!8835)

(assert (=> b!904776 (= condMapEmpty!29662 (= (arr!25603 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8835)) mapDefault!29662)))))

(declare-fun b!904777 () Bool)

(declare-fun tp_is_empty!18633 () Bool)

(assert (=> b!904777 (= e!507022 tp_is_empty!18633)))

(declare-fun b!904778 () Bool)

(declare-fun res!610629 () Bool)

(assert (=> b!904778 (=> (not res!610629) (not e!507029))))

(assert (=> b!904778 (= res!610629 (and (= (select (arr!25604 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904779 () Bool)

(assert (=> b!904779 (= e!507026 tp_is_empty!18633)))

(declare-fun res!610627 () Bool)

(assert (=> start!77658 (=> (not res!610627) (not e!507028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77658 (= res!610627 (validMask!0 mask!1756))))

(assert (=> start!77658 e!507028))

(declare-fun array_inv!20038 (array!53296) Bool)

(assert (=> start!77658 (and (array_inv!20038 _values!1152) e!507027)))

(assert (=> start!77658 tp!56908))

(assert (=> start!77658 true))

(assert (=> start!77658 tp_is_empty!18633))

(declare-fun array_inv!20039 (array!53298) Bool)

(assert (=> start!77658 (array_inv!20039 _keys!1386)))

(declare-fun b!904780 () Bool)

(declare-fun res!610628 () Bool)

(assert (=> b!904780 (=> res!610628 e!507025)))

(assert (=> b!904780 (= res!610628 (not (= (apply!447 lt!408308 k0!1033) lt!408311)))))

(assert (= (and start!77658 res!610627) b!904775))

(assert (= (and b!904775 res!610630) b!904773))

(assert (= (and b!904773 res!610623) b!904772))

(assert (= (and b!904772 res!610626) b!904774))

(assert (= (and b!904774 res!610625) b!904768))

(assert (= (and b!904768 res!610631) b!904778))

(assert (= (and b!904778 res!610629) b!904770))

(assert (= (and b!904770 (not res!610624)) b!904771))

(assert (= (and b!904771 (not res!610632)) b!904780))

(assert (= (and b!904780 (not res!610628)) b!904769))

(assert (= (and b!904776 condMapEmpty!29662) mapIsEmpty!29662))

(assert (= (and b!904776 (not condMapEmpty!29662)) mapNonEmpty!29662))

(get-info :version)

(assert (= (and mapNonEmpty!29662 ((_ is ValueCellFull!8835) mapValue!29662)) b!904779))

(assert (= (and b!904776 ((_ is ValueCellFull!8835) mapDefault!29662)) b!904777))

(assert (= start!77658 b!904776))

(declare-fun b_lambda!13119 () Bool)

(assert (=> (not b_lambda!13119) (not b!904770)))

(declare-fun t!25461 () Bool)

(declare-fun tb!5245 () Bool)

(assert (=> (and start!77658 (= defaultEntry!1160 defaultEntry!1160) t!25461) tb!5245))

(declare-fun result!10277 () Bool)

(assert (=> tb!5245 (= result!10277 tp_is_empty!18633)))

(assert (=> b!904770 t!25461))

(declare-fun b_and!26603 () Bool)

(assert (= b_and!26601 (and (=> t!25461 result!10277) b_and!26603)))

(declare-fun m!840291 () Bool)

(assert (=> b!904780 m!840291))

(declare-fun m!840293 () Bool)

(assert (=> b!904770 m!840293))

(declare-fun m!840295 () Bool)

(assert (=> b!904770 m!840295))

(declare-fun m!840297 () Bool)

(assert (=> b!904770 m!840297))

(declare-fun m!840299 () Bool)

(assert (=> b!904770 m!840299))

(assert (=> b!904770 m!840293))

(assert (=> b!904770 m!840297))

(declare-fun m!840301 () Bool)

(assert (=> b!904770 m!840301))

(declare-fun m!840303 () Bool)

(assert (=> b!904772 m!840303))

(declare-fun m!840305 () Bool)

(assert (=> b!904768 m!840305))

(declare-fun m!840307 () Bool)

(assert (=> mapNonEmpty!29662 m!840307))

(declare-fun m!840309 () Bool)

(assert (=> b!904773 m!840309))

(declare-fun m!840311 () Bool)

(assert (=> b!904778 m!840311))

(declare-fun m!840313 () Bool)

(assert (=> b!904771 m!840313))

(declare-fun m!840315 () Bool)

(assert (=> b!904771 m!840315))

(declare-fun m!840317 () Bool)

(assert (=> b!904769 m!840317))

(declare-fun m!840319 () Bool)

(assert (=> b!904769 m!840319))

(declare-fun m!840321 () Bool)

(assert (=> start!77658 m!840321))

(declare-fun m!840323 () Bool)

(assert (=> start!77658 m!840323))

(declare-fun m!840325 () Bool)

(assert (=> start!77658 m!840325))

(declare-fun m!840327 () Bool)

(assert (=> b!904774 m!840327))

(declare-fun m!840329 () Bool)

(assert (=> b!904774 m!840329))

(check-sat tp_is_empty!18633 (not b!904770) (not b!904769) (not start!77658) (not b!904771) (not b!904768) (not b!904773) (not mapNonEmpty!29662) (not b!904774) (not b_lambda!13119) b_and!26603 (not b_next!16215) (not b!904772) (not b!904780))
(check-sat b_and!26603 (not b_next!16215))
