; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95742 () Bool)

(assert start!95742)

(declare-fun b_free!22359 () Bool)

(declare-fun b_next!22359 () Bool)

(assert (=> start!95742 (= b_free!22359 (not b_next!22359))))

(declare-fun tp!78927 () Bool)

(declare-fun b_and!35411 () Bool)

(assert (=> start!95742 (= tp!78927 b_and!35411)))

(declare-fun b!1081983 () Bool)

(declare-fun e!618426 () Bool)

(assert (=> b!1081983 (= e!618426 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40275 0))(
  ( (V!40276 (val!13237 Int)) )
))
(declare-datatypes ((ValueCell!12471 0))(
  ( (ValueCellFull!12471 (v!15859 V!40275)) (EmptyCell!12471) )
))
(declare-datatypes ((array!69626 0))(
  ( (array!69627 (arr!33483 (Array (_ BitVec 32) ValueCell!12471)) (size!34020 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69626)

(declare-fun minValue!831 () V!40275)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69628 0))(
  ( (array!69629 (arr!33484 (Array (_ BitVec 32) (_ BitVec 64))) (size!34021 (_ BitVec 32))) )
))
(declare-fun lt!479467 () array!69628)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16838 0))(
  ( (tuple2!16839 (_1!8429 (_ BitVec 64)) (_2!8429 V!40275)) )
))
(declare-datatypes ((List!23470 0))(
  ( (Nil!23467) (Cons!23466 (h!24675 tuple2!16838) (t!32894 List!23470)) )
))
(declare-datatypes ((ListLongMap!14819 0))(
  ( (ListLongMap!14820 (toList!7425 List!23470)) )
))
(declare-fun lt!479466 () ListLongMap!14819)

(declare-fun zeroValue!831 () V!40275)

(declare-fun getCurrentListMapNoExtraKeys!3936 (array!69628 array!69626 (_ BitVec 32) (_ BitVec 32) V!40275 V!40275 (_ BitVec 32) Int) ListLongMap!14819)

(declare-fun dynLambda!2072 (Int (_ BitVec 64)) V!40275)

(assert (=> b!1081983 (= lt!479466 (getCurrentListMapNoExtraKeys!3936 lt!479467 (array!69627 (store (arr!33483 _values!874) i!650 (ValueCellFull!12471 (dynLambda!2072 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34020 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479468 () ListLongMap!14819)

(declare-fun _keys!1070 () array!69628)

(assert (=> b!1081983 (= lt!479468 (getCurrentListMapNoExtraKeys!3936 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081983 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35529 0))(
  ( (Unit!35530) )
))
(declare-fun lt!479465 () Unit!35529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69628 (_ BitVec 64) (_ BitVec 32)) Unit!35529)

(assert (=> b!1081983 (= lt!479465 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081984 () Bool)

(declare-fun res!721308 () Bool)

(declare-fun e!618425 () Bool)

(assert (=> b!1081984 (=> (not res!721308) (not e!618425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69628 (_ BitVec 32)) Bool)

(assert (=> b!1081984 (= res!721308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081985 () Bool)

(declare-fun res!721303 () Bool)

(assert (=> b!1081985 (=> (not res!721303) (not e!618425))))

(assert (=> b!1081985 (= res!721303 (and (= (size!34020 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34021 _keys!1070) (size!34020 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081986 () Bool)

(declare-fun res!721302 () Bool)

(assert (=> b!1081986 (=> (not res!721302) (not e!618425))))

(assert (=> b!1081986 (= res!721302 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34021 _keys!1070))))))

(declare-fun res!721304 () Bool)

(assert (=> start!95742 (=> (not res!721304) (not e!618425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95742 (= res!721304 (validMask!0 mask!1414))))

(assert (=> start!95742 e!618425))

(assert (=> start!95742 tp!78927))

(assert (=> start!95742 true))

(declare-fun tp_is_empty!26361 () Bool)

(assert (=> start!95742 tp_is_empty!26361))

(declare-fun array_inv!25708 (array!69628) Bool)

(assert (=> start!95742 (array_inv!25708 _keys!1070)))

(declare-fun e!618424 () Bool)

(declare-fun array_inv!25709 (array!69626) Bool)

(assert (=> start!95742 (and (array_inv!25709 _values!874) e!618424)))

(declare-fun b!1081987 () Bool)

(assert (=> b!1081987 (= e!618425 e!618426)))

(declare-fun res!721307 () Bool)

(assert (=> b!1081987 (=> (not res!721307) (not e!618426))))

(assert (=> b!1081987 (= res!721307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479467 mask!1414))))

(assert (=> b!1081987 (= lt!479467 (array!69629 (store (arr!33484 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34021 _keys!1070)))))

(declare-fun b!1081988 () Bool)

(declare-fun res!721310 () Bool)

(assert (=> b!1081988 (=> (not res!721310) (not e!618425))))

(declare-datatypes ((List!23471 0))(
  ( (Nil!23468) (Cons!23467 (h!24676 (_ BitVec 64)) (t!32895 List!23471)) )
))
(declare-fun arrayNoDuplicates!0 (array!69628 (_ BitVec 32) List!23471) Bool)

(assert (=> b!1081988 (= res!721310 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23468))))

(declare-fun mapNonEmpty!41296 () Bool)

(declare-fun mapRes!41296 () Bool)

(declare-fun tp!78926 () Bool)

(declare-fun e!618422 () Bool)

(assert (=> mapNonEmpty!41296 (= mapRes!41296 (and tp!78926 e!618422))))

(declare-fun mapRest!41296 () (Array (_ BitVec 32) ValueCell!12471))

(declare-fun mapKey!41296 () (_ BitVec 32))

(declare-fun mapValue!41296 () ValueCell!12471)

(assert (=> mapNonEmpty!41296 (= (arr!33483 _values!874) (store mapRest!41296 mapKey!41296 mapValue!41296))))

(declare-fun b!1081989 () Bool)

(assert (=> b!1081989 (= e!618422 tp_is_empty!26361)))

(declare-fun b!1081990 () Bool)

(declare-fun res!721305 () Bool)

(assert (=> b!1081990 (=> (not res!721305) (not e!618425))))

(assert (=> b!1081990 (= res!721305 (= (select (arr!33484 _keys!1070) i!650) k0!904))))

(declare-fun b!1081991 () Bool)

(declare-fun e!618423 () Bool)

(assert (=> b!1081991 (= e!618423 tp_is_empty!26361)))

(declare-fun b!1081992 () Bool)

(assert (=> b!1081992 (= e!618424 (and e!618423 mapRes!41296))))

(declare-fun condMapEmpty!41296 () Bool)

(declare-fun mapDefault!41296 () ValueCell!12471)

(assert (=> b!1081992 (= condMapEmpty!41296 (= (arr!33483 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12471)) mapDefault!41296)))))

(declare-fun b!1081993 () Bool)

(declare-fun res!721306 () Bool)

(assert (=> b!1081993 (=> (not res!721306) (not e!618426))))

(assert (=> b!1081993 (= res!721306 (arrayNoDuplicates!0 lt!479467 #b00000000000000000000000000000000 Nil!23468))))

(declare-fun mapIsEmpty!41296 () Bool)

(assert (=> mapIsEmpty!41296 mapRes!41296))

(declare-fun b!1081994 () Bool)

(declare-fun res!721309 () Bool)

(assert (=> b!1081994 (=> (not res!721309) (not e!618425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081994 (= res!721309 (validKeyInArray!0 k0!904))))

(assert (= (and start!95742 res!721304) b!1081985))

(assert (= (and b!1081985 res!721303) b!1081984))

(assert (= (and b!1081984 res!721308) b!1081988))

(assert (= (and b!1081988 res!721310) b!1081986))

(assert (= (and b!1081986 res!721302) b!1081994))

(assert (= (and b!1081994 res!721309) b!1081990))

(assert (= (and b!1081990 res!721305) b!1081987))

(assert (= (and b!1081987 res!721307) b!1081993))

(assert (= (and b!1081993 res!721306) b!1081983))

(assert (= (and b!1081992 condMapEmpty!41296) mapIsEmpty!41296))

(assert (= (and b!1081992 (not condMapEmpty!41296)) mapNonEmpty!41296))

(get-info :version)

(assert (= (and mapNonEmpty!41296 ((_ is ValueCellFull!12471) mapValue!41296)) b!1081989))

(assert (= (and b!1081992 ((_ is ValueCellFull!12471) mapDefault!41296)) b!1081991))

(assert (= start!95742 b!1081992))

(declare-fun b_lambda!17059 () Bool)

(assert (=> (not b_lambda!17059) (not b!1081983)))

(declare-fun t!32893 () Bool)

(declare-fun tb!7245 () Bool)

(assert (=> (and start!95742 (= defaultEntry!882 defaultEntry!882) t!32893) tb!7245))

(declare-fun result!15001 () Bool)

(assert (=> tb!7245 (= result!15001 tp_is_empty!26361)))

(assert (=> b!1081983 t!32893))

(declare-fun b_and!35413 () Bool)

(assert (= b_and!35411 (and (=> t!32893 result!15001) b_and!35413)))

(declare-fun m!999847 () Bool)

(assert (=> b!1081994 m!999847))

(declare-fun m!999849 () Bool)

(assert (=> b!1081988 m!999849))

(declare-fun m!999851 () Bool)

(assert (=> b!1081983 m!999851))

(declare-fun m!999853 () Bool)

(assert (=> b!1081983 m!999853))

(declare-fun m!999855 () Bool)

(assert (=> b!1081983 m!999855))

(declare-fun m!999857 () Bool)

(assert (=> b!1081983 m!999857))

(declare-fun m!999859 () Bool)

(assert (=> b!1081983 m!999859))

(declare-fun m!999861 () Bool)

(assert (=> b!1081983 m!999861))

(declare-fun m!999863 () Bool)

(assert (=> b!1081993 m!999863))

(declare-fun m!999865 () Bool)

(assert (=> b!1081990 m!999865))

(declare-fun m!999867 () Bool)

(assert (=> b!1081987 m!999867))

(declare-fun m!999869 () Bool)

(assert (=> b!1081987 m!999869))

(declare-fun m!999871 () Bool)

(assert (=> b!1081984 m!999871))

(declare-fun m!999873 () Bool)

(assert (=> mapNonEmpty!41296 m!999873))

(declare-fun m!999875 () Bool)

(assert (=> start!95742 m!999875))

(declare-fun m!999877 () Bool)

(assert (=> start!95742 m!999877))

(declare-fun m!999879 () Bool)

(assert (=> start!95742 m!999879))

(check-sat (not b!1081984) (not b!1081987) tp_is_empty!26361 (not b!1081993) (not b!1081983) (not b_lambda!17059) (not b!1081994) (not b!1081988) (not start!95742) (not mapNonEmpty!41296) (not b_next!22359) b_and!35413)
(check-sat b_and!35413 (not b_next!22359))
