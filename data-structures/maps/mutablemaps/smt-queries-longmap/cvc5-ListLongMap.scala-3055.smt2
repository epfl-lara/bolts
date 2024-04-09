; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43158 () Bool)

(assert start!43158)

(declare-fun b!478245 () Bool)

(declare-fun e!281191 () Bool)

(declare-datatypes ((List!9090 0))(
  ( (Nil!9087) (Cons!9086 (h!9942 (_ BitVec 64)) (t!15304 List!9090)) )
))
(declare-fun noDuplicate!204 (List!9090) Bool)

(assert (=> b!478245 (= e!281191 (not (noDuplicate!204 Nil!9087)))))

(declare-fun b!478246 () Bool)

(declare-fun res!285405 () Bool)

(assert (=> b!478246 (=> (not res!285405) (not e!281191))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30765 0))(
  ( (array!30766 (arr!14789 (Array (_ BitVec 32) (_ BitVec 64))) (size!15147 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30765)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19153 0))(
  ( (V!19154 (val!6828 Int)) )
))
(declare-datatypes ((ValueCell!6419 0))(
  ( (ValueCellFull!6419 (v!9112 V!19153)) (EmptyCell!6419) )
))
(declare-datatypes ((array!30767 0))(
  ( (array!30768 (arr!14790 (Array (_ BitVec 32) ValueCell!6419)) (size!15148 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30767)

(assert (=> b!478246 (= res!285405 (and (= (size!15148 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15147 _keys!1874) (size!15148 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478247 () Bool)

(declare-fun res!285404 () Bool)

(assert (=> b!478247 (=> (not res!285404) (not e!281191))))

(assert (=> b!478247 (= res!285404 (and (bvsle #b00000000000000000000000000000000 (size!15147 _keys!1874)) (bvslt (size!15147 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun res!285406 () Bool)

(assert (=> start!43158 (=> (not res!285406) (not e!281191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43158 (= res!285406 (validMask!0 mask!2352))))

(assert (=> start!43158 e!281191))

(assert (=> start!43158 true))

(declare-fun e!281189 () Bool)

(declare-fun array_inv!10660 (array!30767) Bool)

(assert (=> start!43158 (and (array_inv!10660 _values!1516) e!281189)))

(declare-fun array_inv!10661 (array!30765) Bool)

(assert (=> start!43158 (array_inv!10661 _keys!1874)))

(declare-fun mapNonEmpty!22030 () Bool)

(declare-fun mapRes!22030 () Bool)

(declare-fun tp!42505 () Bool)

(declare-fun e!281190 () Bool)

(assert (=> mapNonEmpty!22030 (= mapRes!22030 (and tp!42505 e!281190))))

(declare-fun mapValue!22030 () ValueCell!6419)

(declare-fun mapRest!22030 () (Array (_ BitVec 32) ValueCell!6419))

(declare-fun mapKey!22030 () (_ BitVec 32))

(assert (=> mapNonEmpty!22030 (= (arr!14790 _values!1516) (store mapRest!22030 mapKey!22030 mapValue!22030))))

(declare-fun b!478248 () Bool)

(declare-fun tp_is_empty!13561 () Bool)

(assert (=> b!478248 (= e!281190 tp_is_empty!13561)))

(declare-fun mapIsEmpty!22030 () Bool)

(assert (=> mapIsEmpty!22030 mapRes!22030))

(declare-fun b!478249 () Bool)

(declare-fun res!285403 () Bool)

(assert (=> b!478249 (=> (not res!285403) (not e!281191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30765 (_ BitVec 32)) Bool)

(assert (=> b!478249 (= res!285403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478250 () Bool)

(declare-fun e!281188 () Bool)

(assert (=> b!478250 (= e!281189 (and e!281188 mapRes!22030))))

(declare-fun condMapEmpty!22030 () Bool)

(declare-fun mapDefault!22030 () ValueCell!6419)

