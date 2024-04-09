; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78492 () Bool)

(assert start!78492)

(declare-fun b!914822 () Bool)

(declare-fun res!616970 () Bool)

(declare-fun e!513352 () Bool)

(assert (=> b!914822 (=> (not res!616970) (not e!513352))))

(declare-datatypes ((array!54424 0))(
  ( (array!54425 (arr!26155 (Array (_ BitVec 32) (_ BitVec 64))) (size!26615 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54424)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30575 0))(
  ( (V!30576 (val!9654 Int)) )
))
(declare-datatypes ((ValueCell!9122 0))(
  ( (ValueCellFull!9122 (v!12171 V!30575)) (EmptyCell!9122) )
))
(declare-datatypes ((array!54426 0))(
  ( (array!54427 (arr!26156 (Array (_ BitVec 32) ValueCell!9122)) (size!26616 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54426)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!914822 (= res!616970 (and (= (size!26616 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26615 _keys!1487) (size!26616 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!616971 () Bool)

(assert (=> start!78492 (=> (not res!616971) (not e!513352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78492 (= res!616971 (validMask!0 mask!1881))))

(assert (=> start!78492 e!513352))

(assert (=> start!78492 true))

(declare-fun e!513351 () Bool)

(declare-fun array_inv!20410 (array!54426) Bool)

(assert (=> start!78492 (and (array_inv!20410 _values!1231) e!513351)))

(declare-fun array_inv!20411 (array!54424) Bool)

(assert (=> start!78492 (array_inv!20411 _keys!1487)))

(declare-fun b!914823 () Bool)

(declare-fun e!513355 () Bool)

(declare-fun mapRes!30561 () Bool)

(assert (=> b!914823 (= e!513351 (and e!513355 mapRes!30561))))

(declare-fun condMapEmpty!30561 () Bool)

(declare-fun mapDefault!30561 () ValueCell!9122)

