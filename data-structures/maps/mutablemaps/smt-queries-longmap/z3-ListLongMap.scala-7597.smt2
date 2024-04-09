; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95940 () Bool)

(assert start!95940)

(declare-fun b_free!22557 () Bool)

(declare-fun b_next!22557 () Bool)

(assert (=> start!95940 (= b_free!22557 (not b_next!22557))))

(declare-fun tp!79520 () Bool)

(declare-fun b_and!35807 () Bool)

(assert (=> start!95940 (= tp!79520 b_and!35807)))

(declare-fun b!1085935 () Bool)

(declare-fun res!724172 () Bool)

(declare-fun e!620391 () Bool)

(assert (=> b!1085935 (=> (not res!724172) (not e!620391))))

(declare-datatypes ((array!70014 0))(
  ( (array!70015 (arr!33677 (Array (_ BitVec 32) (_ BitVec 64))) (size!34214 (_ BitVec 32))) )
))
(declare-fun lt!482296 () array!70014)

(declare-datatypes ((List!23619 0))(
  ( (Nil!23616) (Cons!23615 (h!24824 (_ BitVec 64)) (t!33241 List!23619)) )
))
(declare-fun arrayNoDuplicates!0 (array!70014 (_ BitVec 32) List!23619) Bool)

(assert (=> b!1085935 (= res!724172 (arrayNoDuplicates!0 lt!482296 #b00000000000000000000000000000000 Nil!23616))))

(declare-fun b!1085936 () Bool)

(declare-fun res!724167 () Bool)

(declare-fun e!620392 () Bool)

(assert (=> b!1085936 (=> (not res!724167) (not e!620392))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70014)

(declare-datatypes ((V!40539 0))(
  ( (V!40540 (val!13336 Int)) )
))
(declare-datatypes ((ValueCell!12570 0))(
  ( (ValueCellFull!12570 (v!15958 V!40539)) (EmptyCell!12570) )
))
(declare-datatypes ((array!70016 0))(
  ( (array!70017 (arr!33678 (Array (_ BitVec 32) ValueCell!12570)) (size!34215 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70016)

(assert (=> b!1085936 (= res!724167 (and (= (size!34215 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34214 _keys!1070) (size!34215 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085937 () Bool)

(declare-fun e!620386 () Bool)

(declare-fun e!620385 () Bool)

(assert (=> b!1085937 (= e!620386 e!620385)))

(declare-fun res!724165 () Bool)

(assert (=> b!1085937 (=> res!724165 e!620385)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1085937 (= res!724165 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!16980 0))(
  ( (tuple2!16981 (_1!8500 (_ BitVec 64)) (_2!8500 V!40539)) )
))
(declare-datatypes ((List!23620 0))(
  ( (Nil!23617) (Cons!23616 (h!24825 tuple2!16980) (t!33242 List!23620)) )
))
(declare-datatypes ((ListLongMap!14961 0))(
  ( (ListLongMap!14962 (toList!7496 List!23620)) )
))
(declare-fun lt!482300 () ListLongMap!14961)

(declare-fun lt!482294 () ListLongMap!14961)

(assert (=> b!1085937 (= lt!482300 lt!482294)))

(declare-fun lt!482299 () ListLongMap!14961)

(declare-fun -!777 (ListLongMap!14961 (_ BitVec 64)) ListLongMap!14961)

(assert (=> b!1085937 (= lt!482300 (-!777 lt!482299 k0!904))))

(declare-fun lt!482309 () ListLongMap!14961)

(declare-datatypes ((Unit!35669 0))(
  ( (Unit!35670) )
))
(declare-fun lt!482293 () Unit!35669)

(declare-fun zeroValue!831 () V!40539)

(declare-fun addRemoveCommutativeForDiffKeys!21 (ListLongMap!14961 (_ BitVec 64) V!40539 (_ BitVec 64)) Unit!35669)

(assert (=> b!1085937 (= lt!482293 (addRemoveCommutativeForDiffKeys!21 lt!482309 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!482308 () ListLongMap!14961)

(declare-fun lt!482304 () tuple2!16980)

(declare-fun +!3225 (ListLongMap!14961 tuple2!16980) ListLongMap!14961)

(assert (=> b!1085937 (= lt!482308 (+!3225 lt!482294 lt!482304))))

(declare-fun lt!482307 () ListLongMap!14961)

(declare-fun lt!482303 () tuple2!16980)

(assert (=> b!1085937 (= lt!482294 (+!3225 lt!482307 lt!482303))))

(declare-fun lt!482302 () ListLongMap!14961)

(declare-fun lt!482297 () ListLongMap!14961)

(assert (=> b!1085937 (= lt!482302 lt!482297)))

(assert (=> b!1085937 (= lt!482297 (+!3225 lt!482299 lt!482304))))

(assert (=> b!1085937 (= lt!482299 (+!3225 lt!482309 lt!482303))))

(declare-fun lt!482295 () ListLongMap!14961)

(assert (=> b!1085937 (= lt!482308 (+!3225 (+!3225 lt!482295 lt!482303) lt!482304))))

(declare-fun minValue!831 () V!40539)

(assert (=> b!1085937 (= lt!482304 (tuple2!16981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085937 (= lt!482303 (tuple2!16981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085938 () Bool)

(declare-fun res!724169 () Bool)

(assert (=> b!1085938 (=> (not res!724169) (not e!620392))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085938 (= res!724169 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34214 _keys!1070))))))

(declare-fun b!1085939 () Bool)

(assert (=> b!1085939 (= e!620385 (bvsle #b00000000000000000000000000000000 (size!34214 _keys!1070)))))

(assert (=> b!1085939 (= (-!777 lt!482297 k0!904) (+!3225 lt!482300 lt!482304))))

(declare-fun lt!482305 () Unit!35669)

(assert (=> b!1085939 (= lt!482305 (addRemoveCommutativeForDiffKeys!21 lt!482299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun res!724171 () Bool)

(assert (=> start!95940 (=> (not res!724171) (not e!620392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95940 (= res!724171 (validMask!0 mask!1414))))

(assert (=> start!95940 e!620392))

(assert (=> start!95940 tp!79520))

(assert (=> start!95940 true))

(declare-fun tp_is_empty!26559 () Bool)

(assert (=> start!95940 tp_is_empty!26559))

(declare-fun array_inv!25838 (array!70014) Bool)

(assert (=> start!95940 (array_inv!25838 _keys!1070)))

(declare-fun e!620387 () Bool)

(declare-fun array_inv!25839 (array!70016) Bool)

(assert (=> start!95940 (and (array_inv!25839 _values!874) e!620387)))

(declare-fun b!1085940 () Bool)

(declare-fun res!724173 () Bool)

(assert (=> b!1085940 (=> (not res!724173) (not e!620392))))

(assert (=> b!1085940 (= res!724173 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23616))))

(declare-fun b!1085941 () Bool)

(declare-fun e!620390 () Bool)

(declare-fun mapRes!41593 () Bool)

(assert (=> b!1085941 (= e!620387 (and e!620390 mapRes!41593))))

(declare-fun condMapEmpty!41593 () Bool)

(declare-fun mapDefault!41593 () ValueCell!12570)

(assert (=> b!1085941 (= condMapEmpty!41593 (= (arr!33678 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12570)) mapDefault!41593)))))

(declare-fun mapNonEmpty!41593 () Bool)

(declare-fun tp!79521 () Bool)

(declare-fun e!620388 () Bool)

(assert (=> mapNonEmpty!41593 (= mapRes!41593 (and tp!79521 e!620388))))

(declare-fun mapRest!41593 () (Array (_ BitVec 32) ValueCell!12570))

(declare-fun mapValue!41593 () ValueCell!12570)

(declare-fun mapKey!41593 () (_ BitVec 32))

(assert (=> mapNonEmpty!41593 (= (arr!33678 _values!874) (store mapRest!41593 mapKey!41593 mapValue!41593))))

(declare-fun b!1085942 () Bool)

(assert (=> b!1085942 (= e!620390 tp_is_empty!26559)))

(declare-fun b!1085943 () Bool)

(declare-fun res!724175 () Bool)

(assert (=> b!1085943 (=> (not res!724175) (not e!620392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70014 (_ BitVec 32)) Bool)

(assert (=> b!1085943 (= res!724175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085944 () Bool)

(declare-fun res!724170 () Bool)

(assert (=> b!1085944 (=> (not res!724170) (not e!620392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085944 (= res!724170 (validKeyInArray!0 k0!904))))

(declare-fun b!1085945 () Bool)

(assert (=> b!1085945 (= e!620392 e!620391)))

(declare-fun res!724166 () Bool)

(assert (=> b!1085945 (=> (not res!724166) (not e!620391))))

(assert (=> b!1085945 (= res!724166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482296 mask!1414))))

(assert (=> b!1085945 (= lt!482296 (array!70015 (store (arr!33677 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34214 _keys!1070)))))

(declare-fun mapIsEmpty!41593 () Bool)

(assert (=> mapIsEmpty!41593 mapRes!41593))

(declare-fun b!1085946 () Bool)

(assert (=> b!1085946 (= e!620388 tp_is_empty!26559)))

(declare-fun b!1085947 () Bool)

(declare-fun res!724168 () Bool)

(assert (=> b!1085947 (=> (not res!724168) (not e!620392))))

(assert (=> b!1085947 (= res!724168 (= (select (arr!33677 _keys!1070) i!650) k0!904))))

(declare-fun b!1085948 () Bool)

(assert (=> b!1085948 (= e!620391 (not e!620386))))

(declare-fun res!724174 () Bool)

(assert (=> b!1085948 (=> res!724174 e!620386)))

(assert (=> b!1085948 (= res!724174 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4251 (array!70014 array!70016 (_ BitVec 32) (_ BitVec 32) V!40539 V!40539 (_ BitVec 32) Int) ListLongMap!14961)

(assert (=> b!1085948 (= lt!482302 (getCurrentListMap!4251 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482301 () array!70016)

(assert (=> b!1085948 (= lt!482308 (getCurrentListMap!4251 lt!482296 lt!482301 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085948 (and (= lt!482295 lt!482307) (= lt!482307 lt!482295))))

(assert (=> b!1085948 (= lt!482307 (-!777 lt!482309 k0!904))))

(declare-fun lt!482306 () Unit!35669)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!57 (array!70014 array!70016 (_ BitVec 32) (_ BitVec 32) V!40539 V!40539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35669)

(assert (=> b!1085948 (= lt!482306 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!57 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4003 (array!70014 array!70016 (_ BitVec 32) (_ BitVec 32) V!40539 V!40539 (_ BitVec 32) Int) ListLongMap!14961)

(assert (=> b!1085948 (= lt!482295 (getCurrentListMapNoExtraKeys!4003 lt!482296 lt!482301 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2139 (Int (_ BitVec 64)) V!40539)

(assert (=> b!1085948 (= lt!482301 (array!70017 (store (arr!33678 _values!874) i!650 (ValueCellFull!12570 (dynLambda!2139 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34215 _values!874)))))

(assert (=> b!1085948 (= lt!482309 (getCurrentListMapNoExtraKeys!4003 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085948 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482298 () Unit!35669)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70014 (_ BitVec 64) (_ BitVec 32)) Unit!35669)

(assert (=> b!1085948 (= lt!482298 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95940 res!724171) b!1085936))

(assert (= (and b!1085936 res!724167) b!1085943))

(assert (= (and b!1085943 res!724175) b!1085940))

(assert (= (and b!1085940 res!724173) b!1085938))

(assert (= (and b!1085938 res!724169) b!1085944))

(assert (= (and b!1085944 res!724170) b!1085947))

(assert (= (and b!1085947 res!724168) b!1085945))

(assert (= (and b!1085945 res!724166) b!1085935))

(assert (= (and b!1085935 res!724172) b!1085948))

(assert (= (and b!1085948 (not res!724174)) b!1085937))

(assert (= (and b!1085937 (not res!724165)) b!1085939))

(assert (= (and b!1085941 condMapEmpty!41593) mapIsEmpty!41593))

(assert (= (and b!1085941 (not condMapEmpty!41593)) mapNonEmpty!41593))

(get-info :version)

(assert (= (and mapNonEmpty!41593 ((_ is ValueCellFull!12570) mapValue!41593)) b!1085946))

(assert (= (and b!1085941 ((_ is ValueCellFull!12570) mapDefault!41593)) b!1085942))

(assert (= start!95940 b!1085941))

(declare-fun b_lambda!17257 () Bool)

(assert (=> (not b_lambda!17257) (not b!1085948)))

(declare-fun t!33240 () Bool)

(declare-fun tb!7443 () Bool)

(assert (=> (and start!95940 (= defaultEntry!882 defaultEntry!882) t!33240) tb!7443))

(declare-fun result!15397 () Bool)

(assert (=> tb!7443 (= result!15397 tp_is_empty!26559)))

(assert (=> b!1085948 t!33240))

(declare-fun b_and!35809 () Bool)

(assert (= b_and!35807 (and (=> t!33240 result!15397) b_and!35809)))

(declare-fun m!1004365 () Bool)

(assert (=> b!1085944 m!1004365))

(declare-fun m!1004367 () Bool)

(assert (=> b!1085943 m!1004367))

(declare-fun m!1004369 () Bool)

(assert (=> b!1085948 m!1004369))

(declare-fun m!1004371 () Bool)

(assert (=> b!1085948 m!1004371))

(declare-fun m!1004373 () Bool)

(assert (=> b!1085948 m!1004373))

(declare-fun m!1004375 () Bool)

(assert (=> b!1085948 m!1004375))

(declare-fun m!1004377 () Bool)

(assert (=> b!1085948 m!1004377))

(declare-fun m!1004379 () Bool)

(assert (=> b!1085948 m!1004379))

(declare-fun m!1004381 () Bool)

(assert (=> b!1085948 m!1004381))

(declare-fun m!1004383 () Bool)

(assert (=> b!1085948 m!1004383))

(declare-fun m!1004385 () Bool)

(assert (=> b!1085948 m!1004385))

(declare-fun m!1004387 () Bool)

(assert (=> b!1085948 m!1004387))

(declare-fun m!1004389 () Bool)

(assert (=> start!95940 m!1004389))

(declare-fun m!1004391 () Bool)

(assert (=> start!95940 m!1004391))

(declare-fun m!1004393 () Bool)

(assert (=> start!95940 m!1004393))

(declare-fun m!1004395 () Bool)

(assert (=> mapNonEmpty!41593 m!1004395))

(declare-fun m!1004397 () Bool)

(assert (=> b!1085935 m!1004397))

(declare-fun m!1004399 () Bool)

(assert (=> b!1085940 m!1004399))

(declare-fun m!1004401 () Bool)

(assert (=> b!1085939 m!1004401))

(declare-fun m!1004403 () Bool)

(assert (=> b!1085939 m!1004403))

(declare-fun m!1004405 () Bool)

(assert (=> b!1085939 m!1004405))

(declare-fun m!1004407 () Bool)

(assert (=> b!1085947 m!1004407))

(declare-fun m!1004409 () Bool)

(assert (=> b!1085945 m!1004409))

(declare-fun m!1004411 () Bool)

(assert (=> b!1085945 m!1004411))

(declare-fun m!1004413 () Bool)

(assert (=> b!1085937 m!1004413))

(declare-fun m!1004415 () Bool)

(assert (=> b!1085937 m!1004415))

(declare-fun m!1004417 () Bool)

(assert (=> b!1085937 m!1004417))

(declare-fun m!1004419 () Bool)

(assert (=> b!1085937 m!1004419))

(declare-fun m!1004421 () Bool)

(assert (=> b!1085937 m!1004421))

(declare-fun m!1004423 () Bool)

(assert (=> b!1085937 m!1004423))

(declare-fun m!1004425 () Bool)

(assert (=> b!1085937 m!1004425))

(declare-fun m!1004427 () Bool)

(assert (=> b!1085937 m!1004427))

(assert (=> b!1085937 m!1004419))

(check-sat (not b_next!22557) (not b!1085943) (not mapNonEmpty!41593) (not b!1085939) b_and!35809 tp_is_empty!26559 (not b!1085940) (not b!1085945) (not b!1085937) (not b!1085944) (not start!95940) (not b!1085948) (not b_lambda!17257) (not b!1085935))
(check-sat b_and!35809 (not b_next!22557))
