; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96164 () Bool)

(assert start!96164)

(declare-fun b_free!22781 () Bool)

(declare-fun b_next!22781 () Bool)

(assert (=> start!96164 (= b_free!22781 (not b_next!22781))))

(declare-fun tp!80193 () Bool)

(declare-fun b_and!36255 () Bool)

(assert (=> start!96164 (= tp!80193 b_and!36255)))

(declare-fun mapNonEmpty!41929 () Bool)

(declare-fun mapRes!41929 () Bool)

(declare-fun tp!80192 () Bool)

(declare-fun e!623077 () Bool)

(assert (=> mapNonEmpty!41929 (= mapRes!41929 (and tp!80192 e!623077))))

(declare-datatypes ((V!40837 0))(
  ( (V!40838 (val!13448 Int)) )
))
(declare-datatypes ((ValueCell!12682 0))(
  ( (ValueCellFull!12682 (v!16070 V!40837)) (EmptyCell!12682) )
))
(declare-fun mapRest!41929 () (Array (_ BitVec 32) ValueCell!12682))

(declare-fun mapValue!41929 () ValueCell!12682)

(declare-datatypes ((array!70454 0))(
  ( (array!70455 (arr!33897 (Array (_ BitVec 32) ValueCell!12682)) (size!34434 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70454)

(declare-fun mapKey!41929 () (_ BitVec 32))

(assert (=> mapNonEmpty!41929 (= (arr!33897 _values!874) (store mapRest!41929 mapKey!41929 mapValue!41929))))

(declare-fun b!1090881 () Bool)

(declare-fun res!727879 () Bool)

(declare-fun e!623074 () Bool)

(assert (=> b!1090881 (=> (not res!727879) (not e!623074))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70456 0))(
  ( (array!70457 (arr!33898 (Array (_ BitVec 32) (_ BitVec 64))) (size!34435 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70456)

(assert (=> b!1090881 (= res!727879 (and (= (size!34434 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34435 _keys!1070) (size!34434 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090882 () Bool)

(declare-fun res!727883 () Bool)

(assert (=> b!1090882 (=> (not res!727883) (not e!623074))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090882 (= res!727883 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34435 _keys!1070))))))

(declare-fun b!1090883 () Bool)

(declare-fun e!623073 () Bool)

(declare-fun e!623075 () Bool)

(assert (=> b!1090883 (= e!623073 e!623075)))

(declare-fun res!727888 () Bool)

(assert (=> b!1090883 (=> res!727888 e!623075)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1090883 (= res!727888 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17172 0))(
  ( (tuple2!17173 (_1!8596 (_ BitVec 64)) (_2!8596 V!40837)) )
))
(declare-datatypes ((List!23811 0))(
  ( (Nil!23808) (Cons!23807 (h!25016 tuple2!17172) (t!33657 List!23811)) )
))
(declare-datatypes ((ListLongMap!15153 0))(
  ( (ListLongMap!15154 (toList!7592 List!23811)) )
))
(declare-fun lt!486948 () ListLongMap!15153)

(declare-fun lt!486954 () ListLongMap!15153)

(assert (=> b!1090883 (= lt!486948 lt!486954)))

(declare-fun lt!486949 () ListLongMap!15153)

(declare-fun lt!486951 () tuple2!17172)

(declare-fun +!3300 (ListLongMap!15153 tuple2!17172) ListLongMap!15153)

(assert (=> b!1090883 (= lt!486954 (+!3300 lt!486949 lt!486951))))

(declare-fun lt!486955 () ListLongMap!15153)

(declare-fun lt!486959 () ListLongMap!15153)

(assert (=> b!1090883 (= lt!486955 lt!486959)))

(declare-fun lt!486947 () ListLongMap!15153)

(assert (=> b!1090883 (= lt!486959 (+!3300 lt!486947 lt!486951))))

(declare-fun lt!486958 () ListLongMap!15153)

(assert (=> b!1090883 (= lt!486955 (+!3300 lt!486958 lt!486951))))

(declare-fun minValue!831 () V!40837)

(assert (=> b!1090883 (= lt!486951 (tuple2!17173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!727880 () Bool)

(assert (=> start!96164 (=> (not res!727880) (not e!623074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96164 (= res!727880 (validMask!0 mask!1414))))

(assert (=> start!96164 e!623074))

(assert (=> start!96164 tp!80193))

(assert (=> start!96164 true))

(declare-fun tp_is_empty!26783 () Bool)

(assert (=> start!96164 tp_is_empty!26783))

(declare-fun array_inv!25994 (array!70456) Bool)

(assert (=> start!96164 (array_inv!25994 _keys!1070)))

(declare-fun e!623079 () Bool)

(declare-fun array_inv!25995 (array!70454) Bool)

(assert (=> start!96164 (and (array_inv!25995 _values!874) e!623079)))

(declare-fun b!1090884 () Bool)

(declare-fun res!727884 () Bool)

(declare-fun e!623078 () Bool)

(assert (=> b!1090884 (=> (not res!727884) (not e!623078))))

(declare-fun lt!486950 () array!70456)

(declare-datatypes ((List!23812 0))(
  ( (Nil!23809) (Cons!23808 (h!25017 (_ BitVec 64)) (t!33658 List!23812)) )
))
(declare-fun arrayNoDuplicates!0 (array!70456 (_ BitVec 32) List!23812) Bool)

(assert (=> b!1090884 (= res!727884 (arrayNoDuplicates!0 lt!486950 #b00000000000000000000000000000000 Nil!23809))))

(declare-fun b!1090885 () Bool)

(assert (=> b!1090885 (= e!623078 (not e!623073))))

(declare-fun res!727882 () Bool)

(assert (=> b!1090885 (=> res!727882 e!623073)))

(assert (=> b!1090885 (= res!727882 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!831 () V!40837)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4331 (array!70456 array!70454 (_ BitVec 32) (_ BitVec 32) V!40837 V!40837 (_ BitVec 32) Int) ListLongMap!15153)

(assert (=> b!1090885 (= lt!486948 (getCurrentListMap!4331 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486957 () array!70454)

(assert (=> b!1090885 (= lt!486955 (getCurrentListMap!4331 lt!486950 lt!486957 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090885 (and (= lt!486958 lt!486947) (= lt!486947 lt!486958))))

(declare-fun -!870 (ListLongMap!15153 (_ BitVec 64)) ListLongMap!15153)

(assert (=> b!1090885 (= lt!486947 (-!870 lt!486949 k!904))))

(declare-datatypes ((Unit!35855 0))(
  ( (Unit!35856) )
))
(declare-fun lt!486956 () Unit!35855)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!137 (array!70456 array!70454 (_ BitVec 32) (_ BitVec 32) V!40837 V!40837 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35855)

(assert (=> b!1090885 (= lt!486956 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!137 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4083 (array!70456 array!70454 (_ BitVec 32) (_ BitVec 32) V!40837 V!40837 (_ BitVec 32) Int) ListLongMap!15153)

(assert (=> b!1090885 (= lt!486958 (getCurrentListMapNoExtraKeys!4083 lt!486950 lt!486957 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2219 (Int (_ BitVec 64)) V!40837)

(assert (=> b!1090885 (= lt!486957 (array!70455 (store (arr!33897 _values!874) i!650 (ValueCellFull!12682 (dynLambda!2219 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34434 _values!874)))))

(assert (=> b!1090885 (= lt!486949 (getCurrentListMapNoExtraKeys!4083 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090885 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486952 () Unit!35855)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70456 (_ BitVec 64) (_ BitVec 32)) Unit!35855)

(assert (=> b!1090885 (= lt!486952 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090886 () Bool)

(declare-fun res!727885 () Bool)

(assert (=> b!1090886 (=> (not res!727885) (not e!623074))))

(assert (=> b!1090886 (= res!727885 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23809))))

(declare-fun mapIsEmpty!41929 () Bool)

(assert (=> mapIsEmpty!41929 mapRes!41929))

(declare-fun b!1090887 () Bool)

(assert (=> b!1090887 (= e!623077 tp_is_empty!26783)))

(declare-fun b!1090888 () Bool)

(assert (=> b!1090888 (= e!623075 true)))

(assert (=> b!1090888 (= (-!870 lt!486954 k!904) lt!486959)))

(declare-fun lt!486953 () Unit!35855)

(declare-fun addRemoveCommutativeForDiffKeys!98 (ListLongMap!15153 (_ BitVec 64) V!40837 (_ BitVec 64)) Unit!35855)

(assert (=> b!1090888 (= lt!486953 (addRemoveCommutativeForDiffKeys!98 lt!486949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090889 () Bool)

(declare-fun e!623076 () Bool)

(assert (=> b!1090889 (= e!623076 tp_is_empty!26783)))

(declare-fun b!1090890 () Bool)

(declare-fun res!727887 () Bool)

(assert (=> b!1090890 (=> (not res!727887) (not e!623074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70456 (_ BitVec 32)) Bool)

(assert (=> b!1090890 (= res!727887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090891 () Bool)

(declare-fun res!727889 () Bool)

(assert (=> b!1090891 (=> (not res!727889) (not e!623074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090891 (= res!727889 (validKeyInArray!0 k!904))))

(declare-fun b!1090892 () Bool)

(declare-fun res!727886 () Bool)

(assert (=> b!1090892 (=> (not res!727886) (not e!623074))))

(assert (=> b!1090892 (= res!727886 (= (select (arr!33898 _keys!1070) i!650) k!904))))

(declare-fun b!1090893 () Bool)

(assert (=> b!1090893 (= e!623079 (and e!623076 mapRes!41929))))

(declare-fun condMapEmpty!41929 () Bool)

(declare-fun mapDefault!41929 () ValueCell!12682)

