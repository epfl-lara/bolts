; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72802 () Bool)

(assert start!72802)

(declare-fun b!844442 () Bool)

(declare-fun res!573833 () Bool)

(declare-fun e!471373 () Bool)

(assert (=> b!844442 (=> (not res!573833) (not e!471373))))

(declare-datatypes ((array!47866 0))(
  ( (array!47867 (arr!22960 (Array (_ BitVec 32) (_ BitVec 64))) (size!23401 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47866)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47866 (_ BitVec 32)) Bool)

(assert (=> b!844442 (= res!573833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844443 () Bool)

(declare-fun res!573831 () Bool)

(assert (=> b!844443 (=> (not res!573831) (not e!471373))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26147 0))(
  ( (V!26148 (val!7960 Int)) )
))
(declare-datatypes ((ValueCell!7473 0))(
  ( (ValueCellFull!7473 (v!10381 V!26147)) (EmptyCell!7473) )
))
(declare-datatypes ((array!47868 0))(
  ( (array!47869 (arr!22961 (Array (_ BitVec 32) ValueCell!7473)) (size!23402 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47868)

(assert (=> b!844443 (= res!573831 (and (= (size!23402 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23401 _keys!868) (size!23402 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844444 () Bool)

(declare-fun e!471371 () Bool)

(declare-fun tp_is_empty!15825 () Bool)

(assert (=> b!844444 (= e!471371 tp_is_empty!15825)))

(declare-fun b!844445 () Bool)

(declare-fun e!471372 () Bool)

(declare-fun mapRes!25337 () Bool)

(assert (=> b!844445 (= e!471372 (and e!471371 mapRes!25337))))

(declare-fun condMapEmpty!25337 () Bool)

(declare-fun mapDefault!25337 () ValueCell!7473)

(assert (=> b!844445 (= condMapEmpty!25337 (= (arr!22961 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7473)) mapDefault!25337)))))

(declare-fun b!844446 () Bool)

(declare-fun e!471374 () Bool)

(assert (=> b!844446 (= e!471374 tp_is_empty!15825)))

(declare-fun res!573832 () Bool)

(assert (=> start!72802 (=> (not res!573832) (not e!471373))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72802 (= res!573832 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23401 _keys!868))))))

(assert (=> start!72802 e!471373))

(assert (=> start!72802 true))

(declare-fun array_inv!18240 (array!47866) Bool)

(assert (=> start!72802 (array_inv!18240 _keys!868)))

(declare-fun array_inv!18241 (array!47868) Bool)

(assert (=> start!72802 (and (array_inv!18241 _values!688) e!471372)))

(declare-fun mapIsEmpty!25337 () Bool)

(assert (=> mapIsEmpty!25337 mapRes!25337))

(declare-fun b!844447 () Bool)

(assert (=> b!844447 (= e!471373 false)))

(declare-fun lt!381249 () Bool)

(declare-datatypes ((List!16344 0))(
  ( (Nil!16341) (Cons!16340 (h!17471 (_ BitVec 64)) (t!22723 List!16344)) )
))
(declare-fun arrayNoDuplicates!0 (array!47866 (_ BitVec 32) List!16344) Bool)

(assert (=> b!844447 (= lt!381249 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16341))))

(declare-fun mapNonEmpty!25337 () Bool)

(declare-fun tp!48656 () Bool)

(assert (=> mapNonEmpty!25337 (= mapRes!25337 (and tp!48656 e!471374))))

(declare-fun mapValue!25337 () ValueCell!7473)

(declare-fun mapRest!25337 () (Array (_ BitVec 32) ValueCell!7473))

(declare-fun mapKey!25337 () (_ BitVec 32))

(assert (=> mapNonEmpty!25337 (= (arr!22961 _values!688) (store mapRest!25337 mapKey!25337 mapValue!25337))))

(declare-fun b!844448 () Bool)

(declare-fun res!573834 () Bool)

(assert (=> b!844448 (=> (not res!573834) (not e!471373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844448 (= res!573834 (validMask!0 mask!1196))))

(assert (= (and start!72802 res!573832) b!844448))

(assert (= (and b!844448 res!573834) b!844443))

(assert (= (and b!844443 res!573831) b!844442))

(assert (= (and b!844442 res!573833) b!844447))

(assert (= (and b!844445 condMapEmpty!25337) mapIsEmpty!25337))

(assert (= (and b!844445 (not condMapEmpty!25337)) mapNonEmpty!25337))

(get-info :version)

(assert (= (and mapNonEmpty!25337 ((_ is ValueCellFull!7473) mapValue!25337)) b!844446))

(assert (= (and b!844445 ((_ is ValueCellFull!7473) mapDefault!25337)) b!844444))

(assert (= start!72802 b!844445))

(declare-fun m!786737 () Bool)

(assert (=> b!844448 m!786737))

(declare-fun m!786739 () Bool)

(assert (=> start!72802 m!786739))

(declare-fun m!786741 () Bool)

(assert (=> start!72802 m!786741))

(declare-fun m!786743 () Bool)

(assert (=> b!844447 m!786743))

(declare-fun m!786745 () Bool)

(assert (=> mapNonEmpty!25337 m!786745))

(declare-fun m!786747 () Bool)

(assert (=> b!844442 m!786747))

(check-sat (not start!72802) (not b!844448) (not b!844442) (not mapNonEmpty!25337) tp_is_empty!15825 (not b!844447))
(check-sat)
