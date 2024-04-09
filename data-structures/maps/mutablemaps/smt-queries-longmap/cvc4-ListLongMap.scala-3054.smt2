; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43148 () Bool)

(assert start!43148)

(declare-fun b!478205 () Bool)

(declare-fun e!281160 () Bool)

(declare-fun tp_is_empty!13559 () Bool)

(assert (=> b!478205 (= e!281160 tp_is_empty!13559)))

(declare-fun b!478206 () Bool)

(declare-fun res!285388 () Bool)

(declare-fun e!281162 () Bool)

(assert (=> b!478206 (=> (not res!285388) (not e!281162))))

(declare-datatypes ((array!30759 0))(
  ( (array!30760 (arr!14787 (Array (_ BitVec 32) (_ BitVec 64))) (size!15145 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30759)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30759 (_ BitVec 32)) Bool)

(assert (=> b!478206 (= res!285388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478207 () Bool)

(declare-fun res!285387 () Bool)

(assert (=> b!478207 (=> (not res!285387) (not e!281162))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19149 0))(
  ( (V!19150 (val!6827 Int)) )
))
(declare-datatypes ((ValueCell!6418 0))(
  ( (ValueCellFull!6418 (v!9111 V!19149)) (EmptyCell!6418) )
))
(declare-datatypes ((array!30761 0))(
  ( (array!30762 (arr!14788 (Array (_ BitVec 32) ValueCell!6418)) (size!15146 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30761)

(assert (=> b!478207 (= res!285387 (and (= (size!15146 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15145 _keys!1874) (size!15146 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478208 () Bool)

(declare-fun e!281158 () Bool)

(declare-fun mapRes!22024 () Bool)

(assert (=> b!478208 (= e!281158 (and e!281160 mapRes!22024))))

(declare-fun condMapEmpty!22024 () Bool)

(declare-fun mapDefault!22024 () ValueCell!6418)

