; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95954 () Bool)

(assert start!95954)

(declare-fun b_free!22571 () Bool)

(declare-fun b_next!22571 () Bool)

(assert (=> start!95954 (= b_free!22571 (not b_next!22571))))

(declare-fun tp!79563 () Bool)

(declare-fun b_and!35835 () Bool)

(assert (=> start!95954 (= tp!79563 b_and!35835)))

(declare-fun b!1086243 () Bool)

(declare-fun e!620553 () Bool)

(declare-fun tp_is_empty!26573 () Bool)

(assert (=> b!1086243 (= e!620553 tp_is_empty!26573)))

(declare-fun res!724402 () Bool)

(declare-fun e!620557 () Bool)

(assert (=> start!95954 (=> (not res!724402) (not e!620557))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95954 (= res!724402 (validMask!0 mask!1414))))

(assert (=> start!95954 e!620557))

(assert (=> start!95954 tp!79563))

(assert (=> start!95954 true))

(assert (=> start!95954 tp_is_empty!26573))

(declare-datatypes ((array!70042 0))(
  ( (array!70043 (arr!33691 (Array (_ BitVec 32) (_ BitVec 64))) (size!34228 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70042)

(declare-fun array_inv!25850 (array!70042) Bool)

(assert (=> start!95954 (array_inv!25850 _keys!1070)))

(declare-datatypes ((V!40557 0))(
  ( (V!40558 (val!13343 Int)) )
))
(declare-datatypes ((ValueCell!12577 0))(
  ( (ValueCellFull!12577 (v!15965 V!40557)) (EmptyCell!12577) )
))
(declare-datatypes ((array!70044 0))(
  ( (array!70045 (arr!33692 (Array (_ BitVec 32) ValueCell!12577)) (size!34229 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70044)

(declare-fun e!620560 () Bool)

(declare-fun array_inv!25851 (array!70044) Bool)

(assert (=> start!95954 (and (array_inv!25851 _values!874) e!620560)))

(declare-fun b!1086244 () Bool)

(declare-fun e!620554 () Bool)

(declare-fun e!620559 () Bool)

(assert (=> b!1086244 (= e!620554 (not e!620559))))

(declare-fun res!724396 () Bool)

(assert (=> b!1086244 (=> res!724396 e!620559)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086244 (= res!724396 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40557)

(declare-datatypes ((tuple2!16990 0))(
  ( (tuple2!16991 (_1!8505 (_ BitVec 64)) (_2!8505 V!40557)) )
))
(declare-datatypes ((List!23630 0))(
  ( (Nil!23627) (Cons!23626 (h!24835 tuple2!16990) (t!33266 List!23630)) )
))
(declare-datatypes ((ListLongMap!14971 0))(
  ( (ListLongMap!14972 (toList!7501 List!23630)) )
))
(declare-fun lt!482658 () ListLongMap!14971)

(declare-fun zeroValue!831 () V!40557)

(declare-fun getCurrentListMap!4256 (array!70042 array!70044 (_ BitVec 32) (_ BitVec 32) V!40557 V!40557 (_ BitVec 32) Int) ListLongMap!14971)

(assert (=> b!1086244 (= lt!482658 (getCurrentListMap!4256 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482656 () array!70044)

(declare-fun lt!482654 () array!70042)

(declare-fun lt!482653 () ListLongMap!14971)

(assert (=> b!1086244 (= lt!482653 (getCurrentListMap!4256 lt!482654 lt!482656 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482657 () ListLongMap!14971)

(declare-fun lt!482659 () ListLongMap!14971)

(assert (=> b!1086244 (and (= lt!482657 lt!482659) (= lt!482659 lt!482657))))

(declare-fun lt!482664 () ListLongMap!14971)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!782 (ListLongMap!14971 (_ BitVec 64)) ListLongMap!14971)

(assert (=> b!1086244 (= lt!482659 (-!782 lt!482664 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35679 0))(
  ( (Unit!35680) )
))
(declare-fun lt!482651 () Unit!35679)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!62 (array!70042 array!70044 (_ BitVec 32) (_ BitVec 32) V!40557 V!40557 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35679)

(assert (=> b!1086244 (= lt!482651 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!62 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4008 (array!70042 array!70044 (_ BitVec 32) (_ BitVec 32) V!40557 V!40557 (_ BitVec 32) Int) ListLongMap!14971)

(assert (=> b!1086244 (= lt!482657 (getCurrentListMapNoExtraKeys!4008 lt!482654 lt!482656 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2144 (Int (_ BitVec 64)) V!40557)

(assert (=> b!1086244 (= lt!482656 (array!70045 (store (arr!33692 _values!874) i!650 (ValueCellFull!12577 (dynLambda!2144 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34229 _values!874)))))

(assert (=> b!1086244 (= lt!482664 (getCurrentListMapNoExtraKeys!4008 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086244 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482666 () Unit!35679)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70042 (_ BitVec 64) (_ BitVec 32)) Unit!35679)

(assert (=> b!1086244 (= lt!482666 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086245 () Bool)

(declare-fun res!724401 () Bool)

(assert (=> b!1086245 (=> (not res!724401) (not e!620554))))

(declare-datatypes ((List!23631 0))(
  ( (Nil!23628) (Cons!23627 (h!24836 (_ BitVec 64)) (t!33267 List!23631)) )
))
(declare-fun arrayNoDuplicates!0 (array!70042 (_ BitVec 32) List!23631) Bool)

(assert (=> b!1086245 (= res!724401 (arrayNoDuplicates!0 lt!482654 #b00000000000000000000000000000000 Nil!23628))))

(declare-fun b!1086246 () Bool)

(declare-fun e!620556 () Bool)

(assert (=> b!1086246 (= e!620559 e!620556)))

(declare-fun res!724400 () Bool)

(assert (=> b!1086246 (=> res!724400 e!620556)))

(assert (=> b!1086246 (= res!724400 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!482652 () ListLongMap!14971)

(declare-fun lt!482650 () ListLongMap!14971)

(assert (=> b!1086246 (= lt!482652 lt!482650)))

(declare-fun lt!482662 () ListLongMap!14971)

(assert (=> b!1086246 (= lt!482652 (-!782 lt!482662 k!904))))

(declare-fun lt!482655 () Unit!35679)

(declare-fun addRemoveCommutativeForDiffKeys!26 (ListLongMap!14971 (_ BitVec 64) V!40557 (_ BitVec 64)) Unit!35679)

(assert (=> b!1086246 (= lt!482655 (addRemoveCommutativeForDiffKeys!26 lt!482664 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!482665 () tuple2!16990)

(declare-fun +!3230 (ListLongMap!14971 tuple2!16990) ListLongMap!14971)

(assert (=> b!1086246 (= lt!482653 (+!3230 lt!482650 lt!482665))))

(declare-fun lt!482660 () tuple2!16990)

(assert (=> b!1086246 (= lt!482650 (+!3230 lt!482659 lt!482660))))

(declare-fun lt!482663 () ListLongMap!14971)

(assert (=> b!1086246 (= lt!482658 lt!482663)))

(assert (=> b!1086246 (= lt!482663 (+!3230 lt!482662 lt!482665))))

(assert (=> b!1086246 (= lt!482662 (+!3230 lt!482664 lt!482660))))

(assert (=> b!1086246 (= lt!482653 (+!3230 (+!3230 lt!482657 lt!482660) lt!482665))))

(assert (=> b!1086246 (= lt!482665 (tuple2!16991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086246 (= lt!482660 (tuple2!16991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086247 () Bool)

(declare-fun res!724403 () Bool)

(assert (=> b!1086247 (=> (not res!724403) (not e!620557))))

(assert (=> b!1086247 (= res!724403 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23628))))

(declare-fun mapNonEmpty!41614 () Bool)

(declare-fun mapRes!41614 () Bool)

(declare-fun tp!79562 () Bool)

(declare-fun e!620558 () Bool)

(assert (=> mapNonEmpty!41614 (= mapRes!41614 (and tp!79562 e!620558))))

(declare-fun mapKey!41614 () (_ BitVec 32))

(declare-fun mapRest!41614 () (Array (_ BitVec 32) ValueCell!12577))

(declare-fun mapValue!41614 () ValueCell!12577)

(assert (=> mapNonEmpty!41614 (= (arr!33692 _values!874) (store mapRest!41614 mapKey!41614 mapValue!41614))))

(declare-fun b!1086248 () Bool)

(assert (=> b!1086248 (= e!620560 (and e!620553 mapRes!41614))))

(declare-fun condMapEmpty!41614 () Bool)

(declare-fun mapDefault!41614 () ValueCell!12577)

