; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43214 () Bool)

(assert start!43214)

(declare-fun mapIsEmpty!22087 () Bool)

(declare-fun mapRes!22087 () Bool)

(assert (=> mapIsEmpty!22087 mapRes!22087))

(declare-fun b!478645 () Bool)

(declare-fun e!281502 () Bool)

(declare-fun tp_is_empty!13595 () Bool)

(assert (=> b!478645 (= e!281502 tp_is_empty!13595)))

(declare-fun b!478646 () Bool)

(declare-fun res!285624 () Bool)

(declare-fun e!281505 () Bool)

(assert (=> b!478646 (=> (not res!285624) (not e!281505))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30831 0))(
  ( (array!30832 (arr!14820 (Array (_ BitVec 32) (_ BitVec 64))) (size!15178 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30831)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19197 0))(
  ( (V!19198 (val!6845 Int)) )
))
(declare-datatypes ((ValueCell!6436 0))(
  ( (ValueCellFull!6436 (v!9130 V!19197)) (EmptyCell!6436) )
))
(declare-datatypes ((array!30833 0))(
  ( (array!30834 (arr!14821 (Array (_ BitVec 32) ValueCell!6436)) (size!15179 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30833)

(assert (=> b!478646 (= res!285624 (and (= (size!15179 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15178 _keys!1874) (size!15179 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478647 () Bool)

(declare-fun e!281503 () Bool)

(assert (=> b!478647 (= e!281503 tp_is_empty!13595)))

(declare-fun b!478648 () Bool)

(declare-fun e!281506 () Bool)

(assert (=> b!478648 (= e!281506 (and e!281502 mapRes!22087))))

(declare-fun condMapEmpty!22087 () Bool)

(declare-fun mapDefault!22087 () ValueCell!6436)

