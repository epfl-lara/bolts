; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78532 () Bool)

(assert start!78532)

(declare-fun b!915078 () Bool)

(declare-fun e!513549 () Bool)

(declare-fun tp_is_empty!19225 () Bool)

(assert (=> b!915078 (= e!513549 tp_is_empty!19225)))

(declare-fun b!915079 () Bool)

(declare-fun res!617117 () Bool)

(declare-fun e!513548 () Bool)

(assert (=> b!915079 (=> (not res!617117) (not e!513548))))

(declare-datatypes ((array!54462 0))(
  ( (array!54463 (arr!26172 (Array (_ BitVec 32) (_ BitVec 64))) (size!26632 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54462)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54462 (_ BitVec 32)) Bool)

(assert (=> b!915079 (= res!617117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915080 () Bool)

(declare-fun e!513547 () Bool)

(declare-fun e!513545 () Bool)

(declare-fun mapRes!30594 () Bool)

(assert (=> b!915080 (= e!513547 (and e!513545 mapRes!30594))))

(declare-fun condMapEmpty!30594 () Bool)

(declare-datatypes ((V!30599 0))(
  ( (V!30600 (val!9663 Int)) )
))
(declare-datatypes ((ValueCell!9131 0))(
  ( (ValueCellFull!9131 (v!12181 V!30599)) (EmptyCell!9131) )
))
(declare-datatypes ((array!54464 0))(
  ( (array!54465 (arr!26173 (Array (_ BitVec 32) ValueCell!9131)) (size!26633 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54464)

(declare-fun mapDefault!30594 () ValueCell!9131)

