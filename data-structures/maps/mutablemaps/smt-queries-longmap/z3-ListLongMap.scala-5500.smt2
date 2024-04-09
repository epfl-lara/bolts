; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72814 () Bool)

(assert start!72814)

(declare-fun b!844568 () Bool)

(declare-fun res!573904 () Bool)

(declare-fun e!471464 () Bool)

(assert (=> b!844568 (=> (not res!573904) (not e!471464))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844568 (= res!573904 (validMask!0 mask!1196))))

(declare-fun b!844569 () Bool)

(declare-fun e!471463 () Bool)

(declare-fun tp_is_empty!15837 () Bool)

(assert (=> b!844569 (= e!471463 tp_is_empty!15837)))

(declare-fun mapIsEmpty!25355 () Bool)

(declare-fun mapRes!25355 () Bool)

(assert (=> mapIsEmpty!25355 mapRes!25355))

(declare-fun b!844570 () Bool)

(declare-fun res!573903 () Bool)

(assert (=> b!844570 (=> (not res!573903) (not e!471464))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47888 0))(
  ( (array!47889 (arr!22971 (Array (_ BitVec 32) (_ BitVec 64))) (size!23412 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47888)

(declare-datatypes ((V!26163 0))(
  ( (V!26164 (val!7966 Int)) )
))
(declare-datatypes ((ValueCell!7479 0))(
  ( (ValueCellFull!7479 (v!10387 V!26163)) (EmptyCell!7479) )
))
(declare-datatypes ((array!47890 0))(
  ( (array!47891 (arr!22972 (Array (_ BitVec 32) ValueCell!7479)) (size!23413 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47890)

(assert (=> b!844570 (= res!573903 (and (= (size!23413 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23412 _keys!868) (size!23413 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!573906 () Bool)

(assert (=> start!72814 (=> (not res!573906) (not e!471464))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72814 (= res!573906 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23412 _keys!868))))))

(assert (=> start!72814 e!471464))

(assert (=> start!72814 true))

(declare-fun array_inv!18246 (array!47888) Bool)

(assert (=> start!72814 (array_inv!18246 _keys!868)))

(declare-fun e!471465 () Bool)

(declare-fun array_inv!18247 (array!47890) Bool)

(assert (=> start!72814 (and (array_inv!18247 _values!688) e!471465)))

(declare-fun b!844571 () Bool)

(declare-fun e!471461 () Bool)

(assert (=> b!844571 (= e!471461 tp_is_empty!15837)))

(declare-fun b!844572 () Bool)

(assert (=> b!844572 (= e!471464 false)))

(declare-fun lt!381267 () Bool)

(declare-datatypes ((List!16348 0))(
  ( (Nil!16345) (Cons!16344 (h!17475 (_ BitVec 64)) (t!22727 List!16348)) )
))
(declare-fun arrayNoDuplicates!0 (array!47888 (_ BitVec 32) List!16348) Bool)

(assert (=> b!844572 (= lt!381267 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16345))))

(declare-fun b!844573 () Bool)

(declare-fun res!573905 () Bool)

(assert (=> b!844573 (=> (not res!573905) (not e!471464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47888 (_ BitVec 32)) Bool)

(assert (=> b!844573 (= res!573905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844574 () Bool)

(assert (=> b!844574 (= e!471465 (and e!471461 mapRes!25355))))

(declare-fun condMapEmpty!25355 () Bool)

(declare-fun mapDefault!25355 () ValueCell!7479)

(assert (=> b!844574 (= condMapEmpty!25355 (= (arr!22972 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7479)) mapDefault!25355)))))

(declare-fun mapNonEmpty!25355 () Bool)

(declare-fun tp!48674 () Bool)

(assert (=> mapNonEmpty!25355 (= mapRes!25355 (and tp!48674 e!471463))))

(declare-fun mapValue!25355 () ValueCell!7479)

(declare-fun mapRest!25355 () (Array (_ BitVec 32) ValueCell!7479))

(declare-fun mapKey!25355 () (_ BitVec 32))

(assert (=> mapNonEmpty!25355 (= (arr!22972 _values!688) (store mapRest!25355 mapKey!25355 mapValue!25355))))

(assert (= (and start!72814 res!573906) b!844568))

(assert (= (and b!844568 res!573904) b!844570))

(assert (= (and b!844570 res!573903) b!844573))

(assert (= (and b!844573 res!573905) b!844572))

(assert (= (and b!844574 condMapEmpty!25355) mapIsEmpty!25355))

(assert (= (and b!844574 (not condMapEmpty!25355)) mapNonEmpty!25355))

(get-info :version)

(assert (= (and mapNonEmpty!25355 ((_ is ValueCellFull!7479) mapValue!25355)) b!844569))

(assert (= (and b!844574 ((_ is ValueCellFull!7479) mapDefault!25355)) b!844571))

(assert (= start!72814 b!844574))

(declare-fun m!786809 () Bool)

(assert (=> mapNonEmpty!25355 m!786809))

(declare-fun m!786811 () Bool)

(assert (=> b!844568 m!786811))

(declare-fun m!786813 () Bool)

(assert (=> start!72814 m!786813))

(declare-fun m!786815 () Bool)

(assert (=> start!72814 m!786815))

(declare-fun m!786817 () Bool)

(assert (=> b!844573 m!786817))

(declare-fun m!786819 () Bool)

(assert (=> b!844572 m!786819))

(check-sat (not mapNonEmpty!25355) (not b!844568) (not b!844573) tp_is_empty!15837 (not b!844572) (not start!72814))
(check-sat)
