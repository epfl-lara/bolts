; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84286 () Bool)

(assert start!84286)

(declare-fun b!985645 () Bool)

(declare-fun res!659670 () Bool)

(declare-fun e!555620 () Bool)

(assert (=> b!985645 (=> (not res!659670) (not e!555620))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35731 0))(
  ( (V!35732 (val!11581 Int)) )
))
(declare-datatypes ((ValueCell!11049 0))(
  ( (ValueCellFull!11049 (v!14143 V!35731)) (EmptyCell!11049) )
))
(declare-datatypes ((array!62087 0))(
  ( (array!62088 (arr!29897 (Array (_ BitVec 32) ValueCell!11049)) (size!30377 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62087)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62089 0))(
  ( (array!62090 (arr!29898 (Array (_ BitVec 32) (_ BitVec 64))) (size!30378 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62089)

(assert (=> b!985645 (= res!659670 (and (= (size!30377 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30378 _keys!1544) (size!30377 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985646 () Bool)

(declare-fun e!555616 () Bool)

(declare-fun e!555618 () Bool)

(declare-fun mapRes!36620 () Bool)

(assert (=> b!985646 (= e!555616 (and e!555618 mapRes!36620))))

(declare-fun condMapEmpty!36620 () Bool)

(declare-fun mapDefault!36620 () ValueCell!11049)

(assert (=> b!985646 (= condMapEmpty!36620 (= (arr!29897 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11049)) mapDefault!36620)))))

(declare-fun mapNonEmpty!36620 () Bool)

(declare-fun tp!69476 () Bool)

(declare-fun e!555619 () Bool)

(assert (=> mapNonEmpty!36620 (= mapRes!36620 (and tp!69476 e!555619))))

(declare-fun mapValue!36620 () ValueCell!11049)

(declare-fun mapKey!36620 () (_ BitVec 32))

(declare-fun mapRest!36620 () (Array (_ BitVec 32) ValueCell!11049))

(assert (=> mapNonEmpty!36620 (= (arr!29897 _values!1278) (store mapRest!36620 mapKey!36620 mapValue!36620))))

(declare-fun b!985647 () Bool)

(declare-fun res!659668 () Bool)

(assert (=> b!985647 (=> (not res!659668) (not e!555620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62089 (_ BitVec 32)) Bool)

(assert (=> b!985647 (= res!659668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985648 () Bool)

(declare-fun tp_is_empty!23061 () Bool)

(assert (=> b!985648 (= e!555619 tp_is_empty!23061)))

(declare-fun b!985649 () Bool)

(assert (=> b!985649 (= e!555618 tp_is_empty!23061)))

(declare-fun res!659669 () Bool)

(assert (=> start!84286 (=> (not res!659669) (not e!555620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84286 (= res!659669 (validMask!0 mask!1948))))

(assert (=> start!84286 e!555620))

(assert (=> start!84286 true))

(declare-fun array_inv!22975 (array!62087) Bool)

(assert (=> start!84286 (and (array_inv!22975 _values!1278) e!555616)))

(declare-fun array_inv!22976 (array!62089) Bool)

(assert (=> start!84286 (array_inv!22976 _keys!1544)))

(declare-fun b!985650 () Bool)

(assert (=> b!985650 (= e!555620 false)))

(declare-fun lt!437332 () Bool)

(declare-datatypes ((List!20837 0))(
  ( (Nil!20834) (Cons!20833 (h!21995 (_ BitVec 64)) (t!29744 List!20837)) )
))
(declare-fun arrayNoDuplicates!0 (array!62089 (_ BitVec 32) List!20837) Bool)

(assert (=> b!985650 (= lt!437332 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20834))))

(declare-fun mapIsEmpty!36620 () Bool)

(assert (=> mapIsEmpty!36620 mapRes!36620))

(assert (= (and start!84286 res!659669) b!985645))

(assert (= (and b!985645 res!659670) b!985647))

(assert (= (and b!985647 res!659668) b!985650))

(assert (= (and b!985646 condMapEmpty!36620) mapIsEmpty!36620))

(assert (= (and b!985646 (not condMapEmpty!36620)) mapNonEmpty!36620))

(get-info :version)

(assert (= (and mapNonEmpty!36620 ((_ is ValueCellFull!11049) mapValue!36620)) b!985648))

(assert (= (and b!985646 ((_ is ValueCellFull!11049) mapDefault!36620)) b!985649))

(assert (= start!84286 b!985646))

(declare-fun m!912803 () Bool)

(assert (=> mapNonEmpty!36620 m!912803))

(declare-fun m!912805 () Bool)

(assert (=> b!985647 m!912805))

(declare-fun m!912807 () Bool)

(assert (=> start!84286 m!912807))

(declare-fun m!912809 () Bool)

(assert (=> start!84286 m!912809))

(declare-fun m!912811 () Bool)

(assert (=> start!84286 m!912811))

(declare-fun m!912813 () Bool)

(assert (=> b!985650 m!912813))

(check-sat tp_is_empty!23061 (not b!985650) (not mapNonEmpty!36620) (not start!84286) (not b!985647))
(check-sat)
