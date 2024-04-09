; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72712 () Bool)

(assert start!72712)

(declare-fun b!843497 () Bool)

(declare-fun res!573292 () Bool)

(declare-fun e!470699 () Bool)

(assert (=> b!843497 (=> (not res!573292) (not e!470699))))

(declare-datatypes ((array!47698 0))(
  ( (array!47699 (arr!22876 (Array (_ BitVec 32) (_ BitVec 64))) (size!23317 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47698)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47698 (_ BitVec 32)) Bool)

(assert (=> b!843497 (= res!573292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843498 () Bool)

(declare-fun e!470697 () Bool)

(declare-fun e!470700 () Bool)

(declare-fun mapRes!25202 () Bool)

(assert (=> b!843498 (= e!470697 (and e!470700 mapRes!25202))))

(declare-fun condMapEmpty!25202 () Bool)

(declare-datatypes ((V!26027 0))(
  ( (V!26028 (val!7915 Int)) )
))
(declare-datatypes ((ValueCell!7428 0))(
  ( (ValueCellFull!7428 (v!10336 V!26027)) (EmptyCell!7428) )
))
(declare-datatypes ((array!47700 0))(
  ( (array!47701 (arr!22877 (Array (_ BitVec 32) ValueCell!7428)) (size!23318 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47700)

(declare-fun mapDefault!25202 () ValueCell!7428)

(assert (=> b!843498 (= condMapEmpty!25202 (= (arr!22877 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7428)) mapDefault!25202)))))

(declare-fun mapNonEmpty!25202 () Bool)

(declare-fun tp!48521 () Bool)

(declare-fun e!470696 () Bool)

(assert (=> mapNonEmpty!25202 (= mapRes!25202 (and tp!48521 e!470696))))

(declare-fun mapKey!25202 () (_ BitVec 32))

(declare-fun mapRest!25202 () (Array (_ BitVec 32) ValueCell!7428))

(declare-fun mapValue!25202 () ValueCell!7428)

(assert (=> mapNonEmpty!25202 (= (arr!22877 _values!688) (store mapRest!25202 mapKey!25202 mapValue!25202))))

(declare-fun b!843499 () Bool)

(declare-fun tp_is_empty!15735 () Bool)

(assert (=> b!843499 (= e!470696 tp_is_empty!15735)))

(declare-fun res!573291 () Bool)

(assert (=> start!72712 (=> (not res!573291) (not e!470699))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72712 (= res!573291 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23317 _keys!868))))))

(assert (=> start!72712 e!470699))

(assert (=> start!72712 true))

(declare-fun array_inv!18182 (array!47698) Bool)

(assert (=> start!72712 (array_inv!18182 _keys!868)))

(declare-fun array_inv!18183 (array!47700) Bool)

(assert (=> start!72712 (and (array_inv!18183 _values!688) e!470697)))

(declare-fun b!843500 () Bool)

(assert (=> b!843500 (= e!470700 tp_is_empty!15735)))

(declare-fun b!843501 () Bool)

(declare-fun res!573293 () Bool)

(assert (=> b!843501 (=> (not res!573293) (not e!470699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843501 (= res!573293 (validMask!0 mask!1196))))

(declare-fun b!843502 () Bool)

(assert (=> b!843502 (= e!470699 false)))

(declare-fun lt!381114 () Bool)

(declare-datatypes ((List!16311 0))(
  ( (Nil!16308) (Cons!16307 (h!17438 (_ BitVec 64)) (t!22690 List!16311)) )
))
(declare-fun arrayNoDuplicates!0 (array!47698 (_ BitVec 32) List!16311) Bool)

(assert (=> b!843502 (= lt!381114 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16308))))

(declare-fun mapIsEmpty!25202 () Bool)

(assert (=> mapIsEmpty!25202 mapRes!25202))

(declare-fun b!843503 () Bool)

(declare-fun res!573294 () Bool)

(assert (=> b!843503 (=> (not res!573294) (not e!470699))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843503 (= res!573294 (and (= (size!23318 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23317 _keys!868) (size!23318 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72712 res!573291) b!843501))

(assert (= (and b!843501 res!573293) b!843503))

(assert (= (and b!843503 res!573294) b!843497))

(assert (= (and b!843497 res!573292) b!843502))

(assert (= (and b!843498 condMapEmpty!25202) mapIsEmpty!25202))

(assert (= (and b!843498 (not condMapEmpty!25202)) mapNonEmpty!25202))

(get-info :version)

(assert (= (and mapNonEmpty!25202 ((_ is ValueCellFull!7428) mapValue!25202)) b!843499))

(assert (= (and b!843498 ((_ is ValueCellFull!7428) mapDefault!25202)) b!843500))

(assert (= start!72712 b!843498))

(declare-fun m!786197 () Bool)

(assert (=> b!843502 m!786197))

(declare-fun m!786199 () Bool)

(assert (=> b!843501 m!786199))

(declare-fun m!786201 () Bool)

(assert (=> start!72712 m!786201))

(declare-fun m!786203 () Bool)

(assert (=> start!72712 m!786203))

(declare-fun m!786205 () Bool)

(assert (=> b!843497 m!786205))

(declare-fun m!786207 () Bool)

(assert (=> mapNonEmpty!25202 m!786207))

(check-sat (not b!843502) (not b!843501) (not b!843497) tp_is_empty!15735 (not start!72712) (not mapNonEmpty!25202))
(check-sat)
