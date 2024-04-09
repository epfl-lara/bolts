; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43122 () Bool)

(assert start!43122)

(declare-fun b!478071 () Bool)

(declare-fun e!281049 () Bool)

(declare-fun tp_is_empty!13547 () Bool)

(assert (=> b!478071 (= e!281049 tp_is_empty!13547)))

(declare-fun mapNonEmpty!22000 () Bool)

(declare-fun mapRes!22000 () Bool)

(declare-fun tp!42475 () Bool)

(assert (=> mapNonEmpty!22000 (= mapRes!22000 (and tp!42475 e!281049))))

(declare-datatypes ((V!19133 0))(
  ( (V!19134 (val!6821 Int)) )
))
(declare-datatypes ((ValueCell!6412 0))(
  ( (ValueCellFull!6412 (v!9105 V!19133)) (EmptyCell!6412) )
))
(declare-fun mapRest!22000 () (Array (_ BitVec 32) ValueCell!6412))

(declare-fun mapValue!22000 () ValueCell!6412)

(declare-fun mapKey!22000 () (_ BitVec 32))

(declare-datatypes ((array!30733 0))(
  ( (array!30734 (arr!14776 (Array (_ BitVec 32) ValueCell!6412)) (size!15134 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30733)

(assert (=> mapNonEmpty!22000 (= (arr!14776 _values!1516) (store mapRest!22000 mapKey!22000 mapValue!22000))))

(declare-fun res!285328 () Bool)

(declare-fun e!281048 () Bool)

(assert (=> start!43122 (=> (not res!285328) (not e!281048))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43122 (= res!285328 (validMask!0 mask!2352))))

(assert (=> start!43122 e!281048))

(assert (=> start!43122 true))

(declare-fun e!281050 () Bool)

(declare-fun array_inv!10650 (array!30733) Bool)

(assert (=> start!43122 (and (array_inv!10650 _values!1516) e!281050)))

(declare-datatypes ((array!30735 0))(
  ( (array!30736 (arr!14777 (Array (_ BitVec 32) (_ BitVec 64))) (size!15135 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30735)

(declare-fun array_inv!10651 (array!30735) Bool)

(assert (=> start!43122 (array_inv!10651 _keys!1874)))

(declare-fun b!478072 () Bool)

(declare-fun e!281051 () Bool)

(assert (=> b!478072 (= e!281051 tp_is_empty!13547)))

(declare-fun b!478073 () Bool)

(assert (=> b!478073 (= e!281050 (and e!281051 mapRes!22000))))

(declare-fun condMapEmpty!22000 () Bool)

(declare-fun mapDefault!22000 () ValueCell!6412)

