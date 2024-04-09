; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72718 () Bool)

(assert start!72718)

(declare-fun b!843560 () Bool)

(declare-fun res!573330 () Bool)

(declare-fun e!470741 () Bool)

(assert (=> b!843560 (=> (not res!573330) (not e!470741))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843560 (= res!573330 (validMask!0 mask!1196))))

(declare-fun b!843561 () Bool)

(declare-fun e!470742 () Bool)

(declare-fun tp_is_empty!15741 () Bool)

(assert (=> b!843561 (= e!470742 tp_is_empty!15741)))

(declare-fun b!843562 () Bool)

(declare-fun e!470745 () Bool)

(declare-fun mapRes!25211 () Bool)

(assert (=> b!843562 (= e!470745 (and e!470742 mapRes!25211))))

(declare-fun condMapEmpty!25211 () Bool)

(declare-datatypes ((V!26035 0))(
  ( (V!26036 (val!7918 Int)) )
))
(declare-datatypes ((ValueCell!7431 0))(
  ( (ValueCellFull!7431 (v!10339 V!26035)) (EmptyCell!7431) )
))
(declare-datatypes ((array!47710 0))(
  ( (array!47711 (arr!22882 (Array (_ BitVec 32) ValueCell!7431)) (size!23323 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47710)

(declare-fun mapDefault!25211 () ValueCell!7431)

(assert (=> b!843562 (= condMapEmpty!25211 (= (arr!22882 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7431)) mapDefault!25211)))))

(declare-fun b!843563 () Bool)

(declare-fun res!573327 () Bool)

(assert (=> b!843563 (=> (not res!573327) (not e!470741))))

(declare-datatypes ((array!47712 0))(
  ( (array!47713 (arr!22883 (Array (_ BitVec 32) (_ BitVec 64))) (size!23324 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47712)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47712 (_ BitVec 32)) Bool)

(assert (=> b!843563 (= res!573327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843564 () Bool)

(declare-fun res!573328 () Bool)

(assert (=> b!843564 (=> (not res!573328) (not e!470741))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843564 (= res!573328 (and (= (size!23323 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23324 _keys!868) (size!23323 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25211 () Bool)

(declare-fun tp!48530 () Bool)

(declare-fun e!470743 () Bool)

(assert (=> mapNonEmpty!25211 (= mapRes!25211 (and tp!48530 e!470743))))

(declare-fun mapValue!25211 () ValueCell!7431)

(declare-fun mapRest!25211 () (Array (_ BitVec 32) ValueCell!7431))

(declare-fun mapKey!25211 () (_ BitVec 32))

(assert (=> mapNonEmpty!25211 (= (arr!22882 _values!688) (store mapRest!25211 mapKey!25211 mapValue!25211))))

(declare-fun b!843565 () Bool)

(assert (=> b!843565 (= e!470741 false)))

(declare-fun lt!381123 () Bool)

(declare-datatypes ((List!16314 0))(
  ( (Nil!16311) (Cons!16310 (h!17441 (_ BitVec 64)) (t!22693 List!16314)) )
))
(declare-fun arrayNoDuplicates!0 (array!47712 (_ BitVec 32) List!16314) Bool)

(assert (=> b!843565 (= lt!381123 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16311))))

(declare-fun mapIsEmpty!25211 () Bool)

(assert (=> mapIsEmpty!25211 mapRes!25211))

(declare-fun b!843566 () Bool)

(assert (=> b!843566 (= e!470743 tp_is_empty!15741)))

(declare-fun res!573329 () Bool)

(assert (=> start!72718 (=> (not res!573329) (not e!470741))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72718 (= res!573329 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23324 _keys!868))))))

(assert (=> start!72718 e!470741))

(assert (=> start!72718 true))

(declare-fun array_inv!18188 (array!47712) Bool)

(assert (=> start!72718 (array_inv!18188 _keys!868)))

(declare-fun array_inv!18189 (array!47710) Bool)

(assert (=> start!72718 (and (array_inv!18189 _values!688) e!470745)))

(assert (= (and start!72718 res!573329) b!843560))

(assert (= (and b!843560 res!573330) b!843564))

(assert (= (and b!843564 res!573328) b!843563))

(assert (= (and b!843563 res!573327) b!843565))

(assert (= (and b!843562 condMapEmpty!25211) mapIsEmpty!25211))

(assert (= (and b!843562 (not condMapEmpty!25211)) mapNonEmpty!25211))

(get-info :version)

(assert (= (and mapNonEmpty!25211 ((_ is ValueCellFull!7431) mapValue!25211)) b!843566))

(assert (= (and b!843562 ((_ is ValueCellFull!7431) mapDefault!25211)) b!843561))

(assert (= start!72718 b!843562))

(declare-fun m!786233 () Bool)

(assert (=> mapNonEmpty!25211 m!786233))

(declare-fun m!786235 () Bool)

(assert (=> b!843563 m!786235))

(declare-fun m!786237 () Bool)

(assert (=> b!843565 m!786237))

(declare-fun m!786239 () Bool)

(assert (=> b!843560 m!786239))

(declare-fun m!786241 () Bool)

(assert (=> start!72718 m!786241))

(declare-fun m!786243 () Bool)

(assert (=> start!72718 m!786243))

(check-sat (not b!843563) (not mapNonEmpty!25211) (not b!843565) (not start!72718) tp_is_empty!15741 (not b!843560))
(check-sat)
