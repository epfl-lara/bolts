; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78452 () Bool)

(assert start!78452)

(declare-fun mapIsEmpty!30525 () Bool)

(declare-fun mapRes!30525 () Bool)

(assert (=> mapIsEmpty!30525 mapRes!30525))

(declare-fun b!914624 () Bool)

(declare-fun e!513181 () Bool)

(declare-fun e!513183 () Bool)

(assert (=> b!914624 (= e!513181 (and e!513183 mapRes!30525))))

(declare-fun condMapEmpty!30525 () Bool)

(declare-datatypes ((V!30551 0))(
  ( (V!30552 (val!9645 Int)) )
))
(declare-datatypes ((ValueCell!9113 0))(
  ( (ValueCellFull!9113 (v!12162 V!30551)) (EmptyCell!9113) )
))
(declare-datatypes ((array!54386 0))(
  ( (array!54387 (arr!26139 (Array (_ BitVec 32) ValueCell!9113)) (size!26599 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54386)

(declare-fun mapDefault!30525 () ValueCell!9113)

