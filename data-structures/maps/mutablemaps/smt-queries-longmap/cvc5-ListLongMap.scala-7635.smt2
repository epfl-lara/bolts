; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96166 () Bool)

(assert start!96166)

(declare-fun b_free!22783 () Bool)

(declare-fun b_next!22783 () Bool)

(assert (=> start!96166 (= b_free!22783 (not b_next!22783))))

(declare-fun tp!80199 () Bool)

(declare-fun b_and!36259 () Bool)

(assert (=> start!96166 (= tp!80199 b_and!36259)))

(declare-fun b!1090925 () Bool)

(declare-fun res!727914 () Bool)

(declare-fun e!623101 () Bool)

(assert (=> b!1090925 (=> (not res!727914) (not e!623101))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70458 0))(
  ( (array!70459 (arr!33899 (Array (_ BitVec 32) (_ BitVec 64))) (size!34436 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70458)

(assert (=> b!1090925 (= res!727914 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34436 _keys!1070))))))

(declare-fun b!1090926 () Bool)

(declare-fun res!727921 () Bool)

(assert (=> b!1090926 (=> (not res!727921) (not e!623101))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40841 0))(
  ( (V!40842 (val!13449 Int)) )
))
(declare-datatypes ((ValueCell!12683 0))(
  ( (ValueCellFull!12683 (v!16071 V!40841)) (EmptyCell!12683) )
))
(declare-datatypes ((array!70460 0))(
  ( (array!70461 (arr!33900 (Array (_ BitVec 32) ValueCell!12683)) (size!34437 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70460)

(assert (=> b!1090926 (= res!727921 (and (= (size!34437 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34436 _keys!1070) (size!34437 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090927 () Bool)

(declare-fun e!623098 () Bool)

(assert (=> b!1090927 (= e!623098 (bvsle #b00000000000000000000000000000000 (size!34436 _keys!1070)))))

(declare-datatypes ((tuple2!17174 0))(
  ( (tuple2!17175 (_1!8597 (_ BitVec 64)) (_2!8597 V!40841)) )
))
(declare-datatypes ((List!23813 0))(
  ( (Nil!23810) (Cons!23809 (h!25018 tuple2!17174) (t!33661 List!23813)) )
))
(declare-datatypes ((ListLongMap!15155 0))(
  ( (ListLongMap!15156 (toList!7593 List!23813)) )
))
(declare-fun lt!486998 () ListLongMap!15155)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!486995 () ListLongMap!15155)

(declare-fun -!871 (ListLongMap!15155 (_ BitVec 64)) ListLongMap!15155)

(assert (=> b!1090927 (= (-!871 lt!486998 k!904) lt!486995)))

(declare-fun minValue!831 () V!40841)

(declare-fun lt!486992 () ListLongMap!15155)

(declare-datatypes ((Unit!35857 0))(
  ( (Unit!35858) )
))
(declare-fun lt!486996 () Unit!35857)

(declare-fun addRemoveCommutativeForDiffKeys!99 (ListLongMap!15155 (_ BitVec 64) V!40841 (_ BitVec 64)) Unit!35857)

(assert (=> b!1090927 (= lt!486996 (addRemoveCommutativeForDiffKeys!99 lt!486992 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090928 () Bool)

(declare-fun e!623103 () Bool)

(assert (=> b!1090928 (= e!623101 e!623103)))

(declare-fun res!727918 () Bool)

(assert (=> b!1090928 (=> (not res!727918) (not e!623103))))

(declare-fun lt!486987 () array!70458)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70458 (_ BitVec 32)) Bool)

(assert (=> b!1090928 (= res!727918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486987 mask!1414))))

(assert (=> b!1090928 (= lt!486987 (array!70459 (store (arr!33899 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34436 _keys!1070)))))

(declare-fun b!1090929 () Bool)

(declare-fun e!623100 () Bool)

(assert (=> b!1090929 (= e!623103 (not e!623100))))

(declare-fun res!727915 () Bool)

(assert (=> b!1090929 (=> res!727915 e!623100)))

(assert (=> b!1090929 (= res!727915 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!486990 () ListLongMap!15155)

(declare-fun zeroValue!831 () V!40841)

(declare-fun getCurrentListMap!4332 (array!70458 array!70460 (_ BitVec 32) (_ BitVec 32) V!40841 V!40841 (_ BitVec 32) Int) ListLongMap!15155)

(assert (=> b!1090929 (= lt!486990 (getCurrentListMap!4332 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486993 () ListLongMap!15155)

(declare-fun lt!486997 () array!70460)

(assert (=> b!1090929 (= lt!486993 (getCurrentListMap!4332 lt!486987 lt!486997 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486988 () ListLongMap!15155)

(declare-fun lt!486991 () ListLongMap!15155)

(assert (=> b!1090929 (and (= lt!486988 lt!486991) (= lt!486991 lt!486988))))

(assert (=> b!1090929 (= lt!486991 (-!871 lt!486992 k!904))))

(declare-fun lt!486994 () Unit!35857)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!138 (array!70458 array!70460 (_ BitVec 32) (_ BitVec 32) V!40841 V!40841 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35857)

(assert (=> b!1090929 (= lt!486994 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!138 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4084 (array!70458 array!70460 (_ BitVec 32) (_ BitVec 32) V!40841 V!40841 (_ BitVec 32) Int) ListLongMap!15155)

(assert (=> b!1090929 (= lt!486988 (getCurrentListMapNoExtraKeys!4084 lt!486987 lt!486997 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2220 (Int (_ BitVec 64)) V!40841)

(assert (=> b!1090929 (= lt!486997 (array!70461 (store (arr!33900 _values!874) i!650 (ValueCellFull!12683 (dynLambda!2220 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34437 _values!874)))))

(assert (=> b!1090929 (= lt!486992 (getCurrentListMapNoExtraKeys!4084 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090929 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486989 () Unit!35857)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70458 (_ BitVec 64) (_ BitVec 32)) Unit!35857)

(assert (=> b!1090929 (= lt!486989 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090930 () Bool)

(declare-fun res!727922 () Bool)

(assert (=> b!1090930 (=> (not res!727922) (not e!623101))))

(declare-datatypes ((List!23814 0))(
  ( (Nil!23811) (Cons!23810 (h!25019 (_ BitVec 64)) (t!33662 List!23814)) )
))
(declare-fun arrayNoDuplicates!0 (array!70458 (_ BitVec 32) List!23814) Bool)

(assert (=> b!1090930 (= res!727922 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23811))))

(declare-fun b!1090931 () Bool)

(declare-fun e!623099 () Bool)

(declare-fun tp_is_empty!26785 () Bool)

(assert (=> b!1090931 (= e!623099 tp_is_empty!26785)))

(declare-fun mapIsEmpty!41932 () Bool)

(declare-fun mapRes!41932 () Bool)

(assert (=> mapIsEmpty!41932 mapRes!41932))

(declare-fun b!1090932 () Bool)

(assert (=> b!1090932 (= e!623100 e!623098)))

(declare-fun res!727916 () Bool)

(assert (=> b!1090932 (=> res!727916 e!623098)))

(assert (=> b!1090932 (= res!727916 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1090932 (= lt!486990 lt!486998)))

(declare-fun lt!486986 () tuple2!17174)

(declare-fun +!3301 (ListLongMap!15155 tuple2!17174) ListLongMap!15155)

(assert (=> b!1090932 (= lt!486998 (+!3301 lt!486992 lt!486986))))

(assert (=> b!1090932 (= lt!486993 lt!486995)))

(assert (=> b!1090932 (= lt!486995 (+!3301 lt!486991 lt!486986))))

(assert (=> b!1090932 (= lt!486993 (+!3301 lt!486988 lt!486986))))

(assert (=> b!1090932 (= lt!486986 (tuple2!17175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!727917 () Bool)

(assert (=> start!96166 (=> (not res!727917) (not e!623101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96166 (= res!727917 (validMask!0 mask!1414))))

(assert (=> start!96166 e!623101))

(assert (=> start!96166 tp!80199))

(assert (=> start!96166 true))

(assert (=> start!96166 tp_is_empty!26785))

(declare-fun array_inv!25996 (array!70458) Bool)

(assert (=> start!96166 (array_inv!25996 _keys!1070)))

(declare-fun e!623097 () Bool)

(declare-fun array_inv!25997 (array!70460) Bool)

(assert (=> start!96166 (and (array_inv!25997 _values!874) e!623097)))

(declare-fun b!1090933 () Bool)

(declare-fun res!727919 () Bool)

(assert (=> b!1090933 (=> (not res!727919) (not e!623103))))

(assert (=> b!1090933 (= res!727919 (arrayNoDuplicates!0 lt!486987 #b00000000000000000000000000000000 Nil!23811))))

(declare-fun mapNonEmpty!41932 () Bool)

(declare-fun tp!80198 () Bool)

(assert (=> mapNonEmpty!41932 (= mapRes!41932 (and tp!80198 e!623099))))

(declare-fun mapKey!41932 () (_ BitVec 32))

(declare-fun mapValue!41932 () ValueCell!12683)

(declare-fun mapRest!41932 () (Array (_ BitVec 32) ValueCell!12683))

(assert (=> mapNonEmpty!41932 (= (arr!33900 _values!874) (store mapRest!41932 mapKey!41932 mapValue!41932))))

(declare-fun b!1090934 () Bool)

(declare-fun e!623102 () Bool)

(assert (=> b!1090934 (= e!623102 tp_is_empty!26785)))

(declare-fun b!1090935 () Bool)

(declare-fun res!727912 () Bool)

(assert (=> b!1090935 (=> (not res!727912) (not e!623101))))

(assert (=> b!1090935 (= res!727912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090936 () Bool)

(declare-fun res!727920 () Bool)

(assert (=> b!1090936 (=> (not res!727920) (not e!623101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090936 (= res!727920 (validKeyInArray!0 k!904))))

(declare-fun b!1090937 () Bool)

(declare-fun res!727913 () Bool)

(assert (=> b!1090937 (=> (not res!727913) (not e!623101))))

(assert (=> b!1090937 (= res!727913 (= (select (arr!33899 _keys!1070) i!650) k!904))))

(declare-fun b!1090938 () Bool)

(assert (=> b!1090938 (= e!623097 (and e!623102 mapRes!41932))))

(declare-fun condMapEmpty!41932 () Bool)

(declare-fun mapDefault!41932 () ValueCell!12683)

