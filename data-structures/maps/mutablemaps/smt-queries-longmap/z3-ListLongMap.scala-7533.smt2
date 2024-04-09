; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95540 () Bool)

(assert start!95540)

(declare-fun res!718774 () Bool)

(declare-fun e!616709 () Bool)

(assert (=> start!95540 (=> (not res!718774) (not e!616709))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95540 (= res!718774 (validMask!0 mask!1414))))

(assert (=> start!95540 e!616709))

(assert (=> start!95540 true))

(declare-datatypes ((array!69264 0))(
  ( (array!69265 (arr!33303 (Array (_ BitVec 32) (_ BitVec 64))) (size!33840 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69264)

(declare-fun array_inv!25592 (array!69264) Bool)

(assert (=> start!95540 (array_inv!25592 _keys!1070)))

(declare-datatypes ((V!40027 0))(
  ( (V!40028 (val!13144 Int)) )
))
(declare-datatypes ((ValueCell!12378 0))(
  ( (ValueCellFull!12378 (v!15766 V!40027)) (EmptyCell!12378) )
))
(declare-datatypes ((array!69266 0))(
  ( (array!69267 (arr!33304 (Array (_ BitVec 32) ValueCell!12378)) (size!33841 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69266)

(declare-fun e!616712 () Bool)

(declare-fun array_inv!25593 (array!69266) Bool)

(assert (=> start!95540 (and (array_inv!25593 _values!874) e!616712)))

(declare-fun b!1078533 () Bool)

(declare-fun e!616711 () Bool)

(assert (=> b!1078533 (= e!616711 false)))

(declare-fun lt!478639 () Bool)

(declare-fun lt!478640 () array!69264)

(declare-datatypes ((List!23357 0))(
  ( (Nil!23354) (Cons!23353 (h!24562 (_ BitVec 64)) (t!32723 List!23357)) )
))
(declare-fun arrayNoDuplicates!0 (array!69264 (_ BitVec 32) List!23357) Bool)

(assert (=> b!1078533 (= lt!478639 (arrayNoDuplicates!0 lt!478640 #b00000000000000000000000000000000 Nil!23354))))

(declare-fun b!1078534 () Bool)

(declare-fun res!718771 () Bool)

(assert (=> b!1078534 (=> (not res!718771) (not e!616709))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078534 (= res!718771 (validKeyInArray!0 k0!904))))

(declare-fun b!1078535 () Bool)

(declare-fun res!718776 () Bool)

(assert (=> b!1078535 (=> (not res!718776) (not e!616709))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078535 (= res!718776 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33840 _keys!1070))))))

(declare-fun b!1078536 () Bool)

(declare-fun e!616708 () Bool)

(declare-fun mapRes!41014 () Bool)

(assert (=> b!1078536 (= e!616712 (and e!616708 mapRes!41014))))

(declare-fun condMapEmpty!41014 () Bool)

(declare-fun mapDefault!41014 () ValueCell!12378)

(assert (=> b!1078536 (= condMapEmpty!41014 (= (arr!33304 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12378)) mapDefault!41014)))))

(declare-fun b!1078537 () Bool)

(declare-fun res!718773 () Bool)

(assert (=> b!1078537 (=> (not res!718773) (not e!616709))))

(assert (=> b!1078537 (= res!718773 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23354))))

(declare-fun b!1078538 () Bool)

(declare-fun res!718772 () Bool)

(assert (=> b!1078538 (=> (not res!718772) (not e!616709))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078538 (= res!718772 (and (= (size!33841 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33840 _keys!1070) (size!33841 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078539 () Bool)

(declare-fun tp_is_empty!26175 () Bool)

(assert (=> b!1078539 (= e!616708 tp_is_empty!26175)))

(declare-fun mapIsEmpty!41014 () Bool)

(assert (=> mapIsEmpty!41014 mapRes!41014))

(declare-fun mapNonEmpty!41014 () Bool)

(declare-fun tp!78477 () Bool)

(declare-fun e!616713 () Bool)

(assert (=> mapNonEmpty!41014 (= mapRes!41014 (and tp!78477 e!616713))))

(declare-fun mapValue!41014 () ValueCell!12378)

(declare-fun mapKey!41014 () (_ BitVec 32))

(declare-fun mapRest!41014 () (Array (_ BitVec 32) ValueCell!12378))

(assert (=> mapNonEmpty!41014 (= (arr!33304 _values!874) (store mapRest!41014 mapKey!41014 mapValue!41014))))

(declare-fun b!1078540 () Bool)

(assert (=> b!1078540 (= e!616709 e!616711)))

(declare-fun res!718770 () Bool)

(assert (=> b!1078540 (=> (not res!718770) (not e!616711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69264 (_ BitVec 32)) Bool)

(assert (=> b!1078540 (= res!718770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478640 mask!1414))))

(assert (=> b!1078540 (= lt!478640 (array!69265 (store (arr!33303 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33840 _keys!1070)))))

(declare-fun b!1078541 () Bool)

(assert (=> b!1078541 (= e!616713 tp_is_empty!26175)))

(declare-fun b!1078542 () Bool)

(declare-fun res!718775 () Bool)

(assert (=> b!1078542 (=> (not res!718775) (not e!616709))))

(assert (=> b!1078542 (= res!718775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078543 () Bool)

(declare-fun res!718769 () Bool)

(assert (=> b!1078543 (=> (not res!718769) (not e!616709))))

(assert (=> b!1078543 (= res!718769 (= (select (arr!33303 _keys!1070) i!650) k0!904))))

(assert (= (and start!95540 res!718774) b!1078538))

(assert (= (and b!1078538 res!718772) b!1078542))

(assert (= (and b!1078542 res!718775) b!1078537))

(assert (= (and b!1078537 res!718773) b!1078535))

(assert (= (and b!1078535 res!718776) b!1078534))

(assert (= (and b!1078534 res!718771) b!1078543))

(assert (= (and b!1078543 res!718769) b!1078540))

(assert (= (and b!1078540 res!718770) b!1078533))

(assert (= (and b!1078536 condMapEmpty!41014) mapIsEmpty!41014))

(assert (= (and b!1078536 (not condMapEmpty!41014)) mapNonEmpty!41014))

(get-info :version)

(assert (= (and mapNonEmpty!41014 ((_ is ValueCellFull!12378) mapValue!41014)) b!1078541))

(assert (= (and b!1078536 ((_ is ValueCellFull!12378) mapDefault!41014)) b!1078539))

(assert (= start!95540 b!1078536))

(declare-fun m!997121 () Bool)

(assert (=> b!1078542 m!997121))

(declare-fun m!997123 () Bool)

(assert (=> start!95540 m!997123))

(declare-fun m!997125 () Bool)

(assert (=> start!95540 m!997125))

(declare-fun m!997127 () Bool)

(assert (=> start!95540 m!997127))

(declare-fun m!997129 () Bool)

(assert (=> b!1078540 m!997129))

(declare-fun m!997131 () Bool)

(assert (=> b!1078540 m!997131))

(declare-fun m!997133 () Bool)

(assert (=> b!1078533 m!997133))

(declare-fun m!997135 () Bool)

(assert (=> mapNonEmpty!41014 m!997135))

(declare-fun m!997137 () Bool)

(assert (=> b!1078543 m!997137))

(declare-fun m!997139 () Bool)

(assert (=> b!1078537 m!997139))

(declare-fun m!997141 () Bool)

(assert (=> b!1078534 m!997141))

(check-sat (not b!1078540) (not b!1078534) (not b!1078537) (not start!95540) (not mapNonEmpty!41014) tp_is_empty!26175 (not b!1078542) (not b!1078533))
(check-sat)
