; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72766 () Bool)

(assert start!72766)

(declare-fun b!844064 () Bool)

(declare-fun e!471105 () Bool)

(declare-fun tp_is_empty!15789 () Bool)

(assert (=> b!844064 (= e!471105 tp_is_empty!15789)))

(declare-fun b!844065 () Bool)

(declare-fun e!471104 () Bool)

(declare-fun mapRes!25283 () Bool)

(assert (=> b!844065 (= e!471104 (and e!471105 mapRes!25283))))

(declare-fun condMapEmpty!25283 () Bool)

(declare-datatypes ((V!26099 0))(
  ( (V!26100 (val!7942 Int)) )
))
(declare-datatypes ((ValueCell!7455 0))(
  ( (ValueCellFull!7455 (v!10363 V!26099)) (EmptyCell!7455) )
))
(declare-datatypes ((array!47796 0))(
  ( (array!47797 (arr!22925 (Array (_ BitVec 32) ValueCell!7455)) (size!23366 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47796)

(declare-fun mapDefault!25283 () ValueCell!7455)

(assert (=> b!844065 (= condMapEmpty!25283 (= (arr!22925 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7455)) mapDefault!25283)))))

(declare-fun b!844066 () Bool)

(declare-fun res!573617 () Bool)

(declare-fun e!471101 () Bool)

(assert (=> b!844066 (=> (not res!573617) (not e!471101))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844066 (= res!573617 (validMask!0 mask!1196))))

(declare-fun b!844067 () Bool)

(declare-fun res!573616 () Bool)

(assert (=> b!844067 (=> (not res!573616) (not e!471101))))

(declare-datatypes ((array!47798 0))(
  ( (array!47799 (arr!22926 (Array (_ BitVec 32) (_ BitVec 64))) (size!23367 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47798)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47798 (_ BitVec 32)) Bool)

(assert (=> b!844067 (= res!573616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25283 () Bool)

(declare-fun tp!48602 () Bool)

(declare-fun e!471102 () Bool)

(assert (=> mapNonEmpty!25283 (= mapRes!25283 (and tp!48602 e!471102))))

(declare-fun mapValue!25283 () ValueCell!7455)

(declare-fun mapKey!25283 () (_ BitVec 32))

(declare-fun mapRest!25283 () (Array (_ BitVec 32) ValueCell!7455))

(assert (=> mapNonEmpty!25283 (= (arr!22925 _values!688) (store mapRest!25283 mapKey!25283 mapValue!25283))))

(declare-fun b!844068 () Bool)

(assert (=> b!844068 (= e!471101 false)))

(declare-fun lt!381195 () Bool)

(declare-datatypes ((List!16332 0))(
  ( (Nil!16329) (Cons!16328 (h!17459 (_ BitVec 64)) (t!22711 List!16332)) )
))
(declare-fun arrayNoDuplicates!0 (array!47798 (_ BitVec 32) List!16332) Bool)

(assert (=> b!844068 (= lt!381195 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16329))))

(declare-fun b!844069 () Bool)

(assert (=> b!844069 (= e!471102 tp_is_empty!15789)))

(declare-fun b!844070 () Bool)

(declare-fun res!573618 () Bool)

(assert (=> b!844070 (=> (not res!573618) (not e!471101))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844070 (= res!573618 (and (= (size!23366 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23367 _keys!868) (size!23366 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!573615 () Bool)

(assert (=> start!72766 (=> (not res!573615) (not e!471101))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72766 (= res!573615 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23367 _keys!868))))))

(assert (=> start!72766 e!471101))

(assert (=> start!72766 true))

(declare-fun array_inv!18212 (array!47798) Bool)

(assert (=> start!72766 (array_inv!18212 _keys!868)))

(declare-fun array_inv!18213 (array!47796) Bool)

(assert (=> start!72766 (and (array_inv!18213 _values!688) e!471104)))

(declare-fun mapIsEmpty!25283 () Bool)

(assert (=> mapIsEmpty!25283 mapRes!25283))

(assert (= (and start!72766 res!573615) b!844066))

(assert (= (and b!844066 res!573617) b!844070))

(assert (= (and b!844070 res!573618) b!844067))

(assert (= (and b!844067 res!573616) b!844068))

(assert (= (and b!844065 condMapEmpty!25283) mapIsEmpty!25283))

(assert (= (and b!844065 (not condMapEmpty!25283)) mapNonEmpty!25283))

(get-info :version)

(assert (= (and mapNonEmpty!25283 ((_ is ValueCellFull!7455) mapValue!25283)) b!844069))

(assert (= (and b!844065 ((_ is ValueCellFull!7455) mapDefault!25283)) b!844064))

(assert (= start!72766 b!844065))

(declare-fun m!786521 () Bool)

(assert (=> b!844068 m!786521))

(declare-fun m!786523 () Bool)

(assert (=> b!844066 m!786523))

(declare-fun m!786525 () Bool)

(assert (=> start!72766 m!786525))

(declare-fun m!786527 () Bool)

(assert (=> start!72766 m!786527))

(declare-fun m!786529 () Bool)

(assert (=> b!844067 m!786529))

(declare-fun m!786531 () Bool)

(assert (=> mapNonEmpty!25283 m!786531))

(check-sat tp_is_empty!15789 (not mapNonEmpty!25283) (not b!844066) (not b!844068) (not b!844067) (not start!72766))
(check-sat)
