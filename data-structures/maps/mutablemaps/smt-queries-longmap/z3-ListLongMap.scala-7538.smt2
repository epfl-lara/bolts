; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95586 () Bool)

(assert start!95586)

(declare-fun b!1079119 () Bool)

(declare-fun res!719196 () Bool)

(declare-fun e!617020 () Bool)

(assert (=> b!1079119 (=> (not res!719196) (not e!617020))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079119 (= res!719196 (validKeyInArray!0 k0!904))))

(declare-fun b!1079120 () Bool)

(declare-fun e!617018 () Bool)

(declare-fun tp_is_empty!26205 () Bool)

(assert (=> b!1079120 (= e!617018 tp_is_empty!26205)))

(declare-fun mapIsEmpty!41062 () Bool)

(declare-fun mapRes!41062 () Bool)

(assert (=> mapIsEmpty!41062 mapRes!41062))

(declare-fun b!1079121 () Bool)

(declare-fun e!617021 () Bool)

(assert (=> b!1079121 (= e!617021 tp_is_empty!26205)))

(declare-fun b!1079122 () Bool)

(declare-fun e!617023 () Bool)

(assert (=> b!1079122 (= e!617023 (and e!617021 mapRes!41062))))

(declare-fun condMapEmpty!41062 () Bool)

(declare-datatypes ((V!40067 0))(
  ( (V!40068 (val!13159 Int)) )
))
(declare-datatypes ((ValueCell!12393 0))(
  ( (ValueCellFull!12393 (v!15781 V!40067)) (EmptyCell!12393) )
))
(declare-datatypes ((array!69322 0))(
  ( (array!69323 (arr!33331 (Array (_ BitVec 32) ValueCell!12393)) (size!33868 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69322)

(declare-fun mapDefault!41062 () ValueCell!12393)

(assert (=> b!1079122 (= condMapEmpty!41062 (= (arr!33331 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12393)) mapDefault!41062)))))

(declare-fun b!1079123 () Bool)

(declare-fun res!719204 () Bool)

(assert (=> b!1079123 (=> (not res!719204) (not e!617020))))

(declare-datatypes ((array!69324 0))(
  ( (array!69325 (arr!33332 (Array (_ BitVec 32) (_ BitVec 64))) (size!33869 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69324)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079123 (= res!719204 (= (select (arr!33332 _keys!1070) i!650) k0!904))))

(declare-fun res!719199 () Bool)

(assert (=> start!95586 (=> (not res!719199) (not e!617020))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95586 (= res!719199 (validMask!0 mask!1414))))

(assert (=> start!95586 e!617020))

(assert (=> start!95586 true))

(declare-fun array_inv!25612 (array!69324) Bool)

(assert (=> start!95586 (array_inv!25612 _keys!1070)))

(declare-fun array_inv!25613 (array!69322) Bool)

(assert (=> start!95586 (and (array_inv!25613 _values!874) e!617023)))

(declare-fun b!1079124 () Bool)

(declare-fun res!719203 () Bool)

(assert (=> b!1079124 (=> (not res!719203) (not e!617020))))

(assert (=> b!1079124 (= res!719203 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33869 _keys!1070))))))

(declare-fun b!1079125 () Bool)

(declare-fun res!719202 () Bool)

(assert (=> b!1079125 (=> (not res!719202) (not e!617020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69324 (_ BitVec 32)) Bool)

(assert (=> b!1079125 (= res!719202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079126 () Bool)

(declare-fun e!617022 () Bool)

(assert (=> b!1079126 (= e!617020 e!617022)))

(declare-fun res!719198 () Bool)

(assert (=> b!1079126 (=> (not res!719198) (not e!617022))))

(declare-fun lt!478745 () array!69324)

(assert (=> b!1079126 (= res!719198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478745 mask!1414))))

(assert (=> b!1079126 (= lt!478745 (array!69325 (store (arr!33332 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33869 _keys!1070)))))

(declare-fun b!1079127 () Bool)

(declare-fun res!719200 () Bool)

(assert (=> b!1079127 (=> (not res!719200) (not e!617022))))

(declare-datatypes ((List!23369 0))(
  ( (Nil!23366) (Cons!23365 (h!24574 (_ BitVec 64)) (t!32735 List!23369)) )
))
(declare-fun arrayNoDuplicates!0 (array!69324 (_ BitVec 32) List!23369) Bool)

(assert (=> b!1079127 (= res!719200 (arrayNoDuplicates!0 lt!478745 #b00000000000000000000000000000000 Nil!23366))))

(declare-fun b!1079128 () Bool)

(declare-fun res!719201 () Bool)

(assert (=> b!1079128 (=> (not res!719201) (not e!617020))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079128 (= res!719201 (and (= (size!33868 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33869 _keys!1070) (size!33868 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079129 () Bool)

(declare-fun res!719197 () Bool)

(assert (=> b!1079129 (=> (not res!719197) (not e!617020))))

(assert (=> b!1079129 (= res!719197 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23366))))

(declare-fun mapNonEmpty!41062 () Bool)

(declare-fun tp!78525 () Bool)

(assert (=> mapNonEmpty!41062 (= mapRes!41062 (and tp!78525 e!617018))))

(declare-fun mapKey!41062 () (_ BitVec 32))

(declare-fun mapValue!41062 () ValueCell!12393)

(declare-fun mapRest!41062 () (Array (_ BitVec 32) ValueCell!12393))

(assert (=> mapNonEmpty!41062 (= (arr!33331 _values!874) (store mapRest!41062 mapKey!41062 mapValue!41062))))

(declare-fun b!1079130 () Bool)

(assert (=> b!1079130 (= e!617022 (not true))))

(declare-fun arrayContainsKey!0 (array!69324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079130 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35429 0))(
  ( (Unit!35430) )
))
(declare-fun lt!478744 () Unit!35429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69324 (_ BitVec 64) (_ BitVec 32)) Unit!35429)

(assert (=> b!1079130 (= lt!478744 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95586 res!719199) b!1079128))

(assert (= (and b!1079128 res!719201) b!1079125))

(assert (= (and b!1079125 res!719202) b!1079129))

(assert (= (and b!1079129 res!719197) b!1079124))

(assert (= (and b!1079124 res!719203) b!1079119))

(assert (= (and b!1079119 res!719196) b!1079123))

(assert (= (and b!1079123 res!719204) b!1079126))

(assert (= (and b!1079126 res!719198) b!1079127))

(assert (= (and b!1079127 res!719200) b!1079130))

(assert (= (and b!1079122 condMapEmpty!41062) mapIsEmpty!41062))

(assert (= (and b!1079122 (not condMapEmpty!41062)) mapNonEmpty!41062))

(get-info :version)

(assert (= (and mapNonEmpty!41062 ((_ is ValueCellFull!12393) mapValue!41062)) b!1079120))

(assert (= (and b!1079122 ((_ is ValueCellFull!12393) mapDefault!41062)) b!1079121))

(assert (= start!95586 b!1079122))

(declare-fun m!997541 () Bool)

(assert (=> start!95586 m!997541))

(declare-fun m!997543 () Bool)

(assert (=> start!95586 m!997543))

(declare-fun m!997545 () Bool)

(assert (=> start!95586 m!997545))

(declare-fun m!997547 () Bool)

(assert (=> b!1079119 m!997547))

(declare-fun m!997549 () Bool)

(assert (=> b!1079125 m!997549))

(declare-fun m!997551 () Bool)

(assert (=> b!1079126 m!997551))

(declare-fun m!997553 () Bool)

(assert (=> b!1079126 m!997553))

(declare-fun m!997555 () Bool)

(assert (=> b!1079130 m!997555))

(declare-fun m!997557 () Bool)

(assert (=> b!1079130 m!997557))

(declare-fun m!997559 () Bool)

(assert (=> b!1079127 m!997559))

(declare-fun m!997561 () Bool)

(assert (=> mapNonEmpty!41062 m!997561))

(declare-fun m!997563 () Bool)

(assert (=> b!1079129 m!997563))

(declare-fun m!997565 () Bool)

(assert (=> b!1079123 m!997565))

(check-sat (not b!1079125) (not b!1079130) tp_is_empty!26205 (not b!1079127) (not b!1079119) (not b!1079129) (not start!95586) (not b!1079126) (not mapNonEmpty!41062))
(check-sat)
