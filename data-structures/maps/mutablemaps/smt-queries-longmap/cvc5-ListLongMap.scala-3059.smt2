; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43204 () Bool)

(assert start!43204)

(declare-fun b!478555 () Bool)

(declare-fun e!281430 () Bool)

(declare-fun tp_is_empty!13585 () Bool)

(assert (=> b!478555 (= e!281430 tp_is_empty!13585)))

(declare-fun b!478556 () Bool)

(declare-fun e!281428 () Bool)

(assert (=> b!478556 (= e!281428 tp_is_empty!13585)))

(declare-fun res!285578 () Bool)

(declare-fun e!281427 () Bool)

(assert (=> start!43204 (=> (not res!285578) (not e!281427))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43204 (= res!285578 (validMask!0 mask!2352))))

(assert (=> start!43204 e!281427))

(assert (=> start!43204 true))

(declare-datatypes ((V!19185 0))(
  ( (V!19186 (val!6840 Int)) )
))
(declare-datatypes ((ValueCell!6431 0))(
  ( (ValueCellFull!6431 (v!9125 V!19185)) (EmptyCell!6431) )
))
(declare-datatypes ((array!30813 0))(
  ( (array!30814 (arr!14811 (Array (_ BitVec 32) ValueCell!6431)) (size!15169 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30813)

(declare-fun e!281431 () Bool)

(declare-fun array_inv!10674 (array!30813) Bool)

(assert (=> start!43204 (and (array_inv!10674 _values!1516) e!281431)))

(declare-datatypes ((array!30815 0))(
  ( (array!30816 (arr!14812 (Array (_ BitVec 32) (_ BitVec 64))) (size!15170 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30815)

(declare-fun array_inv!10675 (array!30815) Bool)

(assert (=> start!43204 (array_inv!10675 _keys!1874)))

(declare-fun mapIsEmpty!22072 () Bool)

(declare-fun mapRes!22072 () Bool)

(assert (=> mapIsEmpty!22072 mapRes!22072))

(declare-fun b!478557 () Bool)

(assert (=> b!478557 (= e!281427 false)))

(declare-fun lt!217724 () Bool)

(declare-datatypes ((List!9098 0))(
  ( (Nil!9095) (Cons!9094 (h!9950 (_ BitVec 64)) (t!15312 List!9098)) )
))
(declare-fun arrayNoDuplicates!0 (array!30815 (_ BitVec 32) List!9098) Bool)

(assert (=> b!478557 (= lt!217724 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9095))))

(declare-fun mapNonEmpty!22072 () Bool)

(declare-fun tp!42547 () Bool)

(assert (=> mapNonEmpty!22072 (= mapRes!22072 (and tp!42547 e!281428))))

(declare-fun mapKey!22072 () (_ BitVec 32))

(declare-fun mapRest!22072 () (Array (_ BitVec 32) ValueCell!6431))

(declare-fun mapValue!22072 () ValueCell!6431)

(assert (=> mapNonEmpty!22072 (= (arr!14811 _values!1516) (store mapRest!22072 mapKey!22072 mapValue!22072))))

(declare-fun b!478558 () Bool)

(declare-fun res!285577 () Bool)

(assert (=> b!478558 (=> (not res!285577) (not e!281427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30815 (_ BitVec 32)) Bool)

(assert (=> b!478558 (= res!285577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478559 () Bool)

(declare-fun res!285579 () Bool)

(assert (=> b!478559 (=> (not res!285579) (not e!281427))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478559 (= res!285579 (and (= (size!15169 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15170 _keys!1874) (size!15169 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478560 () Bool)

(assert (=> b!478560 (= e!281431 (and e!281430 mapRes!22072))))

(declare-fun condMapEmpty!22072 () Bool)

(declare-fun mapDefault!22072 () ValueCell!6431)

