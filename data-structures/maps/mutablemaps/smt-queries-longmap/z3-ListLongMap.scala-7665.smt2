; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96348 () Bool)

(assert start!96348)

(declare-fun b!1094461 () Bool)

(declare-fun res!730462 () Bool)

(declare-fun e!624900 () Bool)

(assert (=> b!1094461 (=> (not res!730462) (not e!624900))))

(declare-datatypes ((array!70804 0))(
  ( (array!70805 (arr!34072 (Array (_ BitVec 32) (_ BitVec 64))) (size!34609 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70804)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70804 (_ BitVec 32)) Bool)

(assert (=> b!1094461 (= res!730462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094462 () Bool)

(declare-fun res!730463 () Bool)

(assert (=> b!1094462 (=> (not res!730463) (not e!624900))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41083 0))(
  ( (V!41084 (val!13540 Int)) )
))
(declare-datatypes ((ValueCell!12774 0))(
  ( (ValueCellFull!12774 (v!16162 V!41083)) (EmptyCell!12774) )
))
(declare-datatypes ((array!70806 0))(
  ( (array!70807 (arr!34073 (Array (_ BitVec 32) ValueCell!12774)) (size!34610 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70806)

(assert (=> b!1094462 (= res!730463 (and (= (size!34610 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34609 _keys!1070) (size!34610 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730461 () Bool)

(assert (=> start!96348 (=> (not res!730461) (not e!624900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96348 (= res!730461 (validMask!0 mask!1414))))

(assert (=> start!96348 e!624900))

(assert (=> start!96348 true))

(declare-fun e!624899 () Bool)

(declare-fun array_inv!26108 (array!70806) Bool)

(assert (=> start!96348 (and (array_inv!26108 _values!874) e!624899)))

(declare-fun array_inv!26109 (array!70804) Bool)

(assert (=> start!96348 (array_inv!26109 _keys!1070)))

(declare-fun b!1094463 () Bool)

(declare-fun e!624898 () Bool)

(declare-fun tp_is_empty!26967 () Bool)

(assert (=> b!1094463 (= e!624898 tp_is_empty!26967)))

(declare-fun b!1094464 () Bool)

(declare-fun e!624901 () Bool)

(assert (=> b!1094464 (= e!624901 tp_is_empty!26967)))

(declare-fun b!1094465 () Bool)

(assert (=> b!1094465 (= e!624900 false)))

(declare-fun lt!489638 () Bool)

(declare-datatypes ((List!23939 0))(
  ( (Nil!23936) (Cons!23935 (h!25144 (_ BitVec 64)) (t!33953 List!23939)) )
))
(declare-fun arrayNoDuplicates!0 (array!70804 (_ BitVec 32) List!23939) Bool)

(assert (=> b!1094465 (= lt!489638 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23936))))

(declare-fun mapNonEmpty!42205 () Bool)

(declare-fun mapRes!42205 () Bool)

(declare-fun tp!80721 () Bool)

(assert (=> mapNonEmpty!42205 (= mapRes!42205 (and tp!80721 e!624901))))

(declare-fun mapValue!42205 () ValueCell!12774)

(declare-fun mapRest!42205 () (Array (_ BitVec 32) ValueCell!12774))

(declare-fun mapKey!42205 () (_ BitVec 32))

(assert (=> mapNonEmpty!42205 (= (arr!34073 _values!874) (store mapRest!42205 mapKey!42205 mapValue!42205))))

(declare-fun mapIsEmpty!42205 () Bool)

(assert (=> mapIsEmpty!42205 mapRes!42205))

(declare-fun b!1094466 () Bool)

(assert (=> b!1094466 (= e!624899 (and e!624898 mapRes!42205))))

(declare-fun condMapEmpty!42205 () Bool)

(declare-fun mapDefault!42205 () ValueCell!12774)

(assert (=> b!1094466 (= condMapEmpty!42205 (= (arr!34073 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12774)) mapDefault!42205)))))

(assert (= (and start!96348 res!730461) b!1094462))

(assert (= (and b!1094462 res!730463) b!1094461))

(assert (= (and b!1094461 res!730462) b!1094465))

(assert (= (and b!1094466 condMapEmpty!42205) mapIsEmpty!42205))

(assert (= (and b!1094466 (not condMapEmpty!42205)) mapNonEmpty!42205))

(get-info :version)

(assert (= (and mapNonEmpty!42205 ((_ is ValueCellFull!12774) mapValue!42205)) b!1094464))

(assert (= (and b!1094466 ((_ is ValueCellFull!12774) mapDefault!42205)) b!1094463))

(assert (= start!96348 b!1094466))

(declare-fun m!1014519 () Bool)

(assert (=> b!1094461 m!1014519))

(declare-fun m!1014521 () Bool)

(assert (=> start!96348 m!1014521))

(declare-fun m!1014523 () Bool)

(assert (=> start!96348 m!1014523))

(declare-fun m!1014525 () Bool)

(assert (=> start!96348 m!1014525))

(declare-fun m!1014527 () Bool)

(assert (=> b!1094465 m!1014527))

(declare-fun m!1014529 () Bool)

(assert (=> mapNonEmpty!42205 m!1014529))

(check-sat tp_is_empty!26967 (not mapNonEmpty!42205) (not b!1094465) (not start!96348) (not b!1094461))
(check-sat)
