; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72714 () Bool)

(assert start!72714)

(declare-fun b!843518 () Bool)

(declare-fun res!573304 () Bool)

(declare-fun e!470714 () Bool)

(assert (=> b!843518 (=> (not res!573304) (not e!470714))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47702 0))(
  ( (array!47703 (arr!22878 (Array (_ BitVec 32) (_ BitVec 64))) (size!23319 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47702)

(declare-datatypes ((V!26029 0))(
  ( (V!26030 (val!7916 Int)) )
))
(declare-datatypes ((ValueCell!7429 0))(
  ( (ValueCellFull!7429 (v!10337 V!26029)) (EmptyCell!7429) )
))
(declare-datatypes ((array!47704 0))(
  ( (array!47705 (arr!22879 (Array (_ BitVec 32) ValueCell!7429)) (size!23320 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47704)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843518 (= res!573304 (and (= (size!23320 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23319 _keys!868) (size!23320 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843519 () Bool)

(declare-fun res!573306 () Bool)

(assert (=> b!843519 (=> (not res!573306) (not e!470714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47702 (_ BitVec 32)) Bool)

(assert (=> b!843519 (= res!573306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843520 () Bool)

(declare-fun e!470715 () Bool)

(declare-fun tp_is_empty!15737 () Bool)

(assert (=> b!843520 (= e!470715 tp_is_empty!15737)))

(declare-fun mapIsEmpty!25205 () Bool)

(declare-fun mapRes!25205 () Bool)

(assert (=> mapIsEmpty!25205 mapRes!25205))

(declare-fun b!843521 () Bool)

(assert (=> b!843521 (= e!470714 false)))

(declare-fun lt!381117 () Bool)

(declare-datatypes ((List!16312 0))(
  ( (Nil!16309) (Cons!16308 (h!17439 (_ BitVec 64)) (t!22691 List!16312)) )
))
(declare-fun arrayNoDuplicates!0 (array!47702 (_ BitVec 32) List!16312) Bool)

(assert (=> b!843521 (= lt!381117 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16309))))

(declare-fun b!843522 () Bool)

(declare-fun res!573305 () Bool)

(assert (=> b!843522 (=> (not res!573305) (not e!470714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843522 (= res!573305 (validMask!0 mask!1196))))

(declare-fun b!843523 () Bool)

(declare-fun e!470713 () Bool)

(assert (=> b!843523 (= e!470713 tp_is_empty!15737)))

(declare-fun res!573303 () Bool)

(assert (=> start!72714 (=> (not res!573303) (not e!470714))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72714 (= res!573303 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23319 _keys!868))))))

(assert (=> start!72714 e!470714))

(assert (=> start!72714 true))

(declare-fun array_inv!18184 (array!47702) Bool)

(assert (=> start!72714 (array_inv!18184 _keys!868)))

(declare-fun e!470712 () Bool)

(declare-fun array_inv!18185 (array!47704) Bool)

(assert (=> start!72714 (and (array_inv!18185 _values!688) e!470712)))

(declare-fun mapNonEmpty!25205 () Bool)

(declare-fun tp!48524 () Bool)

(assert (=> mapNonEmpty!25205 (= mapRes!25205 (and tp!48524 e!470715))))

(declare-fun mapRest!25205 () (Array (_ BitVec 32) ValueCell!7429))

(declare-fun mapKey!25205 () (_ BitVec 32))

(declare-fun mapValue!25205 () ValueCell!7429)

(assert (=> mapNonEmpty!25205 (= (arr!22879 _values!688) (store mapRest!25205 mapKey!25205 mapValue!25205))))

(declare-fun b!843524 () Bool)

(assert (=> b!843524 (= e!470712 (and e!470713 mapRes!25205))))

(declare-fun condMapEmpty!25205 () Bool)

(declare-fun mapDefault!25205 () ValueCell!7429)

