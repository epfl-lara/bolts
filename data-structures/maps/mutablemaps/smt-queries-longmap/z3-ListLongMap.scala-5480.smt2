; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72694 () Bool)

(assert start!72694)

(declare-fun b!843308 () Bool)

(declare-fun e!470564 () Bool)

(declare-fun e!470563 () Bool)

(declare-fun mapRes!25175 () Bool)

(assert (=> b!843308 (= e!470564 (and e!470563 mapRes!25175))))

(declare-fun condMapEmpty!25175 () Bool)

(declare-datatypes ((V!26003 0))(
  ( (V!26004 (val!7906 Int)) )
))
(declare-datatypes ((ValueCell!7419 0))(
  ( (ValueCellFull!7419 (v!10327 V!26003)) (EmptyCell!7419) )
))
(declare-datatypes ((array!47668 0))(
  ( (array!47669 (arr!22861 (Array (_ BitVec 32) ValueCell!7419)) (size!23302 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47668)

(declare-fun mapDefault!25175 () ValueCell!7419)

(assert (=> b!843308 (= condMapEmpty!25175 (= (arr!22861 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7419)) mapDefault!25175)))))

(declare-fun b!843309 () Bool)

(declare-fun tp_is_empty!15717 () Bool)

(assert (=> b!843309 (= e!470563 tp_is_empty!15717)))

(declare-fun mapIsEmpty!25175 () Bool)

(assert (=> mapIsEmpty!25175 mapRes!25175))

(declare-fun b!843310 () Bool)

(declare-fun res!573186 () Bool)

(declare-fun e!470561 () Bool)

(assert (=> b!843310 (=> (not res!573186) (not e!470561))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843310 (= res!573186 (validMask!0 mask!1196))))

(declare-fun b!843311 () Bool)

(assert (=> b!843311 (= e!470561 false)))

(declare-fun lt!381087 () Bool)

(declare-datatypes ((array!47670 0))(
  ( (array!47671 (arr!22862 (Array (_ BitVec 32) (_ BitVec 64))) (size!23303 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47670)

(declare-datatypes ((List!16305 0))(
  ( (Nil!16302) (Cons!16301 (h!17432 (_ BitVec 64)) (t!22684 List!16305)) )
))
(declare-fun arrayNoDuplicates!0 (array!47670 (_ BitVec 32) List!16305) Bool)

(assert (=> b!843311 (= lt!381087 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16302))))

(declare-fun b!843312 () Bool)

(declare-fun res!573185 () Bool)

(assert (=> b!843312 (=> (not res!573185) (not e!470561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47670 (_ BitVec 32)) Bool)

(assert (=> b!843312 (= res!573185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843313 () Bool)

(declare-fun res!573183 () Bool)

(assert (=> b!843313 (=> (not res!573183) (not e!470561))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843313 (= res!573183 (and (= (size!23302 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23303 _keys!868) (size!23302 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!573184 () Bool)

(assert (=> start!72694 (=> (not res!573184) (not e!470561))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72694 (= res!573184 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23303 _keys!868))))))

(assert (=> start!72694 e!470561))

(assert (=> start!72694 true))

(declare-fun array_inv!18172 (array!47670) Bool)

(assert (=> start!72694 (array_inv!18172 _keys!868)))

(declare-fun array_inv!18173 (array!47668) Bool)

(assert (=> start!72694 (and (array_inv!18173 _values!688) e!470564)))

(declare-fun mapNonEmpty!25175 () Bool)

(declare-fun tp!48494 () Bool)

(declare-fun e!470562 () Bool)

(assert (=> mapNonEmpty!25175 (= mapRes!25175 (and tp!48494 e!470562))))

(declare-fun mapRest!25175 () (Array (_ BitVec 32) ValueCell!7419))

(declare-fun mapKey!25175 () (_ BitVec 32))

(declare-fun mapValue!25175 () ValueCell!7419)

(assert (=> mapNonEmpty!25175 (= (arr!22861 _values!688) (store mapRest!25175 mapKey!25175 mapValue!25175))))

(declare-fun b!843314 () Bool)

(assert (=> b!843314 (= e!470562 tp_is_empty!15717)))

(assert (= (and start!72694 res!573184) b!843310))

(assert (= (and b!843310 res!573186) b!843313))

(assert (= (and b!843313 res!573183) b!843312))

(assert (= (and b!843312 res!573185) b!843311))

(assert (= (and b!843308 condMapEmpty!25175) mapIsEmpty!25175))

(assert (= (and b!843308 (not condMapEmpty!25175)) mapNonEmpty!25175))

(get-info :version)

(assert (= (and mapNonEmpty!25175 ((_ is ValueCellFull!7419) mapValue!25175)) b!843314))

(assert (= (and b!843308 ((_ is ValueCellFull!7419) mapDefault!25175)) b!843309))

(assert (= start!72694 b!843308))

(declare-fun m!786089 () Bool)

(assert (=> b!843310 m!786089))

(declare-fun m!786091 () Bool)

(assert (=> b!843312 m!786091))

(declare-fun m!786093 () Bool)

(assert (=> start!72694 m!786093))

(declare-fun m!786095 () Bool)

(assert (=> start!72694 m!786095))

(declare-fun m!786097 () Bool)

(assert (=> b!843311 m!786097))

(declare-fun m!786099 () Bool)

(assert (=> mapNonEmpty!25175 m!786099))

(check-sat tp_is_empty!15717 (not start!72694) (not b!843311) (not b!843312) (not b!843310) (not mapNonEmpty!25175))
(check-sat)
