; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95546 () Bool)

(assert start!95546)

(declare-fun b!1078637 () Bool)

(declare-fun e!616764 () Bool)

(declare-fun tp_is_empty!26181 () Bool)

(assert (=> b!1078637 (= e!616764 tp_is_empty!26181)))

(declare-fun b!1078638 () Bool)

(declare-fun res!718849 () Bool)

(declare-fun e!616762 () Bool)

(assert (=> b!1078638 (=> (not res!718849) (not e!616762))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69274 0))(
  ( (array!69275 (arr!33308 (Array (_ BitVec 32) (_ BitVec 64))) (size!33845 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69274)

(declare-datatypes ((V!40035 0))(
  ( (V!40036 (val!13147 Int)) )
))
(declare-datatypes ((ValueCell!12381 0))(
  ( (ValueCellFull!12381 (v!15769 V!40035)) (EmptyCell!12381) )
))
(declare-datatypes ((array!69276 0))(
  ( (array!69277 (arr!33309 (Array (_ BitVec 32) ValueCell!12381)) (size!33846 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69276)

(assert (=> b!1078638 (= res!718849 (and (= (size!33846 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33845 _keys!1070) (size!33846 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078639 () Bool)

(declare-fun res!718850 () Bool)

(declare-fun e!616763 () Bool)

(assert (=> b!1078639 (=> (not res!718850) (not e!616763))))

(declare-fun lt!478657 () array!69274)

(declare-datatypes ((List!23359 0))(
  ( (Nil!23356) (Cons!23355 (h!24564 (_ BitVec 64)) (t!32725 List!23359)) )
))
(declare-fun arrayNoDuplicates!0 (array!69274 (_ BitVec 32) List!23359) Bool)

(assert (=> b!1078639 (= res!718850 (arrayNoDuplicates!0 lt!478657 #b00000000000000000000000000000000 Nil!23356))))

(declare-fun b!1078640 () Bool)

(declare-fun e!616767 () Bool)

(declare-fun e!616765 () Bool)

(declare-fun mapRes!41023 () Bool)

(assert (=> b!1078640 (= e!616767 (and e!616765 mapRes!41023))))

(declare-fun condMapEmpty!41023 () Bool)

(declare-fun mapDefault!41023 () ValueCell!12381)

(assert (=> b!1078640 (= condMapEmpty!41023 (= (arr!33309 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12381)) mapDefault!41023)))))

(declare-fun b!1078641 () Bool)

(declare-fun res!718851 () Bool)

(assert (=> b!1078641 (=> (not res!718851) (not e!616762))))

(assert (=> b!1078641 (= res!718851 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23356))))

(declare-fun b!1078642 () Bool)

(declare-fun res!718853 () Bool)

(assert (=> b!1078642 (=> (not res!718853) (not e!616762))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078642 (= res!718853 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33845 _keys!1070))))))

(declare-fun b!1078644 () Bool)

(assert (=> b!1078644 (= e!616762 e!616763)))

(declare-fun res!718848 () Bool)

(assert (=> b!1078644 (=> (not res!718848) (not e!616763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69274 (_ BitVec 32)) Bool)

(assert (=> b!1078644 (= res!718848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478657 mask!1414))))

(assert (=> b!1078644 (= lt!478657 (array!69275 (store (arr!33308 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33845 _keys!1070)))))

(declare-fun b!1078645 () Bool)

(declare-fun res!718847 () Bool)

(assert (=> b!1078645 (=> (not res!718847) (not e!616762))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078645 (= res!718847 (validKeyInArray!0 k0!904))))

(declare-fun b!1078646 () Bool)

(assert (=> b!1078646 (= e!616765 tp_is_empty!26181)))

(declare-fun mapNonEmpty!41023 () Bool)

(declare-fun tp!78486 () Bool)

(assert (=> mapNonEmpty!41023 (= mapRes!41023 (and tp!78486 e!616764))))

(declare-fun mapKey!41023 () (_ BitVec 32))

(declare-fun mapValue!41023 () ValueCell!12381)

(declare-fun mapRest!41023 () (Array (_ BitVec 32) ValueCell!12381))

(assert (=> mapNonEmpty!41023 (= (arr!33309 _values!874) (store mapRest!41023 mapKey!41023 mapValue!41023))))

(declare-fun mapIsEmpty!41023 () Bool)

(assert (=> mapIsEmpty!41023 mapRes!41023))

(declare-fun res!718846 () Bool)

(assert (=> start!95546 (=> (not res!718846) (not e!616762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95546 (= res!718846 (validMask!0 mask!1414))))

(assert (=> start!95546 e!616762))

(assert (=> start!95546 true))

(declare-fun array_inv!25594 (array!69274) Bool)

(assert (=> start!95546 (array_inv!25594 _keys!1070)))

(declare-fun array_inv!25595 (array!69276) Bool)

(assert (=> start!95546 (and (array_inv!25595 _values!874) e!616767)))

(declare-fun b!1078643 () Bool)

(declare-fun res!718854 () Bool)

(assert (=> b!1078643 (=> (not res!718854) (not e!616762))))

(assert (=> b!1078643 (= res!718854 (= (select (arr!33308 _keys!1070) i!650) k0!904))))

(declare-fun b!1078647 () Bool)

(declare-fun res!718852 () Bool)

(assert (=> b!1078647 (=> (not res!718852) (not e!616762))))

(assert (=> b!1078647 (= res!718852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078648 () Bool)

(assert (=> b!1078648 (= e!616763 (not true))))

(declare-fun arrayContainsKey!0 (array!69274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078648 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35413 0))(
  ( (Unit!35414) )
))
(declare-fun lt!478658 () Unit!35413)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69274 (_ BitVec 64) (_ BitVec 32)) Unit!35413)

(assert (=> b!1078648 (= lt!478658 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95546 res!718846) b!1078638))

(assert (= (and b!1078638 res!718849) b!1078647))

(assert (= (and b!1078647 res!718852) b!1078641))

(assert (= (and b!1078641 res!718851) b!1078642))

(assert (= (and b!1078642 res!718853) b!1078645))

(assert (= (and b!1078645 res!718847) b!1078643))

(assert (= (and b!1078643 res!718854) b!1078644))

(assert (= (and b!1078644 res!718848) b!1078639))

(assert (= (and b!1078639 res!718850) b!1078648))

(assert (= (and b!1078640 condMapEmpty!41023) mapIsEmpty!41023))

(assert (= (and b!1078640 (not condMapEmpty!41023)) mapNonEmpty!41023))

(get-info :version)

(assert (= (and mapNonEmpty!41023 ((_ is ValueCellFull!12381) mapValue!41023)) b!1078637))

(assert (= (and b!1078640 ((_ is ValueCellFull!12381) mapDefault!41023)) b!1078646))

(assert (= start!95546 b!1078640))

(declare-fun m!997191 () Bool)

(assert (=> b!1078648 m!997191))

(declare-fun m!997193 () Bool)

(assert (=> b!1078648 m!997193))

(declare-fun m!997195 () Bool)

(assert (=> b!1078647 m!997195))

(declare-fun m!997197 () Bool)

(assert (=> mapNonEmpty!41023 m!997197))

(declare-fun m!997199 () Bool)

(assert (=> b!1078641 m!997199))

(declare-fun m!997201 () Bool)

(assert (=> start!95546 m!997201))

(declare-fun m!997203 () Bool)

(assert (=> start!95546 m!997203))

(declare-fun m!997205 () Bool)

(assert (=> start!95546 m!997205))

(declare-fun m!997207 () Bool)

(assert (=> b!1078644 m!997207))

(declare-fun m!997209 () Bool)

(assert (=> b!1078644 m!997209))

(declare-fun m!997211 () Bool)

(assert (=> b!1078645 m!997211))

(declare-fun m!997213 () Bool)

(assert (=> b!1078643 m!997213))

(declare-fun m!997215 () Bool)

(assert (=> b!1078639 m!997215))

(check-sat tp_is_empty!26181 (not b!1078644) (not b!1078648) (not b!1078641) (not start!95546) (not mapNonEmpty!41023) (not b!1078639) (not b!1078645) (not b!1078647))
(check-sat)
