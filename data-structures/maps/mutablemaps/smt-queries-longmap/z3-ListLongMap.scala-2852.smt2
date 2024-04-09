; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41152 () Bool)

(assert start!41152)

(declare-fun b_free!11013 () Bool)

(declare-fun b_next!11013 () Bool)

(assert (=> start!41152 (= b_free!11013 (not b_next!11013))))

(declare-fun tp!38874 () Bool)

(declare-fun b_and!19283 () Bool)

(assert (=> start!41152 (= tp!38874 b_and!19283)))

(declare-fun b!459029 () Bool)

(declare-datatypes ((Unit!13281 0))(
  ( (Unit!13282) )
))
(declare-fun e!267949 () Unit!13281)

(declare-fun Unit!13283 () Unit!13281)

(assert (=> b!459029 (= e!267949 Unit!13283)))

(declare-fun lt!207721 () Unit!13281)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!28467 0))(
  ( (array!28468 (arr!13671 (Array (_ BitVec 32) (_ BitVec 64))) (size!14023 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28467)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28467 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13281)

(assert (=> b!459029 (= lt!207721 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459029 false))

(declare-fun b!459030 () Bool)

(declare-fun res!274369 () Bool)

(declare-fun e!267952 () Bool)

(assert (=> b!459030 (=> (not res!274369) (not e!267952))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459030 (= res!274369 (or (= (select (arr!13671 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13671 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!274371 () Bool)

(assert (=> start!41152 (=> (not res!274371) (not e!267952))))

(assert (=> start!41152 (= res!274371 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14023 _keys!709))))))

(assert (=> start!41152 e!267952))

(declare-fun tp_is_empty!12351 () Bool)

(assert (=> start!41152 tp_is_empty!12351))

(assert (=> start!41152 tp!38874))

(assert (=> start!41152 true))

(declare-datatypes ((V!17573 0))(
  ( (V!17574 (val!6220 Int)) )
))
(declare-datatypes ((ValueCell!5832 0))(
  ( (ValueCellFull!5832 (v!8494 V!17573)) (EmptyCell!5832) )
))
(declare-datatypes ((array!28469 0))(
  ( (array!28470 (arr!13672 (Array (_ BitVec 32) ValueCell!5832)) (size!14024 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28469)

(declare-fun e!267946 () Bool)

(declare-fun array_inv!9888 (array!28469) Bool)

(assert (=> start!41152 (and (array_inv!9888 _values!549) e!267946)))

(declare-fun array_inv!9889 (array!28467) Bool)

(assert (=> start!41152 (array_inv!9889 _keys!709)))

(declare-fun b!459031 () Bool)

(declare-fun res!274368 () Bool)

(assert (=> b!459031 (=> (not res!274368) (not e!267952))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459031 (= res!274368 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20176 () Bool)

(declare-fun mapRes!20176 () Bool)

(declare-fun tp!38875 () Bool)

(declare-fun e!267950 () Bool)

(assert (=> mapNonEmpty!20176 (= mapRes!20176 (and tp!38875 e!267950))))

(declare-fun mapValue!20176 () ValueCell!5832)

(declare-fun mapKey!20176 () (_ BitVec 32))

(declare-fun mapRest!20176 () (Array (_ BitVec 32) ValueCell!5832))

(assert (=> mapNonEmpty!20176 (= (arr!13672 _values!549) (store mapRest!20176 mapKey!20176 mapValue!20176))))

(declare-fun b!459032 () Bool)

(declare-fun res!274381 () Bool)

(declare-fun e!267951 () Bool)

(assert (=> b!459032 (=> (not res!274381) (not e!267951))))

(assert (=> b!459032 (= res!274381 (bvsle from!863 i!563))))

(declare-fun b!459033 () Bool)

(declare-fun e!267944 () Bool)

(assert (=> b!459033 (= e!267946 (and e!267944 mapRes!20176))))

(declare-fun condMapEmpty!20176 () Bool)

(declare-fun mapDefault!20176 () ValueCell!5832)

(assert (=> b!459033 (= condMapEmpty!20176 (= (arr!13672 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5832)) mapDefault!20176)))))

(declare-fun b!459034 () Bool)

(assert (=> b!459034 (= e!267944 tp_is_empty!12351)))

(declare-fun b!459035 () Bool)

(declare-fun e!267945 () Bool)

(assert (=> b!459035 (= e!267945 (not (= (select (arr!13671 _keys!709) from!863) k0!794)))))

(declare-fun lt!207719 () Unit!13281)

(assert (=> b!459035 (= lt!207719 e!267949)))

(declare-fun c!56393 () Bool)

(assert (=> b!459035 (= c!56393 (= (select (arr!13671 _keys!709) from!863) k0!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8162 0))(
  ( (tuple2!8163 (_1!4091 (_ BitVec 64)) (_2!4091 V!17573)) )
))
(declare-datatypes ((List!8266 0))(
  ( (Nil!8263) (Cons!8262 (h!9118 tuple2!8162) (t!14166 List!8266)) )
))
(declare-datatypes ((ListLongMap!7089 0))(
  ( (ListLongMap!7090 (toList!3560 List!8266)) )
))
(declare-fun lt!207715 () ListLongMap!7089)

(declare-fun lt!207717 () ListLongMap!7089)

(declare-fun +!1580 (ListLongMap!7089 tuple2!8162) ListLongMap!7089)

(declare-fun get!6754 (ValueCell!5832 V!17573) V!17573)

(declare-fun dynLambda!890 (Int (_ BitVec 64)) V!17573)

(assert (=> b!459035 (= lt!207715 (+!1580 lt!207717 (tuple2!8163 (select (arr!13671 _keys!709) from!863) (get!6754 (select (arr!13672 _values!549) from!863) (dynLambda!890 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459036 () Bool)

(declare-fun res!274375 () Bool)

(assert (=> b!459036 (=> (not res!274375) (not e!267952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459036 (= res!274375 (validKeyInArray!0 k0!794))))

(declare-fun b!459037 () Bool)

(declare-fun res!274372 () Bool)

(assert (=> b!459037 (=> (not res!274372) (not e!267952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28467 (_ BitVec 32)) Bool)

(assert (=> b!459037 (= res!274372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459038 () Bool)

(declare-fun res!274379 () Bool)

(assert (=> b!459038 (=> (not res!274379) (not e!267952))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!459038 (= res!274379 (and (= (size!14024 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14023 _keys!709) (size!14024 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459039 () Bool)

(assert (=> b!459039 (= e!267950 tp_is_empty!12351)))

(declare-fun b!459040 () Bool)

(assert (=> b!459040 (= e!267952 e!267951)))

(declare-fun res!274377 () Bool)

(assert (=> b!459040 (=> (not res!274377) (not e!267951))))

(declare-fun lt!207723 () array!28467)

(assert (=> b!459040 (= res!274377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207723 mask!1025))))

(assert (=> b!459040 (= lt!207723 (array!28468 (store (arr!13671 _keys!709) i!563 k0!794) (size!14023 _keys!709)))))

(declare-fun b!459041 () Bool)

(declare-fun res!274376 () Bool)

(assert (=> b!459041 (=> (not res!274376) (not e!267951))))

(declare-datatypes ((List!8267 0))(
  ( (Nil!8264) (Cons!8263 (h!9119 (_ BitVec 64)) (t!14167 List!8267)) )
))
(declare-fun arrayNoDuplicates!0 (array!28467 (_ BitVec 32) List!8267) Bool)

(assert (=> b!459041 (= res!274376 (arrayNoDuplicates!0 lt!207723 #b00000000000000000000000000000000 Nil!8264))))

(declare-fun b!459042 () Bool)

(declare-fun res!274373 () Bool)

(assert (=> b!459042 (=> (not res!274373) (not e!267952))))

(declare-fun arrayContainsKey!0 (array!28467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459042 (= res!274373 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459043 () Bool)

(declare-fun Unit!13284 () Unit!13281)

(assert (=> b!459043 (= e!267949 Unit!13284)))

(declare-fun b!459044 () Bool)

(declare-fun e!267948 () Bool)

(assert (=> b!459044 (= e!267951 e!267948)))

(declare-fun res!274374 () Bool)

(assert (=> b!459044 (=> (not res!274374) (not e!267948))))

(assert (=> b!459044 (= res!274374 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17573)

(declare-fun zeroValue!515 () V!17573)

(declare-fun lt!207718 () array!28469)

(declare-fun getCurrentListMapNoExtraKeys!1731 (array!28467 array!28469 (_ BitVec 32) (_ BitVec 32) V!17573 V!17573 (_ BitVec 32) Int) ListLongMap!7089)

(assert (=> b!459044 (= lt!207715 (getCurrentListMapNoExtraKeys!1731 lt!207723 lt!207718 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17573)

(assert (=> b!459044 (= lt!207718 (array!28470 (store (arr!13672 _values!549) i!563 (ValueCellFull!5832 v!412)) (size!14024 _values!549)))))

(declare-fun lt!207722 () ListLongMap!7089)

(assert (=> b!459044 (= lt!207722 (getCurrentListMapNoExtraKeys!1731 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459045 () Bool)

(declare-fun res!274380 () Bool)

(assert (=> b!459045 (=> (not res!274380) (not e!267952))))

(assert (=> b!459045 (= res!274380 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8264))))

(declare-fun mapIsEmpty!20176 () Bool)

(assert (=> mapIsEmpty!20176 mapRes!20176))

(declare-fun b!459046 () Bool)

(declare-fun res!274378 () Bool)

(assert (=> b!459046 (=> (not res!274378) (not e!267952))))

(assert (=> b!459046 (= res!274378 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14023 _keys!709))))))

(declare-fun b!459047 () Bool)

(assert (=> b!459047 (= e!267948 (not e!267945))))

(declare-fun res!274370 () Bool)

(assert (=> b!459047 (=> res!274370 e!267945)))

(assert (=> b!459047 (= res!274370 (not (validKeyInArray!0 (select (arr!13671 _keys!709) from!863))))))

(declare-fun lt!207714 () ListLongMap!7089)

(assert (=> b!459047 (= lt!207714 lt!207717)))

(declare-fun lt!207716 () ListLongMap!7089)

(assert (=> b!459047 (= lt!207717 (+!1580 lt!207716 (tuple2!8163 k0!794 v!412)))))

(assert (=> b!459047 (= lt!207714 (getCurrentListMapNoExtraKeys!1731 lt!207723 lt!207718 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459047 (= lt!207716 (getCurrentListMapNoExtraKeys!1731 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!207720 () Unit!13281)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!737 (array!28467 array!28469 (_ BitVec 32) (_ BitVec 32) V!17573 V!17573 (_ BitVec 32) (_ BitVec 64) V!17573 (_ BitVec 32) Int) Unit!13281)

(assert (=> b!459047 (= lt!207720 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!737 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!41152 res!274371) b!459031))

(assert (= (and b!459031 res!274368) b!459038))

(assert (= (and b!459038 res!274379) b!459037))

(assert (= (and b!459037 res!274372) b!459045))

(assert (= (and b!459045 res!274380) b!459046))

(assert (= (and b!459046 res!274378) b!459036))

(assert (= (and b!459036 res!274375) b!459030))

(assert (= (and b!459030 res!274369) b!459042))

(assert (= (and b!459042 res!274373) b!459040))

(assert (= (and b!459040 res!274377) b!459041))

(assert (= (and b!459041 res!274376) b!459032))

(assert (= (and b!459032 res!274381) b!459044))

(assert (= (and b!459044 res!274374) b!459047))

(assert (= (and b!459047 (not res!274370)) b!459035))

(assert (= (and b!459035 c!56393) b!459029))

(assert (= (and b!459035 (not c!56393)) b!459043))

(assert (= (and b!459033 condMapEmpty!20176) mapIsEmpty!20176))

(assert (= (and b!459033 (not condMapEmpty!20176)) mapNonEmpty!20176))

(get-info :version)

(assert (= (and mapNonEmpty!20176 ((_ is ValueCellFull!5832) mapValue!20176)) b!459039))

(assert (= (and b!459033 ((_ is ValueCellFull!5832) mapDefault!20176)) b!459034))

(assert (= start!41152 b!459033))

(declare-fun b_lambda!9877 () Bool)

(assert (=> (not b_lambda!9877) (not b!459035)))

(declare-fun t!14165 () Bool)

(declare-fun tb!3857 () Bool)

(assert (=> (and start!41152 (= defaultEntry!557 defaultEntry!557) t!14165) tb!3857))

(declare-fun result!7251 () Bool)

(assert (=> tb!3857 (= result!7251 tp_is_empty!12351)))

(assert (=> b!459035 t!14165))

(declare-fun b_and!19285 () Bool)

(assert (= b_and!19283 (and (=> t!14165 result!7251) b_and!19285)))

(declare-fun m!442371 () Bool)

(assert (=> b!459041 m!442371))

(declare-fun m!442373 () Bool)

(assert (=> b!459040 m!442373))

(declare-fun m!442375 () Bool)

(assert (=> b!459040 m!442375))

(declare-fun m!442377 () Bool)

(assert (=> b!459036 m!442377))

(declare-fun m!442379 () Bool)

(assert (=> b!459044 m!442379))

(declare-fun m!442381 () Bool)

(assert (=> b!459044 m!442381))

(declare-fun m!442383 () Bool)

(assert (=> b!459044 m!442383))

(declare-fun m!442385 () Bool)

(assert (=> b!459035 m!442385))

(declare-fun m!442387 () Bool)

(assert (=> b!459035 m!442387))

(declare-fun m!442389 () Bool)

(assert (=> b!459035 m!442389))

(declare-fun m!442391 () Bool)

(assert (=> b!459035 m!442391))

(assert (=> b!459035 m!442391))

(assert (=> b!459035 m!442389))

(declare-fun m!442393 () Bool)

(assert (=> b!459035 m!442393))

(declare-fun m!442395 () Bool)

(assert (=> b!459030 m!442395))

(assert (=> b!459047 m!442385))

(declare-fun m!442397 () Bool)

(assert (=> b!459047 m!442397))

(declare-fun m!442399 () Bool)

(assert (=> b!459047 m!442399))

(declare-fun m!442401 () Bool)

(assert (=> b!459047 m!442401))

(assert (=> b!459047 m!442385))

(declare-fun m!442403 () Bool)

(assert (=> b!459047 m!442403))

(declare-fun m!442405 () Bool)

(assert (=> b!459047 m!442405))

(declare-fun m!442407 () Bool)

(assert (=> start!41152 m!442407))

(declare-fun m!442409 () Bool)

(assert (=> start!41152 m!442409))

(declare-fun m!442411 () Bool)

(assert (=> b!459031 m!442411))

(declare-fun m!442413 () Bool)

(assert (=> b!459029 m!442413))

(declare-fun m!442415 () Bool)

(assert (=> b!459037 m!442415))

(declare-fun m!442417 () Bool)

(assert (=> b!459045 m!442417))

(declare-fun m!442419 () Bool)

(assert (=> mapNonEmpty!20176 m!442419))

(declare-fun m!442421 () Bool)

(assert (=> b!459042 m!442421))

(check-sat (not b!459036) (not b!459037) (not b!459040) (not b!459044) (not b!459042) (not b!459047) (not b!459041) (not b!459035) (not mapNonEmpty!20176) b_and!19285 (not b_lambda!9877) (not b_next!11013) (not b!459045) (not b!459029) (not b!459031) tp_is_empty!12351 (not start!41152))
(check-sat b_and!19285 (not b_next!11013))
