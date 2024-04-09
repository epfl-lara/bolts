; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95700 () Bool)

(assert start!95700)

(declare-fun b_free!22317 () Bool)

(declare-fun b_next!22317 () Bool)

(assert (=> start!95700 (= b_free!22317 (not b_next!22317))))

(declare-fun tp!78801 () Bool)

(declare-fun b_and!35327 () Bool)

(assert (=> start!95700 (= tp!78801 b_and!35327)))

(declare-fun b!1081185 () Bool)

(declare-fun e!618048 () Bool)

(assert (=> b!1081185 (= e!618048 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40219 0))(
  ( (V!40220 (val!13216 Int)) )
))
(declare-datatypes ((ValueCell!12450 0))(
  ( (ValueCellFull!12450 (v!15838 V!40219)) (EmptyCell!12450) )
))
(declare-datatypes ((array!69542 0))(
  ( (array!69543 (arr!33441 (Array (_ BitVec 32) ValueCell!12450)) (size!33978 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69542)

(declare-datatypes ((array!69544 0))(
  ( (array!69545 (arr!33442 (Array (_ BitVec 32) (_ BitVec 64))) (size!33979 (_ BitVec 32))) )
))
(declare-fun lt!479213 () array!69544)

(declare-fun minValue!831 () V!40219)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16812 0))(
  ( (tuple2!16813 (_1!8416 (_ BitVec 64)) (_2!8416 V!40219)) )
))
(declare-datatypes ((List!23438 0))(
  ( (Nil!23435) (Cons!23434 (h!24643 tuple2!16812) (t!32820 List!23438)) )
))
(declare-datatypes ((ListLongMap!14793 0))(
  ( (ListLongMap!14794 (toList!7412 List!23438)) )
))
(declare-fun lt!479214 () ListLongMap!14793)

(declare-fun zeroValue!831 () V!40219)

(declare-fun getCurrentListMapNoExtraKeys!3923 (array!69544 array!69542 (_ BitVec 32) (_ BitVec 32) V!40219 V!40219 (_ BitVec 32) Int) ListLongMap!14793)

(declare-fun dynLambda!2059 (Int (_ BitVec 64)) V!40219)

(assert (=> b!1081185 (= lt!479214 (getCurrentListMapNoExtraKeys!3923 lt!479213 (array!69543 (store (arr!33441 _values!874) i!650 (ValueCellFull!12450 (dynLambda!2059 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33978 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479216 () ListLongMap!14793)

(declare-fun _keys!1070 () array!69544)

(assert (=> b!1081185 (= lt!479216 (getCurrentListMapNoExtraKeys!3923 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081185 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35503 0))(
  ( (Unit!35504) )
))
(declare-fun lt!479215 () Unit!35503)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69544 (_ BitVec 64) (_ BitVec 32)) Unit!35503)

(assert (=> b!1081185 (= lt!479215 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081186 () Bool)

(declare-fun res!720739 () Bool)

(declare-fun e!618045 () Bool)

(assert (=> b!1081186 (=> (not res!720739) (not e!618045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081186 (= res!720739 (validKeyInArray!0 k0!904))))

(declare-fun b!1081187 () Bool)

(declare-fun res!720740 () Bool)

(assert (=> b!1081187 (=> (not res!720740) (not e!618045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69544 (_ BitVec 32)) Bool)

(assert (=> b!1081187 (= res!720740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081188 () Bool)

(declare-fun res!720743 () Bool)

(assert (=> b!1081188 (=> (not res!720743) (not e!618048))))

(declare-datatypes ((List!23439 0))(
  ( (Nil!23436) (Cons!23435 (h!24644 (_ BitVec 64)) (t!32821 List!23439)) )
))
(declare-fun arrayNoDuplicates!0 (array!69544 (_ BitVec 32) List!23439) Bool)

(assert (=> b!1081188 (= res!720743 (arrayNoDuplicates!0 lt!479213 #b00000000000000000000000000000000 Nil!23436))))

(declare-fun b!1081189 () Bool)

(assert (=> b!1081189 (= e!618045 e!618048)))

(declare-fun res!720741 () Bool)

(assert (=> b!1081189 (=> (not res!720741) (not e!618048))))

(assert (=> b!1081189 (= res!720741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479213 mask!1414))))

(assert (=> b!1081189 (= lt!479213 (array!69545 (store (arr!33442 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33979 _keys!1070)))))

(declare-fun res!720742 () Bool)

(assert (=> start!95700 (=> (not res!720742) (not e!618045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95700 (= res!720742 (validMask!0 mask!1414))))

(assert (=> start!95700 e!618045))

(assert (=> start!95700 tp!78801))

(assert (=> start!95700 true))

(declare-fun tp_is_empty!26319 () Bool)

(assert (=> start!95700 tp_is_empty!26319))

(declare-fun array_inv!25678 (array!69544) Bool)

(assert (=> start!95700 (array_inv!25678 _keys!1070)))

(declare-fun e!618047 () Bool)

(declare-fun array_inv!25679 (array!69542) Bool)

(assert (=> start!95700 (and (array_inv!25679 _values!874) e!618047)))

(declare-fun mapNonEmpty!41233 () Bool)

(declare-fun mapRes!41233 () Bool)

(declare-fun tp!78800 () Bool)

(declare-fun e!618049 () Bool)

(assert (=> mapNonEmpty!41233 (= mapRes!41233 (and tp!78800 e!618049))))

(declare-fun mapRest!41233 () (Array (_ BitVec 32) ValueCell!12450))

(declare-fun mapKey!41233 () (_ BitVec 32))

(declare-fun mapValue!41233 () ValueCell!12450)

(assert (=> mapNonEmpty!41233 (= (arr!33441 _values!874) (store mapRest!41233 mapKey!41233 mapValue!41233))))

(declare-fun b!1081190 () Bool)

(declare-fun res!720737 () Bool)

(assert (=> b!1081190 (=> (not res!720737) (not e!618045))))

(assert (=> b!1081190 (= res!720737 (and (= (size!33978 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33979 _keys!1070) (size!33978 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081191 () Bool)

(declare-fun e!618046 () Bool)

(assert (=> b!1081191 (= e!618046 tp_is_empty!26319)))

(declare-fun mapIsEmpty!41233 () Bool)

(assert (=> mapIsEmpty!41233 mapRes!41233))

(declare-fun b!1081192 () Bool)

(declare-fun res!720736 () Bool)

(assert (=> b!1081192 (=> (not res!720736) (not e!618045))))

(assert (=> b!1081192 (= res!720736 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33979 _keys!1070))))))

(declare-fun b!1081193 () Bool)

(declare-fun res!720735 () Bool)

(assert (=> b!1081193 (=> (not res!720735) (not e!618045))))

(assert (=> b!1081193 (= res!720735 (= (select (arr!33442 _keys!1070) i!650) k0!904))))

(declare-fun b!1081194 () Bool)

(assert (=> b!1081194 (= e!618049 tp_is_empty!26319)))

(declare-fun b!1081195 () Bool)

(declare-fun res!720738 () Bool)

(assert (=> b!1081195 (=> (not res!720738) (not e!618045))))

(assert (=> b!1081195 (= res!720738 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23436))))

(declare-fun b!1081196 () Bool)

(assert (=> b!1081196 (= e!618047 (and e!618046 mapRes!41233))))

(declare-fun condMapEmpty!41233 () Bool)

(declare-fun mapDefault!41233 () ValueCell!12450)

(assert (=> b!1081196 (= condMapEmpty!41233 (= (arr!33441 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12450)) mapDefault!41233)))))

(assert (= (and start!95700 res!720742) b!1081190))

(assert (= (and b!1081190 res!720737) b!1081187))

(assert (= (and b!1081187 res!720740) b!1081195))

(assert (= (and b!1081195 res!720738) b!1081192))

(assert (= (and b!1081192 res!720736) b!1081186))

(assert (= (and b!1081186 res!720739) b!1081193))

(assert (= (and b!1081193 res!720735) b!1081189))

(assert (= (and b!1081189 res!720741) b!1081188))

(assert (= (and b!1081188 res!720743) b!1081185))

(assert (= (and b!1081196 condMapEmpty!41233) mapIsEmpty!41233))

(assert (= (and b!1081196 (not condMapEmpty!41233)) mapNonEmpty!41233))

(get-info :version)

(assert (= (and mapNonEmpty!41233 ((_ is ValueCellFull!12450) mapValue!41233)) b!1081194))

(assert (= (and b!1081196 ((_ is ValueCellFull!12450) mapDefault!41233)) b!1081191))

(assert (= start!95700 b!1081196))

(declare-fun b_lambda!17017 () Bool)

(assert (=> (not b_lambda!17017) (not b!1081185)))

(declare-fun t!32819 () Bool)

(declare-fun tb!7203 () Bool)

(assert (=> (and start!95700 (= defaultEntry!882 defaultEntry!882) t!32819) tb!7203))

(declare-fun result!14917 () Bool)

(assert (=> tb!7203 (= result!14917 tp_is_empty!26319)))

(assert (=> b!1081185 t!32819))

(declare-fun b_and!35329 () Bool)

(assert (= b_and!35327 (and (=> t!32819 result!14917) b_and!35329)))

(declare-fun m!999133 () Bool)

(assert (=> b!1081195 m!999133))

(declare-fun m!999135 () Bool)

(assert (=> start!95700 m!999135))

(declare-fun m!999137 () Bool)

(assert (=> start!95700 m!999137))

(declare-fun m!999139 () Bool)

(assert (=> start!95700 m!999139))

(declare-fun m!999141 () Bool)

(assert (=> b!1081189 m!999141))

(declare-fun m!999143 () Bool)

(assert (=> b!1081189 m!999143))

(declare-fun m!999145 () Bool)

(assert (=> b!1081186 m!999145))

(declare-fun m!999147 () Bool)

(assert (=> mapNonEmpty!41233 m!999147))

(declare-fun m!999149 () Bool)

(assert (=> b!1081185 m!999149))

(declare-fun m!999151 () Bool)

(assert (=> b!1081185 m!999151))

(declare-fun m!999153 () Bool)

(assert (=> b!1081185 m!999153))

(declare-fun m!999155 () Bool)

(assert (=> b!1081185 m!999155))

(declare-fun m!999157 () Bool)

(assert (=> b!1081185 m!999157))

(declare-fun m!999159 () Bool)

(assert (=> b!1081185 m!999159))

(declare-fun m!999161 () Bool)

(assert (=> b!1081193 m!999161))

(declare-fun m!999163 () Bool)

(assert (=> b!1081187 m!999163))

(declare-fun m!999165 () Bool)

(assert (=> b!1081188 m!999165))

(check-sat (not b!1081186) (not b!1081187) b_and!35329 (not b!1081188) (not b!1081185) (not b_next!22317) (not b_lambda!17017) tp_is_empty!26319 (not mapNonEmpty!41233) (not b!1081189) (not b!1081195) (not start!95700))
(check-sat b_and!35329 (not b_next!22317))
