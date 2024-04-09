; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72682 () Bool)

(assert start!72682)

(declare-fun b!843182 () Bool)

(declare-fun res!573111 () Bool)

(declare-fun e!470473 () Bool)

(assert (=> b!843182 (=> (not res!573111) (not e!470473))))

(declare-datatypes ((array!47644 0))(
  ( (array!47645 (arr!22849 (Array (_ BitVec 32) (_ BitVec 64))) (size!23290 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47644)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47644 (_ BitVec 32)) Bool)

(assert (=> b!843182 (= res!573111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25157 () Bool)

(declare-fun mapRes!25157 () Bool)

(declare-fun tp!48476 () Bool)

(declare-fun e!470472 () Bool)

(assert (=> mapNonEmpty!25157 (= mapRes!25157 (and tp!48476 e!470472))))

(declare-fun mapKey!25157 () (_ BitVec 32))

(declare-datatypes ((V!25987 0))(
  ( (V!25988 (val!7900 Int)) )
))
(declare-datatypes ((ValueCell!7413 0))(
  ( (ValueCellFull!7413 (v!10321 V!25987)) (EmptyCell!7413) )
))
(declare-fun mapValue!25157 () ValueCell!7413)

(declare-fun mapRest!25157 () (Array (_ BitVec 32) ValueCell!7413))

(declare-datatypes ((array!47646 0))(
  ( (array!47647 (arr!22850 (Array (_ BitVec 32) ValueCell!7413)) (size!23291 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47646)

(assert (=> mapNonEmpty!25157 (= (arr!22850 _values!688) (store mapRest!25157 mapKey!25157 mapValue!25157))))

(declare-fun mapIsEmpty!25157 () Bool)

(assert (=> mapIsEmpty!25157 mapRes!25157))

(declare-fun b!843183 () Bool)

(declare-fun res!573112 () Bool)

(assert (=> b!843183 (=> (not res!573112) (not e!470473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843183 (= res!573112 (validMask!0 mask!1196))))

(declare-fun b!843185 () Bool)

(declare-fun e!470471 () Bool)

(declare-fun e!470475 () Bool)

(assert (=> b!843185 (= e!470471 (and e!470475 mapRes!25157))))

(declare-fun condMapEmpty!25157 () Bool)

(declare-fun mapDefault!25157 () ValueCell!7413)

(assert (=> b!843185 (= condMapEmpty!25157 (= (arr!22850 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7413)) mapDefault!25157)))))

(declare-fun b!843186 () Bool)

(declare-fun tp_is_empty!15705 () Bool)

(assert (=> b!843186 (= e!470472 tp_is_empty!15705)))

(declare-fun b!843187 () Bool)

(declare-fun res!573113 () Bool)

(assert (=> b!843187 (=> (not res!573113) (not e!470473))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843187 (= res!573113 (and (= (size!23291 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23290 _keys!868) (size!23291 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843188 () Bool)

(assert (=> b!843188 (= e!470473 false)))

(declare-fun lt!381069 () Bool)

(declare-datatypes ((List!16299 0))(
  ( (Nil!16296) (Cons!16295 (h!17426 (_ BitVec 64)) (t!22678 List!16299)) )
))
(declare-fun arrayNoDuplicates!0 (array!47644 (_ BitVec 32) List!16299) Bool)

(assert (=> b!843188 (= lt!381069 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16296))))

(declare-fun b!843184 () Bool)

(assert (=> b!843184 (= e!470475 tp_is_empty!15705)))

(declare-fun res!573114 () Bool)

(assert (=> start!72682 (=> (not res!573114) (not e!470473))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72682 (= res!573114 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23290 _keys!868))))))

(assert (=> start!72682 e!470473))

(assert (=> start!72682 true))

(declare-fun array_inv!18162 (array!47644) Bool)

(assert (=> start!72682 (array_inv!18162 _keys!868)))

(declare-fun array_inv!18163 (array!47646) Bool)

(assert (=> start!72682 (and (array_inv!18163 _values!688) e!470471)))

(assert (= (and start!72682 res!573114) b!843183))

(assert (= (and b!843183 res!573112) b!843187))

(assert (= (and b!843187 res!573113) b!843182))

(assert (= (and b!843182 res!573111) b!843188))

(assert (= (and b!843185 condMapEmpty!25157) mapIsEmpty!25157))

(assert (= (and b!843185 (not condMapEmpty!25157)) mapNonEmpty!25157))

(get-info :version)

(assert (= (and mapNonEmpty!25157 ((_ is ValueCellFull!7413) mapValue!25157)) b!843186))

(assert (= (and b!843185 ((_ is ValueCellFull!7413) mapDefault!25157)) b!843184))

(assert (= start!72682 b!843185))

(declare-fun m!786017 () Bool)

(assert (=> mapNonEmpty!25157 m!786017))

(declare-fun m!786019 () Bool)

(assert (=> b!843182 m!786019))

(declare-fun m!786021 () Bool)

(assert (=> b!843188 m!786021))

(declare-fun m!786023 () Bool)

(assert (=> start!72682 m!786023))

(declare-fun m!786025 () Bool)

(assert (=> start!72682 m!786025))

(declare-fun m!786027 () Bool)

(assert (=> b!843183 m!786027))

(check-sat (not b!843182) (not mapNonEmpty!25157) (not start!72682) tp_is_empty!15705 (not b!843183) (not b!843188))
(check-sat)
