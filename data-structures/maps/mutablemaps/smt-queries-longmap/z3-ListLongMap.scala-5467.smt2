; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72616 () Bool)

(assert start!72616)

(declare-fun b!842489 () Bool)

(declare-fun res!572716 () Bool)

(declare-fun e!469977 () Bool)

(assert (=> b!842489 (=> (not res!572716) (not e!469977))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842489 (= res!572716 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25058 () Bool)

(declare-fun mapRes!25058 () Bool)

(declare-fun tp!48377 () Bool)

(declare-fun e!469978 () Bool)

(assert (=> mapNonEmpty!25058 (= mapRes!25058 (and tp!48377 e!469978))))

(declare-datatypes ((V!25899 0))(
  ( (V!25900 (val!7867 Int)) )
))
(declare-datatypes ((ValueCell!7380 0))(
  ( (ValueCellFull!7380 (v!10288 V!25899)) (EmptyCell!7380) )
))
(declare-fun mapValue!25058 () ValueCell!7380)

(declare-fun mapKey!25058 () (_ BitVec 32))

(declare-fun mapRest!25058 () (Array (_ BitVec 32) ValueCell!7380))

(declare-datatypes ((array!47520 0))(
  ( (array!47521 (arr!22787 (Array (_ BitVec 32) ValueCell!7380)) (size!23228 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47520)

(assert (=> mapNonEmpty!25058 (= (arr!22787 _values!688) (store mapRest!25058 mapKey!25058 mapValue!25058))))

(declare-fun b!842490 () Bool)

(declare-fun res!572717 () Bool)

(assert (=> b!842490 (=> (not res!572717) (not e!469977))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47522 0))(
  ( (array!47523 (arr!22788 (Array (_ BitVec 32) (_ BitVec 64))) (size!23229 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47522)

(assert (=> b!842490 (= res!572717 (and (= (size!23228 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23229 _keys!868) (size!23228 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842491 () Bool)

(declare-fun res!572718 () Bool)

(assert (=> b!842491 (=> (not res!572718) (not e!469977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47522 (_ BitVec 32)) Bool)

(assert (=> b!842491 (= res!572718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842492 () Bool)

(declare-fun e!469980 () Bool)

(declare-fun tp_is_empty!15639 () Bool)

(assert (=> b!842492 (= e!469980 tp_is_empty!15639)))

(declare-fun mapIsEmpty!25058 () Bool)

(assert (=> mapIsEmpty!25058 mapRes!25058))

(declare-fun b!842493 () Bool)

(declare-fun e!469979 () Bool)

(assert (=> b!842493 (= e!469979 (and e!469980 mapRes!25058))))

(declare-fun condMapEmpty!25058 () Bool)

(declare-fun mapDefault!25058 () ValueCell!7380)

(assert (=> b!842493 (= condMapEmpty!25058 (= (arr!22787 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7380)) mapDefault!25058)))))

(declare-fun b!842494 () Bool)

(assert (=> b!842494 (= e!469978 tp_is_empty!15639)))

(declare-fun res!572715 () Bool)

(assert (=> start!72616 (=> (not res!572715) (not e!469977))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72616 (= res!572715 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23229 _keys!868))))))

(assert (=> start!72616 e!469977))

(assert (=> start!72616 true))

(declare-fun array_inv!18114 (array!47522) Bool)

(assert (=> start!72616 (array_inv!18114 _keys!868)))

(declare-fun array_inv!18115 (array!47520) Bool)

(assert (=> start!72616 (and (array_inv!18115 _values!688) e!469979)))

(declare-fun b!842495 () Bool)

(assert (=> b!842495 (= e!469977 false)))

(declare-fun lt!380970 () Bool)

(declare-datatypes ((List!16278 0))(
  ( (Nil!16275) (Cons!16274 (h!17405 (_ BitVec 64)) (t!22657 List!16278)) )
))
(declare-fun arrayNoDuplicates!0 (array!47522 (_ BitVec 32) List!16278) Bool)

(assert (=> b!842495 (= lt!380970 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16275))))

(assert (= (and start!72616 res!572715) b!842489))

(assert (= (and b!842489 res!572716) b!842490))

(assert (= (and b!842490 res!572717) b!842491))

(assert (= (and b!842491 res!572718) b!842495))

(assert (= (and b!842493 condMapEmpty!25058) mapIsEmpty!25058))

(assert (= (and b!842493 (not condMapEmpty!25058)) mapNonEmpty!25058))

(get-info :version)

(assert (= (and mapNonEmpty!25058 ((_ is ValueCellFull!7380) mapValue!25058)) b!842494))

(assert (= (and b!842493 ((_ is ValueCellFull!7380) mapDefault!25058)) b!842492))

(assert (= start!72616 b!842493))

(declare-fun m!785621 () Bool)

(assert (=> start!72616 m!785621))

(declare-fun m!785623 () Bool)

(assert (=> start!72616 m!785623))

(declare-fun m!785625 () Bool)

(assert (=> b!842489 m!785625))

(declare-fun m!785627 () Bool)

(assert (=> mapNonEmpty!25058 m!785627))

(declare-fun m!785629 () Bool)

(assert (=> b!842491 m!785629))

(declare-fun m!785631 () Bool)

(assert (=> b!842495 m!785631))

(check-sat tp_is_empty!15639 (not b!842491) (not start!72616) (not mapNonEmpty!25058) (not b!842495) (not b!842489))
(check-sat)
