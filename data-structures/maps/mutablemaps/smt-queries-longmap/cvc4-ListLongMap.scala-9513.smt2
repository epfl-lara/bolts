; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112942 () Bool)

(assert start!112942)

(declare-fun b!1338632 () Bool)

(declare-fun e!762324 () Bool)

(declare-fun e!762326 () Bool)

(declare-fun mapRes!57187 () Bool)

(assert (=> b!1338632 (= e!762324 (and e!762326 mapRes!57187))))

(declare-fun condMapEmpty!57187 () Bool)

(declare-datatypes ((V!54429 0))(
  ( (V!54430 (val!18572 Int)) )
))
(declare-datatypes ((ValueCell!17599 0))(
  ( (ValueCellFull!17599 (v!21217 V!54429)) (EmptyCell!17599) )
))
(declare-datatypes ((array!90821 0))(
  ( (array!90822 (arr!43866 (Array (_ BitVec 32) ValueCell!17599)) (size!44417 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90821)

(declare-fun mapDefault!57187 () ValueCell!17599)

