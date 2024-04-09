; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72730 () Bool)

(assert start!72730)

(declare-fun b!843686 () Bool)

(declare-fun res!573401 () Bool)

(declare-fun e!470834 () Bool)

(assert (=> b!843686 (=> (not res!573401) (not e!470834))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843686 (= res!573401 (validMask!0 mask!1196))))

(declare-fun b!843687 () Bool)

(declare-fun e!470833 () Bool)

(declare-fun e!470832 () Bool)

(declare-fun mapRes!25229 () Bool)

(assert (=> b!843687 (= e!470833 (and e!470832 mapRes!25229))))

(declare-fun condMapEmpty!25229 () Bool)

(declare-datatypes ((V!26051 0))(
  ( (V!26052 (val!7924 Int)) )
))
(declare-datatypes ((ValueCell!7437 0))(
  ( (ValueCellFull!7437 (v!10345 V!26051)) (EmptyCell!7437) )
))
(declare-datatypes ((array!47732 0))(
  ( (array!47733 (arr!22893 (Array (_ BitVec 32) ValueCell!7437)) (size!23334 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47732)

(declare-fun mapDefault!25229 () ValueCell!7437)

(assert (=> b!843687 (= condMapEmpty!25229 (= (arr!22893 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7437)) mapDefault!25229)))))

(declare-fun b!843688 () Bool)

(assert (=> b!843688 (= e!470834 false)))

(declare-fun lt!381141 () Bool)

(declare-datatypes ((array!47734 0))(
  ( (array!47735 (arr!22894 (Array (_ BitVec 32) (_ BitVec 64))) (size!23335 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47734)

(declare-datatypes ((List!16319 0))(
  ( (Nil!16316) (Cons!16315 (h!17446 (_ BitVec 64)) (t!22698 List!16319)) )
))
(declare-fun arrayNoDuplicates!0 (array!47734 (_ BitVec 32) List!16319) Bool)

(assert (=> b!843688 (= lt!381141 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16316))))

(declare-fun mapIsEmpty!25229 () Bool)

(assert (=> mapIsEmpty!25229 mapRes!25229))

(declare-fun res!573402 () Bool)

(assert (=> start!72730 (=> (not res!573402) (not e!470834))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72730 (= res!573402 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23335 _keys!868))))))

(assert (=> start!72730 e!470834))

(assert (=> start!72730 true))

(declare-fun array_inv!18194 (array!47734) Bool)

(assert (=> start!72730 (array_inv!18194 _keys!868)))

(declare-fun array_inv!18195 (array!47732) Bool)

(assert (=> start!72730 (and (array_inv!18195 _values!688) e!470833)))

(declare-fun b!843689 () Bool)

(declare-fun res!573400 () Bool)

(assert (=> b!843689 (=> (not res!573400) (not e!470834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47734 (_ BitVec 32)) Bool)

(assert (=> b!843689 (= res!573400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25229 () Bool)

(declare-fun tp!48548 () Bool)

(declare-fun e!470835 () Bool)

(assert (=> mapNonEmpty!25229 (= mapRes!25229 (and tp!48548 e!470835))))

(declare-fun mapValue!25229 () ValueCell!7437)

(declare-fun mapKey!25229 () (_ BitVec 32))

(declare-fun mapRest!25229 () (Array (_ BitVec 32) ValueCell!7437))

(assert (=> mapNonEmpty!25229 (= (arr!22893 _values!688) (store mapRest!25229 mapKey!25229 mapValue!25229))))

(declare-fun b!843690 () Bool)

(declare-fun tp_is_empty!15753 () Bool)

(assert (=> b!843690 (= e!470832 tp_is_empty!15753)))

(declare-fun b!843691 () Bool)

(assert (=> b!843691 (= e!470835 tp_is_empty!15753)))

(declare-fun b!843692 () Bool)

(declare-fun res!573399 () Bool)

(assert (=> b!843692 (=> (not res!573399) (not e!470834))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843692 (= res!573399 (and (= (size!23334 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23335 _keys!868) (size!23334 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72730 res!573402) b!843686))

(assert (= (and b!843686 res!573401) b!843692))

(assert (= (and b!843692 res!573399) b!843689))

(assert (= (and b!843689 res!573400) b!843688))

(assert (= (and b!843687 condMapEmpty!25229) mapIsEmpty!25229))

(assert (= (and b!843687 (not condMapEmpty!25229)) mapNonEmpty!25229))

(get-info :version)

(assert (= (and mapNonEmpty!25229 ((_ is ValueCellFull!7437) mapValue!25229)) b!843691))

(assert (= (and b!843687 ((_ is ValueCellFull!7437) mapDefault!25229)) b!843690))

(assert (= start!72730 b!843687))

(declare-fun m!786305 () Bool)

(assert (=> b!843686 m!786305))

(declare-fun m!786307 () Bool)

(assert (=> start!72730 m!786307))

(declare-fun m!786309 () Bool)

(assert (=> start!72730 m!786309))

(declare-fun m!786311 () Bool)

(assert (=> mapNonEmpty!25229 m!786311))

(declare-fun m!786313 () Bool)

(assert (=> b!843688 m!786313))

(declare-fun m!786315 () Bool)

(assert (=> b!843689 m!786315))

(check-sat tp_is_empty!15753 (not b!843686) (not start!72730) (not mapNonEmpty!25229) (not b!843688) (not b!843689))
(check-sat)
