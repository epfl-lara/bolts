; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72238 () Bool)

(assert start!72238)

(declare-fun b!836801 () Bool)

(declare-fun e!466970 () Bool)

(declare-fun tp_is_empty!15291 () Bool)

(assert (=> b!836801 (= e!466970 tp_is_empty!15291)))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!46850 0))(
  ( (array!46851 (arr!22455 (Array (_ BitVec 32) (_ BitVec 64))) (size!22896 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46850)

(declare-datatypes ((V!25435 0))(
  ( (V!25436 (val!7693 Int)) )
))
(declare-datatypes ((ValueCell!7206 0))(
  ( (ValueCellFull!7206 (v!10113 V!25435)) (EmptyCell!7206) )
))
(declare-datatypes ((array!46852 0))(
  ( (array!46853 (arr!22456 (Array (_ BitVec 32) ValueCell!7206)) (size!22897 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46852)

(declare-fun e!466972 () Bool)

(declare-fun b!836802 () Bool)

(assert (=> b!836802 (= e!466972 (and (= (size!22897 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22896 _keys!868) (size!22897 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011) (not (= (size!22896 _keys!868) (bvadd #b00000000000000000000000000000001 mask!1196)))))))

(declare-fun b!836803 () Bool)

(declare-fun e!466968 () Bool)

(assert (=> b!836803 (= e!466968 tp_is_empty!15291)))

(declare-fun res!569284 () Bool)

(assert (=> start!72238 (=> (not res!569284) (not e!466972))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72238 (= res!569284 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22896 _keys!868))))))

(assert (=> start!72238 e!466972))

(assert (=> start!72238 true))

(declare-fun array_inv!17878 (array!46850) Bool)

(assert (=> start!72238 (array_inv!17878 _keys!868)))

(declare-fun e!466971 () Bool)

(declare-fun array_inv!17879 (array!46852) Bool)

(assert (=> start!72238 (and (array_inv!17879 _values!688) e!466971)))

(declare-fun mapNonEmpty!24527 () Bool)

(declare-fun mapRes!24527 () Bool)

(declare-fun tp!47522 () Bool)

(assert (=> mapNonEmpty!24527 (= mapRes!24527 (and tp!47522 e!466968))))

(declare-fun mapRest!24527 () (Array (_ BitVec 32) ValueCell!7206))

(declare-fun mapValue!24527 () ValueCell!7206)

(declare-fun mapKey!24527 () (_ BitVec 32))

(assert (=> mapNonEmpty!24527 (= (arr!22456 _values!688) (store mapRest!24527 mapKey!24527 mapValue!24527))))

(declare-fun b!836804 () Bool)

(assert (=> b!836804 (= e!466971 (and e!466970 mapRes!24527))))

(declare-fun condMapEmpty!24527 () Bool)

(declare-fun mapDefault!24527 () ValueCell!7206)

(assert (=> b!836804 (= condMapEmpty!24527 (= (arr!22456 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7206)) mapDefault!24527)))))

(declare-fun b!836805 () Bool)

(declare-fun res!569283 () Bool)

(assert (=> b!836805 (=> (not res!569283) (not e!466972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836805 (= res!569283 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24527 () Bool)

(assert (=> mapIsEmpty!24527 mapRes!24527))

(assert (= (and start!72238 res!569284) b!836805))

(assert (= (and b!836805 res!569283) b!836802))

(assert (= (and b!836804 condMapEmpty!24527) mapIsEmpty!24527))

(assert (= (and b!836804 (not condMapEmpty!24527)) mapNonEmpty!24527))

(get-info :version)

(assert (= (and mapNonEmpty!24527 ((_ is ValueCellFull!7206) mapValue!24527)) b!836803))

(assert (= (and b!836804 ((_ is ValueCellFull!7206) mapDefault!24527)) b!836801))

(assert (= start!72238 b!836804))

(declare-fun m!781981 () Bool)

(assert (=> start!72238 m!781981))

(declare-fun m!781983 () Bool)

(assert (=> start!72238 m!781983))

(declare-fun m!781985 () Bool)

(assert (=> mapNonEmpty!24527 m!781985))

(declare-fun m!781987 () Bool)

(assert (=> b!836805 m!781987))

(check-sat (not b!836805) (not start!72238) (not mapNonEmpty!24527) tp_is_empty!15291)
(check-sat)
