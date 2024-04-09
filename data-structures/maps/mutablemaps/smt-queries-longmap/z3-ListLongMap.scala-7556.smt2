; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95694 () Bool)

(assert start!95694)

(declare-fun b_free!22311 () Bool)

(declare-fun b_next!22311 () Bool)

(assert (=> start!95694 (= b_free!22311 (not b_next!22311))))

(declare-fun tp!78783 () Bool)

(declare-fun b_and!35315 () Bool)

(assert (=> start!95694 (= tp!78783 b_and!35315)))

(declare-fun b!1081071 () Bool)

(declare-fun e!617991 () Bool)

(declare-fun e!617992 () Bool)

(declare-fun mapRes!41224 () Bool)

(assert (=> b!1081071 (= e!617991 (and e!617992 mapRes!41224))))

(declare-fun condMapEmpty!41224 () Bool)

(declare-datatypes ((V!40211 0))(
  ( (V!40212 (val!13213 Int)) )
))
(declare-datatypes ((ValueCell!12447 0))(
  ( (ValueCellFull!12447 (v!15835 V!40211)) (EmptyCell!12447) )
))
(declare-datatypes ((array!69530 0))(
  ( (array!69531 (arr!33435 (Array (_ BitVec 32) ValueCell!12447)) (size!33972 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69530)

(declare-fun mapDefault!41224 () ValueCell!12447)

(assert (=> b!1081071 (= condMapEmpty!41224 (= (arr!33435 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12447)) mapDefault!41224)))))

(declare-fun b!1081072 () Bool)

(declare-fun e!617995 () Bool)

(assert (=> b!1081072 (= e!617995 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((array!69532 0))(
  ( (array!69533 (arr!33436 (Array (_ BitVec 32) (_ BitVec 64))) (size!33973 (_ BitVec 32))) )
))
(declare-fun lt!479178 () array!69532)

(declare-fun minValue!831 () V!40211)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16808 0))(
  ( (tuple2!16809 (_1!8414 (_ BitVec 64)) (_2!8414 V!40211)) )
))
(declare-datatypes ((List!23434 0))(
  ( (Nil!23431) (Cons!23430 (h!24639 tuple2!16808) (t!32810 List!23434)) )
))
(declare-datatypes ((ListLongMap!14789 0))(
  ( (ListLongMap!14790 (toList!7410 List!23434)) )
))
(declare-fun lt!479177 () ListLongMap!14789)

(declare-fun zeroValue!831 () V!40211)

(declare-fun getCurrentListMapNoExtraKeys!3921 (array!69532 array!69530 (_ BitVec 32) (_ BitVec 32) V!40211 V!40211 (_ BitVec 32) Int) ListLongMap!14789)

(declare-fun dynLambda!2057 (Int (_ BitVec 64)) V!40211)

(assert (=> b!1081072 (= lt!479177 (getCurrentListMapNoExtraKeys!3921 lt!479178 (array!69531 (store (arr!33435 _values!874) i!650 (ValueCellFull!12447 (dynLambda!2057 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33972 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun _keys!1070 () array!69532)

(declare-fun lt!479180 () ListLongMap!14789)

(assert (=> b!1081072 (= lt!479180 (getCurrentListMapNoExtraKeys!3921 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081072 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35499 0))(
  ( (Unit!35500) )
))
(declare-fun lt!479179 () Unit!35499)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69532 (_ BitVec 64) (_ BitVec 32)) Unit!35499)

(assert (=> b!1081072 (= lt!479179 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081073 () Bool)

(declare-fun res!720658 () Bool)

(declare-fun e!617990 () Bool)

(assert (=> b!1081073 (=> (not res!720658) (not e!617990))))

(assert (=> b!1081073 (= res!720658 (and (= (size!33972 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33973 _keys!1070) (size!33972 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081074 () Bool)

(declare-fun res!720655 () Bool)

(assert (=> b!1081074 (=> (not res!720655) (not e!617990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69532 (_ BitVec 32)) Bool)

(assert (=> b!1081074 (= res!720655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081075 () Bool)

(declare-fun res!720660 () Bool)

(assert (=> b!1081075 (=> (not res!720660) (not e!617995))))

(declare-datatypes ((List!23435 0))(
  ( (Nil!23432) (Cons!23431 (h!24640 (_ BitVec 64)) (t!32811 List!23435)) )
))
(declare-fun arrayNoDuplicates!0 (array!69532 (_ BitVec 32) List!23435) Bool)

(assert (=> b!1081075 (= res!720660 (arrayNoDuplicates!0 lt!479178 #b00000000000000000000000000000000 Nil!23432))))

(declare-fun b!1081076 () Bool)

(declare-fun tp_is_empty!26313 () Bool)

(assert (=> b!1081076 (= e!617992 tp_is_empty!26313)))

(declare-fun res!720659 () Bool)

(assert (=> start!95694 (=> (not res!720659) (not e!617990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95694 (= res!720659 (validMask!0 mask!1414))))

(assert (=> start!95694 e!617990))

(assert (=> start!95694 tp!78783))

(assert (=> start!95694 true))

(assert (=> start!95694 tp_is_empty!26313))

(declare-fun array_inv!25676 (array!69532) Bool)

(assert (=> start!95694 (array_inv!25676 _keys!1070)))

(declare-fun array_inv!25677 (array!69530) Bool)

(assert (=> start!95694 (and (array_inv!25677 _values!874) e!617991)))

(declare-fun b!1081077 () Bool)

(declare-fun res!720662 () Bool)

(assert (=> b!1081077 (=> (not res!720662) (not e!617990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081077 (= res!720662 (validKeyInArray!0 k0!904))))

(declare-fun b!1081078 () Bool)

(declare-fun res!720661 () Bool)

(assert (=> b!1081078 (=> (not res!720661) (not e!617990))))

(assert (=> b!1081078 (= res!720661 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23432))))

(declare-fun mapNonEmpty!41224 () Bool)

(declare-fun tp!78782 () Bool)

(declare-fun e!617993 () Bool)

(assert (=> mapNonEmpty!41224 (= mapRes!41224 (and tp!78782 e!617993))))

(declare-fun mapKey!41224 () (_ BitVec 32))

(declare-fun mapRest!41224 () (Array (_ BitVec 32) ValueCell!12447))

(declare-fun mapValue!41224 () ValueCell!12447)

(assert (=> mapNonEmpty!41224 (= (arr!33435 _values!874) (store mapRest!41224 mapKey!41224 mapValue!41224))))

(declare-fun b!1081079 () Bool)

(declare-fun res!720654 () Bool)

(assert (=> b!1081079 (=> (not res!720654) (not e!617990))))

(assert (=> b!1081079 (= res!720654 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33973 _keys!1070))))))

(declare-fun b!1081080 () Bool)

(assert (=> b!1081080 (= e!617993 tp_is_empty!26313)))

(declare-fun b!1081081 () Bool)

(declare-fun res!720656 () Bool)

(assert (=> b!1081081 (=> (not res!720656) (not e!617990))))

(assert (=> b!1081081 (= res!720656 (= (select (arr!33436 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41224 () Bool)

(assert (=> mapIsEmpty!41224 mapRes!41224))

(declare-fun b!1081082 () Bool)

(assert (=> b!1081082 (= e!617990 e!617995)))

(declare-fun res!720657 () Bool)

(assert (=> b!1081082 (=> (not res!720657) (not e!617995))))

(assert (=> b!1081082 (= res!720657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479178 mask!1414))))

(assert (=> b!1081082 (= lt!479178 (array!69533 (store (arr!33436 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33973 _keys!1070)))))

(assert (= (and start!95694 res!720659) b!1081073))

(assert (= (and b!1081073 res!720658) b!1081074))

(assert (= (and b!1081074 res!720655) b!1081078))

(assert (= (and b!1081078 res!720661) b!1081079))

(assert (= (and b!1081079 res!720654) b!1081077))

(assert (= (and b!1081077 res!720662) b!1081081))

(assert (= (and b!1081081 res!720656) b!1081082))

(assert (= (and b!1081082 res!720657) b!1081075))

(assert (= (and b!1081075 res!720660) b!1081072))

(assert (= (and b!1081071 condMapEmpty!41224) mapIsEmpty!41224))

(assert (= (and b!1081071 (not condMapEmpty!41224)) mapNonEmpty!41224))

(get-info :version)

(assert (= (and mapNonEmpty!41224 ((_ is ValueCellFull!12447) mapValue!41224)) b!1081080))

(assert (= (and b!1081071 ((_ is ValueCellFull!12447) mapDefault!41224)) b!1081076))

(assert (= start!95694 b!1081071))

(declare-fun b_lambda!17011 () Bool)

(assert (=> (not b_lambda!17011) (not b!1081072)))

(declare-fun t!32809 () Bool)

(declare-fun tb!7197 () Bool)

(assert (=> (and start!95694 (= defaultEntry!882 defaultEntry!882) t!32809) tb!7197))

(declare-fun result!14905 () Bool)

(assert (=> tb!7197 (= result!14905 tp_is_empty!26313)))

(assert (=> b!1081072 t!32809))

(declare-fun b_and!35317 () Bool)

(assert (= b_and!35315 (and (=> t!32809 result!14905) b_and!35317)))

(declare-fun m!999031 () Bool)

(assert (=> b!1081072 m!999031))

(declare-fun m!999033 () Bool)

(assert (=> b!1081072 m!999033))

(declare-fun m!999035 () Bool)

(assert (=> b!1081072 m!999035))

(declare-fun m!999037 () Bool)

(assert (=> b!1081072 m!999037))

(declare-fun m!999039 () Bool)

(assert (=> b!1081072 m!999039))

(declare-fun m!999041 () Bool)

(assert (=> b!1081072 m!999041))

(declare-fun m!999043 () Bool)

(assert (=> b!1081082 m!999043))

(declare-fun m!999045 () Bool)

(assert (=> b!1081082 m!999045))

(declare-fun m!999047 () Bool)

(assert (=> b!1081081 m!999047))

(declare-fun m!999049 () Bool)

(assert (=> mapNonEmpty!41224 m!999049))

(declare-fun m!999051 () Bool)

(assert (=> start!95694 m!999051))

(declare-fun m!999053 () Bool)

(assert (=> start!95694 m!999053))

(declare-fun m!999055 () Bool)

(assert (=> start!95694 m!999055))

(declare-fun m!999057 () Bool)

(assert (=> b!1081074 m!999057))

(declare-fun m!999059 () Bool)

(assert (=> b!1081078 m!999059))

(declare-fun m!999061 () Bool)

(assert (=> b!1081075 m!999061))

(declare-fun m!999063 () Bool)

(assert (=> b!1081077 m!999063))

(check-sat (not mapNonEmpty!41224) (not b!1081077) (not b!1081075) (not b!1081074) (not b_lambda!17011) (not b!1081078) (not b!1081072) b_and!35317 (not b!1081082) tp_is_empty!26313 (not b_next!22311) (not start!95694))
(check-sat b_and!35317 (not b_next!22311))
