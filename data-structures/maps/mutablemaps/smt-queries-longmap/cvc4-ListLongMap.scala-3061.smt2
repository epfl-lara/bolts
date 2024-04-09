; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43220 () Bool)

(assert start!43220)

(declare-fun res!285650 () Bool)

(declare-fun e!281550 () Bool)

(assert (=> start!43220 (=> (not res!285650) (not e!281550))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43220 (= res!285650 (validMask!0 mask!2352))))

(assert (=> start!43220 e!281550))

(assert (=> start!43220 true))

(declare-datatypes ((V!19205 0))(
  ( (V!19206 (val!6848 Int)) )
))
(declare-datatypes ((ValueCell!6439 0))(
  ( (ValueCellFull!6439 (v!9133 V!19205)) (EmptyCell!6439) )
))
(declare-datatypes ((array!30843 0))(
  ( (array!30844 (arr!14826 (Array (_ BitVec 32) ValueCell!6439)) (size!15184 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30843)

(declare-fun e!281547 () Bool)

(declare-fun array_inv!10684 (array!30843) Bool)

(assert (=> start!43220 (and (array_inv!10684 _values!1516) e!281547)))

(declare-datatypes ((array!30845 0))(
  ( (array!30846 (arr!14827 (Array (_ BitVec 32) (_ BitVec 64))) (size!15185 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30845)

(declare-fun array_inv!10685 (array!30845) Bool)

(assert (=> start!43220 (array_inv!10685 _keys!1874)))

(declare-fun b!478699 () Bool)

(declare-fun e!281549 () Bool)

(declare-fun mapRes!22096 () Bool)

(assert (=> b!478699 (= e!281547 (and e!281549 mapRes!22096))))

(declare-fun condMapEmpty!22096 () Bool)

(declare-fun mapDefault!22096 () ValueCell!6439)

