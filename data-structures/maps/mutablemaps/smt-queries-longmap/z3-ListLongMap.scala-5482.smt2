; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72706 () Bool)

(assert start!72706)

(declare-fun res!573257 () Bool)

(declare-fun e!470654 () Bool)

(assert (=> start!72706 (=> (not res!573257) (not e!470654))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47688 0))(
  ( (array!47689 (arr!22871 (Array (_ BitVec 32) (_ BitVec 64))) (size!23312 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47688)

(assert (=> start!72706 (= res!573257 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23312 _keys!868))))))

(assert (=> start!72706 e!470654))

(assert (=> start!72706 true))

(declare-fun array_inv!18178 (array!47688) Bool)

(assert (=> start!72706 (array_inv!18178 _keys!868)))

(declare-datatypes ((V!26019 0))(
  ( (V!26020 (val!7912 Int)) )
))
(declare-datatypes ((ValueCell!7425 0))(
  ( (ValueCellFull!7425 (v!10333 V!26019)) (EmptyCell!7425) )
))
(declare-datatypes ((array!47690 0))(
  ( (array!47691 (arr!22872 (Array (_ BitVec 32) ValueCell!7425)) (size!23313 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47690)

(declare-fun e!470652 () Bool)

(declare-fun array_inv!18179 (array!47690) Bool)

(assert (=> start!72706 (and (array_inv!18179 _values!688) e!470652)))

(declare-fun b!843434 () Bool)

(declare-fun res!573258 () Bool)

(assert (=> b!843434 (=> (not res!573258) (not e!470654))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47688 (_ BitVec 32)) Bool)

(assert (=> b!843434 (= res!573258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843435 () Bool)

(declare-fun res!573255 () Bool)

(assert (=> b!843435 (=> (not res!573255) (not e!470654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843435 (= res!573255 (validMask!0 mask!1196))))

(declare-fun b!843436 () Bool)

(declare-fun e!470651 () Bool)

(declare-fun tp_is_empty!15729 () Bool)

(assert (=> b!843436 (= e!470651 tp_is_empty!15729)))

(declare-fun b!843437 () Bool)

(declare-fun e!470653 () Bool)

(declare-fun mapRes!25193 () Bool)

(assert (=> b!843437 (= e!470652 (and e!470653 mapRes!25193))))

(declare-fun condMapEmpty!25193 () Bool)

(declare-fun mapDefault!25193 () ValueCell!7425)

(assert (=> b!843437 (= condMapEmpty!25193 (= (arr!22872 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7425)) mapDefault!25193)))))

(declare-fun mapIsEmpty!25193 () Bool)

(assert (=> mapIsEmpty!25193 mapRes!25193))

(declare-fun b!843438 () Bool)

(declare-fun res!573256 () Bool)

(assert (=> b!843438 (=> (not res!573256) (not e!470654))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843438 (= res!573256 (and (= (size!23313 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23312 _keys!868) (size!23313 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25193 () Bool)

(declare-fun tp!48512 () Bool)

(assert (=> mapNonEmpty!25193 (= mapRes!25193 (and tp!48512 e!470651))))

(declare-fun mapRest!25193 () (Array (_ BitVec 32) ValueCell!7425))

(declare-fun mapValue!25193 () ValueCell!7425)

(declare-fun mapKey!25193 () (_ BitVec 32))

(assert (=> mapNonEmpty!25193 (= (arr!22872 _values!688) (store mapRest!25193 mapKey!25193 mapValue!25193))))

(declare-fun b!843439 () Bool)

(assert (=> b!843439 (= e!470653 tp_is_empty!15729)))

(declare-fun b!843440 () Bool)

(assert (=> b!843440 (= e!470654 false)))

(declare-fun lt!381105 () Bool)

(declare-datatypes ((List!16309 0))(
  ( (Nil!16306) (Cons!16305 (h!17436 (_ BitVec 64)) (t!22688 List!16309)) )
))
(declare-fun arrayNoDuplicates!0 (array!47688 (_ BitVec 32) List!16309) Bool)

(assert (=> b!843440 (= lt!381105 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16306))))

(assert (= (and start!72706 res!573257) b!843435))

(assert (= (and b!843435 res!573255) b!843438))

(assert (= (and b!843438 res!573256) b!843434))

(assert (= (and b!843434 res!573258) b!843440))

(assert (= (and b!843437 condMapEmpty!25193) mapIsEmpty!25193))

(assert (= (and b!843437 (not condMapEmpty!25193)) mapNonEmpty!25193))

(get-info :version)

(assert (= (and mapNonEmpty!25193 ((_ is ValueCellFull!7425) mapValue!25193)) b!843436))

(assert (= (and b!843437 ((_ is ValueCellFull!7425) mapDefault!25193)) b!843439))

(assert (= start!72706 b!843437))

(declare-fun m!786161 () Bool)

(assert (=> start!72706 m!786161))

(declare-fun m!786163 () Bool)

(assert (=> start!72706 m!786163))

(declare-fun m!786165 () Bool)

(assert (=> b!843440 m!786165))

(declare-fun m!786167 () Bool)

(assert (=> mapNonEmpty!25193 m!786167))

(declare-fun m!786169 () Bool)

(assert (=> b!843434 m!786169))

(declare-fun m!786171 () Bool)

(assert (=> b!843435 m!786171))

(check-sat (not b!843435) tp_is_empty!15729 (not start!72706) (not mapNonEmpty!25193) (not b!843440) (not b!843434))
(check-sat)
