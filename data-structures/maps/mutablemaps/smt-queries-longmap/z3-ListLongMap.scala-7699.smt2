; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96710 () Bool)

(assert start!96710)

(declare-fun b_free!23121 () Bool)

(declare-fun b_next!23121 () Bool)

(assert (=> start!96710 (= b_free!23121 (not b_next!23121))))

(declare-fun tp!81305 () Bool)

(declare-fun b_and!36993 () Bool)

(assert (=> start!96710 (= tp!81305 b_and!36993)))

(declare-fun b!1099487 () Bool)

(declare-fun res!733820 () Bool)

(declare-fun e!627588 () Bool)

(assert (=> b!1099487 (=> (not res!733820) (not e!627588))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71212 0))(
  ( (array!71213 (arr!34269 (Array (_ BitVec 32) (_ BitVec 64))) (size!34806 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71212)

(assert (=> b!1099487 (= res!733820 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34806 _keys!1070))))))

(declare-fun b!1099488 () Bool)

(declare-fun res!733821 () Bool)

(assert (=> b!1099488 (=> (not res!733821) (not e!627588))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1099488 (= res!733821 (= (select (arr!34269 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42532 () Bool)

(declare-fun mapRes!42532 () Bool)

(assert (=> mapIsEmpty!42532 mapRes!42532))

(declare-fun b!1099489 () Bool)

(declare-fun e!627589 () Bool)

(assert (=> b!1099489 (= e!627588 e!627589)))

(declare-fun res!733817 () Bool)

(assert (=> b!1099489 (=> (not res!733817) (not e!627589))))

(declare-fun lt!492351 () array!71212)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71212 (_ BitVec 32)) Bool)

(assert (=> b!1099489 (= res!733817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492351 mask!1414))))

(assert (=> b!1099489 (= lt!492351 (array!71213 (store (arr!34269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34806 _keys!1070)))))

(declare-fun b!1099490 () Bool)

(declare-fun res!733822 () Bool)

(assert (=> b!1099490 (=> (not res!733822) (not e!627588))))

(declare-datatypes ((List!24079 0))(
  ( (Nil!24076) (Cons!24075 (h!25284 (_ BitVec 64)) (t!34253 List!24079)) )
))
(declare-fun arrayNoDuplicates!0 (array!71212 (_ BitVec 32) List!24079) Bool)

(assert (=> b!1099490 (= res!733822 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24076))))

(declare-fun b!1099491 () Bool)

(declare-fun e!627587 () Bool)

(declare-fun tp_is_empty!27171 () Bool)

(assert (=> b!1099491 (= e!627587 tp_is_empty!27171)))

(declare-fun b!1099492 () Bool)

(declare-fun res!733819 () Bool)

(assert (=> b!1099492 (=> (not res!733819) (not e!627588))))

(assert (=> b!1099492 (= res!733819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1099493 () Bool)

(declare-fun res!733815 () Bool)

(assert (=> b!1099493 (=> (not res!733815) (not e!627588))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41355 0))(
  ( (V!41356 (val!13642 Int)) )
))
(declare-datatypes ((ValueCell!12876 0))(
  ( (ValueCellFull!12876 (v!16269 V!41355)) (EmptyCell!12876) )
))
(declare-datatypes ((array!71214 0))(
  ( (array!71215 (arr!34270 (Array (_ BitVec 32) ValueCell!12876)) (size!34807 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71214)

(assert (=> b!1099493 (= res!733815 (and (= (size!34807 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34806 _keys!1070) (size!34807 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!17404 0))(
  ( (tuple2!17405 (_1!8712 (_ BitVec 64)) (_2!8712 V!41355)) )
))
(declare-fun lt!492353 () tuple2!17404)

(declare-fun b!1099494 () Bool)

(declare-datatypes ((List!24080 0))(
  ( (Nil!24077) (Cons!24076 (h!25285 tuple2!17404) (t!34254 List!24080)) )
))
(declare-datatypes ((ListLongMap!15385 0))(
  ( (ListLongMap!15386 (toList!7708 List!24080)) )
))
(declare-fun lt!492348 () ListLongMap!15385)

(declare-fun lt!492349 () ListLongMap!15385)

(declare-fun e!627585 () Bool)

(declare-fun +!3343 (ListLongMap!15385 tuple2!17404) ListLongMap!15385)

(assert (=> b!1099494 (= e!627585 (= lt!492348 (+!3343 lt!492349 lt!492353)))))

(declare-fun lt!492354 () ListLongMap!15385)

(declare-fun lt!492350 () ListLongMap!15385)

(assert (=> b!1099494 (= lt!492354 (+!3343 lt!492350 lt!492353))))

(declare-fun zeroValue!831 () V!41355)

(assert (=> b!1099494 (= lt!492353 (tuple2!17405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun res!733813 () Bool)

(assert (=> start!96710 (=> (not res!733813) (not e!627588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96710 (= res!733813 (validMask!0 mask!1414))))

(assert (=> start!96710 e!627588))

(assert (=> start!96710 tp!81305))

(assert (=> start!96710 true))

(assert (=> start!96710 tp_is_empty!27171))

(declare-fun array_inv!26258 (array!71212) Bool)

(assert (=> start!96710 (array_inv!26258 _keys!1070)))

(declare-fun e!627584 () Bool)

(declare-fun array_inv!26259 (array!71214) Bool)

(assert (=> start!96710 (and (array_inv!26259 _values!874) e!627584)))

(declare-fun mapNonEmpty!42532 () Bool)

(declare-fun tp!81306 () Bool)

(assert (=> mapNonEmpty!42532 (= mapRes!42532 (and tp!81306 e!627587))))

(declare-fun mapValue!42532 () ValueCell!12876)

(declare-fun mapKey!42532 () (_ BitVec 32))

(declare-fun mapRest!42532 () (Array (_ BitVec 32) ValueCell!12876))

(assert (=> mapNonEmpty!42532 (= (arr!34270 _values!874) (store mapRest!42532 mapKey!42532 mapValue!42532))))

(declare-fun b!1099495 () Bool)

(declare-fun res!733818 () Bool)

(assert (=> b!1099495 (=> (not res!733818) (not e!627589))))

(assert (=> b!1099495 (= res!733818 (arrayNoDuplicates!0 lt!492351 #b00000000000000000000000000000000 Nil!24076))))

(declare-fun b!1099496 () Bool)

(declare-fun e!627590 () Bool)

(assert (=> b!1099496 (= e!627584 (and e!627590 mapRes!42532))))

(declare-fun condMapEmpty!42532 () Bool)

(declare-fun mapDefault!42532 () ValueCell!12876)

(assert (=> b!1099496 (= condMapEmpty!42532 (= (arr!34270 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12876)) mapDefault!42532)))))

(declare-fun b!1099497 () Bool)

(assert (=> b!1099497 (= e!627589 (not e!627585))))

(declare-fun res!733816 () Bool)

(assert (=> b!1099497 (=> res!733816 e!627585)))

(assert (=> b!1099497 (= res!733816 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41355)

(declare-fun getCurrentListMap!4399 (array!71212 array!71214 (_ BitVec 32) (_ BitVec 32) V!41355 V!41355 (_ BitVec 32) Int) ListLongMap!15385)

(assert (=> b!1099497 (= lt!492348 (getCurrentListMap!4399 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492356 () array!71214)

(assert (=> b!1099497 (= lt!492354 (getCurrentListMap!4399 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492355 () ListLongMap!15385)

(assert (=> b!1099497 (and (= lt!492350 lt!492355) (= lt!492355 lt!492350))))

(declare-fun -!950 (ListLongMap!15385 (_ BitVec 64)) ListLongMap!15385)

(assert (=> b!1099497 (= lt!492355 (-!950 lt!492349 k0!904))))

(declare-datatypes ((Unit!36089 0))(
  ( (Unit!36090) )
))
(declare-fun lt!492352 () Unit!36089)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!211 (array!71212 array!71214 (_ BitVec 32) (_ BitVec 32) V!41355 V!41355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36089)

(assert (=> b!1099497 (= lt!492352 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!211 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4186 (array!71212 array!71214 (_ BitVec 32) (_ BitVec 32) V!41355 V!41355 (_ BitVec 32) Int) ListLongMap!15385)

(assert (=> b!1099497 (= lt!492350 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2317 (Int (_ BitVec 64)) V!41355)

(assert (=> b!1099497 (= lt!492356 (array!71215 (store (arr!34270 _values!874) i!650 (ValueCellFull!12876 (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34807 _values!874)))))

(assert (=> b!1099497 (= lt!492349 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099497 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492357 () Unit!36089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71212 (_ BitVec 64) (_ BitVec 32)) Unit!36089)

(assert (=> b!1099497 (= lt!492357 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1099498 () Bool)

(assert (=> b!1099498 (= e!627590 tp_is_empty!27171)))

(declare-fun b!1099499 () Bool)

(declare-fun res!733814 () Bool)

(assert (=> b!1099499 (=> (not res!733814) (not e!627588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099499 (= res!733814 (validKeyInArray!0 k0!904))))

(assert (= (and start!96710 res!733813) b!1099493))

(assert (= (and b!1099493 res!733815) b!1099492))

(assert (= (and b!1099492 res!733819) b!1099490))

(assert (= (and b!1099490 res!733822) b!1099487))

(assert (= (and b!1099487 res!733820) b!1099499))

(assert (= (and b!1099499 res!733814) b!1099488))

(assert (= (and b!1099488 res!733821) b!1099489))

(assert (= (and b!1099489 res!733817) b!1099495))

(assert (= (and b!1099495 res!733818) b!1099497))

(assert (= (and b!1099497 (not res!733816)) b!1099494))

(assert (= (and b!1099496 condMapEmpty!42532) mapIsEmpty!42532))

(assert (= (and b!1099496 (not condMapEmpty!42532)) mapNonEmpty!42532))

(get-info :version)

(assert (= (and mapNonEmpty!42532 ((_ is ValueCellFull!12876) mapValue!42532)) b!1099491))

(assert (= (and b!1099496 ((_ is ValueCellFull!12876) mapDefault!42532)) b!1099498))

(assert (= start!96710 b!1099496))

(declare-fun b_lambda!17959 () Bool)

(assert (=> (not b_lambda!17959) (not b!1099497)))

(declare-fun t!34252 () Bool)

(declare-fun tb!7995 () Bool)

(assert (=> (and start!96710 (= defaultEntry!882 defaultEntry!882) t!34252) tb!7995))

(declare-fun result!16515 () Bool)

(assert (=> tb!7995 (= result!16515 tp_is_empty!27171)))

(assert (=> b!1099497 t!34252))

(declare-fun b_and!36995 () Bool)

(assert (= b_and!36993 (and (=> t!34252 result!16515) b_and!36995)))

(declare-fun m!1019607 () Bool)

(assert (=> b!1099497 m!1019607))

(declare-fun m!1019609 () Bool)

(assert (=> b!1099497 m!1019609))

(declare-fun m!1019611 () Bool)

(assert (=> b!1099497 m!1019611))

(declare-fun m!1019613 () Bool)

(assert (=> b!1099497 m!1019613))

(declare-fun m!1019615 () Bool)

(assert (=> b!1099497 m!1019615))

(declare-fun m!1019617 () Bool)

(assert (=> b!1099497 m!1019617))

(declare-fun m!1019619 () Bool)

(assert (=> b!1099497 m!1019619))

(declare-fun m!1019621 () Bool)

(assert (=> b!1099497 m!1019621))

(declare-fun m!1019623 () Bool)

(assert (=> b!1099497 m!1019623))

(declare-fun m!1019625 () Bool)

(assert (=> b!1099497 m!1019625))

(declare-fun m!1019627 () Bool)

(assert (=> b!1099488 m!1019627))

(declare-fun m!1019629 () Bool)

(assert (=> mapNonEmpty!42532 m!1019629))

(declare-fun m!1019631 () Bool)

(assert (=> b!1099495 m!1019631))

(declare-fun m!1019633 () Bool)

(assert (=> b!1099492 m!1019633))

(declare-fun m!1019635 () Bool)

(assert (=> b!1099490 m!1019635))

(declare-fun m!1019637 () Bool)

(assert (=> b!1099499 m!1019637))

(declare-fun m!1019639 () Bool)

(assert (=> b!1099489 m!1019639))

(declare-fun m!1019641 () Bool)

(assert (=> b!1099489 m!1019641))

(declare-fun m!1019643 () Bool)

(assert (=> start!96710 m!1019643))

(declare-fun m!1019645 () Bool)

(assert (=> start!96710 m!1019645))

(declare-fun m!1019647 () Bool)

(assert (=> start!96710 m!1019647))

(declare-fun m!1019649 () Bool)

(assert (=> b!1099494 m!1019649))

(declare-fun m!1019651 () Bool)

(assert (=> b!1099494 m!1019651))

(check-sat (not b!1099490) (not b!1099497) (not b_next!23121) b_and!36995 (not start!96710) (not mapNonEmpty!42532) (not b!1099495) tp_is_empty!27171 (not b!1099494) (not b_lambda!17959) (not b!1099499) (not b!1099489) (not b!1099492))
(check-sat b_and!36995 (not b_next!23121))
(get-model)

(declare-fun b_lambda!17963 () Bool)

(assert (= b_lambda!17959 (or (and start!96710 b_free!23121) b_lambda!17963)))

(check-sat (not b!1099499) (not b!1099490) (not b!1099497) (not b_next!23121) b_and!36995 (not start!96710) (not mapNonEmpty!42532) (not b!1099495) tp_is_empty!27171 (not b!1099494) (not b!1099489) (not b_lambda!17963) (not b!1099492))
(check-sat b_and!36995 (not b_next!23121))
(get-model)

(declare-fun d!130465 () Bool)

(assert (=> d!130465 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099499 d!130465))

(declare-fun d!130467 () Bool)

(declare-fun res!733858 () Bool)

(declare-fun e!627618 () Bool)

(assert (=> d!130467 (=> res!733858 e!627618)))

(assert (=> d!130467 (= res!733858 (bvsge #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(assert (=> d!130467 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492351 mask!1414) e!627618)))

(declare-fun b!1099551 () Bool)

(declare-fun e!627620 () Bool)

(declare-fun call!45998 () Bool)

(assert (=> b!1099551 (= e!627620 call!45998)))

(declare-fun b!1099552 () Bool)

(declare-fun e!627619 () Bool)

(assert (=> b!1099552 (= e!627619 e!627620)))

(declare-fun lt!492395 () (_ BitVec 64))

(assert (=> b!1099552 (= lt!492395 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(declare-fun lt!492394 () Unit!36089)

(assert (=> b!1099552 (= lt!492394 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!492351 lt!492395 #b00000000000000000000000000000000))))

(assert (=> b!1099552 (arrayContainsKey!0 lt!492351 lt!492395 #b00000000000000000000000000000000)))

(declare-fun lt!492396 () Unit!36089)

(assert (=> b!1099552 (= lt!492396 lt!492394)))

(declare-fun res!733857 () Bool)

(declare-datatypes ((SeekEntryResult!9908 0))(
  ( (MissingZero!9908 (index!42002 (_ BitVec 32))) (Found!9908 (index!42003 (_ BitVec 32))) (Intermediate!9908 (undefined!10720 Bool) (index!42004 (_ BitVec 32)) (x!98888 (_ BitVec 32))) (Undefined!9908) (MissingVacant!9908 (index!42005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71212 (_ BitVec 32)) SeekEntryResult!9908)

(assert (=> b!1099552 (= res!733857 (= (seekEntryOrOpen!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000) lt!492351 mask!1414) (Found!9908 #b00000000000000000000000000000000)))))

(assert (=> b!1099552 (=> (not res!733857) (not e!627620))))

(declare-fun b!1099553 () Bool)

(assert (=> b!1099553 (= e!627618 e!627619)))

(declare-fun c!108564 () Bool)

(assert (=> b!1099553 (= c!108564 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099554 () Bool)

(assert (=> b!1099554 (= e!627619 call!45998)))

(declare-fun bm!45995 () Bool)

(assert (=> bm!45995 (= call!45998 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!492351 mask!1414))))

(assert (= (and d!130467 (not res!733858)) b!1099553))

(assert (= (and b!1099553 c!108564) b!1099552))

(assert (= (and b!1099553 (not c!108564)) b!1099554))

(assert (= (and b!1099552 res!733857) b!1099551))

(assert (= (or b!1099551 b!1099554) bm!45995))

(declare-fun m!1019699 () Bool)

(assert (=> b!1099552 m!1019699))

(declare-fun m!1019701 () Bool)

(assert (=> b!1099552 m!1019701))

(declare-fun m!1019703 () Bool)

(assert (=> b!1099552 m!1019703))

(assert (=> b!1099552 m!1019699))

(declare-fun m!1019705 () Bool)

(assert (=> b!1099552 m!1019705))

(assert (=> b!1099553 m!1019699))

(assert (=> b!1099553 m!1019699))

(declare-fun m!1019707 () Bool)

(assert (=> b!1099553 m!1019707))

(declare-fun m!1019709 () Bool)

(assert (=> bm!45995 m!1019709))

(assert (=> b!1099489 d!130467))

(declare-fun d!130469 () Bool)

(declare-fun e!627623 () Bool)

(assert (=> d!130469 e!627623))

(declare-fun res!733863 () Bool)

(assert (=> d!130469 (=> (not res!733863) (not e!627623))))

(declare-fun lt!492405 () ListLongMap!15385)

(declare-fun contains!6405 (ListLongMap!15385 (_ BitVec 64)) Bool)

(assert (=> d!130469 (= res!733863 (contains!6405 lt!492405 (_1!8712 lt!492353)))))

(declare-fun lt!492408 () List!24080)

(assert (=> d!130469 (= lt!492405 (ListLongMap!15386 lt!492408))))

(declare-fun lt!492406 () Unit!36089)

(declare-fun lt!492407 () Unit!36089)

(assert (=> d!130469 (= lt!492406 lt!492407)))

(declare-datatypes ((Option!677 0))(
  ( (Some!676 (v!16271 V!41355)) (None!675) )
))
(declare-fun getValueByKey!626 (List!24080 (_ BitVec 64)) Option!677)

(assert (=> d!130469 (= (getValueByKey!626 lt!492408 (_1!8712 lt!492353)) (Some!676 (_2!8712 lt!492353)))))

(declare-fun lemmaContainsTupThenGetReturnValue!301 (List!24080 (_ BitVec 64) V!41355) Unit!36089)

(assert (=> d!130469 (= lt!492407 (lemmaContainsTupThenGetReturnValue!301 lt!492408 (_1!8712 lt!492353) (_2!8712 lt!492353)))))

(declare-fun insertStrictlySorted!393 (List!24080 (_ BitVec 64) V!41355) List!24080)

(assert (=> d!130469 (= lt!492408 (insertStrictlySorted!393 (toList!7708 lt!492349) (_1!8712 lt!492353) (_2!8712 lt!492353)))))

(assert (=> d!130469 (= (+!3343 lt!492349 lt!492353) lt!492405)))

(declare-fun b!1099559 () Bool)

(declare-fun res!733864 () Bool)

(assert (=> b!1099559 (=> (not res!733864) (not e!627623))))

(assert (=> b!1099559 (= res!733864 (= (getValueByKey!626 (toList!7708 lt!492405) (_1!8712 lt!492353)) (Some!676 (_2!8712 lt!492353))))))

(declare-fun b!1099560 () Bool)

(declare-fun contains!6406 (List!24080 tuple2!17404) Bool)

(assert (=> b!1099560 (= e!627623 (contains!6406 (toList!7708 lt!492405) lt!492353))))

(assert (= (and d!130469 res!733863) b!1099559))

(assert (= (and b!1099559 res!733864) b!1099560))

(declare-fun m!1019711 () Bool)

(assert (=> d!130469 m!1019711))

(declare-fun m!1019713 () Bool)

(assert (=> d!130469 m!1019713))

(declare-fun m!1019715 () Bool)

(assert (=> d!130469 m!1019715))

(declare-fun m!1019717 () Bool)

(assert (=> d!130469 m!1019717))

(declare-fun m!1019719 () Bool)

(assert (=> b!1099559 m!1019719))

(declare-fun m!1019721 () Bool)

(assert (=> b!1099560 m!1019721))

(assert (=> b!1099494 d!130469))

(declare-fun d!130471 () Bool)

(declare-fun e!627624 () Bool)

(assert (=> d!130471 e!627624))

(declare-fun res!733865 () Bool)

(assert (=> d!130471 (=> (not res!733865) (not e!627624))))

(declare-fun lt!492409 () ListLongMap!15385)

(assert (=> d!130471 (= res!733865 (contains!6405 lt!492409 (_1!8712 lt!492353)))))

(declare-fun lt!492412 () List!24080)

(assert (=> d!130471 (= lt!492409 (ListLongMap!15386 lt!492412))))

(declare-fun lt!492410 () Unit!36089)

(declare-fun lt!492411 () Unit!36089)

(assert (=> d!130471 (= lt!492410 lt!492411)))

(assert (=> d!130471 (= (getValueByKey!626 lt!492412 (_1!8712 lt!492353)) (Some!676 (_2!8712 lt!492353)))))

(assert (=> d!130471 (= lt!492411 (lemmaContainsTupThenGetReturnValue!301 lt!492412 (_1!8712 lt!492353) (_2!8712 lt!492353)))))

(assert (=> d!130471 (= lt!492412 (insertStrictlySorted!393 (toList!7708 lt!492350) (_1!8712 lt!492353) (_2!8712 lt!492353)))))

(assert (=> d!130471 (= (+!3343 lt!492350 lt!492353) lt!492409)))

(declare-fun b!1099561 () Bool)

(declare-fun res!733866 () Bool)

(assert (=> b!1099561 (=> (not res!733866) (not e!627624))))

(assert (=> b!1099561 (= res!733866 (= (getValueByKey!626 (toList!7708 lt!492409) (_1!8712 lt!492353)) (Some!676 (_2!8712 lt!492353))))))

(declare-fun b!1099562 () Bool)

(assert (=> b!1099562 (= e!627624 (contains!6406 (toList!7708 lt!492409) lt!492353))))

(assert (= (and d!130471 res!733865) b!1099561))

(assert (= (and b!1099561 res!733866) b!1099562))

(declare-fun m!1019723 () Bool)

(assert (=> d!130471 m!1019723))

(declare-fun m!1019725 () Bool)

(assert (=> d!130471 m!1019725))

(declare-fun m!1019727 () Bool)

(assert (=> d!130471 m!1019727))

(declare-fun m!1019729 () Bool)

(assert (=> d!130471 m!1019729))

(declare-fun m!1019731 () Bool)

(assert (=> b!1099561 m!1019731))

(declare-fun m!1019733 () Bool)

(assert (=> b!1099562 m!1019733))

(assert (=> b!1099494 d!130471))

(declare-fun b!1099573 () Bool)

(declare-fun e!627636 () Bool)

(declare-fun contains!6407 (List!24079 (_ BitVec 64)) Bool)

(assert (=> b!1099573 (= e!627636 (contains!6407 Nil!24076 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099574 () Bool)

(declare-fun e!627633 () Bool)

(declare-fun e!627634 () Bool)

(assert (=> b!1099574 (= e!627633 e!627634)))

(declare-fun res!733874 () Bool)

(assert (=> b!1099574 (=> (not res!733874) (not e!627634))))

(assert (=> b!1099574 (= res!733874 (not e!627636))))

(declare-fun res!733875 () Bool)

(assert (=> b!1099574 (=> (not res!733875) (not e!627636))))

(assert (=> b!1099574 (= res!733875 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099575 () Bool)

(declare-fun e!627635 () Bool)

(assert (=> b!1099575 (= e!627634 e!627635)))

(declare-fun c!108567 () Bool)

(assert (=> b!1099575 (= c!108567 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun d!130473 () Bool)

(declare-fun res!733873 () Bool)

(assert (=> d!130473 (=> res!733873 e!627633)))

(assert (=> d!130473 (= res!733873 (bvsge #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(assert (=> d!130473 (= (arrayNoDuplicates!0 lt!492351 #b00000000000000000000000000000000 Nil!24076) e!627633)))

(declare-fun b!1099576 () Bool)

(declare-fun call!46001 () Bool)

(assert (=> b!1099576 (= e!627635 call!46001)))

(declare-fun b!1099577 () Bool)

(assert (=> b!1099577 (= e!627635 call!46001)))

(declare-fun bm!45998 () Bool)

(assert (=> bm!45998 (= call!46001 (arrayNoDuplicates!0 lt!492351 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108567 (Cons!24075 (select (arr!34269 lt!492351) #b00000000000000000000000000000000) Nil!24076) Nil!24076)))))

(assert (= (and d!130473 (not res!733873)) b!1099574))

(assert (= (and b!1099574 res!733875) b!1099573))

(assert (= (and b!1099574 res!733874) b!1099575))

(assert (= (and b!1099575 c!108567) b!1099576))

(assert (= (and b!1099575 (not c!108567)) b!1099577))

(assert (= (or b!1099576 b!1099577) bm!45998))

(assert (=> b!1099573 m!1019699))

(assert (=> b!1099573 m!1019699))

(declare-fun m!1019735 () Bool)

(assert (=> b!1099573 m!1019735))

(assert (=> b!1099574 m!1019699))

(assert (=> b!1099574 m!1019699))

(assert (=> b!1099574 m!1019707))

(assert (=> b!1099575 m!1019699))

(assert (=> b!1099575 m!1019699))

(assert (=> b!1099575 m!1019707))

(assert (=> bm!45998 m!1019699))

(declare-fun m!1019737 () Bool)

(assert (=> bm!45998 m!1019737))

(assert (=> b!1099495 d!130473))

(declare-fun b!1099578 () Bool)

(declare-fun e!627640 () Bool)

(assert (=> b!1099578 (= e!627640 (contains!6407 Nil!24076 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099579 () Bool)

(declare-fun e!627637 () Bool)

(declare-fun e!627638 () Bool)

(assert (=> b!1099579 (= e!627637 e!627638)))

(declare-fun res!733877 () Bool)

(assert (=> b!1099579 (=> (not res!733877) (not e!627638))))

(assert (=> b!1099579 (= res!733877 (not e!627640))))

(declare-fun res!733878 () Bool)

(assert (=> b!1099579 (=> (not res!733878) (not e!627640))))

(assert (=> b!1099579 (= res!733878 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099580 () Bool)

(declare-fun e!627639 () Bool)

(assert (=> b!1099580 (= e!627638 e!627639)))

(declare-fun c!108568 () Bool)

(assert (=> b!1099580 (= c!108568 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130475 () Bool)

(declare-fun res!733876 () Bool)

(assert (=> d!130475 (=> res!733876 e!627637)))

(assert (=> d!130475 (= res!733876 (bvsge #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(assert (=> d!130475 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24076) e!627637)))

(declare-fun b!1099581 () Bool)

(declare-fun call!46002 () Bool)

(assert (=> b!1099581 (= e!627639 call!46002)))

(declare-fun b!1099582 () Bool)

(assert (=> b!1099582 (= e!627639 call!46002)))

(declare-fun bm!45999 () Bool)

(assert (=> bm!45999 (= call!46002 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108568 (Cons!24075 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000) Nil!24076) Nil!24076)))))

(assert (= (and d!130475 (not res!733876)) b!1099579))

(assert (= (and b!1099579 res!733878) b!1099578))

(assert (= (and b!1099579 res!733877) b!1099580))

(assert (= (and b!1099580 c!108568) b!1099581))

(assert (= (and b!1099580 (not c!108568)) b!1099582))

(assert (= (or b!1099581 b!1099582) bm!45999))

(declare-fun m!1019739 () Bool)

(assert (=> b!1099578 m!1019739))

(assert (=> b!1099578 m!1019739))

(declare-fun m!1019741 () Bool)

(assert (=> b!1099578 m!1019741))

(assert (=> b!1099579 m!1019739))

(assert (=> b!1099579 m!1019739))

(declare-fun m!1019743 () Bool)

(assert (=> b!1099579 m!1019743))

(assert (=> b!1099580 m!1019739))

(assert (=> b!1099580 m!1019739))

(assert (=> b!1099580 m!1019743))

(assert (=> bm!45999 m!1019739))

(declare-fun m!1019745 () Bool)

(assert (=> bm!45999 m!1019745))

(assert (=> b!1099490 d!130475))

(declare-fun d!130477 () Bool)

(assert (=> d!130477 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96710 d!130477))

(declare-fun d!130479 () Bool)

(assert (=> d!130479 (= (array_inv!26258 _keys!1070) (bvsge (size!34806 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96710 d!130479))

(declare-fun d!130481 () Bool)

(assert (=> d!130481 (= (array_inv!26259 _values!874) (bvsge (size!34807 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96710 d!130481))

(declare-fun d!130483 () Bool)

(declare-fun res!733880 () Bool)

(declare-fun e!627641 () Bool)

(assert (=> d!130483 (=> res!733880 e!627641)))

(assert (=> d!130483 (= res!733880 (bvsge #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(assert (=> d!130483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!627641)))

(declare-fun b!1099583 () Bool)

(declare-fun e!627643 () Bool)

(declare-fun call!46003 () Bool)

(assert (=> b!1099583 (= e!627643 call!46003)))

(declare-fun b!1099584 () Bool)

(declare-fun e!627642 () Bool)

(assert (=> b!1099584 (= e!627642 e!627643)))

(declare-fun lt!492414 () (_ BitVec 64))

(assert (=> b!1099584 (= lt!492414 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492413 () Unit!36089)

(assert (=> b!1099584 (= lt!492413 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!492414 #b00000000000000000000000000000000))))

(assert (=> b!1099584 (arrayContainsKey!0 _keys!1070 lt!492414 #b00000000000000000000000000000000)))

(declare-fun lt!492415 () Unit!36089)

(assert (=> b!1099584 (= lt!492415 lt!492413)))

(declare-fun res!733879 () Bool)

(assert (=> b!1099584 (= res!733879 (= (seekEntryOrOpen!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9908 #b00000000000000000000000000000000)))))

(assert (=> b!1099584 (=> (not res!733879) (not e!627643))))

(declare-fun b!1099585 () Bool)

(assert (=> b!1099585 (= e!627641 e!627642)))

(declare-fun c!108569 () Bool)

(assert (=> b!1099585 (= c!108569 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099586 () Bool)

(assert (=> b!1099586 (= e!627642 call!46003)))

(declare-fun bm!46000 () Bool)

(assert (=> bm!46000 (= call!46003 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(assert (= (and d!130483 (not res!733880)) b!1099585))

(assert (= (and b!1099585 c!108569) b!1099584))

(assert (= (and b!1099585 (not c!108569)) b!1099586))

(assert (= (and b!1099584 res!733879) b!1099583))

(assert (= (or b!1099583 b!1099586) bm!46000))

(assert (=> b!1099584 m!1019739))

(declare-fun m!1019747 () Bool)

(assert (=> b!1099584 m!1019747))

(declare-fun m!1019749 () Bool)

(assert (=> b!1099584 m!1019749))

(assert (=> b!1099584 m!1019739))

(declare-fun m!1019751 () Bool)

(assert (=> b!1099584 m!1019751))

(assert (=> b!1099585 m!1019739))

(assert (=> b!1099585 m!1019739))

(assert (=> b!1099585 m!1019743))

(declare-fun m!1019753 () Bool)

(assert (=> bm!46000 m!1019753))

(assert (=> b!1099492 d!130483))

(declare-fun d!130485 () Bool)

(declare-fun res!733885 () Bool)

(declare-fun e!627648 () Bool)

(assert (=> d!130485 (=> res!733885 e!627648)))

(assert (=> d!130485 (= res!733885 (= (select (arr!34269 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130485 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!627648)))

(declare-fun b!1099591 () Bool)

(declare-fun e!627649 () Bool)

(assert (=> b!1099591 (= e!627648 e!627649)))

(declare-fun res!733886 () Bool)

(assert (=> b!1099591 (=> (not res!733886) (not e!627649))))

(assert (=> b!1099591 (= res!733886 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34806 _keys!1070)))))

(declare-fun b!1099592 () Bool)

(assert (=> b!1099592 (= e!627649 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130485 (not res!733885)) b!1099591))

(assert (= (and b!1099591 res!733886) b!1099592))

(assert (=> d!130485 m!1019739))

(declare-fun m!1019755 () Bool)

(assert (=> b!1099592 m!1019755))

(assert (=> b!1099497 d!130485))

(declare-fun b!1099635 () Bool)

(declare-fun e!627676 () Bool)

(declare-fun e!627688 () Bool)

(assert (=> b!1099635 (= e!627676 e!627688)))

(declare-fun res!733910 () Bool)

(assert (=> b!1099635 (=> (not res!733910) (not e!627688))))

(declare-fun lt!492469 () ListLongMap!15385)

(assert (=> b!1099635 (= res!733910 (contains!6405 lt!492469 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099635 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun b!1099636 () Bool)

(declare-fun e!627680 () Unit!36089)

(declare-fun lt!492470 () Unit!36089)

(assert (=> b!1099636 (= e!627680 lt!492470)))

(declare-fun lt!492467 () ListLongMap!15385)

(assert (=> b!1099636 (= lt!492467 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492473 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492473 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492464 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492464 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492480 () Unit!36089)

(declare-fun addStillContains!665 (ListLongMap!15385 (_ BitVec 64) V!41355 (_ BitVec 64)) Unit!36089)

(assert (=> b!1099636 (= lt!492480 (addStillContains!665 lt!492467 lt!492473 zeroValue!831 lt!492464))))

(assert (=> b!1099636 (contains!6405 (+!3343 lt!492467 (tuple2!17405 lt!492473 zeroValue!831)) lt!492464)))

(declare-fun lt!492475 () Unit!36089)

(assert (=> b!1099636 (= lt!492475 lt!492480)))

(declare-fun lt!492476 () ListLongMap!15385)

(assert (=> b!1099636 (= lt!492476 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492463 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492463 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492471 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492471 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492468 () Unit!36089)

(declare-fun addApplyDifferent!517 (ListLongMap!15385 (_ BitVec 64) V!41355 (_ BitVec 64)) Unit!36089)

(assert (=> b!1099636 (= lt!492468 (addApplyDifferent!517 lt!492476 lt!492463 minValue!831 lt!492471))))

(declare-fun apply!983 (ListLongMap!15385 (_ BitVec 64)) V!41355)

(assert (=> b!1099636 (= (apply!983 (+!3343 lt!492476 (tuple2!17405 lt!492463 minValue!831)) lt!492471) (apply!983 lt!492476 lt!492471))))

(declare-fun lt!492460 () Unit!36089)

(assert (=> b!1099636 (= lt!492460 lt!492468)))

(declare-fun lt!492462 () ListLongMap!15385)

(assert (=> b!1099636 (= lt!492462 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492478 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492478 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492461 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492461 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492479 () Unit!36089)

(assert (=> b!1099636 (= lt!492479 (addApplyDifferent!517 lt!492462 lt!492478 zeroValue!831 lt!492461))))

(assert (=> b!1099636 (= (apply!983 (+!3343 lt!492462 (tuple2!17405 lt!492478 zeroValue!831)) lt!492461) (apply!983 lt!492462 lt!492461))))

(declare-fun lt!492472 () Unit!36089)

(assert (=> b!1099636 (= lt!492472 lt!492479)))

(declare-fun lt!492466 () ListLongMap!15385)

(assert (=> b!1099636 (= lt!492466 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492477 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492477 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492474 () (_ BitVec 64))

(assert (=> b!1099636 (= lt!492474 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1099636 (= lt!492470 (addApplyDifferent!517 lt!492466 lt!492477 minValue!831 lt!492474))))

(assert (=> b!1099636 (= (apply!983 (+!3343 lt!492466 (tuple2!17405 lt!492477 minValue!831)) lt!492474) (apply!983 lt!492466 lt!492474))))

(declare-fun b!1099637 () Bool)

(declare-fun e!627684 () Bool)

(assert (=> b!1099637 (= e!627684 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099638 () Bool)

(declare-fun e!627681 () Bool)

(assert (=> b!1099638 (= e!627681 (= (apply!983 lt!492469 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1099639 () Bool)

(declare-fun e!627678 () ListLongMap!15385)

(declare-fun call!46018 () ListLongMap!15385)

(assert (=> b!1099639 (= e!627678 call!46018)))

(declare-fun bm!46015 () Bool)

(declare-fun call!46020 () Bool)

(assert (=> bm!46015 (= call!46020 (contains!6405 lt!492469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46016 () Bool)

(declare-fun call!46023 () Bool)

(assert (=> bm!46016 (= call!46023 (contains!6405 lt!492469 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46017 () Bool)

(declare-fun call!46024 () ListLongMap!15385)

(assert (=> bm!46017 (= call!46018 call!46024)))

(declare-fun d!130487 () Bool)

(declare-fun e!627682 () Bool)

(assert (=> d!130487 e!627682))

(declare-fun res!733907 () Bool)

(assert (=> d!130487 (=> (not res!733907) (not e!627682))))

(assert (=> d!130487 (= res!733907 (or (bvsge #b00000000000000000000000000000000 (size!34806 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))))

(declare-fun lt!492465 () ListLongMap!15385)

(assert (=> d!130487 (= lt!492469 lt!492465)))

(declare-fun lt!492481 () Unit!36089)

(assert (=> d!130487 (= lt!492481 e!627680)))

(declare-fun c!108585 () Bool)

(declare-fun e!627687 () Bool)

(assert (=> d!130487 (= c!108585 e!627687)))

(declare-fun res!733905 () Bool)

(assert (=> d!130487 (=> (not res!733905) (not e!627687))))

(assert (=> d!130487 (= res!733905 (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun e!627677 () ListLongMap!15385)

(assert (=> d!130487 (= lt!492465 e!627677)))

(declare-fun c!108584 () Bool)

(assert (=> d!130487 (= c!108584 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130487 (validMask!0 mask!1414)))

(assert (=> d!130487 (= (getCurrentListMap!4399 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492469)))

(declare-fun bm!46018 () Bool)

(declare-fun call!46019 () ListLongMap!15385)

(assert (=> bm!46018 (= call!46024 call!46019)))

(declare-fun b!1099640 () Bool)

(declare-fun call!46022 () ListLongMap!15385)

(assert (=> b!1099640 (= e!627678 call!46022)))

(declare-fun b!1099641 () Bool)

(declare-fun get!17645 (ValueCell!12876 V!41355) V!41355)

(assert (=> b!1099641 (= e!627688 (= (apply!983 lt!492469 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)) (get!17645 (select (arr!34270 _values!874) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099641 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34807 _values!874)))))

(assert (=> b!1099641 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun b!1099642 () Bool)

(declare-fun c!108583 () Bool)

(assert (=> b!1099642 (= c!108583 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627679 () ListLongMap!15385)

(assert (=> b!1099642 (= e!627679 e!627678)))

(declare-fun b!1099643 () Bool)

(assert (=> b!1099643 (= e!627679 call!46022)))

(declare-fun b!1099644 () Bool)

(declare-fun e!627683 () Bool)

(assert (=> b!1099644 (= e!627683 e!627681)))

(declare-fun res!733909 () Bool)

(assert (=> b!1099644 (= res!733909 call!46020)))

(assert (=> b!1099644 (=> (not res!733909) (not e!627681))))

(declare-fun b!1099645 () Bool)

(declare-fun res!733906 () Bool)

(assert (=> b!1099645 (=> (not res!733906) (not e!627682))))

(assert (=> b!1099645 (= res!733906 e!627676)))

(declare-fun res!733911 () Bool)

(assert (=> b!1099645 (=> res!733911 e!627676)))

(assert (=> b!1099645 (= res!733911 (not e!627684))))

(declare-fun res!733908 () Bool)

(assert (=> b!1099645 (=> (not res!733908) (not e!627684))))

(assert (=> b!1099645 (= res!733908 (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun b!1099646 () Bool)

(declare-fun e!627685 () Bool)

(assert (=> b!1099646 (= e!627685 (= (apply!983 lt!492469 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1099647 () Bool)

(declare-fun e!627686 () Bool)

(assert (=> b!1099647 (= e!627686 e!627685)))

(declare-fun res!733913 () Bool)

(assert (=> b!1099647 (= res!733913 call!46023)))

(assert (=> b!1099647 (=> (not res!733913) (not e!627685))))

(declare-fun call!46021 () ListLongMap!15385)

(declare-fun c!108582 () Bool)

(declare-fun bm!46019 () Bool)

(assert (=> bm!46019 (= call!46021 (+!3343 (ite c!108584 call!46019 (ite c!108582 call!46024 call!46018)) (ite (or c!108584 c!108582) (tuple2!17405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1099648 () Bool)

(assert (=> b!1099648 (= e!627677 (+!3343 call!46021 (tuple2!17405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun bm!46020 () Bool)

(assert (=> bm!46020 (= call!46022 call!46021)))

(declare-fun b!1099649 () Bool)

(assert (=> b!1099649 (= e!627677 e!627679)))

(assert (=> b!1099649 (= c!108582 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099650 () Bool)

(assert (=> b!1099650 (= e!627683 (not call!46020))))

(declare-fun b!1099651 () Bool)

(assert (=> b!1099651 (= e!627682 e!627686)))

(declare-fun c!108586 () Bool)

(assert (=> b!1099651 (= c!108586 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46021 () Bool)

(assert (=> bm!46021 (= call!46019 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099652 () Bool)

(assert (=> b!1099652 (= e!627687 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099653 () Bool)

(declare-fun res!733912 () Bool)

(assert (=> b!1099653 (=> (not res!733912) (not e!627682))))

(assert (=> b!1099653 (= res!733912 e!627683)))

(declare-fun c!108587 () Bool)

(assert (=> b!1099653 (= c!108587 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1099654 () Bool)

(assert (=> b!1099654 (= e!627686 (not call!46023))))

(declare-fun b!1099655 () Bool)

(declare-fun Unit!36093 () Unit!36089)

(assert (=> b!1099655 (= e!627680 Unit!36093)))

(assert (= (and d!130487 c!108584) b!1099648))

(assert (= (and d!130487 (not c!108584)) b!1099649))

(assert (= (and b!1099649 c!108582) b!1099643))

(assert (= (and b!1099649 (not c!108582)) b!1099642))

(assert (= (and b!1099642 c!108583) b!1099640))

(assert (= (and b!1099642 (not c!108583)) b!1099639))

(assert (= (or b!1099640 b!1099639) bm!46017))

(assert (= (or b!1099643 bm!46017) bm!46018))

(assert (= (or b!1099643 b!1099640) bm!46020))

(assert (= (or b!1099648 bm!46018) bm!46021))

(assert (= (or b!1099648 bm!46020) bm!46019))

(assert (= (and d!130487 res!733905) b!1099652))

(assert (= (and d!130487 c!108585) b!1099636))

(assert (= (and d!130487 (not c!108585)) b!1099655))

(assert (= (and d!130487 res!733907) b!1099645))

(assert (= (and b!1099645 res!733908) b!1099637))

(assert (= (and b!1099645 (not res!733911)) b!1099635))

(assert (= (and b!1099635 res!733910) b!1099641))

(assert (= (and b!1099645 res!733906) b!1099653))

(assert (= (and b!1099653 c!108587) b!1099644))

(assert (= (and b!1099653 (not c!108587)) b!1099650))

(assert (= (and b!1099644 res!733909) b!1099638))

(assert (= (or b!1099644 b!1099650) bm!46015))

(assert (= (and b!1099653 res!733912) b!1099651))

(assert (= (and b!1099651 c!108586) b!1099647))

(assert (= (and b!1099651 (not c!108586)) b!1099654))

(assert (= (and b!1099647 res!733913) b!1099646))

(assert (= (or b!1099647 b!1099654) bm!46016))

(declare-fun b_lambda!17965 () Bool)

(assert (=> (not b_lambda!17965) (not b!1099641)))

(assert (=> b!1099641 t!34252))

(declare-fun b_and!37001 () Bool)

(assert (= b_and!36995 (and (=> t!34252 result!16515) b_and!37001)))

(assert (=> bm!46021 m!1019625))

(declare-fun m!1019757 () Bool)

(assert (=> bm!46016 m!1019757))

(assert (=> d!130487 m!1019643))

(declare-fun m!1019759 () Bool)

(assert (=> b!1099641 m!1019759))

(assert (=> b!1099641 m!1019607))

(declare-fun m!1019761 () Bool)

(assert (=> b!1099641 m!1019761))

(assert (=> b!1099641 m!1019607))

(assert (=> b!1099641 m!1019739))

(assert (=> b!1099641 m!1019739))

(declare-fun m!1019763 () Bool)

(assert (=> b!1099641 m!1019763))

(assert (=> b!1099641 m!1019759))

(assert (=> b!1099652 m!1019739))

(assert (=> b!1099652 m!1019739))

(assert (=> b!1099652 m!1019743))

(assert (=> b!1099637 m!1019739))

(assert (=> b!1099637 m!1019739))

(assert (=> b!1099637 m!1019743))

(assert (=> b!1099635 m!1019739))

(assert (=> b!1099635 m!1019739))

(declare-fun m!1019765 () Bool)

(assert (=> b!1099635 m!1019765))

(declare-fun m!1019767 () Bool)

(assert (=> bm!46019 m!1019767))

(declare-fun m!1019769 () Bool)

(assert (=> b!1099638 m!1019769))

(declare-fun m!1019771 () Bool)

(assert (=> b!1099646 m!1019771))

(declare-fun m!1019773 () Bool)

(assert (=> b!1099648 m!1019773))

(declare-fun m!1019775 () Bool)

(assert (=> b!1099636 m!1019775))

(declare-fun m!1019777 () Bool)

(assert (=> b!1099636 m!1019777))

(declare-fun m!1019779 () Bool)

(assert (=> b!1099636 m!1019779))

(assert (=> b!1099636 m!1019739))

(assert (=> b!1099636 m!1019625))

(assert (=> b!1099636 m!1019775))

(declare-fun m!1019781 () Bool)

(assert (=> b!1099636 m!1019781))

(declare-fun m!1019783 () Bool)

(assert (=> b!1099636 m!1019783))

(declare-fun m!1019785 () Bool)

(assert (=> b!1099636 m!1019785))

(declare-fun m!1019787 () Bool)

(assert (=> b!1099636 m!1019787))

(declare-fun m!1019789 () Bool)

(assert (=> b!1099636 m!1019789))

(declare-fun m!1019791 () Bool)

(assert (=> b!1099636 m!1019791))

(declare-fun m!1019793 () Bool)

(assert (=> b!1099636 m!1019793))

(declare-fun m!1019795 () Bool)

(assert (=> b!1099636 m!1019795))

(declare-fun m!1019797 () Bool)

(assert (=> b!1099636 m!1019797))

(assert (=> b!1099636 m!1019793))

(declare-fun m!1019799 () Bool)

(assert (=> b!1099636 m!1019799))

(assert (=> b!1099636 m!1019791))

(declare-fun m!1019801 () Bool)

(assert (=> b!1099636 m!1019801))

(declare-fun m!1019803 () Bool)

(assert (=> b!1099636 m!1019803))

(assert (=> b!1099636 m!1019777))

(declare-fun m!1019805 () Bool)

(assert (=> bm!46015 m!1019805))

(assert (=> b!1099497 d!130487))

(declare-fun d!130489 () Bool)

(declare-fun lt!492484 () ListLongMap!15385)

(assert (=> d!130489 (not (contains!6405 lt!492484 k0!904))))

(declare-fun removeStrictlySorted!83 (List!24080 (_ BitVec 64)) List!24080)

(assert (=> d!130489 (= lt!492484 (ListLongMap!15386 (removeStrictlySorted!83 (toList!7708 lt!492349) k0!904)))))

(assert (=> d!130489 (= (-!950 lt!492349 k0!904) lt!492484)))

(declare-fun bs!32289 () Bool)

(assert (= bs!32289 d!130489))

(declare-fun m!1019807 () Bool)

(assert (=> bs!32289 m!1019807))

(declare-fun m!1019809 () Bool)

(assert (=> bs!32289 m!1019809))

(assert (=> b!1099497 d!130489))

(declare-fun b!1099656 () Bool)

(declare-fun e!627689 () Bool)

(declare-fun e!627701 () Bool)

(assert (=> b!1099656 (= e!627689 e!627701)))

(declare-fun res!733919 () Bool)

(assert (=> b!1099656 (=> (not res!733919) (not e!627701))))

(declare-fun lt!492494 () ListLongMap!15385)

(assert (=> b!1099656 (= res!733919 (contains!6405 lt!492494 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(assert (=> b!1099656 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun b!1099657 () Bool)

(declare-fun e!627693 () Unit!36089)

(declare-fun lt!492495 () Unit!36089)

(assert (=> b!1099657 (= e!627693 lt!492495)))

(declare-fun lt!492492 () ListLongMap!15385)

(assert (=> b!1099657 (= lt!492492 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492498 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492498 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492489 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492489 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(declare-fun lt!492505 () Unit!36089)

(assert (=> b!1099657 (= lt!492505 (addStillContains!665 lt!492492 lt!492498 zeroValue!831 lt!492489))))

(assert (=> b!1099657 (contains!6405 (+!3343 lt!492492 (tuple2!17405 lt!492498 zeroValue!831)) lt!492489)))

(declare-fun lt!492500 () Unit!36089)

(assert (=> b!1099657 (= lt!492500 lt!492505)))

(declare-fun lt!492501 () ListLongMap!15385)

(assert (=> b!1099657 (= lt!492501 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492488 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492488 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492496 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492496 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(declare-fun lt!492493 () Unit!36089)

(assert (=> b!1099657 (= lt!492493 (addApplyDifferent!517 lt!492501 lt!492488 minValue!831 lt!492496))))

(assert (=> b!1099657 (= (apply!983 (+!3343 lt!492501 (tuple2!17405 lt!492488 minValue!831)) lt!492496) (apply!983 lt!492501 lt!492496))))

(declare-fun lt!492485 () Unit!36089)

(assert (=> b!1099657 (= lt!492485 lt!492493)))

(declare-fun lt!492487 () ListLongMap!15385)

(assert (=> b!1099657 (= lt!492487 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492503 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492503 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492486 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492486 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(declare-fun lt!492504 () Unit!36089)

(assert (=> b!1099657 (= lt!492504 (addApplyDifferent!517 lt!492487 lt!492503 zeroValue!831 lt!492486))))

(assert (=> b!1099657 (= (apply!983 (+!3343 lt!492487 (tuple2!17405 lt!492503 zeroValue!831)) lt!492486) (apply!983 lt!492487 lt!492486))))

(declare-fun lt!492497 () Unit!36089)

(assert (=> b!1099657 (= lt!492497 lt!492504)))

(declare-fun lt!492491 () ListLongMap!15385)

(assert (=> b!1099657 (= lt!492491 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492502 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492502 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492499 () (_ BitVec 64))

(assert (=> b!1099657 (= lt!492499 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(assert (=> b!1099657 (= lt!492495 (addApplyDifferent!517 lt!492491 lt!492502 minValue!831 lt!492499))))

(assert (=> b!1099657 (= (apply!983 (+!3343 lt!492491 (tuple2!17405 lt!492502 minValue!831)) lt!492499) (apply!983 lt!492491 lt!492499))))

(declare-fun b!1099658 () Bool)

(declare-fun e!627697 () Bool)

(assert (=> b!1099658 (= e!627697 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099659 () Bool)

(declare-fun e!627694 () Bool)

(assert (=> b!1099659 (= e!627694 (= (apply!983 lt!492494 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1099660 () Bool)

(declare-fun e!627691 () ListLongMap!15385)

(declare-fun call!46025 () ListLongMap!15385)

(assert (=> b!1099660 (= e!627691 call!46025)))

(declare-fun bm!46022 () Bool)

(declare-fun call!46027 () Bool)

(assert (=> bm!46022 (= call!46027 (contains!6405 lt!492494 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46023 () Bool)

(declare-fun call!46030 () Bool)

(assert (=> bm!46023 (= call!46030 (contains!6405 lt!492494 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46024 () Bool)

(declare-fun call!46031 () ListLongMap!15385)

(assert (=> bm!46024 (= call!46025 call!46031)))

(declare-fun d!130491 () Bool)

(declare-fun e!627695 () Bool)

(assert (=> d!130491 e!627695))

(declare-fun res!733916 () Bool)

(assert (=> d!130491 (=> (not res!733916) (not e!627695))))

(assert (=> d!130491 (= res!733916 (or (bvsge #b00000000000000000000000000000000 (size!34806 lt!492351)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))))

(declare-fun lt!492490 () ListLongMap!15385)

(assert (=> d!130491 (= lt!492494 lt!492490)))

(declare-fun lt!492506 () Unit!36089)

(assert (=> d!130491 (= lt!492506 e!627693)))

(declare-fun c!108591 () Bool)

(declare-fun e!627700 () Bool)

(assert (=> d!130491 (= c!108591 e!627700)))

(declare-fun res!733914 () Bool)

(assert (=> d!130491 (=> (not res!733914) (not e!627700))))

(assert (=> d!130491 (= res!733914 (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun e!627690 () ListLongMap!15385)

(assert (=> d!130491 (= lt!492490 e!627690)))

(declare-fun c!108590 () Bool)

(assert (=> d!130491 (= c!108590 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130491 (validMask!0 mask!1414)))

(assert (=> d!130491 (= (getCurrentListMap!4399 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492494)))

(declare-fun bm!46025 () Bool)

(declare-fun call!46026 () ListLongMap!15385)

(assert (=> bm!46025 (= call!46031 call!46026)))

(declare-fun b!1099661 () Bool)

(declare-fun call!46029 () ListLongMap!15385)

(assert (=> b!1099661 (= e!627691 call!46029)))

(declare-fun b!1099662 () Bool)

(assert (=> b!1099662 (= e!627701 (= (apply!983 lt!492494 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)) (get!17645 (select (arr!34270 lt!492356) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34807 lt!492356)))))

(assert (=> b!1099662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun b!1099663 () Bool)

(declare-fun c!108589 () Bool)

(assert (=> b!1099663 (= c!108589 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627692 () ListLongMap!15385)

(assert (=> b!1099663 (= e!627692 e!627691)))

(declare-fun b!1099664 () Bool)

(assert (=> b!1099664 (= e!627692 call!46029)))

(declare-fun b!1099665 () Bool)

(declare-fun e!627696 () Bool)

(assert (=> b!1099665 (= e!627696 e!627694)))

(declare-fun res!733918 () Bool)

(assert (=> b!1099665 (= res!733918 call!46027)))

(assert (=> b!1099665 (=> (not res!733918) (not e!627694))))

(declare-fun b!1099666 () Bool)

(declare-fun res!733915 () Bool)

(assert (=> b!1099666 (=> (not res!733915) (not e!627695))))

(assert (=> b!1099666 (= res!733915 e!627689)))

(declare-fun res!733920 () Bool)

(assert (=> b!1099666 (=> res!733920 e!627689)))

(assert (=> b!1099666 (= res!733920 (not e!627697))))

(declare-fun res!733917 () Bool)

(assert (=> b!1099666 (=> (not res!733917) (not e!627697))))

(assert (=> b!1099666 (= res!733917 (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun b!1099667 () Bool)

(declare-fun e!627698 () Bool)

(assert (=> b!1099667 (= e!627698 (= (apply!983 lt!492494 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1099668 () Bool)

(declare-fun e!627699 () Bool)

(assert (=> b!1099668 (= e!627699 e!627698)))

(declare-fun res!733922 () Bool)

(assert (=> b!1099668 (= res!733922 call!46030)))

(assert (=> b!1099668 (=> (not res!733922) (not e!627698))))

(declare-fun bm!46026 () Bool)

(declare-fun c!108588 () Bool)

(declare-fun call!46028 () ListLongMap!15385)

(assert (=> bm!46026 (= call!46028 (+!3343 (ite c!108590 call!46026 (ite c!108588 call!46031 call!46025)) (ite (or c!108590 c!108588) (tuple2!17405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1099669 () Bool)

(assert (=> b!1099669 (= e!627690 (+!3343 call!46028 (tuple2!17405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun bm!46027 () Bool)

(assert (=> bm!46027 (= call!46029 call!46028)))

(declare-fun b!1099670 () Bool)

(assert (=> b!1099670 (= e!627690 e!627692)))

(assert (=> b!1099670 (= c!108588 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099671 () Bool)

(assert (=> b!1099671 (= e!627696 (not call!46027))))

(declare-fun b!1099672 () Bool)

(assert (=> b!1099672 (= e!627695 e!627699)))

(declare-fun c!108592 () Bool)

(assert (=> b!1099672 (= c!108592 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46028 () Bool)

(assert (=> bm!46028 (= call!46026 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099673 () Bool)

(assert (=> b!1099673 (= e!627700 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099674 () Bool)

(declare-fun res!733921 () Bool)

(assert (=> b!1099674 (=> (not res!733921) (not e!627695))))

(assert (=> b!1099674 (= res!733921 e!627696)))

(declare-fun c!108593 () Bool)

(assert (=> b!1099674 (= c!108593 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1099675 () Bool)

(assert (=> b!1099675 (= e!627699 (not call!46030))))

(declare-fun b!1099676 () Bool)

(declare-fun Unit!36094 () Unit!36089)

(assert (=> b!1099676 (= e!627693 Unit!36094)))

(assert (= (and d!130491 c!108590) b!1099669))

(assert (= (and d!130491 (not c!108590)) b!1099670))

(assert (= (and b!1099670 c!108588) b!1099664))

(assert (= (and b!1099670 (not c!108588)) b!1099663))

(assert (= (and b!1099663 c!108589) b!1099661))

(assert (= (and b!1099663 (not c!108589)) b!1099660))

(assert (= (or b!1099661 b!1099660) bm!46024))

(assert (= (or b!1099664 bm!46024) bm!46025))

(assert (= (or b!1099664 b!1099661) bm!46027))

(assert (= (or b!1099669 bm!46025) bm!46028))

(assert (= (or b!1099669 bm!46027) bm!46026))

(assert (= (and d!130491 res!733914) b!1099673))

(assert (= (and d!130491 c!108591) b!1099657))

(assert (= (and d!130491 (not c!108591)) b!1099676))

(assert (= (and d!130491 res!733916) b!1099666))

(assert (= (and b!1099666 res!733917) b!1099658))

(assert (= (and b!1099666 (not res!733920)) b!1099656))

(assert (= (and b!1099656 res!733919) b!1099662))

(assert (= (and b!1099666 res!733915) b!1099674))

(assert (= (and b!1099674 c!108593) b!1099665))

(assert (= (and b!1099674 (not c!108593)) b!1099671))

(assert (= (and b!1099665 res!733918) b!1099659))

(assert (= (or b!1099665 b!1099671) bm!46022))

(assert (= (and b!1099674 res!733921) b!1099672))

(assert (= (and b!1099672 c!108592) b!1099668))

(assert (= (and b!1099672 (not c!108592)) b!1099675))

(assert (= (and b!1099668 res!733922) b!1099667))

(assert (= (or b!1099668 b!1099675) bm!46023))

(declare-fun b_lambda!17967 () Bool)

(assert (=> (not b_lambda!17967) (not b!1099662)))

(assert (=> b!1099662 t!34252))

(declare-fun b_and!37003 () Bool)

(assert (= b_and!37001 (and (=> t!34252 result!16515) b_and!37003)))

(assert (=> bm!46028 m!1019609))

(declare-fun m!1019811 () Bool)

(assert (=> bm!46023 m!1019811))

(assert (=> d!130491 m!1019643))

(declare-fun m!1019813 () Bool)

(assert (=> b!1099662 m!1019813))

(assert (=> b!1099662 m!1019607))

(declare-fun m!1019815 () Bool)

(assert (=> b!1099662 m!1019815))

(assert (=> b!1099662 m!1019607))

(assert (=> b!1099662 m!1019699))

(assert (=> b!1099662 m!1019699))

(declare-fun m!1019817 () Bool)

(assert (=> b!1099662 m!1019817))

(assert (=> b!1099662 m!1019813))

(assert (=> b!1099673 m!1019699))

(assert (=> b!1099673 m!1019699))

(assert (=> b!1099673 m!1019707))

(assert (=> b!1099658 m!1019699))

(assert (=> b!1099658 m!1019699))

(assert (=> b!1099658 m!1019707))

(assert (=> b!1099656 m!1019699))

(assert (=> b!1099656 m!1019699))

(declare-fun m!1019819 () Bool)

(assert (=> b!1099656 m!1019819))

(declare-fun m!1019821 () Bool)

(assert (=> bm!46026 m!1019821))

(declare-fun m!1019823 () Bool)

(assert (=> b!1099659 m!1019823))

(declare-fun m!1019825 () Bool)

(assert (=> b!1099667 m!1019825))

(declare-fun m!1019827 () Bool)

(assert (=> b!1099669 m!1019827))

(declare-fun m!1019829 () Bool)

(assert (=> b!1099657 m!1019829))

(declare-fun m!1019831 () Bool)

(assert (=> b!1099657 m!1019831))

(declare-fun m!1019833 () Bool)

(assert (=> b!1099657 m!1019833))

(assert (=> b!1099657 m!1019699))

(assert (=> b!1099657 m!1019609))

(assert (=> b!1099657 m!1019829))

(declare-fun m!1019835 () Bool)

(assert (=> b!1099657 m!1019835))

(declare-fun m!1019837 () Bool)

(assert (=> b!1099657 m!1019837))

(declare-fun m!1019839 () Bool)

(assert (=> b!1099657 m!1019839))

(declare-fun m!1019841 () Bool)

(assert (=> b!1099657 m!1019841))

(declare-fun m!1019843 () Bool)

(assert (=> b!1099657 m!1019843))

(declare-fun m!1019845 () Bool)

(assert (=> b!1099657 m!1019845))

(declare-fun m!1019847 () Bool)

(assert (=> b!1099657 m!1019847))

(declare-fun m!1019849 () Bool)

(assert (=> b!1099657 m!1019849))

(declare-fun m!1019851 () Bool)

(assert (=> b!1099657 m!1019851))

(assert (=> b!1099657 m!1019847))

(declare-fun m!1019853 () Bool)

(assert (=> b!1099657 m!1019853))

(assert (=> b!1099657 m!1019845))

(declare-fun m!1019855 () Bool)

(assert (=> b!1099657 m!1019855))

(declare-fun m!1019857 () Bool)

(assert (=> b!1099657 m!1019857))

(assert (=> b!1099657 m!1019831))

(declare-fun m!1019859 () Bool)

(assert (=> bm!46022 m!1019859))

(assert (=> b!1099497 d!130491))

(declare-fun b!1099701 () Bool)

(declare-fun res!733933 () Bool)

(declare-fun e!627722 () Bool)

(assert (=> b!1099701 (=> (not res!733933) (not e!627722))))

(declare-fun lt!492521 () ListLongMap!15385)

(assert (=> b!1099701 (= res!733933 (not (contains!6405 lt!492521 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1099702 () Bool)

(declare-fun lt!492526 () Unit!36089)

(declare-fun lt!492524 () Unit!36089)

(assert (=> b!1099702 (= lt!492526 lt!492524)))

(declare-fun lt!492525 () (_ BitVec 64))

(declare-fun lt!492527 () (_ BitVec 64))

(declare-fun lt!492522 () ListLongMap!15385)

(declare-fun lt!492523 () V!41355)

(assert (=> b!1099702 (not (contains!6405 (+!3343 lt!492522 (tuple2!17405 lt!492527 lt!492523)) lt!492525))))

(declare-fun addStillNotContains!278 (ListLongMap!15385 (_ BitVec 64) V!41355 (_ BitVec 64)) Unit!36089)

(assert (=> b!1099702 (= lt!492524 (addStillNotContains!278 lt!492522 lt!492527 lt!492523 lt!492525))))

(assert (=> b!1099702 (= lt!492525 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1099702 (= lt!492523 (get!17645 (select (arr!34270 _values!874) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1099702 (= lt!492527 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!46034 () ListLongMap!15385)

(assert (=> b!1099702 (= lt!492522 call!46034)))

(declare-fun e!627716 () ListLongMap!15385)

(assert (=> b!1099702 (= e!627716 (+!3343 call!46034 (tuple2!17405 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000) (get!17645 (select (arr!34270 _values!874) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!46031 () Bool)

(assert (=> bm!46031 (= call!46034 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1099703 () Bool)

(declare-fun e!627719 () ListLongMap!15385)

(assert (=> b!1099703 (= e!627719 (ListLongMap!15386 Nil!24077))))

(declare-fun b!1099704 () Bool)

(assert (=> b!1099704 (= e!627716 call!46034)))

(declare-fun b!1099705 () Bool)

(declare-fun e!627718 () Bool)

(assert (=> b!1099705 (= e!627722 e!627718)))

(declare-fun c!108604 () Bool)

(declare-fun e!627717 () Bool)

(assert (=> b!1099705 (= c!108604 e!627717)))

(declare-fun res!733932 () Bool)

(assert (=> b!1099705 (=> (not res!733932) (not e!627717))))

(assert (=> b!1099705 (= res!733932 (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun e!627720 () Bool)

(declare-fun b!1099706 () Bool)

(assert (=> b!1099706 (= e!627720 (= lt!492521 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun d!130493 () Bool)

(assert (=> d!130493 e!627722))

(declare-fun res!733931 () Bool)

(assert (=> d!130493 (=> (not res!733931) (not e!627722))))

(assert (=> d!130493 (= res!733931 (not (contains!6405 lt!492521 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130493 (= lt!492521 e!627719)))

(declare-fun c!108603 () Bool)

(assert (=> d!130493 (= c!108603 (bvsge #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(assert (=> d!130493 (validMask!0 mask!1414)))

(assert (=> d!130493 (= (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492521)))

(declare-fun b!1099707 () Bool)

(assert (=> b!1099707 (= e!627717 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099707 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1099708 () Bool)

(declare-fun e!627721 () Bool)

(assert (=> b!1099708 (= e!627718 e!627721)))

(assert (=> b!1099708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun res!733934 () Bool)

(assert (=> b!1099708 (= res!733934 (contains!6405 lt!492521 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099708 (=> (not res!733934) (not e!627721))))

(declare-fun b!1099709 () Bool)

(assert (=> b!1099709 (= e!627719 e!627716)))

(declare-fun c!108605 () Bool)

(assert (=> b!1099709 (= c!108605 (validKeyInArray!0 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099710 () Bool)

(assert (=> b!1099710 (= e!627718 e!627720)))

(declare-fun c!108602 () Bool)

(assert (=> b!1099710 (= c!108602 (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(declare-fun b!1099711 () Bool)

(assert (=> b!1099711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(assert (=> b!1099711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34807 _values!874)))))

(assert (=> b!1099711 (= e!627721 (= (apply!983 lt!492521 (select (arr!34269 _keys!1070) #b00000000000000000000000000000000)) (get!17645 (select (arr!34270 _values!874) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1099712 () Bool)

(declare-fun isEmpty!969 (ListLongMap!15385) Bool)

(assert (=> b!1099712 (= e!627720 (isEmpty!969 lt!492521))))

(assert (= (and d!130493 c!108603) b!1099703))

(assert (= (and d!130493 (not c!108603)) b!1099709))

(assert (= (and b!1099709 c!108605) b!1099702))

(assert (= (and b!1099709 (not c!108605)) b!1099704))

(assert (= (or b!1099702 b!1099704) bm!46031))

(assert (= (and d!130493 res!733931) b!1099701))

(assert (= (and b!1099701 res!733933) b!1099705))

(assert (= (and b!1099705 res!733932) b!1099707))

(assert (= (and b!1099705 c!108604) b!1099708))

(assert (= (and b!1099705 (not c!108604)) b!1099710))

(assert (= (and b!1099708 res!733934) b!1099711))

(assert (= (and b!1099710 c!108602) b!1099706))

(assert (= (and b!1099710 (not c!108602)) b!1099712))

(declare-fun b_lambda!17969 () Bool)

(assert (=> (not b_lambda!17969) (not b!1099702)))

(assert (=> b!1099702 t!34252))

(declare-fun b_and!37005 () Bool)

(assert (= b_and!37003 (and (=> t!34252 result!16515) b_and!37005)))

(declare-fun b_lambda!17971 () Bool)

(assert (=> (not b_lambda!17971) (not b!1099711)))

(assert (=> b!1099711 t!34252))

(declare-fun b_and!37007 () Bool)

(assert (= b_and!37005 (and (=> t!34252 result!16515) b_and!37007)))

(assert (=> b!1099709 m!1019739))

(assert (=> b!1099709 m!1019739))

(assert (=> b!1099709 m!1019743))

(declare-fun m!1019861 () Bool)

(assert (=> b!1099712 m!1019861))

(declare-fun m!1019863 () Bool)

(assert (=> b!1099706 m!1019863))

(declare-fun m!1019865 () Bool)

(assert (=> b!1099701 m!1019865))

(assert (=> b!1099711 m!1019739))

(assert (=> b!1099711 m!1019739))

(declare-fun m!1019867 () Bool)

(assert (=> b!1099711 m!1019867))

(assert (=> b!1099711 m!1019759))

(assert (=> b!1099711 m!1019607))

(assert (=> b!1099711 m!1019761))

(assert (=> b!1099711 m!1019607))

(assert (=> b!1099711 m!1019759))

(assert (=> b!1099707 m!1019739))

(assert (=> b!1099707 m!1019739))

(assert (=> b!1099707 m!1019743))

(assert (=> bm!46031 m!1019863))

(assert (=> b!1099702 m!1019739))

(declare-fun m!1019869 () Bool)

(assert (=> b!1099702 m!1019869))

(assert (=> b!1099702 m!1019759))

(assert (=> b!1099702 m!1019607))

(assert (=> b!1099702 m!1019761))

(assert (=> b!1099702 m!1019607))

(declare-fun m!1019871 () Bool)

(assert (=> b!1099702 m!1019871))

(declare-fun m!1019873 () Bool)

(assert (=> b!1099702 m!1019873))

(assert (=> b!1099702 m!1019871))

(declare-fun m!1019875 () Bool)

(assert (=> b!1099702 m!1019875))

(assert (=> b!1099702 m!1019759))

(assert (=> b!1099708 m!1019739))

(assert (=> b!1099708 m!1019739))

(declare-fun m!1019877 () Bool)

(assert (=> b!1099708 m!1019877))

(declare-fun m!1019879 () Bool)

(assert (=> d!130493 m!1019879))

(assert (=> d!130493 m!1019643))

(assert (=> b!1099497 d!130493))

(declare-fun d!130495 () Bool)

(assert (=> d!130495 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492530 () Unit!36089)

(declare-fun choose!13 (array!71212 (_ BitVec 64) (_ BitVec 32)) Unit!36089)

(assert (=> d!130495 (= lt!492530 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130495 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130495 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!492530)))

(declare-fun bs!32290 () Bool)

(assert (= bs!32290 d!130495))

(assert (=> bs!32290 m!1019613))

(declare-fun m!1019881 () Bool)

(assert (=> bs!32290 m!1019881))

(assert (=> b!1099497 d!130495))

(declare-fun b!1099713 () Bool)

(declare-fun res!733937 () Bool)

(declare-fun e!627729 () Bool)

(assert (=> b!1099713 (=> (not res!733937) (not e!627729))))

(declare-fun lt!492531 () ListLongMap!15385)

(assert (=> b!1099713 (= res!733937 (not (contains!6405 lt!492531 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1099714 () Bool)

(declare-fun lt!492536 () Unit!36089)

(declare-fun lt!492534 () Unit!36089)

(assert (=> b!1099714 (= lt!492536 lt!492534)))

(declare-fun lt!492537 () (_ BitVec 64))

(declare-fun lt!492532 () ListLongMap!15385)

(declare-fun lt!492533 () V!41355)

(declare-fun lt!492535 () (_ BitVec 64))

(assert (=> b!1099714 (not (contains!6405 (+!3343 lt!492532 (tuple2!17405 lt!492537 lt!492533)) lt!492535))))

(assert (=> b!1099714 (= lt!492534 (addStillNotContains!278 lt!492532 lt!492537 lt!492533 lt!492535))))

(assert (=> b!1099714 (= lt!492535 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1099714 (= lt!492533 (get!17645 (select (arr!34270 lt!492356) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1099714 (= lt!492537 (select (arr!34269 lt!492351) #b00000000000000000000000000000000))))

(declare-fun call!46035 () ListLongMap!15385)

(assert (=> b!1099714 (= lt!492532 call!46035)))

(declare-fun e!627723 () ListLongMap!15385)

(assert (=> b!1099714 (= e!627723 (+!3343 call!46035 (tuple2!17405 (select (arr!34269 lt!492351) #b00000000000000000000000000000000) (get!17645 (select (arr!34270 lt!492356) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!46032 () Bool)

(assert (=> bm!46032 (= call!46035 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1099715 () Bool)

(declare-fun e!627726 () ListLongMap!15385)

(assert (=> b!1099715 (= e!627726 (ListLongMap!15386 Nil!24077))))

(declare-fun b!1099716 () Bool)

(assert (=> b!1099716 (= e!627723 call!46035)))

(declare-fun b!1099717 () Bool)

(declare-fun e!627725 () Bool)

(assert (=> b!1099717 (= e!627729 e!627725)))

(declare-fun c!108608 () Bool)

(declare-fun e!627724 () Bool)

(assert (=> b!1099717 (= c!108608 e!627724)))

(declare-fun res!733936 () Bool)

(assert (=> b!1099717 (=> (not res!733936) (not e!627724))))

(assert (=> b!1099717 (= res!733936 (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun b!1099718 () Bool)

(declare-fun e!627727 () Bool)

(assert (=> b!1099718 (= e!627727 (= lt!492531 (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun d!130497 () Bool)

(assert (=> d!130497 e!627729))

(declare-fun res!733935 () Bool)

(assert (=> d!130497 (=> (not res!733935) (not e!627729))))

(assert (=> d!130497 (= res!733935 (not (contains!6405 lt!492531 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130497 (= lt!492531 e!627726)))

(declare-fun c!108607 () Bool)

(assert (=> d!130497 (= c!108607 (bvsge #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(assert (=> d!130497 (validMask!0 mask!1414)))

(assert (=> d!130497 (= (getCurrentListMapNoExtraKeys!4186 lt!492351 lt!492356 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492531)))

(declare-fun b!1099719 () Bool)

(assert (=> b!1099719 (= e!627724 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(assert (=> b!1099719 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1099720 () Bool)

(declare-fun e!627728 () Bool)

(assert (=> b!1099720 (= e!627725 e!627728)))

(assert (=> b!1099720 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun res!733938 () Bool)

(assert (=> b!1099720 (= res!733938 (contains!6405 lt!492531 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(assert (=> b!1099720 (=> (not res!733938) (not e!627728))))

(declare-fun b!1099721 () Bool)

(assert (=> b!1099721 (= e!627726 e!627723)))

(declare-fun c!108609 () Bool)

(assert (=> b!1099721 (= c!108609 (validKeyInArray!0 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)))))

(declare-fun b!1099722 () Bool)

(assert (=> b!1099722 (= e!627725 e!627727)))

(declare-fun c!108606 () Bool)

(assert (=> b!1099722 (= c!108606 (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(declare-fun b!1099723 () Bool)

(assert (=> b!1099723 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34806 lt!492351)))))

(assert (=> b!1099723 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34807 lt!492356)))))

(assert (=> b!1099723 (= e!627728 (= (apply!983 lt!492531 (select (arr!34269 lt!492351) #b00000000000000000000000000000000)) (get!17645 (select (arr!34270 lt!492356) #b00000000000000000000000000000000) (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1099724 () Bool)

(assert (=> b!1099724 (= e!627727 (isEmpty!969 lt!492531))))

(assert (= (and d!130497 c!108607) b!1099715))

(assert (= (and d!130497 (not c!108607)) b!1099721))

(assert (= (and b!1099721 c!108609) b!1099714))

(assert (= (and b!1099721 (not c!108609)) b!1099716))

(assert (= (or b!1099714 b!1099716) bm!46032))

(assert (= (and d!130497 res!733935) b!1099713))

(assert (= (and b!1099713 res!733937) b!1099717))

(assert (= (and b!1099717 res!733936) b!1099719))

(assert (= (and b!1099717 c!108608) b!1099720))

(assert (= (and b!1099717 (not c!108608)) b!1099722))

(assert (= (and b!1099720 res!733938) b!1099723))

(assert (= (and b!1099722 c!108606) b!1099718))

(assert (= (and b!1099722 (not c!108606)) b!1099724))

(declare-fun b_lambda!17973 () Bool)

(assert (=> (not b_lambda!17973) (not b!1099714)))

(assert (=> b!1099714 t!34252))

(declare-fun b_and!37009 () Bool)

(assert (= b_and!37007 (and (=> t!34252 result!16515) b_and!37009)))

(declare-fun b_lambda!17975 () Bool)

(assert (=> (not b_lambda!17975) (not b!1099723)))

(assert (=> b!1099723 t!34252))

(declare-fun b_and!37011 () Bool)

(assert (= b_and!37009 (and (=> t!34252 result!16515) b_and!37011)))

(assert (=> b!1099721 m!1019699))

(assert (=> b!1099721 m!1019699))

(assert (=> b!1099721 m!1019707))

(declare-fun m!1019883 () Bool)

(assert (=> b!1099724 m!1019883))

(declare-fun m!1019885 () Bool)

(assert (=> b!1099718 m!1019885))

(declare-fun m!1019887 () Bool)

(assert (=> b!1099713 m!1019887))

(assert (=> b!1099723 m!1019699))

(assert (=> b!1099723 m!1019699))

(declare-fun m!1019889 () Bool)

(assert (=> b!1099723 m!1019889))

(assert (=> b!1099723 m!1019813))

(assert (=> b!1099723 m!1019607))

(assert (=> b!1099723 m!1019815))

(assert (=> b!1099723 m!1019607))

(assert (=> b!1099723 m!1019813))

(assert (=> b!1099719 m!1019699))

(assert (=> b!1099719 m!1019699))

(assert (=> b!1099719 m!1019707))

(assert (=> bm!46032 m!1019885))

(assert (=> b!1099714 m!1019699))

(declare-fun m!1019891 () Bool)

(assert (=> b!1099714 m!1019891))

(assert (=> b!1099714 m!1019813))

(assert (=> b!1099714 m!1019607))

(assert (=> b!1099714 m!1019815))

(assert (=> b!1099714 m!1019607))

(declare-fun m!1019893 () Bool)

(assert (=> b!1099714 m!1019893))

(declare-fun m!1019895 () Bool)

(assert (=> b!1099714 m!1019895))

(assert (=> b!1099714 m!1019893))

(declare-fun m!1019897 () Bool)

(assert (=> b!1099714 m!1019897))

(assert (=> b!1099714 m!1019813))

(assert (=> b!1099720 m!1019699))

(assert (=> b!1099720 m!1019699))

(declare-fun m!1019899 () Bool)

(assert (=> b!1099720 m!1019899))

(declare-fun m!1019901 () Bool)

(assert (=> d!130497 m!1019901))

(assert (=> d!130497 m!1019643))

(assert (=> b!1099497 d!130497))

(declare-fun call!46041 () ListLongMap!15385)

(declare-fun bm!46037 () Bool)

(assert (=> bm!46037 (= call!46041 (getCurrentListMapNoExtraKeys!4186 (array!71213 (store (arr!34269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34806 _keys!1070)) (array!71215 (store (arr!34270 _values!874) i!650 (ValueCellFull!12876 (dynLambda!2317 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34807 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099731 () Bool)

(declare-fun e!627734 () Bool)

(declare-fun call!46040 () ListLongMap!15385)

(assert (=> b!1099731 (= e!627734 (= call!46041 call!46040))))

(assert (=> b!1099731 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34807 _values!874)))))

(declare-fun bm!46038 () Bool)

(assert (=> bm!46038 (= call!46040 (getCurrentListMapNoExtraKeys!4186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun d!130499 () Bool)

(declare-fun e!627735 () Bool)

(assert (=> d!130499 e!627735))

(declare-fun res!733941 () Bool)

(assert (=> d!130499 (=> (not res!733941) (not e!627735))))

(assert (=> d!130499 (= res!733941 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34806 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34806 _keys!1070))))))))

(declare-fun lt!492540 () Unit!36089)

(declare-fun choose!1774 (array!71212 array!71214 (_ BitVec 32) (_ BitVec 32) V!41355 V!41355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36089)

(assert (=> d!130499 (= lt!492540 (choose!1774 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130499 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34806 _keys!1070)))))

(assert (=> d!130499 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!211 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!492540)))

(declare-fun b!1099732 () Bool)

(assert (=> b!1099732 (= e!627735 e!627734)))

(declare-fun c!108612 () Bool)

(assert (=> b!1099732 (= c!108612 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun b!1099733 () Bool)

(assert (=> b!1099733 (= e!627734 (= call!46041 (-!950 call!46040 k0!904)))))

(assert (=> b!1099733 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34807 _values!874)))))

(assert (= (and d!130499 res!733941) b!1099732))

(assert (= (and b!1099732 c!108612) b!1099733))

(assert (= (and b!1099732 (not c!108612)) b!1099731))

(assert (= (or b!1099733 b!1099731) bm!46038))

(assert (= (or b!1099733 b!1099731) bm!46037))

(declare-fun b_lambda!17977 () Bool)

(assert (=> (not b_lambda!17977) (not bm!46037)))

(assert (=> bm!46037 t!34252))

(declare-fun b_and!37013 () Bool)

(assert (= b_and!37011 (and (=> t!34252 result!16515) b_and!37013)))

(assert (=> bm!46037 m!1019641))

(assert (=> bm!46037 m!1019607))

(assert (=> bm!46037 m!1019611))

(declare-fun m!1019903 () Bool)

(assert (=> bm!46037 m!1019903))

(assert (=> bm!46038 m!1019625))

(declare-fun m!1019905 () Bool)

(assert (=> d!130499 m!1019905))

(declare-fun m!1019907 () Bool)

(assert (=> b!1099733 m!1019907))

(assert (=> b!1099497 d!130499))

(declare-fun b!1099740 () Bool)

(declare-fun e!627741 () Bool)

(assert (=> b!1099740 (= e!627741 tp_is_empty!27171)))

(declare-fun mapIsEmpty!42538 () Bool)

(declare-fun mapRes!42538 () Bool)

(assert (=> mapIsEmpty!42538 mapRes!42538))

(declare-fun mapNonEmpty!42538 () Bool)

(declare-fun tp!81315 () Bool)

(assert (=> mapNonEmpty!42538 (= mapRes!42538 (and tp!81315 e!627741))))

(declare-fun mapKey!42538 () (_ BitVec 32))

(declare-fun mapRest!42538 () (Array (_ BitVec 32) ValueCell!12876))

(declare-fun mapValue!42538 () ValueCell!12876)

(assert (=> mapNonEmpty!42538 (= mapRest!42532 (store mapRest!42538 mapKey!42538 mapValue!42538))))

(declare-fun b!1099741 () Bool)

(declare-fun e!627740 () Bool)

(assert (=> b!1099741 (= e!627740 tp_is_empty!27171)))

(declare-fun condMapEmpty!42538 () Bool)

(declare-fun mapDefault!42538 () ValueCell!12876)

(assert (=> mapNonEmpty!42532 (= condMapEmpty!42538 (= mapRest!42532 ((as const (Array (_ BitVec 32) ValueCell!12876)) mapDefault!42538)))))

(assert (=> mapNonEmpty!42532 (= tp!81306 (and e!627740 mapRes!42538))))

(assert (= (and mapNonEmpty!42532 condMapEmpty!42538) mapIsEmpty!42538))

(assert (= (and mapNonEmpty!42532 (not condMapEmpty!42538)) mapNonEmpty!42538))

(assert (= (and mapNonEmpty!42538 ((_ is ValueCellFull!12876) mapValue!42538)) b!1099740))

(assert (= (and mapNonEmpty!42532 ((_ is ValueCellFull!12876) mapDefault!42538)) b!1099741))

(declare-fun m!1019909 () Bool)

(assert (=> mapNonEmpty!42538 m!1019909))

(declare-fun b_lambda!17979 () Bool)

(assert (= b_lambda!17975 (or (and start!96710 b_free!23121) b_lambda!17979)))

(declare-fun b_lambda!17981 () Bool)

(assert (= b_lambda!17967 (or (and start!96710 b_free!23121) b_lambda!17981)))

(declare-fun b_lambda!17983 () Bool)

(assert (= b_lambda!17965 (or (and start!96710 b_free!23121) b_lambda!17983)))

(declare-fun b_lambda!17985 () Bool)

(assert (= b_lambda!17973 (or (and start!96710 b_free!23121) b_lambda!17985)))

(declare-fun b_lambda!17987 () Bool)

(assert (= b_lambda!17969 (or (and start!96710 b_free!23121) b_lambda!17987)))

(declare-fun b_lambda!17989 () Bool)

(assert (= b_lambda!17971 (or (and start!96710 b_free!23121) b_lambda!17989)))

(declare-fun b_lambda!17991 () Bool)

(assert (= b_lambda!17977 (or (and start!96710 b_free!23121) b_lambda!17991)))

(check-sat (not bm!46026) (not b!1099711) (not d!130471) (not b_lambda!17979) (not d!130487) (not bm!46032) (not b!1099657) (not b_lambda!17991) (not b!1099648) (not b_lambda!17985) (not b_lambda!17989) (not b!1099646) (not b!1099733) (not b!1099714) (not b!1099721) (not bm!46019) (not b!1099592) (not b_lambda!17963) (not b!1099638) (not b!1099574) (not b!1099656) (not b!1099562) (not b!1099552) (not bm!46028) (not d!130495) (not b_next!23121) (not b!1099635) (not bm!46021) (not d!130499) (not d!130497) (not b!1099712) (not b!1099723) (not b!1099658) (not b!1099561) (not bm!46023) (not b!1099560) (not b!1099706) (not b_lambda!17983) (not b_lambda!17987) (not b!1099585) (not bm!46015) (not b_lambda!17981) (not b!1099708) (not b!1099553) (not bm!45999) b_and!37013 (not b!1099580) (not b!1099579) (not b!1099578) (not b!1099709) (not b!1099659) (not mapNonEmpty!42538) (not d!130489) (not d!130469) (not b!1099667) (not bm!46000) (not b!1099702) tp_is_empty!27171 (not b!1099559) (not b!1099575) (not b!1099636) (not b!1099720) (not bm!45995) (not b!1099573) (not b!1099713) (not b!1099641) (not bm!46031) (not d!130493) (not b!1099724) (not bm!46037) (not d!130491) (not b!1099673) (not b!1099637) (not b!1099718) (not bm!46022) (not b!1099719) (not b!1099584) (not b!1099701) (not b!1099662) (not b!1099707) (not bm!45998) (not b!1099669) (not bm!46016) (not b!1099652) (not bm!46038))
(check-sat b_and!37013 (not b_next!23121))
