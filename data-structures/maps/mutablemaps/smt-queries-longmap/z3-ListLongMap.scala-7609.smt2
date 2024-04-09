; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96012 () Bool)

(assert start!96012)

(declare-fun b_free!22629 () Bool)

(declare-fun b_next!22629 () Bool)

(assert (=> start!96012 (= b_free!22629 (not b_next!22629))))

(declare-fun tp!79736 () Bool)

(declare-fun b_and!35951 () Bool)

(assert (=> start!96012 (= tp!79736 b_and!35951)))

(declare-fun b!1087528 () Bool)

(declare-fun res!725370 () Bool)

(declare-fun e!621254 () Bool)

(assert (=> b!1087528 (=> (not res!725370) (not e!621254))))

(declare-datatypes ((array!70154 0))(
  ( (array!70155 (arr!33747 (Array (_ BitVec 32) (_ BitVec 64))) (size!34284 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70154)

(declare-datatypes ((List!23677 0))(
  ( (Nil!23674) (Cons!23673 (h!24882 (_ BitVec 64)) (t!33371 List!23677)) )
))
(declare-fun arrayNoDuplicates!0 (array!70154 (_ BitVec 32) List!23677) Bool)

(assert (=> b!1087528 (= res!725370 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23674))))

(declare-fun b!1087529 () Bool)

(declare-fun e!621255 () Bool)

(declare-fun e!621250 () Bool)

(assert (=> b!1087529 (= e!621255 (not e!621250))))

(declare-fun res!725363 () Bool)

(assert (=> b!1087529 (=> res!725363 e!621250)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087529 (= res!725363 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40635 0))(
  ( (V!40636 (val!13372 Int)) )
))
(declare-fun minValue!831 () V!40635)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17036 0))(
  ( (tuple2!17037 (_1!8528 (_ BitVec 64)) (_2!8528 V!40635)) )
))
(declare-datatypes ((List!23678 0))(
  ( (Nil!23675) (Cons!23674 (h!24883 tuple2!17036) (t!33372 List!23678)) )
))
(declare-datatypes ((ListLongMap!15017 0))(
  ( (ListLongMap!15018 (toList!7524 List!23678)) )
))
(declare-fun lt!484017 () ListLongMap!15017)

(declare-fun zeroValue!831 () V!40635)

(declare-datatypes ((ValueCell!12606 0))(
  ( (ValueCellFull!12606 (v!15994 V!40635)) (EmptyCell!12606) )
))
(declare-datatypes ((array!70156 0))(
  ( (array!70157 (arr!33748 (Array (_ BitVec 32) ValueCell!12606)) (size!34285 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70156)

(declare-fun getCurrentListMap!4277 (array!70154 array!70156 (_ BitVec 32) (_ BitVec 32) V!40635 V!40635 (_ BitVec 32) Int) ListLongMap!15017)

(assert (=> b!1087529 (= lt!484017 (getCurrentListMap!4277 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484012 () array!70154)

(declare-fun lt!484022 () array!70156)

(declare-fun lt!484015 () ListLongMap!15017)

(assert (=> b!1087529 (= lt!484015 (getCurrentListMap!4277 lt!484012 lt!484022 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484019 () ListLongMap!15017)

(declare-fun lt!484010 () ListLongMap!15017)

(assert (=> b!1087529 (and (= lt!484019 lt!484010) (= lt!484010 lt!484019))))

(declare-fun lt!484021 () ListLongMap!15017)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!804 (ListLongMap!15017 (_ BitVec 64)) ListLongMap!15017)

(assert (=> b!1087529 (= lt!484010 (-!804 lt!484021 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35723 0))(
  ( (Unit!35724) )
))
(declare-fun lt!484014 () Unit!35723)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!83 (array!70154 array!70156 (_ BitVec 32) (_ BitVec 32) V!40635 V!40635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35723)

(assert (=> b!1087529 (= lt!484014 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!83 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4029 (array!70154 array!70156 (_ BitVec 32) (_ BitVec 32) V!40635 V!40635 (_ BitVec 32) Int) ListLongMap!15017)

(assert (=> b!1087529 (= lt!484019 (getCurrentListMapNoExtraKeys!4029 lt!484012 lt!484022 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2165 (Int (_ BitVec 64)) V!40635)

(assert (=> b!1087529 (= lt!484022 (array!70157 (store (arr!33748 _values!874) i!650 (ValueCellFull!12606 (dynLambda!2165 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34285 _values!874)))))

(assert (=> b!1087529 (= lt!484021 (getCurrentListMapNoExtraKeys!4029 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087529 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484016 () Unit!35723)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70154 (_ BitVec 64) (_ BitVec 32)) Unit!35723)

(assert (=> b!1087529 (= lt!484016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1087530 () Bool)

(declare-fun res!725362 () Bool)

(assert (=> b!1087530 (=> (not res!725362) (not e!621254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70154 (_ BitVec 32)) Bool)

(assert (=> b!1087530 (= res!725362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087532 () Bool)

(declare-fun e!621256 () Bool)

(assert (=> b!1087532 (= e!621250 e!621256)))

(declare-fun res!725368 () Bool)

(assert (=> b!1087532 (=> res!725368 e!621256)))

(assert (=> b!1087532 (= res!725368 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484013 () ListLongMap!15017)

(assert (=> b!1087532 (= lt!484015 lt!484013)))

(declare-fun lt!484018 () tuple2!17036)

(declare-fun +!3250 (ListLongMap!15017 tuple2!17036) ListLongMap!15017)

(assert (=> b!1087532 (= lt!484013 (+!3250 lt!484010 lt!484018))))

(declare-fun lt!484020 () ListLongMap!15017)

(assert (=> b!1087532 (= lt!484017 lt!484020)))

(assert (=> b!1087532 (= lt!484020 (+!3250 lt!484021 lt!484018))))

(assert (=> b!1087532 (= lt!484015 (+!3250 lt!484019 lt!484018))))

(assert (=> b!1087532 (= lt!484018 (tuple2!17037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087533 () Bool)

(declare-fun res!725365 () Bool)

(assert (=> b!1087533 (=> (not res!725365) (not e!621254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087533 (= res!725365 (validKeyInArray!0 k0!904))))

(declare-fun b!1087534 () Bool)

(declare-fun res!725369 () Bool)

(assert (=> b!1087534 (=> (not res!725369) (not e!621254))))

(assert (=> b!1087534 (= res!725369 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34284 _keys!1070))))))

(declare-fun b!1087535 () Bool)

(declare-fun e!621251 () Bool)

(declare-fun tp_is_empty!26631 () Bool)

(assert (=> b!1087535 (= e!621251 tp_is_empty!26631)))

(declare-fun b!1087536 () Bool)

(declare-fun res!725372 () Bool)

(assert (=> b!1087536 (=> (not res!725372) (not e!621255))))

(assert (=> b!1087536 (= res!725372 (arrayNoDuplicates!0 lt!484012 #b00000000000000000000000000000000 Nil!23674))))

(declare-fun b!1087537 () Bool)

(declare-fun res!725366 () Bool)

(assert (=> b!1087537 (=> (not res!725366) (not e!621254))))

(assert (=> b!1087537 (= res!725366 (= (select (arr!33747 _keys!1070) i!650) k0!904))))

(declare-fun b!1087538 () Bool)

(assert (=> b!1087538 (= e!621254 e!621255)))

(declare-fun res!725364 () Bool)

(assert (=> b!1087538 (=> (not res!725364) (not e!621255))))

(assert (=> b!1087538 (= res!725364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484012 mask!1414))))

(assert (=> b!1087538 (= lt!484012 (array!70155 (store (arr!33747 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34284 _keys!1070)))))

(declare-fun mapNonEmpty!41701 () Bool)

(declare-fun mapRes!41701 () Bool)

(declare-fun tp!79737 () Bool)

(assert (=> mapNonEmpty!41701 (= mapRes!41701 (and tp!79737 e!621251))))

(declare-fun mapValue!41701 () ValueCell!12606)

(declare-fun mapRest!41701 () (Array (_ BitVec 32) ValueCell!12606))

(declare-fun mapKey!41701 () (_ BitVec 32))

(assert (=> mapNonEmpty!41701 (= (arr!33748 _values!874) (store mapRest!41701 mapKey!41701 mapValue!41701))))

(declare-fun b!1087531 () Bool)

(declare-fun res!725371 () Bool)

(assert (=> b!1087531 (=> (not res!725371) (not e!621254))))

(assert (=> b!1087531 (= res!725371 (and (= (size!34285 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34284 _keys!1070) (size!34285 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!725367 () Bool)

(assert (=> start!96012 (=> (not res!725367) (not e!621254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96012 (= res!725367 (validMask!0 mask!1414))))

(assert (=> start!96012 e!621254))

(assert (=> start!96012 tp!79736))

(assert (=> start!96012 true))

(assert (=> start!96012 tp_is_empty!26631))

(declare-fun array_inv!25892 (array!70154) Bool)

(assert (=> start!96012 (array_inv!25892 _keys!1070)))

(declare-fun e!621253 () Bool)

(declare-fun array_inv!25893 (array!70156) Bool)

(assert (=> start!96012 (and (array_inv!25893 _values!874) e!621253)))

(declare-fun mapIsEmpty!41701 () Bool)

(assert (=> mapIsEmpty!41701 mapRes!41701))

(declare-fun b!1087539 () Bool)

(assert (=> b!1087539 (= e!621256 true)))

(assert (=> b!1087539 (= (-!804 lt!484020 k0!904) lt!484013)))

(declare-fun lt!484011 () Unit!35723)

(declare-fun addRemoveCommutativeForDiffKeys!44 (ListLongMap!15017 (_ BitVec 64) V!40635 (_ BitVec 64)) Unit!35723)

(assert (=> b!1087539 (= lt!484011 (addRemoveCommutativeForDiffKeys!44 lt!484021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1087540 () Bool)

(declare-fun e!621249 () Bool)

(assert (=> b!1087540 (= e!621249 tp_is_empty!26631)))

(declare-fun b!1087541 () Bool)

(assert (=> b!1087541 (= e!621253 (and e!621249 mapRes!41701))))

(declare-fun condMapEmpty!41701 () Bool)

(declare-fun mapDefault!41701 () ValueCell!12606)

(assert (=> b!1087541 (= condMapEmpty!41701 (= (arr!33748 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12606)) mapDefault!41701)))))

(assert (= (and start!96012 res!725367) b!1087531))

(assert (= (and b!1087531 res!725371) b!1087530))

(assert (= (and b!1087530 res!725362) b!1087528))

(assert (= (and b!1087528 res!725370) b!1087534))

(assert (= (and b!1087534 res!725369) b!1087533))

(assert (= (and b!1087533 res!725365) b!1087537))

(assert (= (and b!1087537 res!725366) b!1087538))

(assert (= (and b!1087538 res!725364) b!1087536))

(assert (= (and b!1087536 res!725372) b!1087529))

(assert (= (and b!1087529 (not res!725363)) b!1087532))

(assert (= (and b!1087532 (not res!725368)) b!1087539))

(assert (= (and b!1087541 condMapEmpty!41701) mapIsEmpty!41701))

(assert (= (and b!1087541 (not condMapEmpty!41701)) mapNonEmpty!41701))

(get-info :version)

(assert (= (and mapNonEmpty!41701 ((_ is ValueCellFull!12606) mapValue!41701)) b!1087535))

(assert (= (and b!1087541 ((_ is ValueCellFull!12606) mapDefault!41701)) b!1087540))

(assert (= start!96012 b!1087541))

(declare-fun b_lambda!17329 () Bool)

(assert (=> (not b_lambda!17329) (not b!1087529)))

(declare-fun t!33370 () Bool)

(declare-fun tb!7515 () Bool)

(assert (=> (and start!96012 (= defaultEntry!882 defaultEntry!882) t!33370) tb!7515))

(declare-fun result!15541 () Bool)

(assert (=> tb!7515 (= result!15541 tp_is_empty!26631)))

(assert (=> b!1087529 t!33370))

(declare-fun b_and!35953 () Bool)

(assert (= b_and!35951 (and (=> t!33370 result!15541) b_and!35953)))

(declare-fun m!1006573 () Bool)

(assert (=> b!1087528 m!1006573))

(declare-fun m!1006575 () Bool)

(assert (=> b!1087533 m!1006575))

(declare-fun m!1006577 () Bool)

(assert (=> b!1087532 m!1006577))

(declare-fun m!1006579 () Bool)

(assert (=> b!1087532 m!1006579))

(declare-fun m!1006581 () Bool)

(assert (=> b!1087532 m!1006581))

(declare-fun m!1006583 () Bool)

(assert (=> b!1087530 m!1006583))

(declare-fun m!1006585 () Bool)

(assert (=> b!1087529 m!1006585))

(declare-fun m!1006587 () Bool)

(assert (=> b!1087529 m!1006587))

(declare-fun m!1006589 () Bool)

(assert (=> b!1087529 m!1006589))

(declare-fun m!1006591 () Bool)

(assert (=> b!1087529 m!1006591))

(declare-fun m!1006593 () Bool)

(assert (=> b!1087529 m!1006593))

(declare-fun m!1006595 () Bool)

(assert (=> b!1087529 m!1006595))

(declare-fun m!1006597 () Bool)

(assert (=> b!1087529 m!1006597))

(declare-fun m!1006599 () Bool)

(assert (=> b!1087529 m!1006599))

(declare-fun m!1006601 () Bool)

(assert (=> b!1087529 m!1006601))

(declare-fun m!1006603 () Bool)

(assert (=> b!1087529 m!1006603))

(declare-fun m!1006605 () Bool)

(assert (=> b!1087536 m!1006605))

(declare-fun m!1006607 () Bool)

(assert (=> b!1087539 m!1006607))

(declare-fun m!1006609 () Bool)

(assert (=> b!1087539 m!1006609))

(declare-fun m!1006611 () Bool)

(assert (=> b!1087538 m!1006611))

(declare-fun m!1006613 () Bool)

(assert (=> b!1087538 m!1006613))

(declare-fun m!1006615 () Bool)

(assert (=> mapNonEmpty!41701 m!1006615))

(declare-fun m!1006617 () Bool)

(assert (=> start!96012 m!1006617))

(declare-fun m!1006619 () Bool)

(assert (=> start!96012 m!1006619))

(declare-fun m!1006621 () Bool)

(assert (=> start!96012 m!1006621))

(declare-fun m!1006623 () Bool)

(assert (=> b!1087537 m!1006623))

(check-sat (not mapNonEmpty!41701) (not b_lambda!17329) (not b!1087528) tp_is_empty!26631 (not b!1087539) (not b!1087529) (not b_next!22629) b_and!35953 (not b!1087538) (not b!1087533) (not start!96012) (not b!1087530) (not b!1087536) (not b!1087532))
(check-sat b_and!35953 (not b_next!22629))
