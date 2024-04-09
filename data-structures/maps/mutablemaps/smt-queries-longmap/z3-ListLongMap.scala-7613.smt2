; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96036 () Bool)

(assert start!96036)

(declare-fun b_free!22653 () Bool)

(declare-fun b_next!22653 () Bool)

(assert (=> start!96036 (= b_free!22653 (not b_next!22653))))

(declare-fun tp!79809 () Bool)

(declare-fun b_and!35999 () Bool)

(assert (=> start!96036 (= tp!79809 b_and!35999)))

(declare-fun b!1088056 () Bool)

(declare-fun e!621537 () Bool)

(assert (=> b!1088056 (= e!621537 true)))

(declare-datatypes ((V!40667 0))(
  ( (V!40668 (val!13384 Int)) )
))
(declare-datatypes ((tuple2!17060 0))(
  ( (tuple2!17061 (_1!8540 (_ BitVec 64)) (_2!8540 V!40667)) )
))
(declare-datatypes ((List!23700 0))(
  ( (Nil!23697) (Cons!23696 (h!24905 tuple2!17060) (t!33418 List!23700)) )
))
(declare-datatypes ((ListLongMap!15041 0))(
  ( (ListLongMap!15042 (toList!7536 List!23700)) )
))
(declare-fun lt!484488 () ListLongMap!15041)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!484479 () ListLongMap!15041)

(declare-fun -!816 (ListLongMap!15041 (_ BitVec 64)) ListLongMap!15041)

(assert (=> b!1088056 (= (-!816 lt!484488 k0!904) lt!484479)))

(declare-datatypes ((Unit!35747 0))(
  ( (Unit!35748) )
))
(declare-fun lt!484480 () Unit!35747)

(declare-fun lt!484483 () ListLongMap!15041)

(declare-fun zeroValue!831 () V!40667)

(declare-fun addRemoveCommutativeForDiffKeys!54 (ListLongMap!15041 (_ BitVec 64) V!40667 (_ BitVec 64)) Unit!35747)

(assert (=> b!1088056 (= lt!484480 (addRemoveCommutativeForDiffKeys!54 lt!484483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1088057 () Bool)

(declare-fun res!725760 () Bool)

(declare-fun e!621540 () Bool)

(assert (=> b!1088057 (=> (not res!725760) (not e!621540))))

(declare-datatypes ((array!70202 0))(
  ( (array!70203 (arr!33771 (Array (_ BitVec 32) (_ BitVec 64))) (size!34308 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70202)

(declare-datatypes ((List!23701 0))(
  ( (Nil!23698) (Cons!23697 (h!24906 (_ BitVec 64)) (t!33419 List!23701)) )
))
(declare-fun arrayNoDuplicates!0 (array!70202 (_ BitVec 32) List!23701) Bool)

(assert (=> b!1088057 (= res!725760 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23698))))

(declare-fun b!1088058 () Bool)

(declare-fun res!725764 () Bool)

(assert (=> b!1088058 (=> (not res!725764) (not e!621540))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12618 0))(
  ( (ValueCellFull!12618 (v!16006 V!40667)) (EmptyCell!12618) )
))
(declare-datatypes ((array!70204 0))(
  ( (array!70205 (arr!33772 (Array (_ BitVec 32) ValueCell!12618)) (size!34309 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70204)

(assert (=> b!1088058 (= res!725764 (and (= (size!34309 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34308 _keys!1070) (size!34309 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41737 () Bool)

(declare-fun mapRes!41737 () Bool)

(declare-fun tp!79808 () Bool)

(declare-fun e!621544 () Bool)

(assert (=> mapNonEmpty!41737 (= mapRes!41737 (and tp!79808 e!621544))))

(declare-fun mapRest!41737 () (Array (_ BitVec 32) ValueCell!12618))

(declare-fun mapValue!41737 () ValueCell!12618)

(declare-fun mapKey!41737 () (_ BitVec 32))

(assert (=> mapNonEmpty!41737 (= (arr!33772 _values!874) (store mapRest!41737 mapKey!41737 mapValue!41737))))

(declare-fun b!1088059 () Bool)

(declare-fun res!725762 () Bool)

(assert (=> b!1088059 (=> (not res!725762) (not e!621540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70202 (_ BitVec 32)) Bool)

(assert (=> b!1088059 (= res!725762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088060 () Bool)

(declare-fun res!725759 () Bool)

(declare-fun e!621543 () Bool)

(assert (=> b!1088060 (=> (not res!725759) (not e!621543))))

(declare-fun lt!484484 () array!70202)

(assert (=> b!1088060 (= res!725759 (arrayNoDuplicates!0 lt!484484 #b00000000000000000000000000000000 Nil!23698))))

(declare-fun b!1088061 () Bool)

(declare-fun e!621541 () Bool)

(declare-fun tp_is_empty!26655 () Bool)

(assert (=> b!1088061 (= e!621541 tp_is_empty!26655)))

(declare-fun b!1088062 () Bool)

(declare-fun res!725765 () Bool)

(assert (=> b!1088062 (=> (not res!725765) (not e!621540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088062 (= res!725765 (validKeyInArray!0 k0!904))))

(declare-fun b!1088063 () Bool)

(declare-fun e!621538 () Bool)

(assert (=> b!1088063 (= e!621538 e!621537)))

(declare-fun res!725768 () Bool)

(assert (=> b!1088063 (=> res!725768 e!621537)))

(assert (=> b!1088063 (= res!725768 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484478 () ListLongMap!15041)

(assert (=> b!1088063 (= lt!484478 lt!484479)))

(declare-fun lt!484485 () ListLongMap!15041)

(declare-fun lt!484487 () tuple2!17060)

(declare-fun +!3257 (ListLongMap!15041 tuple2!17060) ListLongMap!15041)

(assert (=> b!1088063 (= lt!484479 (+!3257 lt!484485 lt!484487))))

(declare-fun lt!484481 () ListLongMap!15041)

(assert (=> b!1088063 (= lt!484481 lt!484488)))

(assert (=> b!1088063 (= lt!484488 (+!3257 lt!484483 lt!484487))))

(declare-fun lt!484486 () ListLongMap!15041)

(assert (=> b!1088063 (= lt!484478 (+!3257 lt!484486 lt!484487))))

(assert (=> b!1088063 (= lt!484487 (tuple2!17061 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088064 () Bool)

(assert (=> b!1088064 (= e!621543 (not e!621538))))

(declare-fun res!725758 () Bool)

(assert (=> b!1088064 (=> res!725758 e!621538)))

(assert (=> b!1088064 (= res!725758 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40667)

(declare-fun getCurrentListMap!4286 (array!70202 array!70204 (_ BitVec 32) (_ BitVec 32) V!40667 V!40667 (_ BitVec 32) Int) ListLongMap!15041)

(assert (=> b!1088064 (= lt!484481 (getCurrentListMap!4286 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484490 () array!70204)

(assert (=> b!1088064 (= lt!484478 (getCurrentListMap!4286 lt!484484 lt!484490 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088064 (and (= lt!484486 lt!484485) (= lt!484485 lt!484486))))

(assert (=> b!1088064 (= lt!484485 (-!816 lt!484483 k0!904))))

(declare-fun lt!484489 () Unit!35747)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!92 (array!70202 array!70204 (_ BitVec 32) (_ BitVec 32) V!40667 V!40667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35747)

(assert (=> b!1088064 (= lt!484489 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!92 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4038 (array!70202 array!70204 (_ BitVec 32) (_ BitVec 32) V!40667 V!40667 (_ BitVec 32) Int) ListLongMap!15041)

(assert (=> b!1088064 (= lt!484486 (getCurrentListMapNoExtraKeys!4038 lt!484484 lt!484490 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2174 (Int (_ BitVec 64)) V!40667)

(assert (=> b!1088064 (= lt!484490 (array!70205 (store (arr!33772 _values!874) i!650 (ValueCellFull!12618 (dynLambda!2174 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34309 _values!874)))))

(assert (=> b!1088064 (= lt!484483 (getCurrentListMapNoExtraKeys!4038 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088064 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484482 () Unit!35747)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70202 (_ BitVec 64) (_ BitVec 32)) Unit!35747)

(assert (=> b!1088064 (= lt!484482 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088065 () Bool)

(declare-fun e!621539 () Bool)

(assert (=> b!1088065 (= e!621539 (and e!621541 mapRes!41737))))

(declare-fun condMapEmpty!41737 () Bool)

(declare-fun mapDefault!41737 () ValueCell!12618)

(assert (=> b!1088065 (= condMapEmpty!41737 (= (arr!33772 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12618)) mapDefault!41737)))))

(declare-fun res!725767 () Bool)

(assert (=> start!96036 (=> (not res!725767) (not e!621540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96036 (= res!725767 (validMask!0 mask!1414))))

(assert (=> start!96036 e!621540))

(assert (=> start!96036 tp!79809))

(assert (=> start!96036 true))

(assert (=> start!96036 tp_is_empty!26655))

(declare-fun array_inv!25908 (array!70202) Bool)

(assert (=> start!96036 (array_inv!25908 _keys!1070)))

(declare-fun array_inv!25909 (array!70204) Bool)

(assert (=> start!96036 (and (array_inv!25909 _values!874) e!621539)))

(declare-fun b!1088066 () Bool)

(assert (=> b!1088066 (= e!621544 tp_is_empty!26655)))

(declare-fun b!1088067 () Bool)

(declare-fun res!725766 () Bool)

(assert (=> b!1088067 (=> (not res!725766) (not e!621540))))

(assert (=> b!1088067 (= res!725766 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34308 _keys!1070))))))

(declare-fun b!1088068 () Bool)

(assert (=> b!1088068 (= e!621540 e!621543)))

(declare-fun res!725763 () Bool)

(assert (=> b!1088068 (=> (not res!725763) (not e!621543))))

(assert (=> b!1088068 (= res!725763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484484 mask!1414))))

(assert (=> b!1088068 (= lt!484484 (array!70203 (store (arr!33771 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34308 _keys!1070)))))

(declare-fun b!1088069 () Bool)

(declare-fun res!725761 () Bool)

(assert (=> b!1088069 (=> (not res!725761) (not e!621540))))

(assert (=> b!1088069 (= res!725761 (= (select (arr!33771 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41737 () Bool)

(assert (=> mapIsEmpty!41737 mapRes!41737))

(assert (= (and start!96036 res!725767) b!1088058))

(assert (= (and b!1088058 res!725764) b!1088059))

(assert (= (and b!1088059 res!725762) b!1088057))

(assert (= (and b!1088057 res!725760) b!1088067))

(assert (= (and b!1088067 res!725766) b!1088062))

(assert (= (and b!1088062 res!725765) b!1088069))

(assert (= (and b!1088069 res!725761) b!1088068))

(assert (= (and b!1088068 res!725763) b!1088060))

(assert (= (and b!1088060 res!725759) b!1088064))

(assert (= (and b!1088064 (not res!725758)) b!1088063))

(assert (= (and b!1088063 (not res!725768)) b!1088056))

(assert (= (and b!1088065 condMapEmpty!41737) mapIsEmpty!41737))

(assert (= (and b!1088065 (not condMapEmpty!41737)) mapNonEmpty!41737))

(get-info :version)

(assert (= (and mapNonEmpty!41737 ((_ is ValueCellFull!12618) mapValue!41737)) b!1088066))

(assert (= (and b!1088065 ((_ is ValueCellFull!12618) mapDefault!41737)) b!1088061))

(assert (= start!96036 b!1088065))

(declare-fun b_lambda!17353 () Bool)

(assert (=> (not b_lambda!17353) (not b!1088064)))

(declare-fun t!33417 () Bool)

(declare-fun tb!7539 () Bool)

(assert (=> (and start!96036 (= defaultEntry!882 defaultEntry!882) t!33417) tb!7539))

(declare-fun result!15589 () Bool)

(assert (=> tb!7539 (= result!15589 tp_is_empty!26655)))

(assert (=> b!1088064 t!33417))

(declare-fun b_and!36001 () Bool)

(assert (= b_and!35999 (and (=> t!33417 result!15589) b_and!36001)))

(declare-fun m!1007197 () Bool)

(assert (=> start!96036 m!1007197))

(declare-fun m!1007199 () Bool)

(assert (=> start!96036 m!1007199))

(declare-fun m!1007201 () Bool)

(assert (=> start!96036 m!1007201))

(declare-fun m!1007203 () Bool)

(assert (=> b!1088069 m!1007203))

(declare-fun m!1007205 () Bool)

(assert (=> b!1088059 m!1007205))

(declare-fun m!1007207 () Bool)

(assert (=> b!1088062 m!1007207))

(declare-fun m!1007209 () Bool)

(assert (=> mapNonEmpty!41737 m!1007209))

(declare-fun m!1007211 () Bool)

(assert (=> b!1088063 m!1007211))

(declare-fun m!1007213 () Bool)

(assert (=> b!1088063 m!1007213))

(declare-fun m!1007215 () Bool)

(assert (=> b!1088063 m!1007215))

(declare-fun m!1007217 () Bool)

(assert (=> b!1088068 m!1007217))

(declare-fun m!1007219 () Bool)

(assert (=> b!1088068 m!1007219))

(declare-fun m!1007221 () Bool)

(assert (=> b!1088057 m!1007221))

(declare-fun m!1007223 () Bool)

(assert (=> b!1088060 m!1007223))

(declare-fun m!1007225 () Bool)

(assert (=> b!1088064 m!1007225))

(declare-fun m!1007227 () Bool)

(assert (=> b!1088064 m!1007227))

(declare-fun m!1007229 () Bool)

(assert (=> b!1088064 m!1007229))

(declare-fun m!1007231 () Bool)

(assert (=> b!1088064 m!1007231))

(declare-fun m!1007233 () Bool)

(assert (=> b!1088064 m!1007233))

(declare-fun m!1007235 () Bool)

(assert (=> b!1088064 m!1007235))

(declare-fun m!1007237 () Bool)

(assert (=> b!1088064 m!1007237))

(declare-fun m!1007239 () Bool)

(assert (=> b!1088064 m!1007239))

(declare-fun m!1007241 () Bool)

(assert (=> b!1088064 m!1007241))

(declare-fun m!1007243 () Bool)

(assert (=> b!1088064 m!1007243))

(declare-fun m!1007245 () Bool)

(assert (=> b!1088056 m!1007245))

(declare-fun m!1007247 () Bool)

(assert (=> b!1088056 m!1007247))

(check-sat (not b!1088068) (not b!1088063) (not start!96036) (not b_next!22653) (not b!1088056) b_and!36001 (not mapNonEmpty!41737) tp_is_empty!26655 (not b!1088064) (not b!1088060) (not b!1088062) (not b_lambda!17353) (not b!1088057) (not b!1088059))
(check-sat b_and!36001 (not b_next!22653))
