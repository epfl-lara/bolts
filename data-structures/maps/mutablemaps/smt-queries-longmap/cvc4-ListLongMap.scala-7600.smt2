; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95960 () Bool)

(assert start!95960)

(declare-fun b_free!22577 () Bool)

(declare-fun b_next!22577 () Bool)

(assert (=> start!95960 (= b_free!22577 (not b_next!22577))))

(declare-fun tp!79581 () Bool)

(declare-fun b_and!35847 () Bool)

(assert (=> start!95960 (= tp!79581 b_and!35847)))

(declare-fun b!1086375 () Bool)

(declare-fun res!724505 () Bool)

(declare-fun e!620630 () Bool)

(assert (=> b!1086375 (=> (not res!724505) (not e!620630))))

(declare-datatypes ((array!70054 0))(
  ( (array!70055 (arr!33697 (Array (_ BitVec 32) (_ BitVec 64))) (size!34234 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70054)

(declare-datatypes ((List!23634 0))(
  ( (Nil!23631) (Cons!23630 (h!24839 (_ BitVec 64)) (t!33276 List!23634)) )
))
(declare-fun arrayNoDuplicates!0 (array!70054 (_ BitVec 32) List!23634) Bool)

(assert (=> b!1086375 (= res!724505 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23631))))

(declare-fun b!1086376 () Bool)

(declare-fun e!620632 () Bool)

(declare-fun e!620627 () Bool)

(assert (=> b!1086376 (= e!620632 e!620627)))

(declare-fun res!724497 () Bool)

(assert (=> b!1086376 (=> res!724497 e!620627)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1086376 (= res!724497 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40565 0))(
  ( (V!40566 (val!13346 Int)) )
))
(declare-datatypes ((tuple2!16994 0))(
  ( (tuple2!16995 (_1!8507 (_ BitVec 64)) (_2!8507 V!40565)) )
))
(declare-datatypes ((List!23635 0))(
  ( (Nil!23632) (Cons!23631 (h!24840 tuple2!16994) (t!33277 List!23635)) )
))
(declare-datatypes ((ListLongMap!14975 0))(
  ( (ListLongMap!14976 (toList!7503 List!23635)) )
))
(declare-fun lt!482807 () ListLongMap!14975)

(declare-fun lt!482805 () ListLongMap!14975)

(assert (=> b!1086376 (= lt!482807 lt!482805)))

(declare-fun lt!482817 () ListLongMap!14975)

(declare-fun -!784 (ListLongMap!14975 (_ BitVec 64)) ListLongMap!14975)

(assert (=> b!1086376 (= lt!482807 (-!784 lt!482817 k!904))))

(declare-datatypes ((Unit!35683 0))(
  ( (Unit!35684) )
))
(declare-fun lt!482812 () Unit!35683)

(declare-fun lt!482813 () ListLongMap!14975)

(declare-fun zeroValue!831 () V!40565)

(declare-fun addRemoveCommutativeForDiffKeys!28 (ListLongMap!14975 (_ BitVec 64) V!40565 (_ BitVec 64)) Unit!35683)

(assert (=> b!1086376 (= lt!482812 (addRemoveCommutativeForDiffKeys!28 lt!482813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!482803 () ListLongMap!14975)

(declare-fun lt!482808 () tuple2!16994)

(declare-fun +!3232 (ListLongMap!14975 tuple2!16994) ListLongMap!14975)

(assert (=> b!1086376 (= lt!482803 (+!3232 lt!482805 lt!482808))))

(declare-fun lt!482816 () ListLongMap!14975)

(declare-fun lt!482810 () tuple2!16994)

(assert (=> b!1086376 (= lt!482805 (+!3232 lt!482816 lt!482810))))

(declare-fun lt!482806 () ListLongMap!14975)

(declare-fun lt!482811 () ListLongMap!14975)

(assert (=> b!1086376 (= lt!482806 lt!482811)))

(assert (=> b!1086376 (= lt!482811 (+!3232 lt!482817 lt!482808))))

(assert (=> b!1086376 (= lt!482817 (+!3232 lt!482813 lt!482810))))

(declare-fun lt!482804 () ListLongMap!14975)

(assert (=> b!1086376 (= lt!482803 (+!3232 (+!3232 lt!482804 lt!482810) lt!482808))))

(declare-fun minValue!831 () V!40565)

(assert (=> b!1086376 (= lt!482808 (tuple2!16995 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086376 (= lt!482810 (tuple2!16995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086377 () Bool)

(declare-fun e!620626 () Bool)

(assert (=> b!1086377 (= e!620630 e!620626)))

(declare-fun res!724498 () Bool)

(assert (=> b!1086377 (=> (not res!724498) (not e!620626))))

(declare-fun lt!482815 () array!70054)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70054 (_ BitVec 32)) Bool)

(assert (=> b!1086377 (= res!724498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482815 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086377 (= lt!482815 (array!70055 (store (arr!33697 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34234 _keys!1070)))))

(declare-fun mapIsEmpty!41623 () Bool)

(declare-fun mapRes!41623 () Bool)

(assert (=> mapIsEmpty!41623 mapRes!41623))

(declare-fun b!1086378 () Bool)

(assert (=> b!1086378 (= e!620626 (not e!620632))))

(declare-fun res!724501 () Bool)

(assert (=> b!1086378 (=> res!724501 e!620632)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086378 (= res!724501 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((ValueCell!12580 0))(
  ( (ValueCellFull!12580 (v!15968 V!40565)) (EmptyCell!12580) )
))
(declare-datatypes ((array!70056 0))(
  ( (array!70057 (arr!33698 (Array (_ BitVec 32) ValueCell!12580)) (size!34235 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70056)

(declare-fun getCurrentListMap!4258 (array!70054 array!70056 (_ BitVec 32) (_ BitVec 32) V!40565 V!40565 (_ BitVec 32) Int) ListLongMap!14975)

(assert (=> b!1086378 (= lt!482806 (getCurrentListMap!4258 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482814 () array!70056)

(assert (=> b!1086378 (= lt!482803 (getCurrentListMap!4258 lt!482815 lt!482814 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086378 (and (= lt!482804 lt!482816) (= lt!482816 lt!482804))))

(assert (=> b!1086378 (= lt!482816 (-!784 lt!482813 k!904))))

(declare-fun lt!482818 () Unit!35683)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!64 (array!70054 array!70056 (_ BitVec 32) (_ BitVec 32) V!40565 V!40565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35683)

(assert (=> b!1086378 (= lt!482818 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!64 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4010 (array!70054 array!70056 (_ BitVec 32) (_ BitVec 32) V!40565 V!40565 (_ BitVec 32) Int) ListLongMap!14975)

(assert (=> b!1086378 (= lt!482804 (getCurrentListMapNoExtraKeys!4010 lt!482815 lt!482814 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2146 (Int (_ BitVec 64)) V!40565)

(assert (=> b!1086378 (= lt!482814 (array!70057 (store (arr!33698 _values!874) i!650 (ValueCellFull!12580 (dynLambda!2146 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34235 _values!874)))))

(assert (=> b!1086378 (= lt!482813 (getCurrentListMapNoExtraKeys!4010 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086378 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482809 () Unit!35683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70054 (_ BitVec 64) (_ BitVec 32)) Unit!35683)

(assert (=> b!1086378 (= lt!482809 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086379 () Bool)

(declare-fun e!620629 () Bool)

(declare-fun tp_is_empty!26579 () Bool)

(assert (=> b!1086379 (= e!620629 tp_is_empty!26579)))

(declare-fun b!1086380 () Bool)

(assert (=> b!1086380 (= e!620627 true)))

(assert (=> b!1086380 (= (-!784 lt!482811 k!904) (+!3232 lt!482807 lt!482808))))

(declare-fun lt!482819 () Unit!35683)

(assert (=> b!1086380 (= lt!482819 (addRemoveCommutativeForDiffKeys!28 lt!482817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086381 () Bool)

(declare-fun res!724503 () Bool)

(assert (=> b!1086381 (=> (not res!724503) (not e!620630))))

(assert (=> b!1086381 (= res!724503 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34234 _keys!1070))))))

(declare-fun mapNonEmpty!41623 () Bool)

(declare-fun tp!79580 () Bool)

(assert (=> mapNonEmpty!41623 (= mapRes!41623 (and tp!79580 e!620629))))

(declare-fun mapRest!41623 () (Array (_ BitVec 32) ValueCell!12580))

(declare-fun mapKey!41623 () (_ BitVec 32))

(declare-fun mapValue!41623 () ValueCell!12580)

(assert (=> mapNonEmpty!41623 (= (arr!33698 _values!874) (store mapRest!41623 mapKey!41623 mapValue!41623))))

(declare-fun res!724500 () Bool)

(assert (=> start!95960 (=> (not res!724500) (not e!620630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95960 (= res!724500 (validMask!0 mask!1414))))

(assert (=> start!95960 e!620630))

(assert (=> start!95960 tp!79581))

(assert (=> start!95960 true))

(assert (=> start!95960 tp_is_empty!26579))

(declare-fun array_inv!25854 (array!70054) Bool)

(assert (=> start!95960 (array_inv!25854 _keys!1070)))

(declare-fun e!620631 () Bool)

(declare-fun array_inv!25855 (array!70056) Bool)

(assert (=> start!95960 (and (array_inv!25855 _values!874) e!620631)))

(declare-fun b!1086382 () Bool)

(declare-fun e!620625 () Bool)

(assert (=> b!1086382 (= e!620625 tp_is_empty!26579)))

(declare-fun b!1086383 () Bool)

(declare-fun res!724496 () Bool)

(assert (=> b!1086383 (=> (not res!724496) (not e!620630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086383 (= res!724496 (validKeyInArray!0 k!904))))

(declare-fun b!1086384 () Bool)

(declare-fun res!724502 () Bool)

(assert (=> b!1086384 (=> (not res!724502) (not e!620630))))

(assert (=> b!1086384 (= res!724502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086385 () Bool)

(declare-fun res!724504 () Bool)

(assert (=> b!1086385 (=> (not res!724504) (not e!620626))))

(assert (=> b!1086385 (= res!724504 (arrayNoDuplicates!0 lt!482815 #b00000000000000000000000000000000 Nil!23631))))

(declare-fun b!1086386 () Bool)

(declare-fun res!724495 () Bool)

(assert (=> b!1086386 (=> (not res!724495) (not e!620630))))

(assert (=> b!1086386 (= res!724495 (and (= (size!34235 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34234 _keys!1070) (size!34235 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086387 () Bool)

(declare-fun res!724499 () Bool)

(assert (=> b!1086387 (=> (not res!724499) (not e!620630))))

(assert (=> b!1086387 (= res!724499 (= (select (arr!33697 _keys!1070) i!650) k!904))))

(declare-fun b!1086388 () Bool)

(assert (=> b!1086388 (= e!620631 (and e!620625 mapRes!41623))))

(declare-fun condMapEmpty!41623 () Bool)

(declare-fun mapDefault!41623 () ValueCell!12580)

