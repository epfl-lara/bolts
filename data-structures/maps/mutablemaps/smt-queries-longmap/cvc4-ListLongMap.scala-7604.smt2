; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95984 () Bool)

(assert start!95984)

(declare-fun b_free!22601 () Bool)

(declare-fun b_next!22601 () Bool)

(assert (=> start!95984 (= b_free!22601 (not b_next!22601))))

(declare-fun tp!79653 () Bool)

(declare-fun b_and!35895 () Bool)

(assert (=> start!95984 (= tp!79653 b_and!35895)))

(declare-fun b!1086904 () Bool)

(declare-fun res!724891 () Bool)

(declare-fun e!620919 () Bool)

(assert (=> b!1086904 (=> (not res!724891) (not e!620919))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70102 0))(
  ( (array!70103 (arr!33721 (Array (_ BitVec 32) (_ BitVec 64))) (size!34258 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70102)

(declare-datatypes ((V!40597 0))(
  ( (V!40598 (val!13358 Int)) )
))
(declare-datatypes ((ValueCell!12592 0))(
  ( (ValueCellFull!12592 (v!15980 V!40597)) (EmptyCell!12592) )
))
(declare-datatypes ((array!70104 0))(
  ( (array!70105 (arr!33722 (Array (_ BitVec 32) ValueCell!12592)) (size!34259 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70104)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1086904 (= res!724891 (and (= (size!34259 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34258 _keys!1070) (size!34259 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086905 () Bool)

(declare-fun e!620916 () Bool)

(declare-fun tp_is_empty!26603 () Bool)

(assert (=> b!1086905 (= e!620916 tp_is_empty!26603)))

(declare-fun mapIsEmpty!41659 () Bool)

(declare-fun mapRes!41659 () Bool)

(assert (=> mapIsEmpty!41659 mapRes!41659))

(declare-fun b!1086906 () Bool)

(declare-fun res!724898 () Bool)

(assert (=> b!1086906 (=> (not res!724898) (not e!620919))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086906 (= res!724898 (= (select (arr!33721 _keys!1070) i!650) k!904))))

(declare-fun b!1086907 () Bool)

(declare-fun res!724900 () Bool)

(declare-fun e!620920 () Bool)

(assert (=> b!1086907 (=> (not res!724900) (not e!620920))))

(declare-fun lt!483431 () array!70102)

(declare-datatypes ((List!23656 0))(
  ( (Nil!23653) (Cons!23652 (h!24861 (_ BitVec 64)) (t!33322 List!23656)) )
))
(declare-fun arrayNoDuplicates!0 (array!70102 (_ BitVec 32) List!23656) Bool)

(assert (=> b!1086907 (= res!724900 (arrayNoDuplicates!0 lt!483431 #b00000000000000000000000000000000 Nil!23653))))

(declare-fun res!724896 () Bool)

(assert (=> start!95984 (=> (not res!724896) (not e!620919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95984 (= res!724896 (validMask!0 mask!1414))))

(assert (=> start!95984 e!620919))

(assert (=> start!95984 tp!79653))

(assert (=> start!95984 true))

(assert (=> start!95984 tp_is_empty!26603))

(declare-fun array_inv!25870 (array!70102) Bool)

(assert (=> start!95984 (array_inv!25870 _keys!1070)))

(declare-fun e!620915 () Bool)

(declare-fun array_inv!25871 (array!70104) Bool)

(assert (=> start!95984 (and (array_inv!25871 _values!874) e!620915)))

(declare-fun b!1086903 () Bool)

(declare-fun e!620913 () Bool)

(assert (=> b!1086903 (= e!620920 (not e!620913))))

(declare-fun res!724892 () Bool)

(assert (=> b!1086903 (=> res!724892 e!620913)))

(assert (=> b!1086903 (= res!724892 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17016 0))(
  ( (tuple2!17017 (_1!8518 (_ BitVec 64)) (_2!8518 V!40597)) )
))
(declare-datatypes ((List!23657 0))(
  ( (Nil!23654) (Cons!23653 (h!24862 tuple2!17016) (t!33323 List!23657)) )
))
(declare-datatypes ((ListLongMap!14997 0))(
  ( (ListLongMap!14998 (toList!7514 List!23657)) )
))
(declare-fun lt!483429 () ListLongMap!14997)

(declare-fun minValue!831 () V!40597)

(declare-fun zeroValue!831 () V!40597)

(declare-fun getCurrentListMap!4268 (array!70102 array!70104 (_ BitVec 32) (_ BitVec 32) V!40597 V!40597 (_ BitVec 32) Int) ListLongMap!14997)

(assert (=> b!1086903 (= lt!483429 (getCurrentListMap!4268 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483424 () array!70104)

(declare-fun lt!483416 () ListLongMap!14997)

(assert (=> b!1086903 (= lt!483416 (getCurrentListMap!4268 lt!483431 lt!483424 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483423 () ListLongMap!14997)

(declare-fun lt!483418 () ListLongMap!14997)

(assert (=> b!1086903 (and (= lt!483423 lt!483418) (= lt!483418 lt!483423))))

(declare-fun lt!483415 () ListLongMap!14997)

(declare-fun -!795 (ListLongMap!14997 (_ BitVec 64)) ListLongMap!14997)

(assert (=> b!1086903 (= lt!483418 (-!795 lt!483415 k!904))))

(declare-datatypes ((Unit!35705 0))(
  ( (Unit!35706) )
))
(declare-fun lt!483425 () Unit!35705)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!74 (array!70102 array!70104 (_ BitVec 32) (_ BitVec 32) V!40597 V!40597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35705)

(assert (=> b!1086903 (= lt!483425 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!74 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4020 (array!70102 array!70104 (_ BitVec 32) (_ BitVec 32) V!40597 V!40597 (_ BitVec 32) Int) ListLongMap!14997)

(assert (=> b!1086903 (= lt!483423 (getCurrentListMapNoExtraKeys!4020 lt!483431 lt!483424 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2156 (Int (_ BitVec 64)) V!40597)

(assert (=> b!1086903 (= lt!483424 (array!70105 (store (arr!33722 _values!874) i!650 (ValueCellFull!12592 (dynLambda!2156 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34259 _values!874)))))

(assert (=> b!1086903 (= lt!483415 (getCurrentListMapNoExtraKeys!4020 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086903 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483419 () Unit!35705)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70102 (_ BitVec 64) (_ BitVec 32)) Unit!35705)

(assert (=> b!1086903 (= lt!483419 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086908 () Bool)

(declare-fun res!724901 () Bool)

(assert (=> b!1086908 (=> (not res!724901) (not e!620919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70102 (_ BitVec 32)) Bool)

(assert (=> b!1086908 (= res!724901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086909 () Bool)

(declare-fun res!724899 () Bool)

(assert (=> b!1086909 (=> (not res!724899) (not e!620919))))

(assert (=> b!1086909 (= res!724899 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23653))))

(declare-fun b!1086910 () Bool)

(declare-fun res!724894 () Bool)

(assert (=> b!1086910 (=> (not res!724894) (not e!620919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086910 (= res!724894 (validKeyInArray!0 k!904))))

(declare-fun b!1086911 () Bool)

(declare-fun e!620918 () Bool)

(assert (=> b!1086911 (= e!620918 tp_is_empty!26603)))

(declare-fun b!1086912 () Bool)

(assert (=> b!1086912 (= e!620915 (and e!620916 mapRes!41659))))

(declare-fun condMapEmpty!41659 () Bool)

(declare-fun mapDefault!41659 () ValueCell!12592)

