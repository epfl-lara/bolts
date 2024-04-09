; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43118 () Bool)

(assert start!43118)

(declare-fun e!281021 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30725 0))(
  ( (array!30726 (arr!14772 (Array (_ BitVec 32) (_ BitVec 64))) (size!15130 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30725)

(declare-fun b!478047 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19129 0))(
  ( (V!19130 (val!6819 Int)) )
))
(declare-datatypes ((ValueCell!6410 0))(
  ( (ValueCellFull!6410 (v!9103 V!19129)) (EmptyCell!6410) )
))
(declare-datatypes ((array!30727 0))(
  ( (array!30728 (arr!14773 (Array (_ BitVec 32) ValueCell!6410)) (size!15131 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30727)

(assert (=> b!478047 (= e!281021 (and (= (size!15131 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15130 _keys!1874) (size!15131 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011) (= (size!15130 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352)) (bvsgt #b00000000000000000000000000000000 (size!15130 _keys!1874))))))

(declare-fun mapIsEmpty!21994 () Bool)

(declare-fun mapRes!21994 () Bool)

(assert (=> mapIsEmpty!21994 mapRes!21994))

(declare-fun b!478048 () Bool)

(declare-fun e!281020 () Bool)

(declare-fun tp_is_empty!13543 () Bool)

(assert (=> b!478048 (= e!281020 tp_is_empty!13543)))

(declare-fun res!285322 () Bool)

(assert (=> start!43118 (=> (not res!285322) (not e!281021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43118 (= res!285322 (validMask!0 mask!2352))))

(assert (=> start!43118 e!281021))

(assert (=> start!43118 true))

(declare-fun e!281019 () Bool)

(declare-fun array_inv!10646 (array!30727) Bool)

(assert (=> start!43118 (and (array_inv!10646 _values!1516) e!281019)))

(declare-fun array_inv!10647 (array!30725) Bool)

(assert (=> start!43118 (array_inv!10647 _keys!1874)))

(declare-fun b!478049 () Bool)

(declare-fun e!281018 () Bool)

(assert (=> b!478049 (= e!281018 tp_is_empty!13543)))

(declare-fun mapNonEmpty!21994 () Bool)

(declare-fun tp!42469 () Bool)

(assert (=> mapNonEmpty!21994 (= mapRes!21994 (and tp!42469 e!281020))))

(declare-fun mapKey!21994 () (_ BitVec 32))

(declare-fun mapValue!21994 () ValueCell!6410)

(declare-fun mapRest!21994 () (Array (_ BitVec 32) ValueCell!6410))

(assert (=> mapNonEmpty!21994 (= (arr!14773 _values!1516) (store mapRest!21994 mapKey!21994 mapValue!21994))))

(declare-fun b!478050 () Bool)

(assert (=> b!478050 (= e!281019 (and e!281018 mapRes!21994))))

(declare-fun condMapEmpty!21994 () Bool)

(declare-fun mapDefault!21994 () ValueCell!6410)

