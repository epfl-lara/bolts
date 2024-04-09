; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72700 () Bool)

(assert start!72700)

(declare-fun res!573222 () Bool)

(declare-fun e!470607 () Bool)

(assert (=> start!72700 (=> (not res!573222) (not e!470607))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47678 0))(
  ( (array!47679 (arr!22866 (Array (_ BitVec 32) (_ BitVec 64))) (size!23307 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47678)

(assert (=> start!72700 (= res!573222 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23307 _keys!868))))))

(assert (=> start!72700 e!470607))

(assert (=> start!72700 true))

(declare-fun array_inv!18176 (array!47678) Bool)

(assert (=> start!72700 (array_inv!18176 _keys!868)))

(declare-datatypes ((V!26011 0))(
  ( (V!26012 (val!7909 Int)) )
))
(declare-datatypes ((ValueCell!7422 0))(
  ( (ValueCellFull!7422 (v!10330 V!26011)) (EmptyCell!7422) )
))
(declare-datatypes ((array!47680 0))(
  ( (array!47681 (arr!22867 (Array (_ BitVec 32) ValueCell!7422)) (size!23308 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47680)

(declare-fun e!470609 () Bool)

(declare-fun array_inv!18177 (array!47680) Bool)

(assert (=> start!72700 (and (array_inv!18177 _values!688) e!470609)))

(declare-fun b!843371 () Bool)

(declare-fun res!573219 () Bool)

(assert (=> b!843371 (=> (not res!573219) (not e!470607))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843371 (= res!573219 (and (= (size!23308 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23307 _keys!868) (size!23308 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843372 () Bool)

(declare-fun res!573221 () Bool)

(assert (=> b!843372 (=> (not res!573221) (not e!470607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843372 (= res!573221 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25184 () Bool)

(declare-fun mapRes!25184 () Bool)

(declare-fun tp!48503 () Bool)

(declare-fun e!470608 () Bool)

(assert (=> mapNonEmpty!25184 (= mapRes!25184 (and tp!48503 e!470608))))

(declare-fun mapValue!25184 () ValueCell!7422)

(declare-fun mapRest!25184 () (Array (_ BitVec 32) ValueCell!7422))

(declare-fun mapKey!25184 () (_ BitVec 32))

(assert (=> mapNonEmpty!25184 (= (arr!22867 _values!688) (store mapRest!25184 mapKey!25184 mapValue!25184))))

(declare-fun b!843373 () Bool)

(declare-fun res!573220 () Bool)

(assert (=> b!843373 (=> (not res!573220) (not e!470607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47678 (_ BitVec 32)) Bool)

(assert (=> b!843373 (= res!573220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843374 () Bool)

(declare-fun tp_is_empty!15723 () Bool)

(assert (=> b!843374 (= e!470608 tp_is_empty!15723)))

(declare-fun mapIsEmpty!25184 () Bool)

(assert (=> mapIsEmpty!25184 mapRes!25184))

(declare-fun b!843375 () Bool)

(declare-fun e!470610 () Bool)

(assert (=> b!843375 (= e!470609 (and e!470610 mapRes!25184))))

(declare-fun condMapEmpty!25184 () Bool)

(declare-fun mapDefault!25184 () ValueCell!7422)

(assert (=> b!843375 (= condMapEmpty!25184 (= (arr!22867 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7422)) mapDefault!25184)))))

(declare-fun b!843376 () Bool)

(assert (=> b!843376 (= e!470607 false)))

(declare-fun lt!381096 () Bool)

(declare-datatypes ((List!16307 0))(
  ( (Nil!16304) (Cons!16303 (h!17434 (_ BitVec 64)) (t!22686 List!16307)) )
))
(declare-fun arrayNoDuplicates!0 (array!47678 (_ BitVec 32) List!16307) Bool)

(assert (=> b!843376 (= lt!381096 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16304))))

(declare-fun b!843377 () Bool)

(assert (=> b!843377 (= e!470610 tp_is_empty!15723)))

(assert (= (and start!72700 res!573222) b!843372))

(assert (= (and b!843372 res!573221) b!843371))

(assert (= (and b!843371 res!573219) b!843373))

(assert (= (and b!843373 res!573220) b!843376))

(assert (= (and b!843375 condMapEmpty!25184) mapIsEmpty!25184))

(assert (= (and b!843375 (not condMapEmpty!25184)) mapNonEmpty!25184))

(get-info :version)

(assert (= (and mapNonEmpty!25184 ((_ is ValueCellFull!7422) mapValue!25184)) b!843374))

(assert (= (and b!843375 ((_ is ValueCellFull!7422) mapDefault!25184)) b!843377))

(assert (= start!72700 b!843375))

(declare-fun m!786125 () Bool)

(assert (=> start!72700 m!786125))

(declare-fun m!786127 () Bool)

(assert (=> start!72700 m!786127))

(declare-fun m!786129 () Bool)

(assert (=> mapNonEmpty!25184 m!786129))

(declare-fun m!786131 () Bool)

(assert (=> b!843373 m!786131))

(declare-fun m!786133 () Bool)

(assert (=> b!843376 m!786133))

(declare-fun m!786135 () Bool)

(assert (=> b!843372 m!786135))

(check-sat (not start!72700) tp_is_empty!15723 (not mapNonEmpty!25184) (not b!843372) (not b!843373) (not b!843376))
(check-sat)
