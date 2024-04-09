; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43216 () Bool)

(assert start!43216)

(declare-fun res!285631 () Bool)

(declare-fun e!281521 () Bool)

(assert (=> start!43216 (=> (not res!285631) (not e!281521))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43216 (= res!285631 (validMask!0 mask!2352))))

(assert (=> start!43216 e!281521))

(assert (=> start!43216 true))

(declare-datatypes ((V!19201 0))(
  ( (V!19202 (val!6846 Int)) )
))
(declare-datatypes ((ValueCell!6437 0))(
  ( (ValueCellFull!6437 (v!9131 V!19201)) (EmptyCell!6437) )
))
(declare-datatypes ((array!30835 0))(
  ( (array!30836 (arr!14822 (Array (_ BitVec 32) ValueCell!6437)) (size!15180 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30835)

(declare-fun e!281519 () Bool)

(declare-fun array_inv!10680 (array!30835) Bool)

(assert (=> start!43216 (and (array_inv!10680 _values!1516) e!281519)))

(declare-datatypes ((array!30837 0))(
  ( (array!30838 (arr!14823 (Array (_ BitVec 32) (_ BitVec 64))) (size!15181 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30837)

(declare-fun array_inv!10681 (array!30837) Bool)

(assert (=> start!43216 (array_inv!10681 _keys!1874)))

(declare-fun mapNonEmpty!22090 () Bool)

(declare-fun mapRes!22090 () Bool)

(declare-fun tp!42565 () Bool)

(declare-fun e!281517 () Bool)

(assert (=> mapNonEmpty!22090 (= mapRes!22090 (and tp!42565 e!281517))))

(declare-fun mapValue!22090 () ValueCell!6437)

(declare-fun mapKey!22090 () (_ BitVec 32))

(declare-fun mapRest!22090 () (Array (_ BitVec 32) ValueCell!6437))

(assert (=> mapNonEmpty!22090 (= (arr!14822 _values!1516) (store mapRest!22090 mapKey!22090 mapValue!22090))))

(declare-fun b!478663 () Bool)

(declare-fun e!281520 () Bool)

(declare-fun tp_is_empty!13597 () Bool)

(assert (=> b!478663 (= e!281520 tp_is_empty!13597)))

(declare-fun b!478664 () Bool)

(declare-fun res!285632 () Bool)

(assert (=> b!478664 (=> (not res!285632) (not e!281521))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478664 (= res!285632 (and (= (size!15180 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15181 _keys!1874) (size!15180 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478665 () Bool)

(assert (=> b!478665 (= e!281519 (and e!281520 mapRes!22090))))

(declare-fun condMapEmpty!22090 () Bool)

(declare-fun mapDefault!22090 () ValueCell!6437)

