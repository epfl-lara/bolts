; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78456 () Bool)

(assert start!78456)

(declare-fun b!914648 () Bool)

(declare-fun e!513212 () Bool)

(declare-fun e!513214 () Bool)

(declare-fun mapRes!30531 () Bool)

(assert (=> b!914648 (= e!513212 (and e!513214 mapRes!30531))))

(declare-fun condMapEmpty!30531 () Bool)

(declare-datatypes ((V!30555 0))(
  ( (V!30556 (val!9647 Int)) )
))
(declare-datatypes ((ValueCell!9115 0))(
  ( (ValueCellFull!9115 (v!12164 V!30555)) (EmptyCell!9115) )
))
(declare-datatypes ((array!54392 0))(
  ( (array!54393 (arr!26142 (Array (_ BitVec 32) ValueCell!9115)) (size!26602 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54392)

(declare-fun mapDefault!30531 () ValueCell!9115)

