; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95968 () Bool)

(assert start!95968)

(declare-fun b_free!22585 () Bool)

(declare-fun b_next!22585 () Bool)

(assert (=> start!95968 (= b_free!22585 (not b_next!22585))))

(declare-fun tp!79605 () Bool)

(declare-fun b_and!35863 () Bool)

(assert (=> start!95968 (= tp!79605 b_and!35863)))

(declare-fun b!1086551 () Bool)

(declare-fun res!724627 () Bool)

(declare-fun e!620728 () Bool)

(assert (=> b!1086551 (=> (not res!724627) (not e!620728))))

(declare-datatypes ((array!70070 0))(
  ( (array!70071 (arr!33705 (Array (_ BitVec 32) (_ BitVec 64))) (size!34242 (_ BitVec 32))) )
))
(declare-fun lt!483007 () array!70070)

(declare-datatypes ((List!23642 0))(
  ( (Nil!23639) (Cons!23638 (h!24847 (_ BitVec 64)) (t!33292 List!23642)) )
))
(declare-fun arrayNoDuplicates!0 (array!70070 (_ BitVec 32) List!23642) Bool)

(assert (=> b!1086551 (= res!724627 (arrayNoDuplicates!0 lt!483007 #b00000000000000000000000000000000 Nil!23639))))

(declare-fun mapIsEmpty!41635 () Bool)

(declare-fun mapRes!41635 () Bool)

(assert (=> mapIsEmpty!41635 mapRes!41635))

(declare-fun b!1086553 () Bool)

(declare-fun res!724629 () Bool)

(declare-fun e!620726 () Bool)

(assert (=> b!1086553 (=> (not res!724629) (not e!620726))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086553 (= res!724629 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41635 () Bool)

(declare-fun tp!79604 () Bool)

(declare-fun e!620727 () Bool)

(assert (=> mapNonEmpty!41635 (= mapRes!41635 (and tp!79604 e!620727))))

(declare-datatypes ((V!40577 0))(
  ( (V!40578 (val!13350 Int)) )
))
(declare-datatypes ((ValueCell!12584 0))(
  ( (ValueCellFull!12584 (v!15972 V!40577)) (EmptyCell!12584) )
))
(declare-datatypes ((array!70072 0))(
  ( (array!70073 (arr!33706 (Array (_ BitVec 32) ValueCell!12584)) (size!34243 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70072)

(declare-fun mapValue!41635 () ValueCell!12584)

(declare-fun mapKey!41635 () (_ BitVec 32))

(declare-fun mapRest!41635 () (Array (_ BitVec 32) ValueCell!12584))

(assert (=> mapNonEmpty!41635 (= (arr!33706 _values!874) (store mapRest!41635 mapKey!41635 mapValue!41635))))

(declare-fun b!1086554 () Bool)

(declare-fun e!620723 () Bool)

(declare-fun e!620721 () Bool)

(assert (=> b!1086554 (= e!620723 e!620721)))

(declare-fun res!724634 () Bool)

(assert (=> b!1086554 (=> res!724634 e!620721)))

(assert (=> b!1086554 (= res!724634 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17002 0))(
  ( (tuple2!17003 (_1!8511 (_ BitVec 64)) (_2!8511 V!40577)) )
))
(declare-datatypes ((List!23643 0))(
  ( (Nil!23640) (Cons!23639 (h!24848 tuple2!17002) (t!33293 List!23643)) )
))
(declare-datatypes ((ListLongMap!14983 0))(
  ( (ListLongMap!14984 (toList!7507 List!23643)) )
))
(declare-fun lt!483023 () ListLongMap!14983)

(declare-fun lt!483017 () ListLongMap!14983)

(assert (=> b!1086554 (= lt!483023 lt!483017)))

(declare-fun lt!483016 () ListLongMap!14983)

(declare-fun -!788 (ListLongMap!14983 (_ BitVec 64)) ListLongMap!14983)

(assert (=> b!1086554 (= lt!483023 (-!788 lt!483016 k!904))))

(declare-datatypes ((Unit!35691 0))(
  ( (Unit!35692) )
))
(declare-fun lt!483010 () Unit!35691)

(declare-fun zeroValue!831 () V!40577)

(declare-fun lt!483022 () ListLongMap!14983)

(declare-fun addRemoveCommutativeForDiffKeys!31 (ListLongMap!14983 (_ BitVec 64) V!40577 (_ BitVec 64)) Unit!35691)

(assert (=> b!1086554 (= lt!483010 (addRemoveCommutativeForDiffKeys!31 lt!483022 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!483019 () ListLongMap!14983)

(declare-fun lt!483011 () tuple2!17002)

(declare-fun +!3235 (ListLongMap!14983 tuple2!17002) ListLongMap!14983)

(assert (=> b!1086554 (= lt!483019 (+!3235 lt!483017 lt!483011))))

(declare-fun lt!483020 () ListLongMap!14983)

(declare-fun lt!483015 () tuple2!17002)

(assert (=> b!1086554 (= lt!483017 (+!3235 lt!483020 lt!483015))))

(declare-fun lt!483014 () ListLongMap!14983)

(declare-fun lt!483009 () ListLongMap!14983)

(assert (=> b!1086554 (= lt!483014 lt!483009)))

(assert (=> b!1086554 (= lt!483009 (+!3235 lt!483016 lt!483011))))

(assert (=> b!1086554 (= lt!483016 (+!3235 lt!483022 lt!483015))))

(declare-fun lt!483008 () ListLongMap!14983)

(assert (=> b!1086554 (= lt!483019 (+!3235 (+!3235 lt!483008 lt!483015) lt!483011))))

(declare-fun minValue!831 () V!40577)

(assert (=> b!1086554 (= lt!483011 (tuple2!17003 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086554 (= lt!483015 (tuple2!17003 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086555 () Bool)

(declare-fun tp_is_empty!26587 () Bool)

(assert (=> b!1086555 (= e!620727 tp_is_empty!26587)))

(declare-fun b!1086556 () Bool)

(declare-fun res!724632 () Bool)

(assert (=> b!1086556 (=> (not res!724632) (not e!620726))))

(declare-fun _keys!1070 () array!70070)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70070 (_ BitVec 32)) Bool)

(assert (=> b!1086556 (= res!724632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086557 () Bool)

(declare-fun res!724637 () Bool)

(assert (=> b!1086557 (=> (not res!724637) (not e!620726))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086557 (= res!724637 (= (select (arr!33705 _keys!1070) i!650) k!904))))

(declare-fun b!1086558 () Bool)

(declare-fun res!724630 () Bool)

(assert (=> b!1086558 (=> (not res!724630) (not e!620726))))

(assert (=> b!1086558 (= res!724630 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34242 _keys!1070))))))

(declare-fun b!1086552 () Bool)

(declare-fun res!724633 () Bool)

(assert (=> b!1086552 (=> (not res!724633) (not e!620726))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086552 (= res!724633 (and (= (size!34243 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34242 _keys!1070) (size!34243 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!724636 () Bool)

(assert (=> start!95968 (=> (not res!724636) (not e!620726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95968 (= res!724636 (validMask!0 mask!1414))))

(assert (=> start!95968 e!620726))

(assert (=> start!95968 tp!79605))

(assert (=> start!95968 true))

(assert (=> start!95968 tp_is_empty!26587))

(declare-fun array_inv!25858 (array!70070) Bool)

(assert (=> start!95968 (array_inv!25858 _keys!1070)))

(declare-fun e!620724 () Bool)

(declare-fun array_inv!25859 (array!70072) Bool)

(assert (=> start!95968 (and (array_inv!25859 _values!874) e!620724)))

(declare-fun b!1086559 () Bool)

(declare-fun e!620725 () Bool)

(assert (=> b!1086559 (= e!620725 tp_is_empty!26587)))

(declare-fun b!1086560 () Bool)

(declare-fun res!724635 () Bool)

(assert (=> b!1086560 (=> (not res!724635) (not e!620726))))

(assert (=> b!1086560 (= res!724635 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23639))))

(declare-fun b!1086561 () Bool)

(assert (=> b!1086561 (= e!620728 (not e!620723))))

(declare-fun res!724631 () Bool)

(assert (=> b!1086561 (=> res!724631 e!620723)))

(assert (=> b!1086561 (= res!724631 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4261 (array!70070 array!70072 (_ BitVec 32) (_ BitVec 32) V!40577 V!40577 (_ BitVec 32) Int) ListLongMap!14983)

(assert (=> b!1086561 (= lt!483014 (getCurrentListMap!4261 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483021 () array!70072)

(assert (=> b!1086561 (= lt!483019 (getCurrentListMap!4261 lt!483007 lt!483021 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086561 (and (= lt!483008 lt!483020) (= lt!483020 lt!483008))))

(assert (=> b!1086561 (= lt!483020 (-!788 lt!483022 k!904))))

(declare-fun lt!483013 () Unit!35691)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!67 (array!70070 array!70072 (_ BitVec 32) (_ BitVec 32) V!40577 V!40577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35691)

(assert (=> b!1086561 (= lt!483013 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!67 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4013 (array!70070 array!70072 (_ BitVec 32) (_ BitVec 32) V!40577 V!40577 (_ BitVec 32) Int) ListLongMap!14983)

(assert (=> b!1086561 (= lt!483008 (getCurrentListMapNoExtraKeys!4013 lt!483007 lt!483021 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2149 (Int (_ BitVec 64)) V!40577)

(assert (=> b!1086561 (= lt!483021 (array!70073 (store (arr!33706 _values!874) i!650 (ValueCellFull!12584 (dynLambda!2149 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34243 _values!874)))))

(assert (=> b!1086561 (= lt!483022 (getCurrentListMapNoExtraKeys!4013 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086561 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483012 () Unit!35691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70070 (_ BitVec 64) (_ BitVec 32)) Unit!35691)

(assert (=> b!1086561 (= lt!483012 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086562 () Bool)

(assert (=> b!1086562 (= e!620721 true)))

(assert (=> b!1086562 (= (-!788 lt!483009 k!904) (+!3235 lt!483023 lt!483011))))

(declare-fun lt!483018 () Unit!35691)

(assert (=> b!1086562 (= lt!483018 (addRemoveCommutativeForDiffKeys!31 lt!483016 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086563 () Bool)

(assert (=> b!1086563 (= e!620726 e!620728)))

(declare-fun res!724628 () Bool)

(assert (=> b!1086563 (=> (not res!724628) (not e!620728))))

(assert (=> b!1086563 (= res!724628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483007 mask!1414))))

(assert (=> b!1086563 (= lt!483007 (array!70071 (store (arr!33705 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34242 _keys!1070)))))

(declare-fun b!1086564 () Bool)

(assert (=> b!1086564 (= e!620724 (and e!620725 mapRes!41635))))

(declare-fun condMapEmpty!41635 () Bool)

(declare-fun mapDefault!41635 () ValueCell!12584)

