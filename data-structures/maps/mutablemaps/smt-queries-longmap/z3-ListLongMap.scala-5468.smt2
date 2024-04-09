; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72622 () Bool)

(assert start!72622)

(declare-fun b!842552 () Bool)

(declare-fun e!470021 () Bool)

(assert (=> b!842552 (= e!470021 false)))

(declare-fun lt!380979 () Bool)

(declare-datatypes ((array!47532 0))(
  ( (array!47533 (arr!22793 (Array (_ BitVec 32) (_ BitVec 64))) (size!23234 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47532)

(declare-datatypes ((List!16280 0))(
  ( (Nil!16277) (Cons!16276 (h!17407 (_ BitVec 64)) (t!22659 List!16280)) )
))
(declare-fun arrayNoDuplicates!0 (array!47532 (_ BitVec 32) List!16280) Bool)

(assert (=> b!842552 (= lt!380979 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16277))))

(declare-fun res!572754 () Bool)

(assert (=> start!72622 (=> (not res!572754) (not e!470021))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72622 (= res!572754 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23234 _keys!868))))))

(assert (=> start!72622 e!470021))

(assert (=> start!72622 true))

(declare-fun array_inv!18118 (array!47532) Bool)

(assert (=> start!72622 (array_inv!18118 _keys!868)))

(declare-datatypes ((V!25907 0))(
  ( (V!25908 (val!7870 Int)) )
))
(declare-datatypes ((ValueCell!7383 0))(
  ( (ValueCellFull!7383 (v!10291 V!25907)) (EmptyCell!7383) )
))
(declare-datatypes ((array!47534 0))(
  ( (array!47535 (arr!22794 (Array (_ BitVec 32) ValueCell!7383)) (size!23235 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47534)

(declare-fun e!470024 () Bool)

(declare-fun array_inv!18119 (array!47534) Bool)

(assert (=> start!72622 (and (array_inv!18119 _values!688) e!470024)))

(declare-fun b!842553 () Bool)

(declare-fun e!470025 () Bool)

(declare-fun tp_is_empty!15645 () Bool)

(assert (=> b!842553 (= e!470025 tp_is_empty!15645)))

(declare-fun b!842554 () Bool)

(declare-fun e!470023 () Bool)

(assert (=> b!842554 (= e!470023 tp_is_empty!15645)))

(declare-fun mapIsEmpty!25067 () Bool)

(declare-fun mapRes!25067 () Bool)

(assert (=> mapIsEmpty!25067 mapRes!25067))

(declare-fun mapNonEmpty!25067 () Bool)

(declare-fun tp!48386 () Bool)

(assert (=> mapNonEmpty!25067 (= mapRes!25067 (and tp!48386 e!470025))))

(declare-fun mapKey!25067 () (_ BitVec 32))

(declare-fun mapRest!25067 () (Array (_ BitVec 32) ValueCell!7383))

(declare-fun mapValue!25067 () ValueCell!7383)

(assert (=> mapNonEmpty!25067 (= (arr!22794 _values!688) (store mapRest!25067 mapKey!25067 mapValue!25067))))

(declare-fun b!842555 () Bool)

(declare-fun res!572751 () Bool)

(assert (=> b!842555 (=> (not res!572751) (not e!470021))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842555 (= res!572751 (and (= (size!23235 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23234 _keys!868) (size!23235 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842556 () Bool)

(declare-fun res!572752 () Bool)

(assert (=> b!842556 (=> (not res!572752) (not e!470021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842556 (= res!572752 (validMask!0 mask!1196))))

(declare-fun b!842557 () Bool)

(declare-fun res!572753 () Bool)

(assert (=> b!842557 (=> (not res!572753) (not e!470021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47532 (_ BitVec 32)) Bool)

(assert (=> b!842557 (= res!572753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842558 () Bool)

(assert (=> b!842558 (= e!470024 (and e!470023 mapRes!25067))))

(declare-fun condMapEmpty!25067 () Bool)

(declare-fun mapDefault!25067 () ValueCell!7383)

(assert (=> b!842558 (= condMapEmpty!25067 (= (arr!22794 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7383)) mapDefault!25067)))))

(assert (= (and start!72622 res!572754) b!842556))

(assert (= (and b!842556 res!572752) b!842555))

(assert (= (and b!842555 res!572751) b!842557))

(assert (= (and b!842557 res!572753) b!842552))

(assert (= (and b!842558 condMapEmpty!25067) mapIsEmpty!25067))

(assert (= (and b!842558 (not condMapEmpty!25067)) mapNonEmpty!25067))

(get-info :version)

(assert (= (and mapNonEmpty!25067 ((_ is ValueCellFull!7383) mapValue!25067)) b!842553))

(assert (= (and b!842558 ((_ is ValueCellFull!7383) mapDefault!25067)) b!842554))

(assert (= start!72622 b!842558))

(declare-fun m!785657 () Bool)

(assert (=> b!842556 m!785657))

(declare-fun m!785659 () Bool)

(assert (=> start!72622 m!785659))

(declare-fun m!785661 () Bool)

(assert (=> start!72622 m!785661))

(declare-fun m!785663 () Bool)

(assert (=> b!842552 m!785663))

(declare-fun m!785665 () Bool)

(assert (=> b!842557 m!785665))

(declare-fun m!785667 () Bool)

(assert (=> mapNonEmpty!25067 m!785667))

(check-sat (not mapNonEmpty!25067) (not start!72622) (not b!842557) (not b!842556) (not b!842552) tp_is_empty!15645)
(check-sat)
