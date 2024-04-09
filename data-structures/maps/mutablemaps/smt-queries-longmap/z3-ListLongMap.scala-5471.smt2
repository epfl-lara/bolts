; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72640 () Bool)

(assert start!72640)

(declare-fun b!842741 () Bool)

(declare-fun e!470160 () Bool)

(declare-fun e!470156 () Bool)

(declare-fun mapRes!25094 () Bool)

(assert (=> b!842741 (= e!470160 (and e!470156 mapRes!25094))))

(declare-fun condMapEmpty!25094 () Bool)

(declare-datatypes ((V!25931 0))(
  ( (V!25932 (val!7879 Int)) )
))
(declare-datatypes ((ValueCell!7392 0))(
  ( (ValueCellFull!7392 (v!10300 V!25931)) (EmptyCell!7392) )
))
(declare-datatypes ((array!47568 0))(
  ( (array!47569 (arr!22811 (Array (_ BitVec 32) ValueCell!7392)) (size!23252 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47568)

(declare-fun mapDefault!25094 () ValueCell!7392)

(assert (=> b!842741 (= condMapEmpty!25094 (= (arr!22811 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7392)) mapDefault!25094)))))

(declare-fun b!842742 () Bool)

(declare-fun e!470157 () Bool)

(declare-fun tp_is_empty!15663 () Bool)

(assert (=> b!842742 (= e!470157 tp_is_empty!15663)))

(declare-fun res!572861 () Bool)

(declare-fun e!470158 () Bool)

(assert (=> start!72640 (=> (not res!572861) (not e!470158))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47570 0))(
  ( (array!47571 (arr!22812 (Array (_ BitVec 32) (_ BitVec 64))) (size!23253 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47570)

(assert (=> start!72640 (= res!572861 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23253 _keys!868))))))

(assert (=> start!72640 e!470158))

(assert (=> start!72640 true))

(declare-fun array_inv!18134 (array!47570) Bool)

(assert (=> start!72640 (array_inv!18134 _keys!868)))

(declare-fun array_inv!18135 (array!47568) Bool)

(assert (=> start!72640 (and (array_inv!18135 _values!688) e!470160)))

(declare-fun b!842743 () Bool)

(declare-fun res!572862 () Bool)

(assert (=> b!842743 (=> (not res!572862) (not e!470158))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47570 (_ BitVec 32)) Bool)

(assert (=> b!842743 (= res!572862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842744 () Bool)

(assert (=> b!842744 (= e!470156 tp_is_empty!15663)))

(declare-fun b!842745 () Bool)

(declare-fun res!572860 () Bool)

(assert (=> b!842745 (=> (not res!572860) (not e!470158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842745 (= res!572860 (validMask!0 mask!1196))))

(declare-fun b!842746 () Bool)

(assert (=> b!842746 (= e!470158 false)))

(declare-fun lt!381006 () Bool)

(declare-datatypes ((List!16286 0))(
  ( (Nil!16283) (Cons!16282 (h!17413 (_ BitVec 64)) (t!22665 List!16286)) )
))
(declare-fun arrayNoDuplicates!0 (array!47570 (_ BitVec 32) List!16286) Bool)

(assert (=> b!842746 (= lt!381006 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16283))))

(declare-fun b!842747 () Bool)

(declare-fun res!572859 () Bool)

(assert (=> b!842747 (=> (not res!572859) (not e!470158))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842747 (= res!572859 (and (= (size!23252 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23253 _keys!868) (size!23252 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25094 () Bool)

(assert (=> mapIsEmpty!25094 mapRes!25094))

(declare-fun mapNonEmpty!25094 () Bool)

(declare-fun tp!48413 () Bool)

(assert (=> mapNonEmpty!25094 (= mapRes!25094 (and tp!48413 e!470157))))

(declare-fun mapKey!25094 () (_ BitVec 32))

(declare-fun mapRest!25094 () (Array (_ BitVec 32) ValueCell!7392))

(declare-fun mapValue!25094 () ValueCell!7392)

(assert (=> mapNonEmpty!25094 (= (arr!22811 _values!688) (store mapRest!25094 mapKey!25094 mapValue!25094))))

(assert (= (and start!72640 res!572861) b!842745))

(assert (= (and b!842745 res!572860) b!842747))

(assert (= (and b!842747 res!572859) b!842743))

(assert (= (and b!842743 res!572862) b!842746))

(assert (= (and b!842741 condMapEmpty!25094) mapIsEmpty!25094))

(assert (= (and b!842741 (not condMapEmpty!25094)) mapNonEmpty!25094))

(get-info :version)

(assert (= (and mapNonEmpty!25094 ((_ is ValueCellFull!7392) mapValue!25094)) b!842742))

(assert (= (and b!842741 ((_ is ValueCellFull!7392) mapDefault!25094)) b!842744))

(assert (= start!72640 b!842741))

(declare-fun m!785765 () Bool)

(assert (=> mapNonEmpty!25094 m!785765))

(declare-fun m!785767 () Bool)

(assert (=> start!72640 m!785767))

(declare-fun m!785769 () Bool)

(assert (=> start!72640 m!785769))

(declare-fun m!785771 () Bool)

(assert (=> b!842745 m!785771))

(declare-fun m!785773 () Bool)

(assert (=> b!842743 m!785773))

(declare-fun m!785775 () Bool)

(assert (=> b!842746 m!785775))

(check-sat (not start!72640) (not b!842746) tp_is_empty!15663 (not b!842745) (not b!842743) (not mapNonEmpty!25094))
(check-sat)
