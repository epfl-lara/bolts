; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72748 () Bool)

(assert start!72748)

(declare-fun mapIsEmpty!25256 () Bool)

(declare-fun mapRes!25256 () Bool)

(assert (=> mapIsEmpty!25256 mapRes!25256))

(declare-fun b!843875 () Bool)

(declare-fun e!470969 () Bool)

(declare-fun tp_is_empty!15771 () Bool)

(assert (=> b!843875 (= e!470969 tp_is_empty!15771)))

(declare-fun mapNonEmpty!25256 () Bool)

(declare-fun tp!48575 () Bool)

(assert (=> mapNonEmpty!25256 (= mapRes!25256 (and tp!48575 e!470969))))

(declare-datatypes ((V!26075 0))(
  ( (V!26076 (val!7933 Int)) )
))
(declare-datatypes ((ValueCell!7446 0))(
  ( (ValueCellFull!7446 (v!10354 V!26075)) (EmptyCell!7446) )
))
(declare-fun mapValue!25256 () ValueCell!7446)

(declare-fun mapKey!25256 () (_ BitVec 32))

(declare-fun mapRest!25256 () (Array (_ BitVec 32) ValueCell!7446))

(declare-datatypes ((array!47766 0))(
  ( (array!47767 (arr!22910 (Array (_ BitVec 32) ValueCell!7446)) (size!23351 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47766)

(assert (=> mapNonEmpty!25256 (= (arr!22910 _values!688) (store mapRest!25256 mapKey!25256 mapValue!25256))))

(declare-fun b!843877 () Bool)

(declare-fun e!470966 () Bool)

(assert (=> b!843877 (= e!470966 tp_is_empty!15771)))

(declare-fun b!843878 () Bool)

(declare-fun e!470970 () Bool)

(assert (=> b!843878 (= e!470970 false)))

(declare-fun lt!381168 () Bool)

(declare-datatypes ((array!47768 0))(
  ( (array!47769 (arr!22911 (Array (_ BitVec 32) (_ BitVec 64))) (size!23352 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47768)

(declare-datatypes ((List!16327 0))(
  ( (Nil!16324) (Cons!16323 (h!17454 (_ BitVec 64)) (t!22706 List!16327)) )
))
(declare-fun arrayNoDuplicates!0 (array!47768 (_ BitVec 32) List!16327) Bool)

(assert (=> b!843878 (= lt!381168 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16324))))

(declare-fun b!843879 () Bool)

(declare-fun res!573509 () Bool)

(assert (=> b!843879 (=> (not res!573509) (not e!470970))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843879 (= res!573509 (and (= (size!23351 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23352 _keys!868) (size!23351 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843880 () Bool)

(declare-fun res!573508 () Bool)

(assert (=> b!843880 (=> (not res!573508) (not e!470970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843880 (= res!573508 (validMask!0 mask!1196))))

(declare-fun b!843881 () Bool)

(declare-fun res!573507 () Bool)

(assert (=> b!843881 (=> (not res!573507) (not e!470970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47768 (_ BitVec 32)) Bool)

(assert (=> b!843881 (= res!573507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843876 () Bool)

(declare-fun e!470967 () Bool)

(assert (=> b!843876 (= e!470967 (and e!470966 mapRes!25256))))

(declare-fun condMapEmpty!25256 () Bool)

(declare-fun mapDefault!25256 () ValueCell!7446)

(assert (=> b!843876 (= condMapEmpty!25256 (= (arr!22910 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7446)) mapDefault!25256)))))

(declare-fun res!573510 () Bool)

(assert (=> start!72748 (=> (not res!573510) (not e!470970))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72748 (= res!573510 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23352 _keys!868))))))

(assert (=> start!72748 e!470970))

(assert (=> start!72748 true))

(declare-fun array_inv!18204 (array!47768) Bool)

(assert (=> start!72748 (array_inv!18204 _keys!868)))

(declare-fun array_inv!18205 (array!47766) Bool)

(assert (=> start!72748 (and (array_inv!18205 _values!688) e!470967)))

(assert (= (and start!72748 res!573510) b!843880))

(assert (= (and b!843880 res!573508) b!843879))

(assert (= (and b!843879 res!573509) b!843881))

(assert (= (and b!843881 res!573507) b!843878))

(assert (= (and b!843876 condMapEmpty!25256) mapIsEmpty!25256))

(assert (= (and b!843876 (not condMapEmpty!25256)) mapNonEmpty!25256))

(get-info :version)

(assert (= (and mapNonEmpty!25256 ((_ is ValueCellFull!7446) mapValue!25256)) b!843875))

(assert (= (and b!843876 ((_ is ValueCellFull!7446) mapDefault!25256)) b!843877))

(assert (= start!72748 b!843876))

(declare-fun m!786413 () Bool)

(assert (=> mapNonEmpty!25256 m!786413))

(declare-fun m!786415 () Bool)

(assert (=> b!843881 m!786415))

(declare-fun m!786417 () Bool)

(assert (=> b!843878 m!786417))

(declare-fun m!786419 () Bool)

(assert (=> start!72748 m!786419))

(declare-fun m!786421 () Bool)

(assert (=> start!72748 m!786421))

(declare-fun m!786423 () Bool)

(assert (=> b!843880 m!786423))

(check-sat (not b!843878) tp_is_empty!15771 (not b!843880) (not b!843881) (not start!72748) (not mapNonEmpty!25256))
(check-sat)
