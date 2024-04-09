; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77784 () Bool)

(assert start!77784)

(declare-fun b_free!16341 () Bool)

(declare-fun b_next!16341 () Bool)

(assert (=> start!77784 (= b_free!16341 (not b_next!16341))))

(declare-fun tp!57286 () Bool)

(declare-fun b_and!26853 () Bool)

(assert (=> start!77784 (= tp!57286 b_and!26853)))

(declare-fun b!907351 () Bool)

(declare-fun e!508535 () Bool)

(declare-fun e!508538 () Bool)

(declare-fun mapRes!29851 () Bool)

(assert (=> b!907351 (= e!508535 (and e!508538 mapRes!29851))))

(declare-fun condMapEmpty!29851 () Bool)

(declare-datatypes ((V!29977 0))(
  ( (V!29978 (val!9430 Int)) )
))
(declare-datatypes ((ValueCell!8898 0))(
  ( (ValueCellFull!8898 (v!11935 V!29977)) (EmptyCell!8898) )
))
(declare-datatypes ((array!53544 0))(
  ( (array!53545 (arr!25727 (Array (_ BitVec 32) ValueCell!8898)) (size!26187 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53544)

(declare-fun mapDefault!29851 () ValueCell!8898)

(assert (=> b!907351 (= condMapEmpty!29851 (= (arr!25727 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8898)) mapDefault!29851)))))

(declare-fun mapIsEmpty!29851 () Bool)

(assert (=> mapIsEmpty!29851 mapRes!29851))

(declare-fun b!907352 () Bool)

(declare-fun res!612516 () Bool)

(declare-fun e!508541 () Bool)

(assert (=> b!907352 (=> (not res!612516) (not e!508541))))

(declare-datatypes ((array!53546 0))(
  ( (array!53547 (arr!25728 (Array (_ BitVec 32) (_ BitVec 64))) (size!26188 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53546)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53546 (_ BitVec 32)) Bool)

(assert (=> b!907352 (= res!612516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!612517 () Bool)

(assert (=> start!77784 (=> (not res!612517) (not e!508541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77784 (= res!612517 (validMask!0 mask!1756))))

(assert (=> start!77784 e!508541))

(declare-fun array_inv!20120 (array!53544) Bool)

(assert (=> start!77784 (and (array_inv!20120 _values!1152) e!508535)))

(assert (=> start!77784 tp!57286))

(assert (=> start!77784 true))

(declare-fun tp_is_empty!18759 () Bool)

(assert (=> start!77784 tp_is_empty!18759))

(declare-fun array_inv!20121 (array!53546) Bool)

(assert (=> start!77784 (array_inv!20121 _keys!1386)))

(declare-fun b!907353 () Bool)

(declare-fun e!508537 () Bool)

(assert (=> b!907353 (= e!508537 (bvslt #b00000000000000000000000000000000 (size!26188 _keys!1386)))))

(declare-datatypes ((tuple2!12304 0))(
  ( (tuple2!12305 (_1!6162 (_ BitVec 64)) (_2!6162 V!29977)) )
))
(declare-datatypes ((List!18164 0))(
  ( (Nil!18161) (Cons!18160 (h!19306 tuple2!12304) (t!25685 List!18164)) )
))
(declare-datatypes ((ListLongMap!11015 0))(
  ( (ListLongMap!11016 (toList!5523 List!18164)) )
))
(declare-fun lt!409252 () ListLongMap!11015)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!409256 () V!29977)

(declare-fun apply!499 (ListLongMap!11015 (_ BitVec 64)) V!29977)

(assert (=> b!907353 (= (apply!499 lt!409252 k0!1033) lt!409256)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29977)

(declare-datatypes ((Unit!30773 0))(
  ( (Unit!30774) )
))
(declare-fun lt!409253 () Unit!30773)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29977)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!45 (array!53546 array!53544 (_ BitVec 32) (_ BitVec 32) V!29977 V!29977 (_ BitVec 64) V!29977 (_ BitVec 32) Int) Unit!30773)

(assert (=> b!907353 (= lt!409253 (lemmaListMapApplyFromThenApplyFromZero!45 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409256 i!717 defaultEntry!1160))))

(declare-fun b!907354 () Bool)

(declare-fun e!508534 () Bool)

(assert (=> b!907354 (= e!508534 e!508537)))

(declare-fun res!612515 () Bool)

(assert (=> b!907354 (=> res!612515 e!508537)))

(declare-fun lt!409255 () ListLongMap!11015)

(declare-fun contains!4531 (ListLongMap!11015 (_ BitVec 64)) Bool)

(assert (=> b!907354 (= res!612515 (not (contains!4531 lt!409255 k0!1033)))))

(declare-fun getCurrentListMap!2755 (array!53546 array!53544 (_ BitVec 32) (_ BitVec 32) V!29977 V!29977 (_ BitVec 32) Int) ListLongMap!11015)

(assert (=> b!907354 (= lt!409255 (getCurrentListMap!2755 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29851 () Bool)

(declare-fun tp!57285 () Bool)

(declare-fun e!508539 () Bool)

(assert (=> mapNonEmpty!29851 (= mapRes!29851 (and tp!57285 e!508539))))

(declare-fun mapKey!29851 () (_ BitVec 32))

(declare-fun mapRest!29851 () (Array (_ BitVec 32) ValueCell!8898))

(declare-fun mapValue!29851 () ValueCell!8898)

(assert (=> mapNonEmpty!29851 (= (arr!25727 _values!1152) (store mapRest!29851 mapKey!29851 mapValue!29851))))

(declare-fun b!907355 () Bool)

(declare-fun res!612521 () Bool)

(assert (=> b!907355 (=> res!612521 e!508537)))

(assert (=> b!907355 (= res!612521 (not (= (apply!499 lt!409255 k0!1033) lt!409256)))))

(declare-fun b!907356 () Bool)

(assert (=> b!907356 (= e!508539 tp_is_empty!18759)))

(declare-fun b!907357 () Bool)

(declare-fun res!612519 () Bool)

(declare-fun e!508540 () Bool)

(assert (=> b!907357 (=> (not res!612519) (not e!508540))))

(assert (=> b!907357 (= res!612519 (and (= (select (arr!25728 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907358 () Bool)

(declare-fun res!612520 () Bool)

(assert (=> b!907358 (=> (not res!612520) (not e!508540))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907358 (= res!612520 (inRange!0 i!717 mask!1756))))

(declare-fun b!907359 () Bool)

(assert (=> b!907359 (= e!508538 tp_is_empty!18759)))

(declare-fun b!907360 () Bool)

(assert (=> b!907360 (= e!508540 (not e!508534))))

(declare-fun res!612513 () Bool)

(assert (=> b!907360 (=> res!612513 e!508534)))

(assert (=> b!907360 (= res!612513 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26188 _keys!1386))))))

(declare-fun get!13551 (ValueCell!8898 V!29977) V!29977)

(declare-fun dynLambda!1371 (Int (_ BitVec 64)) V!29977)

(assert (=> b!907360 (= lt!409256 (get!13551 (select (arr!25727 _values!1152) i!717) (dynLambda!1371 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907360 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409254 () Unit!30773)

(declare-fun lemmaKeyInListMapIsInArray!244 (array!53546 array!53544 (_ BitVec 32) (_ BitVec 32) V!29977 V!29977 (_ BitVec 64) Int) Unit!30773)

(assert (=> b!907360 (= lt!409254 (lemmaKeyInListMapIsInArray!244 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!907361 () Bool)

(declare-fun res!612518 () Bool)

(assert (=> b!907361 (=> (not res!612518) (not e!508541))))

(declare-datatypes ((List!18165 0))(
  ( (Nil!18162) (Cons!18161 (h!19307 (_ BitVec 64)) (t!25686 List!18165)) )
))
(declare-fun arrayNoDuplicates!0 (array!53546 (_ BitVec 32) List!18165) Bool)

(assert (=> b!907361 (= res!612518 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18162))))

(declare-fun b!907362 () Bool)

(assert (=> b!907362 (= e!508541 e!508540)))

(declare-fun res!612522 () Bool)

(assert (=> b!907362 (=> (not res!612522) (not e!508540))))

(assert (=> b!907362 (= res!612522 (contains!4531 lt!409252 k0!1033))))

(assert (=> b!907362 (= lt!409252 (getCurrentListMap!2755 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907363 () Bool)

(declare-fun res!612514 () Bool)

(assert (=> b!907363 (=> (not res!612514) (not e!508541))))

(assert (=> b!907363 (= res!612514 (and (= (size!26187 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26188 _keys!1386) (size!26187 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77784 res!612517) b!907363))

(assert (= (and b!907363 res!612514) b!907352))

(assert (= (and b!907352 res!612516) b!907361))

(assert (= (and b!907361 res!612518) b!907362))

(assert (= (and b!907362 res!612522) b!907358))

(assert (= (and b!907358 res!612520) b!907357))

(assert (= (and b!907357 res!612519) b!907360))

(assert (= (and b!907360 (not res!612513)) b!907354))

(assert (= (and b!907354 (not res!612515)) b!907355))

(assert (= (and b!907355 (not res!612521)) b!907353))

(assert (= (and b!907351 condMapEmpty!29851) mapIsEmpty!29851))

(assert (= (and b!907351 (not condMapEmpty!29851)) mapNonEmpty!29851))

(get-info :version)

(assert (= (and mapNonEmpty!29851 ((_ is ValueCellFull!8898) mapValue!29851)) b!907356))

(assert (= (and b!907351 ((_ is ValueCellFull!8898) mapDefault!29851)) b!907359))

(assert (= start!77784 b!907351))

(declare-fun b_lambda!13245 () Bool)

(assert (=> (not b_lambda!13245) (not b!907360)))

(declare-fun t!25684 () Bool)

(declare-fun tb!5371 () Bool)

(assert (=> (and start!77784 (= defaultEntry!1160 defaultEntry!1160) t!25684) tb!5371))

(declare-fun result!10529 () Bool)

(assert (=> tb!5371 (= result!10529 tp_is_empty!18759)))

(assert (=> b!907360 t!25684))

(declare-fun b_and!26855 () Bool)

(assert (= b_and!26853 (and (=> t!25684 result!10529) b_and!26855)))

(declare-fun m!842811 () Bool)

(assert (=> b!907361 m!842811))

(declare-fun m!842813 () Bool)

(assert (=> b!907353 m!842813))

(declare-fun m!842815 () Bool)

(assert (=> b!907353 m!842815))

(declare-fun m!842817 () Bool)

(assert (=> b!907357 m!842817))

(declare-fun m!842819 () Bool)

(assert (=> start!77784 m!842819))

(declare-fun m!842821 () Bool)

(assert (=> start!77784 m!842821))

(declare-fun m!842823 () Bool)

(assert (=> start!77784 m!842823))

(declare-fun m!842825 () Bool)

(assert (=> b!907355 m!842825))

(declare-fun m!842827 () Bool)

(assert (=> b!907358 m!842827))

(declare-fun m!842829 () Bool)

(assert (=> b!907360 m!842829))

(declare-fun m!842831 () Bool)

(assert (=> b!907360 m!842831))

(declare-fun m!842833 () Bool)

(assert (=> b!907360 m!842833))

(declare-fun m!842835 () Bool)

(assert (=> b!907360 m!842835))

(assert (=> b!907360 m!842829))

(assert (=> b!907360 m!842833))

(declare-fun m!842837 () Bool)

(assert (=> b!907360 m!842837))

(declare-fun m!842839 () Bool)

(assert (=> b!907362 m!842839))

(declare-fun m!842841 () Bool)

(assert (=> b!907362 m!842841))

(declare-fun m!842843 () Bool)

(assert (=> b!907354 m!842843))

(declare-fun m!842845 () Bool)

(assert (=> b!907354 m!842845))

(declare-fun m!842847 () Bool)

(assert (=> mapNonEmpty!29851 m!842847))

(declare-fun m!842849 () Bool)

(assert (=> b!907352 m!842849))

(check-sat (not b!907354) (not b!907353) (not b!907362) (not b!907358) tp_is_empty!18759 (not start!77784) (not b!907360) (not b_lambda!13245) (not b_next!16341) (not mapNonEmpty!29851) (not b!907361) (not b!907355) (not b!907352) b_and!26855)
(check-sat b_and!26855 (not b_next!16341))
