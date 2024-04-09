; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78526 () Bool)

(assert start!78526)

(declare-fun b!915024 () Bool)

(declare-fun e!513500 () Bool)

(declare-fun tp_is_empty!19219 () Bool)

(assert (=> b!915024 (= e!513500 tp_is_empty!19219)))

(declare-fun res!617090 () Bool)

(declare-fun e!513501 () Bool)

(assert (=> start!78526 (=> (not res!617090) (not e!513501))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78526 (= res!617090 (validMask!0 mask!1881))))

(assert (=> start!78526 e!513501))

(assert (=> start!78526 true))

(declare-datatypes ((V!30591 0))(
  ( (V!30592 (val!9660 Int)) )
))
(declare-datatypes ((ValueCell!9128 0))(
  ( (ValueCellFull!9128 (v!12178 V!30591)) (EmptyCell!9128) )
))
(declare-datatypes ((array!54452 0))(
  ( (array!54453 (arr!26167 (Array (_ BitVec 32) ValueCell!9128)) (size!26627 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54452)

(declare-fun e!513502 () Bool)

(declare-fun array_inv!20416 (array!54452) Bool)

(assert (=> start!78526 (and (array_inv!20416 _values!1231) e!513502)))

(declare-datatypes ((array!54454 0))(
  ( (array!54455 (arr!26168 (Array (_ BitVec 32) (_ BitVec 64))) (size!26628 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54454)

(declare-fun array_inv!20417 (array!54454) Bool)

(assert (=> start!78526 (array_inv!20417 _keys!1487)))

(declare-fun b!915025 () Bool)

(declare-fun e!513504 () Bool)

(declare-fun mapRes!30585 () Bool)

(assert (=> b!915025 (= e!513502 (and e!513504 mapRes!30585))))

(declare-fun condMapEmpty!30585 () Bool)

(declare-fun mapDefault!30585 () ValueCell!9128)

