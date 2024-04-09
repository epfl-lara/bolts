; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72604 () Bool)

(assert start!72604)

(declare-fun b!842363 () Bool)

(declare-fun e!469889 () Bool)

(declare-fun tp_is_empty!15627 () Bool)

(assert (=> b!842363 (= e!469889 tp_is_empty!15627)))

(declare-fun b!842364 () Bool)

(declare-fun e!469886 () Bool)

(assert (=> b!842364 (= e!469886 false)))

(declare-fun lt!380952 () Bool)

(declare-datatypes ((array!47496 0))(
  ( (array!47497 (arr!22775 (Array (_ BitVec 32) (_ BitVec 64))) (size!23216 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47496)

(declare-datatypes ((List!16275 0))(
  ( (Nil!16272) (Cons!16271 (h!17402 (_ BitVec 64)) (t!22654 List!16275)) )
))
(declare-fun arrayNoDuplicates!0 (array!47496 (_ BitVec 32) List!16275) Bool)

(assert (=> b!842364 (= lt!380952 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16272))))

(declare-fun b!842365 () Bool)

(declare-fun res!572643 () Bool)

(assert (=> b!842365 (=> (not res!572643) (not e!469886))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842365 (= res!572643 (validMask!0 mask!1196))))

(declare-fun b!842366 () Bool)

(declare-fun res!572646 () Bool)

(assert (=> b!842366 (=> (not res!572646) (not e!469886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47496 (_ BitVec 32)) Bool)

(assert (=> b!842366 (= res!572646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25040 () Bool)

(declare-fun mapRes!25040 () Bool)

(declare-fun tp!48359 () Bool)

(assert (=> mapNonEmpty!25040 (= mapRes!25040 (and tp!48359 e!469889))))

(declare-fun mapKey!25040 () (_ BitVec 32))

(declare-datatypes ((V!25883 0))(
  ( (V!25884 (val!7861 Int)) )
))
(declare-datatypes ((ValueCell!7374 0))(
  ( (ValueCellFull!7374 (v!10282 V!25883)) (EmptyCell!7374) )
))
(declare-fun mapValue!25040 () ValueCell!7374)

(declare-datatypes ((array!47498 0))(
  ( (array!47499 (arr!22776 (Array (_ BitVec 32) ValueCell!7374)) (size!23217 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47498)

(declare-fun mapRest!25040 () (Array (_ BitVec 32) ValueCell!7374))

(assert (=> mapNonEmpty!25040 (= (arr!22776 _values!688) (store mapRest!25040 mapKey!25040 mapValue!25040))))

(declare-fun mapIsEmpty!25040 () Bool)

(assert (=> mapIsEmpty!25040 mapRes!25040))

(declare-fun b!842367 () Bool)

(declare-fun res!572645 () Bool)

(assert (=> b!842367 (=> (not res!572645) (not e!469886))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842367 (= res!572645 (and (= (size!23217 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23216 _keys!868) (size!23217 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842369 () Bool)

(declare-fun e!469888 () Bool)

(assert (=> b!842369 (= e!469888 tp_is_empty!15627)))

(declare-fun b!842368 () Bool)

(declare-fun e!469890 () Bool)

(assert (=> b!842368 (= e!469890 (and e!469888 mapRes!25040))))

(declare-fun condMapEmpty!25040 () Bool)

(declare-fun mapDefault!25040 () ValueCell!7374)

(assert (=> b!842368 (= condMapEmpty!25040 (= (arr!22776 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7374)) mapDefault!25040)))))

(declare-fun res!572644 () Bool)

(assert (=> start!72604 (=> (not res!572644) (not e!469886))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72604 (= res!572644 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23216 _keys!868))))))

(assert (=> start!72604 e!469886))

(assert (=> start!72604 true))

(declare-fun array_inv!18104 (array!47496) Bool)

(assert (=> start!72604 (array_inv!18104 _keys!868)))

(declare-fun array_inv!18105 (array!47498) Bool)

(assert (=> start!72604 (and (array_inv!18105 _values!688) e!469890)))

(assert (= (and start!72604 res!572644) b!842365))

(assert (= (and b!842365 res!572643) b!842367))

(assert (= (and b!842367 res!572645) b!842366))

(assert (= (and b!842366 res!572646) b!842364))

(assert (= (and b!842368 condMapEmpty!25040) mapIsEmpty!25040))

(assert (= (and b!842368 (not condMapEmpty!25040)) mapNonEmpty!25040))

(get-info :version)

(assert (= (and mapNonEmpty!25040 ((_ is ValueCellFull!7374) mapValue!25040)) b!842363))

(assert (= (and b!842368 ((_ is ValueCellFull!7374) mapDefault!25040)) b!842369))

(assert (= start!72604 b!842368))

(declare-fun m!785549 () Bool)

(assert (=> b!842364 m!785549))

(declare-fun m!785551 () Bool)

(assert (=> b!842366 m!785551))

(declare-fun m!785553 () Bool)

(assert (=> mapNonEmpty!25040 m!785553))

(declare-fun m!785555 () Bool)

(assert (=> b!842365 m!785555))

(declare-fun m!785557 () Bool)

(assert (=> start!72604 m!785557))

(declare-fun m!785559 () Bool)

(assert (=> start!72604 m!785559))

(check-sat (not b!842364) (not start!72604) (not b!842366) tp_is_empty!15627 (not b!842365) (not mapNonEmpty!25040))
(check-sat)
