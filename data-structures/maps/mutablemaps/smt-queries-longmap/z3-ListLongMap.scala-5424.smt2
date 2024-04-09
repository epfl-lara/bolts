; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72358 () Bool)

(assert start!72358)

(declare-fun b!837836 () Bool)

(declare-fun res!569873 () Bool)

(declare-fun e!467721 () Bool)

(assert (=> b!837836 (=> (not res!569873) (not e!467721))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47020 0))(
  ( (array!47021 (arr!22537 (Array (_ BitVec 32) (_ BitVec 64))) (size!22978 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47020)

(declare-datatypes ((V!25555 0))(
  ( (V!25556 (val!7738 Int)) )
))
(declare-datatypes ((ValueCell!7251 0))(
  ( (ValueCellFull!7251 (v!10159 V!25555)) (EmptyCell!7251) )
))
(declare-datatypes ((array!47022 0))(
  ( (array!47023 (arr!22538 (Array (_ BitVec 32) ValueCell!7251)) (size!22979 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47022)

(assert (=> b!837836 (= res!569873 (and (= (size!22979 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22978 _keys!868) (size!22979 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837837 () Bool)

(declare-fun res!569872 () Bool)

(assert (=> b!837837 (=> (not res!569872) (not e!467721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837837 (= res!569872 (validMask!0 mask!1196))))

(declare-fun b!837838 () Bool)

(declare-fun res!569871 () Bool)

(assert (=> b!837838 (=> (not res!569871) (not e!467721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47020 (_ BitVec 32)) Bool)

(assert (=> b!837838 (= res!569871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!24671 () Bool)

(declare-fun mapRes!24671 () Bool)

(declare-fun tp!47666 () Bool)

(declare-fun e!467719 () Bool)

(assert (=> mapNonEmpty!24671 (= mapRes!24671 (and tp!47666 e!467719))))

(declare-fun mapRest!24671 () (Array (_ BitVec 32) ValueCell!7251))

(declare-fun mapValue!24671 () ValueCell!7251)

(declare-fun mapKey!24671 () (_ BitVec 32))

(assert (=> mapNonEmpty!24671 (= (arr!22538 _values!688) (store mapRest!24671 mapKey!24671 mapValue!24671))))

(declare-fun mapIsEmpty!24671 () Bool)

(assert (=> mapIsEmpty!24671 mapRes!24671))

(declare-fun b!837839 () Bool)

(declare-fun e!467718 () Bool)

(declare-fun tp_is_empty!15381 () Bool)

(assert (=> b!837839 (= e!467718 tp_is_empty!15381)))

(declare-fun b!837841 () Bool)

(assert (=> b!837841 (= e!467721 false)))

(declare-fun lt!380583 () Bool)

(declare-datatypes ((List!16097 0))(
  ( (Nil!16094) (Cons!16093 (h!17224 (_ BitVec 64)) (t!22476 List!16097)) )
))
(declare-fun arrayNoDuplicates!0 (array!47020 (_ BitVec 32) List!16097) Bool)

(assert (=> b!837841 (= lt!380583 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16094))))

(declare-fun b!837842 () Bool)

(declare-fun e!467720 () Bool)

(assert (=> b!837842 (= e!467720 (and e!467718 mapRes!24671))))

(declare-fun condMapEmpty!24671 () Bool)

(declare-fun mapDefault!24671 () ValueCell!7251)

(assert (=> b!837842 (= condMapEmpty!24671 (= (arr!22538 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7251)) mapDefault!24671)))))

(declare-fun b!837840 () Bool)

(assert (=> b!837840 (= e!467719 tp_is_empty!15381)))

(declare-fun res!569874 () Bool)

(assert (=> start!72358 (=> (not res!569874) (not e!467721))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72358 (= res!569874 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22978 _keys!868))))))

(assert (=> start!72358 e!467721))

(assert (=> start!72358 true))

(declare-fun array_inv!17928 (array!47020) Bool)

(assert (=> start!72358 (array_inv!17928 _keys!868)))

(declare-fun array_inv!17929 (array!47022) Bool)

(assert (=> start!72358 (and (array_inv!17929 _values!688) e!467720)))

(assert (= (and start!72358 res!569874) b!837837))

(assert (= (and b!837837 res!569872) b!837836))

(assert (= (and b!837836 res!569873) b!837838))

(assert (= (and b!837838 res!569871) b!837841))

(assert (= (and b!837842 condMapEmpty!24671) mapIsEmpty!24671))

(assert (= (and b!837842 (not condMapEmpty!24671)) mapNonEmpty!24671))

(get-info :version)

(assert (= (and mapNonEmpty!24671 ((_ is ValueCellFull!7251) mapValue!24671)) b!837840))

(assert (= (and b!837842 ((_ is ValueCellFull!7251) mapDefault!24671)) b!837839))

(assert (= start!72358 b!837842))

(declare-fun m!782561 () Bool)

(assert (=> b!837838 m!782561))

(declare-fun m!782563 () Bool)

(assert (=> start!72358 m!782563))

(declare-fun m!782565 () Bool)

(assert (=> start!72358 m!782565))

(declare-fun m!782567 () Bool)

(assert (=> b!837841 m!782567))

(declare-fun m!782569 () Bool)

(assert (=> b!837837 m!782569))

(declare-fun m!782571 () Bool)

(assert (=> mapNonEmpty!24671 m!782571))

(check-sat (not start!72358) (not b!837838) (not b!837841) (not mapNonEmpty!24671) (not b!837837) tp_is_empty!15381)
(check-sat)
