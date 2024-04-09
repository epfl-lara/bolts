; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96360 () Bool)

(assert start!96360)

(declare-fun b!1094630 () Bool)

(declare-fun res!730577 () Bool)

(declare-fun e!624996 () Bool)

(assert (=> b!1094630 (=> (not res!730577) (not e!624996))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70826 0))(
  ( (array!70827 (arr!34083 (Array (_ BitVec 32) (_ BitVec 64))) (size!34620 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70826)

(assert (=> b!1094630 (= res!730577 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34620 _keys!1070))))))

(declare-fun mapNonEmpty!42223 () Bool)

(declare-fun mapRes!42223 () Bool)

(declare-fun tp!80739 () Bool)

(declare-fun e!624992 () Bool)

(assert (=> mapNonEmpty!42223 (= mapRes!42223 (and tp!80739 e!624992))))

(declare-datatypes ((V!41099 0))(
  ( (V!41100 (val!13546 Int)) )
))
(declare-datatypes ((ValueCell!12780 0))(
  ( (ValueCellFull!12780 (v!16168 V!41099)) (EmptyCell!12780) )
))
(declare-datatypes ((array!70828 0))(
  ( (array!70829 (arr!34084 (Array (_ BitVec 32) ValueCell!12780)) (size!34621 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70828)

(declare-fun mapRest!42223 () (Array (_ BitVec 32) ValueCell!12780))

(declare-fun mapKey!42223 () (_ BitVec 32))

(declare-fun mapValue!42223 () ValueCell!12780)

(assert (=> mapNonEmpty!42223 (= (arr!34084 _values!874) (store mapRest!42223 mapKey!42223 mapValue!42223))))

(declare-fun b!1094631 () Bool)

(declare-fun res!730580 () Bool)

(assert (=> b!1094631 (=> (not res!730580) (not e!624996))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70826 (_ BitVec 32)) Bool)

(assert (=> b!1094631 (= res!730580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!730579 () Bool)

(assert (=> start!96360 (=> (not res!730579) (not e!624996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96360 (= res!730579 (validMask!0 mask!1414))))

(assert (=> start!96360 e!624996))

(assert (=> start!96360 true))

(declare-fun array_inv!26116 (array!70826) Bool)

(assert (=> start!96360 (array_inv!26116 _keys!1070)))

(declare-fun e!624997 () Bool)

(declare-fun array_inv!26117 (array!70828) Bool)

(assert (=> start!96360 (and (array_inv!26117 _values!874) e!624997)))

(declare-fun b!1094632 () Bool)

(declare-fun e!624993 () Bool)

(declare-fun tp_is_empty!26979 () Bool)

(assert (=> b!1094632 (= e!624993 tp_is_empty!26979)))

(declare-fun b!1094633 () Bool)

(assert (=> b!1094633 (= e!624997 (and e!624993 mapRes!42223))))

(declare-fun condMapEmpty!42223 () Bool)

(declare-fun mapDefault!42223 () ValueCell!12780)

(assert (=> b!1094633 (= condMapEmpty!42223 (= (arr!34084 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12780)) mapDefault!42223)))))

(declare-fun mapIsEmpty!42223 () Bool)

(assert (=> mapIsEmpty!42223 mapRes!42223))

(declare-fun b!1094634 () Bool)

(declare-fun res!730581 () Bool)

(assert (=> b!1094634 (=> (not res!730581) (not e!624996))))

(declare-datatypes ((List!23943 0))(
  ( (Nil!23940) (Cons!23939 (h!25148 (_ BitVec 64)) (t!33957 List!23943)) )
))
(declare-fun arrayNoDuplicates!0 (array!70826 (_ BitVec 32) List!23943) Bool)

(assert (=> b!1094634 (= res!730581 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23940))))

(declare-fun b!1094635 () Bool)

(declare-fun e!624995 () Bool)

(assert (=> b!1094635 (= e!624995 false)))

(declare-fun lt!489662 () Bool)

(declare-fun lt!489661 () array!70826)

(assert (=> b!1094635 (= lt!489662 (arrayNoDuplicates!0 lt!489661 #b00000000000000000000000000000000 Nil!23940))))

(declare-fun b!1094636 () Bool)

(declare-fun res!730583 () Bool)

(assert (=> b!1094636 (=> (not res!730583) (not e!624996))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1094636 (= res!730583 (= (select (arr!34083 _keys!1070) i!650) k0!904))))

(declare-fun b!1094637 () Bool)

(declare-fun res!730578 () Bool)

(assert (=> b!1094637 (=> (not res!730578) (not e!624996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094637 (= res!730578 (validKeyInArray!0 k0!904))))

(declare-fun b!1094638 () Bool)

(assert (=> b!1094638 (= e!624996 e!624995)))

(declare-fun res!730576 () Bool)

(assert (=> b!1094638 (=> (not res!730576) (not e!624995))))

(assert (=> b!1094638 (= res!730576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489661 mask!1414))))

(assert (=> b!1094638 (= lt!489661 (array!70827 (store (arr!34083 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34620 _keys!1070)))))

(declare-fun b!1094639 () Bool)

(assert (=> b!1094639 (= e!624992 tp_is_empty!26979)))

(declare-fun b!1094640 () Bool)

(declare-fun res!730582 () Bool)

(assert (=> b!1094640 (=> (not res!730582) (not e!624996))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094640 (= res!730582 (and (= (size!34621 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34620 _keys!1070) (size!34621 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96360 res!730579) b!1094640))

(assert (= (and b!1094640 res!730582) b!1094631))

(assert (= (and b!1094631 res!730580) b!1094634))

(assert (= (and b!1094634 res!730581) b!1094630))

(assert (= (and b!1094630 res!730577) b!1094637))

(assert (= (and b!1094637 res!730578) b!1094636))

(assert (= (and b!1094636 res!730583) b!1094638))

(assert (= (and b!1094638 res!730576) b!1094635))

(assert (= (and b!1094633 condMapEmpty!42223) mapIsEmpty!42223))

(assert (= (and b!1094633 (not condMapEmpty!42223)) mapNonEmpty!42223))

(get-info :version)

(assert (= (and mapNonEmpty!42223 ((_ is ValueCellFull!12780) mapValue!42223)) b!1094639))

(assert (= (and b!1094633 ((_ is ValueCellFull!12780) mapDefault!42223)) b!1094632))

(assert (= start!96360 b!1094633))

(declare-fun m!1014625 () Bool)

(assert (=> b!1094636 m!1014625))

(declare-fun m!1014627 () Bool)

(assert (=> b!1094638 m!1014627))

(declare-fun m!1014629 () Bool)

(assert (=> b!1094638 m!1014629))

(declare-fun m!1014631 () Bool)

(assert (=> b!1094635 m!1014631))

(declare-fun m!1014633 () Bool)

(assert (=> b!1094631 m!1014633))

(declare-fun m!1014635 () Bool)

(assert (=> b!1094634 m!1014635))

(declare-fun m!1014637 () Bool)

(assert (=> b!1094637 m!1014637))

(declare-fun m!1014639 () Bool)

(assert (=> mapNonEmpty!42223 m!1014639))

(declare-fun m!1014641 () Bool)

(assert (=> start!96360 m!1014641))

(declare-fun m!1014643 () Bool)

(assert (=> start!96360 m!1014643))

(declare-fun m!1014645 () Bool)

(assert (=> start!96360 m!1014645))

(check-sat (not b!1094637) (not b!1094631) tp_is_empty!26979 (not b!1094635) (not mapNonEmpty!42223) (not start!96360) (not b!1094638) (not b!1094634))
(check-sat)
