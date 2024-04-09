; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77760 () Bool)

(assert start!77760)

(declare-fun b_free!16317 () Bool)

(declare-fun b_next!16317 () Bool)

(assert (=> start!77760 (= b_free!16317 (not b_next!16317))))

(declare-fun tp!57214 () Bool)

(declare-fun b_and!26805 () Bool)

(assert (=> start!77760 (= tp!57214 b_and!26805)))

(declare-fun b!906859 () Bool)

(declare-fun e!508251 () Bool)

(declare-fun e!508248 () Bool)

(assert (=> b!906859 (= e!508251 e!508248)))

(declare-fun res!612159 () Bool)

(assert (=> b!906859 (=> res!612159 e!508248)))

(declare-datatypes ((V!29945 0))(
  ( (V!29946 (val!9418 Int)) )
))
(declare-datatypes ((tuple2!12282 0))(
  ( (tuple2!12283 (_1!6151 (_ BitVec 64)) (_2!6151 V!29945)) )
))
(declare-datatypes ((List!18144 0))(
  ( (Nil!18141) (Cons!18140 (h!19286 tuple2!12282) (t!25641 List!18144)) )
))
(declare-datatypes ((ListLongMap!10993 0))(
  ( (ListLongMap!10994 (toList!5512 List!18144)) )
))
(declare-fun lt!409072 () ListLongMap!10993)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4522 (ListLongMap!10993 (_ BitVec 64)) Bool)

(assert (=> b!906859 (= res!612159 (not (contains!4522 lt!409072 k0!1033)))))

(declare-datatypes ((ValueCell!8886 0))(
  ( (ValueCellFull!8886 (v!11923 V!29945)) (EmptyCell!8886) )
))
(declare-datatypes ((array!53496 0))(
  ( (array!53497 (arr!25703 (Array (_ BitVec 32) ValueCell!8886)) (size!26163 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53496)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29945)

(declare-datatypes ((array!53498 0))(
  ( (array!53499 (arr!25704 (Array (_ BitVec 32) (_ BitVec 64))) (size!26164 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53498)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29945)

(declare-fun getCurrentListMap!2746 (array!53498 array!53496 (_ BitVec 32) (_ BitVec 32) V!29945 V!29945 (_ BitVec 32) Int) ListLongMap!10993)

(assert (=> b!906859 (= lt!409072 (getCurrentListMap!2746 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906860 () Bool)

(declare-fun res!612154 () Bool)

(declare-fun e!508252 () Bool)

(assert (=> b!906860 (=> (not res!612154) (not e!508252))))

(assert (=> b!906860 (= res!612154 (and (= (size!26163 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26164 _keys!1386) (size!26163 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906862 () Bool)

(declare-fun res!612158 () Bool)

(assert (=> b!906862 (=> res!612158 e!508248)))

(declare-fun lt!409075 () V!29945)

(declare-fun apply!488 (ListLongMap!10993 (_ BitVec 64)) V!29945)

(assert (=> b!906862 (= res!612158 (not (= (apply!488 lt!409072 k0!1033) lt!409075)))))

(declare-fun b!906863 () Bool)

(declare-fun e!508253 () Bool)

(declare-fun tp_is_empty!18735 () Bool)

(assert (=> b!906863 (= e!508253 tp_is_empty!18735)))

(declare-fun b!906864 () Bool)

(declare-fun res!612160 () Bool)

(assert (=> b!906864 (=> (not res!612160) (not e!508252))))

(declare-datatypes ((List!18145 0))(
  ( (Nil!18142) (Cons!18141 (h!19287 (_ BitVec 64)) (t!25642 List!18145)) )
))
(declare-fun arrayNoDuplicates!0 (array!53498 (_ BitVec 32) List!18145) Bool)

(assert (=> b!906864 (= res!612160 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18142))))

(declare-fun b!906865 () Bool)

(declare-fun e!508246 () Bool)

(declare-fun mapRes!29815 () Bool)

(assert (=> b!906865 (= e!508246 (and e!508253 mapRes!29815))))

(declare-fun condMapEmpty!29815 () Bool)

(declare-fun mapDefault!29815 () ValueCell!8886)

(assert (=> b!906865 (= condMapEmpty!29815 (= (arr!25703 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8886)) mapDefault!29815)))))

(declare-fun b!906866 () Bool)

(declare-fun e!508249 () Bool)

(assert (=> b!906866 (= e!508249 (not e!508251))))

(declare-fun res!612161 () Bool)

(assert (=> b!906866 (=> res!612161 e!508251)))

(assert (=> b!906866 (= res!612161 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26164 _keys!1386))))))

(declare-fun get!13532 (ValueCell!8886 V!29945) V!29945)

(declare-fun dynLambda!1360 (Int (_ BitVec 64)) V!29945)

(assert (=> b!906866 (= lt!409075 (get!13532 (select (arr!25703 _values!1152) i!717) (dynLambda!1360 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906866 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30749 0))(
  ( (Unit!30750) )
))
(declare-fun lt!409076 () Unit!30749)

(declare-fun lemmaKeyInListMapIsInArray!233 (array!53498 array!53496 (_ BitVec 32) (_ BitVec 32) V!29945 V!29945 (_ BitVec 64) Int) Unit!30749)

(assert (=> b!906866 (= lt!409076 (lemmaKeyInListMapIsInArray!233 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29815 () Bool)

(declare-fun tp!57213 () Bool)

(declare-fun e!508250 () Bool)

(assert (=> mapNonEmpty!29815 (= mapRes!29815 (and tp!57213 e!508250))))

(declare-fun mapKey!29815 () (_ BitVec 32))

(declare-fun mapValue!29815 () ValueCell!8886)

(declare-fun mapRest!29815 () (Array (_ BitVec 32) ValueCell!8886))

(assert (=> mapNonEmpty!29815 (= (arr!25703 _values!1152) (store mapRest!29815 mapKey!29815 mapValue!29815))))

(declare-fun b!906867 () Bool)

(assert (=> b!906867 (= e!508252 e!508249)))

(declare-fun res!612153 () Bool)

(assert (=> b!906867 (=> (not res!612153) (not e!508249))))

(declare-fun lt!409074 () ListLongMap!10993)

(assert (=> b!906867 (= res!612153 (contains!4522 lt!409074 k0!1033))))

(assert (=> b!906867 (= lt!409074 (getCurrentListMap!2746 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906868 () Bool)

(declare-fun res!612156 () Bool)

(assert (=> b!906868 (=> (not res!612156) (not e!508249))))

(assert (=> b!906868 (= res!612156 (and (= (select (arr!25704 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906869 () Bool)

(declare-fun res!612157 () Bool)

(assert (=> b!906869 (=> (not res!612157) (not e!508252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53498 (_ BitVec 32)) Bool)

(assert (=> b!906869 (= res!612157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906870 () Bool)

(declare-fun res!612155 () Bool)

(assert (=> b!906870 (=> (not res!612155) (not e!508249))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906870 (= res!612155 (inRange!0 i!717 mask!1756))))

(declare-fun res!612162 () Bool)

(assert (=> start!77760 (=> (not res!612162) (not e!508252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77760 (= res!612162 (validMask!0 mask!1756))))

(assert (=> start!77760 e!508252))

(declare-fun array_inv!20102 (array!53496) Bool)

(assert (=> start!77760 (and (array_inv!20102 _values!1152) e!508246)))

(assert (=> start!77760 tp!57214))

(assert (=> start!77760 true))

(assert (=> start!77760 tp_is_empty!18735))

(declare-fun array_inv!20103 (array!53498) Bool)

(assert (=> start!77760 (array_inv!20103 _keys!1386)))

(declare-fun b!906861 () Bool)

(assert (=> b!906861 (= e!508250 tp_is_empty!18735)))

(declare-fun b!906871 () Bool)

(assert (=> b!906871 (= e!508248 true)))

(assert (=> b!906871 (= (apply!488 lt!409074 k0!1033) lt!409075)))

(declare-fun lt!409073 () Unit!30749)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!35 (array!53498 array!53496 (_ BitVec 32) (_ BitVec 32) V!29945 V!29945 (_ BitVec 64) V!29945 (_ BitVec 32) Int) Unit!30749)

(assert (=> b!906871 (= lt!409073 (lemmaListMapApplyFromThenApplyFromZero!35 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409075 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29815 () Bool)

(assert (=> mapIsEmpty!29815 mapRes!29815))

(assert (= (and start!77760 res!612162) b!906860))

(assert (= (and b!906860 res!612154) b!906869))

(assert (= (and b!906869 res!612157) b!906864))

(assert (= (and b!906864 res!612160) b!906867))

(assert (= (and b!906867 res!612153) b!906870))

(assert (= (and b!906870 res!612155) b!906868))

(assert (= (and b!906868 res!612156) b!906866))

(assert (= (and b!906866 (not res!612161)) b!906859))

(assert (= (and b!906859 (not res!612159)) b!906862))

(assert (= (and b!906862 (not res!612158)) b!906871))

(assert (= (and b!906865 condMapEmpty!29815) mapIsEmpty!29815))

(assert (= (and b!906865 (not condMapEmpty!29815)) mapNonEmpty!29815))

(get-info :version)

(assert (= (and mapNonEmpty!29815 ((_ is ValueCellFull!8886) mapValue!29815)) b!906861))

(assert (= (and b!906865 ((_ is ValueCellFull!8886) mapDefault!29815)) b!906863))

(assert (= start!77760 b!906865))

(declare-fun b_lambda!13221 () Bool)

(assert (=> (not b_lambda!13221) (not b!906866)))

(declare-fun t!25640 () Bool)

(declare-fun tb!5347 () Bool)

(assert (=> (and start!77760 (= defaultEntry!1160 defaultEntry!1160) t!25640) tb!5347))

(declare-fun result!10481 () Bool)

(assert (=> tb!5347 (= result!10481 tp_is_empty!18735)))

(assert (=> b!906866 t!25640))

(declare-fun b_and!26807 () Bool)

(assert (= b_and!26805 (and (=> t!25640 result!10481) b_and!26807)))

(declare-fun m!842331 () Bool)

(assert (=> b!906859 m!842331))

(declare-fun m!842333 () Bool)

(assert (=> b!906859 m!842333))

(declare-fun m!842335 () Bool)

(assert (=> b!906867 m!842335))

(declare-fun m!842337 () Bool)

(assert (=> b!906867 m!842337))

(declare-fun m!842339 () Bool)

(assert (=> start!77760 m!842339))

(declare-fun m!842341 () Bool)

(assert (=> start!77760 m!842341))

(declare-fun m!842343 () Bool)

(assert (=> start!77760 m!842343))

(declare-fun m!842345 () Bool)

(assert (=> b!906868 m!842345))

(declare-fun m!842347 () Bool)

(assert (=> b!906866 m!842347))

(declare-fun m!842349 () Bool)

(assert (=> b!906866 m!842349))

(declare-fun m!842351 () Bool)

(assert (=> b!906866 m!842351))

(declare-fun m!842353 () Bool)

(assert (=> b!906866 m!842353))

(assert (=> b!906866 m!842347))

(assert (=> b!906866 m!842351))

(declare-fun m!842355 () Bool)

(assert (=> b!906866 m!842355))

(declare-fun m!842357 () Bool)

(assert (=> b!906869 m!842357))

(declare-fun m!842359 () Bool)

(assert (=> mapNonEmpty!29815 m!842359))

(declare-fun m!842361 () Bool)

(assert (=> b!906862 m!842361))

(declare-fun m!842363 () Bool)

(assert (=> b!906864 m!842363))

(declare-fun m!842365 () Bool)

(assert (=> b!906870 m!842365))

(declare-fun m!842367 () Bool)

(assert (=> b!906871 m!842367))

(declare-fun m!842369 () Bool)

(assert (=> b!906871 m!842369))

(check-sat (not b!906870) (not b!906869) (not b!906862) (not b!906859) (not b!906871) (not start!77760) tp_is_empty!18735 (not b_lambda!13221) (not b!906867) b_and!26807 (not b!906864) (not mapNonEmpty!29815) (not b_next!16317) (not b!906866))
(check-sat b_and!26807 (not b_next!16317))
