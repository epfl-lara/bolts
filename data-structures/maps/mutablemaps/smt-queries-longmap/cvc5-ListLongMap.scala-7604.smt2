; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95980 () Bool)

(assert start!95980)

(declare-fun b_free!22597 () Bool)

(declare-fun b_next!22597 () Bool)

(assert (=> start!95980 (= b_free!22597 (not b_next!22597))))

(declare-fun tp!79640 () Bool)

(declare-fun b_and!35887 () Bool)

(assert (=> start!95980 (= tp!79640 b_and!35887)))

(declare-fun res!724833 () Bool)

(declare-fun e!620867 () Bool)

(assert (=> start!95980 (=> (not res!724833) (not e!620867))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95980 (= res!724833 (validMask!0 mask!1414))))

(assert (=> start!95980 e!620867))

(assert (=> start!95980 tp!79640))

(assert (=> start!95980 true))

(declare-fun tp_is_empty!26599 () Bool)

(assert (=> start!95980 tp_is_empty!26599))

(declare-datatypes ((array!70094 0))(
  ( (array!70095 (arr!33717 (Array (_ BitVec 32) (_ BitVec 64))) (size!34254 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70094)

(declare-fun array_inv!25866 (array!70094) Bool)

(assert (=> start!95980 (array_inv!25866 _keys!1070)))

(declare-datatypes ((V!40593 0))(
  ( (V!40594 (val!13356 Int)) )
))
(declare-datatypes ((ValueCell!12590 0))(
  ( (ValueCellFull!12590 (v!15978 V!40593)) (EmptyCell!12590) )
))
(declare-datatypes ((array!70096 0))(
  ( (array!70097 (arr!33718 (Array (_ BitVec 32) ValueCell!12590)) (size!34255 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70096)

(declare-fun e!620870 () Bool)

(declare-fun array_inv!25867 (array!70096) Bool)

(assert (=> start!95980 (and (array_inv!25867 _values!874) e!620870)))

(declare-fun b!1086815 () Bool)

(declare-fun res!724831 () Bool)

(assert (=> b!1086815 (=> (not res!724831) (not e!620867))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086815 (= res!724831 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34254 _keys!1070))))))

(declare-fun b!1086816 () Bool)

(declare-fun e!620868 () Bool)

(assert (=> b!1086816 (= e!620868 tp_is_empty!26599)))

(declare-fun b!1086817 () Bool)

(declare-fun e!620871 () Bool)

(assert (=> b!1086817 (= e!620871 true)))

(declare-datatypes ((tuple2!17012 0))(
  ( (tuple2!17013 (_1!8516 (_ BitVec 64)) (_2!8516 V!40593)) )
))
(declare-fun lt!483320 () tuple2!17012)

(declare-fun k!904 () (_ BitVec 64))

(declare-datatypes ((List!23652 0))(
  ( (Nil!23649) (Cons!23648 (h!24857 tuple2!17012) (t!33314 List!23652)) )
))
(declare-datatypes ((ListLongMap!14993 0))(
  ( (ListLongMap!14994 (toList!7512 List!23652)) )
))
(declare-fun lt!483328 () ListLongMap!14993)

(declare-fun lt!483317 () ListLongMap!14993)

(declare-fun -!793 (ListLongMap!14993 (_ BitVec 64)) ListLongMap!14993)

(declare-fun +!3240 (ListLongMap!14993 tuple2!17012) ListLongMap!14993)

(assert (=> b!1086817 (= (-!793 lt!483317 k!904) (+!3240 lt!483328 lt!483320))))

(declare-fun minValue!831 () V!40593)

(declare-fun lt!483319 () ListLongMap!14993)

(declare-datatypes ((Unit!35701 0))(
  ( (Unit!35702) )
))
(declare-fun lt!483323 () Unit!35701)

(declare-fun addRemoveCommutativeForDiffKeys!36 (ListLongMap!14993 (_ BitVec 64) V!40593 (_ BitVec 64)) Unit!35701)

(assert (=> b!1086817 (= lt!483323 (addRemoveCommutativeForDiffKeys!36 lt!483319 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086818 () Bool)

(declare-fun res!724834 () Bool)

(declare-fun e!620869 () Bool)

(assert (=> b!1086818 (=> (not res!724834) (not e!620869))))

(declare-fun lt!483322 () array!70094)

(declare-datatypes ((List!23653 0))(
  ( (Nil!23650) (Cons!23649 (h!24858 (_ BitVec 64)) (t!33315 List!23653)) )
))
(declare-fun arrayNoDuplicates!0 (array!70094 (_ BitVec 32) List!23653) Bool)

(assert (=> b!1086818 (= res!724834 (arrayNoDuplicates!0 lt!483322 #b00000000000000000000000000000000 Nil!23650))))

(declare-fun b!1086819 () Bool)

(declare-fun e!620865 () Bool)

(assert (=> b!1086819 (= e!620865 e!620871)))

(declare-fun res!724830 () Bool)

(assert (=> b!1086819 (=> res!724830 e!620871)))

(assert (=> b!1086819 (= res!724830 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!483321 () ListLongMap!14993)

(assert (=> b!1086819 (= lt!483328 lt!483321)))

(assert (=> b!1086819 (= lt!483328 (-!793 lt!483319 k!904))))

(declare-fun zeroValue!831 () V!40593)

(declare-fun lt!483318 () Unit!35701)

(declare-fun lt!483325 () ListLongMap!14993)

(assert (=> b!1086819 (= lt!483318 (addRemoveCommutativeForDiffKeys!36 lt!483325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!483327 () ListLongMap!14993)

(assert (=> b!1086819 (= lt!483327 (+!3240 lt!483321 lt!483320))))

(declare-fun lt!483316 () ListLongMap!14993)

(declare-fun lt!483313 () tuple2!17012)

(assert (=> b!1086819 (= lt!483321 (+!3240 lt!483316 lt!483313))))

(declare-fun lt!483324 () ListLongMap!14993)

(assert (=> b!1086819 (= lt!483324 lt!483317)))

(assert (=> b!1086819 (= lt!483317 (+!3240 lt!483319 lt!483320))))

(assert (=> b!1086819 (= lt!483319 (+!3240 lt!483325 lt!483313))))

(declare-fun lt!483326 () ListLongMap!14993)

(assert (=> b!1086819 (= lt!483327 (+!3240 (+!3240 lt!483326 lt!483313) lt!483320))))

(assert (=> b!1086819 (= lt!483320 (tuple2!17013 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086819 (= lt!483313 (tuple2!17013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086820 () Bool)

(assert (=> b!1086820 (= e!620869 (not e!620865))))

(declare-fun res!724828 () Bool)

(assert (=> b!1086820 (=> res!724828 e!620865)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086820 (= res!724828 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4266 (array!70094 array!70096 (_ BitVec 32) (_ BitVec 32) V!40593 V!40593 (_ BitVec 32) Int) ListLongMap!14993)

(assert (=> b!1086820 (= lt!483324 (getCurrentListMap!4266 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483315 () array!70096)

(assert (=> b!1086820 (= lt!483327 (getCurrentListMap!4266 lt!483322 lt!483315 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086820 (and (= lt!483326 lt!483316) (= lt!483316 lt!483326))))

(assert (=> b!1086820 (= lt!483316 (-!793 lt!483325 k!904))))

(declare-fun lt!483314 () Unit!35701)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!72 (array!70094 array!70096 (_ BitVec 32) (_ BitVec 32) V!40593 V!40593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35701)

(assert (=> b!1086820 (= lt!483314 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!72 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4018 (array!70094 array!70096 (_ BitVec 32) (_ BitVec 32) V!40593 V!40593 (_ BitVec 32) Int) ListLongMap!14993)

(assert (=> b!1086820 (= lt!483326 (getCurrentListMapNoExtraKeys!4018 lt!483322 lt!483315 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2154 (Int (_ BitVec 64)) V!40593)

(assert (=> b!1086820 (= lt!483315 (array!70097 (store (arr!33718 _values!874) i!650 (ValueCellFull!12590 (dynLambda!2154 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34255 _values!874)))))

(assert (=> b!1086820 (= lt!483325 (getCurrentListMapNoExtraKeys!4018 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086820 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483329 () Unit!35701)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70094 (_ BitVec 64) (_ BitVec 32)) Unit!35701)

(assert (=> b!1086820 (= lt!483329 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086821 () Bool)

(declare-fun res!724827 () Bool)

(assert (=> b!1086821 (=> (not res!724827) (not e!620867))))

(assert (=> b!1086821 (= res!724827 (and (= (size!34255 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34254 _keys!1070) (size!34255 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41653 () Bool)

(declare-fun mapRes!41653 () Bool)

(declare-fun tp!79641 () Bool)

(assert (=> mapNonEmpty!41653 (= mapRes!41653 (and tp!79641 e!620868))))

(declare-fun mapKey!41653 () (_ BitVec 32))

(declare-fun mapRest!41653 () (Array (_ BitVec 32) ValueCell!12590))

(declare-fun mapValue!41653 () ValueCell!12590)

(assert (=> mapNonEmpty!41653 (= (arr!33718 _values!874) (store mapRest!41653 mapKey!41653 mapValue!41653))))

(declare-fun b!1086822 () Bool)

(declare-fun e!620872 () Bool)

(assert (=> b!1086822 (= e!620872 tp_is_empty!26599)))

(declare-fun mapIsEmpty!41653 () Bool)

(assert (=> mapIsEmpty!41653 mapRes!41653))

(declare-fun b!1086823 () Bool)

(declare-fun res!724826 () Bool)

(assert (=> b!1086823 (=> (not res!724826) (not e!620867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70094 (_ BitVec 32)) Bool)

(assert (=> b!1086823 (= res!724826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086824 () Bool)

(declare-fun res!724832 () Bool)

(assert (=> b!1086824 (=> (not res!724832) (not e!620867))))

(assert (=> b!1086824 (= res!724832 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23650))))

(declare-fun b!1086825 () Bool)

(assert (=> b!1086825 (= e!620867 e!620869)))

(declare-fun res!724835 () Bool)

(assert (=> b!1086825 (=> (not res!724835) (not e!620869))))

(assert (=> b!1086825 (= res!724835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483322 mask!1414))))

(assert (=> b!1086825 (= lt!483322 (array!70095 (store (arr!33717 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34254 _keys!1070)))))

(declare-fun b!1086826 () Bool)

(declare-fun res!724829 () Bool)

(assert (=> b!1086826 (=> (not res!724829) (not e!620867))))

(assert (=> b!1086826 (= res!724829 (= (select (arr!33717 _keys!1070) i!650) k!904))))

(declare-fun b!1086827 () Bool)

(declare-fun res!724825 () Bool)

(assert (=> b!1086827 (=> (not res!724825) (not e!620867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086827 (= res!724825 (validKeyInArray!0 k!904))))

(declare-fun b!1086828 () Bool)

(assert (=> b!1086828 (= e!620870 (and e!620872 mapRes!41653))))

(declare-fun condMapEmpty!41653 () Bool)

(declare-fun mapDefault!41653 () ValueCell!12590)

