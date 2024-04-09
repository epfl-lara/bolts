; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133360 () Bool)

(assert start!133360)

(declare-fun b!1559005 () Bool)

(declare-fun e!868599 () Bool)

(declare-fun tp_is_empty!38455 () Bool)

(assert (=> b!1559005 (= e!868599 tp_is_empty!38455)))

(declare-fun b!1559006 () Bool)

(declare-fun e!868601 () Bool)

(declare-fun e!868602 () Bool)

(declare-fun mapRes!59043 () Bool)

(assert (=> b!1559006 (= e!868601 (and e!868602 mapRes!59043))))

(declare-fun condMapEmpty!59043 () Bool)

(declare-datatypes ((V!59481 0))(
  ( (V!59482 (val!19311 Int)) )
))
(declare-datatypes ((ValueCell!18197 0))(
  ( (ValueCellFull!18197 (v!22059 V!59481)) (EmptyCell!18197) )
))
(declare-datatypes ((array!103591 0))(
  ( (array!103592 (arr!49988 (Array (_ BitVec 32) ValueCell!18197)) (size!50539 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103591)

(declare-fun mapDefault!59043 () ValueCell!18197)

