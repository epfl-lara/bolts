; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72590 () Bool)

(assert start!72590)

(declare-fun res!572562 () Bool)

(declare-fun e!469785 () Bool)

(assert (=> start!72590 (=> (not res!572562) (not e!469785))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47468 0))(
  ( (array!47469 (arr!22761 (Array (_ BitVec 32) (_ BitVec 64))) (size!23202 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47468)

(assert (=> start!72590 (= res!572562 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23202 _keys!868))))))

(assert (=> start!72590 e!469785))

(assert (=> start!72590 true))

(declare-fun array_inv!18092 (array!47468) Bool)

(assert (=> start!72590 (array_inv!18092 _keys!868)))

(declare-datatypes ((V!25865 0))(
  ( (V!25866 (val!7854 Int)) )
))
(declare-datatypes ((ValueCell!7367 0))(
  ( (ValueCellFull!7367 (v!10275 V!25865)) (EmptyCell!7367) )
))
(declare-datatypes ((array!47470 0))(
  ( (array!47471 (arr!22762 (Array (_ BitVec 32) ValueCell!7367)) (size!23203 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47470)

(declare-fun e!469781 () Bool)

(declare-fun array_inv!18093 (array!47470) Bool)

(assert (=> start!72590 (and (array_inv!18093 _values!688) e!469781)))

(declare-fun b!842216 () Bool)

(assert (=> b!842216 (= e!469785 false)))

(declare-fun lt!380931 () Bool)

(declare-datatypes ((List!16270 0))(
  ( (Nil!16267) (Cons!16266 (h!17397 (_ BitVec 64)) (t!22649 List!16270)) )
))
(declare-fun arrayNoDuplicates!0 (array!47468 (_ BitVec 32) List!16270) Bool)

(assert (=> b!842216 (= lt!380931 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16267))))

(declare-fun mapNonEmpty!25019 () Bool)

(declare-fun mapRes!25019 () Bool)

(declare-fun tp!48338 () Bool)

(declare-fun e!469783 () Bool)

(assert (=> mapNonEmpty!25019 (= mapRes!25019 (and tp!48338 e!469783))))

(declare-fun mapKey!25019 () (_ BitVec 32))

(declare-fun mapValue!25019 () ValueCell!7367)

(declare-fun mapRest!25019 () (Array (_ BitVec 32) ValueCell!7367))

(assert (=> mapNonEmpty!25019 (= (arr!22762 _values!688) (store mapRest!25019 mapKey!25019 mapValue!25019))))

(declare-fun b!842217 () Bool)

(declare-fun res!572559 () Bool)

(assert (=> b!842217 (=> (not res!572559) (not e!469785))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842217 (= res!572559 (and (= (size!23203 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23202 _keys!868) (size!23203 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842218 () Bool)

(declare-fun e!469784 () Bool)

(declare-fun tp_is_empty!15613 () Bool)

(assert (=> b!842218 (= e!469784 tp_is_empty!15613)))

(declare-fun b!842219 () Bool)

(assert (=> b!842219 (= e!469781 (and e!469784 mapRes!25019))))

(declare-fun condMapEmpty!25019 () Bool)

(declare-fun mapDefault!25019 () ValueCell!7367)

