; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95634 () Bool)

(assert start!95634)

(declare-fun b_free!22251 () Bool)

(declare-fun b_next!22251 () Bool)

(assert (=> start!95634 (= b_free!22251 (not b_next!22251))))

(declare-fun tp!78602 () Bool)

(declare-fun b_and!35247 () Bool)

(assert (=> start!95634 (= tp!78602 b_and!35247)))

(declare-fun b!1079983 () Bool)

(declare-fun e!617451 () Bool)

(declare-fun e!617454 () Bool)

(assert (=> b!1079983 (= e!617451 e!617454)))

(declare-fun res!719846 () Bool)

(assert (=> b!1079983 (=> (not res!719846) (not e!617454))))

(declare-datatypes ((array!69412 0))(
  ( (array!69413 (arr!33376 (Array (_ BitVec 32) (_ BitVec 64))) (size!33913 (_ BitVec 32))) )
))
(declare-fun lt!478894 () array!69412)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69412 (_ BitVec 32)) Bool)

(assert (=> b!1079983 (= res!719846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478894 mask!1414))))

(declare-fun _keys!1070 () array!69412)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079983 (= lt!478894 (array!69413 (store (arr!33376 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33913 _keys!1070)))))

(declare-fun b!1079984 () Bool)

(declare-fun res!719844 () Bool)

(assert (=> b!1079984 (=> (not res!719844) (not e!617451))))

(assert (=> b!1079984 (= res!719844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079985 () Bool)

(declare-fun res!719850 () Bool)

(assert (=> b!1079985 (=> (not res!719850) (not e!617451))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079985 (= res!719850 (validKeyInArray!0 k0!904))))

(declare-fun b!1079986 () Bool)

(assert (=> b!1079986 (= e!617454 (not true))))

(declare-datatypes ((V!40131 0))(
  ( (V!40132 (val!13183 Int)) )
))
(declare-fun minValue!831 () V!40131)

(declare-datatypes ((tuple2!16766 0))(
  ( (tuple2!16767 (_1!8393 (_ BitVec 64)) (_2!8393 V!40131)) )
))
(declare-datatypes ((List!23388 0))(
  ( (Nil!23385) (Cons!23384 (h!24593 tuple2!16766) (t!32754 List!23388)) )
))
(declare-datatypes ((ListLongMap!14747 0))(
  ( (ListLongMap!14748 (toList!7389 List!23388)) )
))
(declare-fun lt!478893 () ListLongMap!14747)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40131)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((ValueCell!12417 0))(
  ( (ValueCellFull!12417 (v!15805 V!40131)) (EmptyCell!12417) )
))
(declare-datatypes ((array!69414 0))(
  ( (array!69415 (arr!33377 (Array (_ BitVec 32) ValueCell!12417)) (size!33914 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69414)

(declare-fun getCurrentListMapNoExtraKeys!3900 (array!69412 array!69414 (_ BitVec 32) (_ BitVec 32) V!40131 V!40131 (_ BitVec 32) Int) ListLongMap!14747)

(assert (=> b!1079986 (= lt!478893 (getCurrentListMapNoExtraKeys!3900 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079986 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35457 0))(
  ( (Unit!35458) )
))
(declare-fun lt!478895 () Unit!35457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69412 (_ BitVec 64) (_ BitVec 32)) Unit!35457)

(assert (=> b!1079986 (= lt!478895 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41134 () Bool)

(declare-fun mapRes!41134 () Bool)

(assert (=> mapIsEmpty!41134 mapRes!41134))

(declare-fun res!719849 () Bool)

(assert (=> start!95634 (=> (not res!719849) (not e!617451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95634 (= res!719849 (validMask!0 mask!1414))))

(assert (=> start!95634 e!617451))

(assert (=> start!95634 tp!78602))

(assert (=> start!95634 true))

(declare-fun tp_is_empty!26253 () Bool)

(assert (=> start!95634 tp_is_empty!26253))

(declare-fun array_inv!25634 (array!69412) Bool)

(assert (=> start!95634 (array_inv!25634 _keys!1070)))

(declare-fun e!617450 () Bool)

(declare-fun array_inv!25635 (array!69414) Bool)

(assert (=> start!95634 (and (array_inv!25635 _values!874) e!617450)))

(declare-fun b!1079987 () Bool)

(declare-fun e!617452 () Bool)

(assert (=> b!1079987 (= e!617452 tp_is_empty!26253)))

(declare-fun b!1079988 () Bool)

(assert (=> b!1079988 (= e!617450 (and e!617452 mapRes!41134))))

(declare-fun condMapEmpty!41134 () Bool)

(declare-fun mapDefault!41134 () ValueCell!12417)

(assert (=> b!1079988 (= condMapEmpty!41134 (= (arr!33377 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12417)) mapDefault!41134)))))

(declare-fun b!1079989 () Bool)

(declare-fun res!719852 () Bool)

(assert (=> b!1079989 (=> (not res!719852) (not e!617451))))

(assert (=> b!1079989 (= res!719852 (= (select (arr!33376 _keys!1070) i!650) k0!904))))

(declare-fun b!1079990 () Bool)

(declare-fun res!719845 () Bool)

(assert (=> b!1079990 (=> (not res!719845) (not e!617451))))

(assert (=> b!1079990 (= res!719845 (and (= (size!33914 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33913 _keys!1070) (size!33914 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079991 () Bool)

(declare-fun res!719848 () Bool)

(assert (=> b!1079991 (=> (not res!719848) (not e!617451))))

(declare-datatypes ((List!23389 0))(
  ( (Nil!23386) (Cons!23385 (h!24594 (_ BitVec 64)) (t!32755 List!23389)) )
))
(declare-fun arrayNoDuplicates!0 (array!69412 (_ BitVec 32) List!23389) Bool)

(assert (=> b!1079991 (= res!719848 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23386))))

(declare-fun b!1079992 () Bool)

(declare-fun res!719847 () Bool)

(assert (=> b!1079992 (=> (not res!719847) (not e!617454))))

(assert (=> b!1079992 (= res!719847 (arrayNoDuplicates!0 lt!478894 #b00000000000000000000000000000000 Nil!23386))))

(declare-fun b!1079993 () Bool)

(declare-fun e!617453 () Bool)

(assert (=> b!1079993 (= e!617453 tp_is_empty!26253)))

(declare-fun b!1079994 () Bool)

(declare-fun res!719851 () Bool)

(assert (=> b!1079994 (=> (not res!719851) (not e!617451))))

(assert (=> b!1079994 (= res!719851 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33913 _keys!1070))))))

(declare-fun mapNonEmpty!41134 () Bool)

(declare-fun tp!78603 () Bool)

(assert (=> mapNonEmpty!41134 (= mapRes!41134 (and tp!78603 e!617453))))

(declare-fun mapKey!41134 () (_ BitVec 32))

(declare-fun mapRest!41134 () (Array (_ BitVec 32) ValueCell!12417))

(declare-fun mapValue!41134 () ValueCell!12417)

(assert (=> mapNonEmpty!41134 (= (arr!33377 _values!874) (store mapRest!41134 mapKey!41134 mapValue!41134))))

(assert (= (and start!95634 res!719849) b!1079990))

(assert (= (and b!1079990 res!719845) b!1079984))

(assert (= (and b!1079984 res!719844) b!1079991))

(assert (= (and b!1079991 res!719848) b!1079994))

(assert (= (and b!1079994 res!719851) b!1079985))

(assert (= (and b!1079985 res!719850) b!1079989))

(assert (= (and b!1079989 res!719852) b!1079983))

(assert (= (and b!1079983 res!719846) b!1079992))

(assert (= (and b!1079992 res!719847) b!1079986))

(assert (= (and b!1079988 condMapEmpty!41134) mapIsEmpty!41134))

(assert (= (and b!1079988 (not condMapEmpty!41134)) mapNonEmpty!41134))

(get-info :version)

(assert (= (and mapNonEmpty!41134 ((_ is ValueCellFull!12417) mapValue!41134)) b!1079993))

(assert (= (and b!1079988 ((_ is ValueCellFull!12417) mapDefault!41134)) b!1079987))

(assert (= start!95634 b!1079988))

(declare-fun m!998167 () Bool)

(assert (=> b!1079985 m!998167))

(declare-fun m!998169 () Bool)

(assert (=> b!1079984 m!998169))

(declare-fun m!998171 () Bool)

(assert (=> b!1079986 m!998171))

(declare-fun m!998173 () Bool)

(assert (=> b!1079986 m!998173))

(declare-fun m!998175 () Bool)

(assert (=> b!1079986 m!998175))

(declare-fun m!998177 () Bool)

(assert (=> b!1079983 m!998177))

(declare-fun m!998179 () Bool)

(assert (=> b!1079983 m!998179))

(declare-fun m!998181 () Bool)

(assert (=> mapNonEmpty!41134 m!998181))

(declare-fun m!998183 () Bool)

(assert (=> b!1079991 m!998183))

(declare-fun m!998185 () Bool)

(assert (=> b!1079992 m!998185))

(declare-fun m!998187 () Bool)

(assert (=> b!1079989 m!998187))

(declare-fun m!998189 () Bool)

(assert (=> start!95634 m!998189))

(declare-fun m!998191 () Bool)

(assert (=> start!95634 m!998191))

(declare-fun m!998193 () Bool)

(assert (=> start!95634 m!998193))

(check-sat (not start!95634) (not b!1079986) (not mapNonEmpty!41134) (not b!1079984) (not b!1079985) (not b!1079983) (not b!1079992) b_and!35247 (not b_next!22251) (not b!1079991) tp_is_empty!26253)
(check-sat b_and!35247 (not b_next!22251))
