; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72736 () Bool)

(assert start!72736)

(declare-fun b!843749 () Bool)

(declare-fun res!573435 () Bool)

(declare-fun e!470879 () Bool)

(assert (=> b!843749 (=> (not res!573435) (not e!470879))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47744 0))(
  ( (array!47745 (arr!22899 (Array (_ BitVec 32) (_ BitVec 64))) (size!23340 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47744)

(declare-datatypes ((V!26059 0))(
  ( (V!26060 (val!7927 Int)) )
))
(declare-datatypes ((ValueCell!7440 0))(
  ( (ValueCellFull!7440 (v!10348 V!26059)) (EmptyCell!7440) )
))
(declare-datatypes ((array!47746 0))(
  ( (array!47747 (arr!22900 (Array (_ BitVec 32) ValueCell!7440)) (size!23341 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47746)

(assert (=> b!843749 (= res!573435 (and (= (size!23341 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23340 _keys!868) (size!23341 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25238 () Bool)

(declare-fun mapRes!25238 () Bool)

(assert (=> mapIsEmpty!25238 mapRes!25238))

(declare-fun b!843750 () Bool)

(declare-fun e!470877 () Bool)

(declare-fun tp_is_empty!15759 () Bool)

(assert (=> b!843750 (= e!470877 tp_is_empty!15759)))

(declare-fun b!843751 () Bool)

(declare-fun e!470878 () Bool)

(assert (=> b!843751 (= e!470878 (and e!470877 mapRes!25238))))

(declare-fun condMapEmpty!25238 () Bool)

(declare-fun mapDefault!25238 () ValueCell!7440)

(assert (=> b!843751 (= condMapEmpty!25238 (= (arr!22900 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7440)) mapDefault!25238)))))

(declare-fun b!843752 () Bool)

(declare-fun res!573436 () Bool)

(assert (=> b!843752 (=> (not res!573436) (not e!470879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47744 (_ BitVec 32)) Bool)

(assert (=> b!843752 (= res!573436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25238 () Bool)

(declare-fun tp!48557 () Bool)

(declare-fun e!470880 () Bool)

(assert (=> mapNonEmpty!25238 (= mapRes!25238 (and tp!48557 e!470880))))

(declare-fun mapValue!25238 () ValueCell!7440)

(declare-fun mapRest!25238 () (Array (_ BitVec 32) ValueCell!7440))

(declare-fun mapKey!25238 () (_ BitVec 32))

(assert (=> mapNonEmpty!25238 (= (arr!22900 _values!688) (store mapRest!25238 mapKey!25238 mapValue!25238))))

(declare-fun b!843753 () Bool)

(assert (=> b!843753 (= e!470880 tp_is_empty!15759)))

(declare-fun res!573437 () Bool)

(assert (=> start!72736 (=> (not res!573437) (not e!470879))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72736 (= res!573437 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23340 _keys!868))))))

(assert (=> start!72736 e!470879))

(assert (=> start!72736 true))

(declare-fun array_inv!18196 (array!47744) Bool)

(assert (=> start!72736 (array_inv!18196 _keys!868)))

(declare-fun array_inv!18197 (array!47746) Bool)

(assert (=> start!72736 (and (array_inv!18197 _values!688) e!470878)))

(declare-fun b!843754 () Bool)

(assert (=> b!843754 (= e!470879 false)))

(declare-fun lt!381150 () Bool)

(declare-datatypes ((List!16322 0))(
  ( (Nil!16319) (Cons!16318 (h!17449 (_ BitVec 64)) (t!22701 List!16322)) )
))
(declare-fun arrayNoDuplicates!0 (array!47744 (_ BitVec 32) List!16322) Bool)

(assert (=> b!843754 (= lt!381150 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16319))))

(declare-fun b!843755 () Bool)

(declare-fun res!573438 () Bool)

(assert (=> b!843755 (=> (not res!573438) (not e!470879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843755 (= res!573438 (validMask!0 mask!1196))))

(assert (= (and start!72736 res!573437) b!843755))

(assert (= (and b!843755 res!573438) b!843749))

(assert (= (and b!843749 res!573435) b!843752))

(assert (= (and b!843752 res!573436) b!843754))

(assert (= (and b!843751 condMapEmpty!25238) mapIsEmpty!25238))

(assert (= (and b!843751 (not condMapEmpty!25238)) mapNonEmpty!25238))

(get-info :version)

(assert (= (and mapNonEmpty!25238 ((_ is ValueCellFull!7440) mapValue!25238)) b!843753))

(assert (= (and b!843751 ((_ is ValueCellFull!7440) mapDefault!25238)) b!843750))

(assert (= start!72736 b!843751))

(declare-fun m!786341 () Bool)

(assert (=> b!843755 m!786341))

(declare-fun m!786343 () Bool)

(assert (=> start!72736 m!786343))

(declare-fun m!786345 () Bool)

(assert (=> start!72736 m!786345))

(declare-fun m!786347 () Bool)

(assert (=> b!843752 m!786347))

(declare-fun m!786349 () Bool)

(assert (=> mapNonEmpty!25238 m!786349))

(declare-fun m!786351 () Bool)

(assert (=> b!843754 m!786351))

(check-sat (not b!843752) (not b!843755) (not mapNonEmpty!25238) (not b!843754) tp_is_empty!15759 (not start!72736))
(check-sat)
