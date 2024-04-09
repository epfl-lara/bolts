; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72676 () Bool)

(assert start!72676)

(declare-fun b!843119 () Bool)

(declare-fun e!470428 () Bool)

(assert (=> b!843119 (= e!470428 false)))

(declare-fun lt!381060 () Bool)

(declare-datatypes ((array!47634 0))(
  ( (array!47635 (arr!22844 (Array (_ BitVec 32) (_ BitVec 64))) (size!23285 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47634)

(declare-datatypes ((List!16298 0))(
  ( (Nil!16295) (Cons!16294 (h!17425 (_ BitVec 64)) (t!22677 List!16298)) )
))
(declare-fun arrayNoDuplicates!0 (array!47634 (_ BitVec 32) List!16298) Bool)

(assert (=> b!843119 (= lt!381060 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16295))))

(declare-fun b!843120 () Bool)

(declare-fun res!573077 () Bool)

(assert (=> b!843120 (=> (not res!573077) (not e!470428))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843120 (= res!573077 (validMask!0 mask!1196))))

(declare-fun b!843121 () Bool)

(declare-fun res!573075 () Bool)

(assert (=> b!843121 (=> (not res!573075) (not e!470428))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!25979 0))(
  ( (V!25980 (val!7897 Int)) )
))
(declare-datatypes ((ValueCell!7410 0))(
  ( (ValueCellFull!7410 (v!10318 V!25979)) (EmptyCell!7410) )
))
(declare-datatypes ((array!47636 0))(
  ( (array!47637 (arr!22845 (Array (_ BitVec 32) ValueCell!7410)) (size!23286 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47636)

(assert (=> b!843121 (= res!573075 (and (= (size!23286 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23285 _keys!868) (size!23286 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843122 () Bool)

(declare-fun e!470427 () Bool)

(declare-fun tp_is_empty!15699 () Bool)

(assert (=> b!843122 (= e!470427 tp_is_empty!15699)))

(declare-fun b!843123 () Bool)

(declare-fun e!470426 () Bool)

(assert (=> b!843123 (= e!470426 tp_is_empty!15699)))

(declare-fun b!843124 () Bool)

(declare-fun e!470429 () Bool)

(declare-fun mapRes!25148 () Bool)

(assert (=> b!843124 (= e!470429 (and e!470427 mapRes!25148))))

(declare-fun condMapEmpty!25148 () Bool)

(declare-fun mapDefault!25148 () ValueCell!7410)

(assert (=> b!843124 (= condMapEmpty!25148 (= (arr!22845 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7410)) mapDefault!25148)))))

(declare-fun res!573076 () Bool)

(assert (=> start!72676 (=> (not res!573076) (not e!470428))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72676 (= res!573076 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23285 _keys!868))))))

(assert (=> start!72676 e!470428))

(assert (=> start!72676 true))

(declare-fun array_inv!18160 (array!47634) Bool)

(assert (=> start!72676 (array_inv!18160 _keys!868)))

(declare-fun array_inv!18161 (array!47636) Bool)

(assert (=> start!72676 (and (array_inv!18161 _values!688) e!470429)))

(declare-fun b!843125 () Bool)

(declare-fun res!573078 () Bool)

(assert (=> b!843125 (=> (not res!573078) (not e!470428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47634 (_ BitVec 32)) Bool)

(assert (=> b!843125 (= res!573078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25148 () Bool)

(assert (=> mapIsEmpty!25148 mapRes!25148))

(declare-fun mapNonEmpty!25148 () Bool)

(declare-fun tp!48467 () Bool)

(assert (=> mapNonEmpty!25148 (= mapRes!25148 (and tp!48467 e!470426))))

(declare-fun mapKey!25148 () (_ BitVec 32))

(declare-fun mapRest!25148 () (Array (_ BitVec 32) ValueCell!7410))

(declare-fun mapValue!25148 () ValueCell!7410)

(assert (=> mapNonEmpty!25148 (= (arr!22845 _values!688) (store mapRest!25148 mapKey!25148 mapValue!25148))))

(assert (= (and start!72676 res!573076) b!843120))

(assert (= (and b!843120 res!573077) b!843121))

(assert (= (and b!843121 res!573075) b!843125))

(assert (= (and b!843125 res!573078) b!843119))

(assert (= (and b!843124 condMapEmpty!25148) mapIsEmpty!25148))

(assert (= (and b!843124 (not condMapEmpty!25148)) mapNonEmpty!25148))

(get-info :version)

(assert (= (and mapNonEmpty!25148 ((_ is ValueCellFull!7410) mapValue!25148)) b!843123))

(assert (= (and b!843124 ((_ is ValueCellFull!7410) mapDefault!25148)) b!843122))

(assert (= start!72676 b!843124))

(declare-fun m!785981 () Bool)

(assert (=> b!843119 m!785981))

(declare-fun m!785983 () Bool)

(assert (=> b!843125 m!785983))

(declare-fun m!785985 () Bool)

(assert (=> mapNonEmpty!25148 m!785985))

(declare-fun m!785987 () Bool)

(assert (=> start!72676 m!785987))

(declare-fun m!785989 () Bool)

(assert (=> start!72676 m!785989))

(declare-fun m!785991 () Bool)

(assert (=> b!843120 m!785991))

(check-sat tp_is_empty!15699 (not b!843120) (not mapNonEmpty!25148) (not start!72676) (not b!843125) (not b!843119))
(check-sat)
