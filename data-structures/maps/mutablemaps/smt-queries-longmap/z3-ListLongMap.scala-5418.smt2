; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72322 () Bool)

(assert start!72322)

(declare-fun b!837458 () Bool)

(declare-fun res!569658 () Bool)

(declare-fun e!467448 () Bool)

(assert (=> b!837458 (=> (not res!569658) (not e!467448))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837458 (= res!569658 (validMask!0 mask!1196))))

(declare-fun b!837459 () Bool)

(declare-fun e!467451 () Bool)

(declare-fun tp_is_empty!15345 () Bool)

(assert (=> b!837459 (= e!467451 tp_is_empty!15345)))

(declare-fun b!837460 () Bool)

(declare-fun res!569657 () Bool)

(assert (=> b!837460 (=> (not res!569657) (not e!467448))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!46950 0))(
  ( (array!46951 (arr!22502 (Array (_ BitVec 32) (_ BitVec 64))) (size!22943 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46950)

(declare-datatypes ((V!25507 0))(
  ( (V!25508 (val!7720 Int)) )
))
(declare-datatypes ((ValueCell!7233 0))(
  ( (ValueCellFull!7233 (v!10141 V!25507)) (EmptyCell!7233) )
))
(declare-datatypes ((array!46952 0))(
  ( (array!46953 (arr!22503 (Array (_ BitVec 32) ValueCell!7233)) (size!22944 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46952)

(assert (=> b!837460 (= res!569657 (and (= (size!22944 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22943 _keys!868) (size!22944 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837461 () Bool)

(declare-fun e!467449 () Bool)

(assert (=> b!837461 (= e!467449 tp_is_empty!15345)))

(declare-fun mapNonEmpty!24617 () Bool)

(declare-fun mapRes!24617 () Bool)

(declare-fun tp!47612 () Bool)

(assert (=> mapNonEmpty!24617 (= mapRes!24617 (and tp!47612 e!467451))))

(declare-fun mapKey!24617 () (_ BitVec 32))

(declare-fun mapValue!24617 () ValueCell!7233)

(declare-fun mapRest!24617 () (Array (_ BitVec 32) ValueCell!7233))

(assert (=> mapNonEmpty!24617 (= (arr!22503 _values!688) (store mapRest!24617 mapKey!24617 mapValue!24617))))

(declare-fun b!837462 () Bool)

(assert (=> b!837462 (= e!467448 false)))

(declare-fun lt!380529 () Bool)

(declare-datatypes ((List!16085 0))(
  ( (Nil!16082) (Cons!16081 (h!17212 (_ BitVec 64)) (t!22464 List!16085)) )
))
(declare-fun arrayNoDuplicates!0 (array!46950 (_ BitVec 32) List!16085) Bool)

(assert (=> b!837462 (= lt!380529 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16082))))

(declare-fun mapIsEmpty!24617 () Bool)

(assert (=> mapIsEmpty!24617 mapRes!24617))

(declare-fun res!569656 () Bool)

(assert (=> start!72322 (=> (not res!569656) (not e!467448))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72322 (= res!569656 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22943 _keys!868))))))

(assert (=> start!72322 e!467448))

(assert (=> start!72322 true))

(declare-fun array_inv!17908 (array!46950) Bool)

(assert (=> start!72322 (array_inv!17908 _keys!868)))

(declare-fun e!467447 () Bool)

(declare-fun array_inv!17909 (array!46952) Bool)

(assert (=> start!72322 (and (array_inv!17909 _values!688) e!467447)))

(declare-fun b!837463 () Bool)

(declare-fun res!569655 () Bool)

(assert (=> b!837463 (=> (not res!569655) (not e!467448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46950 (_ BitVec 32)) Bool)

(assert (=> b!837463 (= res!569655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837464 () Bool)

(assert (=> b!837464 (= e!467447 (and e!467449 mapRes!24617))))

(declare-fun condMapEmpty!24617 () Bool)

(declare-fun mapDefault!24617 () ValueCell!7233)

(assert (=> b!837464 (= condMapEmpty!24617 (= (arr!22503 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7233)) mapDefault!24617)))))

(assert (= (and start!72322 res!569656) b!837458))

(assert (= (and b!837458 res!569658) b!837460))

(assert (= (and b!837460 res!569657) b!837463))

(assert (= (and b!837463 res!569655) b!837462))

(assert (= (and b!837464 condMapEmpty!24617) mapIsEmpty!24617))

(assert (= (and b!837464 (not condMapEmpty!24617)) mapNonEmpty!24617))

(get-info :version)

(assert (= (and mapNonEmpty!24617 ((_ is ValueCellFull!7233) mapValue!24617)) b!837459))

(assert (= (and b!837464 ((_ is ValueCellFull!7233) mapDefault!24617)) b!837461))

(assert (= start!72322 b!837464))

(declare-fun m!782345 () Bool)

(assert (=> start!72322 m!782345))

(declare-fun m!782347 () Bool)

(assert (=> start!72322 m!782347))

(declare-fun m!782349 () Bool)

(assert (=> b!837458 m!782349))

(declare-fun m!782351 () Bool)

(assert (=> b!837462 m!782351))

(declare-fun m!782353 () Bool)

(assert (=> mapNonEmpty!24617 m!782353))

(declare-fun m!782355 () Bool)

(assert (=> b!837463 m!782355))

(check-sat (not b!837463) (not start!72322) (not b!837462) (not b!837458) (not mapNonEmpty!24617) tp_is_empty!15345)
(check-sat)
