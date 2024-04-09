; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96160 () Bool)

(assert start!96160)

(declare-fun b_free!22777 () Bool)

(declare-fun b_next!22777 () Bool)

(assert (=> start!96160 (= b_free!22777 (not b_next!22777))))

(declare-fun tp!80181 () Bool)

(declare-fun b_and!36247 () Bool)

(assert (=> start!96160 (= tp!80181 b_and!36247)))

(declare-fun b!1090793 () Bool)

(declare-fun e!623030 () Bool)

(declare-fun tp_is_empty!26779 () Bool)

(assert (=> b!1090793 (= e!623030 tp_is_empty!26779)))

(declare-fun b!1090794 () Bool)

(declare-fun res!727819 () Bool)

(declare-fun e!623028 () Bool)

(assert (=> b!1090794 (=> (not res!727819) (not e!623028))))

(declare-datatypes ((array!70446 0))(
  ( (array!70447 (arr!33893 (Array (_ BitVec 32) (_ BitVec 64))) (size!34430 (_ BitVec 32))) )
))
(declare-fun lt!486870 () array!70446)

(declare-datatypes ((List!23807 0))(
  ( (Nil!23804) (Cons!23803 (h!25012 (_ BitVec 64)) (t!33649 List!23807)) )
))
(declare-fun arrayNoDuplicates!0 (array!70446 (_ BitVec 32) List!23807) Bool)

(assert (=> b!1090794 (= res!727819 (arrayNoDuplicates!0 lt!486870 #b00000000000000000000000000000000 Nil!23804))))

(declare-fun mapNonEmpty!41923 () Bool)

(declare-fun mapRes!41923 () Bool)

(declare-fun tp!80180 () Bool)

(declare-fun e!623025 () Bool)

(assert (=> mapNonEmpty!41923 (= mapRes!41923 (and tp!80180 e!623025))))

(declare-datatypes ((V!40833 0))(
  ( (V!40834 (val!13446 Int)) )
))
(declare-datatypes ((ValueCell!12680 0))(
  ( (ValueCellFull!12680 (v!16068 V!40833)) (EmptyCell!12680) )
))
(declare-datatypes ((array!70448 0))(
  ( (array!70449 (arr!33894 (Array (_ BitVec 32) ValueCell!12680)) (size!34431 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70448)

(declare-fun mapRest!41923 () (Array (_ BitVec 32) ValueCell!12680))

(declare-fun mapKey!41923 () (_ BitVec 32))

(declare-fun mapValue!41923 () ValueCell!12680)

(assert (=> mapNonEmpty!41923 (= (arr!33894 _values!874) (store mapRest!41923 mapKey!41923 mapValue!41923))))

(declare-fun b!1090795 () Bool)

(declare-fun res!727817 () Bool)

(declare-fun e!623032 () Bool)

(assert (=> b!1090795 (=> (not res!727817) (not e!623032))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70446)

(assert (=> b!1090795 (= res!727817 (and (= (size!34431 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34430 _keys!1070) (size!34431 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090796 () Bool)

(declare-fun res!727818 () Bool)

(assert (=> b!1090796 (=> (not res!727818) (not e!623032))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090796 (= res!727818 (validKeyInArray!0 k!904))))

(declare-fun b!1090797 () Bool)

(declare-fun e!623026 () Bool)

(declare-fun e!623027 () Bool)

(assert (=> b!1090797 (= e!623026 e!623027)))

(declare-fun res!727813 () Bool)

(assert (=> b!1090797 (=> res!727813 e!623027)))

(assert (=> b!1090797 (= res!727813 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17168 0))(
  ( (tuple2!17169 (_1!8594 (_ BitVec 64)) (_2!8594 V!40833)) )
))
(declare-datatypes ((List!23808 0))(
  ( (Nil!23805) (Cons!23804 (h!25013 tuple2!17168) (t!33650 List!23808)) )
))
(declare-datatypes ((ListLongMap!15149 0))(
  ( (ListLongMap!15150 (toList!7590 List!23808)) )
))
(declare-fun lt!486871 () ListLongMap!15149)

(declare-fun lt!486878 () ListLongMap!15149)

(assert (=> b!1090797 (= lt!486871 lt!486878)))

(declare-fun lt!486872 () ListLongMap!15149)

(declare-fun lt!486876 () tuple2!17168)

(declare-fun +!3298 (ListLongMap!15149 tuple2!17168) ListLongMap!15149)

(assert (=> b!1090797 (= lt!486878 (+!3298 lt!486872 lt!486876))))

(declare-fun lt!486875 () ListLongMap!15149)

(declare-fun lt!486873 () ListLongMap!15149)

(assert (=> b!1090797 (= lt!486875 lt!486873)))

(declare-fun lt!486881 () ListLongMap!15149)

(assert (=> b!1090797 (= lt!486873 (+!3298 lt!486881 lt!486876))))

(declare-fun lt!486869 () ListLongMap!15149)

(assert (=> b!1090797 (= lt!486875 (+!3298 lt!486869 lt!486876))))

(declare-fun minValue!831 () V!40833)

(assert (=> b!1090797 (= lt!486876 (tuple2!17169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090798 () Bool)

(assert (=> b!1090798 (= e!623032 e!623028)))

(declare-fun res!727822 () Bool)

(assert (=> b!1090798 (=> (not res!727822) (not e!623028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70446 (_ BitVec 32)) Bool)

(assert (=> b!1090798 (= res!727822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486870 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090798 (= lt!486870 (array!70447 (store (arr!33893 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34430 _keys!1070)))))

(declare-fun b!1090799 () Bool)

(assert (=> b!1090799 (= e!623025 tp_is_empty!26779)))

(declare-fun b!1090800 () Bool)

(declare-fun res!727814 () Bool)

(assert (=> b!1090800 (=> (not res!727814) (not e!623032))))

(assert (=> b!1090800 (= res!727814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090801 () Bool)

(declare-fun res!727823 () Bool)

(assert (=> b!1090801 (=> (not res!727823) (not e!623032))))

(assert (=> b!1090801 (= res!727823 (= (select (arr!33893 _keys!1070) i!650) k!904))))

(declare-fun b!1090802 () Bool)

(assert (=> b!1090802 (= e!623028 (not e!623026))))

(declare-fun res!727820 () Bool)

(assert (=> b!1090802 (=> res!727820 e!623026)))

(assert (=> b!1090802 (= res!727820 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40833)

(declare-fun getCurrentListMap!4329 (array!70446 array!70448 (_ BitVec 32) (_ BitVec 32) V!40833 V!40833 (_ BitVec 32) Int) ListLongMap!15149)

(assert (=> b!1090802 (= lt!486871 (getCurrentListMap!4329 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486879 () array!70448)

(assert (=> b!1090802 (= lt!486875 (getCurrentListMap!4329 lt!486870 lt!486879 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090802 (and (= lt!486869 lt!486881) (= lt!486881 lt!486869))))

(declare-fun -!868 (ListLongMap!15149 (_ BitVec 64)) ListLongMap!15149)

(assert (=> b!1090802 (= lt!486881 (-!868 lt!486872 k!904))))

(declare-datatypes ((Unit!35851 0))(
  ( (Unit!35852) )
))
(declare-fun lt!486880 () Unit!35851)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!135 (array!70446 array!70448 (_ BitVec 32) (_ BitVec 32) V!40833 V!40833 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35851)

(assert (=> b!1090802 (= lt!486880 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!135 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4081 (array!70446 array!70448 (_ BitVec 32) (_ BitVec 32) V!40833 V!40833 (_ BitVec 32) Int) ListLongMap!15149)

(assert (=> b!1090802 (= lt!486869 (getCurrentListMapNoExtraKeys!4081 lt!486870 lt!486879 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2217 (Int (_ BitVec 64)) V!40833)

(assert (=> b!1090802 (= lt!486879 (array!70449 (store (arr!33894 _values!874) i!650 (ValueCellFull!12680 (dynLambda!2217 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34431 _values!874)))))

(assert (=> b!1090802 (= lt!486872 (getCurrentListMapNoExtraKeys!4081 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090802 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486874 () Unit!35851)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70446 (_ BitVec 64) (_ BitVec 32)) Unit!35851)

(assert (=> b!1090802 (= lt!486874 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090803 () Bool)

(declare-fun res!727821 () Bool)

(assert (=> b!1090803 (=> (not res!727821) (not e!623032))))

(assert (=> b!1090803 (= res!727821 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34430 _keys!1070))))))

(declare-fun res!727816 () Bool)

(assert (=> start!96160 (=> (not res!727816) (not e!623032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96160 (= res!727816 (validMask!0 mask!1414))))

(assert (=> start!96160 e!623032))

(assert (=> start!96160 tp!80181))

(assert (=> start!96160 true))

(assert (=> start!96160 tp_is_empty!26779))

(declare-fun array_inv!25990 (array!70446) Bool)

(assert (=> start!96160 (array_inv!25990 _keys!1070)))

(declare-fun e!623031 () Bool)

(declare-fun array_inv!25991 (array!70448) Bool)

(assert (=> start!96160 (and (array_inv!25991 _values!874) e!623031)))

(declare-fun b!1090804 () Bool)

(declare-fun res!727815 () Bool)

(assert (=> b!1090804 (=> (not res!727815) (not e!623032))))

(assert (=> b!1090804 (= res!727815 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23804))))

(declare-fun b!1090805 () Bool)

(assert (=> b!1090805 (= e!623027 true)))

(assert (=> b!1090805 (= (-!868 lt!486878 k!904) lt!486873)))

(declare-fun lt!486877 () Unit!35851)

(declare-fun addRemoveCommutativeForDiffKeys!96 (ListLongMap!15149 (_ BitVec 64) V!40833 (_ BitVec 64)) Unit!35851)

(assert (=> b!1090805 (= lt!486877 (addRemoveCommutativeForDiffKeys!96 lt!486872 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapIsEmpty!41923 () Bool)

(assert (=> mapIsEmpty!41923 mapRes!41923))

(declare-fun b!1090806 () Bool)

(assert (=> b!1090806 (= e!623031 (and e!623030 mapRes!41923))))

(declare-fun condMapEmpty!41923 () Bool)

(declare-fun mapDefault!41923 () ValueCell!12680)

