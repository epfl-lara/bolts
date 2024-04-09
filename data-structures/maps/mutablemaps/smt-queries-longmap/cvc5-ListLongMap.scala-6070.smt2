; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78556 () Bool)

(assert start!78556)

(declare-fun res!617224 () Bool)

(declare-fun e!513727 () Bool)

(assert (=> start!78556 (=> (not res!617224) (not e!513727))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78556 (= res!617224 (validMask!0 mask!1881))))

(assert (=> start!78556 e!513727))

(assert (=> start!78556 true))

(declare-datatypes ((V!30631 0))(
  ( (V!30632 (val!9675 Int)) )
))
(declare-datatypes ((ValueCell!9143 0))(
  ( (ValueCellFull!9143 (v!12193 V!30631)) (EmptyCell!9143) )
))
(declare-datatypes ((array!54504 0))(
  ( (array!54505 (arr!26193 (Array (_ BitVec 32) ValueCell!9143)) (size!26653 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54504)

(declare-fun e!513728 () Bool)

(declare-fun array_inv!20432 (array!54504) Bool)

(assert (=> start!78556 (and (array_inv!20432 _values!1231) e!513728)))

(declare-datatypes ((array!54506 0))(
  ( (array!54507 (arr!26194 (Array (_ BitVec 32) (_ BitVec 64))) (size!26654 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54506)

(declare-fun array_inv!20433 (array!54506) Bool)

(assert (=> start!78556 (array_inv!20433 _keys!1487)))

(declare-fun b!915294 () Bool)

(declare-fun e!513725 () Bool)

(declare-fun mapRes!30630 () Bool)

(assert (=> b!915294 (= e!513728 (and e!513725 mapRes!30630))))

(declare-fun condMapEmpty!30630 () Bool)

(declare-fun mapDefault!30630 () ValueCell!9143)

