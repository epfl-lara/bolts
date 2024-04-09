; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72808 () Bool)

(assert start!72808)

(declare-fun res!573870 () Bool)

(declare-fun e!471418 () Bool)

(assert (=> start!72808 (=> (not res!573870) (not e!471418))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47878 0))(
  ( (array!47879 (arr!22966 (Array (_ BitVec 32) (_ BitVec 64))) (size!23407 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47878)

(assert (=> start!72808 (= res!573870 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23407 _keys!868))))))

(assert (=> start!72808 e!471418))

(assert (=> start!72808 true))

(declare-fun array_inv!18244 (array!47878) Bool)

(assert (=> start!72808 (array_inv!18244 _keys!868)))

(declare-datatypes ((V!26155 0))(
  ( (V!26156 (val!7963 Int)) )
))
(declare-datatypes ((ValueCell!7476 0))(
  ( (ValueCellFull!7476 (v!10384 V!26155)) (EmptyCell!7476) )
))
(declare-datatypes ((array!47880 0))(
  ( (array!47881 (arr!22967 (Array (_ BitVec 32) ValueCell!7476)) (size!23408 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47880)

(declare-fun e!471417 () Bool)

(declare-fun array_inv!18245 (array!47880) Bool)

(assert (=> start!72808 (and (array_inv!18245 _values!688) e!471417)))

(declare-fun b!844505 () Bool)

(declare-fun e!471419 () Bool)

(declare-fun mapRes!25346 () Bool)

(assert (=> b!844505 (= e!471417 (and e!471419 mapRes!25346))))

(declare-fun condMapEmpty!25346 () Bool)

(declare-fun mapDefault!25346 () ValueCell!7476)

(assert (=> b!844505 (= condMapEmpty!25346 (= (arr!22967 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7476)) mapDefault!25346)))))

(declare-fun b!844506 () Bool)

(declare-fun res!573869 () Bool)

(assert (=> b!844506 (=> (not res!573869) (not e!471418))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844506 (= res!573869 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25346 () Bool)

(assert (=> mapIsEmpty!25346 mapRes!25346))

(declare-fun mapNonEmpty!25346 () Bool)

(declare-fun tp!48665 () Bool)

(declare-fun e!471416 () Bool)

(assert (=> mapNonEmpty!25346 (= mapRes!25346 (and tp!48665 e!471416))))

(declare-fun mapKey!25346 () (_ BitVec 32))

(declare-fun mapValue!25346 () ValueCell!7476)

(declare-fun mapRest!25346 () (Array (_ BitVec 32) ValueCell!7476))

(assert (=> mapNonEmpty!25346 (= (arr!22967 _values!688) (store mapRest!25346 mapKey!25346 mapValue!25346))))

(declare-fun b!844507 () Bool)

(declare-fun tp_is_empty!15831 () Bool)

(assert (=> b!844507 (= e!471416 tp_is_empty!15831)))

(declare-fun b!844508 () Bool)

(declare-fun res!573867 () Bool)

(assert (=> b!844508 (=> (not res!573867) (not e!471418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47878 (_ BitVec 32)) Bool)

(assert (=> b!844508 (= res!573867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844509 () Bool)

(declare-fun res!573868 () Bool)

(assert (=> b!844509 (=> (not res!573868) (not e!471418))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844509 (= res!573868 (and (= (size!23408 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23407 _keys!868) (size!23408 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844510 () Bool)

(assert (=> b!844510 (= e!471418 false)))

(declare-fun lt!381258 () Bool)

(declare-datatypes ((List!16347 0))(
  ( (Nil!16344) (Cons!16343 (h!17474 (_ BitVec 64)) (t!22726 List!16347)) )
))
(declare-fun arrayNoDuplicates!0 (array!47878 (_ BitVec 32) List!16347) Bool)

(assert (=> b!844510 (= lt!381258 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16344))))

(declare-fun b!844511 () Bool)

(assert (=> b!844511 (= e!471419 tp_is_empty!15831)))

(assert (= (and start!72808 res!573870) b!844506))

(assert (= (and b!844506 res!573869) b!844509))

(assert (= (and b!844509 res!573868) b!844508))

(assert (= (and b!844508 res!573867) b!844510))

(assert (= (and b!844505 condMapEmpty!25346) mapIsEmpty!25346))

(assert (= (and b!844505 (not condMapEmpty!25346)) mapNonEmpty!25346))

(get-info :version)

(assert (= (and mapNonEmpty!25346 ((_ is ValueCellFull!7476) mapValue!25346)) b!844507))

(assert (= (and b!844505 ((_ is ValueCellFull!7476) mapDefault!25346)) b!844511))

(assert (= start!72808 b!844505))

(declare-fun m!786773 () Bool)

(assert (=> mapNonEmpty!25346 m!786773))

(declare-fun m!786775 () Bool)

(assert (=> start!72808 m!786775))

(declare-fun m!786777 () Bool)

(assert (=> start!72808 m!786777))

(declare-fun m!786779 () Bool)

(assert (=> b!844510 m!786779))

(declare-fun m!786781 () Bool)

(assert (=> b!844506 m!786781))

(declare-fun m!786783 () Bool)

(assert (=> b!844508 m!786783))

(check-sat (not b!844508) (not start!72808) (not b!844510) (not mapNonEmpty!25346) tp_is_empty!15831 (not b!844506))
(check-sat)
