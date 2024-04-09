; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72692 () Bool)

(assert start!72692)

(declare-fun b!843287 () Bool)

(declare-fun e!470546 () Bool)

(assert (=> b!843287 (= e!470546 false)))

(declare-fun lt!381084 () Bool)

(declare-datatypes ((array!47664 0))(
  ( (array!47665 (arr!22859 (Array (_ BitVec 32) (_ BitVec 64))) (size!23300 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47664)

(declare-datatypes ((List!16304 0))(
  ( (Nil!16301) (Cons!16300 (h!17431 (_ BitVec 64)) (t!22683 List!16304)) )
))
(declare-fun arrayNoDuplicates!0 (array!47664 (_ BitVec 32) List!16304) Bool)

(assert (=> b!843287 (= lt!381084 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16301))))

(declare-fun mapIsEmpty!25172 () Bool)

(declare-fun mapRes!25172 () Bool)

(assert (=> mapIsEmpty!25172 mapRes!25172))

(declare-fun b!843288 () Bool)

(declare-fun e!470549 () Bool)

(declare-fun tp_is_empty!15715 () Bool)

(assert (=> b!843288 (= e!470549 tp_is_empty!15715)))

(declare-fun b!843289 () Bool)

(declare-fun res!573172 () Bool)

(assert (=> b!843289 (=> (not res!573172) (not e!470546))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843289 (= res!573172 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25172 () Bool)

(declare-fun tp!48491 () Bool)

(declare-fun e!470550 () Bool)

(assert (=> mapNonEmpty!25172 (= mapRes!25172 (and tp!48491 e!470550))))

(declare-datatypes ((V!26001 0))(
  ( (V!26002 (val!7905 Int)) )
))
(declare-datatypes ((ValueCell!7418 0))(
  ( (ValueCellFull!7418 (v!10326 V!26001)) (EmptyCell!7418) )
))
(declare-fun mapValue!25172 () ValueCell!7418)

(declare-fun mapRest!25172 () (Array (_ BitVec 32) ValueCell!7418))

(declare-fun mapKey!25172 () (_ BitVec 32))

(declare-datatypes ((array!47666 0))(
  ( (array!47667 (arr!22860 (Array (_ BitVec 32) ValueCell!7418)) (size!23301 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47666)

(assert (=> mapNonEmpty!25172 (= (arr!22860 _values!688) (store mapRest!25172 mapKey!25172 mapValue!25172))))

(declare-fun b!843290 () Bool)

(declare-fun res!573173 () Bool)

(assert (=> b!843290 (=> (not res!573173) (not e!470546))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843290 (= res!573173 (and (= (size!23301 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23300 _keys!868) (size!23301 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!573171 () Bool)

(assert (=> start!72692 (=> (not res!573171) (not e!470546))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72692 (= res!573171 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23300 _keys!868))))))

(assert (=> start!72692 e!470546))

(assert (=> start!72692 true))

(declare-fun array_inv!18170 (array!47664) Bool)

(assert (=> start!72692 (array_inv!18170 _keys!868)))

(declare-fun e!470548 () Bool)

(declare-fun array_inv!18171 (array!47666) Bool)

(assert (=> start!72692 (and (array_inv!18171 _values!688) e!470548)))

(declare-fun b!843291 () Bool)

(assert (=> b!843291 (= e!470548 (and e!470549 mapRes!25172))))

(declare-fun condMapEmpty!25172 () Bool)

(declare-fun mapDefault!25172 () ValueCell!7418)

